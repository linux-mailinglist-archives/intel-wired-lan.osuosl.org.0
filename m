Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B0A96602A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 13:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE34F84331;
	Fri, 30 Aug 2024 11:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mlgdbhdlmeno; Fri, 30 Aug 2024 11:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 095A8842EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725016257;
	bh=0svAXxk2Ym4UQvlMnMBhWWhLTDfqyj8f5bEdutfLtus=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kq96BCIeEg0HUq+BUSOiYKg3/z8Kwo56SDsepzxisAhkN0S58Gncz0vsyBa//eI5V
	 pnkcH86UEQiUAUqMX/OCFQVCE59pN1BOBNM+xeiUkUZOMGGatZF61tHeod4rwU2A2M
	 m1+p0LWNtMQMc7gEIMp6hPTvl6T8b5zQc2ahZAV+ObNCE+vUuS0ms9VhYrJbwVh13c
	 1akiVBOll9wM4BnVBd69bgFNbxcdRipdrMKroaNv5BUcjTUbARAPcDrc3KGjBCuxZ1
	 zJ7yIskpbvG/es2zfIX/z+bttBSF4PWRpxbCyb9eCSgzp1h+sRU7l6WMBCLt2NmS1L
	 R5HYVEmfnrT/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 095A8842EC;
	Fri, 30 Aug 2024 11:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98F411BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8564742432
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SsiXx5UuBu8a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 11:10:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E86741A6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E86741A6E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E86741A6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:49 +0000 (UTC)
X-CSE-ConnectionGUID: q71RThi3RIC3LIIN9/07LA==
X-CSE-MsgGUID: ikQeZGdRTzC0AtwvdGqkYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23517608"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23517608"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 04:10:50 -0700
X-CSE-ConnectionGUID: /5/zPDOFRQWX20JTwheXWQ==
X-CSE-MsgGUID: xQn2l3fZSQuHSF0YsEfOzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68273662"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 30 Aug 2024 04:10:47 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Aug 2024 13:07:22 +0200
Message-ID: <20240830111028.1112040-15-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240830111028.1112040-9-karol.kolacinski@intel.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725016250; x=1756552250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ps5nXMWThdgByPp/VDOTk0s2kwvSVAqVR3JNwoOMf0=;
 b=G9jQzwIYW5AS6S5L+gWKV6dkqrL7/4073cSNoK1LMbByMknsOPp9GEN+
 6j/j9OQOJoxBvEMMR5uHEGsL0QWh0zg14I0SS9gR8LuuRS/54s2ft053C
 acUgUZ3WpZbZLB4ZdyLiWWT58tpFOUwwJw/uNjo3g7doTaoZKmqiBs7mt
 6Qd1u8SiGfUWeiJBXuKwzvQHIeylMVn2jivobRi01fJR11HljMuVahf7Y
 Si4cQdL+GN6ZnUOS0d1qjP0dWOS1gOrUCxzIzH5aKKsPFs2ixO0JGNRqw
 mRbEZ8SxxXCeBt/U5L5A9LBhJ1Nns+0feoQ7yF9P47flhcLFUcRrCud/5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G9jQzwIY
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 6/7] ice: Read SDP section
 from NVM for pin definitions
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Yochai Hagvi <yochai.hagvi@intel.com>, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yochai Hagvi <yochai.hagvi@intel.com>

PTP pins assignment and their related SDPs (Software Definable Pins) are
currently hardcoded.
Fix that by reading NVM section instead on products supporting this,
which are E810 products.
If SDP section is not defined in NVM, the driver continues to use the
hardcoded table.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 138 ++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  60 ++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
 5 files changed, 186 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 0be1a98d7cc1..1f01f3501d6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1742,6 +1742,15 @@ struct ice_aqc_nvm {
 };
 
 #define ICE_AQC_NVM_START_POINT			0
