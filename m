Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCZjBWHe/WmqkAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC534F6B3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2DFC41033;
	Fri,  8 May 2026 13:00:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qFdn4BYdUHFC; Fri,  8 May 2026 13:00:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AFFE410AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245210;
	bh=5F3qmPonnpG9UicxwSTV/tGKo1H8pWd5J3JD6jNwqDM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kHWxIW05iDxlIYPbNBsL8gPgGY0yRlAHlpBDXNISlK3UVCHzIs4uK7ebps0OGPuJr
	 gl9iU7tAjwvKxlR0VEHjz31M0RHUHhSPSW6hmeDHwIKABXMaEQ+hKZaH818qoXq5Ak
	 Mis3hslTLoRzl/+6e2E+Wb2JtTOMKnewt5oC8v7FdEc39vYesSE936npVVXzqPpNk5
	 +wVJBh3lw+XRO1UIVaXFLK7t0FBrQanjFJXbiEskrsOvsaKPJ235/vyGmCvk1olcuQ
	 wNNGuWedW2tVz/5OD25ZgRa0+X0oQ6htoWtcHVNv81VcSD53Ap8Ff4YFBCDXJ3d0li
	 f4x3deEMSjMLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AFFE410AA;
	Fri,  8 May 2026 13:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E271317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B83940F8C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KpTUquV2nZt2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 13:00:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 36045410AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36045410AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36045410AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:07 +0000 (UTC)
X-CSE-ConnectionGUID: KoeWwfTZTdaVyQkAuqp+rA==
X-CSE-MsgGUID: GgAYX9u4QqOAq+I3PgcCRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79200017"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79200017"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:00:07 -0700
X-CSE-ConnectionGUID: iOmkLC7lT22hmXlZb8Q87A==
X-CSE-MsgGUID: BuKjJpg8QKG3eXJdQzNjbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730300"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 06:00:00 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D618A2FC41;
 Fri,  8 May 2026 13:59:58 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Fri,  8 May 2026 14:42:08 +0200
Message-Id: <20260508124208.11622-16-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245208; x=1809781208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tRjA3Mv7plFdbQhSTB+xQGBFDB7tp/p65WZXZRKik3E=;
 b=fA3fn8H1GwVIKvqT22sYb+M/yDYqkLPHXHS6duZa97noh4+K3MO6Zu+g
 AW4nW5yutkRNt5IlDgoJQ4Voegb1v9w43dSUhHnKVk5StfyM/vqzhMe/M
 hYwdxvPAy+uJ65g5GYHUd0u3EhPM3z6nOdHLL4p/DMkqAqwuVxef0lKPR
 7yFpE3FMgv83s+tfhMa5uiMsCkcugbu30joJPubDZEATyYueIC0hKC+sU
 lOzBvileS2rdyfOX+PXRhMzKXE1ZKAdurBBR8+ueh92MyQ2UNIsP8v5Hk
 J96k3NyFO3ehXjKKUPI/CtcgRUfmiVNGL9Nx1dz0rbrEohrSuYfxdntCK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fA3fn8H1
Subject: [Intel-wired-lan] [PATCH iwl-next v1 15/15] ice: support up to 256
 VF queues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 5FC534F6B3D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.986];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Add support for up to 256 VF queues. To enable more than usual 16, user
needs to assign GLOBAL LUT (devlink resource named "rss/lut_512") for 64
queues or PF LUT (name "rss/lut_2048") for maximum of 256 queues. There is
a need to assign the GLOBAL LUT to PF first, then release the PF LUT
(initially assigned to PF) from PF, to finally assign it to VF, see
examples further below. Usual default of number of CPU cores does still
apply, but queues could be requested later by usual ethtool -L command.

Add devlink instance of VF device to track RSS LUT resources under
a respective PF devlink instance.

Number of MSI-X vectors assigned to VF is orthogonal to this.

Note that VF reset is deferred to service task.

