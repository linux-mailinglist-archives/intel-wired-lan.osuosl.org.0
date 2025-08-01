Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AC2B1892C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 00:27:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B24741443;
	Fri,  1 Aug 2025 22:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tcLRv8pM8_h9; Fri,  1 Aug 2025 22:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FD8741356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754087276;
	bh=xbzDBX9yl4ovqiQSYWAeoM7sDwxCY53PWIl3pyCbop8=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rKNl0B38MH8FG5LLuw30ECFcU6m0eueJ5bhUe3vz0NDOSZrvjhDNqZ3w6oUtT6pH/
	 mqbJIO3VfgiIq93YHHN3O+Kg/tdVktMNxDAIabbBQt3OKBOJiLKQ82mnY9POWVkgDV
	 unzsMnSeh0vcYwYjNr2mWK+bypZnWsLMAJQ48H8tGkjy6AYaMpdOEFW1NAS6gHdaOI
	 wm1PE3ffmgyetFWCpd42TNipQFYt5C7PswDHWZU3HX8Bhz52hOQNR2gbAnEjC1JfS+
	 mLxPkWRmenNUeuVpi5zITAE2i5wTtAeDkdj7x8UCLTflvAY5ZqQihvyvyZ+ndix2A5
	 aL4y7P5h5km2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FD8741356;
	Fri,  1 Aug 2025 22:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 03B3FC8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E134184827
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S3amjyUGPyw6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 22:27:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE1F684825
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE1F684825
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE1F684825
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:27:53 +0000 (UTC)
X-CSE-ConnectionGUID: HOMBU7ZJSPWoEcQW4nK/Ag==
X-CSE-MsgGUID: kBPST3ALSgufMtObUlP5ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="59062413"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="59062413"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 15:27:53 -0700
X-CSE-ConnectionGUID: 5a/Z/B33Q02319+CUCopmg==
X-CSE-MsgGUID: kf9esjknSCGdy6tctSc7Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164129686"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 15:27:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 01 Aug 2025 15:27:12 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
X-B4-Tracking: v=1; b=H4sIAEA/jWgC/4WNQQ6CMBBFr0Jm7Rha24CuvIdhUcogo9iStkEN6
 d1tuIDLn/f/+xtECkwRLtUGgVaO7F0J4lCBnYy7E/JQMsha6ro5CXw8ceQPUiu1RbaEZjBLooB
 aKdmOerQ9tVDmS6BS3NU34PeMjhJ0BUwckw/f/XIVO/5vXwUKpNr0qtGmH+T5yi7RfLT+BV3O+
 Qer54fcyQAAAA==
X-Change-ID: 20250731-jk-fix-e825c-ice-adapter-54428f5fcbe8
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Grzegorz Nitka <grzegorz.nitka@intel.com>, netdev@vger.kernel.org, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-d4ca8
X-Developer-Signature: v=1; a=openpgp-sha256; l=8535;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=D+ig53BmvTawenuY7co+kGLJlFFLxa3aqB/cISCJdD4=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoxe+2S3K29MOo7VpL1Z58P9Niuqc6/3eT7WvxH7FlzTf
 8GbcHJSRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABOZdJfhv3Pwc+FjwQ0OMZcD
 b/19cqMoZZJLYLmgprnXgU1XGuUlLBn+aT1/lPwmJzWz9yzPVm/LP2VSMW/aw1zWOhQvrOb8vm4
 1BwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754087274; x=1785623274;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=D+ig53BmvTawenuY7co+kGLJlFFLxa3aqB/cISCJdD4=;
 b=ephrIffnk3tiNy1Qxcrq1aSQHsk68ubzA6focNpN0pXVbGqioXI8z1ui
 wCot68F8quul4GhVE02JFZHgUlmEbeVawHa0jrXNhAyBfOhBDdNG+EtOE
 zrI3ZfkLxZZIigdPEQ/Umy3deGUC1V3Al47oz/G8YBOqShwmUv2BHY+ci
 IQGrSvqJxHB0XmtorMXSyJI10INwYthg/+RlwX4bhMgfB6BwdmUeadtK1
 WF4xG7WYRyKSpYPdh51sSz9kdCc5owrxf5SED2OFJZEHk7itFWksHRL8a
 lTxPfDhxWnZ6yTwHrqF1GJhBTx1xU3CLGWYTxf/45OrypBR3WNHN9tVe5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ephrIffn
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: use fixed adapter index for
 E825C embedded devices
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

