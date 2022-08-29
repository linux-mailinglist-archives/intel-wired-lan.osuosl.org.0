Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9EA5A43CA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Aug 2022 09:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDE7A813FE;
	Mon, 29 Aug 2022 07:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDE7A813FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661758446;
	bh=SCthUiRl9ouvpCJdZG37nx81g2yaz56FVwxJuTXnaRw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Gza2TwXZqpPtNZaQuZX77fMKK3+6n31SGPR+mmMxSdurIQLbgiZM4nM4Doi/bcQ08
	 umAOvM1P+ws3gbVXtjiHZgMt+4dNQ+FnG3g3vyThSqpvGqewzeKQbED3kbvScHmUDQ
	 1vhaj2vMKFbSK/6Ir7UlCmsDgwo4UlUZ/FhaSlqBw41c284oAFkxN57Z8WqahlavJv
	 Cd19j/D8ixLXgsKO+ud1zCj56le6AEVBFXN5blQ2Cj0xd/LYBuOwLC86+RimrdHW3m
	 w2mwTDdTvvELl0fXGfLWIk8SSjywgec2OVgNRb8kxg81u61YEZbVxdDC31OGmQLkIz
	 x8uFjdNMCVaew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FsQleXHZDSNx; Mon, 29 Aug 2022 07:34:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBB9581985;
	Mon, 29 Aug 2022 07:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBB9581985
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7E111BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 07:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAB9B813F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 07:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAB9B813F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sh0L3Dkfmyns for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 07:33:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A4C6813E4
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A4C6813E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 07:33:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10453"; a="356547438"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="356547438"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 00:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="640832982"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2022 00:33:55 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Aug 2022 09:33:48 +0200
Message-Id: <20220829073348.9520-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661758437; x=1693294437;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EZknR0ofmlRIClif4VaQulCyWWsq3i3NJ9aleEVa+dQ=;
 b=GVLrE58evY4n04PU6Kq/ZymgdiVJYSgDDLKVU9Uy7Ussmleyf2R6hVzN
 QRIxlhaPlwDJBBi/TCn0qzwGqkUqWctSeXEOndlD/m3kWMaVlgOaCDAKE
 sh02YTPOFDSk9IWytbG1xkQ/d8pyMogs4+tkBGfmoE+eCivIr94xTaNG0
 q8FoD5tVGPMG9x4/jnfDQQZjunGByUWKMur547DRpcGTCbP+cwG54+8V6
 SStKVphnPw2GqR2R4p8THC7L7SE12SpvJmiRPAYgyJzQ9uqbfvAwOVE2G
 8TX+EJ0BXmUMOmbZlcmwb7PlXdWqaXt8RUEDel1caeuTv9RzXsKRv5nAr
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GVLrE58e
Subject: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove second GNSS TTY
 device
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Having a second GNSS TTY device causes issue when user is reading from
both TTYs simultaneously. Remove second TTY device to avoid this issue.
This TTY device is not necessary anymore and it's safe to remove it
without breaking compatibility.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: Removed unused variable.

 .../device_drivers/ethernet/intel/ice.rst     |  4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     | 68 +++++++------------
 drivers/net/ethernet/intel/ice/ice_gnss.h     |  4 --
 4 files changed, 28 insertions(+), 52 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index dc2e60ced927..2c603f95ce33 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -904,9 +904,7 @@ To enable/disable UDP Segmentation Offload, issue the following command::
 GNSS module
 -----------
 Allows user to read messages from the GNSS module and write supported commands.
-If the module is physically present, driver creates 2 TTYs for each supported
-device in /dev, ttyGNSS_<device>:<function>_0 and _1. First one (_0) is RW and
-the second one is RO.
+If the module is physically present, a TTY in /dev, ttyGNSS_<device>:<function>.
 The protocol of write commands is dependent on the GNSS module as the driver
 writes raw bytes from the TTY to the GNSS i2c. Please refer to the module
 documentation for details.
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 001500afc4a6..3a3b95dd2332 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -544,8 +544,8 @@ struct ice_pf {
 	u32 msg_enable;
 	struct ice_ptp ptp;
 	struct tty_driver *ice_gnss_tty_driver;
-	struct tty_port *gnss_tty_port[ICE_GNSS_TTY_MINOR_DEVICES];
-	struct gnss_serial *gnss_serial[ICE_GNSS_TTY_MINOR_DEVICES];
+	struct tty_port *gnss_tty_port;
+	struct gnss_serial *gnss_serial;
 	u16 num_rdma_msix;		/* Total MSIX vectors for RDMA driver */
 	u16 rdma_base_vector;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b5a7f246d230..e8866aba0a70 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -197,9 +197,8 @@ static void ice_gnss_read(struct kthread_work *work)
 /**
  * ice_gnss_struct_init - Initialize GNSS structure for the TTY
  * @pf: Board private structure
- * @index: TTY device index
  */
-static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf, int index)
+static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct kthread_worker *kworker;
@@ -212,7 +211,7 @@ static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf, int index)
 	mutex_init(&gnss->gnss_mutex);
 	gnss->open_count = 0;
 	gnss->back = pf;
-	pf->gnss_serial[index] = gnss;
+	pf->gnss_serial = gnss;
 
 	kthread_init_delayed_work(&gnss->read_work, ice_gnss_read);
 	INIT_LIST_HEAD(&gnss->queue);
@@ -252,10 +251,10 @@ static int ice_gnss_tty_open(struct tty_struct *tty, struct file *filp)
 	tty->driver_data = NULL;
 
 	/* Get the serial object associated with this tty pointer */
-	gnss = pf->gnss_serial[tty->index];
+	gnss = pf->gnss_serial;
 	if (!gnss) {
 		/* Initialize GNSS struct on the first device open */
-		gnss = ice_gnss_struct_init(pf, tty->index);
+		gnss = ice_gnss_struct_init(pf);
 		if (!gnss)
 			return -ENOMEM;
 	}
