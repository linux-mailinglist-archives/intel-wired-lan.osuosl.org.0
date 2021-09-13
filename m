Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 076234090A4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Sep 2021 15:53:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 721B160750;
	Mon, 13 Sep 2021 13:53:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aCUlq-4DBEsP; Mon, 13 Sep 2021 13:53:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E511760701;
	Mon, 13 Sep 2021 13:53:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6DC11BF366
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 10:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2EED400E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 10:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8lXbrDZnWd85 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Sep 2021 10:12:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10529400C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 10:12:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="218446418"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="218446418"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 03:12:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="469148963"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by fmsmga007.fm.intel.com with ESMTP; 13 Sep 2021 03:12:13 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Sep 2021 12:11:08 +0200
Message-Id: <20210913101108.17927-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210913101108.17927-1-karol.kolacinski@intel.com>
References: <20210913101108.17927-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Sep 2021 13:53:23 +0000
Subject: [Intel-wired-lan] [PATCH intel-next 2/2] ice: add TTY device for
 GNSS module for E810T device
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
Cc: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, maciej.machnikowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a new ice_gnss.c file for holding the basic GNSS module functions.
If the device supports GNSS module, call the new ice_gnss_init and
ice_gnss_release functions where appropriate.

Implement basic functionality for reading the data from GNSS module
using TTY device.

Future changes will introduce write functionality.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>
Tested-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |   6 +
 drivers/net/ethernet/intel/ice/ice_gnss.c | 373 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_gnss.h |  42 +++
 drivers/net/ethernet/intel/ice/ice_main.c |  14 +
 4 files changed, 435 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_gnss.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_gnss.h

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 62e93f9b11de..c2d6bedd0d16 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -66,6 +66,7 @@
 #include "ice_repr.h"
 #include "ice_eswitch.h"
 #include "ice_lag.h"
