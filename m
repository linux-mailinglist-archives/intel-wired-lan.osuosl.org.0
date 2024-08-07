Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 922C694AC05
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 17:11:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FDCA6076C;
	Wed,  7 Aug 2024 15:11:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkNfWUnf01lv; Wed,  7 Aug 2024 15:11:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAA25607A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723043475;
	bh=s6FUR2fo/+VjSxxYYo5ndiPZBjsBchScyO/yXGldsmk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QStC/2m3XU5KV75Yym/GDsWnlZuj0Z5rjHInuQ3NarHdpb93Epx3KEjq+y7ynq0u5
	 fc8PqL0K2DAbyzX4LZYKySaAvrJUvKGQpAf7hR/48GanHHH+4Vv8DhNHrMstNmmGq7
	 pST6qmBICUoiWrQC7Byx58Ud/hPG9Ymv6ACZ60BIWn6brzNpqrthze4sBCG2bwhpeW
	 S5UrKrXz4Q1FKa8Tf3NDGD+R9Njutj7CQSEksMqwQDOtFGqZU2rozD9RAaBnqLpY4o
	 dU3Lqal3HJLNcXWiFZWz3uyWZ4rbCnz5RLj2Y1mld7qRJxCFMz0TN4umIFiVzunAhi
	 33re37zrAt8og==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAA25607A7;
	Wed,  7 Aug 2024 15:11:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F49A1BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 12:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7156E80EB9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 12:42:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cz7zIUDcUri4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 12:42:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=luizcap@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4075980EB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4075980EB5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4075980EB5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 12:42:35 +0000 (UTC)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-26-7ci0atUdO36LP55QIbG-cg-1; Wed, 07 Aug 2024 08:42:32 -0400
X-MC-Unique: 7ci0atUdO36LP55QIbG-cg-1
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-79efb1181ddso168253485a.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Aug 2024 05:42:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723034552; x=1723639352;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=s6FUR2fo/+VjSxxYYo5ndiPZBjsBchScyO/yXGldsmk=;
 b=Aeslt81AcSeYzIsdEYFpO/J/BC+Dk5nMtFTbb/RTH1iZq0ZNEb2YVOmtNsQ8g4uymX
 NmvFXOgStE8MyPShRA5RTY+USzO23ZM9N/Iu32Zsof8khvOTT2GX2b3Jenj36BzkVzQ4
 U9XqXTtGujeYWQGknJMS99UtTqTs+fuVeD8HE6JGRobObzsy+RAiBmUCAW4tFKv+FPOx
 4BpzuNjjJjfMPr4mv4o0k3W1MEaqqx0ZBNgKZ07CXBWRIxCeKc5aG/dsR3dO26u2nFDP
 4lqZtuBgVAN3kszc/wLaPbZqpVX6JK5B8dlF+Sfw0jU9ZIcMHjykGwxXVxPWt2Vw2x7P
 Vj/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWsYLdmc5I7GcloPwv4WSnYcZIyYndfW50a5kLeyqTDV6lxKozn1t5CExjVJ7XBG35TiqI7OBn9Eusoc4ltJGTFWy4BSwW9ukNnbd40mnk3Xg==
X-Gm-Message-State: AOJu0YyeRsscpTc7NKU4nrObHmxeMxItO7uorbQ8Da7WRzmc4uSO24a2
 LaNGYR+KegS48u3tGFWc6gRrCOni+o/OZC82y4ETbloBgjEfLjncqJCwX8xRJURgzijD4r3YASg
 HmoBu8PI2jXmf8xt9xAJ/Y0LXqNF36VzUqLVASKl2I4OnxjrnNuTmyxpbDCdinBwR1cY=
X-Received: by 2002:a05:620a:2902:b0:7a1:6062:ed63 with SMTP id
 af79cd13be357-7a34ef34f6fmr2312409285a.29.1723034552335; 
 Wed, 07 Aug 2024 05:42:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE00fuIvFkd8lIOoWM2xBckmweNl/GgsjWoVCiFd3nId/kKjnwsJ5j9AirXK/XZvuktFTpTOQ==
X-Received: by 2002:a05:620a:2902:b0:7a1:6062:ed63 with SMTP id
 af79cd13be357-7a34ef34f6fmr2312407085a.29.1723034551949; 
 Wed, 07 Aug 2024 05:42:31 -0700 (PDT)