How to use:
1. Up to 64 queues
   a. assign one of 16 GLOBAL LUTs to VF:
      sudo devlink resource set pci/0000:18:01.0 path rss/lut_512 size 1
   b. if more queues than the default (num of vCPU/CPU cores) are wanted:
      sudo ethtool -L $vfiface combined $more

2. Up to 256 queues
   a. assign a GLOBAL LUT to PF:
      sudo devlink resource set pci/0000:18:00.0 path rss/lut_512 size 1
   b. free the PF LUT from PF:
      sudo devlink resource set pci/0000:18:00.0 path rss/lut_2048 size 0
   c. assign the PF LUT to VF:
      sudo devlink resource set pci/0000:18:01.0 path rss/lut_2048 size 1
   d. if more queues than the default (num of vCPU/CPU cores) are wanted:
      sudo ethtool -L $vfiface combined	$more

3. display current RSS LUT or RSS table:
   a. see if RSS is mapped correctly (e.g. for lut_512 there are 512
      entries expected):
      ethtool -x $vfiface
   b. see what devlink devices are present:
      devlink dev show # note the "faux" device over your pci netdevs
   c. see PF, VF, and "whole device aggregate" (faux) resources:
      devlink resource show pci/0000:18:00.0 # PF
      devlink resource show pci/0000:18:01.0 # VF
      devlink resource show faux/ice-90-cf-4c-ff-ff-6f-7c-50 # whole dev

output will look like: below, for device with 1 of PF and GLOBAL LUTs:
pci/0000:18:00.0:
  name rss size 2 unit entry size_min 0 size_max 2 size_gran 1 dpipe_tables none
    resources:
      name lut_512 size 1 unit entry size_min 0 size_max 1 size_gran 1 dpipe_tables none
      name lut_2048 size 1 unit entry size_min 0 size_max 1 size_gran 1 dpipe_tables none

Big thanks to Mateusz for working together on the whole story for long
time! Big thanks to Alex Loktionov for pointing the reason of one nasty
bug with the message size!

Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 .../net/ethernet/intel/ice/devlink/resource.h |   3 +
 drivers/net/ethernet/intel/ice/ice_lib.h      |   5 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  13 +++
 drivers/net/ethernet/intel/ice/virt/rss.h     |   1 +
 .../net/ethernet/intel/ice/virt/virtchnl.h    |   4 +
 .../net/ethernet/intel/ice/devlink/resource.c | 105 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  27 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  25 +++++
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  10 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  42 +++++++
 drivers/net/ethernet/intel/ice/virt/rss.c     |  36 +++++-
 .../net/ethernet/intel/ice/virt/virtchnl.c    |  47 +++++++-
 12 files changed, 305 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/resource.h b/drivers/net/ethernet/intel/ice/devlink/resource.h
index 947f77a3cd49..9c6c97e2e62d 100644
--- a/drivers/net/ethernet/intel/ice/devlink/resource.h
+++ b/drivers/net/ethernet/intel/ice/devlink/resource.h
@@ -8,12 +8,15 @@ struct devlink;
 struct ice_adapter;
 struct ice_hw;
 struct ice_pf;
+struct ice_vf;
 
+void ice_devlink_vf_resources_register(struct ice_vf *vf);
 void ice_devl_pf_resources_register(struct ice_pf *pf);
 void ice_devl_whole_dev_resources_register(const struct ice_hw *hw,
 					   struct ice_adapter *adapter);
 
 int ice_take_rss_lut_pf(struct ice_pf *pf);
 void ice_free_rss_lut_flr(struct ice_pf *pf);
+void ice_free_rss_lut_vf(struct ice_vf *vf);
 
 #endif /* _ICE_DEVL_RESOURCE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 54377c797bac..76efea676583 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -8,16 +8,19 @@
 #include "ice_vlan.h"
 
 /* Flags used for VSI configuration and rebuild */
-#define ICE_VSI_FLAG_INIT	BIT(0)
 #define ICE_VSI_FLAG_NO_INIT	0
