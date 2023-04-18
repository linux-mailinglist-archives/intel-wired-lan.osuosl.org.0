Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0293B6E668D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 16:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 911D2614F9;
	Tue, 18 Apr 2023 14:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 911D2614F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681826504;
	bh=IViOvEYJg3pnG+oPSYVVrwMThsWHHUdyak7O63Ciuhg=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uxUjCkh4E4LUwximw2XnvwvY/adMskLfm9NcC/VGuYctBlRi2zvPJDtOyzb8SmrqZ
	 +CZYm/YYqfF9gGbbvFalK7e7sSE1cuOrWwpUj6gaoYgcbEt+am1KhXxLw1Ck6OAaxB
	 xVLZ234/2lG9rw+ohiUNfqFhGpTFcRMfYPNqaHmnKQREQlimwFqAJKBDF7yH79e1te
	 ziFBKA7SK77SdDUkgWkbdFwVoasJRGLXvUeRrBV8EB7FHkH85eUe/TQEeXi2lorrrX
	 3bxNfFHzKFCM5GbRY+ZCdPQNSe8/65HAV4WahayHujJMHmoxM2vV6xyBNGtVT0vXx6
	 517S2fFxm9kaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmPCbdjLqhdm; Tue, 18 Apr 2023 14:01:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65C9B60D70;
	Tue, 18 Apr 2023 14:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65C9B60D70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02D071C42B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 14:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD39F41DC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 14:01:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD39F41DC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WtPD3kTN8Z66 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 14:01:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C805E40103
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C805E40103
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 14:01:37 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-325-POiQ3wT5MvqUAhSHKhD3iw-1; Tue, 18 Apr 2023 10:01:35 -0400
X-MC-Unique: POiQ3wT5MvqUAhSHKhD3iw-1
Received: by mail-ed1-f71.google.com with SMTP id
 j28-20020a508a9c000000b00504ee48e421so10673116edj.22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 07:01:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681826493; x=1684418493;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5fONgD5ZI0CkRixaJ2Z/vCiQZM4I6ehW6VIFsC+eLAk=;
 b=dt9qXVnJEH8jHuxfz8USc8OmOjN1wyAJ8sMCIW9KBHk6iisdKx2gFhzjBxOjH0p3OY
 IDiIjc4uSUuLmmgt6n3q9ujf2QWZiuuO4y+1OsRu3r+KXZNA6kFiAtWdhnxez/Eg0HaL
 rf8J3XEmkftHxMUFqa3fJ4gHo2yGDEgZbDVKkvZc15nePnzJdNGIaXuYvjZzWbgpdEv6
 nNcbye07jF63yD/OD+M4yt/6kSOZDxQkiuk4yaThBn5eYVGjYq+x4aAEt7If1ii5VUby
 9tXdSdribXpY0mBva7Ih2dchlJBB/8AM9XPB55lOhqHX/8diRwAln+P+clXB04ocbgEJ
 Iteg==
X-Gm-Message-State: AAQBX9d9Ro08XfayTzCSpct5dUr6rcKYdfu6zxz77QK3ErniO9jA50Uk
 M6gWW28T++D+zQStO78S1aZM+fKKwN55HN3gawQXjSAHNixxRl7Jery1+FI3ns84EXp0O97dIFo
 dj8NWHvQ3iDzbqRqqDEBlELwUbkcdXg==
X-Received: by 2002:a17:907:d689:b0:953:1a7c:51b7 with SMTP id
 wf9-20020a170907d68900b009531a7c51b7mr1833375ejc.28.1681826493391; 
 Tue, 18 Apr 2023 07:01:33 -0700 (PDT)
X-Google-Smtp-Source: AKy350aemARlMVPdy8kgJgXVuHzGD4sbX/Gl6p99Go7osU8PHjd+oUCms+1rCgpAgVHjctvdD0LBVw==
X-Received: by 2002:a17:907:d689:b0:953:1a7c:51b7 with SMTP id
 wf9-20020a170907d68900b009531a7c51b7mr1833311ejc.28.1681826492813; 
 Tue, 18 Apr 2023 07:01:32 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 qx11-20020a170906fccb00b0094f499257f7sm4053337ejb.151.2023.04.18.07.01.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Apr 2023 07:01:31 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <d805e350-1d59-eb3a-ec27-adaa72cdc20b@redhat.com>
Date: Tue, 18 Apr 2023 16:01:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Kurt Kanzenbach <kurt.kanzenbach@linutronix.de>, yoong.siang.song@intel.com
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174344813.593471.4026230439937368990.stgit@firesoul>
 <87leiqsexd.fsf@kurt>
