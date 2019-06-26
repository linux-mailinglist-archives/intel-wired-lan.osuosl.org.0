Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD8C56FD1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 19:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDF7C878AF;
	Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJH+SFbPZkn7; Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 896A087D5E;
	Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB2A61BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C50B386A0C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAUeIQiDjXAn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8412868E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183218112"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 10:47:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2019 02:20:14 -0700
Message-Id: <20190626092027.52845-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S22 03/16] ice: Move vector base setup to
 PF VSI
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

When interrupt tracking was refactored, during rebuild, the call to
ice_vsi_setup_vector_base() was inadvertently removed from the PF VSI
instead of being removed from the VF VSI. During reset, the failure to
properly setup the vector base generates a call trace. Correct this so
that resets/rebuilds properly complete.

Fixes: cbe66bfee6a0 ("ice: Refactor interrupt tracking")
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7311ce9c2f16..9aa1f285b17f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3082,6 +3082,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi)
 		if (ret)
 			goto err_rings;
 
+		ret = ice_vsi_setup_vector_base(vsi);
+		if (ret)
+			goto err_vectors;
+
 		ret = ice_vsi_set_q_vectors_reg_idx(vsi);
 		if (ret)
 			goto err_vectors;
@@ -3110,10 +3114,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi)
 		if (ret)
 			goto err_rings;
 
-		ret = ice_vsi_setup_vector_base(vsi);
-		if (ret)
-			goto err_vectors;
-
 		ret = ice_vsi_set_q_vectors_reg_idx(vsi);
 		if (ret)
 			goto err_vectors;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
