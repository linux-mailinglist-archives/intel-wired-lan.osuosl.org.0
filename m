Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D1CA2A09C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 07:05:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D66DA80DC4;
	Thu,  6 Feb 2025 06:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N3rfvvF2bsgm; Thu,  6 Feb 2025 06:05:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A82E780DE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738821920;
	bh=i+q33tcJRJlk7a4GmJtmTr2mIzkZHDLIvNBSlnnl1ik=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tIGt45MgWUdewoC9C838q8XnWJJXfgrFnFxveEDAwthEO5ObOS7E+0nJfh8AgFJd7
	 4mNgbiLNyEEL0kGS9msIRaH4/TymO9H4gqhCE5n7u3LihXB8AC5iQUMKswtcVNqYiX
	 ybMzFPtiti5ETm0iFqmOemI/A4x/W1cXgkNy5kUpoCeqbysW7pkx7Zn7evOLAindOQ
	 RQfiAEGVnBgf/7pkGzg7cn3jofxyQnqxgYubFH0tMay7KYT8um/PpYDSp2+U8epthi
	 RvZ+4jnjEcTmc9pqp39+LbslVbcjP2/3azmVXmdxGoloNTFn1jOdtdeRq+bnh3YpKL
	 5iMlURBEjS/JQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A82E780DE6;
	Thu,  6 Feb 2025 06:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 618FC12F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 06:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45CC0411F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 06:05:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uv5BO0D66gPv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 06:05:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 02724411D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02724411D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02724411D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 06:05:16 +0000 (UTC)
X-CSE-ConnectionGUID: inM3E87ARpy8r50MDu63Fw==
X-CSE-MsgGUID: QoK6owFFRlmkxvWM7QOaJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50051196"
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="50051196"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 22:05:16 -0800
X-CSE-ConnectionGUID: PVvGlUBRQKWV9apBj3Iv9Q==
X-CSE-MsgGUID: 7AIUXagISJW44G3R9VFWTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="110944383"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa006.fm.intel.com with ESMTP; 05 Feb 2025 22:05:05 -0800
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Bouska Zdenek <zdenek.bouska@siemens.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
Date: Thu,  6 Feb 2025 14:04:08 +0800
Message-Id: <20250206060408.808325-6-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250206060408.808325-1-yoong.siang.song@intel.com>
References: <20250206060408.808325-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738821917; x=1770357917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h5F9ULWX/IazPkL53mq2S83VDIY5FdzebPtuIVDlMQ0=;
 b=Os6S2irbzPParEaNwLJLsy6032jfMuHlXZMtvLurpfX+/PCWnBW3xcPR
 z2NkNfUd+/daPGWE9Scx1gtRnORatxTOaiEy3CDmLGzm0e/FW4cZBgFt+
 nFHYeBMk0BPGBe/ZdS2aXZRsmdVaHPEEQ0WFWLNc4hg919XyVWyHIawzT
 wkwRt/o2a6L8UVc022xqAwI4fNnnKQjuCPDGMsFfqjcbFDxmbLSeM94HG
 Pwh3DirpzkwKXDb/muVFFJsByA24GoI8WegWn/w4HLrPkAj21678dILfR
 G8G2Nhx8V3XcXle6pldIKVX9svpS56cOPSSJUD06iOklJWp8uTxAqiIWt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Os6S2irb
Subject: [Intel-wired-lan] [PATCH bpf-next v9 5/5] igc: Add launch time
 support to XDP ZC
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

Enable Launch Time Control (LTC) support for XDP zero copy via XDP Tx
metadata framework.

This patch has been tested with tools/testing/selftests/bpf/xdp_hw_metadata
on Intel I225-LM Ethernet controller. Below are the test steps and result.

Test 1: Send a single packet with the launch time set to 1 s in the future.

Test steps:
1. On the DUT, start the xdp_hw_metadata selftest application:
   $ sudo ./xdp_hw_metadata enp2s0 -l 1000000000 -L 1

2. On the Link Partner, send a UDP packet with VLAN priority 1 to port 9091
   of the DUT.

Result:
When the launch time is set to 1 s in the future, the delta between the
launch time and the transmit hardware timestamp is 0.016 us, as shown in
printout of the xdp_hw_metadata application below.
  0x562ff5dc8880: rx_desc[4]->addr=84110 addr=84110 comp_addr=84110 EoP
  rx_hash: 0xE343384 with RSS type:0x1
  HW RX-time:   1734578015467548904 (sec:1734578015.4675)
                delta to User RX-time sec:0.0002 (183.103 usec)
  XDP RX-time:   1734578015467651698 (sec:1734578015.4677)
                 delta to User RX-time sec:0.0001 (80.309 usec)
  No rx_vlan_tci or rx_vlan_proto, err=-95
  0x562ff5dc8880: ping-pong with csum=561c (want c7dd)
                  csum_start=34 csum_offset=6
  HW RX-time:   1734578015467548904 (sec:1734578015.4675)
                delta to HW Launch-time sec:1.0000 (1000000.000 usec)
  0x562ff5dc8880: complete tx idx=4 addr=4018
  HW Launch-time:   1734578016467548904 (sec:1734578016.4675)
                    delta to HW TX-complete-time sec:0.0000 (0.016 usec)
  HW TX-complete-time:   1734578016467548920 (sec:1734578016.4675)
                         delta to User TX-complete-time sec:0.0000
                         (32.546 usec)
  XDP RX-time:   1734578015467651698 (sec:1734578015.4677)
                 delta to User TX-complete-time sec:0.9999
                 (999929.768 usec)
  HW RX-time:   1734578015467548904 (sec:1734578015.4675)
                delta to HW TX-complete-time sec:1.0000 (1000000.016 usec)
  0x562ff5dc8880: complete rx idx=132 addr=84110

