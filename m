Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6AE3AAD41
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 09:19:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD52E40614;
	Thu, 17 Jun 2021 07:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O4asqAiij7Eb; Thu, 17 Jun 2021 07:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0694A4056B;
	Thu, 17 Jun 2021 07:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E27F1BF420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 07:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CB924056B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 07:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UB0X0aeUkqTv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 07:19:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B26D640150
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 07:19:31 +0000 (UTC)
IronPort-SDR: vWrqZxSfoOsHOjdIJ9KnRhLj/kyJ9naluN7B+lTVqRPcASRwz/g6HVdP6UtBlONo4UcJgtVNp2
 4vISUo7w9N4Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="206353575"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="206353575"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 00:19:30 -0700
IronPort-SDR: gtVGHWilIy8oDJgjytmj0jIiAYbtn0wfFNSyIxBBfH4BpTPSKoWf1QubCojfgQIp05kcYhJXWp
 zTfnUsXfH/ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="472326348"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jun 2021 00:19:29 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Jun 2021 09:19:26 +0200
Message-Id: <20210617071926.256183-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add ensurance of
 MacVlan resources for every trusted VF
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Trusted VF can use up every resource available, leaving nothing
to other trusted VFs.
Introduce define, which calculates MacVlan resources available based
on maximum available MacVlan resources, bare minimum for each VF and
number of currently allocated VFs.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 34 ++++++++++++++++---
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 31cabcaf00..67fa5f0041 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2735,12 +2735,21 @@ error_param:
 				      (u8 *)&stats, sizeof(stats));
 }
 
+#define I40E_MAX_MACVLAN_PER_HW 3072
+#define I40E_MAX_MACVLAN_PER_PF(num_ports) (I40E_MAX_MACVLAN_PER_HW /	\
+	(num_ports))
 /* If the VF is not trusted restrict the number of MAC/VLAN it can program
  * MAC filters: 16 for multicast, 1 for MAC, 1 for broadcast
  */
 #define I40E_VC_MAX_MAC_ADDR_PER_VF (16 + 1 + 1)
 #define I40E_VC_MAX_VLAN_PER_VF 16
 
+#define I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(vf_num, num_ports)		\
+({	typeof(vf_num) vf_num_ = (vf_num);				\
+	typeof(num_ports) num_ports_ = (num_ports);			\
+	((I40E_MAX_MACVLAN_PER_PF(num_ports_) - vf_num_ *		\
+	I40E_VC_MAX_MAC_ADDR_PER_VF) / vf_num_) +			\
+	I40E_VC_MAX_MAC_ADDR_PER_VF; })
 /**
  * i40e_check_vf_permission
  * @vf: pointer to the VF info
@@ -2764,6 +2773,7 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 					   bool *is_quiet)
 {
 	struct i40e_pf *pf = vf->pf;
+	struct i40e_hw *hw = &pf->hw;
 	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
 	int mac2add_cnt = 0;
 	int i;
@@ -2809,12 +2819,26 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 	 * number of addresses. Check to make sure that the additions do not
 	 * push us over the limit.
 	 */
-	if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps) &&
-	    (i40e_count_filters(vsi) + mac2add_cnt) >
+	if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
+		if ((i40e_count_filters(vsi) + mac2add_cnt) >
 		    I40E_VC_MAX_MAC_ADDR_PER_VF) {
-		dev_err(&pf->pdev->dev,
-			"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
-		return -EPERM;
+			dev_err(&pf->pdev->dev,
+				"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
+			return -EPERM;
+		}
+	/* If this VF is trusted, it can use more resources than untrusted.
+	 * However to ensure that every trusted VF has appropriate number of
+	 * resources, divide whole pool of resources per port and then across
+	 * all VFs.
+	 */
+	} else {
+		if ((i40e_count_filters(vsi) + mac2add_cnt) >
+		    I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs,
+						       hw->num_ports)) {
+			dev_err(&pf->pdev->dev,
+				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
+			return -EPERM;
+		}
 	}
 	return 0;
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
