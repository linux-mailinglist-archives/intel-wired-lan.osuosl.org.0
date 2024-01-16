Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8F682F655
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jan 2024 20:57:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDD4140640;
	Tue, 16 Jan 2024 19:57:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDD4140640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705435029;
	bh=FuSTX2i+/5SFf6SvEJeM7gNXcGcM1X9chV20cQQIJpU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s2btkMni+xLvEiXio5aDlOkMS2RWVeV7fQBslzNk2qc5yUyOo4kd8nCjUK0Sfi2D0
	 YC9pgXoyc0Kl67Gb9cvhv2I8UN6vMbVwTC9dcN84sWMRSdxayduzpTHGweJDuxfPFx
	 dQyN9cJoHr8cb3C9dtiS/HLQd1e7ZqRFGpjkpIvQc3DLL4KxgtdQUTc6Jm1I3bQ4N7
	 cURLqtemWTjODAKXkAXBgbEubhbLhFvP05rG5yS7Odl6NWRb1WYYC0NP18dUAZjyLm
	 PEBIki+4qLP6UdRJmkOnUE/jUpGwcFzJio8LzGOoMftKmu9b95Xyij6JLyqqFI9JOZ
	 vcgWwq/juKdHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykuAkvR5WG7Z; Tue, 16 Jan 2024 19:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16B8B400A6;
	Tue, 16 Jan 2024 19:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16B8B400A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52F701BF846
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2961460D6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2961460D6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TaGkoTTK-PDZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jan 2024 19:57:02 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DD3760B00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:57:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DD3760B00
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 72C356121A;
 Tue, 16 Jan 2024 19:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBF2DC433C7;
 Tue, 16 Jan 2024 19:56:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 16 Jan 2024 14:53:45 -0500
Message-ID: <20240116195511.255854-46-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116195511.255854-1-sashal@kernel.org>
References: <20240116195511.255854-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.73
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705435021;
 bh=nZNveC+6JlLds+sJk1pTx4Lsnovcs7zNLmLzEKnsqZk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ikalkGAqf04wv5nPLWkuO/GVRJyYxkQHUU84gko00Ioegk6Gqt62GXRGmovT+ne5b
 Cp61QNUkz85owS+sP/cXRPYbx04wkJ7GB3MeBued33yl151xCzXlAKhXH+9ndxhlNY
 Q+KmyHHJXi2nemSmACw+MZ8KdsUmOUFXYscX9J81aAV+OKk6H3Pc1mqP2fpUV25ceR
 n87K1OYHNdBG+6cuaVRFtsqv0b6SDYytzobCkaV2iM+1f2K4Ej2YKm5r0E52/qOERQ
 u2Paunk0wV0+73QIt+p0JauzYrNMAguSOmbaqNsqyvOidK5QBx92vcR4QDeHZAI4by
 u499GfPByA+gA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ikalkGAq
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.1 46/68] ice: fix
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
Cc: Sasha Levin <sashal@kernel.org>,
 Wojciech Drewek <wojciech.drewek@intel.com>, intel-wired-lan@lists.osuosl.org,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ahmed Zaki <ahmed.zaki@intel.com>

[ Upstream commit 20f73b60bb5c276cee9b1a530f100c677bc74af8 ]

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
Link: https://lore.kernel.org/r/20231213003321.605376-5-ahmed.zaki@intel.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_lib.c        |  4 ++--
 drivers/net/ethernet/intel/ice/ice_virtchnl.c   | 12 +++++-------
 3 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 1bdc70aa979d..a141680f3c1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -483,10 +483,10 @@ struct ice_aqc_vsi_props {
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
index c051503c3a89..f074a1cf7166 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1085,12 +1085,12 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
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
index 2b4c791b6cba..6c03ebf81ffd 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -817,8 +817,8 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		int status;
 
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_XOR :
-				ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR :
+				ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 
 		ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 		if (!ctx) {
@@ -826,11 +826,9 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
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
2.43.0

