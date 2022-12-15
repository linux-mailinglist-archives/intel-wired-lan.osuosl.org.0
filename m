Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5965064E34D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 22:37:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69D3261077;
	Thu, 15 Dec 2022 21:37:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69D3261077
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671140272;
	bh=GieofwDCQ7cRJQ8m53/2394jsikIzwFoFHnKmHAr5AE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=x9+4m8wn3yHtCZV7YwEMCNFSP799e8DNKcscOAULatb1zAgdLm4Oo35rOiadkOUT1
	 WAoSUK/+SGb91AFaMmTFUq9F0oN0/pyAUKxfEjuENjn6DpMUtdbQOtqAW8/zmoKyd4
	 LWp70LI8fLyQV6WQfHwWDhqjoOUF3mWelkwp7EvKr5lLOVBSvrESBIsCuRDi2NR7Uz
	 7f+zqfXGPNvXTqsS25CasLPFjOzuYenw9G44KfXzxzoN8frSJ0jz+o5UaCFngk+vkO
	 eJvnYS53M/u9uNaBBMF3/9MCxgqXXrwwiZPCIZ4OAq69rtmdWoGr0ua02wV3SDh7pO
	 bP3KuZoJYOQyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGfmW26hafp6; Thu, 15 Dec 2022 21:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76AE160E17;
	Thu, 15 Dec 2022 21:37:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76AE160E17
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CCC6D1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 21:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B47AC820FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 21:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B47AC820FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjJLEShJjfom for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Dec 2022 21:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D68EE820EC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D68EE820EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 21:37:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383139068"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="383139068"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 13:37:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="756502444"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="756502444"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 13:37:44 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Dec 2022 13:36:51 -0800
Message-Id: <20221215213651.45135-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671140265; x=1702676265;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6mjy8Rkc75VnvtKnzasjX9DECRgO6XBMdGv7j0wCtLM=;
 b=U1vvUylwv/91QzK1Tg5r3FjSo9QFNE91Kgl+ddZngn7eh5S2kDua3C70
 y59M6tIDioAP8/ZlMpZpw6GOaZpveVoSOGvQKnGlmG6tk8jOV7P165u3v
 NthhkYCKDg438bc6UyFa+RODnV7j8OGatsLL4PVEXKVfiHf5vigeLb/3T
 E+xk9DDkzx5lCoQPthQxVKmElWi2XiD78a8Pd9v3WkLs1wN7F1B+QVMJO
 Yf/zQnii089Du48Q8mA1jNilPnIfwM3LGn14r9vr4FBSZOnmlUfL7zaNv
 TaPS3HGMng+tIWX8ghBU2IIFdHlyhvz19pOT3xk170EEEitg/Jeb9SfSc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U1vvUylw
Subject: [Intel-wired-lan] [PATCH net-next] ice: Introduce local var for
 readability
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

Based on previous feedback[1], introduce a local var to make things more
readable.

[1] https://lore.kernel.org/netdev/20220315203218.607f612b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 57d762cdaf2a..3c5e06acad62 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5058,8 +5058,11 @@ static void ice_setup_mc_magic_wake(struct ice_pf *pf)
 static void ice_remove(struct pci_dev *pdev)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
+	struct ice_hw *hw;
 	int i;
 
+	hw = &pf->hw;
+
 	ice_devlink_unregister(pf);
 	for (i = 0; i < ICE_MAX_RESET_WAIT; i++) {
 		if (!ice_is_reset_in_progress(pf->state))
@@ -5092,7 +5095,7 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_remove_arfs(pf);
 	ice_setup_mc_magic_wake(pf);
 	ice_vsi_release_all(pf);
-	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
+	mutex_destroy(&hw->fdir_fltr_lock);
 	ice_devlink_destroy_pf_port(pf);
 	ice_set_wake(pf);
 	ice_free_irq_msix_misc(pf);
@@ -5105,13 +5108,13 @@ static void ice_remove(struct pci_dev *pdev)
 	pf->vsi_stats = NULL;
 	ice_deinit_pf(pf);
 	ice_devlink_destroy_regions(pf);
-	ice_deinit_hw(&pf->hw);
+	ice_deinit_hw(hw);
 
 	/* Issue a PFR as part of the prescribed driver unload flow.  Do not
 	 * do it via ice_schedule_reset() since there is no need to rebuild
 	 * and the service task is already stopped.
 	 */
-	ice_reset(&pf->hw, ICE_RESET_PFR);
+	ice_reset(hw, ICE_RESET_PFR);
 	pci_wait_for_pending_transaction(pdev);
 	ice_clear_interrupt_scheme(pf);
 	pci_disable_pcie_error_reporting(pdev);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
