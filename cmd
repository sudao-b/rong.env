sudo openvpn --config ~/awsbj-sudao-b.ovpn

adb -s SGHIHYHMQCGILVS4 logcat -c;adb -s SGHIHYHMQCGILVS4 logcat > le
adb -s ec3ce218 logcat -c;adb -s ec3ce218 logcat > mi
adb -s ec3ce218 logcat -c;adb -s ec3ce218 logcat > mi.hai.delay

./third_party/android_tools/ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-addr2line -e out/Debug64/lib.unstripped/lib_RongRTC_so.so

sealrtc copy lib
cd ~/rong/rtc-sdk-android
cp /media/sudao/work/rong/rtc-core-android/src/out/Debug64/lib_RongRTC_so.so app/libs/arm64-v8a/lib_RongRTC_so.so




hainengda copy lib
cd ~/rong/hai/calllib/src/main/libs/armeabi-v7a
cp ~/rong/rtc-core-android/src/out/Debug/lib_blink_so.so .


----------------
delete remote branch

git push origin --delete dev_h265




        if (sdp.type == SessionDescription.Type.ANSWER) {
            sdpDescription = sdpDescription.replaceAll("
 100 97 99 101", "98 96 100 97 99 101 125");
            StringBuilder sb = new StringBuilder(sdpDescription);
            sb.append("a=rtpmap:125 flexfec-03/90000\r\n");
            sb.append("a=rtcp-fb:125 goog-remb\r\n");
            sb.append("a=fmtp:125 repair-window=10000000\r\n");
            sdpDescription = sb.toString();
        }

 RtpStreamReceiver::OnReceivedPayloadData(
    const uint8_t* payload_data,
    size_t payload_size,
    const WebRtcRTPHeader* rtp_header)





    static String secondSdp = null;
    static int index = 0;
    private void setLocalDescriptionInternal(SessionDescription origSdp) {
        index++;
        Log.d(TAG, "kurt localsdp index ssssssssssssssss : " + index);
        String sdpDescription = origSdp.description;
        if (sdpDescription.contains("H264")) {
            secondSdp = sdpDescription;
            Log.d(TAG, "kurt localsdp set second sdp : " + secondSdp);
        }
        if (index == 3) {
            sdpDescription = secondSdp;
        }
        Log.d(TAG, "kurt localsdp index eeeeeeeeeeeeeeee : " + index);



---------------------------------

RtpReceiverImpl::IncomingRtpPacket 
rtp_media_receiver_->ParseRtpPacket
rtp_format.cc:56

---------------------------------


	private static void parseAggregationPacketsH265(byte[] data) {
		int offset = 4;
		int count = 2;
		for (int i = 0; i < count; i++) {
			System.out.println("offset : " + offset);
			offset += kNalHeaderSize;
			int naluSize = (data[offset] & 0xFF) << 8 | (data[offset + 1] & 0xFF);

			System.out.println("naluSize : " + naluSize);
			boolean isKey = isKeyFrame(data, offset - kNalHeaderSize, naluSize);
			System.out.println("isKey : " + isKey);
			
			offset += naluSize;
			offset += 4;
		}
	}
	
---------------------------------
webrtc::VCMSessionInfo::InsertBuffer(unsigned char*, std::__ndk1::__list_iterator<webrtc::VCMPacket, void*>) session_info.cc:173
webrtc::VCMSessionInfo::InsertPacket(webrtc::VCMPacket const&, unsigned char*, webrtc::VCMDecodeErrorMode, webrtc::FrameData const&) session_info.cc:526
webrtc::VCMFrameBuffer::InsertPacket(webrtc::VCMPacket const&, long, webrtc::VCMDecodeErrorMode, webrtc::FrameData const&) frame_buffer.cc:139
webrtc::VCMJitterBuffer::InsertPacket(webrtc::VCMPacket const&, bool*) jitter_buffer.cc:728
webrtc::VCMReceiver::InsertPacket(webrtc::VCMPacket const&) receiver.cc:110
webrtc::vcm::VideoReceiver::IncomingPacket(unsigned char const*, unsigned long, webrtc::WebRtcRTPHeader const&) video_receiver.cc:439
webrtc::RtpStreamReceiver::OnReceivedPayloadData(unsigned char const*, unsigned long, webrtc::WebRtcRTPHeader const*) rtp_stream_receiver.cc:304
webrtc::RTPReceiverVideo::ParseRtpPacket(webrtc::WebRtcRTPHeader*, webrtc::PayloadUnion const&, bool, unsigned char const*, unsigned long, long, bool) rtp_receiver_video.cc:119
webrtc::RtpReceiverImpl::IncomingRtpPacket(webrtc::RTPHeader const&, unsigned char const*, unsigned long, webrtc::PayloadUnion, bool) rtp_receiver_impl.cc:179
webrtc::RtpStreamReceiver::ReceivePacket(unsigned char const*, unsigned long, webrtc::RTPHeader const&, bool) rtp_stream_receiver.cc:465
webrtc::RtpStreamReceiver::DeliverRtp(unsigned char const*, unsigned long, webrtc::PacketTime const&) rtp_stream_receiver.cc:387
webrtc::internal::Call::DeliverRtp(webrtc::MediaType, unsigned char const*, unsigned long, webrtc::PacketTime const&) call.cc:1143
cricket::WebRtcVideoChannel2::OnPacketReceived(rtc::CopyOnWriteBuffer*, rtc::PacketTime const&) webrtcvideoengine2.cc:1435
cricket::BaseChannel::OnPacketReceived(bool, rtc::CopyOnWriteBuffer const&, rtc::PacketTime const&) channel.cc:837
rtc::MethodFunctor3<cricket::BaseChannel, void (cricket::BaseChannel::*)(bool, rtc::CopyOnWriteBuffer const&, rtc::PacketTime const&), void, bool, rtc::CopyOnWriteBuffer const&, rtc::PacketTime const&>::operator()() const bind.h:389
rtc::FireAndForgetAsyncClosure<rtc::MethodFunctor3<cricket::BaseChannel, void (cricket::BaseChannel::*)(bool, rtc::CopyOnWriteBuffer const&, rtc::PacketTime const&), void, bool, rtc::CopyOnWriteBuffer const&, rtc::PacketTime const&> >::Execute() asyncinvoker-inl.h:46
rtc::AsyncInvoker::OnMessage(rtc::Message*) asyncinvoker.cc:36
rtc::MessageQueue::Dispatch(rtc::Message*) messagequeue.cc:533
rtc::Thread::ProcessMessages(int) thread.cc:506
rtc::Thread::PreRun(void*) thread.cc:326
__pthread_start(void*) 0x0000007f7fc521a8
__start_thread 0x0000007f7fc07b84