@@ -341,10 +340,6 @@ ice_gnss_tty_write(struct tty_struct *tty, const unsigned char *buf, int count)
 	if (!pf)
 		return -EFAULT;
 
-	/* Only allow to write on TTY 0 */
-	if (gnss != pf->gnss_serial[0])
-		return -EIO;
-
 	mutex_lock(&gnss->gnss_mutex);
 
 	if (!gnss->open_count) {
@@ -389,8 +384,7 @@ static unsigned int ice_gnss_tty_write_room(struct tty_struct *tty)
 {
 	struct gnss_serial *gnss = tty->driver_data;
 
-	/* Only allow to write on TTY 0 */
-	if (!gnss || gnss != gnss->back->gnss_serial[0])
+	if (!gnss)
 		return 0;
 
 	mutex_lock(&gnss->gnss_mutex);
@@ -418,14 +412,12 @@ static const struct tty_operations tty_gps_ops = {
 static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
-	const int ICE_TTYDRV_NAME_MAX = 14;
+	const int ICE_TTYDRV_NAME_MAX = 12;
 	struct tty_driver *tty_driver;
 	char *ttydrv_name;
-	unsigned int i;
 	int err;
 
-	tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
-				      TTY_DRIVER_REAL_RAW);
+	tty_driver = tty_alloc_driver(1, TTY_DRIVER_REAL_RAW);
 	if (IS_ERR(tty_driver)) {
 		dev_err(dev, "Failed to allocate memory for GNSS TTY\n");
 		return NULL;
@@ -437,7 +429,7 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 		return NULL;
 	}
 
-	snprintf(ttydrv_name, ICE_TTYDRV_NAME_MAX, "ttyGNSS_%02x%02x_",
+	snprintf(ttydrv_name, ICE_TTYDRV_NAME_MAX, "ttyGNSS_%02x%02x",
 		 (u8)pf->pdev->bus->number, (u8)PCI_SLOT(pf->pdev->devfn));
 
 	/* Initialize the tty driver*/
@@ -457,31 +449,25 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 	tty_driver->driver_state = pf;
 	tty_set_operations(tty_driver, &tty_gps_ops);
 
-	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
-		pf->gnss_tty_port[i] = kzalloc(sizeof(*pf->gnss_tty_port[i]),
-					       GFP_KERNEL);
-		pf->gnss_serial[i] = NULL;
+	pf->gnss_tty_port = kzalloc(sizeof(*pf->gnss_tty_port), GFP_KERNEL);
+	pf->gnss_serial = NULL;
 
-		tty_port_init(pf->gnss_tty_port[i]);
-		tty_port_link_device(pf->gnss_tty_port[i], tty_driver, i);
-	}
+	tty_port_init(pf->gnss_tty_port);
+	tty_port_link_device(pf->gnss_tty_port, tty_driver, 0);
 
 	err = tty_register_driver(tty_driver);
 	if (err) {
 		dev_err(dev, "Failed to register TTY driver err=%d\n", err);
 
-		for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
-			tty_port_destroy(pf->gnss_tty_port[i]);
-			kfree(pf->gnss_tty_port[i]);
-		}
+		tty_port_destroy(pf->gnss_tty_port);
+		kfree(pf->gnss_tty_port);
 		kfree(ttydrv_name);
 		tty_driver_kref_put(pf->ice_gnss_tty_driver);
 
 		return NULL;
 	}
 
-	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++)
-		dev_info(dev, "%s%d registered\n", ttydrv_name, i);
+	dev_info(dev, "%s registered\n", ttydrv_name);
 
 	return tty_driver;
 }
@@ -510,25 +496,21 @@ void ice_gnss_init(struct ice_pf *pf)
  */
 void ice_gnss_exit(struct ice_pf *pf)
 {
-	unsigned int i;
-
 	if (!test_bit(ICE_FLAG_GNSS, pf->flags) || !pf->ice_gnss_tty_driver)
 		return;
 
-	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
-		if (pf->gnss_tty_port[i]) {
-			tty_port_destroy(pf->gnss_tty_port[i]);
-			kfree(pf->gnss_tty_port[i]);
-		}
+	if (pf->gnss_tty_port) {
+		tty_port_destroy(pf->gnss_tty_port);
+		kfree(pf->gnss_tty_port);
+	}
 
-		if (pf->gnss_serial[i]) {
-			struct gnss_serial *gnss = pf->gnss_serial[i];
+	if (pf->gnss_serial) {
+		struct gnss_serial *gnss = pf->gnss_serial;
 
-			kthread_cancel_work_sync(&gnss->write_work);
-			kthread_cancel_delayed_work_sync(&gnss->read_work);
-			kfree(gnss);
-			pf->gnss_serial[i] = NULL;
-		}
+		kthread_cancel_work_sync(&gnss->write_work);
+		kthread_cancel_delayed_work_sync(&gnss->read_work);
+		kfree(gnss);
+		pf->gnss_serial = NULL;
 	}
 
 	tty_unregister_driver(pf->ice_gnss_tty_driver);
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index f454dd1d9285..201f3837585d 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -9,10 +9,6 @@
 
 #define ICE_E810T_GNSS_I2C_BUS		0x2
 #define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
-/* Create 2 minor devices, both using the same GNSS module. First one is RW,
- * second one RO.
- */
-#define ICE_GNSS_TTY_MINOR_DEVICES	2
 #define ICE_GNSS_TTY_WRITE_BUF		250
 #define ICE_MAX_I2C_DATA_SIZE		FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M)
 #define ICE_MAX_I2C_WRITE_BYTES		4
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
