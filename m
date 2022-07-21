Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89C257D5A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCEE240520;
	Thu, 21 Jul 2022 21:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCEE240520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658438137;
	bh=5TFuc0+xrqEd7Wn2/PExJf3hDd889j38u3ASFO02WQg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9a/qY3/DWlef7GDY34rPKJmQyhr5lsSJsgkYKG6Kz563WSfEHp4tD5lrQFb7Bm3VJ
	 qQtN0Q8GHFefS6Vs4cVmlXzY4F+6eCo8DRgd96ZDaOb87iJllz8DX6BxT0MRZQ1krM
	 2csnGJ5xizugJTnj68NexxrtEsOsb58iNKxM+0NMDBR5IGFEccl++36GdiW8U8ZJTC
	 /PU9OXW6aNCHzgCrUy40ErAMs8I2qV36ddzNpDMMFHgocFcY/BrbW+dLIM4c7B5YaV
	 aTNNHfcL6q31Mepyk+LEOwMaiAtwPMWKDOt/KvwOwgLC0f2uRLZwJEVOgFnYeeaEA7
	 F5JvJSrEhFZvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LUvAcnJB4jQX; Thu, 21 Jul 2022 21:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2F8540516;
	Thu, 21 Jul 2022 21:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2F8540516
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18B161BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1938A60AD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1938A60AD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tTlXNZqph7cJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:15:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2917460BE9
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2917460BE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="348874476"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="348874476"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:14:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="925816194"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:14:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 21 Jul 2022 14:14:47 -0700
Message-Id: <20220721211451.2475600-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721211451.2475600-1-jacob.e.keller@intel.com>
References: <20220721211451.2475600-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658438121; x=1689974121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+b/gLo/Ell1uZ35XWmJYCy+/hdv/bRLcSSge8oMH/lY=;
 b=QwFiudejY9gFdrziIHtEB6Q7EIcwyMh2/6jdtThXyfK8u/X3m4abCrBM
 e3pUhZP+lDpc2zKDOgnZsHWrs4LEZMdk/w091xvOKCZuoS9NbSOL3WSLd
 WCWp9Z1c/ZpiX1t+gyVy/Dpvqfj9JszSX4w1sw1Js18P5NKaLx1WfkhKz
 rM1yJGIatt8g0f4/7pXjj0XayTpZxS9CJrHzW8hQPsc89BepFigCZHGzZ
 6KaVQ5W3Ye7SOV8Wx9HZDnAKEmVilGFU7UmCURqACVaQj04M9/fCB5/ED
 OeguuY7aOhYoG/FVTMofQ/wSRfWNbp/zv0LSR91TvKFGl5BK5h/o9rc84
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QwFiudej
Subject: [Intel-wired-lan] [net-next v2 2/2] ice: support dry run of a flash
 update to validate firmware file
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
Cc: Jonathan Corbet <corbet@lwn.net>, intel-wired-lan@lists.osuosl.org,
 David Ahern <dsahern@kernel.org>, linux-doc@vger.kernel.org,
 Stephen Hemminger <stephen@networkplumber.org>,
 Eric Dumazet <edumazet@google.com>, Jiri Pirko <jiri@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that devlink core flash update can handle dry run requests, update
the ice driver to allow validating a PLDM file in dry_run mode.

First, add a new dry_run field to the pldmfw context structure. This
indicates that the PLDM firmware file library should only validate the
file and verify that it has a matching record. Update the pldmfw
documentation to indicate this "dry run" mode.

In the ice driver, let the stack know that we support the dry run
attribute for flash update by setting the appropriate bit in the
.supported_flash_update_params field.

If the dry run is requested, notify the PLDM firmware library by setting
the context bit appropriately. Don't cancel a pending update during
a dry run.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* Use u8 : 1 instead of bool in structure
* Name the PLDMFW parameter validate

 Documentation/driver-api/pldmfw/index.rst      | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c   |  3 ++-
 drivers/net/ethernet/intel/ice/ice_fw_update.c | 14 ++++++++++----
 include/linux/pldmfw.h                         |  5 +++++
 lib/pldmfw/pldmfw.c                            | 12 ++++++++++++
 5 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/Documentation/driver-api/pldmfw/index.rst b/Documentation/driver-api/pldmfw/index.rst
index ad2c33ece30f..454b3ed6576a 100644
--- a/Documentation/driver-api/pldmfw/index.rst
+++ b/Documentation/driver-api/pldmfw/index.rst
@@ -51,6 +51,16 @@ unaligned access of multi-byte fields, and to properly convert from Little
 Endian to CPU host format. Additionally the records, descriptors, and
 components are stored in linked lists.
 
