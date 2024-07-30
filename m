Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C486940382
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 03:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E9F440AC9;
	Tue, 30 Jul 2024 01:24:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i7WApRQohpjH; Tue, 30 Jul 2024 01:24:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB19040ACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722302654;
	bh=rMrqMjgfpB+dCu7xew6DVLs0ImGq1mJGCFFWO37D8w4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=opbEJFjbFZ6NR93UbWokhv8K1nXlUOU0bV6NAKYfHq+TYpkmuZM1x68lMBhxg9aOp
	 RgxQdGPC8dyJ/5V+ZNXSfBh1e1nrgnfhVpUVar9KMZRmPktoBy/v8+VIwDPmaQuV4W
	 vyPsQ9nKXnBQEwdSTruRsGof3/xGKcjkNpIqPW6F2rldRL3NDkSyZ6vCYU4ORkf1AW
	 2Uuv6XeOVxoxtL0p1LoCARgb5fOIo2JYcBRB6URMayuSBbfJS3jUhuYgOlfE/An+7s
	 mcxWGEX+AweN1n6PZJRJDMXvQbtKE9PLwqLbPq9MiloklqYnWbT7Mz+vCxo/3p6guc
	 oAazHOvXD3xPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB19040ACB;
	Tue, 30 Jul 2024 01:24:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C52E71BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B34B8608E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:24:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XeO7ckw9vpIV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 01:24:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D671B608E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D671B608E8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D671B608E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:24:11 +0000 (UTC)
X-CSE-ConnectionGUID: 9ofF7Y2LQK2i976ENR1XqA==
X-CSE-MsgGUID: 51pXLNMlSqSIMe+oa7PACw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="37570476"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="37570476"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 18:24:11 -0700
X-CSE-ConnectionGUID: /FPKSomRSZms2Q7Lz1hWig==
X-CSE-MsgGUID: VapJBZ7LTF2X5PXthe6Lhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="58947896"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa005.jf.intel.com with ESMTP; 29 Jul 2024 18:24:05 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Sasha Neftin <sasha.neftin@intel.com>
Date: Tue, 30 Jul 2024 09:23:36 +0800
Message-Id: <20240730012336.775912-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722302652; x=1753838652;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YhJyeBx1tD5AH76gIDYJrjbuR9IYaY+3oVHeXbhIfYA=;
 b=H+lS1/99PihQlSzjQ5zoEjH33vMab0+3rpqk9+uDM9JIggXb/97ie5SH
 a03ASclU9QzG6GEL7IVbD+62d+TXYi4a+eREHJ9+tjYI34zSSGVZJ7APY
 GeUSUSEGheRSbGIGrow5Tmu+b7IouB/JbjcFXm+PpN4V67od1RKdBDBYN
 8kkknHI5QuXyydrw9WODGGykNxqswFDsKjbpS3wBrBNTpWSGt/4o/QTqi
 Bs8t3gzvUu/JOWxJqmfrCsNQ1ddduIYT/unT6o5R1nK+/YvFDoLvZKS3i
 1Qty9xD+yzgVwIbKqd/z/Y6Qasz51pBtyY+ZpiT5RtdZpufi24Sv+8YNP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H+lS1/99
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v1 3/3] igc: Add default Rx Queue into documentation
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>

Add description on default Rx Queue, including the get and set
method, into documentation.

Signed-off-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 .../device_drivers/ethernet/intel/igc.rst     | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/igc.rst b/Documentation/networking/device_drivers/ethernet/intel/igc.rst
index 08b2cfacc7c0..bef396d9ec53 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/igc.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/igc.rst
@@ -63,6 +63,27 @@ diagnostics, as well as displaying statistical information. The latest ethtool
 version is required for this functionality. Download it at:
 https://www.kernel.org/pub/software/network/ethtool/
 
+Default Rx queue selection
+--------------------------
+In Multiple Receive Queues modes, ingress traffic may be redirected to specific
+Rx queue based on different programmable filters.
+
+When none of the filters is matched, the incoming frame will be redirected to
+the "Default Rx queue", which is Rx Queue 0 by default.
+
+For configurations where Queue 0 pair is used for high priority traffic (like
+AF_XDP), this may not be desirable. To address this, the driver provides the
+option to modify the default Rx queue via sysfs.
+
+A sysfs attribute "default_rx_queue" is available under /sys/devices. E.g.:
+/sys/devices/pci0000:00/.../default_rx_queue
+
+To check the currently configured default Rx queue:
+cat /sys/devices/pci0000:00/.../default_rx_queue
+
+To set the default queue to a desired value, for example 3:
+echo 3 > /sys/devices/pci0000:00/.../default_rx_queue
+
 
 Support
 =======
-- 
2.34.1

