Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A745600DBA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 13:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2DE041712;
	Mon, 17 Oct 2022 11:27:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2DE041712
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666006072;
	bh=x+GBa0fF95dz2eQUk8Ef8FeJaARBzZYED6lz+VTCUAs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Izf/cwhB/D0Xm4F4RBGFMcIdHpppB3SUxT354JqJMcxDmcBOf+m1DqhYgn3NI6xfK
	 65b/3oJD7UdbWx1NOPD5Tipe9WHRDbeaynXtnKuwhjs08zFYzpSKWWVwmqiNIQ0i8p
	 4Eh8jD/r6k+4V8jnkXdeCd4OVdclC66Fo/DG+2fxu7QK+sgQdufP+N+e8ABgaAbbh/
	 cdgm5cdvMFOmUTdQBTf66MrmYYrUyTtSzkI4Q9+BzRpcBBZ2gNZGzRdT/KOiQSq5sP
	 nwKulC/EN8DoKgGf8YOhTQWXQG4wBep9mZq3X2/sqVIxA7A3SvklNIIOrH9r516+NZ
	 qGz1yxCkHvo/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 25-EA45YjEjH; Mon, 17 Oct 2022 11:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 861654148F;
	Mon, 17 Oct 2022 11:27:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 861654148F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECCDA1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 11:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA76F81770
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 11:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA76F81770
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P-o4GAfCuOUo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 11:27:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9DF481493
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9DF481493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 11:27:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="293136013"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="293136013"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 04:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="691322903"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="691322903"
Received: from lajkonik.igk.intel.com ([10.211.8.72])
 by fmsmga008.fm.intel.com with ESMTP; 17 Oct 2022 04:27:30 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Oct 2022 13:25:34 +0200
Message-Id: <20221017112534.73159-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666006062; x=1697542062;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VTgISgmwVOen4YMpPzibYtGY90aOxGv2TS2TfF4dyQU=;
 b=GiaR9tSjdS5WWcvEbQ1Zsy7B/EtIGz7/1e7/Szal5lIyJjBCSCOawgSq
 CLMTUKra8FghiwyJfMSa05FW7sq2Po8jtxFe3A87ADSn9PRoa5/hLsRBF
 ZOsZ53JGPrKIDGu9MnhzTsPKRM60VqNGaaBCRIXdmxEPbXnzK77NJYm25
 HBIs7hVUQ++fB7O6vZQtoZuJ756VyTP0FM0pt9LciL59i4kW4OlxJlYws
 X1xIEZRHcX4a2zQoLpI63RYEcBQiSkHNY7auFcApCF6y6ih6crpiFmStp
 AH0sEWYjJgrrF6DtbJ9hNkFC8E+McrLCpqA+6J4g9WW/f7ZoclyAhg580
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GiaR9tSj
Subject: [Intel-wired-lan] [PATCH next v7] ice: use GNSS subsystem instead
 of TTY
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

Previously support for GNSS was implemented as a TTY driver, it allowed
to access GNSS receiver on /dev/ttyGNSS_<bus><func>.

Use generic GNSS subsystem API instead of implementing own TTY driver.
The receiver is accessible on /dev/gnss<id>. In case of multiple
receivers in the OS, correct device can be found by enumerating either:
- /sys/class/net/<eth port>/device/gnss/
- /sys/class/gnss<id>/device/

User expecting onboard GNSS receiver support is required to enable
CONFIG_GNSS=y/m in kernel config.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v7: 
- add blank lines around 'GNSS module' paragraph in ice.rst
- mark '/dev/gnss<id>' as a code in ice.rst

v6:
- enable support for CONFIG_GNSS=m
- improve commit message

v5:
- fix "ifeq" in Makefile (wrong usage of string)
- fix description in "#endif" to IS_BUILDIN

v4: change Makefile to build ice_gnss.c only if CONFIG_GNSS is set

v3:
- remove unnecessary #include,
- change the IS_ENABLED to IS_BUILTIN - right now if GNSS kernel subsystem
  is not enabled, we also won't enable it in our ice driver.

