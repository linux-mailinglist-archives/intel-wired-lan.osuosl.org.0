Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 959837D4EEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 225AF4EC10;
	Tue, 24 Oct 2023 11:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 225AF4EC10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147330;
	bh=rNN1z7nx5id1RYo/ITY68Z27WOw+RxiJCOGVG4Z++Ts=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h7e3pQGC4eNHWDAfFZDnSpU6nj+1a26tC41+ZaCg2VaO2pCZZ80PJL/5QSR1m1xWc
	 RaRlKh9tYZ38l2qtdSAdwkHePskN53W9NdpXCyJ5J3dV7zZAEii7jg4BGLcopJuBRC
	 5qwg4hjFVT8E+MRRpGDIyKfL/yPy+LsZshEZ+oh0SPibxalY/4itqHVSDPEiUEaCvG
	 3WckFn4X9Te3+B+wZGxVlP578ExK6JkHvDbHFAJoXe/HSCrTUfxPtPVXgT/GJ4eTWB
	 COmJil3hWI26uV3aw19paftLrhtmKGgWulMgX6nVjfEz0+0gBAoxgsYjJAvqe7BRQl
	 NsFnu9usM0Uqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLtCT2TRBeT2; Tue, 24 Oct 2023 11:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3AAF401D6;
	Tue, 24 Oct 2023 11:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3AAF401D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A57FF1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8957B42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8957B42ECD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2h4sOst12Yr4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:35:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 889D543122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 889D543122
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660552"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660552"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:35:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146143"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:42 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:23 +0200
Message-ID: <20231024110929.19423-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147301; x=1729683301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9SZ9VIt19nuY75ONe6pBJXwTW3GSNQB+O88Sp7ZJIak=;
 b=NkfI1bSOhynMlVY5e38+2JsmjWFtnkcxazfdevCWm6kqtovpiadw3nYv
 44Sc8cmssgriNu5+WlBqvbtfHc1tTN+UvU3mF/h6gxc+htgyNrrGpX9I2
 nVg2BzO5co2V4wS7s6PjEv6hOmtY0rLQffCod4+Qttm6FSHS2gaMJSbKm
 5XsilVmFr0wFVRS7hVGrW7ZHBYfxlDXt3VQvtxOVi+Z2vL/Qol0BICx4g
 wQCYpPtV3m87kYH4gpdHECg3fw3D0ws5/lPoh7XGc4PnjOvkBGYUopEwQ
 r0zHDEzNcHTJCjeip0zFTNb9reHiU2sDGhuywgDQ+S93XY4OqMu6l/XWQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NkfI1bSO
Subject: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: return pointer to
 representor
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In follow up patches it will be easier to obtain created port
representor pointer instead of the id. Without it the pattern from
eswitch side will look like:
- create PR
- get PR based on the id

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_repr.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index fce25472d053..b29a3d010780 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -382,7 +382,7 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 	return ERR_PTR(err);
 }
 
-static int ice_repr_add_vf(struct ice_vf *vf)
+static struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 {
 	struct ice_repr *repr;
 	struct ice_vsi *vsi;
@@ -390,11 +390,11 @@ static int ice_repr_add_vf(struct ice_vf *vf)
 
 	vsi = ice_get_vf_vsi(vf);
 	if (!vsi)
-		return -EINVAL;
+		return ERR_PTR(-ENOENT);
 
 	err = ice_devlink_create_vf_port(vf);
 	if (err)
-		return err;
+		return ERR_PTR(err);
 
 	repr = ice_repr_add(vf->pf, vsi, vf->hw_lan_addr);
 	if (IS_ERR(repr)) {
@@ -416,13 +416,13 @@ static int ice_repr_add_vf(struct ice_vf *vf)
 
 	ice_virtchnl_set_repr_ops(vf);
 
-	return 0;
+	return repr;
 
 err_netdev:
 	ice_repr_rem(&vf->pf->eswitch.reprs, repr);
 err_repr_add:
 	ice_devlink_destroy_vf_port(vf);
-	return err;
+	return ERR_PTR(err);
 }
 
 /**
@@ -432,6 +432,7 @@ static int ice_repr_add_vf(struct ice_vf *vf)
 int ice_repr_add_for_all_vfs(struct ice_pf *pf)
 {
 	struct devlink *devlink;
+	struct ice_repr *repr;
 	struct ice_vf *vf;
 	unsigned int bkt;
 	int err;
@@ -439,9 +440,11 @@ int ice_repr_add_for_all_vfs(struct ice_pf *pf)
 	lockdep_assert_held(&pf->vfs.table_lock);
 
 	ice_for_each_vf(pf, bkt, vf) {
-		err = ice_repr_add_vf(vf);
-		if (err)
+		repr = ice_repr_add_vf(vf);
+		if (IS_ERR(repr)) {
+			err = PTR_ERR(repr);
 			goto err;
+		}
 	}
 
 	/* only export if ADQ and DCB disabled */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
