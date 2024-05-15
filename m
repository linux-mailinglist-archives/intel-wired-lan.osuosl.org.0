Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9311A8C6A37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 18:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BB0E8183D;
	Wed, 15 May 2024 16:09:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fv3TYUwuVP5Q; Wed, 15 May 2024 16:09:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FDD78198A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715789370;
	bh=uMqs6UPE9X9bFtv5xdtLwdoNpxnsvWh8/RQa8g2jCUI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hX2wa6SNiB25xex2ApLzWN/Y8JVvvBpwianlXvLdG9c8yXNqs8hfvbg6XJCwNvpU/
	 RlN8Ei9TVJlAbdY6gLqX2Op0+MCH7vwt8AZS4LswrNvH8ySP69onIW/01V3FywV7t9
	 2xrW1hZrmGPQCyqikDpJgAhBeVSBnaLcWUzRlRzA2iT2j8+4VyL6Sb1lzpVUDBtun5
	 iEYy5Zm1NkCkH6MW8cMHam9S3jgEiZB0czkb2wKtGNQ3WsN1V26IyIImaI+B6OcPIU
	 RnEpN9Mmzbc1ykMf5lUpuGlWM82IdHR5f7BSSmlfMR8e9qoirAu62yyoG/s5AoEBB8
	 3vYRIaFPQ6BvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FDD78198A;
	Wed, 15 May 2024 16:09:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAB281BF396
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3DAB41B15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 37cDlfFT_NG7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 16:09:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD63E41B09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD63E41B09
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD63E41B09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:24 +0000 (UTC)
X-CSE-ConnectionGUID: uuKJPVlNRt2vP3Weap9yhA==
X-CSE-MsgGUID: jXFGEo5nQZyXBn2BHF9Asg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11666396"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="11666396"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:09:24 -0700
X-CSE-ConnectionGUID: m636+dHaQci/wJcHENMupw==
X-CSE-MsgGUID: i8oMmVWMS3yBHE27eGL30Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="62297353"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 15 May 2024 09:09:19 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 03A752878A;
 Wed, 15 May 2024 17:09:17 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 15 May 2024 18:02:15 +0200
Message-ID: <20240515160246.5181-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240515160246.5181-1-larysa.zaremba@intel.com>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715789364; x=1747325364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qnev+muridwm44bGaSO0aPsN1QaY80zct7zOfv7nlXY=;
 b=SVv9kwVUFeiTRDFcXjngYmoTmOXkLD1crv4AuySh9Cuc4CVShccC791f
 k7p8awJ0CMzwbprrUSPueVbqmDSi786pe2GWJMORVn9uSj6baAB36JL2u
 3afZuTqbUISNf90PQzWETBYVwyMZfWwOvYg1PF1x0yDrufylKkWVHv2fA
 WYbVi0BAthrh7XsYdB9+KqhOMPUBPXUqX2DdSaAgCgC5Sp8zI10ciGw4I
 OBXjANOzR7vHobb79g+VG55OzIIUmIQVmF9mKXo6F0+2nHlwM3SeSf0YP
 KIhjQU8IBqMJrW4+xbNRzum9FOeEmf820Hr17yLUNZlYCUu5Ipau6oFWV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SVv9kwVU
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: add flag to distinguish
 reset from .ndo_bpf in XDP rings config
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
Cc: maciej.fijalkowski@intel.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Magnus Karlsson <magnus.karlsson@gmail.com>,
 igor.bagnucki@intel.com, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
has placed ice_vsi_free_q_vectors() after ice_destroy_xdp_rings() in
the rebuild process. The behaviour of the XDP rings config functions is
context-dependent, so the change of order has led to
ice_destroy_xdp_rings() doing additional work and removing XDP prog, when
it was supposed to be preserved.

Also, dependency on the PF state reset flags creates an additional,
fortunately less common problem:

* PFR is requested e.g. by tx_timeout handler
* .ndo_bpf() is asked to delete the program, calls ice_destroy_xdp_rings(),
  but reset flag is set, so rings are destroyed without deleting the
  program
* ice_vsi_rebuild tries to delete non-existent XDP rings, because the
  program is still on the VSI
* system crashes

With a similar race, when requested to attach a program,
ice_prepare_xdp_rings() can actually skip setting the program in the VSI
and nevertheless report success.

Instead of reverting to the old order of function calls, add an enum
argument to both ice_prepare_xdp_rings() and ice_destroy_xdp_rings() in
order to distinguish between calls from rebuild and .ndo_bpf().

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 11 +++++++++--
 drivers/net/ethernet/intel/ice/ice_lib.c  |  5 +++--
 drivers/net/ethernet/intel/ice/ice_main.c | 22 ++++++++++++----------
 3 files changed, 24 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d4d840729bda..b91b2594b29d 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -930,9 +930,16 @@ int ice_down(struct ice_vsi *vsi);
 int ice_down_up(struct ice_vsi *vsi);
 int ice_vsi_cfg_lan(struct ice_vsi *vsi);
 struct ice_vsi *ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi);
