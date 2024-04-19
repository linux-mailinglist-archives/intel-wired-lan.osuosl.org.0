Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189E78AAB5B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 11:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 417D0402E4;
	Fri, 19 Apr 2024 09:20:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u-lWYf9pheGY; Fri, 19 Apr 2024 09:20:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E28B140489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713518442;
	bh=ToO8cs/iiKffaMk1kgRW2H7LzvEW3gZLNhpTlUcq4to=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GR6vsJ/F8LOB5s3snQ8ZpYfQJFZsF1CBvWElrdao1yiyshLLqr7WFIz6BMpDD2MKb
	 36EUchjwX7N0nA4kfhiXobo/1WLgmZTkCbP9IdRcFvm027gRl/lhEnuMxYdh2TzU3I
	 I5WfQd6qhESbhNWkyBRYr/1K/76yWROsT+wQydwQZnrg7MQJB+1iNCsswQswGtAPiL
	 e7h4E5yQUo6z4vWyajddHpTCnF3TSR2V8ibvEcokmhzUa6D5eMRVlcA+Jm3Rv03IHf
	 sTiNjoE8TDEVrIMHgtFtOj0+TcpnLtIMkWphAfrghvVXYF2qQBozxRg6dxgIlFFEF7
	 NwduMV4ni6P0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E28B140489;
	Fri, 19 Apr 2024 09:20:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FF481BF82D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 09:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B876607A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 09:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PSMXXvVuJ19r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 09:20:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 050EF6062A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 050EF6062A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 050EF6062A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 09:20:37 +0000 (UTC)
X-CSE-ConnectionGUID: 3JTVB7GvRZqdXywzGW7JiA==
X-CSE-MsgGUID: JMkrIq4LR6WC369XOyrVcg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9238399"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9238399"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:20:37 -0700
X-CSE-ConnectionGUID: HwqDJ7lqQs+uRd1N6u90Mg==
X-CSE-MsgGUID: M4Pp741XSSSFRXlUYqLYpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="60716016"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 19 Apr 2024 02:20:33 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1A99428197;
 Fri, 19 Apr 2024 10:20:25 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Apr 2024 05:11:04 -0400
