Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCCCA4FF5A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 14:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55F4940DB7;
	Wed,  5 Mar 2025 13:01:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4H-pBkf19zr0; Wed,  5 Mar 2025 13:01:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79DFB40D57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741179708;
	bh=Nns2pb75X82OiRUnuI2QHZ6PcDEQCoIyJJLFfE3oNG0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dvsyGkLmZR/pbwsyuZl56N+yAI/ZXFPnhUJJ8lqRgnfJS2+EB7ULGLoAmGOE39o2Y
	 HSRxT4iH+EHphJIPKLbZisE1NWgWhO1CNJtU2IERJqCvHJJ2WYFbKddT5ZUSMsla35
	 XdDecKoBeLclSE5PWb/BKnTgfTpD50EJsqA47p9ylnoT8QUliO5f3Bmt0RXqrvZYky
	 JtLpiGOPnflzPXSxFDwjlmJnFIIroysyYpEVhdrOdAnKX2kl0uffTxfAx7rE7dp4uA
	 y0Gi5DrA7KWGwQB2TTViXlQb5/+C7mza/RoneZNlIR9FXiUaqp6FFGB701NTxLsO+H
	 086DFF6fnLVPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79DFB40D57;
	Wed,  5 Mar 2025 13:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 81B35194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65BF281E4F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 00cBlwcAs_um for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 13:01:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A9E3C8330B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9E3C8330B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9E3C8330B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:01:45 +0000 (UTC)
X-CSE-ConnectionGUID: pwn8/IH2RZ2Wa/J5EeHvkQ==
X-CSE-MsgGUID: kRGCbadjT6mO5SDthwbmVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45795046"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="45795046"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:01:45 -0800
X-CSE-ConnectionGUID: xQgVjQU7RRCRvWCDSeerzQ==
X-CSE-MsgGUID: TF0vvx1aSsaNv7LIwQ9VCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123277066"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa005.fm.intel.com with ESMTP; 05 Mar 2025 05:01:38 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Wed,  5 Mar 2025 08:00:21 -0500
Message-Id: <20250305130026.642219-7-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
References: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741179706; x=1772715706;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2Msp7YoBmanu425m0MXmljH1/c1Or8M2lkzZSA8x+50=;
 b=dgVm38BvQzllclLMYfQ9tG+6JkeVvxdDZxCn8ls/KWnoNQLEQii7sRDo
 G3QFZr4mY9LC+KcIh5RmzLJVB/Pb8zM5IWZe3TPD5+TrcHOcn+PFAEJ2s
 FFJHLGAb9Kyf5MyCulo6Kg4ub/Uvey6LbzddbWsEpbxf+8kNdDWPqlYwq
 Ml3e1PAXS1mFIic5Lu76PsfNqnlW3hdoxBEJIEjkJg2QRdsMb4Zahj2KI
 OnzXHAhAS8CqPjxLWBnm6cPzecAGgyhbOsj5plcBoe5SQbZKayPzH4dYg
 BxdSVeldo0lG5oAtmCTQvalX8hp+YfSQ3/xSoY/XPD0RUnhX9zvUuaco+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dgVm38Bv
Subject: [Intel-wired-lan] [PATCH iwl-next v8 06/11] igc: set the RX packet
 buffer size for TSN mode
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

In preparation for supporting frame preemption, when entering TSN mode
set the receive packet buffer to 16KB for the Express MAC, 16KB for
the Preemptible MAC and 2KB for the BMC, according to the datasheet
section 7.1.3.2.

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  3 +++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 13 +++++++++++--
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 516ef70c98e9..b19ac6f30dac 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -402,6 +402,9 @@
 
  /* 7KB bytes buffer for each tx queue (total 4 queues) + 4KB for BMC*/
 #define IGC_TXPBSIZE_TSN	0x041c71c7
+/* 15KB for EXP + 15KB for BE + 2KB for BMC */
+#define IGC_RXPBSIZE_TSN	0x0000f08f
+#define IGC_RXPBSIZE_SIZE_MASK	0x0001FFFF
 
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 1e44374ca1ff..f0213cfce07d 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -132,13 +132,17 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 {
 	u16 queue_per_tc[4] = { 3, 2, 1, 0 };
 	struct igc_hw *hw = &adapter->hw;
-	u32 tqavctrl;
+	u32 tqavctrl, rxpbs;
 	int i;
 
 	wr32(IGC_GTXOFFSET, 0);
 	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
 
+	rxpbs = rd32(IGC_RXPBS) & ~IGC_RXPBSIZE_SIZE_MASK;
+	rxpbs |= I225_RXPBSIZE_DEFAULT;
+	wr32(IGC_RXPBS, rxpbs);
+
 	if (igc_is_device_id_i226(hw))
 		igc_tsn_restore_retx_default(adapter);
 
@@ -194,7 +198,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 tqavctrl, baset_l, baset_h;
-	u32 sec, nsec, cycle;
+	u32 sec, nsec, cycle, rxpbs;
 	ktime_t base_time, systim;
 	int i;
 
@@ -202,6 +206,11 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
 
+	rxpbs = rd32(IGC_RXPBS) & ~IGC_RXPBSIZE_SIZE_MASK;
+	rxpbs |= IGC_RXPBSIZE_TSN;
+
+	wr32(IGC_RXPBS, rxpbs);
+
 	if (igc_is_device_id_i226(hw))
 		igc_tsn_set_retx_qbvfullthreshold(adapter);
 
-- 
2.34.1

