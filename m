Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7009BDAFE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 02:12:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9F65405F3;
	Wed,  6 Nov 2024 01:12:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uXc_EFRB_v9Y; Wed,  6 Nov 2024 01:12:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF953405E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730855566;
	bh=nUcReB5nANh8Bkf1/JAM5in5YxoMHdg2TQnB9qYxfh8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t7VXa8mu5gLvbG9ePuA05Weiu6MNifpGiuoBsEY+ZzWwhCkfD4UFC0+u5qhSFw/Gy
	 f2eei7nOYepQf+sXlUmtYF/9xZNw/wlNah+HRMbWMMA33lfMq0GUjYIw9VffCSvKq8
	 WmDVKH9XQ873Fq+VVzckpThKgC134gOkr/E/qtUK0jdW7+SMdjjI0KUKS//C+r9QIG
	 04/29aHnmOxX6PxZ0uaKCvtX4n9E+Cd1stkwp/fslEms1CpVIvpKyjSiyjxk9yw+kB
	 8e7/seTlMfslbQJyt0FkkLiPejDzA3o9gBJpu0nyaW/SD3l2dLp8w6ck8nzS69zz44
	 rqIF+wwyd0PtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF953405E1;
	Wed,  6 Nov 2024 01:12:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 70D0FB8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BCAB606FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xWxnXuNmINgz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 01:12:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 36D9960704
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36D9960704
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36D9960704
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:43 +0000 (UTC)
X-CSE-ConnectionGUID: PEIcubdeRYS/16K+O2PQQw==
X-CSE-MsgGUID: DcdWgXhFStu3NXzaygVvXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="18254736"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="18254736"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 17:12:43 -0800
X-CSE-ConnectionGUID: i2ASyNUtSjWTM+TvM7G6YA==
X-CSE-MsgGUID: de0MYXnGRDybWJoSYeyJDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="84362774"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 05 Nov 2024 17:12:40 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed,  6 Nov 2024 02:07:55 +0100
Message-Id: <20241106010756.1588973-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
References: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730855563; x=1762391563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sRqIeC9+dnls9oNcS5WQYz2lL4Vk7+TkC4x83Vkrp88=;
 b=WkbVNIokZAgikGgOdhIUyUIdXnZgwXdTIS6nTytOPAJQthcKmn4zWs7U
 S0dUsl//mxML+p0jM4070Agcp33t0X5wNiMTze5RMSTZsFHg09m8FXG6G
 LfhiGu8o3FOf5qxuZBzngRjZYs8BLqJgIgWCkVlDkaKUU7IUFJErL4g8K
 VzvRNvzpuS8guOyqXeTLi4R0QJgQpgMzB+CkrXqRufWdONOvrepFE2z7d
 k3vUGGvH/scAcFHoWBvf9L7ko5sA1DDjd/CrTNUk6BiTAfkKywbW8EelC
 r34keUrnL62z7xWt+OO9/xfrgRyRCgaCUv1zbEekbefSCyCyF/BP2j9nJ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WkbVNIok
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] ptp: add control over HW
 timestamp latch point
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

Currently HW support of ptp/timesync solutions in network PHY chips can be
implemented with two different approaches, the timestamp maybe latched
either at the beginning or after the Start of Frame Delimiter (SFD) [1].

Allow ptp device drivers to provide user with control over the HW
timestamp latch point with ptp sysfs ABI. Provide a new file under sysfs
ptp device (/sys/class/ptp/ptp<N>/ts_point). The file is available for the
user, if the device driver implements at least one of newly provided
callbacks. If the file is not provided the user shall find a PHY timestamp
latch point within the HW vendor specification.

The file is designed for root user/group access only, as the read for
regular user could impact performance of the ptp device.

Usage, examples:

** Obtain current state:
$ cat /sys/class/ptp/ptp<N>/ts_point
Command returns enum/integer:
* 1 - timestamp latched by PHY at the beginning of SFD,
* 2 - timestamp latched by PHY after the SFD,
* None - callback returns error to the user.

** Configure timestamp latch point at the beginning of SFD:
$ echo 1 > /sys/class/ptp/ptp<N>/ts_point

** Configure timestamp latch point after the SFD:
$ echo 2 > /sys/class/ptp/ptp<N>/ts_point

