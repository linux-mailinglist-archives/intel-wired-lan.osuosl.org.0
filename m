Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F9CA10AC5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 16:28:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9126B810FC;
	Tue, 14 Jan 2025 15:28:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6dqmBk3TgFiD; Tue, 14 Jan 2025 15:28:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82B7580F62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736868522;
	bh=poqwb9cSI+u5QQOqoEZPZd4s0JSri5guqL3mB8C4F2E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jrtN42Bl9Ydlq1roOHmhOSdsSFNFxl/hRNmOIhT+jgrdvReuUSQILb8w6MvsvqbFG
	 PUQFxFYbbTS7gscV71zh9U4WtiSwNaSTggpjT2SNcQTEE8fA6a0AHkuDvM9bKsm6DG
	 3LT6ywoBTkNWWaJ+F143/Z3U7mOVlFiAamGoyvsZwpvuVFNrynGxNrZkfvMXMESCnO
	 XGmXLwN8BKj5MMpBOXhvLfNO/D+ApJECkwUVG85wXFEmUjjwXQTgoQo5enb1wBH32l
	 9AiMQdw/lYBNKHCSe7SnTMa7Id1i8qmJFil3SM8WHs7pVMs22ExufCxg3VCRtxlcvf
	 lx2dicQ4BZ82A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82B7580F62;
	Tue, 14 Jan 2025 15:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AF63B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 15:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 86E7080F62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 15:28:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MT6ilmY24MT9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 15:28:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BFAA580D66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFAA580D66
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFAA580D66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 15:28:38 +0000 (UTC)
X-CSE-ConnectionGUID: Sm0nllt2Tv6AIahNnjFYfg==
X-CSE-MsgGUID: NlFrbswDSBOG1Kj0xGh5RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="37325381"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="37325381"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 07:28:38 -0800
X-CSE-ConnectionGUID: qOQulmMURy6PgoQ3yFx8bA==
X-CSE-MsgGUID: 2sAFkagfRcG+YF1K4XpzPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="142117695"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by orviesa001.jf.intel.com with ESMTP; 14 Jan 2025 07:28:27 -0800
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
Date: Tue, 14 Jan 2025 23:27:17 +0800
Message-Id: <20250114152718.120588-4-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250114152718.120588-1-yoong.siang.song@intel.com>
References: <20250114152718.120588-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736868518; x=1768404518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9+KLegP8sNJx/AWuSh92HNz42/bZNKEkWintQD1cKTY=;
 b=UkpbHQHTEi4JC6URkmk0MHWTLLWkiw9MuafSgwAYE7PEyCdmjschjlCk
 sy8jqpwFdQg9AuoSDaKGNxoTG7zJVRou4rCuBUzt5M/76GZIKXzkhiFsG
 NPhmYKn08PbjG2hQdSxaZtlV0uZrR3tBczvMWFJuTkH36Gq+nDLRiyDLl
 hFdNAhn6DxNyLkWOXZtb0/laHzunbqytEdWLvyUGk5rahKblFCpU4TqPG
 OPgQTfYWIute8hyQ/1HMV/royljJjEK3+1eOnhw7fZfu9TT0ISqyMPLAN
 rT0ylmOmf3OrAg3UPsRrW1xrzbqNMv+Gw1Kfe19T70FGHlu8HURMbuNEU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UkpbHQHT
Subject: [Intel-wired-lan] [PATCH bpf-next v5 3/4] net: stmmac: Add launch
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
1. At DUT, start xdp_hw_metadata selftest application:
   $ sudo ./xdp_hw_metadata enp0s30f4 -l 1000000000 -L 1

2. At Link Partner, send an UDP packet with VLAN priority 1 to port 9091 of
   DUT.

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
index b8d631e559c0..11f7b539c4b5 100644
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
index 70c8f60d34f2..1c08e913f526 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2453,9 +2453,20 @@ static u64 stmmac_xsk_fill_timestamp(void *_priv)
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
@@ -2539,6 +2550,8 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
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

