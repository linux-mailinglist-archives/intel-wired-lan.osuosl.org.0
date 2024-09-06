Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 888DC96F4D6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 14:57:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45F138169F;
	Fri,  6 Sep 2024 12:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pXrzKAqTYLhF; Fri,  6 Sep 2024 12:57:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6472181751
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725627433;
	bh=uYpCR6+/Was5Hsy2JYNNjhqIkx1yfxyT06Yyxotqtf8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7ezHWAGJDMNFB8LgqyRdBkbw4TsBYQ+jNPopY4OPo8K1qeMrPSlNvULATtWrQ5KzM
	 MCGUxe+MAkjz9Wygu5zJKvJcX6rmOHzsHdgXCOrINBntgImffW2cWKb07nlwmwvUm8
	 O33xCJvMnARx9ODowrhU7oFd4NdVFI3Nknc8a7LNKZMtRGrF51FkmZchGqpOocS96P
	 6VMQ1XXbTWI3EUYtCQxBCrng/pCDLDlBvAWP8H7RZOUd/2EbsKf7DgQ5kl24gqSiyQ
	 82yjPWEIjiYRXXWTB1v6FvgnNJx0CUa5aTN6BgDCwHfNNGmgsDd5SMEbh++gCXA2LP
	 ouFK7D5gtw+7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6472181751;
	Fri,  6 Sep 2024 12:57:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A39EA1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 12:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 900A34032C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 12:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6UmgYunR8iiB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 12:57:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E773840162
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E773840162
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E773840162
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 12:57:09 +0000 (UTC)
X-CSE-ConnectionGUID: ahuLjUVWS1u54FdRwcCNOw==
X-CSE-MsgGUID: QfkzgUqZTTyKYzGEfRNe6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24546125"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24546125"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:57:09 -0700
X-CSE-ConnectionGUID: ZlYcbZKVTvCmau3AgYWjmA==
X-CSE-MsgGUID: +dX9tKI4SjyxpMYZzzYqDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="96731526"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 06 Sep 2024 05:57:07 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Sep 2024 14:57:06 +0200
Message-ID: <20240906125706.46965-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627430; x=1757163430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PgpUqTDJtGZIRloqGiVVcn/EalmCmqNfTkJNG23ep/w=;
 b=h0l+WLjhh7uFTvRGw8w8az5AF38DlbPfeaX37f49eISSBhmfHhYfazjc
 HVjuYa6PmVG8WyhjOQQtu5P7iUlsxpWH1l0Ufi3WEUthmbRx+FiV7b1tW
 7rI9XkcaTws6Na1ivr9T7kenTadYqWwBDhHJG8PobGDuhHAJEvaBgh4h5
 FAQtBBL/DJ+pJVkf2EXcCnscgutRreFAZuCgYN+w88St8ZZB2GmGcRtFZ
 lbA57609n+X/UsOtkXr6zWhU6fqtPDAEqlA2ReQKzNpq++aiNDfM4K5O6
 2JMAb98w0lI1xZV1GGDCGny9Q7PPcS8gh5lSSw8FAfR0ezO4dtr8Mkhm2
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h0l+WLjh
Subject: [Intel-wired-lan] [iwl-net v1] ice: clear port vlan config during
 reset
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
Cc: netdev@vger.kernel.org, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with
ice_vf_reconfig_vsi()") VF VSI is only reconfigured instead of
recreated. The context configuration from previous setting is still the
same. If any of the config needs to be cleared it needs to be cleared
explicitly.

Previously there was assumption that port vlan will be cleared
automatically. Now, when VSI is only reconfigured we have to do it in the
code.

Not clearing port vlan configuration leads to situation when the driver
VSI config is different than the VSI config in HW. Traffic can't be
passed after setting and clearing port vlan, because of invalid VSI
config in HW.

Example reproduction:
> ip a a dev $(VF) $(VF_IP_ADDRESS)
> ip l s dev $(VF) up
> ping $(VF_IP_ADDRESS)
ping is working fine here
> ip link set eth5 vf 0 vlan 100
> ip link set eth5 vf 0 vlan 0
> ping $(VF_IP_ADDRESS)
ping isn't working

Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  7 +++
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 57 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  1 +
 3 files changed, 65 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 5635e9da2212..9fe2a309c5ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -335,6 +335,13 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
 
 		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
 	} else {
+		/* clear possible previous port vlan config */
+		err = ice_vsi_clear_port_vlan(vsi);
+		if (err) {
+			dev_err(dev, "failed to clear port VLAN via VSI parameters for VF %u, error %d\n",
+				vf->vf_id, err);
+			return err;
+		}
 		err = ice_vsi_add_vlan_zero(vsi);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 6e8f2aab6080..5291f2888ef8 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -787,3 +787,60 @@ int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi)
 	kfree(ctxt);
 	return err;
 }
+
+int ice_vsi_clear_port_vlan(struct ice_vsi *vsi)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_vsi_ctx *ctxt;
+	int err;
+
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return -ENOMEM;
+
+	ctxt->info = vsi->info;
+
+	ctxt->info.port_based_outer_vlan = 0;
+	ctxt->info.port_based_inner_vlan = 0;
+
+	ctxt->info.inner_vlan_flags =
+		FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
+			   ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
+	if (ice_is_dvm_ena(hw)) {
+		ctxt->info.inner_vlan_flags |=
+			FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
+				   ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING);
+		ctxt->info.outer_vlan_flags =
+			FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M,
+				   ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL);
+		ctxt->info.outer_vlan_flags |=
+			FIELD_PREP(ICE_AQ_VSI_OUTER_TAG_TYPE_M,
+				   ICE_AQ_VSI_OUTER_TAG_VLAN_8100);
+		ctxt->info.outer_vlan_flags |=
+			ICE_AQ_VSI_OUTER_VLAN_EMODE_NOTHING <<
+			ICE_AQ_VSI_OUTER_VLAN_EMODE_S;
+	}
+
+	ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	ctxt->info.valid_sections =
+		cpu_to_le16(ICE_AQ_VSI_PROP_OUTER_TAG_VALID |
+			    ICE_AQ_VSI_PROP_VLAN_VALID |
+			    ICE_AQ_VSI_PROP_SW_VALID);
+
+	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (err) {
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for clearing port based VLAN failed, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+	} else {
+		vsi->info.port_based_outer_vlan =
+			ctxt->info.port_based_outer_vlan;
+		vsi->info.port_based_inner_vlan =
+			ctxt->info.port_based_inner_vlan;
+		vsi->info.outer_vlan_flags = ctxt->info.outer_vlan_flags;
+		vsi->info.inner_vlan_flags = ctxt->info.inner_vlan_flags;
+		vsi->info.sw_flags2 = ctxt->info.sw_flags2;
+	}
+
+	kfree(ctxt);
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
index f0d84d11bd5b..12b227621a7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
@@ -36,5 +36,6 @@ int ice_vsi_ena_outer_insertion(struct ice_vsi *vsi, u16 tpid);
 int ice_vsi_dis_outer_insertion(struct ice_vsi *vsi);
 int ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
 int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi);
+int ice_vsi_clear_port_vlan(struct ice_vsi *vsi);
 
 #endif /* _ICE_VSI_VLAN_LIB_H_ */
-- 
2.42.0

