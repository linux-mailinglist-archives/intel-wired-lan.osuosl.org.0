Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D09A86F400
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Mar 2024 09:32:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 973A883131;
	Sun,  3 Mar 2024 08:32:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LJVMTyQGlsk4; Sun,  3 Mar 2024 08:32:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DB0D83134
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709454772;
	bh=LULZWY8/ihSP6f5FhLGFyPhrlNcVnpVaQfISKlXfpM0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=F71KEAfPKRjQ3QgGyRiwKv3TB6wuwCN3VL8Dj6on4vDxd5oBsjQQexb0CD6jLHR/r
	 /Ii3ORGTPpeAB/UhaFmNDTr5bdFXNSWmrhqbXO3yxQAHn7IZ3NJSi2JRAfutsTiVsX
	 GMdCKaQg+SLFsUpAEry8JODl2xt3VNg5YtLK4EJtBXpnBpzl3Pybka9yYTDfM7nbTC
	 SReTGklW3rYtJ/p2IG5Og8Dl/ou74RbUOUj7pkTVgSdFAHWVTMqiV9WrVYCCHxpj46
	 eoLEluaTDgi959dobRvsv8Wu4yo22xqQoIJr1cY4r3gQr89iInHPZZHR3cTlrWzBbb
	 QA4Wk/YfP7iXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DB0D83134;
	Sun,  3 Mar 2024 08:32:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40AB91BF38B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 08:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BF8A4014D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 08:32:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EaZx04Rxq3c7 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Mar 2024 08:32:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A408E40136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A408E40136
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A408E40136
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 08:32:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11001"; a="7769290"
X-IronPort-AV: E=Sophos;i="6.06,200,1705392000"; 
   d="scan'208";a="7769290"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 00:32:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,200,1705392000"; d="scan'208";a="13357181"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa005.jf.intel.com with ESMTP; 03 Mar 2024 00:32:40 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@google.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>
Date: Sun,  3 Mar 2024 16:32:23 +0800
Message-Id: <20240303083225.1184165-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709454770; x=1740990770;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KEkw3aYpXBMAax7nr1GAc1O3xxEcCgJGw1NtCoKptUo=;
 b=MAFAiM9hhKTgH5fH514hog6HccqqlXn7Od08oyA0y1KXGyCznYoGtqD9
 5wO0PVTAJgiTGQCGj5/m7q9jFtGLw8f4jQypeBK2digpnzieho334Ss0n
 ih0g7onQ9JfQK2f3uEGBxTqK2MO9R/lyceCNV6sWT7pmFbgE8bVm0Q4SF
 37jAJmQBSrfbGsBXWDodFJ2r5k4SDEZLns6oF9OYEgXPjkl7dRSAG5S/Z
 vnP2sW5Mxzuj5iMQEkmM4LGBNLC5ZX1yl9pQjmUvW9t3BKxZrMOr+HTQT
 6HEUftGGc3Q9w92tH4wM7gIsqlS5146pSLL9dt1A+k0ukh1uMh4EKghAp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MAFAiM9h
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v3 0/2] XDP Tx Hardware Timestamp for igc driver
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implemented XDP transmit hardware timestamp metadata for igc driver.

This patchset is tested with tools/testing/selftests/bpf/xdp_hw_metadata
on Intel ADL-S platform. Below are the test steps and results.

Test Step 1: Run xdp_hw_metadata app
 sudo ./xdp_hw_metadata <iface> > /dev/shm/result.log

Test Step 2: Enable Tx hardware timestamp
 sudo hwstamp_ctl -i <iface> -t 1 -r 1

Test Step 3: Run ptp4l and phc2sys for time synchronization

Test Step 4: Generate 1000 UDP packets with 1ms interval
 sudo trafgen --dev <iface> '{eth(da=<mac addr>), udp(dp=9091)}' -t 1ms -n 1000

Result of last 3 packets:
poll: 1 (0) skip=50 fail=0 redir=998
xsk_ring_cons__peek: 1
0x55d7e76a02d0: rx_desc[997]->addr=96110 addr=96110 comp_addr=96110 EoP
rx_hash: 0x11A51182 with RSS type:0x1
HW RX-time:   1677795020447895823 (sec:1677795020.4479) delta to User RX-time sec:0.0000 (16.309 usec)
XDP RX-time:   1677795020447906552 (sec:1677795020.4479) delta to User RX-time sec:0.0000 (5.580 usec)
No rx_vlan_tci or rx_vlan_proto, err=-95
0x55d7e76a02d0: ping-pong with csum=ab19 (want 315b) csum_start=34 csum_offset=6
0x55d7e76a02d0: complete tx idx=997 addr=65010
HW TX-complete-time:   1677795020447961519 (sec:1677795020.4480) delta to User TX-complete-time sec:0.0001 (79.979 usec)
XDP RX-time:   1677795020447906552 (sec:1677795020.4479) delta to User TX-complete-time sec:0.0001 (134.946 usec)
HW RX-time:   1677795020447895823 (sec:1677795020.4479) delta to HW TX-complete-time sec:0.0001 (65.696 usec)
0x55d7e76a02d0: complete rx idx=1125 addr=96110