+#define ICE_VSI_FLAG_INIT	BIT(0)
+#define ICE_VSI_FLAG_RELOAD	BIT(1) /* devlink reload action */
 
 #define ICE_L2TSEL_QRX_CONTEXT_REG_IDX	3
 #define ICE_L2TSEL_BIT_OFFSET		23
 enum ice_l2tsel {
 	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND,
 	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG1,
 };
 
+u16 ice_lut_type_to_qs_num(enum ice_lut_type lut_type);
+
 const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
 bool ice_pf_state_is_nominal(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 5411eaa1761c..397e1fa00dbc 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -145,6 +145,7 @@ struct ice_vf {
 	struct kref refcnt;
 	struct ice_pf *pf;
 	struct pci_dev *vfdev;
+	struct devlink *devlink;
 	/* Used during virtchnl message handling and NDO ops against the VF
 	 * that will trigger a VFR
 	 */
@@ -175,6 +176,7 @@ struct ice_vf {
 	u8 link_forced:1;
 	u8 link_up:1;			/* only valid if VF link is forced */
 	u8 lldp_tx_ena:1;
+	u8 needs_deferred_reset:1;
 
 	u16 num_msix;			/* num of MSI-X configured on this VF */
 
@@ -320,9 +322,12 @@ int
 ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int ice_reset_vf(struct ice_vf *vf, u32 flags);
 void ice_reset_all_vfs(struct ice_pf *pf);
+void ice_schedule_vf_reset(struct ice_vf *vf);
 struct ice_vsi *ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi);
 void ice_vf_update_mac_lldp_num(struct ice_vf *vf, struct ice_vsi *vsi,
 				bool incr);
+void ice_init_vf_devlink(struct ice_vf *vf);
+void ice_deinit_vf_devlink(struct ice_vf *vf);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
@@ -399,6 +404,14 @@ ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi)
 {
 	return NULL;
 }
+
+static inline void ice_init_vf_devlink(struct ice_vf *vf)
+{
+}
+
+static inline void ice_deinit_vf_devlink(struct ice_vf *vf)
+{
+}
 #endif /* !CONFIG_PCI_IOV */
 
 #endif /* _ICE_VF_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/virt/rss.h b/drivers/net/ethernet/intel/ice/virt/rss.h
index 784d4c43ce8b..388f980b4cdf 100644
--- a/drivers/net/ethernet/intel/ice/virt/rss.h
+++ b/drivers/net/ethernet/intel/ice/virt/rss.h
@@ -14,5 +14,6 @@ int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg);
 int ice_vc_config_rss_hfunc(struct ice_vf *vf, u8 *msg);
 int ice_vc_get_rss_hashcfg(struct ice_vf *vf);
 int ice_vc_set_rss_hashcfg(struct ice_vf *vf, u8 *msg);
+int ice_vc_get_max_rss_qregion(struct ice_vf *vf);
 
 #endif /* _ICE_VIRT_RSS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.h b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
index f7f909424098..c7e074726f8a 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
@@ -78,6 +78,10 @@ struct ice_virtchnl_ops {
 	int (*get_ptp_cap)(struct ice_vf *vf,
 			   const struct virtchnl_ptp_caps *msg);
 	int (*get_phc_time)(struct ice_vf *vf);
+	int (*get_max_rss_qregion)(struct ice_vf *vf);
+	int (*ena_qs_v2_msg)(struct ice_vf *vf, u8 *msg, u16 msglen);
+	int (*dis_qs_v2_msg)(struct ice_vf *vf, u8 *msg, u16 msglen);
+	int (*map_q_vector_msg)(struct ice_vf *vf, u8 *msg, u16 msglen);
 };
 
 #ifdef CONFIG_PCI_IOV
diff --git a/drivers/net/ethernet/intel/ice/devlink/resource.c b/drivers/net/ethernet/intel/ice/devlink/resource.c
index 42b65730ea52..dd2410f266b6 100644
--- a/drivers/net/ethernet/intel/ice/devlink/resource.c
+++ b/drivers/net/ethernet/intel/ice/devlink/resource.c
@@ -104,6 +104,16 @@ void ice_free_rss_lut_flr(struct ice_pf *pf)
 	}		
 }
 
