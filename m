Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3913A3EDABB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 18:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF98F60788;
	Mon, 16 Aug 2021 16:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vuq9BKjV3sZl; Mon, 16 Aug 2021 16:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6BD4607B6;
	Mon, 16 Aug 2021 16:18:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2D0F1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0BF06078B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3v0zyNAcv7Et for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 16:18:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00C2D60791
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:18:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="214041232"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="214041232"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 09:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487524589"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 09:17:57 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org
Date: Mon, 16 Aug 2021 18:07:17 +0200
Message-Id: <20210816160717.31285-8-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next 7/7] ice: add sysfs interface to
 configure PHY recovered reference signal
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

Allow user to enable or disable propagation of PHY recovered clock
signal onto requested output pin with new human friendly device private
sysfs interface.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 111 ++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h |   1 +
 2 files changed, 111 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 23ab85dbbfc8..054346a8fdbd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -9,6 +9,114 @@
 
 #define UNKNOWN_INCVAL_E822 0x100000000ULL
 
+static ssize_t ice_sysfs_phy_write(struct kobject *kobj,
+				   struct kobj_attribute *attr,
+				   const char *buf, size_t count);
+
+static struct kobj_attribute phy_attribute = __ATTR(synce, 0220,
+	NULL, ice_sysfs_phy_write);
+
+/**
+ * __get_pf_pdev - helper function to get the pdev
+ * @kobj:       kobject passed
+ * @pdev:       PCI device information struct
+ *
+ * Raturns 0 on success, negative on failure
+ */
+static int __get_pf_pdev(struct kobject *kobj, struct pci_dev **pdev)
+{
+	struct device *dev;
+
+	if (!kobj->parent)
+		return -EINVAL;
+
+	/* get pdev */
+	dev = kobj_to_dev(kobj->parent);
+	*pdev = to_pci_dev(dev);
+
+	return 0;
+}
+
+#define ICE_C827_RCLKB_PIN      1 /* SDA pin */
+
+/**
+ * ice_sysfs_phy_write - sysfs interface for setting PHY recovered clock pins
+ * @kobj:  sysfs node
+ * @attr:  sysfs node attributes
+ * @buf:   string representing enable and pin number
+ * @count: length of the 'buf' string
+ *
+ * Return number of bytes written on success or negative value on failure.
+ **/
+static ssize_t
+ice_sysfs_phy_write(struct kobject *kobj, struct kobj_attribute *attr,
+		    const char *buf, size_t count)
+{
+	enum ice_status ret = 0;
+	unsigned int ena, pin;
+	struct pci_dev *pdev;
+	struct ice_pf *pf;
+	u32 freq = 0;
+	int cnt;
+
+	if (__get_pf_pdev(kobj, &pdev))
+		return -EPERM;
+
+	pf = pci_get_drvdata(pdev);
+
+	cnt = sscanf(buf, "%u %u", &ena, &pin);
+	if (cnt != 2 || pin > ICE_C827_RCLKB_PIN)
+		return -EINVAL;
+
+	ret = ice_aq_set_phy_rec_clk_out(&pf->hw, pin, !!ena, &freq);
+	if (ret)
+		return -EIO;
+
+	return count;
+}
+
+/**
+ * ice_phy_sysfs_init - initialize sysfs for DPLL
+ * @pf: pointer to pf structure
+ *
+ * Initialize sysfs for handling DPLL in HW.
+ **/
+static void ice_phy_sysfs_init(struct ice_pf *pf)
+{
+	struct kobject *phy_kobj;
+
+	phy_kobj = kobject_create_and_add("phy", &pf->pdev->dev.kobj);
+	if (!phy_kobj) {
+		dev_info(&pf->pdev->dev, "Failed to create PHY kobject\n");
+		return;
+	}
+
+	if (sysfs_create_file(phy_kobj, &phy_attribute.attr)) {
+		dev_info(&pf->pdev->dev, "Failed to create synce kobject\n");
+		kobject_put(phy_kobj);
+		return;
+	}
+
+	pf->ptp.phy_kobj = phy_kobj;
+}
+
+/**
+ * ice_ptp_sysfs_release - release sysfs resources of ptp and synce features
+ * @pf: pointer to pf structure
+ *
+ * Release sysfs interface resources for handling configuration of
+ * ptp and synce features.
+ */
+static void ice_ptp_sysfs_release(struct ice_pf *pf)
+{
+	if (pf->ptp.phy_kobj) {
+		sysfs_remove_file(pf->ptp.phy_kobj, &phy_attribute.attr);
+		kobject_del(pf->ptp.phy_kobj);
+		kobject_put(pf->ptp.phy_kobj);
+		pf->ptp.phy_kobj = 0;
+	}
+}
+
 /**
  * ice_set_tx_tstamp - Enable or disable Tx timestamping
  * @pf: The PF pointer to search in
@@ -2121,6 +2229,7 @@ void ice_ptp_init(struct ice_pf *pf)
 			return;
 	}
 
+	ice_phy_sysfs_init(pf);
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_cfg_timestamp(pf, false);
 
@@ -2180,7 +2289,7 @@ void ice_ptp_release(struct ice_pf *pf)
 {
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_cfg_timestamp(pf, false);
-
+	ice_ptp_sysfs_release(pf);
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	clear_bit(ICE_FLAG_PTP, pf->flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 75656eb3084a..9b526782a977 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -143,6 +143,7 @@ struct ice_ptp {
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct hwtstamp_config tstamp_config;
+	struct kobject *phy_kobj;
 };
 
 #define __ptp_port_to_ptp(p) \
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
