Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C72A02745
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 14:57:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93E6780BDA;
	Mon,  6 Jan 2025 13:57:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Go2LF5trfkqY; Mon,  6 Jan 2025 13:57:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB9CB80BE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736171835;
	bh=oOOSCdK8/MdEd5mLIWruc0Y4cjtDY8rdZJwUNZdP9r0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VDTl3jqfWQG1KmiEAwpog4nFdUZtoXwfBqJRaD5F4yXlglCIQ1jTUTfK1+nMafaTh
	 7piUCI8P8BIe1ZpvqCjg+Cnad+T389SDDwJgLAdGisY2021VzvU4Qkn/VigX9e2mvl
	 8q+uRyqwlhKrlNS/g+uq653FyHuyFryqdqrOVfM+aF0/YN9zAukW1+Xo7dKA1x9FEk
	 iMUPHEb5eSKmeeQfmnGKmYwpuhWc3ThYfQfYn7dOcCgT7H3ADR1AxmN08tL2UitK9l
	 HElGnpAZxqrERp2AXJUkQN5T+zRJMN9STiGkuppXti9aLhr0DGxNfPTFo5mQMdhk2k
	 7gyhyowaA36xA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB9CB80BE8;
	Mon,  6 Jan 2025 13:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EEB0DB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3B9E40552
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rYhpgycBGK7L for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 13:57:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8D8040542
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8D8040542
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8D8040542
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:57:11 +0000 (UTC)
X-CSE-ConnectionGUID: waPlRLDWRMWJn/DHGsIqlA==
X-CSE-MsgGUID: O8X0+1NnQp2BcDWd8mJO1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36214390"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36214390"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 05:57:11 -0800
X-CSE-ConnectionGUID: M6+cb+MjRTC9JvS0857Mbg==
X-CSE-MsgGUID: FJybESsMTdaPa83cjklrFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="125728751"
Received: from unknown (HELO P12ILL20yoongsia.png.intel.com) ([10.88.227.38])
 by fmviesa002.fm.intel.com with ESMTP; 06 Jan 2025 05:57:01 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Bjorn Topel <bjorn@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
Date: Mon,  6 Jan 2025 21:56:58 +0800
Message-Id: <20250106135658.9734-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736171832; x=1767707832;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/+i8FYAafrrfqRSuGKBUIfPXgTCEk4S697hIJh7teK4=;
 b=Xhu0nSaYttqpdKP41dGpr2SNGgTw4EohrBrveCRd/jR35PfNyiU5OyDz
 XmNr8yeMk2zt5ICp4MRchrUAK57/Ivl9hrsK6Z5gplo/3FtB5dRsz4wcG
 M2fO0M7mMPe+ksbPQ1uwA6LXAPHw8g4NQ5yBctLds5Elx0L9Z2KuvpSZD
 MqCTQ/NAQ0m1FI9xSUb6zcfjetoTopqUcyZi1oS3IoHu3QTzG3CSgLFyC
 uosneBwxWbJNfUk7hX5Qm1j6xq0CxiR7C6ndaFCwuGsDHVGZT7cR3EGFM
 Qiw+LJdyIH0RrR9nunEBZwqWzuPjVxW10aCzikdnnRFbwZtZK6ggaMKrK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xhu0nSaY
Subject: [Intel-wired-lan] [PATCH bpf-next v4 3/4] net: stmmac: Add launch
 time support to XDP ZC
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

Enable launch time (Time-Based Scheduling) support to XDP zero copy via XDP
Tx metadata framework.

This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata on
Intel Tiger Lake platform. Below are the test steps and result.

Test Steps:
1. Add mqprio qdisc:
   $ sudo tc qdisc add dev enp0s30f4 handle 8001: parent root mqprio num_tc
     4 map 0 1 2 3 3 3 3 3 3 3 3 3 3 3 3 3 queues 1@0 1@1 1@2 1@3 hw 0

2. Enable launch time hardware offload on hardware queue 1:
   $ sudo tc qdisc replace dev enp0s30f4 parent 8001:2 etf offload clockid
     CLOCK_TAI delta 500000

