Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B48D28C3F1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 12:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F9E0820E8;
	Mon, 13 May 2024 10:39:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BJ8NpxMm_zG4; Mon, 13 May 2024 10:39:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C58DB8203B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715596782;
	bh=mZQvbByv4j2m0FsA8hwR7TRNNu1gNQ46thFMLeu5FtU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fPtxt141Ex6yfXmDz1YkDa2nvsv8Wo8m00NwJlWv9XfNRfbYXTHE5yg7dFWu+ev5E
	 yVMNJdwj0+i0nDwTqr0tdidUrU+e9w7wSSAF9j+38jFh4cJOwsdRuz6vBxbuVbt720
	 CbqM7Rt0oyDAupRWTtKMEIczDLPJT0r7p1zCOAiyFn4OYnyZ9CdKRxPEN3RtLCVzzI
	 vC/eC8vriUnDtj6RY8eTQi2XPUVBgyzNMR957az1d1/7LI3T+Kc6rhFVeOKvAZ6jda
	 FGoVb93sU7C8LZcLFeSFeOARNimNe7aNcRKWvBqEBV1L7oa8IkCrLoZhuf7XvIzLJo
	 JaCSH3Mq2iMYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C58DB8203B;
	Mon, 13 May 2024 10:39:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0B871BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B96C140C94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gcBl_Ety32n5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 10:39:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F5F7405A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F5F7405A1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F5F7405A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:39:39 +0000 (UTC)
X-CSE-ConnectionGUID: Dnbx47UvRZWP02QyP+8RsQ==
X-CSE-MsgGUID: K5Yz6KmsSJWPKyYSj+7zkQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29039194"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29039194"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:39:38 -0700
X-CSE-ConnectionGUID: UtjDBr70QbO/cGb0j/aMFQ==
X-CSE-MsgGUID: 5/3nhQKxSMuXqRjPARFSpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61481885"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 13 May 2024 03:39:32 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Mon, 13 May 2024 16:08:13 +0530
Message-Id: <20240513103813.5666-13-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596779; x=1747132779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LnDI8ECmyOwaPF9450szty9CSHo1Xk8N8ohrNbKrGTw=;
 b=NEgZvw4gCQAh4eCcRXH9/l+B1EkbDAjHcaH2qdIRF8inAqIH+5eeE4y0
 IE1R190kJ2Vf8Du+c3lOb9vcLAHjxO/I8GL2QE8/fgPxPhr/+h7zvG09L
 t6/OFaisnugRMduL6ZRWKBlpIRGMMEZ2M0QyUOHIeMC4uk1PvdPZPb2R5
 5sU5c/TKF2yROyG5cexSRoQIrKzqT3Q5YfFruq22YVUTsnub6h0zL0L+4
 sXveZkfC14p5RE3Uuh4Pj0GK+7eGaY7XDZWAY490Mfn8bFvfBcb1Gmqog
 SVutE/1VvfSWVmqlFpogJiYt/Nv+Xr2RDdWZLKgsKwU3SMfQxc6hKHKex
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NEgZvw4g
Subject: [Intel-wired-lan] [PATCH v8 12/12] ABI: pps: Add ABI documentation
 for Intel TIO
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

Document sysfs interface for Intel Timed I/O PPS driver.

Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 Documentation/ABI/testing/sysfs-platform-pps-tio | 7 +++++++
 MAINTAINERS                                      | 1 +
 2 files changed, 8 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-pps-tio

diff --git a/Documentation/ABI/testing/sysfs-platform-pps-tio b/Documentation/ABI/testing/sysfs-platform-pps-tio
new file mode 100644
index 000000000000..74f3244b55dc
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-platform-pps-tio
@@ -0,0 +1,7 @@
+What:		/sys/devices/platform/INTCxxxx/enable
+Date:		June 2024
+KernelVersion:	6.11
+Contact:	Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
+Description:
+		(RW) Enable or disable PPS TIO generator output, read to
+		see the status of hardware (Enabled/Disabled).
diff --git a/MAINTAINERS b/MAINTAINERS
index 28e20975c26f..97606c072e3f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17670,6 +17670,7 @@ M:	Rodolfo Giometti <giometti@enneenne.com>
 L:	linuxpps@ml.enneenne.com (subscribers-only)
 S:	Maintained
 W:	http://wiki.enneenne.com/index.php/LinuxPPS_support
+F:	Documentation/ABI/testing/sysfs-platform-pps-tio
 F:	Documentation/ABI/testing/sysfs-pps
 F:	Documentation/devicetree/bindings/pps/pps-gpio.yaml
 F:	Documentation/driver-api/pps.rst
-- 
2.35.3