+#include "ice_gnss.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
@@ -416,6 +417,8 @@ enum ice_pf_flags {
 	ICE_FLAG_VF_TRUE_PROMISC_ENA,
 	ICE_FLAG_MDD_AUTO_RESET_VF,
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
+	ICE_FLAG_GNSS_SUPPORTED,	/* HW GNSS support */
+	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
@@ -486,6 +489,9 @@ struct ice_pf {
 	struct mutex tc_mutex;		/* lock to protect TC changes */
 	u32 msg_enable;
 	struct ice_ptp ptp;
+	struct tty_driver *ice_gnss_tty_driver;
+	struct tty_port gnss_tty_port;
+	struct gnss_serial *gnss_serial;
 	u16 num_rdma_msix;		/* Total MSIX vectors for RDMA driver */
 	u16 rdma_base_vector;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
new file mode 100644
index 000000000000..fe389df993d5
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -0,0 +1,373 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2021, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_lib.h"
+
+/**
+ * ice_gnss_read - Read data from internal GNSS module
+ * @work: GNSS read work structure
+ *
+ * Read the data from internal GNSS receiver, number of bytes read will be
+ * returned in *read_data parameter.
+ */
+static void ice_gnss_read(struct kthread_work *work)
+{
+	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
+						read_work.work);
+	struct ice_aqc_link_topo_addr link_topo;
+	u8 i2c_params, bytes_read;
+	struct tty_port *port;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	char *buf = NULL;
+	u16 i, data_len;
+	int err = 0;
+
+	pf = gnss->back;
+	if (!pf || !&pf->hw || !gnss->tty || !gnss->tty->port) {
+		err = -EFAULT;
+		goto exit;
+	}
+
+	hw = &pf->hw;
+	port = gnss->tty->port;
+
+	buf = (char *)get_zeroed_page(GFP_KERNEL);
+	if (!buf) {
+		err = -ENOMEM;
+		goto exit;
+	}
+
+	memset(&link_topo, 0, sizeof(struct ice_aqc_link_topo_addr));
+	link_topo.topo_params.index = ICE_E810T_GNSS_I2C_BUS;
+	link_topo.topo_params.node_type_ctx |=
+		ICE_AQC_LINK_TOPO_NODE_CTX_OVERRIDE <<
+		ICE_AQC_LINK_TOPO_NODE_CTX_S;
+
+	i2c_params = ICE_GNSS_UBX_DATA_LEN_WIDTH |
+		     ICE_AQC_I2C_USE_REPEATED_START;
+
+	/* Read data length in a loop, when it's not 0 the data is ready */
+	for (i = 0; i < ICE_MAX_UBX_READ_TRIES; i++) {
+		enum ice_status status;
+
+		status = ice_aq_read_i2c(hw, link_topo,
+					 ICE_GNSS_UBX_I2C_BUS_ADDR,
+					 ICE_GNSS_UBX_DATA_LEN_H, i2c_params,
+					 (u8 *)&data_len, NULL);
+		if (status) {
+			err = ice_status_to_errno(status);
+			goto exit_buf;
+		}
+
+		if (data_len != 0 && data_len != U16_MAX) {
+			data_len = be16_to_cpu(data_len);
+			break;
+		}
+
+		mdelay(10);
+	}
+
+	data_len = min(data_len, (u16)PAGE_SIZE);
+	data_len = tty_buffer_request_room(port, data_len);
+	if (!data_len) {
+		err = -ENOMEM;
+		goto exit_buf;
+	}
+
+	/* Read received data */
+	for (i = 0; i < data_len; i += bytes_read) {
+		enum ice_status status;
+
+		u16 bytes_left = data_len - i;
+
+		bytes_read = bytes_left < ICE_MAX_I2C_DATA_SIZE ? bytes_left :
+					  ICE_MAX_I2C_DATA_SIZE;
+
+		status = ice_aq_read_i2c(hw, link_topo,
+					 ICE_GNSS_UBX_I2C_BUS_ADDR,
+					 ICE_GNSS_UBX_EMPTY_DATA, bytes_read,
+					 &buf[i], NULL);
+		if (status) {
+			err = ice_status_to_errno(status);
+			goto exit_buf;
+		}
+	}
+
+	/* Send the data to the tty layer for users to read. This doesn't
+	 * actually push the data through unless tty->low_latency is set.
+	 */
+	tty_insert_flip_string(port, buf, i);
+	tty_flip_buffer_push(port);
+
+exit_buf:
+	free_page((unsigned long)buf);
+	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work,
+				   ICE_GNSS_TIMER_DELAY_TIME);
+exit:
+	if (err)
+		dev_dbg(ice_pf_to_dev(pf), "GNSS failed to read err=%d\n", err);
+}
+
+/**
+ * ice_gnss_struct_init - Initialize GNSS structure for the TTY
+ * @pf: Board private structure
+ * @index: TTY device index
+ */
+static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf, int index)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct kthread_worker *kworker;
+	struct gnss_serial *gnss;
+
+	gnss = kzalloc(sizeof(*gnss), GFP_KERNEL);
+	if (!gnss)
+		return NULL;
+
+	mutex_init(&gnss->gnss_mutex);
+	gnss->open_count = 0;
+	gnss->back = pf;
+	pf->gnss_serial[index] = gnss;
+
+	kthread_init_delayed_work(&gnss->read_work, ice_gnss_read);
+	/* Allocate a kworker for handling work required for the GNSS TTY
+	 * writes.
+	 */
+	kworker = kthread_create_worker(0, "ice-gnss-%s", dev_name(dev));
+	if (!kworker) {
+		kfree(gnss);
+		return NULL;
+	}
+
+	gnss->kworker = kworker;
+
+	return gnss;
+}
+
+/**
+ * ice_gnss_tty_open - Initialize GNSS structures on TTY device open
+ * @tty: pointer to the tty_struct
+ * @filp: pointer to the file
+ *
+ * This routine is mandatory. If this routine is not filled in, the attempted
+ * open will fail with ENODEV.
+ */
+static int ice_gnss_tty_open(struct tty_struct *tty, struct file *filp)
+{
+	struct gnss_serial *gnss;
+	struct ice_pf *pf;
+
+	pf = (struct ice_pf *)tty->driver->driver_state;
+	if (!pf)
+		return -EFAULT;
+
+	/* Clear the pointer in case something fails */
+	tty->driver_data = NULL;
+	/* Get the serial object associated with this tty pointer */
+	gnss = pf->gnss_serial[tty->index];
+
+	if (!gnss) {
+		/* Initialize GNSS struct on the first device open */
+		gnss = ice_gnss_struct_init(pf,  tty->index);
+		if (!gnss)
+			return -ENOMEM;
+	}
+
+	mutex_lock(&gnss->gnss_mutex);
+
+	/* Save our structure within the tty structure */
+	tty->driver_data = gnss;
+	gnss->tty = tty;
+	gnss->open_count++;
+	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, 0);
+
+	mutex_unlock(&gnss->gnss_mutex);
+
+	return 0;
+}
+
+/**
+ * ice_gnss_tty_close - Cleanup GNSS structures on tty device close
+ * @tty: pointer to the tty_struct
+ * @filp: pointer to the file
+ */
+static void ice_gnss_tty_close(struct tty_struct *tty, struct file *filp)
+{
+	struct gnss_serial *gnss = tty->driver_data;
+	struct ice_pf *pf;
+
+	if (!gnss)
+		return;
+
+	pf = (struct ice_pf *)tty->driver->driver_state;
+	if (!pf)
+		return;
+
+	mutex_lock(&gnss->gnss_mutex);
+
+	if (!gnss->open_count) {
+		/* Port was never opened */
+		dev_err(ice_pf_to_dev(pf), "GNSS port not opened\n");
+		goto exit;
+	}
+
+	gnss->open_count--;
+	if (gnss->open_count <= 0) {
+		/* Port is in shutdown state */
+		kthread_cancel_delayed_work_sync(&gnss->read_work);
+	}
+exit:
+	mutex_unlock(&gnss->gnss_mutex);
+}
+
+/**
+ * ice_gnss_tty_write - Dummy TTY write function to avoid kernel panic
+ * @tty: pointer to the tty_struct
+ * @buf: pointer to the user data
+ * @cnt: the number of characters that was able to be sent to the hardware (or
+ *       queued to be sent at a later time)
+ */
+static int
+ice_gnss_tty_write(struct tty_struct *tty, const unsigned char *buf, int cnt)
+{
+	return 0;
+}
+
+/**
+ * ice_gnss_tty_write_room - Dummy TTY write_room function to avoid kernel panic
+ * @tty: pointer to the tty_struct
+ */
+static unsigned int ice_gnss_tty_write_room(struct tty_struct *tty)
+{
+	return 0;
+}
+
+static const struct tty_operations tty_gps_ops = {
+	.open =		ice_gnss_tty_open,
+	.close =	ice_gnss_tty_close,
+	.write =	ice_gnss_tty_write,
+	.write_room =	ice_gnss_tty_write_room,
+};
+
+/**
+ * ice_gnss_create_tty_driver - Create a TTY driver for GNSS
+ * @pf: Board private structure
+ */
+static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct tty_driver *tty_driver;
+	int err;
+	u8 i;
+
+	tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
+				      TTY_DRIVER_REAL_RAW);
+	if (!tty_driver) {
+		dev_err(ice_pf_to_dev(pf),
+			"Failed to allocate memory for GNSS TTY\n");
+		return NULL;
+	}
+	/* Initialize the tty driver*/
+	tty_driver->owner = THIS_MODULE;
+	tty_driver->driver_name = dev_driver_string(dev);
+	tty_driver->name = "ttyGNSS";
+	tty_driver->type = TTY_DRIVER_TYPE_SERIAL;
+	tty_driver->subtype = SERIAL_TYPE_NORMAL;
+	tty_driver->init_termios = tty_std_termios;
+	tty_driver->init_termios.c_iflag &= ~INLCR;
+	tty_driver->init_termios.c_iflag |= IGNCR;
+	tty_driver->init_termios.c_oflag &= ~OPOST;
+	tty_driver->init_termios.c_lflag &= ~ICANON;
+	tty_driver->init_termios.c_cflag &= ~(CSIZE | CBAUD | CBAUDEX);
+	/* baud rate 9600 */
+	tty_termios_encode_baud_rate(&tty_driver->init_termios, 9600, 9600);
+	tty_driver->driver_state = pf;
+	tty_set_operations(tty_driver, &tty_gps_ops);
+
+	pf->gnss_serial = NULL;
+
+	tty_port_init(&pf->gnss_tty_port);
+	tty_port_link_device(&pf->gnss_tty_port, tty_driver, 0);
+
+	err = tty_register_driver(tty_driver);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf),
+			"Failed to register TTY driver err=%d\n", err);
+
+		tty_port_destroy(&pf->gnss_tty_port);
+		put_tty_driver(tty_driver);
+
+		return NULL;
+	}
+
+	return tty_driver;
+}
+
+/**
+ * ice_gnss_init - Initialize GNSS TTY support
+ * @pf: Board private structure
+ */
+void ice_gnss_init(struct ice_pf *pf)
+{
+	struct tty_driver *tty_driver;
+
+	tty_driver = ice_gnss_create_tty_driver(pf);
+	if (!tty_driver)
+		return;
+
+	pf->ice_gnss_tty_driver = tty_driver;
+
+	set_bit(ICE_FLAG_GNSS, pf->flags);
+	dev_info(ice_pf_to_dev(pf), "GNSS TTY init successful\n");
+}
+
+/**
+ * ice_gnss_exit - Disable GNSS TTY support
+ * @pf: Board private structure
+ */
+void ice_gnss_exit(struct ice_pf *pf)
+{
+	u8 i;
+
+	if (!test_bit(ICE_FLAG_GNSS, pf->flags) || !pf->ice_gnss_tty_driver)
+		return;
+
+	tty_port_destroy(&pf->gnss_tty_port);
+
+	if (pf->gnss_serial) {
+		struct gnss_serial *gnss = pf->gnss_serial;
+
+		kthread_cancel_delayed_work_sync(&gnss->read_work);
+		kfree(gnss);
+		pf->gnss_serial = NULL;
+	}
+
+	tty_unregister_driver(pf->ice_gnss_tty_driver);
+	put_tty_driver(pf->ice_gnss_tty_driver);
+	pf->ice_gnss_tty_driver = NULL;
+}
+
+/**
+ * ice_gnss_is_gps_present - Check if GPS HW is present
+ * @hw: pointer to HW struct
+ */
+bool ice_gnss_is_gps_present(struct ice_hw *hw)
+{
+	if (!hw->func_caps.ts_func_info.src_tmr_owned)
+		return false;
+
+	if (ice_is_e810t(hw)) {
+		enum ice_status status;
+			u8 data;
+
+		status = ice_read_e810t_pca9575_reg(hw, ICE_PCA9575_P0_IN,
+						    &data);
+		if (status || !!(data & ICE_E810T_P0_GNSS_PRSNT_N))
+			return false;
+	} else {
+		return false;
+	}
+
+	return true;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
new file mode 100644
index 000000000000..1290c531daa2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2021, Intel Corporation. */
+
+#ifndef _ICE_GNSS_H_
+#define _ICE_GNSS_H_
+
+#include <linux/tty.h>
+#include <linux/tty_flip.h>
+
+#define ICE_E810T_GNSS_I2C_BUS		0x2
+#define ICE_GNSS_UBX_I2C_BUS_ADDR	0x42
+/* Data length register is big endian */
+#define ICE_GNSS_UBX_DATA_LEN_H		0xFD
+#define ICE_GNSS_UBX_DATA_LEN_WIDTH	2
+#define ICE_GNSS_UBX_EMPTY_DATA		0xFF
+#define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
+#define ICE_MAX_I2C_DATA_SIZE		(ICE_AQC_I2C_DATA_SIZE_M >> \
+					ICE_AQC_I2C_DATA_SIZE_S)
+#define ICE_MAX_UBX_READ_TRIES		255
+
+/**
+ * struct gnss_serial - data used to initialize GNSS TTY port
+ * @back: back pointer to PF
+ * @tty: pointer to the tty for this device
+ * @open_count: number of times this port has been opened
+ * @gnss_mutex: gnss_mutex used to protect GNSS serial operations
+ * @kworker: kwork thread for handling periodic work
+ * @read_work: read_work function for handling GNSS reads
+ */
+struct gnss_serial {
+	struct ice_pf *back;
+	struct tty_struct *tty;
+	int open_count;
+	struct mutex gnss_mutex; /* protects GNSS serial structure */
+	struct kthread_worker *kworker;
+	struct kthread_delayed_work read_work;
+};
+
+void ice_gnss_init(struct ice_pf *pf);
+void ice_gnss_exit(struct ice_pf *pf);
+bool ice_gnss_is_gps_present(struct ice_hw *hw);
+#endif /* _ICE_GNSS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index bdb473b9b24e..9f422a2dc1ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -506,6 +506,9 @@ ice_prepare_for_reset(struct ice_pf *pf)
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
 		ice_ptp_release(pf);
 