+void ice_free_rss_lut_vf(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+
+	scoped_guard(ice_adapter_devl, pf->adapter) {
+		ice_devl_res_free(pf, ICE_RSS_LUT_GLOBAL, vf);
+		ice_devl_res_free(pf, ICE_RSS_LUT_PF, vf);
+	}
+}
+
 static int ice_devl_res_owned_idx(struct ice_adapter *adapter,
 				  enum ice_devl_resource_id res_id, void *owner)
 {
@@ -175,6 +185,37 @@ static u64 ice_rss_lut_pf_occ_get_both(void *priv)
 		       ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_GLOBAL, pf);
 }
 
+static u64 ice_rss_lut_vf_occ_get_global(void *priv)
+{
+	struct ice_adapter *adapter;
+	struct ice_vf *vf = priv;
+
+	adapter = vf->pf->adapter;
+	scoped_guard(ice_adapter_devl, adapter)
+		return ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_GLOBAL, vf);
+}
+
+static u64 ice_rss_lut_vf_occ_get_pf(void *priv)
+{
+	struct ice_adapter *adapter;
+	struct ice_vf *vf = priv;
+
+	adapter = vf->pf->adapter;
+	scoped_guard(ice_adapter_devl, adapter)
+		return ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_PF, vf);
+}
+
+static u64 ice_rss_lut_vf_occ_get_both(void *priv)
+{
+	struct ice_adapter *adapter;
+	struct ice_vf *vf = priv;
+
+	adapter = vf->pf->adapter;
+	scoped_guard(ice_adapter_devl, adapter)
+		return ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_PF, vf) +
+		       ice_is_devl_res_owned_by(adapter, ICE_RSS_LUT_GLOBAL, vf);
+}
+
 static int ice_devl_resource_deny_occ_set(u64 size,
 					  struct netlink_ext_ack *extack,
 					  void *priv)