Test 2: Send 1000 packets with a 10 ms interval and the launch time set to
        500 us in the future.

Test steps:
1. On the DUT, start the xdp_hw_metadata selftest application:
   $ sudo chrt -f 99 ./xdp_hw_metadata enp2s0 -l 500000 -L 1 > \
     /dev/shm/result.log

2. On the Link Partner, send 1000 UDP packets with a 10 ms interval and
   VLAN priority 1 to port 9091 of the DUT.

Result:
When the launch time is set to 500 us in the future, the average delta
between the launch time and the transmit hardware timestamp is 0.016 us,
as shown in the analysis of /dev/shm/result.log below. The XDP launch time
works correctly in sending 1000 packets continuously.
  Min delta: 0.005 us
  Avr delta: 0.016 us
  Max delta: 0.031 us
  Total packets forwarded: 1000

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 57 ++++++++++++++++++++++-
 2 files changed, 56 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b8111ad9a9a8..cd1d7b6c1782 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -579,6 +579,7 @@ struct igc_metadata_request {
 	struct xsk_tx_metadata *meta;
 	struct igc_ring *tx_ring;
 	u32 cmd_type;
+	u16 used_desc;
 };
 
 struct igc_q_vector {
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 3df608601a4b..f239f744247d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2973,9 +2973,44 @@ static u64 igc_xsk_fill_timestamp(void *_priv)
 	return *(u64 *)_priv;
 }
 
+static void igc_xsk_request_launch_time(u64 launch_time, void *_priv)
+{
+	struct igc_metadata_request *meta_req = _priv;
+	struct igc_ring *tx_ring = meta_req->tx_ring;
+	__le32 launch_time_offset;
+	bool insert_empty = false;
+	bool first_flag = false;
+
+	if (!tx_ring->launchtime_enable)
+		return;
+
+	launch_time_offset = igc_tx_launchtime(tx_ring,
+					       ns_to_ktime(launch_time),
+					       &first_flag, &insert_empty);
+	if (insert_empty) {
+		/* Disregard the launch time request if the required empty frame
+		 * fails to be inserted.
+		 */
+		if (igc_insert_empty_frame(tx_ring))
+			return;
+
+		meta_req->tx_buffer =
+			&tx_ring->tx_buffer_info[tx_ring->next_to_use];
+		/* Inserting an empty packet requires two descriptors:
+		 * one data descriptor and one context descriptor.
+		 */
+		meta_req->used_desc += 2;
+	}
+
+	/* Use one context descriptor to specify launch time and first flag. */
+	igc_tx_ctxtdesc(tx_ring, launch_time_offset, first_flag, 0, 0, 0);
+	meta_req->used_desc += 1;
+}
+
 const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops = {
 	.tmo_request_timestamp		= igc_xsk_request_timestamp,
 	.tmo_fill_timestamp		= igc_xsk_fill_timestamp,
+	.tmo_request_launch_time	= igc_xsk_request_launch_time,
 };
 
 static void igc_xdp_xmit_zc(struct igc_ring *ring)
@@ -2998,7 +3033,13 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 	ntu = ring->next_to_use;
 	budget = igc_desc_unused(ring);
 
-	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
+	/* Packets with launch time require one data descriptor and one context
+	 * descriptor. When the launch time falls into the next Qbv cycle, we
+	 * may need to insert an empty packet, which requires two more
+	 * descriptors. Therefore, to be safe, we always ensure we have at least
+	 * 4 descriptors available.
+	 */
+	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget >= 4) {
 		struct igc_metadata_request meta_req;
 		struct xsk_tx_metadata *meta = NULL;
 		struct igc_tx_buffer *bi;
@@ -3019,9 +3060,19 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 		meta_req.tx_ring = ring;
 		meta_req.tx_buffer = bi;
 		meta_req.meta = meta;
+		meta_req.used_desc = 0;
 		xsk_tx_metadata_request(meta, &igc_xsk_tx_metadata_ops,
 					&meta_req);
 
+		/* xsk_tx_metadata_request() may have updated next_to_use */
+		ntu = ring->next_to_use;
+
+		/* xsk_tx_metadata_request() may have updated Tx buffer info */
+		bi = meta_req.tx_buffer;
+
+		/* xsk_tx_metadata_request() may use a few descriptors */
+		budget -= meta_req.used_desc;
+
 		tx_desc = IGC_TX_DESC(ring, ntu);
 		tx_desc->read.cmd_type_len = cpu_to_le32(meta_req.cmd_type);
 		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
@@ -3039,9 +3090,11 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 		ntu++;
 		if (ntu == ring->count)
 			ntu = 0;
+
+		ring->next_to_use = ntu;
+		budget--;
 	}
 
-	ring->next_to_use = ntu;
 	if (tx_desc) {
 		igc_flush_tx_descriptors(ring);
 		xsk_tx_release(pool);
-- 
2.34.1