The ice_adapter structure is used by the ice driver to connect multiple
physical functions of a device in software. It was introduced by
commit 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on
the same NIC") and is primarily used for PTP support, as well as for
handling certain cross-PF synchronization.

The original design of ice_adapter used PCI address information to
determine which devices should be connected. This was extended to support
E825C devices by commit fdb7f54700b1 ("ice: Initial support for E825C
hardware in ice_adapter"), which used the device ID for E825C devices
instead of the PCI address.

Later, commit 0093cb194a75 ("ice: use DSN instead of PCI BDF for
ice_adapter index") replaced the use of Bus/Device/Function addressing with
use of the device serial number.

E825C devices may appear in "Dual NAC" configuration which has multiple
physical devices tied to the same clock source and which need to use the
same ice_adapter. Unfortunately, each "NAC" has its own NVM which has its
own unique Device Serial Number. Thus, use of the DSN for connecting
ice_adapter does not work properly. It "worked" in the pre-production
systems because the DSN was not initialized on the test NVMs and all the
NACs had the same zero'd serial number.

Since we cannot rely on the DSN, lets fall back to the logic in the
original E825C support which used the device ID. This is safe for E825C
only because of the embedded nature of the device. It isn't a discreet
adapter that can be plugged into an arbitrary system. All E825C devices on
a given system are connected to the same clock source and need to be
configured through the same PTP clock.

To make this separation clear, reserve bit 63 of the 64-bit index values as
a "fixed index" indicator. Always clear this bit when using the device
serial number as an index.

For E825C, use a fixed value defined as the 0x579C E825C backplane device
ID bitwise ORed with the fixed index indicator. This is slightly different
than the original logic of just using the device ID directly. Doing so
prevents a potential issue with systems where only one of the NACs is
connected with an external PHY over SGMII. In that case, one NAC would
have the E825C_SGMII device ID, but the other would not.

Separate the determination of the full 64-bit index from the 32-bit
reduction logic. Provide both ice_adapter_index() and a wrapping
ice_adapter_xa_index() which handles reducing the index to a long on 32-bit
systems. As before, cache the full index value in the adapter structure to
warn about collisions.

This fixes issues with E825C not initializing PTP on both NACs, due to
failure to connect the appropriate devices to the same ice_adapter.

Fixes: 0093cb194a75 ("ice: use DSN instead of PCI BDF for ice_adapter index")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
It turns out that using the device serial number does not work for E825C
boards. I spoke with the team involved in the NVM image generation, and its
not feasible at this point to change the process for generating the NVMs
for E825C. We're stuck with the case that E825C Dual-NAC boards will have
independent DSN for each NAC.

As far as I can tell, the only suitable fallback is to rely on the embedded
nature of the E825C device. We know that all current systems with E825C
need to have their ice_adapter connected. There are no plans to build
platforms with multiple E825C devices. The E825C variant is not a discreet
board, so customers can't simply plug an extra in. Thus, this change
reverts back to using the device ID for E825C systems, instead of the
serial number.
---
 drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
 drivers/net/ethernet/intel/ice/ice_adapter.c | 49 +++++++++++++++++++++-------
 2 files changed, 40 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index db66d03c9f96..e95266c7f20b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -33,7 +33,7 @@ struct ice_port_list {
  * @txq_ctx_lock: Spinlock protecting access to the GLCOMM_QTX_CNTX_CTL register
  * @ctrl_pf: Control PF of the adapter
  * @ports: Ports list
- * @device_serial_number: DSN cached for collision detection on 32bit systems
+ * @index: 64-bit index cached for collision detection on 32bit systems
  */
 struct ice_adapter {
 	refcount_t refcount;
@@ -44,7 +44,7 @@ struct ice_adapter {
 
 	struct ice_pf *ctrl_pf;
 	struct ice_port_list ports;
-	u64 device_serial_number;
+	u64 index;
 };
 
 struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index 9e4adc43e474..9ec2a815a3f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -13,16 +13,45 @@
 static DEFINE_XARRAY(ice_adapters);
 static DEFINE_MUTEX(ice_adapters_mutex);
 
-static unsigned long ice_adapter_index(u64 dsn)
+#define ICE_ADAPTER_FIXED_INDEX	BIT(63)
+
+#define ICE_ADAPTER_INDEX_E825C	\
+	(ICE_DEV_ID_E825C_BACKPLANE | ICE_ADAPTER_FIXED_INDEX)
+
+static u64 ice_adapter_index(struct pci_dev *pdev)
 {
+	switch (pdev->device) {
+	case ICE_DEV_ID_E825C_BACKPLANE:
+	case ICE_DEV_ID_E825C_QSFP:
+	case ICE_DEV_ID_E825C_SFP:
+	case ICE_DEV_ID_E825C_SGMII:
+		/* E825C devices have multiple NACs which are connected to the
+		 * same clock source, and which must share the same
+		 * ice_adapter structure. We can't use the serial number since
+		 * each NAC has its own NVM generated with its own unique
+		 * Device Serial Number. Instead, rely on the embedded nature
+		 * of the E825C devices, and use a fixed index. This relies on
+		 * the fact that all E825C physical functions in a given
+		 * system are part of the same overall device.
+		 */
+		return ICE_ADAPTER_INDEX_E825C;
+	default:
+		return pci_get_dsn(pdev) & ~ICE_ADAPTER_FIXED_INDEX;
+	}
+}
+
+static unsigned long ice_adapter_xa_index(struct pci_dev *pdev)
+{
+	u64 index = ice_adapter_index(pdev);
+
 #if BITS_PER_LONG == 64
-	return dsn;
+	return index;
 #else
-	return (u32)dsn ^ (u32)(dsn >> 32);
+	return (u32)index ^ (u32)(index >> 32);
 #endif
 }
 
-static struct ice_adapter *ice_adapter_new(u64 dsn)
+static struct ice_adapter *ice_adapter_new(struct pci_dev *pdev)
 {
 	struct ice_adapter *adapter;
 
@@ -30,7 +59,7 @@ static struct ice_adapter *ice_adapter_new(u64 dsn)
 	if (!adapter)
 		return NULL;
 
-	adapter->device_serial_number = dsn;
+	adapter->index = ice_adapter_index(pdev);
 	spin_lock_init(&adapter->ptp_gltsyn_time_lock);
 	spin_lock_init(&adapter->txq_ctx_lock);
 	refcount_set(&adapter->refcount, 1);
@@ -64,24 +93,23 @@ static void ice_adapter_free(struct ice_adapter *adapter)
  */
 struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
 {
-	u64 dsn = pci_get_dsn(pdev);
 	struct ice_adapter *adapter;
 	unsigned long index;
 	int err;
 
-	index = ice_adapter_index(dsn);
+	index = ice_adapter_xa_index(pdev);
 	scoped_guard(mutex, &ice_adapters_mutex) {
 		err = xa_insert(&ice_adapters, index, NULL, GFP_KERNEL);
 		if (err == -EBUSY) {
 			adapter = xa_load(&ice_adapters, index);
 			refcount_inc(&adapter->refcount);
-			WARN_ON_ONCE(adapter->device_serial_number != dsn);
+			WARN_ON_ONCE(adapter->index != ice_adapter_index(pdev));
 			return adapter;
 		}
 		if (err)
 			return ERR_PTR(err);
 
-		adapter = ice_adapter_new(dsn);
+		adapter = ice_adapter_new(pdev);
 		if (!adapter)
 			return ERR_PTR(-ENOMEM);
 		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
@@ -100,11 +128,10 @@ struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
  */
 void ice_adapter_put(struct pci_dev *pdev)
 {
-	u64 dsn = pci_get_dsn(pdev);
 	struct ice_adapter *adapter;
 	unsigned long index;
 
-	index = ice_adapter_index(dsn);
+	index = ice_adapter_xa_index(pdev);
 	scoped_guard(mutex, &ice_adapters_mutex) {
 		adapter = xa_load(&ice_adapters, index);
 		if (WARN_ON(!adapter))

---
base-commit: 01051012887329ea78eaca19b1d2eac4c9f601b5
change-id: 20250731-jk-fix-e825c-ice-adapter-54428f5fcbe8

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