[1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v3:
- max value of enum ptp_ts_point is also enumerated,
- move enum ptp_ts_point to uapi,
- add NONE value to enum ptp_ts_point, to make clear that value was
  not provided, thus allow further extension of ethtool netlink.
---
 Documentation/ABI/testing/sysfs-ptp | 12 ++++++++
 drivers/ptp/ptp_sysfs.c             | 44 +++++++++++++++++++++++++++++
 include/linux/ptp_clock_kernel.h    | 12 ++++++++
 include/uapi/linux/ptp_clock.h      | 18 ++++++++++++
 4 files changed, 86 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-ptp b/Documentation/ABI/testing/sysfs-ptp
index 9c317ac7c47a..063b3e20386e 100644
--- a/Documentation/ABI/testing/sysfs-ptp
+++ b/Documentation/ABI/testing/sysfs-ptp
@@ -140,3 +140,15 @@ Description:
 		PPS events to the Linux PPS subsystem. To enable PPS
 		events, write a "1" into the file. To disable events,
 		write a "0" into the file.
+
+What:		/sys/class/ptp/ptp<N>/ts_point
+Date:		October 2024
+Contact:	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
+Description:
+		This file provides control over the point in time in
+		which the HW timestamp is latched. As specified in IEEE
+		802.3cx, the latch point can be either at the beginning
+		or after the end of Start of Frame Delimiter (SFD).
+		Value "1" means the timestamp is latched at the
+		beginning of the SFD. Value "2" means that timestamp is
+		latched after the end of SFD.
diff --git a/drivers/ptp/ptp_sysfs.c b/drivers/ptp/ptp_sysfs.c
index 6b1b8f57cd95..2f3f28edbbfd 100644
--- a/drivers/ptp/ptp_sysfs.c
+++ b/drivers/ptp/ptp_sysfs.c
@@ -28,6 +28,46 @@ static ssize_t max_phase_adjustment_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(max_phase_adjustment);
 
+static ssize_t ts_point_show(struct device *dev, struct device_attribute *attr,
+			     char *page)
+{
+	struct ptp_clock *ptp = dev_get_drvdata(dev);
+	enum ptp_ts_point point;
+	int err;
+
+	if (!ptp->info->get_ts_point)
+		return -EOPNOTSUPP;
+	err = ptp->info->get_ts_point(ptp->info, &point);
+	if (err)
+		return err;
+
+	return sysfs_emit(page, "%d\n", point);
+}
+
+static ssize_t ts_point_store(struct device *dev, struct device_attribute *attr,
+			      const char *buf, size_t count)
+{
+	struct ptp_clock *ptp = dev_get_drvdata(dev);
+	enum ptp_ts_point point;
+	int err;
+	u8 val;
+
+	if (!ptp->info->set_ts_point)
+		return -EOPNOTSUPP;
+	if (kstrtou8(buf, 0, &val))
+		return -EINVAL;
+	if (val <= PTP_TS_POINT_NONE || val > PTP_TS_POINT_MAX)
+		return -EINVAL;
+	point = val;
+
+	err = ptp->info->set_ts_point(ptp->info, point);
+	if (err)
+		return err;
+
+	return count;
+}
+static DEVICE_ATTR(ts_point, 0660, ts_point_show, ts_point_store);
+
 #define PTP_SHOW_INT(name, var)						\
 static ssize_t var##_show(struct device *dev,				\
 			   struct device_attribute *attr, char *page)	\
@@ -335,6 +375,7 @@ static struct attribute *ptp_attrs[] = {
 	&dev_attr_pps_enable.attr,
 	&dev_attr_n_vclocks.attr,
 	&dev_attr_max_vclocks.attr,
+	&dev_attr_ts_point.attr,
 	NULL
 };
 
@@ -363,6 +404,9 @@ static umode_t ptp_is_attribute_visible(struct kobject *kobj,
 	} else if (attr == &dev_attr_max_phase_adjustment.attr) {
 		if (!info->adjphase || !info->getmaxphase)
 			mode = 0;
+	} else if (attr == &dev_attr_ts_point.attr) {
+		if (!info->get_ts_point && !info->set_ts_point)
+			mode = 0;
 	}
 
 	return mode;
diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
index c892d22ce0a7..d48619c7c60a 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -159,6 +159,14 @@ struct ptp_system_timestamp {
  *                scheduling time (>=0) or negative value in case further
  *                scheduling is not required.
  *
+ * @set_ts_point: Request change of timestamp latch point, as the timestamp
+ *                could be latched at the beginning or after the end of start
+ *                frame delimiter (SFD), as described in IEEE 802.3cx
+ *                specification.
+ *
+ * @get_ts_point: Obtain the timestamp measurement latch point, counterpart of
+ *                .set_ts_point() for getting currently configured value.
+ *
  * Drivers should embed their ptp_clock_info within a private
  * structure, obtaining a reference to it using container_of().
  *
@@ -195,6 +203,10 @@ struct ptp_clock_info {
 	int (*verify)(struct ptp_clock_info *ptp, unsigned int pin,
 		      enum ptp_pin_function func, unsigned int chan);
 	long (*do_aux_work)(struct ptp_clock_info *ptp);
+	int (*set_ts_point)(struct ptp_clock_info *ptp,
+			    enum ptp_ts_point point);
+	int (*get_ts_point)(struct ptp_clock_info *ptp,
+			    enum ptp_ts_point *point);
 };
 
 struct ptp_clock;
diff --git a/include/uapi/linux/ptp_clock.h b/include/uapi/linux/ptp_clock.h
index 18eefa6d93d6..11a9dad9db00 100644
--- a/include/uapi/linux/ptp_clock.h
+++ b/include/uapi/linux/ptp_clock.h
@@ -253,4 +253,22 @@ struct ptp_extts_event {
 	unsigned int rsv[2];     /* Reserved for future use. */
 };
 
+/**
+ * enum ptp_ts_point - possible timestamp latch points (IEEE 802.3cx)
+ *
+ * @PTP_TS_POINT_NONE: no timestamp latch point was provided
+ * @PTP_TS_POINT_SFD: timestamp latched at the beginning of sending Start
+ *		      of Frame Delimiter (SFD)
+ * @PTP_TS_POINT_POST_SFD: timestamp latched after the end of sending Start
+ *			   of Frame Delimiter (SFD)
+ */
+enum ptp_ts_point {
+	PTP_TS_POINT_NONE = 0,
+	PTP_TS_POINT_SFD,
+	PTP_TS_POINT_POST_SFD,
+
+	/* private: */
+	PTP_TS_POINT_MAX
+};
+
 #endif
-- 
2.38.1