3. Add an ingress qdisc:
   $ sudo tc qdisc add dev enp0s30f4 ingress

4. Add a flower filter to route incoming packet with VLAN priority 1 into
   hardware queue 1:
   $ sudo tc filter add dev enp0s30f4 parent ffff: protocol 802.1Q flower
     vlan_prio 1 hw_tc 1

5. Enable VLAN tag stripping:
   $ sudo ethtool -K enp0s30f4 rxvlan on

6. Start xdp_hw_metadata selftest application:
   $ sudo ./xdp_hw_metadata enp0s30f4 -l 1000000000

7. Send an UDP packet with VLAN priority 1 to port 9091 of DUT.

When launch time is set to 1s in the future, the delta between launch time
and transmit hardware timestamp is equal to 16.963us, as shown in result
below:
  0x55b5864717a8: rx_desc[4]->addr=88100 addr=88100 comp_addr=88100 EoP
  No rx_hash, err=-95
  HW RX-time:   1734579065767717328 (sec:1734579065.7677) delta to User RX-time sec:0.0004 (375.624 usec)
  XDP RX-time:   1734579065768004454 (sec:1734579065.7680) delta to User RX-time sec:0.0001 (88.498 usec)
  No rx_vlan_tci or rx_vlan_proto, err=-95
  0x55b5864717a8: ping-pong with csum=5619 (want 0000) csum_start=34 csum_offset=6
  HW RX-time:   1734579065767717328 (sec:1734579065.7677) delta to HW Launch-time sec:1.0000 (1000000.000 usec)
  0x55b5864717a8: complete tx idx=4 addr=4018
  HW Launch-time:   1734579066767717328 (sec:1734579066.7677) delta to HW TX-complete-time sec:0.0000 (16.963 usec)
  HW TX-complete-time:   1734579066767734291 (sec:1734579066.7677) delta to User TX-complete-time sec:0.0001 (130.408 usec)
  XDP RX-time:   1734579065768004454 (sec:1734579065.7680) delta to User TX-complete-time sec:0.9999 (999860.245 usec)
  HW RX-time:   1734579065767717328 (sec:1734579065.7677) delta to HW TX-complete-time sec:1.0000 (1000016.963 usec)
  0x55b5864717a8: complete rx idx=132 addr=88100

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac.h      |  2 ++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 13 +++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index 1d86439b8a14..c80462d42989 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -106,6 +106,8 @@ struct stmmac_metadata_request {
 	struct stmmac_priv *priv;
 	struct dma_desc *tx_desc;
 	bool *set_ic;
+	struct dma_edesc *edesc;
+	int tbs;
 };
 
 struct stmmac_xsk_tx_complete {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index c81ea8cdfe6e..3a083e3684ed 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2445,9 +2445,20 @@ static u64 stmmac_xsk_fill_timestamp(void *_priv)
 	return 0;
 }
 
+static void stmmac_xsk_request_launch_time(u64 launch_time, void *_priv)
+{
+	struct stmmac_metadata_request *meta_req = _priv;
+	struct timespec64 ts = ns_to_timespec64(launch_time);
+
+	if (meta_req->tbs & STMMAC_TBS_EN)
+		stmmac_set_desc_tbs(meta_req->priv, meta_req->edesc, ts.tv_sec,
+				    ts.tv_nsec);
+}
+
 static const struct xsk_tx_metadata_ops stmmac_xsk_tx_metadata_ops = {
 	.tmo_request_timestamp		= stmmac_xsk_request_timestamp,
 	.tmo_fill_timestamp		= stmmac_xsk_fill_timestamp,
+	.tmo_request_launch_time	= stmmac_xsk_request_launch_time,
 };
 
 static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
@@ -2531,6 +2542,8 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
 		meta_req.priv = priv;
 		meta_req.tx_desc = tx_desc;
 		meta_req.set_ic = &set_ic;
+		meta_req.tbs = tx_q->tbs;
+		meta_req.edesc = &tx_q->dma_entx[entry];
 		xsk_tx_metadata_request(meta, &stmmac_xsk_tx_metadata_ops,
 					&meta_req);
 		if (set_ic) {
-- 
2.34.1