@@ -220,6 +261,7 @@ static int ice_maybe_change_rss_lut(struct ice_pf *pf, void *owner,
 	struct ice_hw *hw = &pf->hw;
 	enum ice_lut_type lut_type;
 	int err, lut_size, lut_id;
+	struct ice_vf *vf = NULL;
 	struct ice_vsi *vsi;
 	u8 *lut;
 
@@ -246,7 +288,8 @@ static int ice_maybe_change_rss_lut(struct ice_pf *pf, void *owner,
 	if (pf == owner) {
 		vsi = ice_get_main_vsi(pf);
 	} else {
-		return -EOPNOTSUPP;
+		vf = owner;
+		vsi = ice_get_vf_vsi(vf);
 	}
 
 	lut_size = ice_lut_type_to_size(lut_type);
@@ -266,6 +309,11 @@ static int ice_maybe_change_rss_lut(struct ice_pf *pf, void *owner,
 
 	vsi->rss_table_size = lut_size;
 	vsi->rss_lut_type = lut_type;
+	if (vf) {
+		vsi->rss_size = ice_lut_type_to_qs_num(lut_type);
+		vsi->flags |= ICE_VSI_FLAG_RELOAD;
+		ice_schedule_vf_reset(vf);
+	}
 out:
 	kfree(lut);
 	return err;
@@ -354,6 +402,30 @@ static int ice_rss_lut_pf_occ_set_global(u64 size,
 					   ICE_ANY_SLOT, extack);
 }
 
+static int ice_rss_lut_vf_occ_set_pf(u64 size, struct netlink_ext_ack *extack,
+				     void *occ_priv)
+{
+	struct ice_vf *vf = occ_priv;
+	struct ice_pf *pf = vf->pf;
+	int pf_id = pf->hw.pf_id;
+
+	scoped_guard(ice_adapter_devl, pf->adapter)
+		return ice_devl_res_change(size, ICE_RSS_LUT_PF, pf, vf, pf_id,
+					   extack);
+}
+
+static int ice_rss_lut_vf_occ_set_global(u64 size,
+					 struct netlink_ext_ack *extack,
+					 void *occ_priv)
+{
+	struct ice_vf *vf = occ_priv;
+	struct ice_pf *pf = vf->pf;
+
+	scoped_guard(ice_adapter_devl, pf->adapter)
+		return ice_devl_res_change(size, ICE_RSS_LUT_GLOBAL, pf, vf,
+					   ICE_ANY_SLOT, extack);
+}
+
 /**
  * ice_take_rss_lut_pf - allocate PF RSS LUT for PF
  * @pf: the PF device that PF LUT is physically on, and to allocate it for
@@ -467,3 +539,34 @@ void ice_devl_pf_resources_register(struct ice_pf *pf)
 	devl_assert_locked(devlink);
 	ice_devl_res_register(devlink, pf_resources, pf);
 }
+
+void ice_devlink_vf_resources_register(struct ice_vf *vf)
+{
+	struct ice_devl_resource vf_resources[ICE_DEVL_RESOURCES_COUNT] = {
+		[ICE_RSS_LUT_GLOBAL] = {
+			.name = "lut_512",
+			.parent_id = ICE_RSS_LUT_BOTH,
+			.max_size = 1,
+			.get = ice_rss_lut_vf_occ_get_global,
+			.set = ice_rss_lut_vf_occ_set_global,
+		},
+		[ICE_RSS_LUT_PF] = {
+			.name = "lut_2048",
+			.parent_id = ICE_RSS_LUT_BOTH,
+			.max_size = 1,
+			.get = ice_rss_lut_vf_occ_get_pf,
+			.set = ice_rss_lut_vf_occ_set_pf,
+		},
+		[ICE_RSS_LUT_BOTH] = {
+			.name = "rss",
+			.parent_id = ICE_TOP_RESOURCE,
+			.max_size = 2,
+			.get = ice_rss_lut_vf_occ_get_both,
+			.set = ice_devl_resource_deny_occ_set,
+		},
+	};
+	struct devlink *devlink = vf->devlink;
+
+	scoped_guard(devl, devlink)
+		ice_devl_res_register(devlink, vf_resources, vf);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index e47f2f881701..2ab44eca7e11 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -12,6 +12,23 @@
 
 #include "devlink/resource.h"
 
+#define ICE_LUT_VSI_MAX_QS	16
+#define ICE_LUT_GLOBAL_MAX_QS	64
+#define ICE_LUT_PF_MAX_QS	256
+
+u16 ice_lut_type_to_qs_num(enum ice_lut_type lut_type)
+{
+	switch (lut_type) {
+	case ICE_LUT_PF:
+		return ICE_LUT_PF_MAX_QS;
+	case ICE_LUT_GLOBAL:
+		return ICE_LUT_GLOBAL_MAX_QS;
+	case ICE_LUT_VSI:
+	default:
+		return ICE_LUT_VSI_MAX_QS;
+	}
+}
+
 /**
  * ice_vsi_type_str - maps VSI type enum to string equivalents
  * @vsi_type: VSI type enum
@@ -1547,8 +1564,6 @@ int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 	    (test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))) {
 		vsi->rss_size = min_t(u16, vsi->rss_size, vsi->ch_rss_size);
 	} else {
-		vsi->rss_size = min_t(u16, vsi->rss_size, vsi->num_rxq);
-
 		/* If orig_rss_size is valid and it is less than determined
 		 * main VSI's rss_size, update main VSI's rss_size to be
 		 * orig_rss_size so that when tc-qdisc is deleted, main VSI
@@ -2572,8 +2587,14 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	ice_vsi_free_arrays(vsi);
 
 	if (vsi->flags & ICE_VSI_FLAG_INIT) {
-		if (vsi->type == ICE_VSI_PF)
+		if (vsi->type == ICE_VSI_PF) {
 			ice_free_rss_lut_flr(pf);
+		} else if (vsi->type == ICE_VSI_VF) {
+			struct ice_vf *vf = vsi->vf;
+
+			vf->num_req_qs = 0;
+			vf->num_vf_qs = min(vf->num_vf_qs, pf->vfs.num_qps_per);
+		}
 	}
 
 	/* SR-IOV determines needed MSIX resources all at once instead of per
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 94232f4a45ad..606e863f0f54 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2275,6 +2275,30 @@ static void ice_check_media_subtask(struct ice_pf *pf)
 	}
 }
 
+static void ice_handle_deferred_vf_reset(struct ice_pf *pf)
+{
+	struct ice_vf *vf;
+	unsigned int bkt;
+	int err;
+
+	mutex_lock(&pf->vfs.table_lock);
+	ice_for_each_vf(pf, bkt, vf) {
+		if (!vf->needs_deferred_reset)
+			continue;
+
+		dev_info(ice_pf_to_dev(pf), "doing deferred reset of VF %d\n",
+			 vf->vf_id);
+		err = ice_reset_vf(vf, ICE_VF_RESET_NOTIFY | ICE_VF_RESET_LOCK);
+		if (err)
+			dev_warn(ice_pf_to_dev(pf), "deferred reset of VF %d failed: %d\n",
+				 vf->vf_id, err);
+
+		vf->needs_deferred_reset = 0;
+		ice_put_vf(vf);
+	}
+	mutex_unlock(&pf->vfs.table_lock);
+}
+
 static void ice_service_task_recovery_mode(struct work_struct *work)
 {
 	struct ice_pf *pf = container_of(work, struct ice_pf, serv_task);
@@ -2357,6 +2381,7 @@ static void ice_service_task(struct work_struct *work)
 		return;
 	}
 
+	ice_handle_deferred_vf_reset(pf);
 	ice_process_vflr_event(pf);
 	ice_clean_mailboxq_subtask(pf);
 	ice_clean_sbq_subtask(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 28f9e68f46cd..3de352e8f45b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -655,6 +655,15 @@ static void ice_sriov_post_vsi_rebuild(struct ice_vf *vf)
 	wr32(&vf->pf->hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
 }
 
+static struct ice_q_vector *ice_sriov_get_q_vector(struct ice_vsi *vsi,
+						   u16 vector_id)
+{
+	/* Subtract non queue vector from vector_id passed by VF
+	 * to get actual number of VSI queue vector array index
+	 */
+	return vsi->q_vectors[vector_id - ICE_NONQ_VECS_VF];
+}
+
 static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.reset_type = ICE_VF_RESET,
 	.free = ice_sriov_free_vf,
@@ -665,6 +674,7 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
 	.irq_close = NULL,
 	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
+	.get_q_vector = ice_sriov_get_q_vector,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 55ad03085bc9..6e1f1c9733ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -6,6 +6,7 @@
 #include "ice_lib.h"
 #include "ice_fltr.h"
 #include "virt/allowlist.h"
+#include "devlink/resource.h"
 
 /* Public functions which may be accessed by all driver files */
 
@@ -248,6 +249,8 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 	vf->vf_ops->clear_reset_trigger(vf);
 }
 
