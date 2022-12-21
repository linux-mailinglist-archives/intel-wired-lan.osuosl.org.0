Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8F9653076
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 12:54:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAE2440B70;
	Wed, 21 Dec 2022 11:54:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAE2440B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671623679;
	bh=zmjFdaxy/Sy9Vv9Uhdue4Hrnied7LRhVb7tqOygTqLY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SZan49CVWkh1iKv6qndqd/PfNQQidlek2bEXYAeKUHYs6IRtEr1QuTRAi8gw+mEeI
	 7Qm9Qw8TAE2iEKa8iBYrTM6JDyDFYVsAama+k/gWJds3NhS4iTXUBviDfjth+/4amb
	 pytkALygAsAlK7klM9RGZahigwvsZIhTklToqLEa7vsHre0Z8CNP4Hu0ax5qpuPObG
	 5UONv2m8htuYL/Qy+lDl6Y04f1LIw22VHckBfrXu8FtAKi0H2x0o+TmAJ1IJlItnli
	 LA4wx5hVM6MUXWwVN58/6dzJD8icbkue4FOeLWNW6njjojHfAkdsfVc+hCSfwJXit5
	 FrJ2kDV9CEoxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XW8HH-WcILVN; Wed, 21 Dec 2022 11:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B70A040B67;
	Wed, 21 Dec 2022 11:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B70A040B67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 975FC1BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72FFD80FAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72FFD80FAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iECNlNy1x5kM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 11:54:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3D78812A0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3D78812A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321766186"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321766186"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:54:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714799401"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714799401"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 03:54:24 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Dec 2022 12:38:21 +0100
Message-Id: <20221221113822.12858-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671623668; x=1703159668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cCImT0zxOHmlecI+E87QMUuoglb4KYINlS0jPn//JgQ=;
 b=gCCmO9xXdFdkEPLKqmgTVAKU4CokYubXHfI6QInjaFhjtWBwPBj9O+XP
 kqLRMCqKgL5qxRmWyeif+enbib9Rg3luumfX18xWNeuZm01B6YnnH68mO
 l15UkJbeayluoDQszSrC6g4ajt21G4CPsAhY+XOi+E2MY0OX3DQDl2X37
 5fnRV1h0SSfnxsF8LtkZ9X0OAq1LsR5Oagz4ouhbKUJX9Nd90687hAPT8
 v0ZkJLhdhcjdFq7IEc+CFQr2TRa2E3U0GqZuLP9v1xqA5+oVDtqUBlHFw
 3y1o9QhczOEoJFETlxonXe03c4i9t0w0A3sQXGNtoa8B2VXknjAjjAlPq
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gCCmO9xX
Subject: [Intel-wired-lan] [PATCH net-next v3 09/10] ice: update VSI instead
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
Cc: mustafa.ismail@intel.com, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
index b1ae17f07a4c..8e9243635496 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2705,9 +2705,11 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
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
@@ -2738,7 +2740,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
 	ice_vsi_set_tc_cfg(vsi);
 
 	/* create the VSI */
-	ret = ice_vsi_init(vsi, true);
+	ret = ice_vsi_init(vsi, init_vsi);
 	if (ret)
 		goto unroll_get_qs;
 
@@ -2866,12 +2868,14 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
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
 
@@ -2968,7 +2972,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		return NULL;
 	}
 
-	ret = ice_vsi_cfg(vsi, vf, ch);
+	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
 	if (ret)
 		goto err_vsi_cfg;
 
@@ -3502,7 +3506,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
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
index 0c1acb6cd09c..1291cf842bde 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5013,7 +5013,7 @@ int ice_load(struct ice_pf *pf)
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
