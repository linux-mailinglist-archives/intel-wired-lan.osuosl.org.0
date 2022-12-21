Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D3653072
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 12:54:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CB3880DCB;
	Wed, 21 Dec 2022 11:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CB3880DCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671623664;
	bh=LO+KouCt22OiGc95nO2R7Ldh+uSYvl/5PE+A5JUjYs0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XLRHYbcwBlZ/QZPMTneFzNST7ZcSBzmb5+Vq613TZDKxfD3UzEIXKqPTcxWnMonXQ
	 pFlZmCGHmVjGuNT9stEx/duQSV+stilgaWOmxdxmtz5fUQ5Rer2C02Y7uYsGBEP+eg
	 S50aftFZE+n6lpqXFGgNFCamSw55odgAE6NRKuqJxQy//VWh0itpmSl8gCWctzCPIH
	 ydMGe6Zx09I4JxC8UzVgIYe8xsWifnDlAZKWMNdOq5wYpnGT4ReaywLzCM/3T0PJ5k
	 Wh8b/wpA92CJlUkKIMdDsBRyyMF5RSfoDmIYJkpyJtdQgYa4Q8EP7Lb6raJTKRtyIc
	 j0rSqVIS2dwUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTv9UnYE8L9K; Wed, 21 Dec 2022 11:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24A7480C57;
	Wed, 21 Dec 2022 11:54:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24A7480C57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AE7A1BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13C6780B68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13C6780B68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rb8wfwxWp8UZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 11:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61A8D80ACE
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61A8D80ACE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321766163"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321766163"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:54:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714799368"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714799368"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 03:54:10 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Dec 2022 12:38:17 +0100
Message-Id: <20221221113822.12858-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671623654; x=1703159654;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PJ2xPl+I3Hbvd+/PM4lb3fv1R6jPltUwBnuwPnxe9I4=;
 b=HlH5SZ/STDrwVTjry1uRBTyZv4stsiRhbK2TAolInDikjorSJnNfWcoN
 s3z+2krff4kf6i0FDCtgaaAlc3yTwsYQGsKPxPnrdokf6yyeuoiopgIwL
 +uqxLPJtoXsBzrWxEXoqk1nyTP7gTClL2JxJHJU7Cx9WePRLO7da5m+vP
 fqnC5+lEml486lOEX+EIzf76R1bZjwhZlwOJNAqCG4xFEskktIkqn6khn
 AfAwYOmY3gorMeoSAd5o3y4nRsNPKsvF8rfOFiMV4hzszWhMVBj7WDAwn
 dedPi0YYNCvTzGbhkPP75NsgdvvxcQMf1fLW0ou1ynSksN4HScxFsqZmm
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HlH5SZ/S
Subject: [Intel-wired-lan] [PATCH net-next v3 05/10] ice: stop hard coding
 the ICE_VSI_CTRL location
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
Cc: mustafa.ismail@intel.com, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

When allocating the ICE_VSI_CTRL, the allocated struct ice_vsi pointer is
stored into the PF's pf->vsi array at a fixed location. This was
historically done on the basis that it could provide an O(1) lookup for the
special control VSI.

Since we store the ctrl_vsi_idx, we already have O(1) lookup regardless of
where in the array we store this VSI.

Simplify the logic in ice_vsi_alloc by using the same method of storing the
control VSI as other types of VSIs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 34 +++++++++++-------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 709e58820937..4751092e02ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -479,10 +479,7 @@ int ice_vsi_free(struct ice_vsi *vsi)
 	/* updates the PF for this cleared VSI */
 
 	pf->vsi[vsi->idx] = NULL;
-	if (vsi->idx < pf->next_vsi && vsi->type != ICE_VSI_CTRL)
-		pf->next_vsi = vsi->idx;
-	if (vsi->idx < pf->next_vsi && vsi->type == ICE_VSI_CTRL && vsi->vf)
-		pf->next_vsi = vsi->idx;
+	pf->next_vsi = vsi->idx;
 
 	ice_vsi_free_stats(vsi);
 	ice_vsi_free_arrays(vsi);
@@ -690,23 +687,22 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
 	vsi->vf = vf;
 	set_bit(ICE_VSI_DOWN, vsi->state);
 
-	if (vsi->type == ICE_VSI_CTRL && !vf) {
-		/* Use the last VSI slot as the index for PF control VSI */
-		vsi->idx = pf->num_alloc_vsi - 1;
-		pf->ctrl_vsi_idx = vsi->idx;
-		pf->vsi[vsi->idx] = vsi;
-	} else {
-		/* fill slot and make note of the index */
-		vsi->idx = pf->next_vsi;
-		pf->vsi[pf->next_vsi] = vsi;
+	/* fill slot and make note of the index */
+	vsi->idx = pf->next_vsi;
+	pf->vsi[pf->next_vsi] = vsi;
 
-		/* prepare pf->next_vsi for next use */
-		pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
-						 pf->next_vsi);
-	}
+	/* prepare pf->next_vsi for next use */
+	pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
+					 pf->next_vsi);
 
-	if (vsi->type == ICE_VSI_CTRL && vf)
-		vf->ctrl_vsi_idx = vsi->idx;
+	if (vsi->type == ICE_VSI_CTRL) {
+		if (vf) {
+			vf->ctrl_vsi_idx = vsi->idx;
+		} else {
+			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
+			pf->ctrl_vsi_idx = vsi->idx;
+		}
+	}
 
 unlock_pf:
 	mutex_unlock(&pf->sw_mutex);
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