+int ice_vsi_realloc_stat_arrays(struct ice_vsi *);
+
 /**
  * ice_vf_reconfig_vsi - Reconfigure a VF VSI with the device
  * @vf: VF to reconfigure the VSI for
@@ -989,6 +992,16 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	return err;
 }
 
+/**
+ * ice_schedule_vf_reset - reset VF, deferred to next service_task context
+ * @vf: VF to reset
+ */
+void ice_schedule_vf_reset(struct ice_vf *vf)
+{
+	kref_get(&vf->refcnt);
+	vf->needs_deferred_reset = 1;
+}
+
 /**
  * ice_set_vf_state_dis - Set VF state to disabled
  * @vf: pointer to the VF structure
@@ -1043,6 +1056,9 @@ void ice_deinitialize_vf_entry(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
 
+	ice_free_rss_lut_vf(vf);
+	ice_deinit_vf_devlink(vf);
+
 	if (!ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
 		list_del(&vf->mbx_info.list_entry);
 }
@@ -1429,3 +1445,29 @@ void ice_vf_update_mac_lldp_num(struct ice_vf *vf, struct ice_vsi *vsi,
 	if (was_ena != is_ena)
 		ice_vsi_cfg_sw_lldp(vsi, false, is_ena);
 }
+
+void ice_init_vf_devlink(struct ice_vf *vf)
+{
+	static const struct devlink_ops noop = {};
+	struct device *dev = &vf->vfdev->dev;
+	struct devlink *devlink;
+
+	devlink = devlink_alloc(&noop, 0, dev);
+	if (!devlink)
+		return;
+
+	devl_nested_devlink_set(priv_to_devlink(vf->pf), devlink);
+	devlink_register(devlink);
+	vf->devlink = devlink;
+
+	ice_devlink_vf_resources_register(vf);
+}
+
+void ice_deinit_vf_devlink(struct ice_vf *vf)
+{
+	struct devlink *devlink = vf->devlink;
+
+	devlink_resources_unregister(devlink);
+	devlink_unregister(devlink);
+	devlink_free(devlink);
+}
diff --git a/drivers/net/ethernet/intel/ice/virt/rss.c b/drivers/net/ethernet/intel/ice/virt/rss.c
index 960012ca91b5..9b23ad40f7e2 100644
--- a/drivers/net/ethernet/intel/ice/virt/rss.c
+++ b/drivers/net/ethernet/intel/ice/virt/rss.c
@@ -1746,7 +1746,13 @@ int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (vrl->lut_entries != ICE_LUT_VSI_SIZE) {
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (vrl->lut_entries != vsi->rss_table_size) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
@@ -1762,7 +1768,7 @@ int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (ice_set_rss_lut(vsi, vrl->lut, ICE_LUT_VSI_SIZE))
+	if (ice_set_rss_lut(vsi, vrl->lut, vrl->lut_entries))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
@@ -1920,3 +1926,29 @@ int ice_vc_set_rss_hashcfg(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+int ice_vc_get_max_rss_qregion(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_max_rss_qregion max_rss_qregion = {};
+	struct ice_vsi *vsi;
+	int err, len = 0;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto reply;
+	}
+
+	vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto reply;
+	}
+
+	len = sizeof(max_rss_qregion);
+	max_rss_qregion.vport_id = vsi->vsi_num;
+	max_rss_qregion.qregion_width = ilog2(vsi->rss_table_size);
+reply:
+	err = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_MAX_RSS_QREGION, v_ret,
+				    (u8 *)&max_rss_qregion, len);
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.c b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
index 06d2f9be93ae..b7ece2c36165 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
@@ -246,10 +246,10 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_vf_resource *vfres = NULL;
+	int ret, allowed_queues, len = 0;
 	struct ice_hw *hw = &vf->pf->hw;
+	enum ice_lut_type lut_type;
 	struct ice_vsi *vsi;
-	int len = 0;
-	int ret;
 
 	if (ice_check_vf_init(vf)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -330,16 +330,24 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_PTP;
 
 	vfres->num_vsis = 1;
-	/* Tx and Rx queue are equal for VF */
-	vfres->num_queue_pairs = vsi->num_txq;
+
+	lut_type = vsi->rss_lut_type;
+	if (vf->driver_caps & VIRTCHNL_VF_LARGE_NUM_QPAIRS &&
+	    lut_type != ICE_LUT_VSI) {
+		vfres->vf_cap_flags |= VIRTCHNL_VF_LARGE_NUM_QPAIRS;
+		allowed_queues = ice_lut_type_to_qs_num(lut_type);
+	} else {
+		allowed_queues = vsi->num_txq;
+	}
+	vfres->num_queue_pairs = allowed_queues;
 	vfres->max_vectors = vf->num_msix;
 	vfres->rss_key_size = ICE_VSIQF_HKEY_ARRAY_SIZE;
