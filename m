Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E8DA7EC23
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D363840CA1;
	Mon,  7 Apr 2025 19:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tB7n1lMVk-Oz; Mon,  7 Apr 2025 19:10:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D55540C5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053043;
	bh=lQgxmfLTn5zgFgYMrzK7yl7TBDQ2NyD7kxgZlFDomUo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rz0pFZm5WY8ROYO/OcR5k5h3HxXebGNf1xJxQvmDSSJ7fHNV2/gCxOH1M26SMaWUs
	 oDDjDTND17z3pBpy1QVciYm0uUriGg/iOklQNeiIg938kR3JB/vvyYyH4GxA67QOpf
	 8MtP6soh1rVXqFgjef3TCFaibwTkU/WQoG5opJj/WRqHUfu53EUZwmLhEAAw011O+m
	 FEAtevXAjoLAUX05FZa3zDlhOXdoEJH7MEKP3BsmkhBdNflFku0cyqBBMPe/FwlVf0
	 wK26AwrcWCLBActX8XpuPZm2mU855rSyh4wImEYOZ9p3xeMRX4740J9LbGfOdekZny
	 RrejjE0w3qnNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D55540C5C;
	Mon,  7 Apr 2025 19:10:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F12AB204
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D762840C58
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmpC7T1htYpR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:10:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3526340C99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3526340C99
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3526340C99
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:10:41 +0000 (UTC)
X-CSE-ConnectionGUID: RED2LB5XSSKxyT2+OYjTtw==
X-CSE-MsgGUID: rMwPq0zsQPGrxF1a5dwTJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45550376"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45550376"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:10:41 -0700
X-CSE-ConnectionGUID: KgywRTzOTrS/HkPu9pyftA==
X-CSE-MsgGUID: HnpwelkGRxiVdKPI7liCHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="132177619"
Received: from puneetse-mobl.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:10:34 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com
Date: Mon,  7 Apr 2025 13:10:15 -0600
Message-ID: <20250407191017.944214-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250407191017.944214-1-ahmed.zaki@intel.com>
References: <20250407191017.944214-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053042; x=1775589042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XdPEmCvv5SE6rROCgfMBNV4BB3soaiUGgPzfxL0Jfxc=;
 b=eCxrjmTWRH8JGret3ndR1TxQHk+8DdjeUXvz/K3TIQyOIgMWqkYATcUO
 NSNE/FsUEj9eca9PDsPeTSOM46TV0yb6lKdFIathEFnu9JZZC/2fMv0hj
 DjvNj+Cgc+HnCWLMM8YlraU4UqveWStfepgLHRn/rm2jVCUXRTsYTM/ZN
 oPnR9JT/YGjNnezmeuUkgP11b4K5i9iPFJDSKwlVEvUaUZ0lIR/4aHQjX
 GVziR/i2rkViECnxXexbIjsThRivwAjNlCu1XdMmNLlVRaaullXUcj4Yy
 DfT//5IFMyL9GV30Pms2MFu+ayDZ69relwOnfpvA/I+cnAFoCX+ex7Bby
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eCxrjmTW
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] virtchnl2: rename enum
 virtchnl2_cap_rss
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

The "enum virtchnl2_cap_rss" will be used for negotiating flow
steering capabilities. Instead of adding a new enum, rename
virtchnl2_cap_rss to virtchnl2_flow_types. Also rename the enum's
constants.

Flow steering will use this enum in the next patches.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 20 +++++------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 16 ++++-----
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 34 +++++++++----------
 3 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 5f73a4cf5161..4e1c0b9e0bda 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -610,16 +610,16 @@ bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
 			    enum idpf_cap_field field, u64 flag);
 
 #define IDPF_CAP_RSS (\
-	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
-	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
-	VIRTCHNL2_CAP_RSS_IPV4_UDP	|\
-	VIRTCHNL2_CAP_RSS_IPV4_SCTP	|\
-	VIRTCHNL2_CAP_RSS_IPV4_OTHER	|\
-	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
-	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
-	VIRTCHNL2_CAP_RSS_IPV6_UDP	|\
-	VIRTCHNL2_CAP_RSS_IPV6_SCTP	|\
-	VIRTCHNL2_CAP_RSS_IPV6_OTHER)
+	VIRTCHNL2_FLOW_IPV4_TCP		|\
+	VIRTCHNL2_FLOW_IPV4_TCP		|\
+	VIRTCHNL2_FLOW_IPV4_UDP		|\
+	VIRTCHNL2_FLOW_IPV4_SCTP	|\
+	VIRTCHNL2_FLOW_IPV4_OTHER	|\
+	VIRTCHNL2_FLOW_IPV6_TCP		|\
+	VIRTCHNL2_FLOW_IPV6_TCP		|\
+	VIRTCHNL2_FLOW_IPV6_UDP		|\
+	VIRTCHNL2_FLOW_IPV6_SCTP	|\
+	VIRTCHNL2_FLOW_IPV6_OTHER)
 
 #define IDPF_CAP_RSC (\
 	VIRTCHNL2_CAP_RSC_IPV4_TCP	|\
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3d2413b8684f..895f98304efc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -878,14 +878,14 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 			    VIRTCHNL2_CAP_SEG_TX_SINGLE_TUNNEL);
 
 	caps.rss_caps =
