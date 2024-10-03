Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C7198F916
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 23:42:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 168F240BCF;
	Thu,  3 Oct 2024 21:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GhBsj0xOcBc2; Thu,  3 Oct 2024 21:42:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 584F240BD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727991768;
	bh=1a9nowMyF0D3JqvBm0gexMvC6cm9PG7bKaBP5NZMYRY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PCIUqMhYsc32cybrj5OMgQfOEwGqqrE+QvNbNWdZKOy8wh0ssEHuljc3cu9ijS6o/
	 eo3zYidToMG9hAq7qtFBWbVm6Wj7l2ZMls9Ktzd2mrspUmE8XW5ubLIjf2mYIubRFP
	 QNaDTAq8lUWo+91qgUCkGL+tYNRly1Ib8hb87TlTRjesISONj0kba+gBxHHa/fU0ve
	 EbYMtNvbw1MKM5br+xJY5wy6KMs7JM7Lx4JRGpyaz1jMvpcEih6Gx+nvsjMnEMOgDF
	 rJIrhYRf+NMiLnJd7soAvniUfRDA8Bsar90mD1MblMEc4hEo6oxilTc+N1QLydvsAI
	 Ln4+95dH7OapA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 584F240BD2;
	Thu,  3 Oct 2024 21:42:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 896521BF34E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7789F40302
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lWPCIZ_WH62i for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 21:42:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2EFDA401ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EFDA401ED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EFDA401ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:41 +0000 (UTC)
X-CSE-ConnectionGUID: 4OA2at9kQ4Oj6YZok05x7A==
X-CSE-MsgGUID: LdooS4dqShmC4xU0bvblNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27379827"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="27379827"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 14:42:41 -0700
X-CSE-ConnectionGUID: HnWCfMtaSAWX2yxuc7ZenQ==
X-CSE-MsgGUID: Fj1jQc3RT3asw/1FI0UGYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="111952988"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 03 Oct 2024 14:42:38 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2024 23:37:53 +0200
Message-Id: <20241003213754.926691-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
References: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727991761; x=1759527761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1wPx9uI2JOTxSblcfhZCFNWy1M8th2dmxs8o2X69jZY=;
 b=aXmDJ0f1QVo2dhsuwFMhkFKKukeosjbYtc4S2B17NTnWwQTMGsEC7mVx
 PCGcbMeQtGEf49bNE5No1IHQ9DlhoQZTtb5TH6N9QUqfmerCyb72XTLVI
 N/AM+1uQcukAb1sVPYYbj4sMD57hBuveiOjD7BJVc23UOvPB7YjjlN2u5
 fFnUvavqgqOHUMcirvYDFxw27knrGwIi6sAZYRNI8MqPZ0ey0UcDPMFhC
 zgeUF//ybMdK2JruS8vyspA/wSpsP2wTChYscqbqG/XOfEZTCO2jc5Ndo
 2twgkSQVc/klqAZ+nFGtuchdVqO884l4vTPCVOV3faEnuML10WSFY5e9B
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aXmDJ0f1
Subject: [Intel-wired-lan] [RFC PATCH 1/2] ptp: add control over HW
 timestamp latch point
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
Cc: przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce:
- ops for getting and setting the HW timestamp latch point,
- enumerate possible HW timestamp latch point,
- new sysfs ptp device attribute as user knob.

HW support of PTP/timesync solutions in network PHY chips can be
achieved with two different approaches, the timestamp maybe latched
either in the beginning or after the Start of Frame Delimiter (SFD) [1].

Allow ptp device drivers to provide user with control over the timestamp
latch point.

[1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/ptp/ptp_sysfs.c          | 44 ++++++++++++++++++++++++++++++++
 include/linux/ptp_clock_kernel.h | 26 +++++++++++++++++++
 2 files changed, 70 insertions(+)

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
index c892d22ce0a7..ee4b625bca2c 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -55,6 +55,20 @@ struct ptp_system_timestamp {
 	clockid_t clockid;
 };
 
+/**
+ * enum ptp_ts_point - possible timestamp latch points (IEEE 802.3cx)
+ * PTP_TS_POINT_SFD: timestamp latched at the beginning of sending Start
+ *	of Frame Delimiter (SFD)
+ * PTP_TS_POINT_POST_SFD: timestamp latched at the end of sending Start
+ *	of Frame Delimiter (SFD)
+ */
+enum ptp_ts_point {
+	PTP_TS_POINT_SFD,
+	PTP_TS_POINT_POST_SFD,
+	__PTP_TS_POINT_MAX
+};
+#define PTP_TS_POINT_MAX (__PTP_TS_POINT_MAX - 1)
+
 /**
  * struct ptp_clock_info - describes a PTP hardware clock
  *
@@ -159,6 +173,14 @@ struct ptp_system_timestamp {
  *                scheduling time (>=0) or negative value in case further
  *                scheduling is not required.
  *
+ * @set_ts_point: Request change of timestamp latch point, as the timestamp
+ *                could be latched at the beginning or at the end of start
+ *                frame delimiter (SFD), as described in IEEE 802.3cx
+ *                specification.
+ *
+ * @get_ts_point: Obtain the timestamp measurement latch point, counterpart of
+ *                .set_ts_point() for getting currently configured value.
+ *
  * Drivers should embed their ptp_clock_info within a private
  * structure, obtaining a reference to it using container_of().
  *
@@ -195,6 +217,10 @@ struct ptp_clock_info {
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

