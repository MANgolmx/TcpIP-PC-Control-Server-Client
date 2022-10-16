using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Windows.Forms;
using System.Linq;
using System.Timers;

//System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12;

namespace Server
{

    public static class Program
    {

        public static TcpClient client;

        private static TcpListener listener;
        private static string ipString;
        private static System.Timers.Timer checkConnectionTimer;

        static void Main(string[] args)
        {
            //IPAddress[] localIp = Dns.GetHostAddresses(Dns.GetHostName());
            //foreach (IPAddress address in localIp)
            //{
            //    if (address.AddressFamily == AddressFamily.InterNetwork)
            //    {
            //        ipString = address.ToString();
            //    }
            //}

            checkConnectionTimer = new System.Timers.Timer(1000);
            checkConnectionTimer.Elapsed += CheckConnection;
            checkConnectionTimer.AutoReset = true;

            IPAddress[] localIp = Dns.GetHostAddresses(Dns.GetHostName());
            foreach (IPAddress address in localIp)
            {
                if (address.AddressFamily == AddressFamily.InterNetwork)
                {
                    ipString = address.ToString();
                    break;
                }
            }

            IPEndPoint ep = new IPEndPoint(IPAddress.Parse(ipString), 13031);
            listener = new TcpListener(ep);
            listener.Start();
            Console.WriteLine(@"  
            ===============================================================  
                   Started listening requests at: {0}:{1}  
            ===============================================================",
            ep.Address, ep.Port);

            ClientConnnection();



            //****************************************
            //              FUNCTIONS
            //****************************************

            void TransferingData()
            {
                while (client.Connected)
                {
                    try
                    {
                        const int bytesize = 1024 * 1024;
                        byte[] buffer = new byte[bytesize];
                        string x = client.GetStream().Read(buffer, 0, bytesize).ToString();
                        var data = ASCIIEncoding.ASCII.GetString(buffer);

                        if (client.GetStream() == null) Console.WriteLine("Stream is null");

                        if (data.ToUpper().Contains("CMD_LOGOUT"))
                        {
                            Console.WriteLine("Client disconnected! \n");

                            //client.Dispose();
                            //client.Close();

                            ClientConnnection();
                            continue;
                        }
                        else if (data.ToUpper().Contains("CMD_SHTD"))
                        {
                            Console.WriteLine("Pc is going to Shutdown!");
                            data = data.Replace("CMD_SHTD4", "");
                            data = new String(data.Where(Char.IsDigit).ToArray());
                            if (data == "" || data == "0") data = "1";
                            Shutdown(Int32.Parse(data));
                        }
                        else if (data.ToUpper().Contains("CMD_OPNAP"))
                        {
                            Console.Write("Opening app ");
                            data = data.Replace("CMD_OPNAP ", "");
                            data = new String(data.Where(Char.IsLetterOrDigit).ToArray());
                            Console.WriteLine(data.ToUpper());

                            var allFiles = Directory.GetFiles("C:\\Programs", data.ToUpper() + ".lnk");
                            foreach (var file in allFiles)
                                Process.Start(file);
                        }
                        else if (data.ToUpper().Contains("CMD_SLP"))
                        {
                            Console.WriteLine("Pc is going to Sleep Mode");
                            Sleep();
                        }
                        else if (data.ToUpper().Contains("CMD_TSC"))
                        {
                            Console.WriteLine("Taking screenshot");

                            var bitmap = SaveScreenshot();
                            var stream = new MemoryStream();
                            bitmap.Save(stream, ImageFormat.Bmp);
                            sendData(stream.ToArray(), client.GetStream());
                            Console.WriteLine("Screenshot sent");
                        }
                    }
                    catch (Exception exc)
                    {
                        Console.WriteLine("Client disconnected because of error!");
                        Console.WriteLine(exc.Message + "\n");

                        client.Dispose();
                        client.Close();

                        Console.WriteLine("Started listening");
                        ClientConnnection();
                        continue;
                    }

                }
            }

            void CheckConnection(Object source, System.Timers.ElapsedEventArgs e)
            {
                if (client.Client.Poll(100, SelectMode.SelectRead))
                {
                    Console.WriteLine("Client disconnected! \n");

                    ClientConnnection();
                }
            }

            void ClientConnnection()
            {
                checkConnectionTimer.Enabled = false;

                client = listener.AcceptTcpClient();
                //client = listener.AcceptTcpClientAsync().Result;
                checkConnectionTimer.Enabled = true;
                Console.WriteLine("Client connected!");

                TransferingData();
            }

            void Shutdown(int time)
            {
                Process.Start("Shutdown", "-s -t " + time);
                Environment.Exit(0);
            }

            void Sleep()
            {
                Application.SetSuspendState(PowerState.Suspend, true, true);
                Environment.Exit(0);
            }

            Bitmap SaveScreenshot()
            {
                var bmpScreenshot = new Bitmap(Screen.PrimaryScreen.Bounds.Width,
                                               Screen.PrimaryScreen.Bounds.Height,
                                               PixelFormat.Format32bppArgb);

                // Create a graphics object from the bitmap.
                var gfxScreenshot = Graphics.FromImage(bmpScreenshot);

                // Take the screenshot from the upper left corner to the right bottom corner.
                gfxScreenshot.CopyFromScreen(Screen.PrimaryScreen.Bounds.X,
                                            Screen.PrimaryScreen.Bounds.Y,
                                            0,
                                            0,
                                            Screen.PrimaryScreen.Bounds.Size,
                                            CopyPixelOperation.SourceCopy);
                bmpScreenshot.Save("filename.jpg", ImageFormat.Bmp);

                return bmpScreenshot;
            }

            void sendData(byte[] data, NetworkStream stream)
            {
                int bufferSize = 1024;

                byte[] dataLength = BitConverter.GetBytes(data.Length);

                stream.Write(dataLength, 0, 4);

                int bytesSent = 0;
                int bytesLeft = data.Length;

                while (bytesLeft > 0)
                {
                    int curDataSize = Math.Min(bufferSize, bytesLeft);

                    stream.Write(data, bytesSent, curDataSize);

                    bytesSent += curDataSize;
                    bytesLeft -= curDataSize;
                }
            }
        }
    }
}
