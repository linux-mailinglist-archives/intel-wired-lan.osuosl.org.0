Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFC48AB42C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 19:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F372414A1;
	Fri, 19 Apr 2024 17:08:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2slT4TvWBkJG; Fri, 19 Apr 2024 17:08:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74097407B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713546538;
	bh=6RJM6M9MVg9jj9CLHPrykf5hBz5nkfkiHGHzcmA+t2c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jyFJtnEUsmTlTuLaubFXBFxyZlFmWDKOAYBP+WbUy+MlLnU72pXNXYS/v5umbmvLm
	 UDdH8vJcqajtmlWbphPXH1V1aNUoOcQoCb9W5WFSciugKFSnLIWn6mfEwWVXU3iant
	 ZeegRoMZtyhv+3FVIz+DwahasibXgOVbBIJcTLM65AyweNed7StZZw3f8IvuBC+QMA
	 Fq3f3/vSz+5XMIJsHEM9B5MJFx665koRlKRDNfMTRcuSb69pEUOL/e5mQ0n5721vBl
	 9jTpZr3cN/7yTPXxlfUHgQAtr57dClT6NpNXfuo/9ClA9MTPEfpq8busvzDLkyYB19
	 /bGzQ5wIHQ5Jw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74097407B9;
	Fri, 19 Apr 2024 17:08:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C3961BF314
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1912B40793
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dDyQN6MTThW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 17:08:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5B41E407A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B41E407A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B41E407A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:53 +0000 (UTC)
X-CSE-ConnectionGUID: 1m/g/2vBQpO9EGBswCHJIw==
X-CSE-MsgGUID: vrKxznowSpO2rKBODnF9rg==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="26674313"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="26674313"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 10:08:53 -0700
X-CSE-ConnectionGUID: cfX4Rg1cSZqYCJwqdh2Szw==
X-CSE-MsgGUID: qvql3h4hTIemRdcXmvpDdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="27847181"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa005.fm.intel.com with ESMTP; 19 Apr 2024 10:08:50 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Apr 2024 19:13:36 +0200
Message-ID: <20240419171336.11617-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
References: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713546533; x=1745082533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J45kRKvnHyS+3diwekn2tb6YqQK7kWm5g7ur8re4vSQ=;
 b=Nt3Z2ZuIjIQ2oGkYWWbI3TgxUV3jtsNPfuZaiIF2hRFVDDkbm+ajpjSh
 3wOnagZAMQy3iwbPsKOcanxM5JUTWamAnl3dfMuVOc75Nd9+z52k0KmRq
 Rmqk7xBTytlC9jYfbbeNghDftMp2s5pVomPQG/uSCYRmCdt6rbJ+UjdBq
 D/u01467UaL5kDKy6K+HxbrqS0fdDcGd/RRpA8vQsL8UiXA1AG9DTZ9OM
 hWVLbQCjY+rhzU0JdVLBI2+5MIafi9lGNtzw0aavdtVHSShLqJOMWzy00
 +8JYqWkRExwDxw687v4iYXpDcaCSSc4BZdqgEjQzOMj+PJa8iJaBI3CfJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nt3Z2ZuI
Subject: [Intel-wired-lan] [iwl-next v1 4/4] ice: update representor when
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
index 998590223f02..4c1d29b8f105 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -176,16 +176,16 @@ void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac)
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
 
@@ -195,12 +195,19 @@ void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
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
index c51e2482cad2..424975d972f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -950,7 +950,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		goto out_unlock;
 	}
 
-	ice_eswitch_update_repr(vf->repr_id, vsi);
+	ice_eswitch_update_repr(&vf->repr_id, vsi);
 
 	/* if the VF has been reset allow it to come up again */
 	ice_mbx_clear_malvf(&vf->mbx_info);
-- 
2.42.0

