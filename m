Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A688A82B01
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 17:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BB62412BD;
	Wed,  9 Apr 2025 15:47:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oFMINR0Z3F5S; Wed,  9 Apr 2025 15:47:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 059514081E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744213646;
	bh=OQY75CxhJpKYQcuidz2M6w9c7v/GcVX/QelSDLhjFSo=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l4r6t9LolXn42LjRxbqFjAOsHGVN+D/vHRLX5HvhcNdsrVbed9HfL2qxTVYD59bX2
	 Nscavk/SYXJbpEBQP7pwjsbAa5WEt48Y9lhQX2njzBLvXHBepOamqRemr9HROeXxQp
	 5g1DcBLqGF7HMvUMUdxmnY6KI+JDTPWXYoZG+HtFkB0kvDnqLhHA7njkpSFWbySvBg
	 NerB04625xxnfzBQ1BEXEHrbkSBuRb4kGWhQgZsDnFreyoAbdZbMeWgxqcHTpiWRtv
	 DaEM9uAs+P8LXgy9f4fybEIx7w2iO/7LTzvlMdkc+NqZjBlqfVjDHuyTiI1BuAJZoM
	 eK5W/UWhf1O2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 059514081E;
	Wed,  9 Apr 2025 15:47:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 677E5108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FA678377F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:36:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xhRRQK6QjFO6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 15:36:38 +0000 (UTC)
X-Greylist: delayed 1121 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 09 Apr 2025 15:36:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 989E88380E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 989E88380E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=85.10.215.232;
 helo=dediextern.your-server.de;
 envelope-from=marcus.wichelmann@hetzner-cloud.de; receiver=<UNKNOWN> 
