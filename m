Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E603EDAB9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 18:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 667FD607A5;
	Mon, 16 Aug 2021 16:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MpBq97ndzXl8; Mon, 16 Aug 2021 16:18:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40FCB6079C;
	Mon, 16 Aug 2021 16:18:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 259501BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2180E6078B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGOGT4e-2zT6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 16:17:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6099A60625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="214041217"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="214041217"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 09:17:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487524311"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 09:17:49 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org
Date: Mon, 16 Aug 2021 18:07:15 +0200
Message-Id: <20210816160717.31285-6-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next 5/7] selftests/net: Add test app
 for SIOC{S|G}SYNCE
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

Test usage of new netdev IOCTLs: SIOCSSYNCE and SIOCGSYNCE.

Allow set or get the netdev driver configuration
of PHY reference clock on output pins.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 tools/testing/selftests/net/Makefile      |   1 +
 tools/testing/selftests/net/phy_ref_clk.c | 138 ++++++++++++++++++++++
 2 files changed, 139 insertions(+)
 create mode 100644 tools/testing/selftests/net/phy_ref_clk.c

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftests/net/Makefile
index 4f9f73e7a299..ace9a5130478 100644
--- a/tools/testing/selftests/net/Makefile
+++ b/tools/testing/selftests/net/Makefile
@@ -39,6 +39,7 @@ TEST_GEN_FILES += hwtstamp_config rxtimestamp timestamping txtimestamp
 TEST_GEN_FILES += ipsec
 TEST_GEN_FILES += ioam6_parser
 TEST_GEN_FILES += gro
+TEST_GEN_FILES += phy_ref_clk
 TEST_GEN_PROGS = reuseport_bpf reuseport_bpf_cpu reuseport_bpf_numa
 TEST_GEN_PROGS += reuseport_dualstack reuseaddr_conflict tls
 TEST_GEN_FILES += toeplitz
diff --git a/tools/testing/selftests/net/phy_ref_clk.c b/tools/testing/selftests/net/phy_ref_clk.c
new file mode 100644
index 000000000000..dc07cf3d4569
--- /dev/null
+++ b/tools/testing/selftests/net/phy_ref_clk.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This program allows to test behavior of netdev after sending
+ * SyncE related ioctl: SIOCGSYNCE and SIOCSSYNCE.
+ * SIOCGSYNCE - was designed to check how output pin on PHY port
+ * was configured.
+ * SIOCSSYNCE - was designed to configure (enable or disable)
+ * one of the pins, that PHY can propagate its recovered clock
+ * signal onto.
+ *
+ * Copyright (C) 2021 Intel Corporation.
+ * Author: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <errno.h>
+#include <string.h>
+#include <unistd.h>
+#include <sys/socket.h>
+#include <sys/ioctl.h>
+#include <arpa/inet.h>
+#include <net/if.h>
+
+#include <asm/types.h>
+#include <linux/sockios.h>
+#include <linux/net_synce.h>
+
+static void usage(const char *error)
+{
+	if (error)
+		printf("invalid: %s\n\n", error);
+	printf("phy_ref_clk <interface> <pin_id> [enable]\n\n"
+		"Enable or disable phy-recovered reference clock signal on given output pin.\n"
+		"Depending on HW configuration, phy recovered clock may be enabled\n"
+		"or disabled on one of output pins which are at hardware's disposal\n\n"
+		"Params:\n"
+		" <interface> - name of netdev implementing SIOCGSYNCE and SIOCSSYNCE\n"
+		" <pin_id> - pin on which clock recovered from PHY shall be propagated\n"
+		"    (0-X), X - number of output pins at HW disposal\n"
+		" In case no other arguments are given, ask the driver\n"
+		" for the current config of recovered clock on the interface.\n\n"
+		" [enable] - if pin shal be enabled or disabled (0/1)\n\n");
+	exit(1);
+}
+
+static int get_ref_clk(const char *ifname, __u8 pin)
+{
+	struct synce_ref_clk_cfg ref_clk;
+	struct ifreq ifdata;
+	int sd, rc;
+
+	if (!ifname || *ifname == '\0')
+		return -1;
+
+	memset(&ifdata, 0, sizeof(ifdata));
+
+	strncpy(ifdata.ifr_name, ifname, IFNAMSIZ);
+
+	sd = socket(PF_INET, SOCK_DGRAM, IPPROTO_IP);
+	if (sd < 0) {
+		printf("socket failed\n");
+		return -1;
+	}
+
+	ref_clk.pin_id = pin;
+	ifdata.ifr_data = (void *)&ref_clk;
+
+	rc = ioctl(sd, SIOCGSYNCE, (char *)&ifdata);
+	close(sd);
+	if (rc != 0) {
+		printf("ioctl(SIOCGSYNCE) failed\n");
+		return rc;
+	}
+	printf("GET: pin %u is %s\n",
+		ref_clk.pin_id, ref_clk.enable ? "enabled" : "disabled");
+
+	return 0;
+}
+
+static int set_ref_clk(const char *ifname, __u8 pin, _Bool enable)
+{
+	struct synce_ref_clk_cfg ref_clk;
+	struct ifreq ifdata;
+	int sd, rc;
+
+	if (!ifname || *ifname == '\0')
+		return -1;
+
+	memset(&ifdata, 0, sizeof(ifdata));
+
+	strcpy(ifdata.ifr_name, ifname);
+
+	sd = socket(PF_INET, SOCK_DGRAM, IPPROTO_IP);
+	if (sd < 0) {
+		printf("socket failed\n");
+		return -1;
+	}
+
+	ref_clk.pin_id = pin;
+	ref_clk.enable = enable;
+	ifdata.ifr_data = (void *)&ref_clk;
+
+	rc = ioctl(sd, SIOCSSYNCE, (char *)&ifdata);
+	close(sd);
+	if (rc != 0) {
+		printf("ioctl(SIOCSSYNCE) failed\n");
+		return rc;
+	}
+	printf("SET: pin %u is %s",
+	       ref_clk.pin_id, ref_clk.enable ? "enabled" : "disabled");
+
+	return 0;
+}
+
+int main(int argc, char **argv)
+{
+	_Bool enable;
+	__u8 pin;
+	int ret;
+
+	if (argc > 4 || argc < 3)
+		usage("argument count");
+
+	ret = sscanf(argv[2], "%u", &pin);
+	if (ret != 1)
+		usage(argv[2]);
+
+	if (argc == 3) {
+		ret = get_ref_clk(argv[1], pin);
+	} else if (argc == 4) {
+		ret = sscanf(argv[3], "%u", &enable);
+		if (ret != 1)
+			usage(argv[3]);
+		ret = set_ref_clk(argv[1], pin, enable);
+	}
+	return ret;
+}
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
