Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1028A3EDAB8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 18:18:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84B656077E;
	Mon, 16 Aug 2021 16:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZXsjJvyHTgZ; Mon, 16 Aug 2021 16:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72D4A60625;
	Mon, 16 Aug 2021 16:17:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6493B1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52E5360785
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vse8mkTRBk0L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 16:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B94416077E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="214041207"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="214041207"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 09:17:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487524191"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 09:17:46 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org
Date: Mon, 16 Aug 2021 18:07:14 +0200
Message-Id: <20210816160717.31285-5-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next 4/7] net: add ioctl interface for
 recover reference clock on netdev
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

Previously there was no similar interface. It is required for
configuration of Synchronous Ethernet (SyncE).

User must be able to enable or disable propagation of its
PHY recovered clock signal onto available output pin.
This allows the signal to be used as frequency reference signal
for different hardware chips.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 include/uapi/linux/net_synce.h | 21 +++++++++++++++++++++
 include/uapi/linux/sockios.h   |  4 ++++
 net/core/dev_ioctl.c           |  6 +++++-
 3 files changed, 30 insertions(+), 1 deletion(-)
 create mode 100644 include/uapi/linux/net_synce.h

diff --git a/include/uapi/linux/net_synce.h b/include/uapi/linux/net_synce.h
new file mode 100644
index 000000000000..a482a7e43151
--- /dev/null
+++ b/include/uapi/linux/net_synce.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/*
+ * Userspace API for synchronous ethernet configuration
+ *
+ * Copyright (C) 2021 Intel Corporation
+ * Author: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
+ *
+ */
+#ifndef _NET_SYNCE_H
+#define _NET_SYNCE_H
+#include <linux/types.h>
+
+/*
+ * Structure used for passing data with SIOCSSYNCE and SIOCGSYNCE ioctls
+ */
+struct synce_ref_clk_cfg {
+	__u8 pin_id;
+	_Bool enable;
+};
+
+#endif /* _NET_SYNCE_H */
diff --git a/include/uapi/linux/sockios.h b/include/uapi/linux/sockios.h
index 7d1bccbbef78..32c7d4909c31 100644
--- a/include/uapi/linux/sockios.h
+++ b/include/uapi/linux/sockios.h
@@ -153,6 +153,10 @@
 #define SIOCSHWTSTAMP	0x89b0		/* set and get config		*/
 #define SIOCGHWTSTAMP	0x89b1		/* get config			*/
 
+/* synchronous ethernet config per physical function */
+#define SIOCSSYNCE	0x89c0		/* set and get config           */
+#define SIOCGSYNCE	0x89c1		/* get config                   */
+
 /* Device private ioctl calls */
 
 /*
diff --git a/net/core/dev_ioctl.c b/net/core/dev_ioctl.c
index 0e87237fd871..fe21365c9492 100644
--- a/net/core/dev_ioctl.c
+++ b/net/core/dev_ioctl.c
@@ -406,7 +406,9 @@ static int dev_ifsioc(struct net *net, struct ifreq *ifr, void __user *data,
 		    cmd == SIOCGMIIREG ||
 		    cmd == SIOCSMIIREG ||
 		    cmd == SIOCSHWTSTAMP ||
-		    cmd == SIOCGHWTSTAMP) {
+		    cmd == SIOCGHWTSTAMP ||
+		    cmd == SIOCSSYNCE ||
+		    cmd == SIOCGSYNCE) {
 			err = dev_eth_ioctl(dev, ifr, cmd);
 		} else if (cmd == SIOCBONDENSLAVE ||
 		    cmd == SIOCBONDRELEASE ||
@@ -577,6 +579,7 @@ int dev_ioctl(struct net *net, unsigned int cmd, struct ifreq *ifr,
 	case SIOCBRADDIF:
 	case SIOCBRDELIF:
 	case SIOCSHWTSTAMP:
+	case SIOCSSYNCE:
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			return -EPERM;
 		fallthrough;
@@ -605,6 +608,7 @@ int dev_ioctl(struct net *net, unsigned int cmd, struct ifreq *ifr,
 	default:
 		if (cmd == SIOCWANDEV ||
 		    cmd == SIOCGHWTSTAMP ||
+		    cmd == SIOCGSYNCE ||
 		    (cmd >= SIOCDEVPRIVATE &&
 		     cmd <= SIOCDEVPRIVATE + 15)) {
 			dev_load(net, ifr->ifr_name);
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
