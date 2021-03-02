Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 405C232A957
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:25:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF984606BD;
	Tue,  2 Mar 2021 18:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h4-STAUJ8eaO; Tue,  2 Mar 2021 18:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4812E606B6;
	Tue,  2 Mar 2021 18:25:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1096D1BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33DD9606E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ijt1zoPNYRWq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 091E4606CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:18 +0000 (UTC)
IronPort-SDR: yeoX37GR5npYvzJ5XGvuisr0Wk0uTi21LPSYkxsJt4LRnzjqZ9GlZFMMzMYk34Q/FmfFCxwTnG
 iYGT0WGDuP2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263186"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263186"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:17 -0800
IronPort-SDR: 218xQRZ4wy4QNXMeEmG4XTBZQ1qkhb6nE9mWYf+VLy6VmLOm4+7W4K2TOtQdOJy/lQiHClmdsi
 9xBjjQbrGpfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915054"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:36 -0800
Message-Id: <20210302181545.51822-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 04/13] ice: Refactor ice_set/get_rss
 into LUT and key specific functions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently ice_set/get_rss are used to set/get the RSS LUT and/or RSS
key. However nearly everywhere these functions are called only the LUT
or key are set/get. Also, making this change reduces how many things
ice_set/get_rss are doing. Fix this by adding ice_set/get_rss_lut and
ice_set/get_rss_key functions.

Also, consolidate all calls for setting/getting the RSS LUT and RSS Key
to use ice_set/get_rss_lut() and ice_set/get_rss_key().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   6 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  43 +++---
 drivers/net/ethernet/intel/ice/ice_lib.c      |  42 ++----
 drivers/net/ethernet/intel/ice/ice_main.c     | 139 ++++++++++--------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   4 +-
 5 files changed, 117 insertions(+), 117 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5304296c1e39..4041859ab89b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -621,8 +621,10 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi);
 int
 ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	     u32 flags);
-int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
-int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
+int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
+int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
+int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed);
+int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed);
 void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size);
 int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b0da7fe5468b..7bc9cdefa169 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3170,7 +3170,7 @@ ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
-	int ret = 0, i;
+	int err, i;
 	u8 *lut;
 
 	if (hfunc)
@@ -3189,17 +3189,20 @@ ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
 	if (!lut)
 		return -ENOMEM;
 
-	if (ice_get_rss(vsi, key, lut, vsi->rss_table_size)) {
-		ret = -EIO;
+	err = ice_get_rss_key(vsi, key);
+	if (err)
+		goto out;
+
+	err = ice_get_rss_lut(vsi, lut, vsi->rss_table_size);
+	if (err)
 		goto out;
-	}
 
 	for (i = 0; i < vsi->rss_table_size; i++)
 		indir[i] = (u32)(lut[i]);
 
 out:
 	kfree(lut);
-	return ret;
+	return err;
 }
 
 /**
@@ -3220,7 +3223,7 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
-	u8 *seed = NULL;
+	int err;
 
 	dev = ice_pf_to_dev(pf);
 	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
@@ -3241,7 +3244,10 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 				return -ENOMEM;
 		}
 		memcpy(vsi->rss_hkey_user, key, ICE_VSIQF_HKEY_ARRAY_SIZE);
-		seed = vsi->rss_hkey_user;
+
+		err = ice_set_rss_key(vsi, vsi->rss_hkey_user);
+		if (err)
+			return err;
 	}
 
 	if (!vsi->rss_lut_user) {
@@ -3262,8 +3268,9 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 				 vsi->rss_size);
 	}
 
-	if (ice_set_rss(vsi, seed, vsi->rss_lut_user, vsi->rss_table_size))
-		return -EIO;
+	err = ice_set_rss_lut(vsi, vsi->rss_lut_user, vsi->rss_table_size);
+	if (err)
+		return err;
 
 	return 0;
 }
@@ -3358,12 +3365,10 @@ static int ice_get_valid_rss_size(struct ice_hw *hw, int new_size)
  */
 static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
 {
-	struct ice_aq_get_set_rss_lut_params set_params = {};
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
 	struct device *dev;
 	struct ice_hw *hw;
-	int err = 0;
+	int err;
 	u8 *lut;
 
 	dev = ice_pf_to_dev(pf);
@@ -3384,18 +3389,10 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
 
 	/* create/set RSS LUT */
 	ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
-	set_params.vsi_handle = vsi->idx;
-	set_params.lut_size = vsi->rss_table_size;
-	set_params.lut_type = vsi->rss_lut_type;
-	set_params.lut = lut;
-	set_params.global_lut_id = 0;
-	status = ice_aq_set_rss_lut(hw, &set_params);
-	if (status) {
-		dev_err(dev, "Cannot set RSS lut, err %s aq_err %s\n",
-			ice_stat_str(status),
+	err = ice_set_rss_lut(vsi, lut, vsi->rss_table_size);
+	if (err)
+		dev_err(dev, "Cannot set RSS lut, err %d aq_err %s\n", err,
 			ice_aq_str(hw->adminq.sq_last_status));
-		err = -EIO;
-	}
 
 	kfree(lut);
 	return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0ded64de38f3..0b0f13ed757f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1326,7 +1326,7 @@ int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
 					 vsi->rss_size);
 	}
 