+#define ICE_AQC_NVM_SECTOR_UNIT			4096
+#define ICE_AQC_NVM_SDP_AC_PTR_OFFSET		0xD8
+#define ICE_AQC_NVM_SDP_AC_PTR_M		GENMASK(14, 0)
+#define ICE_AQC_NVM_SDP_AC_PTR_INVAL		0x7FFF
+#define ICE_AQC_NVM_SDP_AC_PTR_TYPE_M		BIT(15)
+#define ICE_AQC_NVM_SDP_AC_SDP_NUM_M		GENMASK(2, 0)
+#define ICE_AQC_NVM_SDP_AC_DIR_M		BIT(3)
+#define ICE_AQC_NVM_SDP_AC_PIN_M		GENMASK(15, 6)
+#define ICE_AQC_NVM_SDP_AC_MAX_SIZE		7
 
 #define ICE_AQC_NVM_TX_TOPO_MOD_ID		0x14B
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index f733e673bf26..753709ef1ab2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -39,7 +39,7 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
 	{  ONE_PPS, { -1, 5 }},
 };
 
-static const char ice_pin_names_e810t[][64] = {
+static const char ice_pin_names_nvm[][64] = {
 	"GNSS",
 	"SMA1",
 	"U.FL1",
@@ -47,7 +47,7 @@ static const char ice_pin_names_e810t[][64] = {
 	"U.FL2",
 };
 
-static const struct ice_ptp_pin_desc ice_pin_desc_e810t[] = {
+static const struct ice_ptp_pin_desc ice_pin_desc_e810_sma[] = {
 	/* name,   gpio */
 	{  GNSS, {  1, -1 }},
 	{  SMA1, {  1,  0 }},
@@ -2385,8 +2385,8 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf *pf)
 
 		if (!ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
 			name = ice_pin_names[desc->name_idx];
-		else
-			name = ice_pin_names_e810t[desc->name_idx];
+		else if (desc->name_idx != GPIO_NA)
+			name = ice_pin_names_nvm[desc->name_idx];
 		if (name)
 			strscpy(pin->name, name, sizeof(pin->name));
 
@@ -2397,17 +2397,17 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf *pf)
 }
 
 /**
- * ice_ptp_disable_sma_pins - Disable SMA pins
+ * ice_ptp_disable_pins - Disable PTP pins
  * @pf: pointer to the PF structure
  *
  * Disable the OS access to the SMA pins. Called to clear out the OS
  * indications of pin support when we fail to setup the SMA control register.
  */
-static void ice_ptp_disable_sma_pins(struct ice_pf *pf)
+static void ice_ptp_disable_pins(struct ice_pf *pf)
 {
 	struct ptp_clock_info *info = &pf->ptp.info;
 
-	dev_warn(ice_pf_to_dev(pf), "Failed to configure  SMA pin control\n");
+	dev_warn(ice_pf_to_dev(pf), "Failed to configure PTP pin control\n");
 
 	info->enable = NULL;
 	info->verify = NULL;
@@ -2417,23 +2417,75 @@ static void ice_ptp_disable_sma_pins(struct ice_pf *pf)
 }
 
 /**
- * ice_ptp_setup_pins_e810t - Setup PTP pins in sysfs
- * @pf: pointer to the PF instance
+ * ice_ptp_parse_sdp_entries - update ice_ptp_pin_desc structure from NVM
+ * @pf: pointer to the PF structure
+ * @entries: SDP connection section from NVM
+ * @num_entries: number of valid entries in sdp_entries
+ * @pins: PTP pins array to update
+ *
+ * Return: 0 on success, negative error code otherwise.
  */
-static void ice_ptp_setup_pins_e810t(struct ice_pf *pf)
+static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
+				     unsigned int num_entries,
+				     struct ice_ptp_pin_desc *pins)
 {
-	struct ice_ptp *ptp = &pf->ptp;
-	int err;
+	unsigned int n_pins = 0;
+	unsigned int i;
 
-	ptp->ice_pin_desc = ice_pin_desc_e810t;
-	ptp->info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810t);
-	ptp->info.pin_config = ptp->pin_desc;
-	ice_ptp_setup_pin_cfg(pf);
+	/* Setup ice_pin_desc array */
+	for (i = 0; i < ICE_N_PINS_MAX; i++) {
+		pins[i].name_idx = -1;
+		pins[i].gpio[0] = -1;
+		pins[i].gpio[1] = -1;
+	}
+
+	for (i = 0; i < num_entries; i++) {
+		u16 entry = le16_to_cpu(entries[i]);
+		DECLARE_BITMAP(bitmap, GPIO_NA);
+		unsigned int bitmap_idx;
+		bool dir;
+		u16 gpio;
+
+		*bitmap = FIELD_GET(ICE_AQC_NVM_SDP_AC_PIN_M, entry);
+		dir = !!FIELD_GET(ICE_AQC_NVM_SDP_AC_DIR_M, entry);
+		gpio = FIELD_GET(ICE_AQC_NVM_SDP_AC_SDP_NUM_M, entry);
+		for_each_set_bit(bitmap_idx, bitmap, GPIO_NA + 1) {
+			unsigned int idx;
+
+			/* Check if entry's pin bit is valid */
+			if (bitmap_idx >= NUM_PTP_PINS_NVM &&
+			    bitmap_idx != GPIO_NA)
+				continue;
 
-	/* Clear SMA status */
-	err = ice_ptp_set_sma_cfg(pf);
-	if (err)
-		ice_ptp_disable_sma_pins(pf);
+			/* Check if pin already exists */
+			for (idx = 0; idx < ICE_N_PINS_MAX; idx++)
+				if (pins[idx].name_idx == bitmap_idx)
+					break;
+
+			if (idx == ICE_N_PINS_MAX) {
+				/* Pin not found, setup its entry and name */
+				idx = n_pins++;
+				pins[idx].name_idx = bitmap_idx;
+				if (bitmap_idx == GPIO_NA)
+					strscpy(pf->ptp.pin_desc[idx].name,
+						ice_pin_names[gpio],
+						sizeof(pf->ptp.pin_desc[idx]
+							       .name));
+			}
+
+			/* Setup in/out GPIO number */
+			pins[idx].gpio[dir] = gpio;
+		}
+	}
+
+	for (i = 0; i < n_pins; i++) {
+		dev_dbg(ice_pf_to_dev(pf),
+			"NVM pin entry[%d] : name_idx %d gpio_out %d gpio_in %d\n",
+			i, pins[i].name_idx, pins[i].gpio[1], pins[i].gpio[0]);
+	}
+
+	pf->ptp.info.n_pins = n_pins;
+	return 0;
 }
 
 /**
@@ -2474,15 +2526,49 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
  */
 static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
 {
-	if (ice_is_e810t(&pf->hw) &&
-	    ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
-		ice_ptp_setup_pins_e810t(pf);
-		return;
+	__le16 entries[ICE_AQC_NVM_SDP_AC_MAX_SIZE];
+	struct ice_ptp_pin_desc *desc = NULL;
+	struct ice_ptp *ptp = &pf->ptp;
+	unsigned int num_entries;
+	int err;
+
+	err = ice_ptp_read_sdp_ac(&pf->hw, entries, &num_entries);
+	if (err) {
+		/* SDP section does not exist in NVM or is corrupted */
+		if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
+			ptp->ice_pin_desc = ice_pin_desc_e810_sma;
+			ptp->info.n_pins =
+				ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810_sma);
+		} else {
+			pf->ptp.ice_pin_desc = ice_pin_desc_e810;
+			pf->ptp.info.n_pins =
+				ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
+			err = 0;
+		}
+	} else {
+		desc = devm_kcalloc(ice_pf_to_dev(pf), ICE_N_PINS_MAX,
+				    sizeof(struct ice_ptp_pin_desc),
+				    GFP_KERNEL);
+		if (!desc)
+			goto err;
+
+		err = ice_ptp_parse_sdp_entries(pf, entries, num_entries, desc);
+		if (err)
+			goto err;
+
+		ptp->ice_pin_desc = (const struct ice_ptp_pin_desc *)desc;
 	}
 
