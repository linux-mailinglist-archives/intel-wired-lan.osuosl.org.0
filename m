Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D7F82F626
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jan 2024 20:52:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8995D42F4E;
	Tue, 16 Jan 2024 19:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8995D42F4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705434772;
	bh=5dhLW8lBTnNsrERbAt7z5/eX79L5GDcetqAi0qLqE8o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qky5DLU+rmbJpJsUKXxTTJzOJ8U6KnfcuJXVbbSTXkaobjb9BFWqIKs33Mduoc9BQ
	 E2suYjw0VxlThUtPd52Lkzh6GTmWmOb79YYmigB0PTcGlR1T2JSaRHVJLqArgyi7fG
	 GVed1Ls3LawoKsrBupoQlbdI3SGZAJasGfEM6zSCQ+t1n+amEl91a4FqzZfIKcA8Kp
	 Q0dpq/NN1SNNHxZZZOH+8Hz5s+SAJ2hWIQIyJW6/t4uW2y7NlsoqdWmVXo6VBgoH7a
	 +qEAg/PDKltmizfo6Upm6rYdMXrVN/SYnrlhfr6KLogR0yKxXwzDu2DgpSL+7lAJum
	 gbbfm3YzDHv+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htrvnhmQhKi7; Tue, 16 Jan 2024 19:52:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F9AB4018F;
	Tue, 16 Jan 2024 19:52:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F9AB4018F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 958B21BF846
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76B7B4018F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:52:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76B7B4018F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ddu5c5TeAaFT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jan 2024 19:52:44 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31D63400C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:52:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31D63400C8
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 685EC612BF;
 Tue, 16 Jan 2024 19:52:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79BF3C433C7;
 Tue, 16 Jan 2024 19:52:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 16 Jan 2024 14:46:40 -0500
Message-ID: <20240116194908.253437-74-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116194908.253437-1-sashal@kernel.org>
References: <20240116194908.253437-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.12
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705434763;
 bh=ui90FwlGfZao1reJhg4CM3xRrOLD+afhMmeA+c7zqC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fV2ex7eTMHiae1V+vJ5pZNQudP42PbLwXmZlEKTbRmr+hUoG+aftm8NC4ShJN3rtm
 axZAJxNs+Tg2fFg7sT/WdJrPjilsUz14BjA3Q6owL4g93Ef01fDtFLtTuRDkPdYQ8T
 gxMNbm9yoR4RAlvBp2JKBn2hHpo2MaZXtkUpr0TTu5uuvbN3iIU4HapzGVgBfgvJ6c
 FOgdoQWFhZlPFfRFdb7NRqM+A6DEtIWHr7LQwuZLgnQQxeVmh+FYvvCooArVQIaK5C
 bu2PEEN7EAiIkpHn7/NgfM10kBfCaLYmtF/h3XcjC0N+lag3LPQttBbnwxw6F46GxM
 3utcp7dz9W9PQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fV2ex7eT
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.6 074/104] ice: fix
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
index 29f7a9852aec..fafe083d1446 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -491,10 +491,10 @@ struct ice_aqc_vsi_props {
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
index a66c3b6ccec1..4e7f67f54f1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1186,12 +1186,12 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
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
index 62337e6569b2..e7ab78bb0f86 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -820,8 +820,8 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		int status;
 
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_XOR :
-				ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR :
+				ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 
 		ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 		if (!ctx) {
@@ -829,11 +829,9 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
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

