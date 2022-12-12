Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204A9649DED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 12:33:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A65CA4049A;
	Mon, 12 Dec 2022 11:33:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A65CA4049A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670844813;
	bh=DMAbJSJubfj7RIivg8+2C2nX/+ckWjthBLNjOqL52D8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FtNrxZAuxrxUt57n0w0F1/Wo2h85D5UfOWK9/FOoqLnjku4lDKBE4oKmsxLsRur+G
	 mlmipvYWWPqVGXWtjYapxiQQhZnmYF1guqyuvQ7k8P5Zx3DLQhf/t4i6jgd8USNgGe
	 2h+c9IN+eqivlyKy38PriR8HPx6fHzJ5YiR7p+nldg6twIWb1CRwG2fMY4xenjVv/a
	 d1lK36e/Ac8KDcADX+BvOpgYXD5ypKlzJeZJodhxVbMDfIzNTJzrE77n1foYrqhE1P
	 ZFjYaVAEjd1cSMbBWzTR3uZRvMyMzRDtidf57+70FLA/a+HhjGBBpZ3V7ylrbYeeJv
	 ZImQ/jc1HCUqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwlFZHAiO_oN; Mon, 12 Dec 2022 11:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78E1840022;
	Mon, 12 Dec 2022 11:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78E1840022
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35E501BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1116F813B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1116F813B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWJYETMJE-qf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:33:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56A72813B4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56A72813B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317861545"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317861545"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:33:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="893459864"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="893459864"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2022 03:33:20 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 12:16:44 +0100
Message-Id: <20221212111645.1198680-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844804; x=1702380804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YywNEnk5AF8Sgvr1H+zIO8qQ/lr1Hm6wdnB4cuX72sE=;
 b=Qw+b8z/cWEx8PmD7BvLeEbcbQ9j/5RSJ6QafNxqV+dd5pVKfV0CqNkjw
 vdlXMfi0oIQrkCblY4tH5wFtkWSutfv/2iT9s/d9jgRmlukecva1j3LfU
 /kfxNIlZu23I4jnE1fV9gFtSKF2rkGMhm3hAS2fFvxIrK3J4Lc/aZhvzx
 Hj8uUp1l6LHIY66UTT1c35josyc8xP24PCJQhBFL8VbwDfwe0qxJBT5M4
 rziDvEvizTD/s6qBt2vKguyaw+1OyBDvILTHOw4pulxu8+pHKaUAUrhjj
 QaIMNT+8u6w3ZIxusROkEVbe/4cZaCxHZe19MlYh8mciuxdyczKT/X9iE
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qw+b8z/c
Subject: [Intel-wired-lan] [PATCH net-next v1 09/10] ice: update VSI instead
 of init in some case
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
index ae6ce6a74d03..cd9a345acdfa 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2701,9 +2701,11 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
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
@@ -2730,7 +2732,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
 	ice_vsi_set_tc_cfg(vsi);
 
 	/* create the VSI */
-	ret = ice_vsi_init(vsi, true);
+	ret = ice_vsi_init(vsi, init_vsi);
 	if (ret)
 		goto unroll_get_qs;
 
@@ -2856,12 +2858,14 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
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
 
@@ -2962,7 +2966,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	if (ice_vsi_alloc_stat_arrays(vsi))
 		goto err_alloc;
 
-	ret = ice_vsi_cfg(vsi, vf, ch);
+	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
 	if (ret)
 		goto err_vsi_cfg;
 
@@ -3498,7 +3502,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 	prev_rxq = vsi->num_rxq;
 
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
index fbeac890a606..49c1e9782bf0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5115,7 +5115,7 @@ int ice_load(struct ice_pf *pf)
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
