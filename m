Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 771C0649DE7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 12:33:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05C83813C3;
	Mon, 12 Dec 2022 11:33:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05C83813C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670844798;
	bh=VTCmc7VKzsJMv/x77WqvtwyKJLmKZ9kVfvzDFYxzh4s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FjIUujNfMvom2vWQYgxDqmjrkZq07/H4EtXKEpiyCQuviNVWPzLGD9Qr/U2npubeL
	 XIDQIBqiTnDejys0JmFlnESm1CNq9tk3CN5aGiqSiLi68FZ6sdAyg9C5lPWQsiGIHO
	 dFtllAFGNGhyG7r9CcBxpN5kbMzOztdivVAq9EJjcSp5aV5D97u7ajdoie6OViDkm8
	 opppMkc35xgzzP1Kw936G6vgirnTxagbPM5vAXugKefuFC+mNneP3ZZyqjXL/vew15
	 DfOB0dAvx6WHnAetucnBPR7akuycKGYV5+5RTrjJVVkK9QFCjU6l2v87mOYa/6S0Zm
	 0pg42Rl4fNUFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hg7Aqxu_IJUj; Mon, 12 Dec 2022 11:33:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4BAF813B9;
	Mon, 12 Dec 2022 11:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4BAF813B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B55D51BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DDB9813B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DDB9813B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbFgjj_0RiNz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0A5681353
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0A5681353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317861486"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317861486"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:33:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="893459764"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="893459764"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2022 03:33:03 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 12:16:40 +0100
Message-Id: <20221212111645.1198680-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844788; x=1702380788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=blZt6kNB7h+IVWZ2yD3/Bndv24v3tOAAvbW91M+5zkg=;
 b=ljQ7M9DxjNxqKXvO0aDzBSriGIHZO+HB2RjMLwpTgV8HcK7h5Roo6n2+
 8i02Zr3sV0bftsnnYdZu2jWmYN8HWVn1rNBaSj4RqdUWsJCCG+/ySnU30
 2BHO19c0O+rgHMlE08UwuDhQjUEmE36Pj31L8OQX2bPPxEpaSV91IHw96
 YwOVLvW/WgFFiK4T4LgAlK3AZ7UgnoPS4O5uF80Tl0j7ALTUJnLK+ykLg
 meubHSrNotSIe96uvWyAwBu3qVuVfrKJHTtPBlrw82inYSfTCM3YF++KQ
 bEN5XX7k4+HAG6s7zANfb0/H/Q+fG6QtYEwYNrXiU2eOOWioE6tmVRmKZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ljQ7M9Dx
Subject: [Intel-wired-lan] [PATCH net-next v1 05/10] ice: stop hard coding
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com, kuba@kernel.org,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
index 9549290c76ab..eba990120a06 100644
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
@@ -686,23 +683,22 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
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