v2: fix sparse check warning, remove fixes tags, fix commit title

 .../device_drivers/ethernet/intel/ice.rst     |  16 +-
 drivers/net/ethernet/intel/ice/Makefile       |   5 +-
 drivers/net/ethernet/intel/ice/ice.h          |   6 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     | 380 +++++++-----------
 drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
 5 files changed, 167 insertions(+), 258 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index dc2e60ced927..1aa029d08cb1 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -901,15 +901,17 @@ To enable/disable UDP Segmentation Offload, issue the following command::
 
   # ethtool -K <ethX> tx-udp-segmentation [off|on]
 
+
 GNSS module
 -----------
-Allows user to read messages from the GNSS module and write supported commands.
-If the module is physically present, driver creates 2 TTYs for each supported
-device in /dev, ttyGNSS_<device>:<function>_0 and _1. First one (_0) is RW and
-the second one is RO.
-The protocol of write commands is dependent on the GNSS module as the driver
-writes raw bytes from the TTY to the GNSS i2c. Please refer to the module
-documentation for details.
+Requires kernel compiled with CONFIG_GNSS=y or CONFIG_GNSS=m.
+Allows user to read messages from the GNSS hardware module and write supported
+commands. If the module is physically present, a GNSS device is spawned:
+``/dev/gnss<id>``.
+The protocol of write command is dependent on the GNSS hardware module as the
+driver writes raw bytes by the GNSS object to the receiver through i2c. Please
+refer to the hardware GNSS module documentation for configuration details.
+
 
 Performance Optimization
 ========================
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 9183d480b70b..7bc5ba52e493 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -42,8 +42,11 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
 ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
-ice-$(CONFIG_TTY) += ice_gnss.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
+ice-$(CONFIG_GNSS) += ice_gnss.o
+ifeq ($(CONFIG_GNSS), "m")
+	ice-y += ice_gnss.o
+endif
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 001500afc4a6..de6763206113 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -39,6 +39,7 @@
 #include <linux/avf/virtchnl.h>
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
+#include <linux/gnss.h>
 #include <net/pkt_cls.h>
 #include <net/tc_act/tc_mirred.h>
 #include <net/tc_act/tc_gact.h>
@@ -543,9 +544,8 @@ struct ice_pf {
 	struct mutex adev_mutex;	/* lock to protect aux device access */
 	u32 msg_enable;
 	struct ice_ptp ptp;
-	struct tty_driver *ice_gnss_tty_driver;
-	struct tty_port *gnss_tty_port[ICE_GNSS_TTY_MINOR_DEVICES];
-	struct gnss_serial *gnss_serial[ICE_GNSS_TTY_MINOR_DEVICES];
+	struct gnss_serial *gnss_serial;
+	struct gnss_device *gnss_dev;
 	u16 num_rdma_msix;		/* Total MSIX vectors for RDMA driver */
 	u16 rdma_base_vector;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b5a7f246d230..225d870a04f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -3,15 +3,18 @@
 
 #include "ice.h"
 #include "ice_lib.h"
-#include <linux/tty_driver.h>
 
 /**
- * ice_gnss_do_write - Write data to internal GNSS
+ * ice_gnss_do_write - Write data to internal GNSS receiver
  * @pf: board private structure
  * @buf: command buffer
  * @size: command buffer size
  *
  * Write UBX command data to the GNSS receiver
+ *
+ * Return:
+ * * number of bytes written - success
+ * * negative - error code
  */
 static unsigned int
 ice_gnss_do_write(struct ice_pf *pf, unsigned char *buf, unsigned int size)
@@ -82,6 +85,12 @@ static void ice_gnss_write_pending(struct kthread_work *work)
 						write_work);
 	struct ice_pf *pf = gnss->back;
 
