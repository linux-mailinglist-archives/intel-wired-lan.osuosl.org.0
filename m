Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8718B66A60A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:37:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 281D3415C6;
	Fri, 13 Jan 2023 22:37:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 281D3415C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649478;
	bh=aYIwHUJHFXEIPqrkJn2Xj52P0CWsGK7kEyJhRIai2MY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GoFbWvHrhtqZhHgdxZQaUgC9mAEuamUX0H21Rx6j2NisGxmCyNaoHdQHCTQF9wGmA
	 xxX/kCiSOd+gfd24rucY/ZBaxFc7sGl/hpH6eGuIqyFSr1YPRoFkzADH9YlodBdklw
	 ITYtIj1wiBq+BrDWM9ipDjvw/gE8vIexA4iKYlG5wHLjBmfJFN+2425Gfxu9BHVi9Z
	 CSho9SNpJ4IuG2Il6A3p7yULk1jfMW/4ye7G6ZiZS2wt4BVXFhOH9MJigYuHN7sC8d
	 YfVZon1F0BifiuchBFacvVxKVFvulQkmNx2/imvyz2AySHs6rtvgo45zdERgkUxdBn
	 XSCSiz0xeqwcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id etmE_MGp1IOU; Fri, 13 Jan 2023 22:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12D6040C23;
	Fri, 13 Jan 2023 22:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12D6040C23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 182BF1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05FF9821FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05FF9821FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BEfwCfD2Bewn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5702482200
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5702482200
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354041"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354041"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859756"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859756"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:24 -0800
Message-Id: <20230113223735.2514364-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649463; x=1705185463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D5KYWhAr9/TW8qeRNouitNv7Bs4a18xFVxqHZvvHcvg=;
 b=aMaxQtY2Z23O2Zqe0gwPT1caOWOSK3G673x3jXkcrxe11GulJoC/E7SR
 bSNna3x44rE5iACEVAfNdfntHtjl99T7Zlp6Ac75XNwwbrVhRr8eEnFoW
 vosydCFyIQmKH1oiUd7puveu22XyYYANQ6XiXlulCvwV532K+3RgO0Pd7
 kAo5vVi42efi4S5Hooa56Ivsi8fmJYydargnsuAxU34bfapz3sjSjVJeQ
 7eu3BlcJQ7coU/2vPckJkai3UOTVedIgSeA5YhmdCxYGg+EYaSWf4FHrb
 LO6+lWorU82uG/RfBoIhKqJtjfNLXzJrA8F6UFnGWLT0bQCvKoETjV51r
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aMaxQtY2
Subject: [Intel-wired-lan] [PATCH net-next 02/13] ice: drop unnecessary VF
 parameter from several VSI functions
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
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 62d27e50f40e..0bf99f0e3faa 100644
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
@@ -598,11 +598,10 @@ static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
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
@@ -2702,14 +2701,11 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
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
@@ -2717,7 +2713,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
 
 	vsi->vsw = pf->first_sw;
 
-	ret = ice_vsi_alloc_def(vsi, vf, ch);
+	ret = ice_vsi_alloc_def(vsi, ch);
 	if (ret)
 		return ret;
 
@@ -2875,7 +2871,7 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
 {
 	int ret;
 
-	ret = ice_vsi_cfg_def(vsi, vf, ch, init_vsi);
+	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
 	if (ret)
 		return ret;
 
@@ -3504,7 +3500,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 	prev_rxq = vsi->num_rxq;
 
 	ice_vsi_decfg(vsi);
-	ret = ice_vsi_cfg_def(vsi, vsi->vf, vsi->ch, init_vsi);
+	ret = ice_vsi_cfg_def(vsi, vsi->ch, init_vsi);
 	if (ret)
 		goto err_vsi_cfg;
 
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
