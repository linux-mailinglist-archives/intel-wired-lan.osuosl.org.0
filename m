Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A13EDAA8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 18:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46B1B60789;
	Mon, 16 Aug 2021 16:17:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gE6FsBU7kkS; Mon, 16 Aug 2021 16:17:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 338DA60782;
	Mon, 16 Aug 2021 16:17:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 69EAE1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57FC560625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGj3i6mAHdSU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 16:17:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E72B760788
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="214041179"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="214041179"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 09:17:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487523815"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 09:17:34 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org
Date: Mon, 16 Aug 2021 18:07:11 +0200
Message-Id: <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 richardcochran@gmail.com, nikolay@nvidia.com, colin.king@canonical.com,
 kuba@kernel.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously there was no common interface for monitoring
synchronization state of Digital Phase Locked Loop.

Add interface through PTP ioctl subsystem for tools,
as well as sysfs human-friendly part of the interface.

enum dpll_state moved to uapi definition, it is required to
have common definition of DPLL states in uapi.

Add new callback function, must be implemented by ptp
enabled driver in order to get the state of dpll.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/ptp/ptp_chardev.c        | 15 ++++++++++
 drivers/ptp/ptp_clockmatrix.h    | 12 --------
 drivers/ptp/ptp_private.h        |  2 ++
 drivers/ptp/ptp_sysfs.c          | 48 ++++++++++++++++++++++++++++++++
 include/linux/ptp_clock_kernel.h |  9 ++++++
 include/uapi/linux/ptp_clock.h   | 27 ++++++++++++++++++
 6 files changed, 101 insertions(+), 12 deletions(-)

diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
index af3bc65c4595..32b2713f18a5 100644
--- a/drivers/ptp/ptp_chardev.c
+++ b/drivers/ptp/ptp_chardev.c
@@ -106,6 +106,14 @@ int ptp_open(struct posix_clock *pc, fmode_t fmode)
 	return 0;
 }
 