-	vfres->rss_lut_size = ICE_LUT_VSI_SIZE;
+	vfres->rss_lut_size = vsi->rss_table_size;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
 
 	vfres->vsi_res[0].vsi_id = ICE_VF_VSI_ID;
 	vfres->vsi_res[0].vsi_type = VIRTCHNL_VSI_SRIOV;
-	vfres->vsi_res[0].num_queue_pairs = vsi->num_txq;
+	vfres->vsi_res[0].num_queue_pairs = allowed_queues;
 	ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
 			vf->hw_lan_addr);
 
@@ -2539,6 +2547,10 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.cfg_q_quanta = ice_vc_cfg_q_quanta,
 	.get_ptp_cap = ice_vc_get_ptp_cap,
 	.get_phc_time = ice_vc_get_phc_time,
+	.get_max_rss_qregion = ice_vc_get_max_rss_qregion,
+	.ena_qs_v2_msg = ice_vc_ena_qs_v2_msg,
+	.dis_qs_v2_msg = ice_vc_dis_qs_v2_msg,
+	.map_q_vector_msg = ice_vc_map_q_vector_msg,
 	/* If you add a new op here please make sure to add it to
 	 * ice_virtchnl_repr_ops as well.
 	 */
@@ -2676,6 +2688,10 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.cfg_q_quanta = ice_vc_cfg_q_quanta,
 	.get_ptp_cap = ice_vc_get_ptp_cap,
 	.get_phc_time = ice_vc_get_phc_time,
