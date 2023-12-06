Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B80A807C67
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 00:37:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 186BA436F6;
	Wed,  6 Dec 2023 23:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 186BA436F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701905863;
	bh=PuQ1osOtyQ2E62VtF1ZQDjnDAKbW8n9+2AYdtXMEeR0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=on5xNzrA8rY3YXDyg0JQyRFd/ltdPhL1wZmZEkGDCdeV9j7vxrfRJLcMXqgCFV3oK
	 ENQ4jxYTfSLzJEdBEdlQNDfGaTtFPZsgQiJFMWecOcsoU9jksJ6AYm0bjV/rgLFWkZ
	 CefhBSDQjYOFAE5CMuupoo8ZzxOhLzqZN4np/6lUIYVrrfmF/36HB1jzts9X7YiC+D
	 H/1OBmms8iS9EysGEYvWqJssZJP9CqqsNBEZti4h/UsRR6mZbIi17ZK+2ZXdMpENIe
	 6ymlgiMshllSWX984mg6zbbKUHId/0NCnGfV770iJs57DTQgZdWnb5cQERzKrvQlm9
	 QfCo69cTImaSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bw3dIyTM4LM7; Wed,  6 Dec 2023 23:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B08F54369A;
	Wed,  6 Dec 2023 23:37:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B08F54369A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77B0B1BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D22C6158B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D22C6158B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RqdNsHOwu1tB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 23:37:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4F0D60AD4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4F0D60AD4
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="379163905"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="379163905"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:37:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="771486523"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="771486523"
Received: from traguzov-mobl4.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.62.75])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:37:26 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Dec 2023 16:36:38 -0700
Message-Id: <20231206233642.447794-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231206233642.447794-1-ahmed.zaki@intel.com>
References: <20231206233642.447794-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701905855; x=1733441855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w7ZpyuIu9iYxAnblOe1SLWqIW8bVsMWkFuYkxIu3SmQ=;
 b=Alr4Ikc10GZp2Iw9Cakgrqs/MBKTr9/cC5mXdba6XyMIsMiGI3fMxkIP
 MPAqFYabKUh8F0sbHRJ6i3kHJQd/kJtl29+yJg461HGVSxMRomKe2bNrP
 FlhHbvFTQlfx/OMJsLvbCjtdNSWeN0l1VLGAKxsEl7U9WL0j2aSZK3JU6
 wp9IJHKa5U/9sYqkIPtFr2xJJqw2P9RFqJ3ckhL9D8PU0Yr4mljgIAs+K
 mzmlcLnzmjEd+TBXcpdeEpANnfisgdPA/GYczcyZqyu3JwduTUVBLe7UD
 nbjezsjpWYP5HXlXbUm8VYVI5X5CGB5ncWMgK9YcVXJdGMU6Gfwwy8K1M
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Alr4Ikc1
Subject: [Intel-wired-lan] [PATCH net-next v8 4/8] ice: fix
 ICE_AQ_VSI_Q_OPT_RSS_* register values
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 vladimir.oltean@nxp.com, gal@nvidia.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 ecree.xilinx@gmail.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the values of the ICE_AQ_VSI_Q_OPT_RSS_* registers. Shifting is
already done when the values are used, no need to double shift. Bug was
not discovered earlier since only ICE_AQ_VSI_Q_OPT_RSS_TPLZ (Zero) is
currently used.

Also, rename ICE_AQ_VSI_Q_OPT_RSS_XXX to ICE_AQ_VSI_Q_OPT_RSS_HASH_XXX
for consistency.

Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_lib.c        |  4 ++--
 drivers/net/ethernet/intel/ice/ice_virtchnl.c   | 12 +++++-------
 3 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index f77a3c70f262..adf7a5c78f85 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -492,10 +492,10 @@ struct ice_aqc_vsi_props {
 #define ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M		(0xF << ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_S)
 #define ICE_AQ_VSI_Q_OPT_RSS_HASH_S		6
 #define ICE_AQ_VSI_Q_OPT_RSS_HASH_M		(0x3 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_TPLZ		(0x0 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_SYM_TPLZ		(0x1 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_XOR		(0x2 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_JHASH		(0x3 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ		0x0U
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ	0x1U
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR		0x2U
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_JHASH		0x3U
 	u8 q_opt_tc;
 #define ICE_AQ_VSI_Q_OPT_TC_OVR_S		0
 #define ICE_AQ_VSI_Q_OPT_TC_OVR_M		(0x1F << ICE_AQ_VSI_Q_OPT_TC_OVR_S)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 626577c7d5b2..bb6151e798e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1191,12 +1191,12 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	case ICE_VSI_PF:
 		/* PF VSI will inherit RSS instance of PF */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
-		hash_type = ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 		break;
 	case ICE_VSI_VF:
 		/* VF VSI will gets a small RSS table which is a VSI LUT type */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 		break;
 	default:
 		dev_dbg(dev, "Unsupported VSI type %s\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index de11b3186bd7..6915a97fd0ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -823,8 +823,8 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		int status;
 
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_XOR :
-				ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR :
+				ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 
 		ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 		if (!ctx) {
@@ -832,11 +832,9 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 			goto error_param;
 		}
 
-		ctx->info.q_opt_rss = ((lut_type <<
-					ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
-				       ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
-				       (hash_type &
-					ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+		ctx->info.q_opt_rss =
+			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
+			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hash_type);
 
 		/* Preserve existing queueing option setting */
 		ctx->info.q_opt_rss |= (vsi->info.q_opt_rss &
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
