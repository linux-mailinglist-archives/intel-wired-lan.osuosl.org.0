Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22476A5A197
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 19:04:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72B3140E02;
	Mon, 10 Mar 2025 18:04:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kS4WXHrA2dTJ; Mon, 10 Mar 2025 18:04:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA2A040DDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741629860;
	bh=IAloyDEjksb8dKdvGoNGu9wfA/54BvjmneQ5oEpwQ60=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vrWo+NbmSfrvYrO4JFAFfgcazLcAa0OOJeayTT5rPj9awf1cgA2HXvYYf37UAB5Gb
	 DR5m7C2OEYn3bEEQNp09g/rkoiCMWIHRtvE3dKHYlNJ6YSi3QzdAeS+I5vhpoOh61v
	 90qE8AMVettHNz0DDTM4Gc9Jnn83lLrNcrxrjp6kHtGXAUsuHdF2YxVL25LvmTrlv7
	 ZZi5iK3V922lzc6ZShnTKK6AEtZ9pg+NCmsgaMqipkCRVI1f8ia86bxRovhZ5rr/LN
	 W/UrJabVoWBllnI5Sc3eziPUDS0bZkqo0WoB7knsUa46TGjNAIuLx54LpEfrykui2C
	 ikF/qeIagkJsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA2A040DDA;
	Mon, 10 Mar 2025 18:04:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BA763DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 18:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F3DB820A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 18:04:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JQusdY_yAkZw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 18:04:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.129.48;
 helo=dispatch1-us1.ppe-hosted.com; envelope-from=greearb@candelatech.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 71DFE820A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71DFE820A9
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.48])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71DFE820A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 18:04:16 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mail3.candelatech.com (mail.candelatech.com [208.74.158.173])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id C7D2D2400F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 18:04:13 +0000 (UTC)
Received: from [192.168.100.159] (unknown [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 32EF313C2B0;
 Mon, 10 Mar 2025 11:04:13 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 32EF313C2B0
Message-ID: <af9a8640-0905-7ba6-7168-31cdf3c4f422@candelatech.com>
Date: Mon, 10 Mar 2025 11:04:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: Brent Lovelace <brent.lovelace@candelatech.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MDID: 1741629854-1C1jHmbcDVTK
X-MDID-O: us5; ut7; 1741629854; 1C1jHmbcDVTK; <greearb@candelatech.com>;
 beed7f42440e35e1e9619977dddfd38b
X-PPE-TRUSTED: V=1;DIR=OUT;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=candelatech.com; s=default; t=1741629853;
 bh=ioq2L4NKZIJrPob0IiLcH9SUaGjBybWiFDPJlFXJvcI=;
 h=Date:To:Cc:From:Subject:From;
 b=hh1gtvlRsKRDMz8s54umcyVNnuobLdQHhK65ADrkdrLMwuN5QG5vB9WuFsLCYnnU5
 TtvmgHmRw4GlFWqvZVf/GE/M7Mf3i7cgLEfjUSKr7O6q0L89wVPYUJw/V+jMOuP3SH
 JZDyT+ObVYJUB+4WVmJ6HkGmXbuL+jZm4bS18ydQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=candelatech.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=candelatech.com header.i=@candelatech.com
 header.a=rsa-sha256 header.s=default header.b=hh1gtvlR
Subject: [Intel-wired-lan] ixgbe: Firmware error and NIC went away.
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

We had the ixgbe radios in one of our systems on an overnight test.  To my knowledge,
we have never seen this particular issue before.  Please let me know if you have any
ideas on what caused it or how we can get better logs to debug it.  We plan to replace
the NIC and re-run in case it is hardware issue.

The logs below are filtered on 'ixgbe', but I can provide full logs if that would help.

This is from 6.11.11 + local patches kernel, but not many changes from stock kernel in the Ethernet
stack or driver.

root@ct523c-6987:~# grep ixgbe log.txt
Mar 07 17:34:48 ct523c-6987 kernel: ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver
Mar 07 17:34:48 ct523c-6987 kernel: ixgbe: Copyright (c) 1999-2016 Intel Corporation.
Mar 07 17:34:48 ct523c-6987 kernel: ixgbe 0000:15:00.0: Multiqueue Enabled: Rx Queue count = 20, Tx Queue count = 20 XDP Queue count = 0
Mar 07 17:34:48 ct523c-6987 kernel: ixgbe 0000:15:00.0: 31.504 Gb/s available PCIe bandwidth (8.0 GT/s PCIe x4 link)
Mar 07 17:34:48 ct523c-6987 kernel: ixgbe 0000:15:00.0: MAC: 4, PHY: 0, PBA No: H86377-005
Mar 07 17:34:48 ct523c-6987 kernel: ixgbe 0000:15:00.0: 3c:fd:fe:e1:c6:c6
Mar 07 17:34:48 ct523c-6987 kernel: ixgbe 0000:15:00.0: Intel(R) 10 Gigabit Network Connection
Mar 07 17:34:49 ct523c-6987 kernel: ixgbe 0000:15:00.1: Multiqueue Enabled: Rx Queue count = 20, Tx Queue count = 20 XDP Queue count = 0
Mar 07 17:34:49 ct523c-6987 kernel: ixgbe 0000:15:00.1: 31.504 Gb/s available PCIe bandwidth (8.0 GT/s PCIe x4 link)
Mar 07 17:34:49 ct523c-6987 kernel: ixgbe 0000:15:00.1: MAC: 4, PHY: 0, PBA No: H86377-005
Mar 07 17:34:49 ct523c-6987 kernel: ixgbe 0000:15:00.1: 3c:fd:fe:e1:c6:c7
Mar 07 17:34:49 ct523c-6987 kernel: ixgbe 0000:15:00.1: Intel(R) 10 Gigabit Network Connection
Mar 07 17:34:49 ct523c-6987 kernel: ixgbe 0000:15:00.0 enp21s0f0: renamed from eth2
Mar 07 17:34:49 ct523c-6987 kernel: ixgbe 0000:15:00.1 enp21s0f1: renamed from eth3
Mar 07 17:34:53 ct523c-6987 kernel: ixgbe 0000:15:00.1 eth3: renamed from enp21s0f1
Mar 07 17:34:53 ct523c-6987 kernel: ixgbe 0000:15:00.0 eth2: renamed from enp21s0f0
Mar 07 17:49:27 ct523c-6987 kernel: ixgbe 0000:15:00.0: registered PHC device on eth2
Mar 07 17:49:27 ct523c-6987 kernel: ixgbe 0000:15:00.0: removed PHC on eth2
Mar 07 17:49:27 ct523c-6987 kernel: ixgbe 0000:15:00.0: registered PHC device on eth2
Mar 07 17:49:28 ct523c-6987 kernel: ixgbe 0000:15:00.0: removed PHC on eth2
Mar 07 17:49:28 ct523c-6987 kernel: ixgbe 0000:15:00.1: registered PHC device on eth3
Mar 07 17:49:28 ct523c-6987 kernel: ixgbe 0000:15:00.0: registered PHC device on eth2
Mar 07 17:49:28 ct523c-6987 kernel: ixgbe 0000:15:00.1: removed PHC on eth3
Mar 07 17:49:29 ct523c-6987 kernel: ixgbe 0000:15:00.1: registered PHC device on eth3
Mar 07 17:49:29 ct523c-6987 kernel: ixgbe 0000:15:00.1: removed PHC on eth3
Mar 07 17:49:29 ct523c-6987 kernel: ixgbe 0000:15:00.1: registered PHC device on eth3
Mar 07 17:49:34 ct523c-6987 kernel: ixgbe 0000:15:00.0 eth2: NIC Link is Up 10 Gbps, Flow Control: RX/TX
Mar 07 17:49:34 ct523c-6987 kernel: ixgbe 0000:15:00.1 eth3: NIC Link is Up 10 Gbps, Flow Control: RX/TX
Mar 07 17:58:24 ct523c-6987 kernel: ixgbe 0000:15:00.0: removed PHC on eth2
Mar 07 17:58:25 ct523c-6987 kernel: ixgbe 0000:15:00.1: removed PHC on eth3
Mar 07 17:58:48 ct523c-6987 kernel: ixgbe 0000:15:00.0: registered PHC device on eth2
Mar 07 18:00:42 ct523c-6987 kernel: ixgbe 0000:15:00.0 eth2: NIC Link is Up 10 Gbps, Flow Control: RX/TX
Mar 07 18:47:08 ct523c-6987 kernel:  nfs_acl lockd grace sch_fq_codel sunrpc fuse zram raid1 dm_raid raid456 libcrc32c async_raid6_recov async_memcpy async_pq 
async_xor xor async_tx raid6_pq xe drm_ttm_helper gpu_sched drm_suballoc_helper drm_gpuvm drm_exec i915 i2c_algo_bit cec rc_core drm_buddy intel_gtt 
drm_display_helper drm_kms_helper ttm agpgart e1000e igc ixgbe mdio dca hwmon drm xhci_pci mei_wdt i2c_core xhci_pci_renesas video wmi pinctrl_alderlake 
efivarfs [last unloaded: nfnetlink]
Mar 07 18:58:35 ct523c-6987 kernel: ixgbe 0000:15:00.0 eth2: NIC Link is Down
Mar 07 18:58:56 ct523c-6987 kernel: ixgbe 0000:15:00.0: removed PHC on eth2
Mar 07 18:58:56 ct523c-6987 kernel: ixgbe 0000:15:00.0: registered PHC device on eth2
Mar 07 18:58:57 ct523c-6987 kernel: ixgbe 0000:15:00.0: removed PHC on eth2
Mar 07 18:58:57 ct523c-6987 kernel: ixgbe 0000:15:00.0: registered PHC device on eth2
Mar 07 18:59:03 ct523c-6987 kernel: ixgbe 0000:15:00.1: registered PHC device on eth3
Mar 07 18:59:03 ct523c-6987 kernel: ixgbe 0000:15:00.1: removed PHC on eth3
Mar 07 18:59:04 ct523c-6987 kernel: ixgbe 0000:15:00.1: registered PHC device on eth3
Mar 07 18:59:08 ct523c-6987 kernel: ixgbe 0000:15:00.0 eth2: NIC Link is Up 10 Gbps, Flow Control: RX/TX
Mar 07 18:59:08 ct523c-6987 kernel: ixgbe 0000:15:00.1 eth3: NIC Link is Up 10 Gbps, Flow Control: RX/TX
Mar 09 06:08:19 ct523c-6987 kernel: ixgbe 0000:15:00.0: Adapter removed
Mar 09 06:08:19 ct523c-6987 kernel: ixgbe 0000:15:00.0: Warning firmware error detected FWSM: 0xFFFFFFFF
Mar 09 06:08:19 ct523c-6987 kernel: ixgbe 0000:15:00.0: Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and 
Devices User Guide for details on firmware recovery mode.
Mar 09 06:08:19 ct523c-6987 kernel: ixgbe 0000:15:00.0: removed PHC on eth2
Mar 09 06:08:21 ct523c-6987 kernel: ixgbe-mdio-0000:15:00.0: not in UNREGISTERED state
Mar 09 06:08:21 ct523c-6987 kernel:  nfs_acl lockd grace sch_fq_codel sunrpc fuse zram raid1 dm_raid raid456 libcrc32c async_raid6_recov async_memcpy async_pq 
async_xor xor async_tx raid6_pq xe drm_ttm_helper gpu_sched drm_suballoc_helper drm_gpuvm drm_exec i915 i2c_algo_bit cec rc_core drm_buddy intel_gtt 
drm_display_helper drm_kms_helper ttm agpgart e1000e igc ixgbe mdio dca hwmon drm xhci_pci mei_wdt i2c_core xhci_pci_renesas video wmi pinctrl_alderlake 
efivarfs [last unloaded: nfnetlink]
Mar 09 06:08:21 ct523c-6987 kernel: Workqueue: ixgbe ixgbe_service_task [ixgbe]
Mar 09 06:08:21 ct523c-6987 kernel:  ixgbe_service_task+0xb9e/0x12f0 [ixgbe]
Mar 09 06:08:21 ct523c-6987 kernel: ixgbe 0000:15:00.1: Adapter removed
Mar 09 06:08:21 ct523c-6987 kernel: ixgbe 0000:15:00.1: Warning firmware error detected FWSM: 0xFFFFFFFF
Mar 09 06:08:21 ct523c-6987 kernel: ixgbe 0000:15:00.1: Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and 
Devices User Guide for details on firmware recovery mode.
Mar 09 06:08:21 ct523c-6987 kernel: ixgbe 0000:15:00.1: removed PHC on eth3
Mar 09 06:08:22 ct523c-6987 kernel: ixgbe-mdio-0000:15:00.1: not in UNREGISTERED state
Mar 09 06:08:22 ct523c-6987 kernel:  nfs_acl lockd grace sch_fq_codel sunrpc fuse zram raid1 dm_raid raid456 libcrc32c async_raid6_recov async_memcpy async_pq 
async_xor xor async_tx raid6_pq xe drm_ttm_helper gpu_sched drm_suballoc_helper drm_gpuvm drm_exec i915 i2c_algo_bit cec rc_core drm_buddy intel_gtt 
drm_display_helper drm_kms_helper ttm agpgart e1000e igc ixgbe mdio dca hwmon drm xhci_pci mei_wdt i2c_core xhci_pci_renesas video wmi pinctrl_alderlake 
efivarfs [last unloaded: nfnetlink]
Mar 09 06:08:22 ct523c-6987 kernel: Workqueue: ixgbe ixgbe_service_task [ixgbe]
Mar 09 06:08:22 ct523c-6987 kernel:  ixgbe_service_task+0xb9e/0x12f0 [ixgbe]

root@ct523c-6987:~# uname -a
Linux ct523c-6987 6.11.11+ #39 SMP PREEMPT_DYNAMIC Fri Feb 28 15:53:45 PST 2025 x86_64 GNU/Linux
root@ct523c-6987:~# ifconfig eth2
eth2: error fetching interface information: Device not found
root@ct523c-6987:~# ifconfig eth3
eth3: error fetching interface information: Device not found

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