In-Reply-To: <87leiqsexd.fsf@kurt>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681826496;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5fONgD5ZI0CkRixaJ2Z/vCiQZM4I6ehW6VIFsC+eLAk=;
 b=OzUN5w8sLAWZg1BojZTPg1h/7kqgOoNdNjLdJV+JF/r1oV7nJcReGmeZCMzXGCitsUDbnb
 QAnhQ9nKWi7vgkgUqnNWR8yIAZRO4l+GihwagsS2mVFKI8jhhC2fyrRsKQP5t7yMEMuHrC
 Jr5ElEMGwxNVVFM48Kx5Idn+TtMfIYU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OzUN5w8s
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf-next V1 5/5]
 selftests/bpf: xdp_hw_metadata track more timestamps
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Pasi Vaananen <pvaanane@redhat.com>, xdp-hints@xdp-project.net,
 martin.lau@kernel.org, daniel@iogearbox.net, larysa.zaremba@intel.com,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 john.fastabend@gmail.com, ast@kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, edumazet@google.com, Stanislav Fomichev <sdf@google.com>,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 17/04/2023 17.31, Kurt Kanzenbach wrote:
> On Mon Apr 17 2023, Jesper Dangaard Brouer wrote:
>> To correlate the hardware RX timestamp with something, add tracking of
>> two software timestamps both clock source CLOCK_TAI (see description in
>> man clock_gettime(2)).
>>
>> XDP metadata is extended with xdp_timestamp for capturing when XDP
>> received the packet. Populated with BPF helper bpf_ktime_get_tai_ns(). I
>> could not find a BPF helper for getting CLOCK_REALTIME, which would have
>> been preferred. In userspace when AF_XDP sees the packet another
>> software timestamp is recorded via clock_gettime() also clock source
>> CLOCK_TAI.
>>
>> Example output shortly after loading igc driver:
>>
>>    poll: 1 (0) skip=1 fail=0 redir=2
>>    xsk_ring_cons__peek: 1
>>    0x12557a8: rx_desc[1]->addr=100000000009000 addr=9100 comp_addr=9000
>>    rx_hash: 0x82A96531 with RSS type:0x1
>>    rx_timestamp:  1681740540304898909 (sec:1681740540.3049)
>>    XDP RX-time:   1681740577304958316 (sec:1681740577.3050) delta sec:37.0001 (37000059.407 usec)
>>    AF_XDP time:   1681740577305051315 (sec:1681740577.3051) delta sec:0.0001 (92.999 usec)
>>    0x12557a8: complete idx=9 addr=9000
>>
>> The first observation is that the 37 sec difference between RX HW vs XDP
>> timestamps, which indicate hardware is likely clock source
>> CLOCK_REALTIME, because (as of this writing) CLOCK_TAI is initialised
>> with a 37 sec offset.
> 
> Maybe I'm missing something here, but in order to compare the hardware
> with software timestamps (e.g., by using bpf_ktime_get_tai_ns()) the
> time sources have to be synchronized by using something like
> phc2sys. That should make them comparable within reasonable range
> (nanoseconds).

Precisely, in this test I've not synchronized the clocks.
The observation is that driver igc clock gets initialized to
CLOCK_REALTIME wall-clock time, and it slowly drifts as documented in 
provided link[1].

  [1] 
https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hints_kfuncs02_driver_igc.org#driver-igc-clock-drift-observations
  [2] 
https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hints_kfuncs02_driver_igc.org#quick-time-sync-setup

I've also played with using phc2sys (in same doc[2]) to sync HW clock
with SW clock. I do *seek input* if I'm using it correctly?!?.

I don't have a PTP clock setup , so I manually: Use phc2sys to
synchronize the system clock to the PTP hardware clock (PHC) on the
network card (which driver inited to CLOCK_REALTIME wall-clock).

Stop ntp clock sync and disable most CPU sleep states:

   sudo systemctl stop chronyd
   sudo tuned-adm profile latency-performance
   sudo hexdump --format '"%d\n"' /dev/cpu_dma_latency
   2

Adjust for the 37 sec offset to TAI, such that our BPF-prog using TAI 
will align:

   sudo phc2sys -s igc1 -O -37 -R 2 -u 10

Result on igc with xdp_hw_metadata:

  poll: 1 (0) skip=1 fail=0 redir=6
  xsk_ring_cons__peek: 1
  rx_hash: 0x82A96531 with RSS type:0x1
  rx_timestamp:  1681825632645744805 (sec:1681825632.6457)
  XDP RX-time:   1681825632645755858 (sec:1681825632.6458) delta 
sec:0.0000 (11.053 usec)
  AF_XDP time:   1681825632645769371 (sec:1681825632.6458) delta 
sec:0.0000 (13.513 usec)

The log file from phc2sys says:

  phc2sys[1294263]: [86275.140] CLOCK_REALTIME rms    6 max   11 freq 
+13719 +/-   5 delay  1435 +/-   5

Notice the delta between HW and SW timestamps is 11.053 usec.
Even-though it is small, I don't really trust it, because the phc2sys
log says frequency offset mean is "+13719" nanosec.

So, it is true that latency/delay between HW to XDP-SW is 11 usec?
Or is this due to (in)accuracy of phc2sys sync?

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
