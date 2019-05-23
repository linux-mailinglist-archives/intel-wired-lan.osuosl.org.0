Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 385A028DF3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2019 01:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4CA387CEC;
	Thu, 23 May 2019 23:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5ED327QdOLF; Thu, 23 May 2019 23:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A222D87EA8;
	Thu, 23 May 2019 23:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 497871BF296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 23:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 426E487E98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 23:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GrOOCCQ+jOqy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2019 23:43:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1135487E8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 23:43:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,505,1549958400"; d="scan'208";a="175948380"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.154])
 by fmsmga002.fm.intel.com with ESMTP; 23 May 2019 16:43:02 -0700
From: Lihong Yang <lihong.yang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 May 2019 16:45:33 -0700
Message-Id: <20190523234533.48418-1-lihong.yang@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Do not check VF state in
 i40e_ndo_get_vf_config
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

The VF configuration returned in i40e_ndo_get_vf_config is
already stored by the PF. There is no dependency on any
specific state of the VF to return the configuration.
Drop the check against I40E_VF_STATE_INIT since it is not
needed.

Signed-off-by: Lihong Yang <lihong.yang@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 4f4521d39725..38484ed6880d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4299,10 +4299,8 @@ int i40e_ndo_get_vf_config(struct net_device *netdev,
 	vf = &pf->vf[vf_id];
 	/* first vsi is always the LAN vsi */
 	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
-		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
-			vf_id);
-		ret = -EAGAIN;
+	if (!vsi) {
+		ret = -ENOENT;
 		goto error_param;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