-	pf->ptp.ice_pin_desc = ice_pin_desc_e810;
-	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
+	ptp->info.pin_config = ptp->pin_desc;
 	ice_ptp_setup_pin_cfg(pf);
+
+	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
+		err = ice_ptp_set_sma_cfg(pf);
+err:
+	if (err) {
+		devm_kfree(ice_pf_to_dev(pf), desc);
+		ice_ptp_disable_pins(pf);
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index dc1f5a95b970..b8ab162a5538 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -199,12 +199,14 @@ enum ice_ptp_pin {
 	ONE_PPS
 };
 
-enum ice_ptp_pin_e810t {
+enum ice_ptp_pin_nvm {
 	GNSS = 0,
 	SMA1,
 	UFL1,
 	SMA2,
-	UFL2
+	UFL2,
+	NUM_PTP_PINS_NVM,
+	GPIO_NA = 9
 };
 
 /* Per-channel register definitions */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3c314f3d8107..07ecf2a86742 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5313,6 +5313,66 @@ int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data)
 	return ice_aq_read_i2c(hw, link_topo, 0, addr, 1, data, NULL);
 }
 
+/**
+ * ice_ptp_read_sdp_ac - read SDP available connections section from NVM
+ * @hw: pointer to the HW struct
+ * @entries: returns the SDP available connections section from NVM
+ * @num_entries: returns the number of valid entries
+ *
+ * Return: 0 on success, negative error code if NVM read failed or section does
+ * not exist or is corrupted
+ */
+int ice_ptp_read_sdp_ac(struct ice_hw *hw, __le16 *entries, uint *num_entries)
+{
+	__le16 data;
+	u32 offset;
+	int err;
+
+	err = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (err)
+		goto exit;
+
+	/* Read the offset of SDP_AC */
+	offset = ICE_AQC_NVM_SDP_AC_PTR_OFFSET;
+	err = ice_aq_read_nvm(hw, 0, offset, sizeof(data), &data, false, true,
+			      NULL);
+	if (err)
+		goto exit;
+
+	/* Check if section exist */
+	offset = FIELD_GET(ICE_AQC_NVM_SDP_AC_PTR_M, le16_to_cpu(data));
+	if (offset == ICE_AQC_NVM_SDP_AC_PTR_INVAL) {
+		err = -EINVAL;
+		goto exit;
+	}
+
+	if (offset & ICE_AQC_NVM_SDP_AC_PTR_TYPE_M) {
+		offset &= ICE_AQC_NVM_SDP_AC_PTR_M;
+		offset *= ICE_AQC_NVM_SECTOR_UNIT;
+	} else {
+		offset *= sizeof(data);
+	}
+
+	/* Skip reading section length and read the number of valid entries */
+	offset += sizeof(data);
+	err = ice_aq_read_nvm(hw, 0, offset, sizeof(data), &data, false, true,
+			      NULL);
+	if (err)
+		goto exit;
+	*num_entries = le16_to_cpu(data);
+
+	/* Read SDP configuration section */
+	offset += sizeof(data);
+	err = ice_aq_read_nvm(hw, 0, offset, *num_entries * sizeof(data),
+			      entries, false, true, NULL);
+
+exit:
+	if (err)
+		dev_dbg(ice_hw_to_dev(hw), "Failed to configure SDP connection section\n");
+	ice_release_nvm(hw);
+	return err;
+}
+
 /**
  * ice_ptp_init_phy_e810 - initialize PHY parameters
  * @ptp: pointer to the PTP HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index c42831449787..ff98f76969e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -405,6 +405,7 @@ int ice_read_sma_ctrl(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
+int ice_ptp_read_sdp_ac(struct ice_hw *hw, __le16 *entries, uint *num_entries);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
-- 
2.46.0

