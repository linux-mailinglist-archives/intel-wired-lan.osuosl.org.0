Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2356081BBC6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 17:18:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B76A4269A;
	Thu, 21 Dec 2023 16:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B76A4269A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703175536;
	bh=UHrOHo9SiWtcd+6J3BknFvjvNZN0EnkeN5qQsPMqSW0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EmJcXn9eyk5ZdCpv2hxp+VwweXbhDQYz/pRQmt1kIoATpd1I1MhCxBcPmRqIWWREP
	 skd1IgLuOa4gsE8rTg8+R44ptbCU20OhJFHlEApDoDlFAt9K3NKx+k0tnNus1IDjf7
	 zqJMg0y3nMtgA8ScNKSqjBXqwlPfLGmufXzAJgwNzFA6x1Y6JOt1Mp6FirwttYzddh
	 4Fd3NcCDym0vB20tmIZ/gJafaegWhAUWIcRBCwWGjqq6/BNlm9vLkjvS9xwjk7tgyN
	 MFtj5xjJorGRTcjBkDKo9IabN50FOZVTlBc6ARixOtfBT2R7szofI1EjoF9WUt5gj1
	 eaq1jtOnqWA0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qunGWLlzd3ng; Thu, 21 Dec 2023 16:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 889654221B;
	Thu, 21 Dec 2023 16:18:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 889654221B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 914791BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A24B82784
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A24B82784
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQV8sWIxfUpm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 09:34:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3D9F82428
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3D9F82428
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="3188696"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="3188696"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 01:34:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="810918311"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="810918311"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orsmga001.jf.intel.com with ESMTP; 21 Dec 2023 01:34:00 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Thu, 21 Dec 2023 15:02:54 +0530
Message-Id: <20231221093254.9599-11-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
References: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 21 Dec 2023 16:18:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703151248; x=1734687248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L+k5CS5sgC8pMM6kY4u78Belg2iE72BS8zZ13TBDiEs=;
 b=k2RzLsD9anFS2xOvYcebFfeKXaDfc9nNThRLICBPlg8yiLXXs0+4m4wD
 TgVO2MZ7XQguFD1ypxgEA6iW0yr0JVsi7nE3NXwAMwmAu7GRvCWFI0Btt
 NB+WHjERNfoXEWGWxnRAAuOBfXLZv8wwyl+YbeZvVvT2QMoNEU+RR+jSq
 gzx6tJbpLp2R8t7PTW17uenPfuE+YdoqukP5NGz4Z3S13n6oqDkJw/RGl
 SIG7lLTbhxHcacvefEGaGZYqESrH6Jr8RA3/5UyTRq+iqG1f8S5Bx7UTm
 UCClW4zjQJJqsoI6vzPk11chSSJ8sh1ojnTN2q6/n28b0RX2Qgn7bQkr0
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k2RzLsD9
Subject: [Intel-wired-lan] [RFC PATCH v2 10/10] ABI: pps: Add ABI
 documentation for Intel TIO
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
Cc: christopher.s.hall@intel.com, lakshmi.sowjanya.d@intel.com,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, pandith.n@intel.com,
 x86@kernel.org, eddie.dong@intel.com, jesse.brandeburg@intel.com,
 linux-sound@vger.kernel.org, alexandre.torgue@foss.st.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

Document sysfs interface for Intel Timed I/O PPS driver

Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 Documentation/ABI/testing/sysfs-platform-pps-tio | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-pps-tio

diff --git a/Documentation/ABI/testing/sysfs-platform-pps-tio b/Documentation/ABI/testing/sysfs-platform-pps-tio
new file mode 100644
index 000000000000..d8be3a6d5795
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-platform-pps-tio
@@ -0,0 +1,7 @@
+What:		/sys/devices/platform/INTCxxxx/enable
+Date:		January 2024
+KernelVersion	6.8
+Contact:	Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
+Description:
+		(RW) Enable or disable PPS TIO generator output, read to
+		see the status of hardware(Enabled/Disabled).
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