Message-Id: <20240419091104.13495-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713518438; x=1745054438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kLUTdPqERbSM74gcLikb57dC1Eif7yEcCMXkhnb6xPo=;
 b=d6kTlc73NVNTxh/QKyVCWtfpuKMpwca/nxx4QE+uWkvsktZdxEqXlTP5
 f5a5gCOqHUQI1aady3cvDCCSKoTuOPVIW6liOhSSEe6bp4iB1PRbl2m0m
 Vr5ZUWiYRuU71VZ9G2xxti+x6N2OyRp6gWOMotzt0mhmSA62r3uzkmFHv
 VSUWsW/RdrB1EUKu8s0pp/LBk7PsjQ9V/Q7KPSXShEXAkEvdpyq8w1RIW
 NBb6TANyMTZ/SCH8kuPCk94m16gjGcP00Tl9ThO0Rdvope0rZH+U3urYq
 tI49SnVfvB3Wnq2wZb1JHLjHZGXWPBTB8dNEUVTaw5QimKsdwXKmawtSA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d6kTlc73
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor struct
 ice_vsi_cfg_params to be inside of struct ice_vsi
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
Cc: netdev@vger.kernel.org, Vaishnavi Tipireddy <vaishnavi.tipireddy@intel.com>,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor struct ice_vsi_cfg_params to be embedded into struct ice_vsi.
Prior to that the members of the struct were scattered around ice_vsi,
and were copy-pasted for purposes of reinit.
Now we have struct handy, and it is easier to have something sticky
in the flags field.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Vaishnavi Tipireddy <vaishnavi.tipireddy@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  |  6 +--
 drivers/net/ethernet/intel/ice/ice.h          | 14 ++++---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 33 ++++++----------
 drivers/net/ethernet/intel/ice/ice_lib.h      | 39 +------------------
 drivers/net/ethernet/intel/ice/ice_main.c     |  8 ++--
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  8 ++--
 7 files changed, 30 insertions(+), 80 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index be9244bb8bbc..0f1a46636b45 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1043,18 +1043,16 @@ static int ice_devlink_set_parent(struct devlink_rate *devlink_rate,
 static int ice_devlink_reinit_up(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
-	struct ice_vsi_cfg_params params;
 	int err;
 
 	err = ice_init_dev(pf);
 	if (err)
 		return err;
 
-	params = ice_vsi_to_params(vsi);
-	params.flags = ICE_VSI_FLAG_INIT;
+	vsi->flags = ICE_VSI_FLAG_INIT;
 
 	rtnl_lock();
-	err = ice_vsi_cfg(vsi, &params);
+	err = ice_vsi_cfg(vsi);
 	rtnl_unlock();
 	if (err)
 		goto err_vsi_cfg;
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 67a3236ab1fc..6ad8002b22e1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -331,7 +331,6 @@ struct ice_vsi {
 	struct net_device *netdev;
 	struct ice_sw *vsw;		 /* switch this VSI is on */
 	struct ice_pf *back;		 /* back pointer to PF */
-	struct ice_port_info *port_info; /* back pointer to port_info */
 	struct ice_rx_ring **rx_rings;	 /* Rx ring array */
 	struct ice_tx_ring **tx_rings;	 /* Tx ring array */
 	struct ice_q_vector **q_vectors; /* q_vector array */
@@ -349,12 +348,9 @@ struct ice_vsi {
 	/* tell if only dynamic irq allocation is allowed */
 	bool irq_dyn_alloc;
 
-	enum ice_vsi_type type;
 	u16 vsi_num;			/* HW (absolute) index of this VSI */
 	u16 idx;			/* software index in pf->vsi[] */
 
-	struct ice_vf *vf;		/* VF associated with this VSI */
-
 	u16 num_gfltr;
 	u16 num_bfltr;
 
@@ -446,12 +442,18 @@ struct ice_vsi {
 	u8 old_numtc;
 	u16 old_ena_tc;
 
-	struct ice_channel *ch;
-
 	/* setup back reference, to which aggregator node this VSI
 	 * corresponds to
 	 */
 	struct ice_agg_node *agg_node;
+
+	struct_group_tagged(ice_vsi_cfg_params, params,
+		struct ice_port_info *port_info; /* back pointer to port_info */
+		struct ice_channel *ch; /* VSI's channel structure, may be NULL */
+		struct ice_vf *vf; /* VF associated with this VSI, may be NULL */
+		u32 flags; /* VSI flags used for rebuild and configuration */
+		enum ice_vsi_type type; /* the type of the VSI */
+	);
 } ____cacheline_internodealigned_in_smp;
 
 /* struct that defines an interrupt vector */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d06e7c82c433..5371e91f6bbb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2227,10 +2227,8 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
 /**
  * ice_vsi_cfg_def - configure default VSI based on the type
  * @vsi: pointer to VSI
- * @params: the parameters to configure this VSI with
  */
-static int
-ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
+static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct ice_pf *pf = vsi->back;
@@ -2238,7 +2236,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 
 	vsi->vsw = pf->first_sw;
 
-	ret = ice_vsi_alloc_def(vsi, params->ch);
+	ret = ice_vsi_alloc_def(vsi, vsi->ch);
 	if (ret)
 		return ret;
 
@@ -2263,7 +2261,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 	ice_vsi_set_tc_cfg(vsi);
 
 	/* create the VSI */
-	ret = ice_vsi_init(vsi, params->flags);
+	ret = ice_vsi_init(vsi, vsi->flags);
 	if (ret)
 		goto unroll_get_qs;
 
@@ -2383,23 +2381,16 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 /**
  * ice_vsi_cfg - configure a previously allocated VSI
  * @vsi: pointer to VSI
- * @params: parameters used to configure this VSI
  */
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
+int ice_vsi_cfg(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	int ret;
 
-	if (WARN_ON(params->type == ICE_VSI_VF && !params->vf))
+	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
 
-	vsi->type = params->type;
-	vsi->port_info = params->pi;
-
-	/* For VSIs which don't have a connected VF, this will be NULL */
-	vsi->vf = params->vf;
-
-	ret = ice_vsi_cfg_def(vsi, params);
+	ret = ice_vsi_cfg_def(vsi);
 	if (ret)
 		return ret;
 
@@ -2485,7 +2476,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 	 * a port_info structure for it.
 	 */
 	if (WARN_ON(!(params->flags & ICE_VSI_FLAG_INIT)) ||
-	    WARN_ON(!params->pi))
+	    WARN_ON(!params->port_info))
 		return NULL;
 
 	vsi = ice_vsi_alloc(pf);
@@ -2494,7 +2485,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 		return NULL;
 	}
 
-	ret = ice_vsi_cfg(vsi, params);
+	vsi->params = *params;
+	ret = ice_vsi_cfg(vsi);
 	if (ret)
 		goto err_vsi_cfg;
 
@@ -3041,7 +3033,6 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
  */
 int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 {
-	struct ice_vsi_cfg_params params = {};
 	struct ice_coalesce_stored *coalesce;
 	int prev_num_q_vectors;
 	struct ice_pf *pf;
@@ -3050,9 +3041,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	if (!vsi)
 		return -EINVAL;
 
-	params = ice_vsi_to_params(vsi);
-	params.flags = vsi_flags;
-
+	vsi->flags = vsi_flags;
 	pf = vsi->back;
 	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
@@ -3062,7 +3051,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 		goto err_vsi_cfg;
 
 	ice_vsi_decfg(vsi);
-	ret = ice_vsi_cfg_def(vsi, &params);
+	ret = ice_vsi_cfg_def(vsi);
 	if (ret)
 		goto err_vsi_cfg;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 9cd23afe5f15..94ce8964dda6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -11,43 +11,6 @@
 #define ICE_VSI_FLAG_INIT	BIT(0)
 #define ICE_VSI_FLAG_NO_INIT	0
 
-/**
- * struct ice_vsi_cfg_params - VSI configuration parameters
- * @pi: pointer to the port_info instance for the VSI
- * @ch: pointer to the channel structure for the VSI, may be NULL
- * @vf: pointer to the VF associated with this VSI, may be NULL
- * @type: the type of VSI to configure
- * @flags: VSI flags used for rebuild and configuration
- *
- * Parameter structure used when configuring a new VSI.
- */
-struct ice_vsi_cfg_params {
-	struct ice_port_info *pi;
-	struct ice_channel *ch;
-	struct ice_vf *vf;
-	enum ice_vsi_type type;
-	u32 flags;
-};
-
-/**
- * ice_vsi_to_params - Get parameters for an existing VSI
- * @vsi: the VSI to get parameters for
- *
- * Fill a parameter structure for reconfiguring a VSI with its current
- * parameters, such as during a rebuild operation.
- */
-static inline struct ice_vsi_cfg_params ice_vsi_to_params(struct ice_vsi *vsi)
-{
-	struct ice_vsi_cfg_params params = {};
-
-	params.pi = vsi->port_info;
-	params.ch = vsi->ch;
-	params.vf = vsi->vf;
-	params.type = vsi->type;
-
-	return params;
-}
-
 const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
 bool ice_pf_state_is_nominal(struct ice_pf *pf);
@@ -101,7 +64,7 @@ void ice_vsi_decfg(struct ice_vsi *vsi);
 void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
 
 int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params);
+int ice_vsi_cfg(struct ice_vsi *vsi);
 
 bool ice_is_reset_in_progress(unsigned long *state);
 int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 80bc83f6e1ab..6e4d261d9e84 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3684,7 +3684,7 @@ ice_pf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 	struct ice_vsi_cfg_params params = {};
 
 	params.type = ICE_VSI_PF;
-	params.pi = pi;
+	params.port_info = pi;
 	params.flags = ICE_VSI_FLAG_INIT;
 
 	return ice_vsi_setup(pf, &params);
@@ -3697,7 +3697,7 @@ ice_chnl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	struct ice_vsi_cfg_params params = {};
 
 	params.type = ICE_VSI_CHNL;
-	params.pi = pi;
+	params.port_info = pi;
 	params.ch = ch;
 	params.flags = ICE_VSI_FLAG_INIT;
 
@@ -3718,7 +3718,7 @@ ice_ctrl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 	struct ice_vsi_cfg_params params = {};
 
 	params.type = ICE_VSI_CTRL;
-	params.pi = pi;
+	params.port_info = pi;
 	params.flags = ICE_VSI_FLAG_INIT;
 
 	return ice_vsi_setup(pf, &params);
@@ -3738,7 +3738,7 @@ ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 	struct ice_vsi_cfg_params params = {};
 
 	params.type = ICE_VSI_LB;
-	params.pi = pi;
+	params.port_info = pi;
 	params.flags = ICE_VSI_FLAG_INIT;
 
 	return ice_vsi_setup(pf, &params);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index a60dacf8942a..067712f4923f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -225,7 +225,7 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 	struct ice_vsi *vsi;
 
 	params.type = ICE_VSI_VF;
-	params.pi = ice_vf_get_port_info(vf);
+	params.port_info = ice_vf_get_port_info(vf);
 	params.vf = vf;
 	params.flags = ICE_VSI_FLAG_INIT;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c51e2482cad2..cf9f56a39b61 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -259,20 +259,18 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 int ice_vf_reconfig_vsi(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	struct ice_vsi_cfg_params params = {};
 	struct ice_pf *pf = vf->pf;
 	int err;
 
 	if (WARN_ON(!vsi))
 		return -EINVAL;
 
-	params = ice_vsi_to_params(vsi);
-	params.flags = ICE_VSI_FLAG_NO_INIT;
+	vsi->flags = ICE_VSI_FLAG_NO_INIT;
 
 	ice_vsi_decfg(vsi);
 	ice_fltr_remove_all(vsi);
 
-	err = ice_vsi_cfg(vsi, &params);
+	err = ice_vsi_cfg(vsi);
 	if (err) {
 		dev_err(ice_pf_to_dev(pf),
 			"Failed to reconfigure the VF%u's VSI, error %d\n",
@@ -1243,7 +1241,7 @@ struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
 	struct ice_vsi *vsi;
 
 	params.type = ICE_VSI_CTRL;
-	params.pi = ice_vf_get_port_info(vf);
+	params.port_info = ice_vf_get_port_info(vf);
 	params.vf = vf;
 	params.flags = ICE_VSI_FLAG_INIT;
 
-- 
2.38.1