Received: from [10.0.0.200] (modemcable096.103-83-70.mc.videotron.ca.
 [70.83.103.96]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7a3786cbe65sm54890785a.111.2024.08.07.05.42.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Aug 2024 05:42:31 -0700 (PDT)
Message-ID: <62afdbd8-36fb-49e0-a62d-197a72dc3c34@redhat.com>
Date: Wed, 7 Aug 2024 08:42:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
From: Luiz Capitulino <luizcap@redhat.com>
In-Reply-To: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, en-CA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 07 Aug 2024 15:11:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1723034554;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s6FUR2fo/+VjSxxYYo5ndiPZBjsBchScyO/yXGldsmk=;
 b=H8dhiLSaVCPnfBLW5l/kJEvWu+XHzKIKhI9UQK7/bfzii+7nXFrGrF44WXq2ykLuEySU/U
 eCUISmzVSKxdfVCj4dyDCa2U8eAwpIeAkbvZjkkfFoukg+AtW/+rZ4LNNW5gHRZwMHxYJT
 jhnhIqhbg5AwCQOTTRD+NtHbrQ6vpX4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=H8dhiLSa
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix Rx data path for
 PAGE_SIZE >= 8192
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-08-07 06:53, Maciej Fijalkowski wrote:
> Hi,
> 
> These three small fixes addres the following panic reported by Luiz
> (https://lore.kernel.org/netdev/8f9e2a5c-fd30-4206-9311-946a06d031bb@redhat.com/):

Thank you one more time for getting this fixed!

I had to return the testbed so I won't be able to do a final testing on this
series, but I tested the fix as indicated in the last patch.

- Luiz

> 
> [  225.715759] Unable to handle kernel paging request at virtual address 0075e625f68aa42c
> [  225.723669] Mem abort info:
> [  225.726487]   ESR = 0x0000000096000004
> [  225.730223]   EC = 0x25: DABT (current EL), IL = 32 bits
> [  225.735526]   SET = 0, FnV = 0
> [  225.738568]   EA = 0, S1PTW = 0
> [  225.741695]   FSC = 0x04: level 0 translation fault
> [  225.746564] Data abort info:
> [  225.749431]   ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
> [  225.754906]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
> [  225.759944]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
> [  225.765250] [0075e625f68aa42c] address between user and kernel address ranges
> [  225.772373] Internal error: Oops: 0000000096000004 [#1] SMP
> [  225.777932] Modules linked in: xfs(E) crct10dif_ce(E) ghash_ce(E) sha2_ce(E) sha256_arm64(E) sha1_ce(E) sbsa_gwdt(E) ice(E) nvme(E) libie(E) dimlib(E) nvme_core(E) gnss(E) nvme_auth(E) ixgbe(E) igb(E) mdio(E) i2c_algo_bit(E) i2c_designware_platform(E) xgene_hwmon(E) i2c_designware_core(E) dm_mirror(E) dm_region_hash(E) dm_log(E) dm_mod(E)
> [  225.807902] CPU: 61 PID: 7794 Comm: iperf3 Kdump: loaded Tainted: G            E      6.10.0-rc4+ #1
> [  225.817021] Hardware name: LTHPC GR2134/MP32-AR2-LT, BIOS F31j (SCP: 2.10.20220531) 08/01/2022
> [  225.825618] pstate: 00400009 (nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> [  225.832566] pc : __arch_copy_to_user+0x4c/0x240
> [  225.837088] lr : _copy_to_iter+0x104/0x518
> [  225.841173] sp : ffff80010978f6e0
> [  225.844474] x29: ffff80010978f730 x28: 0000000000007388 x27: 4775e625f68aa42c
> [  225.851597] x26: 0000000000000001 x25: 00000000000005a8 x24: 00000000000005a8
> [  225.858720] x23: 0000000000007388 x22: ffff80010978fa60 x21: ffff80010978fa60
> [  225.865842] x20: 4775e625f68aa42c x19: 0000000000007388 x18: 0000000000000000
> [  225.872964] x17: 0000000000000000 x16: 0000000000000000 x15: 4775e625f68aa42c
> [  225.880087] x14: aaa03e61c262c44f x13: 5fb01a5ebded22da x12: 415feff815830f22
> [  225.887209] x11: 7411a8ffaab6d3d7 x10: 95af4645d12e6d70 x9 : ffffba83c2faddac
> [  225.894332] x8 : c1cbcc6e9552ed64 x7 : dfcefe933cdc57ae x6 : 0000fffde5aa9e80
> [  225.901454] x5 : 0000fffde5ab1208 x4 : 0000000000000004 x3 : 0000000000016180
> [  225.908576] x2 : 0000000000007384 x1 : 4775e625f68aa42c x0 : 0000fffde5aa9e80
> [  225.915699] Call trace:
> [  225.918132]  __arch_copy_to_user+0x4c/0x240
> [  225.922304]  simple_copy_to_iter+0x4c/0x78
> [  225.926389]  __skb_datagram_iter+0x18c/0x270
> [  225.930647]  skb_copy_datagram_iter+0x4c/0xe0
> [  225.934991]  tcp_recvmsg_locked+0x59c/0x9a0
> [  225.939162]  tcp_recvmsg+0x78/0x1d0
> [  225.942638]  inet6_recvmsg+0x54/0x128
> [  225.946289]  sock_recvmsg+0x78/0xd0
> [  225.949766]  sock_read_iter+0x98/0x108
> [  225.953502]  vfs_read+0x2a4/0x318
> [  225.956806]  ksys_read+0xec/0x110
> [  225.960108]  __arm64_sys_read+0x24/0x38
> [  225.963932]  invoke_syscall.constprop.0+0x80/0xe0
> [  225.968624]  do_el0_svc+0xc0/0xe0
> [  225.971926]  el0_svc+0x48/0x1b0
> [  225.975056]  el0t_64_sync_handler+0x13c/0x158
> [  225.979400]  el0t_64_sync+0x1a4/0x1a8
> [  225.983051] Code: 78402423 780008c3 910008c6 36100084 (b8404423)
> [  225.989132] SMP: stopping secondary CPUs
> [  225.995919] Starting crashdump kernel...
> [  225.999829] Bye!
> 
> Third patch contains the root cause description. I suppose that i40e
> would break as well for arm64 and multi-buffer traffic as when we update
> the skb shared info we assume that xdp_buff::frame_sz is constant but it
> should be accounted per each buffer.
> 
> Thanks,
> Maciej
> 
> Maciej Fijalkowski (3):
>    ice: fix page reuse when PAGE_SIZE is over 8k
>    ice: fix ICE_LAST_OFFSET formula
>    ice: fix truesize operations for PAGE_SIZE >= 8192
> 
>   drivers/net/ethernet/intel/ice/ice_base.c | 21 +++++++++-
>   drivers/net/ethernet/intel/ice/ice_txrx.c | 47 ++---------------------
>   2 files changed, 24 insertions(+), 44 deletions(-)
> 