+	if (!pf)
+		return;
+
+	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
+		return;
+
 	if (!list_empty(&gnss->queue)) {
 		struct gnss_write_buf *write_buf = NULL;
 		unsigned int bytes;
@@ -102,16 +111,14 @@ static void ice_gnss_write_pending(struct kthread_work *work)
  * ice_gnss_read - Read data from internal GNSS module
  * @work: GNSS read work structure
  *
- * Read the data from internal GNSS receiver, number of bytes read will be
- * returned in *read_data parameter.
+ * Read the data from internal GNSS receiver, write it to gnss_dev.
  */
 static void ice_gnss_read(struct kthread_work *work)
 {
 	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
 						read_work.work);
+	unsigned int i, bytes_read, data_len, count;
 	struct ice_aqc_link_topo_addr link_topo;
-	unsigned int i, bytes_read, data_len;
-	struct tty_port *port;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	__be16 data_len_b;
@@ -120,14 +127,15 @@ static void ice_gnss_read(struct kthread_work *work)
 	int err = 0;
 
 	pf = gnss->back;
-	if (!pf || !gnss->tty || !gnss->tty->port) {
+	if (!pf) {
 		err = -EFAULT;
 		goto exit;
 	}
 
-	hw = &pf->hw;
-	port = gnss->tty->port;
+	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
+		return;
 
+	hw = &pf->hw;
 	buf = (char *)get_zeroed_page(GFP_KERNEL);
 	if (!buf) {
 		err = -ENOMEM;
@@ -159,7 +167,6 @@ static void ice_gnss_read(struct kthread_work *work)
 	}
 
 	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
-	data_len = tty_buffer_request_room(port, data_len);
 	if (!data_len) {
 		err = -ENOMEM;
 		goto exit_buf;
@@ -179,11 +186,15 @@ static void ice_gnss_read(struct kthread_work *work)
 			goto exit_buf;
 	}
 
-	/* Send the data to the tty layer for users to read. This doesn't
-	 * actually push the data through unless tty->low_latency is set.
-	 */
-	tty_insert_flip_string(port, buf, i);
-	tty_flip_buffer_push(port);
+	if (IS_REACHABLE(CONFIG_GNSS)) {
+		count = gnss_insert_raw(pf->gnss_dev, buf, i);
+		if (count != i)
+			dev_warn(ice_pf_to_dev(pf),
+				 "gnss_insert_raw ret=%d size=%d\n",
+				 count, i);
+	} else {
+		dev_warn(ice_pf_to_dev(pf), "gnss module not reachable\n");
+	}
 
 exit_buf:
 	free_page((unsigned long)buf);
@@ -195,11 +206,16 @@ static void ice_gnss_read(struct kthread_work *work)
 }
 
 /**
- * ice_gnss_struct_init - Initialize GNSS structure for the TTY
+ * ice_gnss_struct_init - Initialize GNSS receiver
  * @pf: Board private structure
- * @index: TTY device index
+ *
+ * Initialize GNSS structures and workers.
+ *
+ * Return:
+ * * pointer to initialized gnss_serial struct - success
+ * * NULL - error
  */
-static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf, int index)
+static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct kthread_worker *kworker;
@@ -209,17 +225,12 @@ static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf, int index)
 	if (!gnss)
 		return NULL;
 
-	mutex_init(&gnss->gnss_mutex);
-	gnss->open_count = 0;
 	gnss->back = pf;
-	pf->gnss_serial[index] = gnss;
+	pf->gnss_serial = gnss;
 
 	kthread_init_delayed_work(&gnss->read_work, ice_gnss_read);
 	INIT_LIST_HEAD(&gnss->queue);
 	kthread_init_work(&gnss->write_work, ice_gnss_write_pending);
-	/* Allocate a kworker for handling work required for the GNSS TTY
-	 * writes.
-	 */
 	kworker = kthread_create_worker(0, "ice-gnss-%s", dev_name(dev));
 	if (IS_ERR(kworker)) {
 		kfree(gnss);
@@ -232,276 +243,194 @@ static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf, int index)
 }
 
 /**
- * ice_gnss_tty_open - Initialize GNSS structures on TTY device open
- * @tty: pointer to the tty_struct
- * @filp: pointer to the file
+ * ice_gnss_open - Open GNSS device
+ * @gdev: pointer to the gnss device struct
+ *
+ * Open GNSS device and start filling the read buffer for consumer.
  *
- * This routine is mandatory. If this routine is not filled in, the attempted
- * open will fail with ENODEV.
+ * Return:
+ * * 0 - success
+ * * negative - error code
  */