Received: from dediextern.your-server.de (dediextern.your-server.de
 [85.10.215.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 989E88380E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:36:37 +0000 (UTC)
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by dediextern.your-server.de with esmtpsa (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.94.2) (envelope-from <marcus.wichelmann@hetzner-cloud.de>)
 id 1u2XBX-000Dxr-88; Wed, 09 Apr 2025 17:17:51 +0200
Received: from [2a0d:3344:1523:1f10:f118:b2d4:edbb:54af]
 by sslproxy01.your-server.de with esmtpsa (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.96) (envelope-from <marcus.wichelmann@hetzner-cloud.de>)
 id 1u2XBW-000HjF-34; Wed, 09 Apr 2025 17:17:50 +0200
Message-ID: <d33f0ab4-4dc4-49cd-bbd0-055f58dd6758@hetzner-cloud.de>
Date: Wed, 9 Apr 2025 17:17:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
Autocrypt: addr=marcus.wichelmann@hetzner-cloud.de; keydata=
 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
 wySmewx3h/yfMh0aFxHhvLPxrO2IEQ==
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Jay Vosburgh
 <jv@jvosburgh.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org, sdn@hetzner-cloud.de
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: marcus.wichelmann@hetzner-cloud.de
X-Virus-Scanned: Clear (ClamAV 1.0.7/27603/Wed Apr  9 10:44:35 2025)
X-Mailman-Approved-At: Wed, 09 Apr 2025 15:47:24 +0000
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=hetzner-cloud.de
Subject: [Intel-wired-lan] [BUG] ixgbe: Detected Tx Unit Hang (XDP)
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

Hi,

in a setup where I use native XDP to redirect packets to a bonding interface
that's backed by two ixgbe slaves, I noticed that the ixgbe driver constantly
resets the NIC with the following kernel output:

  ixgbe 0000:01:00.1 ixgbe-x520-2: Detected Tx Unit Hang (XDP)
    Tx Queue             <4>
    TDH, TDT             <17e>, <17e>
    next_to_use          <181>
    next_to_clean        <17e>
  tx_buffer_info[next_to_clean]
    time_stamp           <0>
    jiffies              <10025c380>
  ixgbe 0000:01:00.1 ixgbe-x520-2: tx hang 19 detected on queue 4, resetting adapter
  ixgbe 0000:01:00.1 ixgbe-x520-2: initiating reset due to tx timeout
  ixgbe 0000:01:00.1 ixgbe-x520-2: Reset adapter

This only occurs in combination with a bonding interface and XDP, so I don't
know if this is an issue with ixgbe or the bonding driver.
I first discovered this with Linux 6.8.0-57, but kernel 6.14.0 and 6.15.0-rc1
show the same issue.


I managed to reproduce this bug in a lab environment. Here are some details
about my setup and the steps to reproduce the bug:

NIC: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection (rev 01)

CPU: Ampere(R) Altra(R) Processor Q80-30 CPU @ 3.0GHz
     Also reproduced on:
     - Intel(R) Xeon(R) Gold 5218 CPU @ 2.30GHz
     - Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz

Kernel: 6.15.0-rc1 (built from mainline)

  # ethtool -i ixgbe-x520-1
  driver: ixgbe
  version: 6.15.0-rc1
  firmware-version: 0x00012b2c, 1.3429.0
  expansion-rom-version: 
  bus-info: 0000:01:00.0
  supports-statistics: yes
  supports-test: yes
  supports-eeprom-access: yes
  supports-register-dump: yes
  supports-priv-flags: yes

The two ports of the NIC (named "ixgbe-x520-1" and "ixgbe-x520-2") are directly
connected with each other using a DAC cable. Both ports are configured to be
slaves of a bonding with mode balance-rr.
Neither the direct connection of  both ports nor the round-robin bonding mode
are a requirement to reproduce the issue. This setup just allows it to be easier
reproduced in an isolated environment. The issue is also visible with a regular
802.3ad link aggregation with a switch on the other side.

  # modprobe bonding
  # ip link set dev ixgbe-x520-1 down
  # ip link set dev ixgbe-x520-2 down
  # ip link add bond0 type bond mode balance-rr
  # ip link set dev ixgbe-x520-1 master bond0
  # ip link set dev ixgbe-x520-2 master bond0
  # ip link set dev ixgbe-x520-1 up
  # ip link set dev ixgbe-x520-2 up
  # ip link set dev bond0 up
        
  # cat /proc/net/bonding/bond0
  Ethernet Channel Bonding Driver: v6.15.0-rc1

  Bonding Mode: load balancing (round-robin)
  MII Status: up
  MII Polling Interval (ms): 0
  Up Delay (ms): 0
  Down Delay (ms): 0
  Peer Notification Delay (ms): 0

  Slave Interface: ixgbe-x520-1
  MII Status: up
  Speed: 10000 Mbps
  Duplex: full
  Link Failure Count: 0
  Permanent HW addr: 6c:b3:11:08:5c:3c
  Slave queue ID: 0

  Slave Interface: ixgbe-x520-2
  MII Status: up
  Speed: 10000 Mbps
  Duplex: full
  Link Failure Count: 0
  Permanent HW addr: 6c:b3:11:08:5c:3e
  Slave queue ID: 0

  # ethtool -l ixgbe-x520-1
  Channel parameters for ixgbe-x520-1:
  Pre-set maximums:
  RX:             n/a
  TX:             n/a
  Other:          1
  Combined:       63
  Current hardware settings:
  RX:             n/a
  TX:             n/a
  Other:          1
  Combined:       63
  (same for ixgbe-x520-2)

In the following the xdp-tools from https://github.com/xdp-project/xdp-tools/
are used.

Enable XDP on the bonding and make sure all received packets will be dropped:
  # xdp-tools/xdp-bench/xdp-bench drop -e -i 1 bond0

Redirect a batch of packets to the bonding interface:
  # xdp-tools/xdp-trafficgen/xdp-trafficgen udp --dst-mac <mac of bond0>
    --src-port 5000 --dst-port 6000 --threads 16 --num-packets 1000000 bond0

Shortly after that (3-4 seconds), one or more "Detected Tx Unit Hang" errors
(see above) will show up in the kernel log.

The high number of packets and thread count (--threads 16) is not required to
trigger the issue but greatly improves the probability.


Do you have any ideas what may be causing this issue or what I can do to
diagnose this further?

Please let me know when I should provide any more information.


Thanks!
Marcus
