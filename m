Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FFB6280EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2209060DCA;
	Mon, 14 Nov 2022 13:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2209060DCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431567;
	bh=aiREGnDvupZ31Sa/D8nSORpiWROSY16VrB4JkKExxYo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V20BWqNEZPCmc4sQjfNzpMSY+0IvMkka7K9oBIzzuK/jCVgBmQzDcgpSYTa4FpDio
	 vxs+0fm9a0FDI61FSwgUOMlLk5dBjAlPNK5YWmfLj5zJw0eA4uLxZzlO7MKMxQ1gAt
	 h/2U0YnW1RotOi8xoZ5w88EIzUHxv/F9aa41QeHwxKbwP3kOxiwOVp1JHOGHAiwqQY
	 XmY5KuRerUSfdxMALojSCEV0vbPvB2ADBbR0L3fbMIofAJW4NGN6Xii5tho2U9kxdC
	 mebskWjQmH7oUk4TR4zIZqSokpXNIpO1GPKsSK+9OHrKt7CxK4rnirA8RAM1KBnkpN
	 yxJ7vpLmZgAeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMwlPQEt4QgZ; Mon, 14 Nov 2022 13:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A24B60DDF;
	Mon, 14 Nov 2022 13:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A24B60DDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 127B11BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E244181886
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E244181886
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q74U5Yr0o8eu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:12:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 297E48186B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 297E48186B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313766756"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="313766756"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:12:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616306044"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616306044"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:12:32 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:51 +0100
Message-Id: <20221114125755.13659-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431557; x=1699967557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rgAPs7log2UWG8/xCvTZeDeVszLluOPvI71EOX9QBj8=;
 b=TH30E5rjjS0uSvp75uM0O9IPquN97Aifz6i28+moZ3GFYenuhh0Mn9eb
 Et7lKj9shHNmd9xOf52Po5ZNI15QKDfjwaRxg7Hhc09SR0uj6VwWF4I1o
 hHSAIoLdQdsBGIK3Co+w0Tr+Z2ZaDnJC76XNs5YupcuSK/P4Wh/2pqldZ
 3s4WKrmvceBNLiBzxhAnE/q/rP+eGDH+HR5YY/wtb234dGKJgbyXQpgax
 BdUePaiZ5fDccov9pdd2/qyY+cfZDovUjtRibkoIdgYMfgasz5aVwG0gO
 DdJIR5Ac5vFjdoecGU2dHfAeJx7At2QXM/RMUowBFzzLCcFNYDGTTrKhD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TH30E5rj
Subject: [Intel-wired-lan] [PATCH net-next 09/13] ice: update VSI instead of
 init in some case
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_vsi_cfg() is called from different contexts:
1) VSI exsist in HW, but it is reconfigured, because of changing queues
   for example -> update instead of init should be used
2) VSI doesn't exsist, because rest has happened -> init command should
   be sent

To support both cases pass boolean value which will store information
what type of command has to be sent to HW.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 16 ++++++++++------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 3 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 32da2da74056..bc04f2b9f8a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2551,9 +2551,11 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
  * @vf: pointer to VF to which this VSI connects. This field is used primarily
  *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
  * @ch: ptr to channel
+ * @init_vsi: is this an initialization or a reconfigure of the VSI
  */
 static int
-ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
+ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
+		int init_vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct ice_pf *pf = vsi->back;
@@ -2580,7 +2582,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
 	ice_vsi_set_tc_cfg(vsi);
 
 	/* create the VSI */
-	ret = ice_vsi_init(vsi, true);
+	ret = ice_vsi_init(vsi, init_vsi);
 	if (ret)
 		goto unroll_get_qs;
 
@@ -2694,12 +2696,14 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
  * @vf: pointer to VF to which this VSI connects. This field is used primarily
  *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
  * @ch: ptr to channel
+ * @init_vsi: is this an initialization or a reconfigure of the VSI
  */
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
+int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
+		int init_vsi)
 {
 	int ret;
 
-	ret = ice_vsi_cfg_def(vsi, vf, ch);
+	ret = ice_vsi_cfg_def(vsi, vf, ch, init_vsi);
 	if (ret)
 		return ret;
 
@@ -2796,7 +2800,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		return NULL;
 	}
 
-	ret = ice_vsi_cfg(vsi, vf, ch);
+	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
 	if (ret)
 		goto err_vsi_cfg;
 
@@ -3286,7 +3290,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
 
 	ice_vsi_decfg(vsi);
-	ret = ice_vsi_cfg_def(vsi, vsi->vf, vsi->ch);
+	ret = ice_vsi_cfg_def(vsi, vsi->vf, vsi->ch, init_vsi);
 	if (ret)
 		goto err_vsi_cfg;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 8905f8721a76..b76f05e1f8a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -60,8 +60,6 @@ int ice_vsi_release(struct ice_vsi *vsi);
 
 void ice_vsi_close(struct ice_vsi *vsi);
 
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf,
-		struct ice_channel *ch);
 int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
 
 void ice_vsi_decfg(struct ice_vsi *vsi);
@@ -75,6 +73,8 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
 #define ICE_VSI_FLAG_INIT	BIT(0)
 #define ICE_VSI_FLAG_NO_INIT	0
 int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi);
+int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf,
+		struct ice_channel *ch, int init_vsi);
 
 bool ice_is_reset_in_progress(unsigned long *state);
 int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 49d29eb61c17..9766032e95ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5012,7 +5012,7 @@ int ice_load(struct ice_pf *pf)
 		return err;
 
 	vsi = ice_get_main_vsi(pf);
-	err = ice_vsi_cfg(vsi, NULL, NULL);
+	err = ice_vsi_cfg(vsi, NULL, NULL, ICE_VSI_FLAG_INIT);
 	if (err)
 		goto err_vsi_cfg;
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
