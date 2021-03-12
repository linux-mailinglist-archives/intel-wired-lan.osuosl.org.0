Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A16CA338B68
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 12:21:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 041638454C;
	Fri, 12 Mar 2021 11:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mbed2AM5swzd; Fri, 12 Mar 2021 11:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB93984542;
	Fri, 12 Mar 2021 11:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B01761BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 11:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABCA042FDD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 11:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p48SkAQ33uqp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 11:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E1E9342FC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 11:21:22 +0000 (UTC)
IronPort-SDR: xbb/FOWtgVTxDxXBtcDl+s5YVOs1XZsQRhCeUvuKyfOMdFahXjonzMbrfPp4sTSEOpewWTVUaw
 yfjYo4LfM/ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="176410493"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="176410493"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 03:21:21 -0800
IronPort-SDR: VZahOuWtqClMvabV5DPc94rMZgOIxKbJWJTdp45DlU8lbDupO2+yPcDJO9c0Otken6nd1Oy4tw
 upsBBlx/9xbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="387324404"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga002.jf.intel.com with ESMTP; 12 Mar 2021 03:21:20 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Mar 2021 11:21:15 +0000
Message-Id: <20210312112115.14607-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix rtnl locking when
 setting up pf switch
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jan Sokolowski <jan.sokolowski@intel.com>

A recent change that made i40e use new udp_tunnel infrastructure
uses a method that expects to be called under rtnl_lock.

Not all codepaths however made that lock when calling
i40e_setup_pf_switch.

Fix a stacktrace by adding additional rtnl locking and unlocking.

Fixes: 40a98cb6f01f ("i40e: convert to new udp_tunnel infrastructure")
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 71f14c4..8c2072c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -31,7 +31,7 @@ static void i40e_vsi_reinit_locked(struct i40e_vsi *vsi);
 static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired);
 static int i40e_add_vsi(struct i40e_vsi *vsi);
 static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi);
-static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit);
+static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acquired);
 static int i40e_setup_misc_vector(struct i40e_pf *pf);
 static void i40e_determine_queue_usage(struct i40e_pf *pf);
 static int i40e_setup_pf_filter_control(struct i40e_pf *pf);
@@ -10576,7 +10576,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 
 	if (!lock_acquired)
 		rtnl_lock();
-	ret = i40e_setup_pf_switch(pf, reinit);
+	ret = i40e_setup_pf_switch(pf, reinit, true);
 	if (ret)
 		goto end_unlock;
 
@@ -14659,7 +14659,7 @@ int i40e_fetch_switch_configuration(struct i40e_pf *pf, bool printconfig)
  *
  * Returns 0 on success, negative value on failure
  **/
-static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit)
+static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 {
 	u16 flags = 0;
 	int ret;
@@ -14761,9 +14761,14 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit)
 
 	i40e_ptp_init(pf);
 
+	if (!lock_acquired)
+		rtnl_lock();
 	/* repopulate tunnel port filters */
 	udp_tunnel_nic_reset_ntf(pf->vsi[pf->lan_vsi]->netdev);
 
+	if (!lock_acquired)
+		rtnl_unlock();
+
 	return ret;
 }
 
@@ -15556,7 +15561,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			pf->flags |= I40E_FLAG_VEB_MODE_ENABLED;
 	}
 #endif
-	err = i40e_setup_pf_switch(pf, false);
+	err = i40e_setup_pf_switch(pf, false, false);
 	if (err) {
 		dev_info(&pdev->dev, "setup_pf_switch failed: %d\n", err);
 		goto err_vsis;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