-static int ice_gnss_tty_open(struct tty_struct *tty, struct file *filp)
+static int ice_gnss_open(struct gnss_device *gdev)
 {
+	struct ice_pf *pf = gnss_get_drvdata(gdev);
 	struct gnss_serial *gnss;
-	struct ice_pf *pf;
 
-	pf = (struct ice_pf *)tty->driver->driver_state;
 	if (!pf)
 		return -EFAULT;
 
-	/* Clear the pointer in case something fails */
-	tty->driver_data = NULL;
-
-	/* Get the serial object associated with this tty pointer */
-	gnss = pf->gnss_serial[tty->index];
-	if (!gnss) {
-		/* Initialize GNSS struct on the first device open */
-		gnss = ice_gnss_struct_init(pf, tty->index);
-		if (!gnss)
-			return -ENOMEM;
-	}
+	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
+		return -EFAULT;
 
-	mutex_lock(&gnss->gnss_mutex);
+	gnss = pf->gnss_serial;
+	if (!gnss)
+		return -ENODEV;
 
-	/* Save our structure within the tty structure */
-	tty->driver_data = gnss;
-	gnss->tty = tty;
-	gnss->open_count++;
 	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, 0);
 
-	mutex_unlock(&gnss->gnss_mutex);
-
 	return 0;
 }
 
 /**
- * ice_gnss_tty_close - Cleanup GNSS structures on tty device close
- * @tty: pointer to the tty_struct
- * @filp: pointer to the file
+ * ice_gnss_close - Close GNSS device
+ * @gdev: pointer to the gnss device struct
+ *
+ * Close GNSS device, cancel worker, stop filling the read buffer.
  */
-static void ice_gnss_tty_close(struct tty_struct *tty, struct file *filp)
+static void ice_gnss_close(struct gnss_device *gdev)
 {
-	struct gnss_serial *gnss = tty->driver_data;
-	struct ice_pf *pf;
-
-	if (!gnss)
-		return;
+	struct ice_pf *pf = gnss_get_drvdata(gdev);
+	struct gnss_serial *gnss;
 
-	pf = (struct ice_pf *)tty->driver->driver_state;
 	if (!pf)
 		return;
 
-	mutex_lock(&gnss->gnss_mutex);
-
-	if (!gnss->open_count) {
-		/* Port was never opened */
-		dev_err(ice_pf_to_dev(pf), "GNSS port not opened\n");
-		goto exit;
-	}
+	gnss = pf->gnss_serial;
+	if (!gnss)
+		return;
 
-	gnss->open_count--;
-	if (gnss->open_count <= 0) {
-		/* Port is in shutdown state */
-		kthread_cancel_delayed_work_sync(&gnss->read_work);
-	}
-exit:
-	mutex_unlock(&gnss->gnss_mutex);
+	kthread_cancel_work_sync(&gnss->write_work);
+	kthread_cancel_delayed_work_sync(&gnss->read_work);
 }
 
 /**
- * ice_gnss_tty_write - Write GNSS data
- * @tty: pointer to the tty_struct
+ * ice_gnss_write - Write to GNSS device
+ * @gdev: pointer to the gnss device struct
  * @buf: pointer to the user data
- * @count: the number of characters queued to be sent to the HW
+ * @count: size of the buffer to be sent to the GNSS device
  *
- * The write function call is called by the user when there is data to be sent
- * to the hardware. First the tty core receives the call, and then it passes the
- * data on to the tty driver's write function. The tty core also tells the tty
- * driver the size of the data being sent.
- * If any errors happen during the write call, a negative error value should be
- * returned instead of the number of characters queued to be written.
+ * Return:
+ * * number of written bytes - success
+ * * negative - error code
  */
 static int