poll: 1 (0) skip=50 fail=0 redir=999
xsk_ring_cons__peek: 1
0x55d7e76a02d0: rx_desc[998]->addr=98110 addr=98110 comp_addr=98110 EoP
rx_hash: 0x11A51182 with RSS type:0x1
HW RX-time:   1677795020448904440 (sec:1677795020.4489) delta to User RX-time sec:0.0000 (15.920 usec)
XDP RX-time:   1677795020448915139 (sec:1677795020.4489) delta to User RX-time sec:0.0000 (5.221 usec)
No rx_vlan_tci or rx_vlan_proto, err=-95
0x55d7e76a02d0: ping-pong with csum=ab19 (want 315b) csum_start=34 csum_offset=6
0x55d7e76a02d0: complete tx idx=998 addr=66010
HW TX-complete-time:   1677795020448969442 (sec:1677795020.4490) delta to User TX-complete-time sec:0.0001 (80.163 usec)
XDP RX-time:   1677795020448915139 (sec:1677795020.4489) delta to User TX-complete-time sec:0.0001 (134.466 usec)
HW RX-time:   1677795020448904440 (sec:1677795020.4489) delta to HW TX-complete-time sec:0.0001 (65.002 usec)
0x55d7e76a02d0: complete rx idx=1126 addr=98110

poll: 1 (0) skip=50 fail=0 redir=1000
xsk_ring_cons__peek: 1
0x55d7e76a02d0: rx_desc[999]->addr=99110 addr=99110 comp_addr=99110 EoP
rx_hash: 0x11A51182 with RSS type:0x1
HW RX-time:   1677795020449912415 (sec:1677795020.4499) delta to User RX-time sec:0.0000 (16.441 usec)
XDP RX-time:   1677795020449923362 (sec:1677795020.4499) delta to User RX-time sec:0.0000 (5.494 usec)
No rx_vlan_tci or rx_vlan_proto, err=-95
0x55d7e76a02d0: ping-pong with csum=ab19 (want 315b) csum_start=34 csum_offset=6
0x55d7e76a02d0: complete tx idx=999 addr=67010
HW TX-complete-time:   1677795020449977468 (sec:1677795020.4500) delta to User TX-complete-time sec:0.0001 (81.036 usec)
XDP RX-time:   1677795020449923362 (sec:1677795020.4499) delta to User TX-complete-time sec:0.0001 (135.142 usec)
HW RX-time:   1677795020449912415 (sec:1677795020.4499) delta to HW TX-complete-time sec:0.0001 (65.053 usec)
0x55d7e76a02d0: complete rx idx=1127 addr=99110

Besides, this patchset is tested with iperf3 to check the impact of holding tx completion.
Based on results below, the impact is not observable.

Result of iperf3 without trafgen command in step 4:
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-100.00 sec  27.4 GBytes  2.35 Gbits/sec    0             sender
[  5]   0.00-100.04 sec  27.4 GBytes  2.35 Gbits/sec                  receiver

Result of iperf3 running parallel with trafgen command in step 4:
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-100.00 sec  27.4 GBytes  2.35 Gbits/sec    0             sender
[  5]   0.00-100.04 sec  27.4 GBytes  2.35 Gbits/sec                  receiver

V1: https://patchwork.kernel.org/project/netdevbpf/patch/20231215162158.951925-1-yoong.siang.song@intel.com/
V2: https://patchwork.kernel.org/project/netdevbpf/cover/20240301162348.898619-1-yoong.siang.song@intel.com/

changelog:
V1 -> V2
- In struct igc_tx_timestamp_request, keep a pointer to igc_tx_buffer,
  instead of pointing xsk_pending_ts (Vinicius).
- In struct igc_tx_timestamp_request, introduce buffer_type to indicate
  whether skb or igc_tx_buffer pointer should be use (Vinicius).
- In struct igc_metadata_request, remove igc_adapter pointer (Vinicius).
- When request tx hwts, copy the value of cmd_type, instead of using
  pointer (Vinicius).
- For boolean variable, use true and false, instead of 1 and 0 (Vinicius).
- In igc_xsk_request_timestamp(), make an early return if none of the 4 ts
  registers is available (Vinicius).
- Create helper functions to clear tx buffer and skb for tstamp (John).
- Perform throughput test with mix traffic (Vinicius & John).
V2 -> V3
- Improve tstamp reg searching loop for better readability.
- In igc_ptp_free_tx_buffer(), add comment to inform user that
  tstamp->xsk_tx_buffer and tstamp->skb are in union.

Song Yoong Siang (2):
  selftests/bpf: xdp_hw_metadata reduce sleep interval
  igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet

 drivers/net/ethernet/intel/igc/igc.h          |  71 ++++++-----
 drivers/net/ethernet/intel/igc/igc_main.c     | 113 +++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_ptp.c      |  45 +++++--
 tools/testing/selftests/bpf/xdp_hw_metadata.c |   2 +-
 4 files changed, 190 insertions(+), 41 deletions(-)

-- 
2.34.1

