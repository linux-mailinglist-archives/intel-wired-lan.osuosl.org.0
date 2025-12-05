Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 344D6CA7F44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 15:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 297E260782;
	Fri,  5 Dec 2025 14:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EbFd3GkOV0r0; Fri,  5 Dec 2025 14:29:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83BB66082C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764944986;
	bh=eWtYHskkXx1hvTY8cGFjMWKTOZyRHYVs7cCoxlHPNWA=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IGPQQFIX8nMoQGdHbuKRkyVvx95fi3f/KSFQK//NJlJYZ+aJnU4IltePiXCXfCLaH
	 vA63IsDvNwndWOpLIA32WedbBQGzEr+X0HKEvB1zN1+agqwyRUYPM7fZ8Aq9gBhRVB
	 q7HQsEuhjKFLxUCBUCoBPHQtw2Nm6cvo2cNNgsaMhzW/XBD0Ar+3RoDPFG419BQPl4
	 sppCXCcIsZNDAtYOfY/N/vgaaJBfYJ8K9XCIiDiGAwwosFyF7AJHPSvb/VJccyiTCB
	 s119UdRbxicrhYTwz0RZE0wEvpJqXzqm0BPmiS+646sDwc87zassN+NZp41/i7AWJw
	 Nya+HPCnZGknQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83BB66082C;
	Fri,  5 Dec 2025 14:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 334C71A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 14:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A16560705
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 14:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IDvGWVObMq6H for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 14:29:44 +0000 (UTC)
X-Greylist: delayed 1681 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 05 Dec 2025 14:29:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9CDCE6069C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CDCE6069C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=85.10.215.232;
 helo=dediextern.your-server.de;
 envelope-from=marcus.wichelmann@hetzner-cloud.de; receiver=<UNKNOWN> 
Received: from dediextern.your-server.de (dediextern.your-server.de
 [85.10.215.232])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9CDCE6069C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 14:29:43 +0000 (UTC)
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by dediextern.your-server.de with esmtpsa (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.96.2) (envelope-from <marcus.wichelmann@hetzner-cloud.de>)
 id 1vRWNM-000ICM-25; Fri, 05 Dec 2025 15:01:36 +0100
Received: from localhost ([127.0.0.1])
 by sslproxy06.your-server.de with esmtpsa (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.96) (envelope-from <marcus.wichelmann@hetzner-cloud.de>)
 id 1vRWNM-000I4e-1q; Fri, 05 Dec 2025 15:01:36 +0100
Message-ID: <672ab222-db78-4cad-821b-19256a7a4078@hetzner-cloud.de>
Date: Fri, 5 Dec 2025 15:01:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
Autocrypt: addr=marcus.wichelmann@hetzner-cloud.de; keydata=
 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
 wySmewx3h/yfMh0aFxHhvLPxrO2IEQ==
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, Netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org
Cc: sdn@hetzner-cloud.de
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: Clear (ClamAV 1.0.9/27841/Fri Dec  5 10:23:11 2025)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=hetzner-cloud.de
Subject: [Intel-wired-lan] [BUG] ice: Temporary packet processing overload
 causes permanent RX drops
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

Hi there, I broke some network cards again. This time I noticed continuous RX packet drops with an Intel E810-XXV.

When such a card temporarily (just for a few seconds) receives a large flood of packets and the kernel cannot keep
up with processing them, the following appears in the Kernel log:

kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=0x002b address=0x4000180000 flags=0x0020]
kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=0x002b address=0x4000180000 flags=0x0020]
kernel: workqueue: ice_rx_dim_work [ice] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us 5 times, consider switching to WQ_UNBOUND
kernel: workqueue: ice_rx_dim_work [ice] hogged CPU for >10000us 5 times, consider switching to WQ_UNBOUND
kernel: workqueue: psi_avgs_work hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=0x002b address=0x4000180000 flags=0x0020]
kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us 7 times, consider switching to WQ_UNBOUND
kernel: workqueue: ice_rx_dim_work [ice] hogged CPU for >10000us 7 times, consider switching to WQ_UNBOUND
kernel: workqueue: psi_avgs_work hogged CPU for >10000us 5 times, consider switching to WQ_UNBOUND
kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=0x002b address=0x4000180000 flags=0x0020]
...

After that, the NIC seems to be in a permanently broken state and continues to drop a few percent of the received
packets, even at low data rates. When reducing the incoming packet rate to just 10.000 pps, I can see over 500 pps
of that being dropped. After reinitializing the NIC (e.g. by changing the channel count using ethtool), the error
goes away and it's rock solid again. Until the next packet flood.

We have reproduced this with:
  Linux 6.8.0-88-generic (Ubuntu 24.04)
  Linux 6.14.0-36-generic (Ubuntu 24.04 HWE)
  Linux 6.18.0-061800-generic (Ubuntu Mainline PPA)

CPU: AMD EPYC 9825 144-Core Processor (288 threads)

lspci | grep Ethernet
  c7:00.0 Ethernet controller: Intel Corporation Ethernet Controller E810-XXV for SFP (rev 02)
  c7:00.1 Ethernet controller: Intel Corporation Ethernet Controller E810-XXV for SFP (rev 02)

ethtool -i eth0
  driver: ice
  version: 6.18.0-061800-generic
  firmware-version: 4.90 0x80020ef6 1.3863.0
  expansion-rom-version: 
  bus-info: 0000:c7:00.0
  supports-statistics: yes
  supports-test: yes
  supports-eeprom-access: yes
  supports-register-dump: yes
  supports-priv-flags: yes

ethtool -l eth0
  Channel parameters for eth0:
  Pre-set maximums:
  RX:		288
  TX:		288
  Other:		1
  Combined:	288
  Current hardware settings:
  RX:		0
  TX:		32
  Other:		1
  Combined:	256
These are the defaults after boot.

ethtool -S eth0 | grep rx_dropped
  rx_dropped: 7206525
  rx_dropped.nic: 0
ethtool -S eth1 | grep rx_dropped
  rx_dropped: 6889634
  rx_dropped.nic: 0

How to reproduce:

1. Use another host to flood the host with the E810 NIC with 64 byte large UDP packets. I used trafgen for that and
made sure, that the source ports are randomized to make RSS spread the load over all channels. The packet rate must
be high enough to overload the packet processing on the receiving host.
In my case, 4 Mpps was already enough to make the errors show up in the kernel log and trigger the permanent packet
loss, but the needed packet rate may depend on how CPU intensive the processing of each packet is. Dropping packets
early (e.g. using iptables) makes reproducing harder.

2. Monitor the rx_dropped counter and the kernel log. After a few seconds, above warnings/errors should show up in
the kernel log.

3. Stop the traffic generator and re-run it with a way lower packet rate, e.g. 10.000 pps. Now it can be seen that
a good part of these packets is being dropped, even though the kernel could easily keep up with this small packet rate.

In my case the two ports of the E810 NIC were part of a bonding, but I don't think this is required to reproduce the
issue.

Please let me know, if there is more information I could provide.

Thanks,
Marcus
