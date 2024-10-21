Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 128659A6C06
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 16:24:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70E6D607A3;
	Mon, 21 Oct 2024 14:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BxpJV3HSIA0C; Mon, 21 Oct 2024 14:24:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 150C0607A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729520687;
	bh=45jFpTETnG9ZK72FsBImEGgT6ORxkots0d97gy7KYJk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yiyfj3Q263ri9MW4iHIr7OyvDBhYQgpZiSwrDITJd0ZEXsOfn0pBoW16Fq+b9+yH+
	 Q4EMogzZjsqfGU9gOF9IW9e9b3TMT1M13Q3xSHQgtFdSNkaHlWfNmEfL5WOxoPkDMC
	 te9FLUX6L0FzosTYYtKFdZzUfyoDWDYDyHasNKuWH6xNE/xKsp7RCwS4jT92SuriJG
	 WY1bXGzFXgzqobSVHIUlU5dcFPVbHT0JOJU3KxEUx0zbSZkg7YEpB4B+Xu0brDZyRa
	 7wt3JWeyWv63HU/6TzT7ypvxU+eWL9ZTF9e1SujPW+pQt1wT5F08xJ1bVfwjBRs+Y1
	 vwZQYhdI1chOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 150C0607A4;
	Mon, 21 Oct 2024 14:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 41B42AF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2333840504
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jhWPWLE5I3k9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 14:24:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E01F404F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E01F404F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E01F404F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:43 +0000 (UTC)
X-CSE-ConnectionGUID: GtwlCHIrTTulFjHROebvpw==
X-CSE-MsgGUID: dE0UT/UfTg64lIEZ5cxd2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28781488"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28781488"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 07:24:43 -0700
X-CSE-ConnectionGUID: GSfk1+MeQAai4XGcozJrSg==
X-CSE-MsgGUID: gmDL5iN/TyStqyJJLBmfZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="102857325"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 21 Oct 2024 07:24:40 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 21 Oct 2024 16:19:54 +0200
Message-Id: <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729520683; x=1761056683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BWH78xnQQ0mBNPfZL+4Dfj88mfDX/d6wVTXi2veRfQc=;
 b=BllTxixUdYw3BpXJd3iRlDgNuKCn3lEd7XKeUsaa5rRvROwPE6pTFzQS
 RaSrsisXjq6ndzcLZ6OuilDexgSVDQExgiM0p/ApsnKjG27nXbtW8Jufv
 kvGSf6701NRRgA1YznEKEaLXOjjqrnPD6J5+S40PDkbCxlux+V7ODvHZg
 gWXH55TcuZTobBgJSTkGVGyGj2EL7sb+s0EyZQnPCj8FrmWeCsCtgqECQ
 saQIRPhYsf6Ap6G0hwgtrV9X11/dYP8bUL/CiDhacwLanizRBS7x56Vch
 lceoV//SRyPXkx6ruPbU9G/GQet2kDl63LgTeiqj/ek3fJvWWVqNQMZUu
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BllTxixU
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ptp: add control over HW
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
timestamp latch point with ptp sysfs ABI.

[1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/ABI/testing/sysfs-ptp | 12 ++++++++
 drivers/ptp/ptp_sysfs.c             | 44 +++++++++++++++++++++++++++++
 include/linux/ptp_clock_kernel.h    | 29 +++++++++++++++++++
 3 files changed, 85 insertions(+)

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
index 6b1b8f57cd95..7e9f6ef368b6 100644
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
+static DEVICE_ATTR_RW(ts_point);
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
index c892d22ce0a7..921d6615bd39 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -55,6 +55,23 @@ struct ptp_system_timestamp {
 	clockid_t clockid;
 };
 
+/**
+ * enum ptp_ts_point - possible timestamp latch points (IEEE 802.3cx)
+ * @PTP_TS_POINT_SFD:      timestamp latched at the beginning of sending Start
+ *			   of Frame Delimiter (SFD)
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
@@ -159,6 +176,14 @@ struct ptp_system_timestamp {
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
@@ -195,6 +220,10 @@ struct ptp_clock_info {
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