+	.get_max_rss_qregion = ice_vc_get_max_rss_qregion,
+	.ena_qs_v2_msg = ice_vc_ena_qs_v2_msg,
+	.dis_qs_v2_msg = ice_vc_dis_qs_v2_msg,
+	.map_q_vector_msg = ice_vc_map_q_vector_msg,
 };
 
 /**
@@ -2745,6 +2761,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	u32 v_opcode = le32_to_cpu(event->desc.cookie_high);
 	s16 vf_id = le16_to_cpu(event->desc.retval);
 	const struct ice_virtchnl_ops *ops;
+	bool need_devlink_init = false;
 	u16 msglen = event->msg_len;
 	u8 *msg = event->msg_buf;
 	struct ice_vf *vf = NULL;
@@ -2783,6 +2800,8 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 			err = -EINVAL;
 	}
 
+	need_devlink_init = !vf->devlink;
+
 error_handler:
 	if (err) {
 		ice_vc_send_msg_to_vf(vf, v_opcode, VIRTCHNL_STATUS_ERR_PARAM,
@@ -2907,6 +2926,20 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_GET_QOS_CAPS:
 		err = ops->get_qos_caps(vf);
 		break;
+	case VIRTCHNL_OP_GET_MAX_RSS_QREGION:
+		err = ops->get_max_rss_qregion(vf);
+		break;
+	case VIRTCHNL_OP_ENABLE_QUEUES_V2:
+		err = ops->ena_qs_v2_msg(vf, msg, msglen);
+		if (!err)
+			ice_vc_notify_vf_link_state(vf);
+		break;
+	case VIRTCHNL_OP_DISABLE_QUEUES_V2:
+		err = ops->dis_qs_v2_msg(vf, msg, msglen);
+		break;
+	case VIRTCHNL_OP_MAP_QUEUE_VECTOR:
+		err = ops->map_q_vector_msg(vf, msg, msglen);
+		break;
 	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
 		err = ops->cfg_q_bw(vf, msg);
 		break;
@@ -2938,5 +2971,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 
 finish:
 	mutex_unlock(&vf->cfg_lock);
+	if (need_devlink_init)
+		ice_init_vf_devlink(vf);
 	ice_put_vf(vf);
 }
-- 
2.39.3