-ice_gnss_tty_write(struct tty_struct *tty, const unsigned char *buf, int count)
+ice_gnss_write(struct gnss_device *gdev, const unsigned char *buf,
+	       size_t count)
 {
+	struct ice_pf *pf = gnss_get_drvdata(gdev);
 	struct gnss_write_buf *write_buf;
 	struct gnss_serial *gnss;
 	unsigned char *cmd_buf;
-	struct ice_pf *pf;
 	int err = count;
 
 	/* We cannot write a single byte using our I2C implementation. */
 	if (count <= 1 || count > ICE_GNSS_TTY_WRITE_BUF)
 		return -EINVAL;
 
-	gnss = tty->driver_data;
-	if (!gnss)
-		return -EFAULT;
-
-	pf = (struct ice_pf *)tty->driver->driver_state;
 	if (!pf)
 		return -EFAULT;
 
-	/* Only allow to write on TTY 0 */
-	if (gnss != pf->gnss_serial[0])
-		return -EIO;
-
-	mutex_lock(&gnss->gnss_mutex);
+	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
+		return -EFAULT;
 
-	if (!gnss->open_count) {
-		err = -EINVAL;
-		goto exit;
-	}
+	gnss = pf->gnss_serial;
+	if (!gnss)
+		return -ENODEV;
 
 	cmd_buf = kcalloc(count, sizeof(*buf), GFP_KERNEL);
-	if (!cmd_buf) {
-		err = -ENOMEM;
-		goto exit;
-	}
+	if (!cmd_buf)
+		return -ENOMEM;
 
 	memcpy(cmd_buf, buf, count);
-
-	/* Send the data out to a hardware port */
 	write_buf = kzalloc(sizeof(*write_buf), GFP_KERNEL);
-	if (!write_buf) {
-		err = -ENOMEM;
-		goto exit;
-	}
+	if (!write_buf)
+		return -ENOMEM;
 
 	write_buf->buf = cmd_buf;
 	write_buf->size = count;
 	INIT_LIST_HEAD(&write_buf->queue);
 	list_add_tail(&write_buf->queue, &gnss->queue);
 	kthread_queue_work(gnss->kworker, &gnss->write_work);
-exit:
-	mutex_unlock(&gnss->gnss_mutex);
+
 	return err;
 }
 
+static const struct gnss_operations ice_gnss_ops = {
+	.open = ice_gnss_open,
+	.close = ice_gnss_close,
+	.write_raw = ice_gnss_write,
+};
+
 /**
- * ice_gnss_tty_write_room - Returns the numbers of characters to be written.
- * @tty: pointer to the tty_struct
+ * ice_gnss_register - Register GNSS receiver
+ * @pf: Board private structure
+ *
+ * Allocate and register GNSS receiver in the Linux GNSS subsystem.
  *
- * This routine returns the numbers of characters the tty driver will accept
- * for queuing to be written or 0 if either the TTY is not open or user
- * tries to write to the TTY other than the first.
+ * Return:
+ * * 0 - success
+ * * negative - error code
  */
