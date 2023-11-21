Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8787F3808
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:19:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9861F80C4B;
	Tue, 21 Nov 2023 21:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9861F80C4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601592;
	bh=kgEUKvuuz3kmdcg3/E9RBSmRza8mAk7XAA/PctrPwh0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JnITNjc9qaX+YhEPr4KD6FRoUVi8ffL7r5oPVuZnA5f7fzESHi6ydPYQxD3mP9fvM
	 k53gfTjP1lwEVSa99iLjyOIiykirxyw/HrMyHcNAtbVPzXgKkxK4GwkfLtmGi7vQ4G
	 1rAEM7YQTQD0gVJGizW1R7kYeYZZeBBGQvgdZ55cF84Fn6+O9STTukG5ev4kqxAVX6
	 Ce0UhxYho8BI1OUEHAqPrdADiz6a7EGk+mWusvlKgUh5orZpPdWsNyUK+MxGVRcZ9J
	 JAPPcHkZdrS3hjMABgAhEMHbysvqIpIqysdVDcTpuiycGM6/0ZLKLhodBtCvwtRGwH
	 +Pxnx/6PwsXrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NhwlEUmwkQ5R; Tue, 21 Nov 2023 21:19:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7250E80AB5;
	Tue, 21 Nov 2023 21:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7250E80AB5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73EAA1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B9BD41061
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B9BD41061
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id crVpM2lscn6A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92ED140898
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92ED140898
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022086"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022086"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630544"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630544"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:13 -0800
Message-Id: <20231121211921.19834-6-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601581; x=1732137581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0hiCVPop7SNcfe8qEbvKePm8RzXcJESl/tM9Aw6q9HA=;
 b=exZTa+jZ+QjgisF2HmPQhkDIOE8DfhD0Mk97cFqyDa9QZnFXpNhqB0j1
 +Bl5YFTVEO9tNlIyKki6jR1AfEnIqExvZlZ003HDfx7+HDSli5GHyUmRJ
 kk1neR0GXPUnptvVJRQMuN+BFww70r1q+9YHfYCwXc7Jc3q1ImLyZzfgU
 AMa8/kDdq4WrUH94+x4JspP4ay55RgfyA8p647BwZoMvT0R7L2bX5Jz9N
 B/q181IOLlIjJy54iNiMgTPuM6IMX5nbES86NrWG3x51WzIFMA3LLLf7C
 M0/V3gXRgJh01RKPZyXp28pvkMLKA7ukLXOj9Hu3hk7v3obvNI1FDgYSo
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=exZTa+jZ
Subject: [Intel-wired-lan] [PATCH iwl-next v1 05/13] iavf: field prep
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>
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

@prep@
constant shift,mask;
expression a;
@@
-((a << shift) & mask)
+FIELD_PREP(mask, a)

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Cc: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
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
