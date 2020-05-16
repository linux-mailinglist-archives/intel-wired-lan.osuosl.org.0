Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7274F1D5D9F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 03:30:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A964890A4;
	Sat, 16 May 2020 01:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 49YDH71fnFW5; Sat, 16 May 2020 01:30:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C26889060;
	Sat, 16 May 2020 01:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6651B1BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 578A92284C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZ4Nbc34ex12 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 01:30:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 88ECD22829
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:02 +0000 (UTC)
IronPort-SDR: I2o253+oJRKM9WOr+bkeR7kRfrx0QFs28qOUqGl3+BMQFuJS6cWeyAdcVn9yfd//KR+CevGAle
 11J2cRxIJmvQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 18:30:01 -0700
IronPort-SDR: j08HzdhtMHWR4ABS+kySQYtbp9t0MBmZdDfawb4aIOK3tToM8sJY5Cp74ENzUWh8zDr94OPFBN
 CDRvZfNBjPLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307569139"
Received: from wkbertra-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.131.129])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 18:30:01 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 18:29:45 -0700
Message-Id: <20200516012948.3173993-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200516012948.3173993-1-vinicius.gomes@intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue RFC 1/4] ethtool: Add support for
 configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 m-karicheri2@ti.com, vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Frame preemption (described in IEEE 802.3br-2016) defines the concept
of preemptible and express queues. It allows traffic from express
queues to "interrupt" traffic from preemptible queues, which are
"resumed" after the express traffic has finished transmitting.

Frame preemption can only be used when both the local device and the
link partner support it.

A new ethtool command was added to support the configuration
parameters.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 include/linux/ethtool.h      |  6 ++++++
 include/uapi/linux/ethtool.h | 25 +++++++++++++++++++++++++
 net/ethtool/ioctl.c          | 36 ++++++++++++++++++++++++++++++++++++
 3 files changed, 67 insertions(+)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index a23b26e..e4a6710 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -360,6 +360,8 @@ bool ethtool_convert_link_mode_to_legacy_u32(u32 *legacy_u32,
  * @get_ethtool_phy_stats: Return extended statistics about the PHY device.
  *	This is only useful if the device maintains PHY statistics and
  *	cannot use the standard PHY library helpers.
+ * @get_preempt: Get the network device Frame Preemption parameters.
+ * @set_preempt: Set the network device Frame Preemption parameters.
  *
  * All operations are optional (i.e. the function pointer may be set
  * to %NULL) and callers must take this into account.  Callers must
@@ -454,6 +456,10 @@ struct ethtool_ops {
 				      struct ethtool_fecparam *);
 	int	(*set_fecparam)(struct net_device *,
 				      struct ethtool_fecparam *);
+	int	(*get_preempt)(struct net_device *,
+			       struct ethtool_fp *);
+	int	(*set_preempt)(struct net_device *,
+			       struct ethtool_fp *);
 	void	(*get_ethtool_phy_stats)(struct net_device *,
 					 struct ethtool_stats *, u64 *);
 };
diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index f4662b3..d63f9f8 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -369,6 +369,28 @@ struct ethtool_eee {
 	__u32	reserved[2];
 };
 
+/**
+ * struct ethtool_fp - Frame Preemption information
+ * @cmd: ETHTOOL_{G,S}FP
+ * @fp_supported: If frame preemption is supported.
+ * @fp_enabled: If frame preemption should be advertised to the link partner
+ *	as enabled.
+ * @supported_queues_mask: Bitmask indicating which queues support being
+ *	configured as preemptible (bit 0 -> queue 0, bit N -> queue N).
+ * @preemptible_queues_mask: Bitmask indicating which queues are
+ *	configured as preemptible (bit 0 -> queue 0, bit N -> queue N).
+ * @min_frag_size: Minimum size for all non-final fragment size.
+ */
+struct ethtool_fp {
+	__u32	cmd;
+	__u8	fp_supported;
+	__u8	fp_enabled;
+	__u32	supported_queues_mask;
+	__u32	preemptible_queues_mask;
+	__u32	min_frag_size;
+	__u32	reserved[2];
+};
+
 /**
  * struct ethtool_modinfo - plugin module eeprom information
  * @cmd: %ETHTOOL_GMODULEINFO
@@ -1441,6 +1463,9 @@ enum ethtool_fec_config_bits {
 #define ETHTOOL_GFECPARAM	0x00000050 /* Get FEC settings */
 #define ETHTOOL_SFECPARAM	0x00000051 /* Set FEC settings */
 
+#define ETHTOOL_GFP		0x00000052 /* Get Frame Preemption settings */
+#define ETHTOOL_SFP		0x00000053 /* Set Frame Preemption settings */
+
 /* compatibility with older code */
 #define SPARC_ETH_GSET		ETHTOOL_GSET
 #define SPARC_ETH_SSET		ETHTOOL_SSET
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 52102ab..e15ad5c 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -2531,6 +2531,36 @@ static int ethtool_set_fecparam(struct net_device *dev, void __user *useraddr)
 	return dev->ethtool_ops->set_fecparam(dev, &fecparam);
 }
 
+static int ethtool_get_preempt(struct net_device *dev, void __user *useraddr)
+{
+	struct ethtool_fp fpparam = { .cmd = ETHTOOL_GFP };
+	int rc;
+
+	if (!dev->ethtool_ops->get_preempt)
+		return -EOPNOTSUPP;
+
+	rc = dev->ethtool_ops->get_preempt(dev, &fpparam);
+	if (rc)
+		return rc;
+
+	if (copy_to_user(useraddr, &fpparam, sizeof(fpparam)))
+		return -EFAULT;
+	return 0;
+}
+
+static int ethtool_set_preempt(struct net_device *dev, void __user *useraddr)
+{
+	struct ethtool_fp fpparam;
+
+	if (!dev->ethtool_ops->set_preempt)
+		return -EOPNOTSUPP;
+
+	if (copy_from_user(&fpparam, useraddr, sizeof(fpparam)))
+		return -EFAULT;
+
+	return dev->ethtool_ops->set_preempt(dev, &fpparam);
+}
+
 /* The main entry point in this file.  Called from net/core/dev_ioctl.c */
 
 int dev_ethtool(struct net *net, struct ifreq *ifr)
@@ -2810,6 +2840,12 @@ int dev_ethtool(struct net *net, struct ifreq *ifr)
 	case ETHTOOL_SFECPARAM:
 		rc = ethtool_set_fecparam(dev, useraddr);
 		break;
+	case ETHTOOL_GFP:
+		rc = ethtool_get_preempt(dev, useraddr);
+		break;
+	case ETHTOOL_SFP:
+		rc = ethtool_set_preempt(dev, useraddr);
+		break;
 	default:
 		rc = -EOPNOTSUPP;
 	}
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