-	err = ice_set_rss(vsi, NULL, lut, vsi->rss_table_size);
+	err = ice_set_rss_lut(vsi, lut, vsi->rss_table_size);
 	kfree(lut);
 	return err;
 }
@@ -1337,13 +1337,10 @@ int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
  */
 static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 {
-	struct ice_aq_get_set_rss_lut_params set_params = {};
-	struct ice_aqc_get_set_rss_keys *key;
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
 	struct device *dev;
-	int err = 0;
-	u8 *lut;
+	u8 *lut, *key;
+	int err;
 
 	dev = ice_pf_to_dev(pf);
 	vsi->rss_size = min_t(u16, vsi->rss_size, vsi->num_rxq);
@@ -1357,41 +1354,26 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 	else
 		ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
 
-	set_params.vsi_handle = vsi->idx;
-	set_params.lut_size = vsi->rss_table_size;
-	set_params.lut_type = vsi->rss_lut_type;
-	set_params.lut = lut;
-	set_params.global_lut_id = 0;
-	status = ice_aq_set_rss_lut(&pf->hw, &set_params);
-
-	if (status) {
-		dev_err(dev, "set_rss_lut failed, error %s\n",
-			ice_stat_str(status));
-		err = -EIO;
+	err = ice_set_rss_lut(vsi, lut, vsi->rss_table_size);
+	if (err) {
+		dev_err(dev, "set_rss_lut failed, error %d\n", err);
 		goto ice_vsi_cfg_rss_exit;
 	}
 
-	key = kzalloc(sizeof(*key), GFP_KERNEL);
+	key = kzalloc(ICE_GET_SET_RSS_KEY_EXTEND_KEY_SIZE, GFP_KERNEL);
 	if (!key) {
 		err = -ENOMEM;
 		goto ice_vsi_cfg_rss_exit;
 	}
 
 	if (vsi->rss_hkey_user)
-		memcpy(key,
-		       (struct ice_aqc_get_set_rss_keys *)vsi->rss_hkey_user,
-		       ICE_GET_SET_RSS_KEY_EXTEND_KEY_SIZE);
+		memcpy(key, vsi->rss_hkey_user, ICE_GET_SET_RSS_KEY_EXTEND_KEY_SIZE);
 	else
-		netdev_rss_key_fill((void *)key,
-				    ICE_GET_SET_RSS_KEY_EXTEND_KEY_SIZE);
-
-	status = ice_aq_set_rss_key(&pf->hw, vsi->idx, key);
+		netdev_rss_key_fill((void *)key, ICE_GET_SET_RSS_KEY_EXTEND_KEY_SIZE);
 
-	if (status) {
-		dev_err(dev, "set_rss_key failed, error %s\n",
-			ice_stat_str(status));
-		err = -EIO;
-	}
+	err = ice_set_rss_key(vsi, key);
+	if (err)
+		dev_err(dev, "set_rss_key failed, error %d\n", err);
 
 	kfree(key);
 ice_vsi_cfg_rss_exit:
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ed9b226156ce..25a3f06c7828 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6335,99 +6335,118 @@ const char *ice_stat_str(enum ice_status stat_err)
 }
 
 /**
- * ice_set_rss - Set RSS keys and lut
+ * ice_set_rss_lut - Set RSS LUT
  * @vsi: Pointer to VSI structure
- * @seed: RSS hash seed
  * @lut: Lookup table
  * @lut_size: Lookup table size
  *
  * Returns 0 on success, negative on failure
  */
-int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
+int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 {
-	struct ice_pf *pf = vsi->back;
-	struct ice_hw *hw = &pf->hw;
+	struct ice_aq_get_set_rss_lut_params params = {};
+	struct ice_hw *hw = &vsi->back->hw;
 	enum ice_status status;
-	struct device *dev;
 
-	dev = ice_pf_to_dev(pf);
-	if (seed) {
-		struct ice_aqc_get_set_rss_keys *buf =
-				  (struct ice_aqc_get_set_rss_keys *)seed;
+	if (!lut)
+		return -EINVAL;
 
-		status = ice_aq_set_rss_key(hw, vsi->idx, buf);
+	params.vsi_handle = vsi->idx;
+	params.lut_size = lut_size;
+	params.lut_type = vsi->rss_lut_type;
+	params.lut = lut;
 
-		if (status) {
-			dev_err(dev, "Cannot set RSS key, err %s aq_err %s\n",
-				ice_stat_str(status),
-				ice_aq_str(hw->adminq.sq_last_status));
-			return -EIO;
-		}
+	status = ice_aq_set_rss_lut(hw, &params);
+	if (status) {
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
+		return -EIO;
 	}
 
-	if (lut) {
-		struct ice_aq_get_set_rss_lut_params set_params = {
-			.vsi_handle = vsi->idx, .lut_size = lut_size,
-			.lut_type = vsi->rss_lut_type, .lut = lut,
-			.global_lut_id = 0
-		};
+	return 0;
+}
 
-		status = ice_aq_set_rss_lut(hw, &set_params);
-		if (status) {
-			dev_err(dev, "Cannot set RSS lut, err %s aq_err %s\n",
-				ice_stat_str(status),
-				ice_aq_str(hw->adminq.sq_last_status));
-			return -EIO;
-		}
+/**
+ * ice_set_rss_key - Set RSS key
+ * @vsi: Pointer to the VSI structure
+ * @seed: RSS hash seed
+ *
+ * Returns 0 on success, negative on failure
+ */
+int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	enum ice_status status;
+
+	if (!seed)
+		return -EINVAL;
+
+	status = ice_aq_set_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
+	if (status) {
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
+		return -EIO;
 	}
 
 	return 0;
 }
 
 /**
- * ice_get_rss - Get RSS keys and lut
+ * ice_get_rss_lut - Get RSS LUT
  * @vsi: Pointer to VSI structure
- * @seed: Buffer to store the keys
  * @lut: Buffer to store the lookup table entries
  * @lut_size: Size of buffer to store the lookup table entries
  *
  * Returns 0 on success, negative on failure
  */
-int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
+int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 {
-	struct ice_pf *pf = vsi->back;
-	struct ice_hw *hw = &pf->hw;
+	struct ice_aq_get_set_rss_lut_params params = {};
+	struct ice_hw *hw = &vsi->back->hw;
 	enum ice_status status;
-	struct device *dev;
 
-	dev = ice_pf_to_dev(pf);
-	if (seed) {
-		struct ice_aqc_get_set_rss_keys *buf =
-				  (struct ice_aqc_get_set_rss_keys *)seed;
+	if (!lut)
+		return -EINVAL;
 
-		status = ice_aq_get_rss_key(hw, vsi->idx, buf);
-		if (status) {
-			dev_err(dev, "Cannot get RSS key, err %s aq_err %s\n",
-				ice_stat_str(status),
-				ice_aq_str(hw->adminq.sq_last_status));
-			return -EIO;
-		}
+	params.vsi_handle = vsi->idx;
+	params.lut_size = lut_size;
+	params.lut_type = vsi->rss_lut_type;
+	params.lut = lut;
+
+	status = ice_aq_get_rss_lut(hw, &params);
+	if (status) {
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
+		return -EIO;
 	}
 
-	if (lut) {
-		struct ice_aq_get_set_rss_lut_params get_params = {
-			.vsi_handle = vsi->idx, .lut_size = lut_size,
-			.lut_type = vsi->rss_lut_type, .lut = lut,
-			.global_lut_id = 0
-		};
+	return 0;
+}
 
-		status = ice_aq_get_rss_lut(hw, &get_params);
-		if (status) {
-			dev_err(dev, "Cannot get RSS lut, err %s aq_err %s\n",
-				ice_stat_str(status),
-				ice_aq_str(hw->adminq.sq_last_status));
-			return -EIO;
-		}
+/**
+ * ice_get_rss_key - Get RSS key
+ * @vsi: Pointer to VSI structure
+ * @seed: Buffer to store the key in
+ *
+ * Returns 0 on success, negative on failure
+ */
+int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	enum ice_status status;
+
+	if (!seed)
+		return -EINVAL;
+
+	status = ice_aq_get_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
+	if (status) {
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
+		return -EIO;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c30b1dd9ac29..07294cd936e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2252,7 +2252,7 @@ static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (ice_set_rss(vsi, vrk->key, NULL, 0))
+	if (ice_set_rss_key(vsi, vrk->key))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_KEY, v_ret,
@@ -2299,7 +2299,7 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (ice_set_rss(vsi, NULL, vrl->lut, ICE_VSIQF_HLUT_ARRAY_SIZE))
+	if (ice_set_rss_lut(vsi, vrl->lut, ICE_VSIQF_HLUT_ARRAY_SIZE))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
