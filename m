Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 614FDA832DD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 22:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15A7C41417;
	Wed,  9 Apr 2025 20:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id epOoO0dqMRrC; Wed,  9 Apr 2025 20:57:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 485A741307
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744232236;
	bh=lQgxmfLTn5zgFgYMrzK7yl7TBDQ2NyD7kxgZlFDomUo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EJnBKshAFeTG6odoeKkdEeeKzVjyeQsPSxJE/yuiYKrf6CC2WZYEUJ6CSZKjHKGuB
	 hBtBYY1KT0QXW8I0YQ60ZjOEDDFRLjPjA+XDWdE27J432Vnjrlqki2Qd8XNVy2bkih
	 rOD7Kua5H2j4siQlq5yEqWc2ZbocS3SxWGHbWJHccjIV8M3CqKrIr8uYXw7QUm7/35
	 xPEA7MChEYcMi+LyaXRLVNioBmjt2yLI+wmkWo1YRuhD8oZlyd1EFh2pbtKb5mLALU
	 5A0u44HMve2u8x1uHYLN+UB72XuCY2o2qmyqVJydADiB6sB9zeJaAs9zMugMh8iJWl
	 xhc6GWcHC2Efw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 485A741307;
	Wed,  9 Apr 2025 20:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C622201
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 20:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E01660767
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 20:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 96rztQACZzOs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 20:57:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 924D160593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924D160593
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 924D160593
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 20:57:13 +0000 (UTC)
X-CSE-ConnectionGUID: M4QCvCerTeyXzOVl9Ysjsw==
X-CSE-MsgGUID: abaHPYNeQT285c6max1/wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="56711263"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="56711263"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 13:57:14 -0700
X-CSE-ConnectionGUID: uahRu15FQ1qdP9Zg70cVRA==
X-CSE-MsgGUID: TJ86w9H+TB6TdVmI8NK1lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133422974"
Received: from kcaccard-desk.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.223])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 13:57:08 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com
Date: Wed,  9 Apr 2025 14:56:53 -0600
Message-ID: <20250409205655.1039865-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250409205655.1039865-1-ahmed.zaki@intel.com>
References: <20250409205655.1039865-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744232234; x=1775768234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XdPEmCvv5SE6rROCgfMBNV4BB3soaiUGgPzfxL0Jfxc=;
 b=SLKXVbY9qxs9R8xKjY/dbUXCgrBslCiDX3wQ7Wm557M5Ni0HZaFYRKat
 bxUWpN5pNbn39fcja5ofaIZJoNczwuTCof7Y1F30Q6dY2VTAzY7l7SJTV
 UfWA2V+h4lpbaoA33xIH+kJKAC/6EKu7gbnzgFxNolRM/5mbOARiRSLvy
 eNK4Mf2SYnbqWS50cTPaQZEpHm687va9zv5BW4eNQirBgQT1EzX/hfu9W
 YH4bzbveNd+rL6DGtTpQ6Jn64/dKN4nPfJGoYRq3GIwilbH4D6a8e+Mcf
 gHFOECVcPJWweNr4D20PM7Exh7r7DpvVsMCIuYQfh4Ir6AF9jKwt9XgId
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SLKXVbY9
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/3] virtchnl2: rename enum
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

