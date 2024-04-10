Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B2089E961
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 07:04:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11A0F408C7;
	Wed, 10 Apr 2024 05:04:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H6FKmuLZQPie; Wed, 10 Apr 2024 05:04:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B781B408C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712725442;
	bh=JOK0/xjoTRuV+pOkyICR4szj4QdLUdMAmaKb5WZ/I9Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IyA1DKsfsgGdSIAfJUSsnIVgtfCbrpNggNEGv8ea94RY1ar53d2Yms2j9hiNS2tYg
	 mHeT3RcX+7FpYNKG7nh49LiLHbvb0IDKjflYuhL605iM6mZznNktNUWGCFH3UW62xw
	 PaHVyzu7mAO3XLMpnD8VcDC8DRiR5O8V3ghnX165PkiXaLOpu8oYZjRIXB+CM8REnj
	 fRiGBXxKsKntvjriAr+1J/57oKXDGRMGFCArXaCzUT3ZKftTP4YEEpavzTgPwbyX7h
	 ldyausnyzrs9C7V2Q2mNR4nriqZjBxhzg0aOwLvs/gH7IIeQzBMGK4LXgm4AiAph6K
	 TFQbPyGvNR1GA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B781B408C8;
	Wed, 10 Apr 2024 05:04:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1AF41BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 05:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AEDB66063C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 05:04:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OdAvdbJVkKas for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 05:04:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C132C60618
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C132C60618
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C132C60618
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 05:03:59 +0000 (UTC)
X-CSE-ConnectionGUID: yw4RR0U6Rpimk8nqm2+Wpw==
X-CSE-MsgGUID: g/Lboc1DQbS4cHu3RWvyww==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19456237"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="19456237"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 22:03:59 -0700
X-CSE-ConnectionGUID: VRVqe5FZTjO+yleYT2KPxA==
X-CSE-MsgGUID: ktkEolvRTlSIpRPfmclMjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="57876042"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 09 Apr 2024 22:03:57 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 07:08:09 +0200
Message-ID: <20240410050809.125043-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240410050809.125043-1-michal.swiatkowski@linux.intel.com>
References: <20240410050809.125043-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712725440; x=1744261440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CkcW/YjfhCPgg04syOFhR5zDaiTzoiJcr7bqXK/RTZw=;
 b=VMB/RZe7DpRlGBqgis3UK67qtnhy86VGXp9UEdNIuiOC2PdUfCN2a1OL
 FkNtoNAm3N2kXAboDS0HW4PDrb2KJPGk8vCR10zLtjzjBjht0nVWyZYlU
 QgreVkrWmo1VGmkOp9flYCW9B7rx2jYk1+JclrGcEn8HITAtrAqCGlfgj
 Vtd5OxGWAEqtdI/fXJEEt/qQJ5kcN23C4DX055Tk+ydO+d+62z2RgzgoS
 akw7s4rTdRhoM8Zd9P7s1bMk6HSN+hrsNwcKlADiMUHGMQAxO04FAymjO
 oJvxtCunXIRGMVr2fymK9HJVVWq5rG7x3DseXLAjn04iUG3WVG8PnjWan
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VMB/RZe7
Subject: [Intel-wired-lan] [iwl-next v2 7/7] ice: allow to activate and
 deactivate subfunction
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 sridhar.samudrala@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com,
 Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Use previously implemented SF aux driver. It is probe during SF