-		cpu_to_le64(VIRTCHNL2_CAP_RSS_IPV4_TCP		|
-			    VIRTCHNL2_CAP_RSS_IPV4_UDP		|
-			    VIRTCHNL2_CAP_RSS_IPV4_SCTP		|
-			    VIRTCHNL2_CAP_RSS_IPV4_OTHER	|
-			    VIRTCHNL2_CAP_RSS_IPV6_TCP		|
-			    VIRTCHNL2_CAP_RSS_IPV6_UDP		|
-			    VIRTCHNL2_CAP_RSS_IPV6_SCTP		|
-			    VIRTCHNL2_CAP_RSS_IPV6_OTHER);
+		cpu_to_le64(VIRTCHNL2_FLOW_IPV4_TCP		|
+			    VIRTCHNL2_FLOW_IPV4_UDP		|
+			    VIRTCHNL2_FLOW_IPV4_SCTP		|
+			    VIRTCHNL2_FLOW_IPV4_OTHER		|
+			    VIRTCHNL2_FLOW_IPV6_TCP		|
+			    VIRTCHNL2_FLOW_IPV6_UDP		|
+			    VIRTCHNL2_FLOW_IPV6_SCTP		|
+			    VIRTCHNL2_FLOW_IPV6_OTHER);
 
 	caps.hsplit_caps =
 		cpu_to_le32(VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4	|
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 63deb120359c..2e692fff0e3a 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -141,22 +141,22 @@ enum virtchnl2_cap_seg {
 	VIRTCHNL2_CAP_SEG_TX_DOUBLE_TUNNEL	= BIT(8),
 };
 
-/* Receive Side Scaling Flow type capability flags */
-enum virtchnl2_cap_rss {
-	VIRTCHNL2_CAP_RSS_IPV4_TCP		= BIT(0),
-	VIRTCHNL2_CAP_RSS_IPV4_UDP		= BIT(1),
-	VIRTCHNL2_CAP_RSS_IPV4_SCTP		= BIT(2),
-	VIRTCHNL2_CAP_RSS_IPV4_OTHER		= BIT(3),
-	VIRTCHNL2_CAP_RSS_IPV6_TCP		= BIT(4),
-	VIRTCHNL2_CAP_RSS_IPV6_UDP		= BIT(5),
-	VIRTCHNL2_CAP_RSS_IPV6_SCTP		= BIT(6),
-	VIRTCHNL2_CAP_RSS_IPV6_OTHER		= BIT(7),
-	VIRTCHNL2_CAP_RSS_IPV4_AH		= BIT(8),
-	VIRTCHNL2_CAP_RSS_IPV4_ESP		= BIT(9),
-	VIRTCHNL2_CAP_RSS_IPV4_AH_ESP		= BIT(10),
-	VIRTCHNL2_CAP_RSS_IPV6_AH		= BIT(11),
-	VIRTCHNL2_CAP_RSS_IPV6_ESP		= BIT(12),
-	VIRTCHNL2_CAP_RSS_IPV6_AH_ESP		= BIT(13),
+/* Receive Side Scaling and Flow Steering Flow type capability flags */
+enum virtchnl2_flow_types {
+	VIRTCHNL2_FLOW_IPV4_TCP		= BIT(0),
+	VIRTCHNL2_FLOW_IPV4_UDP		= BIT(1),
+	VIRTCHNL2_FLOW_IPV4_SCTP	= BIT(2),
+	VIRTCHNL2_FLOW_IPV4_OTHER	= BIT(3),
+	VIRTCHNL2_FLOW_IPV6_TCP		= BIT(4),
+	VIRTCHNL2_FLOW_IPV6_UDP		= BIT(5),
+	VIRTCHNL2_FLOW_IPV6_SCTP	= BIT(6),
+	VIRTCHNL2_FLOW_IPV6_OTHER	= BIT(7),
+	VIRTCHNL2_FLOW_IPV4_AH		= BIT(8),
+	VIRTCHNL2_FLOW_IPV4_ESP		= BIT(9),
+	VIRTCHNL2_FLOW_IPV4_AH_ESP	= BIT(10),
+	VIRTCHNL2_FLOW_IPV6_AH		= BIT(11),
+	VIRTCHNL2_FLOW_IPV6_ESP		= BIT(12),
+	VIRTCHNL2_FLOW_IPV6_AH_ESP	= BIT(13),
 };
 
 /* Header split capability flags */
@@ -448,7 +448,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
  * @seg_caps: See enum virtchnl2_cap_seg.
  * @hsplit_caps: See enum virtchnl2_cap_rx_hsplit_at.
  * @rsc_caps: See enum virtchnl2_cap_rsc.
- * @rss_caps: See enum virtchnl2_cap_rss.
+ * @rss_caps: See enum virtchnl2_flow_types.
  * @other_caps: See enum virtchnl2_cap_other.
  * @mailbox_dyn_ctl: DYN_CTL register offset and vector id for mailbox
  *		     provided by CP.
-- 
2.43.0