-static unsigned int ice_gnss_tty_write_room(struct tty_struct *tty)
+static int ice_gnss_register(struct ice_pf *pf)
 {
-	struct gnss_serial *gnss = tty->driver_data;
+	struct gnss_device *gdev = NULL;
+	int ret;
 
-	/* Only allow to write on TTY 0 */
-	if (!gnss || gnss != gnss->back->gnss_serial[0])
-		return 0;
-
-	mutex_lock(&gnss->gnss_mutex);
+	if (IS_REACHABLE(CONFIG_GNSS)) {
+		gdev = gnss_allocate_device(ice_pf_to_dev(pf));
+	} else {
+		dev_warn(ice_pf_to_dev(pf), "gnss module not reachable\n");
+		return -ENODEV;
+	}
 
-	if (!gnss->open_count) {
-		mutex_unlock(&gnss->gnss_mutex);
-		return 0;
+	if (!gdev) {
+		dev_err(ice_pf_to_dev(pf),
+			"gnss_allocate_device returns NULL\n");
+		return -ENOMEM;
 	}
 
-	mutex_unlock(&gnss->gnss_mutex);
-	return ICE_GNSS_TTY_WRITE_BUF;
+	gdev->ops = &ice_gnss_ops;
+	gdev->type = GNSS_TYPE_UBX;
+	gnss_set_drvdata(gdev, pf);
+	ret = gnss_register_device(gdev);
+	if (ret)
+		dev_err(ice_pf_to_dev(pf), "gnss_register_device err=%d\n",
+			ret);
+	else
+		pf->gnss_dev = gdev;
+
+	return ret;
 }
 
-static const struct tty_operations tty_gps_ops = {
-	.open =		ice_gnss_tty_open,
-	.close =	ice_gnss_tty_close,
-	.write =	ice_gnss_tty_write,
-	.write_room =	ice_gnss_tty_write_room,
-};
-
 /**
- * ice_gnss_create_tty_driver - Create a TTY driver for GNSS
+ * ice_gnss_deregister - Deregister GNSS receiver
  * @pf: Board private structure
+ *
+ * Deregister GNSS receiver from the Linux GNSS subsystem,
+ * release its resources.
  */
-static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
+static void ice_gnss_deregister(struct ice_pf *pf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
-	const int ICE_TTYDRV_NAME_MAX = 14;
-	struct tty_driver *tty_driver;
-	char *ttydrv_name;
-	unsigned int i;
-	int err;
-
-	tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
-				      TTY_DRIVER_REAL_RAW);
-	if (IS_ERR(tty_driver)) {
-		dev_err(dev, "Failed to allocate memory for GNSS TTY\n");
-		return NULL;
-	}
-
-	ttydrv_name = kzalloc(ICE_TTYDRV_NAME_MAX, GFP_KERNEL);
-	if (!ttydrv_name) {
-		tty_driver_kref_put(tty_driver);
-		return NULL;
-	}
-
-	snprintf(ttydrv_name, ICE_TTYDRV_NAME_MAX, "ttyGNSS_%02x%02x_",
-		 (u8)pf->pdev->bus->number, (u8)PCI_SLOT(pf->pdev->devfn));
-
-	/* Initialize the tty driver*/
-	tty_driver->owner = THIS_MODULE;
-	tty_driver->driver_name = dev_driver_string(dev);
-	tty_driver->name = (const char *)ttydrv_name;
-	tty_driver->type = TTY_DRIVER_TYPE_SERIAL;
-	tty_driver->subtype = SERIAL_TYPE_NORMAL;
-	tty_driver->init_termios = tty_std_termios;
-	tty_driver->init_termios.c_iflag &= ~INLCR;
-	tty_driver->init_termios.c_iflag |= IGNCR;
-	tty_driver->init_termios.c_oflag &= ~OPOST;
-	tty_driver->init_termios.c_lflag &= ~ICANON;
-	tty_driver->init_termios.c_cflag &= ~(CSIZE | CBAUD | CBAUDEX);
-	/* baud rate 9600 */
-	tty_termios_encode_baud_rate(&tty_driver->init_termios, 9600, 9600);
-	tty_driver->driver_state = pf;
-	tty_set_operations(tty_driver, &tty_gps_ops);
-
-	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
-		pf->gnss_tty_port[i] = kzalloc(sizeof(*pf->gnss_tty_port[i]),
-					       GFP_KERNEL);
-		pf->gnss_serial[i] = NULL;
-
-		tty_port_init(pf->gnss_tty_port[i]);
-		tty_port_link_device(pf->gnss_tty_port[i], tty_driver, i);
-	}
-
-	err = tty_register_driver(tty_driver);
-	if (err) {
-		dev_err(dev, "Failed to register TTY driver err=%d\n", err);
-
-		for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
-			tty_port_destroy(pf->gnss_tty_port[i]);
-			kfree(pf->gnss_tty_port[i]);
+	if (pf->gnss_dev) {
+		if (IS_REACHABLE(CONFIG_GNSS)) {
+			gnss_deregister_device(pf->gnss_dev);
+			gnss_put_device(pf->gnss_dev);
 		}
-		kfree(ttydrv_name);
-		tty_driver_kref_put(pf->ice_gnss_tty_driver);
-
-		return NULL;
+		pf->gnss_dev = NULL;
 	}
-
-	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++)
-		dev_info(dev, "%s%d registered\n", ttydrv_name, i);
-
-	return tty_driver;
 }
 
 /**
- * ice_gnss_init - Initialize GNSS TTY support
+ * ice_gnss_init - Initialize GNSS support
  * @pf: Board private structure
  */
 void ice_gnss_init(struct ice_pf *pf)
 {
-	struct tty_driver *tty_driver;
+	int ret;
 
-	tty_driver = ice_gnss_create_tty_driver(pf);
-	if (!tty_driver)
+	pf->gnss_serial = ice_gnss_struct_init(pf);
+	if (!pf->gnss_serial)
 		return;
 
-	pf->ice_gnss_tty_driver = tty_driver;
-
-	set_bit(ICE_FLAG_GNSS, pf->flags);
-	dev_info(ice_pf_to_dev(pf), "GNSS TTY init successful\n");
+	ret = ice_gnss_register(pf);
+	if (!ret) {
+		set_bit(ICE_FLAG_GNSS, pf->flags);
+		dev_info(ice_pf_to_dev(pf), "GNSS TTY init successful\n");
+	} else {
+		ice_gnss_exit(pf);
+		dev_err(ice_pf_to_dev(pf), "GNSS TTY init failure\n");
+	}
 }
 
 /**
@@ -510,31 +439,20 @@ void ice_gnss_init(struct ice_pf *pf)
  */
 void ice_gnss_exit(struct ice_pf *pf)
 {
-	unsigned int i;
+	ice_gnss_deregister(pf);
+	clear_bit(ICE_FLAG_GNSS, pf->flags);
 
-	if (!test_bit(ICE_FLAG_GNSS, pf->flags) || !pf->ice_gnss_tty_driver)
-		return;
+	if (pf->gnss_serial) {
+		struct gnss_serial *gnss = pf->gnss_serial;
 
-	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
-		if (pf->gnss_tty_port[i]) {
-			tty_port_destroy(pf->gnss_tty_port[i]);
-			kfree(pf->gnss_tty_port[i]);
-		}
-
-		if (pf->gnss_serial[i]) {
-			struct gnss_serial *gnss = pf->gnss_serial[i];
+		kthread_cancel_work_sync(&gnss->write_work);
+		kthread_cancel_delayed_work_sync(&gnss->read_work);
+		kthread_destroy_worker(gnss->kworker);
+		gnss->kworker = NULL;
 
-			kthread_cancel_work_sync(&gnss->write_work);
-			kthread_cancel_delayed_work_sync(&gnss->read_work);
-			kfree(gnss);
-			pf->gnss_serial[i] = NULL;
-		}
+		kfree(gnss);
+		pf->gnss_serial = NULL;
 	}
-
-	tty_unregister_driver(pf->ice_gnss_tty_driver);
-	kfree(pf->ice_gnss_tty_driver->name);
-	tty_driver_kref_put(pf->ice_gnss_tty_driver);
-	pf->ice_gnss_tty_driver = NULL;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index f454dd1d9285..4d49e5b0b4b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -4,15 +4,8 @@
 #ifndef _ICE_GNSS_H_
 #define _ICE_GNSS_H_
 
-#include <linux/tty.h>
-#include <linux/tty_flip.h>
-
 #define ICE_E810T_GNSS_I2C_BUS		0x2
 #define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
-/* Create 2 minor devices, both using the same GNSS module. First one is RW,
- * second one RO.
- */
-#define ICE_GNSS_TTY_MINOR_DEVICES	2
 #define ICE_GNSS_TTY_WRITE_BUF		250
 #define ICE_MAX_I2C_DATA_SIZE		FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M)
 #define ICE_MAX_I2C_WRITE_BYTES		4
@@ -36,13 +29,9 @@ struct gnss_write_buf {
 	unsigned char *buf;
 };
 
-
 /**
  * struct gnss_serial - data used to initialize GNSS TTY port
  * @back: back pointer to PF
- * @tty: pointer to the tty for this device
- * @open_count: number of times this port has been opened
- * @gnss_mutex: gnss_mutex used to protect GNSS serial operations
  * @kworker: kwork thread for handling periodic work
  * @read_work: read_work function for handling GNSS reads
  * @write_work: write_work function for handling GNSS writes
@@ -50,16 +39,13 @@ struct gnss_write_buf {
  */
 struct gnss_serial {
 	struct ice_pf *back;
-	struct tty_struct *tty;
-	int open_count;
-	struct mutex gnss_mutex; /* protects GNSS serial structure */
 	struct kthread_worker *kworker;
 	struct kthread_delayed_work read_work;
 	struct kthread_work write_work;
 	struct list_head queue;
 };
 
-#if IS_ENABLED(CONFIG_TTY)
+#if IS_ENABLED(CONFIG_GNSS)
 void ice_gnss_init(struct ice_pf *pf);
 void ice_gnss_exit(struct ice_pf *pf);
 bool ice_gnss_is_gps_present(struct ice_hw *hw);
@@ -70,5 +56,5 @@ static inline bool ice_gnss_is_gps_present(struct ice_hw *hw)
 {
 	return false;
 }
-#endif /* IS_ENABLED(CONFIG_TTY) */
+#endif /* IS_ENABLED(CONFIG_GNSS) */
 #endif /* _ICE_GNSS_H_ */
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
