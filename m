Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3268BC9C8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 10:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA42540714;
	Mon,  6 May 2024 08:42:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7A_8Y34pEkbh; Mon,  6 May 2024 08:42:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6F8F404E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714984938;
	bh=e/XnKk9tgah6sXY0MimbeKlUI2Ik5gQbzTuqnkFhOJ8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=307mr+s8NYSGwsRxaJqprkOhLYi5Sk5/f1RXKVAu7y/CuhvdWLLSVXuZD/3FvleE9
	 0C9NWYZHhvU3DwjQTMjkm0Cyg9h7rDY7vp7oyFFYKUq39jg4x5KlGy5il6ANqYNnaH
	 hVgGyofwskbMz3YLdTZpnd9BIdPTIrDOP61Nw1qBmv+blE1OaNRqSqoIZnlm94wHr5
	 gVD11TqExAH4brFzIVkwnmxz9bcjPuhJmUL3LtfNbAulZbW6JknxV9P1yYLqcX/mCd
	 4FXLbQVadGmoU8CFIeiW4Jx7H2pyl7mg21GL7pg9V36PZBuXaxRU78RwXTBm1vMGMt
	 0Q2SxSRAUyCUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6F8F404E9;
	Mon,  6 May 2024 08:42:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D07051BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B719B4070C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hW4HZCB5-G3D for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 08:42:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A7D38405FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7D38405FF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A7D38405FF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:13 +0000 (UTC)
X-CSE-ConnectionGUID: 7hwO2QzERKeK7Dqq+j0Xzw==
X-CSE-MsgGUID: byf0CIHYRaGHgT08q5odgg==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14505132"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14505132"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:42:14 -0700
X-CSE-ConnectionGUID: bHstSGC+RyWUUZW3FO7I0A==
X-CSE-MsgGUID: kVNIWsRQR12AWPKckmnStg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28050174"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa009.fm.intel.com with ESMTP; 06 May 2024 01:42:11 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 May 2024 10:46:53 +0200
Message-ID: <20240506084653.532111-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714984934; x=1746520934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jwrUkSiP9mBvhULzR57jthYOrcdWsPsw+csazW5uF+s=;
 b=aFlhn0qMy9J6LG93jT5Fkvnss8DIqDYAUdvn/y5ojsWVXOnLLUL9TIhe
 rbIcMfj27NgR5/4lL4GtrJDHa8ulR1iZfgp988OuNVX9GJbvJanM/tY5g
 rtD01NevWWiOSGeO1tkeCIKgU6rRqZBQ8OTp2sr4/l6Crp9Uu/Vx2EgVU
 tDVYN+EPvSYF2AqrDqeqS3zTVhe7eZr+cJKsjjAkHpQ0pSwus1LTDSdbL
 ZoiooF/iGcPxLHzPyZ5cE2Ijux5teU3bXNJ8+5KBS+nM5/+BcWi0kP/qc
 HnOlOdvSxYNiOygCxy7R28XH7j/9ZBYckYYuXdP4TvGcjXbhMpqk/5HXG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aFlhn0qM
Subject: [Intel-wired-lan] [iwl-next v2 4/4] ice: update representor when
 VSI is ready
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In case of reset of VF VSI can be reallocated. To handle this case it
should be properly updated.

Reload representor as vsi->vsi_num can be different than the one stored
when representor was created.

Instead of only changing antispoof do whole VSI configuration for
eswitch.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 21 +++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_eswitch.h |  4 ++--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  2 +-
 3 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 3f73f46111fc..4f539b1c7781 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -178,16 +178,16 @@ void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac)
  * @repr_id: representor ID
  * @vsi: VSI for which port representor is configured
  */
-void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
+void ice_eswitch_update_repr(unsigned long *repr_id, struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_repr *repr;
-	int ret;
+	int err;
 
 	if (!ice_is_switchdev_running(pf))
 		return;
 
-	repr = xa_load(&pf->eswitch.reprs, repr_id);
+	repr = xa_load(&pf->eswitch.reprs, *repr_id);
 	if (!repr)
 		return;
 
@@ -197,12 +197,19 @@ void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
 	if (repr->br_port)
 		repr->br_port->vsi = vsi;
 
-	ret = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
-	if (ret) {
-		ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
-					       ICE_FWD_TO_VSI);
+	err = ice_eswitch_cfg_vsi(vsi, repr->parent_mac);
+	if (err)
 		dev_err(ice_pf_to_dev(pf), "Failed to update VSI of port representor %d",
 			repr->id);
+
+	/* The VSI number is different, reload the PR with new id */
+	if (repr->id != vsi->vsi_num) {
+		xa_erase(&pf->eswitch.reprs, repr->id);
+		repr->id = vsi->vsi_num;
+		if (xa_insert(&pf->eswitch.reprs, repr->id, repr, GFP_KERNEL))
+			dev_err(ice_pf_to_dev(pf), "Failed to reload port representor %d",
+				repr->id);
+		*repr_id = repr->id;
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 9a25606e9740..09194d514f9b 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -18,7 +18,7 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		     struct netlink_ext_ack *extack);
 bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
 
-void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi);
+void ice_eswitch_update_repr(unsigned long *repr_id, struct ice_vsi *vsi);
 
 void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf);
 
@@ -47,7 +47,7 @@ ice_eswitch_set_target_vsi(struct sk_buff *skb,
 			   struct ice_tx_offload_params *off) { }
 
 static inline void
-ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi) { }
+ice_eswitch_update_repr(unsigned long *repr_id, struct ice_vsi *vsi) { }
 
 static inline int ice_eswitch_configure(struct ice_pf *pf)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 48a8d462d76a..5635e9da2212 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -948,7 +948,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		goto out_unlock;
 	}
 
-	ice_eswitch_update_repr(vf->repr_id, vsi);
+	ice_eswitch_update_repr(&vf->repr_id, vsi);
 
 	/* if the VF has been reset allow it to come up again */
 	ice_mbx_clear_malvf(&vf->mbx_info);
-- 
2.42.0

