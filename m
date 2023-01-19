Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05708672DF4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DC0241920;
	Thu, 19 Jan 2023 01:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DC0241920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091057;
	bh=+nPIKPhbZ+7hJ6a8hr+HjeHY/Hlq6TZQN+e7/XO8t6E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N55t3/m3a5JSOL1CfNPfZ0jbSXXDC2qy6LC3uqtKlUgeqvOAJmkdoHPPVrxlMnOzs
	 b+S4Oet6hgxSkFswixGpdGaIQc4efSPvQwdlz0Inqfypg0fTSA5nrV6VukNhkLnUGO
	 lNbm8agkZ4egeKzxWxz1rnclw/oWU96OxIy9KLdon2vf7aDJ1BH9dfV7mAxiKWkRqF
	 qJaYI/VybS6G1KvcA7wDGf48mV6Lw0PrmMbTEIBQ3M+jbZ5UBk+s5YDlxDJ/PuvaXG
	 0txkoA24+bEgCsW2XD3JD5jXI6cuITVLkPLOlnmAXf59z1zSdUYtH23BLld1fvzCMp
	 AskBmhfXzMl0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B_PLYBoiEmyM; Thu, 19 Jan 2023 01:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD6A841900;
	Thu, 19 Jan 2023 01:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD6A841900
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68E801BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE2C141920
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE2C141920
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SufkCRcRlELP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 329CF4190C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 329CF4190C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840722"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840722"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881860"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881860"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:42 -0800
Message-Id: <20230119011653.311675-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091024; x=1705627024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZaVat+/w0JD+HYGTykHv95kgUoJx/om5eeko29yK8AE=;
 b=ae4drFZutHcOIT7yu0qtkGKVxh6HPtjvgj+URCogyLuTIrUhTvKGgthI
 XPxrfhV1y/vLwfG5LC8d+lvnUOhzJZnx7rh6Q+SYqbg8POF2NBEEDu2EB
 PuKXauD2uvWID0gH5eyO59o/i1tygC4MthWtCCxTgKqKlddv7Fr6LGOIP
 cpbZizjOCM7uJu+hWK2wBw9zU8fOW4+c94yccXnjaZrQm0rvSR47OvXf3
 rkE5M3bOIYXLQKj/0MgjcgnbH0PMVM5sW08LswwYvU1rE9QEG7+gxhWZm
 NgDXA8PZMF2DWH4wTnTLBdu5w82pV/R3ZyWr4/VfYs23qUet1/b33IfUX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ae4drFZu
Subject: [Intel-wired-lan] [PATCH net-next v2 02/13] ice: drop unnecessary
 VF parameter from several VSI functions
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The vsi->vf pointer gets assigned early on during ice_vsi_alloc. Several
functions currently take a VF pointer, but they can just use the existing
vsi->vf pointer as needed. Modify these functions to drop the unnecessary
VF parameter.

Note that ice_vsi_cfg is not changed as a following change will refactor so
that the VF pointer is assigned during ice_vsi_cfg rather than
ice_vsi_alloc.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
Changes since v1:
* Add Reviewed-by tag
* Fix kdoc warning about non-existent function argument

 drivers/net/ethernet/intel/ice/ice_lib.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 62d27e50f40e..46af8b2707b6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -166,14 +166,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 /**
  * ice_vsi_set_num_qs - Set number of queues, descriptors and vectors for a VSI
  * @vsi: the VSI being configured
- * @vf: the VF associated with this VSI, if any
  *
  * Return 0 on success and a negative value on error
  */
-static void ice_vsi_set_num_qs(struct ice_vsi *vsi, struct ice_vf *vf)
+static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 {
 	enum ice_vsi_type vsi_type = vsi->type;
 	struct ice_pf *pf = vsi->back;
+	struct ice_vf *vf = vsi->vf;
 
 	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
 		return;
@@ -594,15 +594,13 @@ static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
 /**
  * ice_vsi_alloc_def - set default values for already allocated VSI
  * @vsi: ptr to VSI
- * @vf: VF for ICE_VSI_VF and ICE_VSI_CTRL
  * @ch: ptr to channel
  */
 static int
-ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_vf *vf,
-		  struct ice_channel *ch)
+ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 {
 	if (vsi->type != ICE_VSI_CHNL) {
-		ice_vsi_set_num_qs(vsi, vf);
+		ice_vsi_set_num_qs(vsi);
 		if (ice_vsi_alloc_arrays(vsi))
 			return -ENOMEM;
 	}
@@ -2702,14 +2700,11 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
 /**
  * ice_vsi_cfg_def - configure default VSI based on the type
  * @vsi: pointer to VSI
- * @vf: pointer to VF to which this VSI connects. This field is used primarily
- *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
  * @ch: ptr to channel
  * @init_vsi: is this an initialization or a reconfigure of the VSI
  */
 static int
-ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
-		int init_vsi)
+ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct ice_pf *pf = vsi->back;
@@ -2717,7 +2712,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
 
 	vsi->vsw = pf->first_sw;
 
-	ret = ice_vsi_alloc_def(vsi, vf, ch);
+	ret = ice_vsi_alloc_def(vsi, ch);
 	if (ret)
 		return ret;
 
@@ -2875,7 +2870,7 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
 {
 	int ret;
 
-	ret = ice_vsi_cfg_def(vsi, vf, ch, init_vsi);
+	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
 	if (ret)
 		return ret;
 
@@ -3504,7 +3499,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 	prev_rxq = vsi->num_rxq;
 
 	ice_vsi_decfg(vsi);
-	ret = ice_vsi_cfg_def(vsi, vsi->vf, vsi->ch, init_vsi);
+	ret = ice_vsi_cfg_def(vsi, vsi->ch, init_vsi);
 	if (ret)
 		goto err_vsi_cfg;
 
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