+Validating a PLDM firmware file
+===============================
+
+To simply validate a PLDM firmware file, and verify whether it applies to
+the device, set the ``dry_run`` flag in the ``pldmfw`` context structure.
+If this flag is set, the library will parse the file, validating its UUID
+and checking if any record matches the device. Note that in a dry run, the
+library will *not* issue any ops besides ``match_record``. It will not
+attempt to send the component table or package data to the device firmware.
+
 Performing a flash update
 =========================
 
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 3337314a7b35..18214ea33e2d 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -467,7 +467,8 @@ ice_devlink_reload_empr_finish(struct devlink *devlink,
 }
 
 static const struct devlink_ops ice_devlink_ops = {
-	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
+	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK |
+					 DEVLINK_SUPPORT_FLASH_UPDATE_DRY_RUN,
 	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
 	/* The ice driver currently does not support driver reinit */
 	.reload_down = ice_devlink_reload_empr_start,
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 3dc5662d62a6..d79e4536b440 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -1015,15 +1015,21 @@ int ice_devlink_flash_update(struct devlink *devlink,
 	else
 		priv.context.ops = &ice_fwu_ops_e810;
 	priv.context.dev = dev;
+	priv.context.validate = params->dry_run;
 	priv.extack = extack;
 	priv.pf = pf;
 	priv.activate_flags = preservation;
 
-	devlink_flash_update_status_notify(devlink, "Preparing to flash", NULL, 0, 0);
+	if (params->dry_run)
+		devlink_flash_update_status_notify(devlink, "Validating flash binary", NULL, 0, 0);
+	else
+		devlink_flash_update_status_notify(devlink, "Preparing to flash", NULL, 0, 0);
 
-	err = ice_cancel_pending_update(pf, NULL, extack);
-	if (err)
-		return err;
+	if (!params->dry_run) {
+		err = ice_cancel_pending_update(pf, NULL, extack);
+		if (err)
+			return err;
+	}
 
 	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
 	if (err) {
diff --git a/include/linux/pldmfw.h b/include/linux/pldmfw.h
index 0fc831338226..3e221c5e24cb 100644
--- a/include/linux/pldmfw.h
+++ b/include/linux/pldmfw.h
@@ -124,10 +124,15 @@ struct pldmfw_ops;
  * should embed this in a private structure and use container_of to obtain
  * a pointer to their own data, used to implement the device specific
  * operations.
+ *
+ * @ops: function pointers used as callbacks from the PLDMFW library
+ * @dev: pointer to the device being updated
+ * @validate: if true, only validate the file, do not perform an update.
  */
 struct pldmfw {
 	const struct pldmfw_ops *ops;
 	struct device *dev;
+	u8 validate : 1;
 };
 
 bool pldmfw_op_pci_match_record(struct pldmfw *context, struct pldmfw_record *record);
diff --git a/lib/pldmfw/pldmfw.c b/lib/pldmfw/pldmfw.c
index 6e77eb6d8e72..29a132a39876 100644
--- a/lib/pldmfw/pldmfw.c
+++ b/lib/pldmfw/pldmfw.c
@@ -827,6 +827,10 @@ static int pldm_finalize_update(struct pldmfw_priv *data)
  * to the device firmware. Extract and write the flash data for each of the
  * components indicated in the firmware file.
  *
+ * If the context->dry_run is set, this is a request for a dry run, i.e. to
+ * only validate the PLDM firmware file. In this case, stop and exit after we
+ * find a valid matching record.
+ *
  * Returns: zero on success, or a negative error code on failure.
  */
 int pldmfw_flash_image(struct pldmfw *context, const struct firmware *fw)
@@ -844,14 +848,22 @@ int pldmfw_flash_image(struct pldmfw *context, const struct firmware *fw)
 	data->fw = fw;
 	data->context = context;
 
+	/* Parse the image and make sure it is a valid PLDM firmware binary */
 	err = pldm_parse_image(data);
 	if (err)
 		goto out_release_data;
 
+	/* Search for a record matching the device */
 	err = pldm_find_matching_record(data);
 	if (err)
 		goto out_release_data;
 
+	/* If this is a dry run, do not perform an update */
+	if (context->dry_run)
+		goto out_release_data;
+
+	/* Perform the device update */
+
 	err = pldm_send_package_data(data);
 	if (err)
 		goto out_release_data;
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