+int ptp_get_dpll_state(struct ptp_clock *ptp, struct ptp_dpll_state *ds)
+{
+	if (!ptp->info->get_dpll_state)
+		return -EOPNOTSUPP;
+
+	return ptp->info->get_dpll_state(ptp->info, ds);
+}
+
 long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 {
 	struct ptp_clock *ptp = container_of(pc, struct ptp_clock, clock);
@@ -119,6 +127,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 	struct ptp_clock_caps caps;
 	struct ptp_clock_time *pct;
 	unsigned int i, pin_index;
+	struct ptp_dpll_state ds;
 	struct ptp_pin_desc pd;
 	struct timespec64 ts;
 	int enable, err = 0;
@@ -418,6 +427,12 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 		mutex_unlock(&ptp->pincfg_mux);
 		break;
 
+	case PTP_DPLL_GETSTATE:
+		err = ptp_get_dpll_state(ptp, &ds);
+		if (!err && copy_to_user((void __user *)arg, &ds, sizeof(ds)))
+			err = -EFAULT;
+		break;
+
 	default:
 		err = -ENOTTY;
 		break;
diff --git a/drivers/ptp/ptp_clockmatrix.h b/drivers/ptp/ptp_clockmatrix.h
index fb323271063e..0ce2f280c6d3 100644
--- a/drivers/ptp/ptp_clockmatrix.h
+++ b/drivers/ptp/ptp_clockmatrix.h
@@ -107,18 +107,6 @@ enum scsr_tod_write_type_sel {
 	SCSR_TOD_WR_TYPE_SEL_MAX = SCSR_TOD_WR_TYPE_SEL_DELTA_MINUS,
 };
 
-/* Values STATUS.DPLL_SYS_STATUS.DPLL_SYS_STATE */
-enum dpll_state {
-	DPLL_STATE_MIN = 0,
-	DPLL_STATE_FREERUN = DPLL_STATE_MIN,
-	DPLL_STATE_LOCKACQ = 1,
-	DPLL_STATE_LOCKREC = 2,
-	DPLL_STATE_LOCKED = 3,
-	DPLL_STATE_HOLDOVER = 4,
-	DPLL_STATE_OPEN_LOOP = 5,
-	DPLL_STATE_MAX = DPLL_STATE_OPEN_LOOP,
-};
-
 struct idtcm;
 
 struct idtcm_channel {
diff --git a/drivers/ptp/ptp_private.h b/drivers/ptp/ptp_private.h
index dba6be477067..c57fb54e2b57 100644
--- a/drivers/ptp/ptp_private.h
+++ b/drivers/ptp/ptp_private.h
@@ -117,6 +117,8 @@ ssize_t ptp_read(struct posix_clock *pc,
 __poll_t ptp_poll(struct posix_clock *pc,
 	      struct file *fp, poll_table *wait);
 
+int ptp_get_dpll_state(struct ptp_clock *ptp, struct ptp_dpll_state *ds);
+
 /*
  * see ptp_sysfs.c
  */
diff --git a/drivers/ptp/ptp_sysfs.c b/drivers/ptp/ptp_sysfs.c
index b3d96b747292..fb0890fab266 100644
--- a/drivers/ptp/ptp_sysfs.c
+++ b/drivers/ptp/ptp_sysfs.c
@@ -302,6 +302,52 @@ static ssize_t max_vclocks_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(max_vclocks);
 
+static inline int dpll_state_to_str(enum dpll_state ds, const char **ds_str)
+{
+	const char * const dpll_state_string[] = {
+		"FREERUN",
+		"LOCKACQ",
+		"LOCKREC",
+		"LOCKED",
+		"HOLDOVER",
+		"OPEN_LOOP",
+		"INVALID",
+	};
+	size_t max = sizeof(dpll_state_string) /
+		     sizeof(dpll_state_string[0]);
+
+	if (ds < 0 || ds >= max)
+		return -EINVAL;
+	*ds_str = dpll_state_string[ds];
+
+	return 0;
+}
+
+static ssize_t dpll_state_show(struct device *dev,
+			       struct device_attribute *attr, char *page)
+{
+	struct ptp_clock *ptp = dev_get_drvdata(dev);
+	struct ptp_dpll_state ds;
+	const char *ds_str;
+	ssize_t size = 0;
+	int i, err;
+
+	err = ptp_get_dpll_state(ptp, &ds);
+	if (err)
+		return err;
+
+	for (i = 0; i < ds.dpll_num; i++) {
+		err = dpll_state_to_str(ds.state[i], &ds_str);
+		if (err)
+			return err;
+		size += snprintf(page + size, PAGE_SIZE - 1, "%d %s\n",
+				 i, ds_str);
+	}
+
+	return size;
+}
+static DEVICE_ATTR_RO(dpll_state);
+
 static struct attribute *ptp_attrs[] = {
 	&dev_attr_clock_name.attr,
 
@@ -318,6 +364,8 @@ static struct attribute *ptp_attrs[] = {
 	&dev_attr_pps_enable.attr,
 	&dev_attr_n_vclocks.attr,
 	&dev_attr_max_vclocks.attr,
+
+	&dev_attr_dpll_state.attr,
 	NULL
 };
 
diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
index 71fac9237725..d56cd02d778e 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -129,6 +129,13 @@ struct ptp_system_timestamp {
  *                scheduling time (>=0) or negative value in case further
  *                scheduling is not required.
  *
+ * @get_dpll_state:  Request driver to check and update state of its DPLLs
+ *                   (Digital Phase Locked Loop).
+ *                   Driver returns structure filled with number of
+ *                   available DPLLs and their states.
+ *                   On success function returns 0, or negative on failed
+ *                   attempt.
+ *
  * Drivers should embed their ptp_clock_info within a private
  * structure, obtaining a reference to it using container_of().
  *
@@ -160,6 +167,8 @@ struct ptp_clock_info {
 	int (*verify)(struct ptp_clock_info *ptp, unsigned int pin,
 		      enum ptp_pin_function func, unsigned int chan);
 	long (*do_aux_work)(struct ptp_clock_info *ptp);
+	int (*get_dpll_state)(struct ptp_clock_info *ptp,
+			      struct ptp_dpll_state *ds);
 };
 
 struct ptp_clock;
diff --git a/include/uapi/linux/ptp_clock.h b/include/uapi/linux/ptp_clock.h
index 1d108d597f66..773505ad59e1 100644
--- a/include/uapi/linux/ptp_clock.h
+++ b/include/uapi/linux/ptp_clock.h
@@ -198,6 +198,32 @@ struct ptp_pin_desc {
 	unsigned int rsv[5];
 };
 
+enum dpll_state {
+	DPLL_STATE_MIN = 0,
+	DPLL_STATE_FREERUN = DPLL_STATE_MIN,
+	DPLL_STATE_LOCKACQ = 1,
+	DPLL_STATE_LOCKREC = 2,
+	DPLL_STATE_LOCKED = 3,
+	DPLL_STATE_HOLDOVER = 4,
+	DPLL_STATE_OPEN_LOOP = 5,
+	DPLL_STATE_MAX = DPLL_STATE_OPEN_LOOP,
+};
+
+#define PTP_MAX_DPLL_NUM_PER_DEVICE	8
+
+struct ptp_dpll_state {
+	/*
+	 * Number of available dplls on the device.
+	 */
+	int dpll_num;
+	/*
+	 * State of DPLLs. Values defined in enum dpll_states.
+	 * Indexed by DPLL index on the device.
+	 * Valid indicies < dpll_num
+	 */
+	__u8 state[PTP_MAX_DPLL_NUM_PER_DEVICE];
+};
+
 #define PTP_CLK_MAGIC '='
 
 #define PTP_CLOCK_GETCAPS  _IOR(PTP_CLK_MAGIC, 1, struct ptp_clock_caps)
@@ -223,6 +249,7 @@ struct ptp_pin_desc {
 	_IOWR(PTP_CLK_MAGIC, 17, struct ptp_sys_offset_precise)
 #define PTP_SYS_OFFSET_EXTENDED2 \
 	_IOWR(PTP_CLK_MAGIC, 18, struct ptp_sys_offset_extended)
+#define PTP_DPLL_GETSTATE   _IOR(PTP_CLK_MAGIC, 19, struct ptp_dpll_state)
 
 struct ptp_extts_event {
 	struct ptp_clock_time t; /* Time event occured. */
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
