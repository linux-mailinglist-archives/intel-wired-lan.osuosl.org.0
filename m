Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 285539B3C4F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 21:52:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1D956081E;
	Mon, 28 Oct 2024 20:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NPFFgnVFDlZq; Mon, 28 Oct 2024 20:52:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 555E460804
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730148772;
	bh=by4Yh9mnOPPdLxkpisb1k6ClIduZkmzEG9cntKn9xJU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vyZ7g+jFaWPbA0oAmJ3gDFIYqKvkvQkOu6p8VgH1C0XwGPTGAhT9ajH+bnc4YDMj/
	 K8U4paIOToFNuLaCkffwKlywzHaJrknzeV7cGtTkxcJ/Q53Y7Os0gHVWlOOphhtDCF
	 9OoEtEgiz7cYSywbyTgdTSD3puYcnzFsYg7InMFza32FGMi2yaNswRvQN6rAbA4fuc
	 PMYhJGJ7sR5RKHiLtDldx4tlBBzP+iEH1y2PWoRP7i/tXKJfCMRXpfxkJUegS/zVyN
	 X1yM5DsA3Sb6atyd92llEVX4uMOK2RIDTUz3Rns7L1MEMc2WmrxWIgQ7aNB2JA8Jko
	 YufPPius1mqXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 555E460804;
	Mon, 28 Oct 2024 20:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C96AB4EC0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7CD540471
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gHZOAxnKEMSh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 20:52:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2CF7940015
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CF7940015
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CF7940015
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:52:48 +0000 (UTC)
X-CSE-ConnectionGUID: MTkpqzLSSGalOMLqj10zFA==
X-CSE-MsgGUID: HGP2ENQUTZ6HCZRfcMv4jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="40343544"
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="40343544"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:52:48 -0700
X-CSE-ConnectionGUID: 4nJnpUkTQkiP8BN042VRig==
X-CSE-MsgGUID: j7yCPt7jRdKnKWNoq5OjJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="81358558"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa007.fm.intel.com with ESMTP; 28 Oct 2024 13:52:45 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 28 Oct 2024 21:47:54 +0100
Message-Id: <20241028204755.1514189-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730148768; x=1761684768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ACTtGG9ESVEf5pMl5YWggma0jKgPuXn6xPZk7LoMq2s=;
 b=k4X62bjNdO9vrKexBG0+0wyFYwGPkNMHOssAH8bYng8J7xwYFrOylNPV
 YgObVubosXU0O7lNTpO/K9p44vEWgirRSSfiQuxMB65hcD3sXf5W1KNX1
 mUW431MwOgWjsPtM/QiyqmUUPUUaYJuJZsSRlcFhn5yrjY9GZVSaV6qbP
 VaYSd9TDUhcW9c4R+QciUecmZeUzSLlcB2YLQH1Gco6c5TZ3kg27BuL4k
 X1+btQuRWvTMQutTqcX3+UrVoIux0xPgLS/yQvaHxDW/cC34p8VxR2j92
 CP2DVhHdDzAhtUyDtOeRaMfxZU5Wg9NfyQ/OFp5e21V9RsWhTtc1dP8Ng
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k4X62bjN
Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] ptp: add control over HW
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

Currently HW support of PTP/timesync solutions in network PHY chips can be
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
* 0 - timestamp latched by PHY at the beginning of SFD,
* 1 - timestamp latched by PHY after the SFD,
* None - callback returns error to the user.

** Configure timestamp latch point at the beginning of SFD:
$ echo 0 > /sys/class/ptp/ptp<N>/ts_point

** Configure timestamp latch point after the SFD:
$ echo 1 > /sys/class/ptp/ptp<N>/ts_point

[1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- improve commit message, describe the new sysfs file and add usage
  examples,
- improve alignment in documentation of enum ptp_ts_point,
- use 0660 permission for ts_point file.
---
 Documentation/ABI/testing/sysfs-ptp | 12 ++++++++
 drivers/ptp/ptp_sysfs.c             | 44 +++++++++++++++++++++++++++++
 include/linux/ptp_clock_kernel.h    | 30 ++++++++++++++++++++
 3 files changed, 86 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-ptp b/Documentation/ABI/testing/sysfs-ptp
index 9c317ac7c47a..a0d89e0fd72e 100644
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
+		Value "0" means the timestamp is latched at the
+		beginning of the SFD. Value "1" means that timestamp is
+		latched after the end of SFD.
diff --git a/drivers/ptp/ptp_sysfs.c b/drivers/ptp/ptp_sysfs.c
index 6b1b8f57cd95..76c2fac54be4 100644
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
+	if (val > PTP_TS_POINT_MAX)
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
index c892d22ce0a7..ea1bcca7f7f6 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -55,6 +55,24 @@ struct ptp_system_timestamp {
 	clockid_t clockid;
 };
 
+/**
+ * enum ptp_ts_point - possible timestamp latch points (IEEE 802.3cx)
+ *
+ * @PTP_TS_POINT_SFD: timestamp latched at the beginning of sending Start
+ *		      of Frame Delimiter (SFD)
+ * @PTP_TS_POINT_POST_SFD: timestamp latched after the end of sending Start
+ *			   of Frame Delimiter (SFD)
+ */
+enum ptp_ts_point {
+	PTP_TS_POINT_SFD,
+	PTP_TS_POINT_POST_SFD,
+
+	/* private: */
+	__PTP_TS_POINT_MAX
+};
+
+#define PTP_TS_POINT_MAX (__PTP_TS_POINT_MAX - 1)
+
 /**
  * struct ptp_clock_info - describes a PTP hardware clock
  *
@@ -159,6 +177,14 @@ struct ptp_system_timestamp {
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
@@ -195,6 +221,10 @@ struct ptp_clock_info {
 	int (*verify)(struct ptp_clock_info *ptp, unsigned int pin,
 		      enum ptp_pin_function func, unsigned int chan);
 	long (*do_aux_work)(struct ptp_clock_info *ptp);
+	int (*set_ts_point)(struct ptp_clock_info *ptp,
+			    enum ptp_ts_point point);
+	int (*get_ts_point)(struct ptp_clock_info *ptp,
+			    enum ptp_ts_point *point);
 };
 
 struct ptp_clock;
-- 
2.38.1