+	if (test_bit(ICE_FLAG_GNSS_SUPPORTED, pf->flags))
+		ice_gnss_exit(pf);
+
 	if (hw->port_info)
 		ice_sched_clear_port(hw->port_info);
 
@@ -3574,6 +3577,9 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	clear_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
 	if (func_caps->common_cap.ieee_1588)
 		set_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
+	clear_bit(ICE_FLAG_GNSS_SUPPORTED, pf->flags);
+	if (ice_gnss_is_gps_present(&pf->hw))
+		set_bit(ICE_FLAG_GNSS_SUPPORTED, pf->flags);
 
 	pf->max_pf_txqs = func_caps->common_cap.num_txq;
 	pf->max_pf_rxqs = func_caps->common_cap.num_rxq;
@@ -4576,6 +4582,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
 		ice_ptp_init(pf);
 
+	if (test_bit(ICE_FLAG_GNSS_SUPPORTED, pf->flags))
+		ice_gnss_init(pf);
+
 	/* Note: Flow director init failure is non-fatal to load */
 	if (ice_init_fdir(pf))
 		dev_err(dev, "could not initialize flow director\n");
@@ -4748,6 +4757,8 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_deinit_lag(pf);
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
 		ice_ptp_release(pf);
+	if (test_bit(ICE_FLAG_GNSS_SUPPORTED, pf->flags))
+		ice_gnss_exit(pf);
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 	ice_setup_mc_magic_wake(pf);
@@ -6576,6 +6587,9 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
 		ice_ptp_init(pf);
 
+	if (test_bit(ICE_FLAG_GNSS_SUPPORTED, pf->flags))
+		ice_gnss_init(pf);
+
 	/* rebuild PF VSI */
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_PF);
 	if (err) {
-- 
2.30.2

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
