using Android.App;
using Android.Graphics;
using Android.OS;
using Android.Widget;
using Client.Common;
using System;
using System.Net.Sockets;
using System.Text;

namespace Client.Activities
{
    [Activity]
    public class Control : Activity
    {
        private Button btnTakeScreen, btnSleep, btnShutdown ,btnLogout;
        private ImageView imageView;
        private EditText edtTime;

        NetworkStream stream;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            var client = Connection.Instance.client;
            //client.SendTimeout = 5000;
            //client.ReceiveTimeout = 10000;

            // Seting view
            SetContentView(Resource.Layout.Control);
            btnTakeScreen = FindViewById<Button>(Resource.Id.btnTakeScreen);
            btnSleep = FindViewById<Button>(Resource.Id.btnSleep);
            btnShutdown = FindViewById<Button>(Resource.Id.btnShutdown);
            btnLogout = FindViewById<Button>(Resource.Id.btnLogout);
            imageView = FindViewById<ImageView>(Resource.Id.imageView);
            edtTime = FindViewById<EditText>(Resource.Id.edtTime);

            btnSleep.Click += delegate 
            {
                try {
                    stream = client.GetStream();
                    String msg = "SLP3";
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
                    String msg = "SHTD4 " + edtTime.Text;
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
                    String msg = "TSC2";
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

            btnLogout.Click += delegate 
            {
                try {
                    stream = client.GetStream();
                    String msg = "LGT1";
                    byte[] message = Encoding.ASCII.GetBytes(msg);
                    stream.Write(message, 0, message.Length);
                }
                catch(Exception e) { }
                finally {
                    disconnect(client);
                }
            };
        }

        public void disconnect(TcpClient client)
        {
            StartActivity(typeof(Connect));
            client.Close();
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
    }
}