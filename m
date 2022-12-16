Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 441CD64E863
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 09:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C45CE6110B;
	Fri, 16 Dec 2022 08:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C45CE6110B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671181150;
	bh=CGZnMgsE5YtKIW9S/4hMGAuXAAGUg93b5nMHRTHQXAw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dDmL8Y46pfHGeZarm3fuYf5LMYI27Dp6SYeTxByXuLOanUsjZA7SsQxh9wnKOW9lz
	 mK65y7yKy/NTMtqfg324oGeW3mzuMT3SF/zp2MH99T4W+1Q6FR9LoOcR6vZWmY0VYE
	 rumlKFEl3PllsZL6V02TXW/mSQjAnWHuz2UiuL9i0PQa0xhkNEpXjErXN8keJjRIKL
	 2OzJuRXwWVDYIr522rqfxpAB95yVG3xBb4+mArw8+TEBjDFJ8BebjUFMSvBhp0Gjxs
	 7Sx2BknEDT5U/6XpxiTgV5TnT2IUo+fKcxx6KsH7ieIR47FTihHirhlAk0nzUTqW+5
	 H2lJ4bH7HCo1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6saGMIbfsefG; Fri, 16 Dec 2022 08:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1554610F8;
	Fri, 16 Dec 2022 08:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1554610F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B012F1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96D666110B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96D666110B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mU2OBxY-bo8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 08:58:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBA0B61106
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBA0B61106
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383256805"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="383256805"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 00:58:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="738471865"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="738471865"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Dec 2022 00:58:42 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 09:43:18 +0100
Message-Id: <20221216084319.11699-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
References: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671181129; x=1702717129;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mSIe4ki+eiF7jmfocyCsNf8RbD6+C1D3faslzxEKjuA=;
 b=EdN9d44BY3Ban/o43MTHNL1hyPxQfX2eWK0ODUU36e8/ksFcqQFn1XEx
 +3u06XKKQF+P2Ild0nTT4ijCbQ7kjyEoJkw2OasD1dEhBIHBr8oZzATGr
 pw7dLH3EpoXHXsYyl1bPzGJwdnOBW+kr2ubNmvIa4GdoxsAJwAF3KXFHF
 I3JIrZrNlFguH72H3Ubw8AE2w9nwRGomijUOZOtiBX68/n4zAv1rY8nI6
 j+9bW41bnakyXIphV6E6IoXTArVcEaA0tOP+zTMmiQYtzIoUmiN0Ww1g6
 0N8L61Dm0C/fOvWPwGCLrkhvMD1loAi+kuOTXYMrMChl5owxOC2AwqtYd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EdN9d44B
Subject: [Intel-wired-lan] [PATCH net-next v2 09/10] ice: update VSI instead
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
index 0de57e49a8e8..5fd7d3c3fd45 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5038,7 +5038,7 @@ int ice_load(struct ice_pf *pf)
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
