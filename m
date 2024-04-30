Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D374B8B6D70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 10:54:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81E2D80EA1;
	Tue, 30 Apr 2024 08:54:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oSPJfg7ZHTo2; Tue, 30 Apr 2024 08:54:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FA7F80E74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714467241;
	bh=QRpyfYflYElCfqWOwYzF7gFEQXk7Bbh3DLdV1A4j/+I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GkD4wdq0kRmAGeYQsNz/p5936kpxZUekaH/o+YLXuN0dm7TtCe8GBxcQXlY11mXT8
	 GkjDxgFdC/kjbvrx7jx/Pc8Rg5tCgquZSnlRWUJI9h4EOLibZZBoz+DBXQFf21E057
	 bxuAh8wzdPAtm9PlfNDjnQJXAOAgaTf1xg/KKGPvlpbLNKKzx/ixc6LtF7tuGJCHlc
	 GWHegnkIR77cdzQZsIPOFvxUBZnp7L13yO9k4azouQF8FfaRiKtAPjxwutASNzZfPo
	 5Fr8C0uIRflQs9bkjigg0qWImetBzeCiuKLQbL4wtDU0p/VAbMKZbVFkyK8xzaltLp
	 7yINE9vAGi2eQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FA7F80E74;
	Tue, 30 Apr 2024 08:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CED8B1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8EA480E74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vS-3ecKfYEeo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 08:53:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4849980D96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4849980D96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4849980D96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:57 +0000 (UTC)
X-CSE-ConnectionGUID: sRS/uoa5QWGtI1hJ8zJtNg==
X-CSE-MsgGUID: hZoWwU0UQ9WvOmtfBJXROg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="21311557"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="21311557"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 01:53:56 -0700
X-CSE-ConnectionGUID: l241ZoNeQIeeof6w+W6Kmw==
X-CSE-MsgGUID: PJqShxRRS+GYXQSyfxCF6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26891701"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orviesa007.jf.intel.com with ESMTP; 30 Apr 2024 01:53:49 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Apr 2024 14:22:25 +0530
Message-Id: <20240430085225.18086-13-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714467238; x=1746003238;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BGKIvW+QuSy639MKv7/DBEUGPRf9QzPFu13XKIQ74uc=;
 b=QSjuvo0SW/0cCzvQRwylu7x/124QYbcJm3qZFvcOuR21Hrr3L4MtbLFo
 GbM4QP1a6wb/9Xr4HgOgLqPvA7xxAXQw2iroVycWjETmiQc14+R/Pyh8l
 zb1VC6EwvfoB7aiGb4LqZ6xDmIPY1G8oKwYfM+CkiRrsAtgSg7D02+Axv
 kWYo3d0j2QzRwdx3zeMDPYt/J7sOnQjrByqhC6UUGCqxVbehHJn7c8mTl
 wJ7CAXjOQ+gXBgp9jcjYGz98u2PR8GU7OX34SitpKUY69tNGonw3Jk2mv
 m5zQoc7RSlHvEesILtoINaOivKLs0WZuhV2vcMNwHL8Uu3wHI6Hc1Xn6Z
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QSjuvo0S
Subject: [Intel-wired-lan] [PATCH v7 12/12] ABI: pps: Add ABI documentation
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
index 000000000000..2d9f7dd3813c
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-platform-pps-tio
@@ -0,0 +1,7 @@
+What:		/sys/devices/platform/INTCxxxx/enable
+Date:		May 2024
+KernelVersion:	6.10
+Contact:	Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
+Description:
+		(RW) Enable or disable PPS TIO generator output, read to
+		see the status of hardware (Enabled/Disabled).
diff --git a/MAINTAINERS b/MAINTAINERS
index f6dc90559341..381e31343db9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17669,6 +17669,7 @@ M:	Rodolfo Giometti <giometti@enneenne.com>
 L:	linuxpps@ml.enneenne.com (subscribers-only)
 S:	Maintained
 W:	http://wiki.enneenne.com/index.php/LinuxPPS_support
+F:	Documentation/ABI/testing/sysfs-platform-pps-tio
 F:	Documentation/ABI/testing/sysfs-pps
 F:	Documentation/devicetree/bindings/pps/pps-gpio.yaml
 F:	Documentation/driver-api/pps.rst
-- 
2.35.3

