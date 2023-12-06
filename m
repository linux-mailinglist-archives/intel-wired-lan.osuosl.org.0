Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4748063E3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:02:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A55561429;
	Wed,  6 Dec 2023 01:02:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A55561429
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824540;
	bh=Od+CARu8VA2J8oqYFTJZHHbX5QlKzUigRAR00cQ3c18=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=28U/mSR12lqhTRBxRr7n+wUC1cfHyrum0zNKCwzRraSh482LrQDxsduHpkrMkXWUn
	 caAOUe4gVHTI7Ou9VbLwQ3mN9Wvf+T7DZnhZ7xvsZRp8Hktz1teTWRUARKccvtLsUr
	 oECSrKAGnM0CGflNab+aGo/oUwWmD5TxoSafGOm88neF7Jlgh/JRWYhnPVmCfifhz+
	 BIvOGq75g186BbLyjwCmHttowihTHd8MMzU04PScicsw1ouQZaNc5K0cLSfvJA621P
	 0yyqNRs4F9skbYJ+7/CXak3Uzw6u/yNX6ByLLK5eX3hVfcR421cIktPXKLelt9vwjb
	 AwIS0QjIpo/og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSJ7RLW2vcbA; Wed,  6 Dec 2023 01:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7FC061412;
	Wed,  6 Dec 2023 01:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7FC061412
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 815911BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74D7741721
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74D7741721
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CnhojG6TKHs6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D94041926
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D94041926
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700290"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700290"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655248"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655248"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:32 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:04 -0800
Message-Id: <20231206010114.2259388-6-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824495; x=1733360495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EXpQwc8v10if+MqhxX2w/xCKwjG7qVilqA6UyrO1aNQ=;
 b=GHf3s6zLVIZ2DBZXwlt/RjZyUnrRci/kRTVd7+uNQ3ChRp6BFBU50f3Q
 8RSR1910dEb71xzG8ufsr76/Zx+W4RfqneiHdn7hlvHNPWJdFEUflpykD
 hjvq6f89pr/cK8S3k9LRlAdWvjJCU5/Wp1YpjoOHSCacuGyD+Ts8DYgli
 QR6MIrZuIvXydTfVha55MJBqGy+e6BMmFZhSfdHFKs8JrigR/ivQ11SLu
 cBttSpGe8PiA8b1YauSLsaMK+3RlezwDyf7UCBAH8eMQnX9kyigNSns7y
 0czlNryMgl003+RHCXEsTWLZ7col8wm5X94Oq8BiUinleKlqMPSS9EN0f
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GHf3s6zL
Subject: [Intel-wired-lan] [PATCH iwl-next v2 05/15] iavf: field prep
 conversion
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com, horms@kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor iavf driver to use FIELD_PREP(), which reduces lines of code
and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired.

Clean up a couple spots in the code that had repetitive
y = cpu_to_*((blah << blah_blah) & blat)
y |= cpu_to_*((blahs << blahs_blahs) & blats)
to
x = FIELD_PREP(blat blah)
x |= FIELD_PREP(blats, blahs)
y = cpu_to_*(x);

@prep2@
constant shift,mask;
type T;
expression a;
@@
-(((T)(a) << shift) & mask)
+FIELD_PREP(mask, a)

@prep@
constant shift,mask;
type T;
expression a;
@@
-((T)((a) << shift) & mask)
+FIELD_PREP(mask, a)

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Cc: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: updated commit message
---
 drivers/net/ethernet/intel/iavf/iavf_common.c | 31 ++++++++-----------
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   |  2 +-
 2 files changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index af5cc69f26e3..5a25233a89d5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -331,6 +331,7 @@ static enum iavf_status iavf_aq_get_set_rss_lut(struct iavf_hw *hw,
 	struct iavf_aq_desc desc;
 	struct iavf_aqc_get_set_rss_lut *cmd_resp =
 		   (struct iavf_aqc_get_set_rss_lut *)&desc.params.raw;
+	u16 flags;
 
 	if (set)
 		iavf_fill_default_direct_cmd_desc(&desc,
@@ -343,22 +344,18 @@ static enum iavf_status iavf_aq_get_set_rss_lut(struct iavf_hw *hw,
 	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_BUF);
 	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_RD);
 
-	cmd_resp->vsi_id =
-			cpu_to_le16((u16)((vsi_id <<
-					  IAVF_AQC_SET_RSS_LUT_VSI_ID_SHIFT) &
-					  IAVF_AQC_SET_RSS_LUT_VSI_ID_MASK));
-	cmd_resp->vsi_id |= cpu_to_le16((u16)IAVF_AQC_SET_RSS_LUT_VSI_VALID);
+	vsi_id = FIELD_PREP(IAVF_AQC_SET_RSS_LUT_VSI_ID_MASK, vsi_id) |
+		 FIELD_PREP(IAVF_AQC_SET_RSS_LUT_VSI_VALID, 1);
+	cmd_resp->vsi_id = cpu_to_le16(vsi_id);
 
 	if (pf_lut)
-		cmd_resp->flags |= cpu_to_le16((u16)
-					((IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_PF <<
-					IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
-					IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));
+		flags = FIELD_PREP(IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_MASK,
+				   IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_PF);
 	else
-		cmd_resp->flags |= cpu_to_le16((u16)
-					((IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_VSI <<
-					IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
-					IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));
+		flags = FIELD_PREP(IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_MASK,
+				   IAVF_AQC_SET_RSS_LUT_TABLE_TYPE_VSI);
+
+	cmd_resp->flags = cpu_to_le16(flags);
 
 	status = iavf_asq_send_command(hw, &desc, lut, lut_size, NULL);
 
@@ -412,11 +409,9 @@ iavf_status iavf_aq_get_set_rss_key(struct iavf_hw *hw, u16 vsi_id,
 	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_BUF);
 	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_RD);
 
-	cmd_resp->vsi_id =
-			cpu_to_le16((u16)((vsi_id <<
-					  IAVF_AQC_SET_RSS_KEY_VSI_ID_SHIFT) &
-					  IAVF_AQC_SET_RSS_KEY_VSI_ID_MASK));
-	cmd_resp->vsi_id |= cpu_to_le16((u16)IAVF_AQC_SET_RSS_KEY_VSI_VALID);
+	vsi_id = FIELD_PREP(IAVF_AQC_SET_RSS_KEY_VSI_ID_MASK, vsi_id) |
+		 FIELD_PREP(IAVF_AQC_SET_RSS_KEY_VSI_VALID, 1);
+	cmd_resp->vsi_id = cpu_to_le16(vsi_id);
 
 	status = iavf_asq_send_command(hw, &desc, key, key_size, NULL);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 65ddcd81c993..2d47b0b4640e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -358,7 +358,7 @@ iavf_fill_fdir_ip6_hdr(struct iavf_fdir_fltr *fltr,
 
 	if (fltr->ip_mask.tclass == U8_MAX) {
 		iph->priority = (fltr->ip_data.tclass >> 4) & 0xF;
-		iph->flow_lbl[0] = (fltr->ip_data.tclass << 4) & 0xF0;
+		iph->flow_lbl[0] = FIELD_PREP(0xF0, fltr->ip_data.tclass);
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, TC);
 	}
 
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
