Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D24DA99874
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 21:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 353148135A;
	Wed, 23 Apr 2025 19:27:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VEJH73AnqWJP; Wed, 23 Apr 2025 19:27:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EA11813EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745436447;
	bh=1euecof8R5lz43KUWVZ9ar7QETcuhdmpOGI53THR7Vs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t6T0ur1KZDefD1pwS6yg9rhSdgZt1DKJ/KPx1aX7exIgojw2LApSO+oUBDfhyDhI1
	 jK0Xs6eUR76Lj8tjKM4eY61Z2ghFPWjkPviE6RZaTZXc6G49W7MbB1CNv681GCqK9t
	 MdQXUOIouhVHEyuALum9YsxBBXwBjXaWZgnT00XQKW2fJ/tYRI5RL2k1XQE6Qn3DGa
	 CGAR81AuUHuKbQHPqCsk3lpvlhYOfGzwzahJqvUOGfAphku15i+sAAT7IrQg5tMWEG
	 rXFx0FRGue5yPLk1ijrUHqGlug/ZOD9EQjunkodZuQNDN20PNQ+HDokJH/l3JVz0QB
	 xBVm1OHNIm3kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EA11813EA;
	Wed, 23 Apr 2025 19:27:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C635F19F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 19:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC409403F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 19:27:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GFL8IyaZjZa3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 19:27:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07A8540436
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07A8540436
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07A8540436
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 19:27:24 +0000 (UTC)
X-CSE-ConnectionGUID: rl6Fa4edTymB8chyeFMuiA==
X-CSE-MsgGUID: A3RxucBnQMS3s1O6UD+vcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="47176408"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47176408"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 12:27:25 -0700
X-CSE-ConnectionGUID: PKRT1r65TdOKVDArMP/8xg==
X-CSE-MsgGUID: OS2im9iBSui/neRWUUjQZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163442521"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.47])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 12:27:18 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com, pmenzel@molgen.mpg.de
Date: Wed, 23 Apr 2025 13:27:03 -0600
Message-ID: <20250423192705.1648119-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423192705.1648119-1-ahmed.zaki@intel.com>
References: <20250423192705.1648119-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745436445; x=1776972445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GEcShooZ59WTGpvzIKKWGhzv3gV5R0EJBdI0OFUPXt0=;
 b=L0ODsiLuZgBJtMSCvIGOq4qYzSLRjw+RUr2FRFSze/7S3pzqDhJlMH3U
 GAlG6RnbGi+RJjvz/CYKSx2RWcpVd5Q0ZSoghTtisPrHvdEVLlqMOPG0v
 dCO0D2Bky9IZe6rjsfdiPCMeSTTU3wiYRPBzBhsCd05k5i5WrGfn/89LK
 OSBIF9PVFvtPTFZoUEfBROUKKF+Rv7P6Q4XC4miCorp/RaOaBu2cUXvJk
 WipU7s61HnwKDg2n4ZTQ43Pf8c6PFJNL8q2b+esbpWtmWYTyA8sUdEd6Y
 1r60zyjK5UuOUanePh3+tgxpkVR9xE5YfLv/UPAOvRfozYU27FvQfyH0e
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L0ODsiLu
Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/3] virtchnl2: rename enum
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
index 294f4b7032a1..c21903310354 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -647,16 +647,16 @@ bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
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
index f1f6b63bfeb0..06c33b638e60 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -849,14 +849,14 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
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
index 11b8f6f05799..1094b3989bf0 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -151,22 +151,22 @@ enum virtchnl2_cap_seg {
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
@@ -458,7 +458,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
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

