Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D422C35090C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A1AA40EE1;
	Wed, 31 Mar 2021 21:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5QTCsJvWXSsg; Wed, 31 Mar 2021 21:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CD41406B0;
	Wed, 31 Mar 2021 21:27:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E69ED1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2126C8495A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DYEkIZR4_wuI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77B638496A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
IronPort-SDR: cth2v7d6N7aZRIFgOrU5MccvPysSxHcQ7/ZwRbRH/xUPvOrH/5U3tjyylc5TUaX0Vhsa1zh6LJ
 xWlsbJsbY2sQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117311"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117311"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:52 -0700
IronPort-SDR: yqM7XNPxi7ElYiQ4okhAcfN0vQidhis1TrXfVlu9ZY+NKBSaSrphQi3XA4HnvAg0DqXkS8DRcL
 49dXNZ1yiy+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819643"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:04 -0700
Message-Id: <20210331211708.55205-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 09/13] ice: Set vsi->vf_id as
 ICE_INVAL_VFID for non VF VSI types
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently the vsi->vf_id is set only for ICE_VSI_VF and it's left as 0
for all other VSI types. This is confusing and could be problematic
since 0 is a valid vf_id. Fix this by always setting non VF VSI types to
ICE_INVAL_VFID.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4e93005686a4..c379b4ddffbd 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -158,7 +158,8 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 
 	if (vsi->type == ICE_VSI_VF)
 		vsi->vf_id = vf_id;
-
+	else
+		vsi->vf_id = ICE_INVAL_VFID;
 	switch (vsi->type) {
 	case ICE_VSI_PF:
 		vsi->alloc_txq = min3(pf->num_lan_msix,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
