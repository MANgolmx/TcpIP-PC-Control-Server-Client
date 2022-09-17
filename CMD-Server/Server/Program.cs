using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Windows.Forms;
using System.Linq;

namespace Server
{
    public static class Program
    {
        public static TcpClient client;
        private static TcpListener listener;
        private static string ipString;
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

            ipString = "192.168.1.102";

            IPEndPoint ep = new IPEndPoint(IPAddress.Parse(ipString), 13002);
            listener = new TcpListener(ep);
            listener.Start();
            Console.WriteLine(@"  
            ===============================================================  
                   Started listening requests at: {0}:{1}  
            ===============================================================",
            ep.Address, ep.Port);

            clientConnection:

            client = listener.AcceptTcpClient();
            Console.WriteLine("Client connected! \n");

            while (client.Connected)
            {
                try
                {
                    const int bytesize = 1024 * 1024;
                    byte[] buffer = new byte[bytesize];
                    string x = client.GetStream().Read(buffer, 0, bytesize).ToString();
                    var data = ASCIIEncoding.ASCII.GetString(buffer);

                    if (data.ToUpper().Contains("LGT1"))
                    {
                        Console.WriteLine("Client disconnected! \n");

                        client.Dispose();
                        client.Close();

                        goto clientConnection;
                    }
                    else if (data.ToUpper().Contains("TSC2"))
                    {
                        Console.WriteLine("Take Screenshot!");

                        var bitmap = SaveScreenshot();
                        var stream = new MemoryStream();
                        bitmap.Save(stream, ImageFormat.Bmp);
                        sendData(stream.ToArray(), client.GetStream());
                    }
                    else if (data.ToUpper().Contains("SLP3"))
                    {
                        Console.WriteLine("Pc is going to Sleep Mode!");
                        Sleep();
                    }
                    else if (data.ToUpper().Contains("SHTD4"))
                    {
                        Console.WriteLine("Pc is going to Shutdown!");
                        data = data.Replace("SHTD4", "");
                        data = new String(data.Where(Char.IsDigit).ToArray());
                        if (data == "" || data == "0") data = "1";
                        Shutdown(Int32.Parse(data));
                    }
                }
                catch (Exception exc)
                {
                    Console.WriteLine("Something went wrong! \n");

                    client.Dispose();
                    client.Close();

                    goto clientConnection;
                }
            }

            if (!client.Connected)
                goto clientConnection;

            void Shutdown(int time)
            {
                System.Diagnostics.Process.Start("Shutdown", "-s -t " + time);
                Environment.Exit(0);
            }

            void Sleep()
            {
                Application.SetSuspendState(PowerState.Suspend, true, true);
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
