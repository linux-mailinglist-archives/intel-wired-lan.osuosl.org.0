Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D6589F143
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:49:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B1B1608A1;
	Wed, 10 Apr 2024 11:49:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vIQ2gnQuwInC; Wed, 10 Apr 2024 11:49:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29A2F6089A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749793;
	bh=jQxoMp/x3pVWQqgee6HCsfZxYeCIhhFNnvO+ke7xrBo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JsofE7IulnTbKR6JqbABnj2yP+qfa07VcBhUSa99+rV0BAtBX6R9Fc8MlB+wWeML3
	 k3ttpP9MHwLQGYO0b3L968YnbBqs6jlaKyZ4WCSdl//DiIzNWywScAJRk7Pk+XLSMw
	 HUGWPRQpS2mO3T4K5PkCwClH/KqcD5utJDaLbzGxAzKfEF4rgSVXNjD50PIjXhfUY7
	 Y64tswdkmWYidGcObpIfza5Cm2Khv5LrW0G/qEQKHZ/hMMRuWxucrOyYYlHRbV7+5c
	 QiTY49puPFp5xZnwUkF/bGA8dAfQlZRCVUatjUyVo3YHM4t9IWfLqIWHlNZBFqnjzZ
	 NO+mKF0BDRxnw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29A2F6089A;
	Wed, 10 Apr 2024 11:49:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB02F1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D422D409FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2v6ytn0q1mwi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:49:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B4A8740653
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4A8740653
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4A8740653
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:50 +0000 (UTC)
X-CSE-ConnectionGUID: +RHbwyM4RaCMcAlhH7SWvw==
X-CSE-MsgGUID: YH+/rTJkQJeFzMFCbHsjaA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11944246"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11944246"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:49:50 -0700
X-CSE-ConnectionGUID: OT+wDgJGSJqHR+RwN/KXfA==
X-CSE-MsgGUID: QtnGadiqSc2BPgOAsMkeig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43769373"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa002.fm.intel.com with ESMTP; 10 Apr 2024 04:49:43 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed, 10 Apr 2024 17:18:28 +0530
Message-Id: <20240410114828.25581-12-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749791; x=1744285791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hZSWgcp7GnBBKQ/ANmuBJ1lGoqRIvIkLrQj6268hnRY=;
 b=PBmWg1EjZrOXZKwQpe3+9Mz58iby46bu4mwDcdV8V369+0fUfuN2OgVJ
 XrVylhGe54jkNyCHG0bkJhu0SqqFqEgufWZjSo/90hXdOAqigDQfOeMly
 26kFezkNn1SizyPXGBZYPHpOTnFmTl5OGpiZUVH3GFh+ecSH+zUCKnLxC
 ViI04zdtIT6oxxdG3RbVWvl9jaDK5NkpUvNYZAKwePp7NZnWkgHQTUuna
 cRZn5sd+7UPFt2apkPiQVQpiCKkw3y00g1jyqiwztED/m//eg4swhdlUE
 ipjIyRsUBhwgAHyBP3c9BVRumjmS5CV5RL/UXkYzEgZy+lzeO+/gnBhL+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PBmWg1Ej
Subject: [Intel-wired-lan] [PATCH v6 11/11] ABI: pps: Add ABI documentation
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
index 000000000000..b9b8c97a7840
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-platform-pps-tio
@@ -0,0 +1,7 @@
+What:		/sys/devices/platform/INTCxxxx/enable
+Date:		March 2024
+KernelVersion	6.9
+Contact:	Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
+Description:
+		(RW) Enable or disable PPS TIO generator output, read to
+		see the status of hardware (Enabled/Disabled).
diff --git a/MAINTAINERS b/MAINTAINERS
index aea47e04c3a5..e63365a2d029 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17684,6 +17684,7 @@ M:	Rodolfo Giometti <giometti@enneenne.com>
 L:	linuxpps@ml.enneenne.com (subscribers-only)
 S:	Maintained
 W:	http://wiki.enneenne.com/index.php/LinuxPPS_support
+F:	Documentation/ABI/testing/sysfs-platform-pps-tio
 F:	Documentation/ABI/testing/sysfs-pps
 F:	Documentation/devicetree/bindings/pps/pps-gpio.yaml
 F:	Documentation/driver-api/pps.rst
-- 
2.35.3

