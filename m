Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2DD1E6B5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9EE6325BF4;
	Thu, 28 May 2020 19:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 67Uu2ImMO9iU; Thu, 28 May 2020 19:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B77932154B;
	Thu, 28 May 2020 19:43:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 191F51BF9B9
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 15253872C7
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djJMIiRUNboi for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95F258729F
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:43 +0000 (UTC)
IronPort-SDR: lGkjGkNaqtjsxrcr0UdcViJsOhXCwuReGrSEh6Uxt1lndbHIqj9ZBw4+ryKuRxHbUuLesxV/hr
 JMyHab94Imcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:43 -0700
IronPort-SDR: t4hXKX0UYawVXQxRho2UbpjExyGzs3/3jJrKU1c2D1fsu2EtQsivj0QCXJwSYptOMCL6mq6s1a
 tG3/s+Isakuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585250"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:43 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:31 -0700
Message-Id: <20200528194342.3495-4-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
References: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 03/14] virtual-bus: reword Kconfig help
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
Cc: pierre-louis.bossart@linux.intel.com, fred.oh@linux.intel.com,
 shiraz.saleem@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
---
 drivers/bus/Kconfig | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 00553c78510c..b3f59bdf5c51 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -206,11 +206,12 @@ source "drivers/bus/mhi/Kconfig"
 config VIRTUAL_BUS
        tristate "Software based Virtual Bus"
        help
-         Provides a software bus for virtbus_devices to be added to it
-         and virtbus_drivers to be registered on it.  It matches driver
-         and device based on id and calls the driver's probe routine.
-         One example is the irdma driver needing to connect with various
-         PCI LAN drivers to request resources (queues) to be able to perform
-         its function.
+         Provides a software bus for virtual bus drivers to register and
+	 attach virtual bus devices.  It matches driver and device based on a
+	 unique string and calls the driver's probe routine. One example is
+	 SOF (Sound Open Firmware) clients such as audio cards or test
+	 tools needing to connect with the SOF core. Another example is
+	 the irdma driver needing to connect with various PCI LAN drivers
+	 to request resources (queues) to be able to perform its function.
 
 endmenu
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
