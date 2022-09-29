using Android.App;
using Android.Graphics;
using Android.OS;
using Android.Widget;
using Client.Common;
using System;
using System.Net.Sockets;
using System.Text;
using System.Timers;

namespace Client.Activities
{
    [Activity]
    public class Control : Activity
    {
        private Button btnTakeScreen, btnSleep, btnShutdown, btnLogout, btnOpenApp;
        private ImageView imageView;
        private EditText edtTime, edtAppName;
        private Timer checkConnectionTimer;

        NetworkStream stream;

        protected override void OnCreate(Bundle savedInstanceState)
        {
                        //Preparing connection\\
            base.OnCreate(savedInstanceState);
            var client = Connection.Instance.client;
            client.SendTimeout = 5000;
            client.ReceiveTimeout = 10000;

            checkConnectionTimer = new Timer(1000);
            checkConnectionTimer.Elapsed += CheckConnection;
            checkConnectionTimer.AutoReset = true;
            checkConnectionTimer.Start();

                        //Seting view\\
            SetContentView(Resource.Layout.Control);
            btnTakeScreen = FindViewById<Button>(Resource.Id.btnTakeScreen);
            btnSleep = FindViewById<Button>(Resource.Id.btnSleep);
            btnShutdown = FindViewById<Button>(Resource.Id.btnShutdown);
            btnLogout = FindViewById<Button>(Resource.Id.btnLogout);
            btnOpenApp = FindViewById<Button>(Resource.Id.btnOpenApp);
            imageView = FindViewById<ImageView>(Resource.Id.imageView);
            edtTime = FindViewById<EditText>(Resource.Id.edtTime);
            edtAppName = FindViewById<EditText>(Resource.Id.edtAppName);



            void CheckConnection(Object source, System.Timers.ElapsedEventArgs e)
            {
                if (client.Client.Poll(100, SelectMode.SelectRead))
                {
                    disconnect(client);
                }
            }

                     //Button clicks\\

            btnSleep.Click += delegate 
            {
                try {
                    stream = client.GetStream();
                    String msg = "CMD_SLP";
                    byte[] message = Encoding.ASCII.GetBytes(msg);
                    stream.Write(message, 0, message.Length);
                }
                catch (Exception e) {
                    disconnect(client);
                }
            };

            btnShutdown.Click += delegate 
            {
                try {
                    stream = client.GetStream();
                    String msg = "CMD_SHTD" + edtTime.Text;
                    byte[] message = Encoding.ASCII.GetBytes(msg);
                    stream.Write(message, 0, message.Length);
                } 
                catch (Exception e) {
                    disconnect(client);
                }
            };

            btnTakeScreen.Click += delegate 
            {
                try {
                    stream = client.GetStream();
                    String msg = "CMD_TSC";
                    byte[] message = Encoding.ASCII.GetBytes(msg);
                    stream.Write(message, 0, message.Length);
                    var data = getData(client);
                    var image = BitmapFactory.DecodeByteArray(data, 0, data.Length);
                    imageView.SetImageBitmap(image);
                }
                catch (Exception e) {
                    disconnect(client);
                }
            };

            btnOpenApp.Click += delegate
            {
                if (edtAppName.Text == "" || edtAppName.Text == " ") return;
                try {
                    stream = client.GetStream();
                    String msg = "CMD_OPNAP " + edtAppName.Text;
                    byte[] message = Encoding.ASCII.GetBytes(msg);
                    stream.Write(message, 0, message.Length);
                }
                catch (Exception e) {
                    disconnect(client);
                }
            };

            btnLogout.Click += delegate 
            {
                try {
                    stream = client.GetStream();
                    String msg = "CMD_LOGOUT";
                    byte[] message = Encoding.ASCII.GetBytes(msg);
                    stream.Write(message, 0, message.Length);
                }
                catch(Exception e) { ; }
                finally {
                    disconnect(client);
                }
            };
        }

        public void disconnect(TcpClient client)
        {
            client.Close();
            StartActivity(typeof(Connect));
        }

        public byte[] getData(TcpClient client)
        {
            NetworkStream stream = client.GetStream();
            byte[] fileSizeBytes = new byte[4];
            int bytes = stream.Read(fileSizeBytes,0,fileSizeBytes.Length);
            int dataLength = BitConverter.ToInt32(fileSizeBytes,0);

            int bytesLeft = dataLength;
            byte[] data = new byte[dataLength];

            int buffersize = 1024;
            int bytesRead = 0;

            while(bytesLeft > 0)
            {
                int curDataSize = Math.Min(buffersize, bytesLeft);
                if (client.Available < curDataSize)
                    curDataSize = client.Available;//This save me

                bytes = stream.Read(data, bytesRead, curDataSize);
                bytesRead += curDataSize;
                bytesLeft -= curDataSize;
            }
            return data;
        }

        public override void OnBackPressed()
        {
            //base.OnBackPressed();
        }
    }
}