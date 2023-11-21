Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E6E7F2314
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 02:32:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 615A860FBC;
	Tue, 21 Nov 2023 01:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 615A860FBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700530338;
	bh=Pjhf2ptNyX+3UxJtH81gGJhLKPsy4+uD9kymOs3wob4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=En+sXwU2yUFDs8ZWd75XGlgD2/QFzsFdOaxzPADT4mM8MNNZUOfwRkxXw8+Q17Bnb
	 CLBwKVd1BhNf24qXj4pjhn7/7Ly73L3drEMnDBDKxZ+BR1Dw9iNn3Pt3AHKAjl6+ur
	 Bukr8uYDru1l9RZRevrS/UCWRXlaJXz1B0cPidfj+MGJCE1xeJYiV6WF93LrJ3N+Rn
	 bQj/5xfRDeBCjUDH8EDAEXtzV+/v7HEfzfovKQLZfXBOqwot33sC8pPrhqqa1k9Rwo
	 DyVfnsl6GzPAePsKvbbAn9OzMMyBxT9TyzLq0dHmc79FdoQDDgzYels38jO0BmILXy
	 CAzC93J38HuIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhbamvVRHPRv; Tue, 21 Nov 2023 01:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4339160E03;
	Tue, 21 Nov 2023 01:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4339160E03
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DA5D1BF3CA
 for <intel-wired-lan@osuosl.org>; Tue, 21 Nov 2023 01:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 409F4817A9
 for <intel-wired-lan@osuosl.org>; Tue, 21 Nov 2023 01:32:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 409F4817A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3eVIV5LJa2_E for <intel-wired-lan@osuosl.org>;
 Tue, 21 Nov 2023 01:32:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 804048179A
 for <intel-wired-lan@osuosl.org>; Tue, 21 Nov 2023 01:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 804048179A
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="456077776"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="456077776"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 17:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="742887425"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="742887425"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 17:32:09 -0800
From: Pawel Kaminski <pawel.kaminski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 20 Nov 2023 17:32:06 -0800
Message-ID: <20231121013206.2321-1-pawel.kaminski@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700530329; x=1732066329;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AzKviix/mh52ouO+kzJmJwKfcmsPzwvmNbjZKSF67es=;
 b=kksdCevwSclQG6BtltRYy+gMOgTRik8fBS58cMICGIQ2nsEivmSp6SD6
 +z6+mqAxeMWcJ58gSRR+h0HcVy9RTgJ5343AjQQYUgT4CxJGUrhIpDHjI
 5mw9N5KmbizfnXnG+khu1L5jWv3+JNGZvW31vYSyB5LK3PoL5e3N3pcsZ
 sxzdqBttKFiJcYM672QkV/ATYsx7Ld0GUXjYwGoLk+YqlTA0YXunLurma
 li3DHAOyEuxY4A1xab3300taox32QYqSKtFqNiv7TGqmA9uiH3lFQ9Hlr
 3kOVNSZ6NSgbecqru8s5bSqHeIf1uie1BKyirF58nvC61Nsfmb207B3X5
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kksdCevw
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Improve logs for max
 ntuple errors
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
Cc: netdev@vger.kernel.org, Pawel Kaminski <pawel.kaminski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Supported number of ntuple filters affect also maximum location value that
can be provided to ethtool command. Update error message to provide info
about max supported value.

Fix double spaces in the error messages.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index d151e5bacfec..3cc9d703428e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -668,7 +668,7 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 		 * then return error.
 		 */
 		if (hw->fdir_fltr_cnt[flow]) {
-			dev_err(dev, "Failed to add filter.  Flow director filters on each port must have the same input set.\n");
+			dev_err(dev, "Failed to add filter. Flow director filters on each port must have the same input set.\n");
 			return -EINVAL;
 		}
 
@@ -770,7 +770,7 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	ice_flow_rem_entry(hw, ICE_BLK_FD, entry1_h);
 err_prof:
 	ice_flow_rem_prof(hw, ICE_BLK_FD, prof_id);
-	dev_err(dev, "Failed to add filter.  Flow director filters on each port must have the same input set.\n");
+	dev_err(dev, "Failed to add filter. Flow director filters on each port must have the same input set.\n");
 
 	return err;
 }
@@ -1853,6 +1853,7 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	int fltrs_needed;
+	u32 max_location;
 	u16 tunnel_port;
 	int ret;
 
@@ -1884,8 +1885,10 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	if (ret)
 		return ret;
 
-	if (fsp->location >= ice_get_fdir_cnt_all(hw)) {
-		dev_err(dev, "Failed to add filter.  The maximum number of flow director filters has been reached.\n");
+	max_location = ice_get_fdir_cnt_all(hw);
+	if (fsp->location >= max_location) {
+		dev_err(dev, "Failed to add filter. The number of ntuple filters or provided location exceed max %d.\n",
+			max_location);
 		return -ENOSPC;
 	}
 
@@ -1893,7 +1896,7 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	fltrs_needed = ice_get_open_tunnel_port(hw, &tunnel_port, TNL_ALL) ? 2 : 1;
 	if (!ice_fdir_find_fltr_by_idx(hw, fsp->location) &&
 	    ice_fdir_num_avail_fltr(hw, pf->vsi[vsi->idx]) < fltrs_needed) {
-		dev_err(dev, "Failed to add filter.  The maximum number of flow director filters has been reached.\n");
+		dev_err(dev, "Failed to add filter. The maximum number of flow director filters has been reached.\n");
 		return -ENOSPC;
 	}
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