activation and remove after deactivation.

Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../ethernet/intel/ice/devlink/devlink_port.c |   7 ++
 .../ethernet/intel/ice/devlink/devlink_port.h |   4 +
 drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 104 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h   |   3 +
 4 files changed, 118 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 1b933083f551..ea5148c4b7e1 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -496,6 +496,12 @@ static int
 ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
 			  struct netlink_ext_ack *extack)
 {
+	int err;
+
+	err = ice_sf_eth_activate(dyn_port, extack);
+	if (err)
+		return err;
+
 	dyn_port->active = true;
 
 	return 0;
@@ -509,6 +515,7 @@ ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
  */
 static void ice_deactivate_dynamic_port(struct ice_dynamic_port *dyn_port)
 {
+	ice_sf_eth_deactivate(dyn_port);
 	dyn_port->active = false;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
index 1f66705e0261..409bf291a781 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
@@ -23,6 +23,10 @@ struct ice_dynamic_port {
 	struct devlink_port devlink_port;
 	struct ice_pf *pf;
 	struct ice_vsi *vsi;
+	/* Flavour-specific implementation data */
+	union {
+		struct ice_sf_dev *sf_dev;
+	};
 };
 
 void ice_dealloc_all_dynamic_ports(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 8f0e3c5f3ea4..1583a7e7e3b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -192,6 +192,8 @@ static struct auxiliary_driver ice_sf_driver = {
 	.id_table = ice_sf_dev_id_table
 };
 
+static DEFINE_XARRAY_ALLOC1(ice_sf_aux_id);
+
 /**
  * ice_sf_driver_register - Register new auxiliary subfunction driver
  *
@@ -211,3 +213,105 @@ void ice_sf_driver_unregister(void)
 {
 	auxiliary_driver_unregister(&ice_sf_driver);
 }
+
+/**
+ * ice_sf_dev_release - Release device associated with auxiliary device
+ * @device: pointer to the device
+ *
+ * Since most of the code for subfunction deactivation is handled in
+ * the remove handler, here just free tracking resources.
+ */
+static void ice_sf_dev_release(struct device *device)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(device);
+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
+
+	xa_erase(&ice_sf_aux_id, adev->id);
+	kfree(sf_dev);
+}
+
+/**
+ * ice_sf_eth_activate - Activate Ethernet subfunction port
+ * @dyn_port: the dynamic port instance for this subfunction
+ * @extack: extack for reporting error messages
+ *
+ * Activate the dynamic port as an Ethernet subfunction. Setup the netdev
+ * resources associated and initialize the auxiliary device.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int
+ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
+		    struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = dyn_port->pf;
+	struct ice_sf_dev *sf_dev;
+	struct pci_dev *pdev;
+	int err;
+	u32 id;
+
+	err  = xa_alloc(&ice_sf_aux_id, &id, NULL, xa_limit_32b,
+			GFP_KERNEL);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate subfunction ID");
+		return err;
+	}
+
+	sf_dev = kzalloc(sizeof(*sf_dev), GFP_KERNEL);
+	if (!sf_dev) {
+		err = -ENOMEM;
+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate sf_dev memory");
+		goto xa_erase;
+	}
+	pdev = pf->pdev;
+
+	sf_dev->dyn_port = dyn_port;
+	sf_dev->adev.id = id;
+	sf_dev->adev.name = "sf";
+	sf_dev->adev.dev.release = ice_sf_dev_release;
+	sf_dev->adev.dev.parent = &pdev->dev;
+
+	err = auxiliary_device_init(&sf_dev->adev);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to initialize auxiliary device");
+		goto sf_dev_free;
+	}
+
+	err = auxiliary_device_add(&sf_dev->adev);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Auxiliary device failed to probe");
+		goto aux_dev_uninit;
+	}
+
+	dyn_port->sf_dev = sf_dev;
+
+	return 0;
+
+aux_dev_uninit:
+	auxiliary_device_uninit(&sf_dev->adev);
+sf_dev_free:
+	kfree(sf_dev);
+xa_erase:
+	xa_erase(&ice_sf_aux_id, id);
+
+	return err;
+}
+
+/**
+ * ice_sf_eth_deactivate - Deactivate Ethernet subfunction port
+ * @dyn_port: the dynamic port instance for this subfunction
+ *
+ * Deactivate the Ethernet subfunction, removing its auxiliary device and the
+ * associated resources.
+ */
+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port)
+{
+	struct ice_sf_dev *sf_dev = dyn_port->sf_dev;
+
+	if (sf_dev) {
+		auxiliary_device_delete(&sf_dev->adev);
+		auxiliary_device_uninit(&sf_dev->adev);
+	}
+
+	dyn_port->sf_dev = NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
index e972c50f96c9..c558cad0a183 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
@@ -27,4 +27,7 @@ ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
 int ice_sf_driver_register(void);
 void ice_sf_driver_unregister(void);
 
+int ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
+			struct netlink_ext_ack *extack);
+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port);
 #endif /* _ICE_SF_ETH_H_ */
-- 
2.42.0