+
+enum ice_xdp_cfg {
+	ICE_XDP_CFG_FULL,	/* Fully apply new config in .ndo_bpf() */
+	ICE_XDP_CFG_PART,	/* Save/use part of config in VSI rebuild */
+};
+
 int ice_vsi_determine_xdp_res(struct ice_vsi *vsi);
-int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog);
-int ice_destroy_xdp_rings(struct ice_vsi *vsi);
+int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
+			  enum ice_xdp_cfg cfg_type);
+int ice_destroy_xdp_rings(struct ice_vsi *vsi, enum ice_xdp_cfg cfg_type);
 int
 ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	     u32 flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index c0a7ff6c7e87..dd8b374823ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2285,7 +2285,8 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 			ret = ice_vsi_determine_xdp_res(vsi);
 			if (ret)
 				goto unroll_vector_base;
-			ret = ice_prepare_xdp_rings(vsi, vsi->xdp_prog);
+			ret = ice_prepare_xdp_rings(vsi, vsi->xdp_prog,
+						    ICE_XDP_CFG_PART);
 			if (ret)
 				goto unroll_vector_base;
 		}
@@ -2429,7 +2430,7 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 		/* return value check can be skipped here, it always returns
 		 * 0 if reset is in progress
 		 */
-		ice_destroy_xdp_rings(vsi);
+		ice_destroy_xdp_rings(vsi, ICE_XDP_CFG_PART);
 
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_q_vectors(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f60c022f7960..2a270aacd24a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2711,10 +2711,12 @@ static void ice_vsi_assign_bpf_prog(struct ice_vsi *vsi, struct bpf_prog *prog)
  * ice_prepare_xdp_rings - Allocate, configure and setup Tx rings for XDP
  * @vsi: VSI to bring up Tx rings used by XDP
  * @prog: bpf program that will be assigned to VSI
+ * @cfg_type: create from scratch or restore the existing configuration
  *
  * Return 0 on success and negative value on error
  */
-int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
+int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
+			  enum ice_xdp_cfg cfg_type)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	int xdp_rings_rem = vsi->num_xdp_txq;
@@ -2790,7 +2792,7 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 	 * taken into account at the end of ice_vsi_rebuild, where
 	 * ice_cfg_vsi_lan is being called
 	 */
-	if (ice_is_reset_in_progress(pf->state))
+	if (cfg_type == ICE_XDP_CFG_PART)
 		return 0;
 
 	/* tell the Tx scheduler that right now we have
@@ -2842,22 +2844,21 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 /**
  * ice_destroy_xdp_rings - undo the configuration made by ice_prepare_xdp_rings
  * @vsi: VSI to remove XDP rings
+ * @cfg_type: disable XDP permanently or allow it to be restored later
  *
  * Detach XDP rings from irq vectors, clean up the PF bitmap and free
  * resources
  */
-int ice_destroy_xdp_rings(struct ice_vsi *vsi)
+int ice_destroy_xdp_rings(struct ice_vsi *vsi, enum ice_xdp_cfg cfg_type)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct ice_pf *pf = vsi->back;
 	int i, v_idx;
 
 	/* q_vectors are freed in reset path so there's no point in detaching
-	 * rings; in case of rebuild being triggered not from reset bits
-	 * in pf->state won't be set, so additionally check first q_vector
-	 * against NULL
+	 * rings
 	 */
-	if (ice_is_reset_in_progress(pf->state) || !vsi->q_vectors[0])
+	if (cfg_type == ICE_XDP_CFG_PART)
 		goto free_qmap;
 
 	ice_for_each_q_vector(vsi, v_idx) {
@@ -2898,7 +2899,7 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi)
 	if (static_key_enabled(&ice_xdp_locking_key))
 		static_branch_dec(&ice_xdp_locking_key);
 
-	if (ice_is_reset_in_progress(pf->state) || !vsi->q_vectors[0])
+	if (cfg_type == ICE_XDP_CFG_PART)
 		return 0;
 
 	ice_vsi_assign_bpf_prog(vsi, NULL);
@@ -3009,7 +3010,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		if (xdp_ring_err) {
 			NL_SET_ERR_MSG_MOD(extack, "Not enough Tx resources for XDP");
 		} else {
-			xdp_ring_err = ice_prepare_xdp_rings(vsi, prog);
+			xdp_ring_err = ice_prepare_xdp_rings(vsi, prog,
+							     ICE_XDP_CFG_FULL);
 			if (xdp_ring_err)
 				NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
 		}
@@ -3020,7 +3022,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 			NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Rx resources failed");
 	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
 		xdp_features_clear_redirect_target(vsi->netdev);
-		xdp_ring_err = ice_destroy_xdp_rings(vsi);
+		xdp_ring_err = ice_destroy_xdp_rings(vsi, ICE_XDP_CFG_FULL);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Tx resources failed");
 		/* reallocate Rx queues that were used for zero-copy */
-- 
2.43.0

