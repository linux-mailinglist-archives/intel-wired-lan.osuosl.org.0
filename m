Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1677782311A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 17:18:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9732E419DB;
	Wed,  3 Jan 2024 16:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9732E419DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704298696;
	bh=HY+3K73QFQIQdkcgLLe45LamK6tjdiSgaK06u0vyUyw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=98tvVxYJ9t9wkteM9S+Vb8XwexE5s60tcw4zwS7hU3Ae5+RsOfVpwzjk/UdkWuNU9
	 GFy9YPoHm+e0OT2QCdM/5Hk4q8vGL6Tvdk/If8q0wtXo4/YY775I+BqjFtPUBwxBdy
	 qcXdceNW6YeE9UUCf9C/TxsoYQq2+plnMKyCOV9MA6CrrsrvnS60Yjg22IeQJavk0W
	 DKl/Vl6hMgzBrMsk9SUWfdyl8XFLFSebuiSCfjLUWUjYMNAsJo/mFyMP4Ye1Plxq3E
	 I207IR1ICv4aoObQYCu3BIBYKty759EYatojq6t4M0T3BmrG0c9EZBPnPOLYiih0Gv
	 TFWXQX4GOZxVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GyHivEuIBS-e; Wed,  3 Jan 2024 16:18:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 602EB41953;
	Wed,  3 Jan 2024 16:18:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 602EB41953
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9DA81BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B115D417BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B115D417BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9PM6IjmHs72z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 11:56:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E24DA41775
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E24DA41775
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="428169507"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="428169507"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:56:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="1111348069"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="1111348069"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2024 03:56:29 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  3 Jan 2024 17:25:55 +0530
Message-Id: <20240103115602.19044-5-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
References: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 03 Jan 2024 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704283006; x=1735819006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D/PGOAIibkxDj9zFnqmFxn8bnVqH9KXwIHXO5AddAko=;
 b=R1u4lr5Qo9RWggD+A4dNrPubtwWGp+uuvufNFsT41ENVN/VBrucqDDQo
 7XHYV43EV6/jpe7xO2sftPpKnX/gEAsERza1rN3ODTYzkieioQSQcyDhs
 q8STlcocY1g2p0fhwle6b1xncW7LYSoni8nc/VNdGdsdDoXujuN56H0oW
 FQ0cGhkClRDzSNvz/vjkidTnOsbM7tfgFszB6EGbid62Kw3JDTXKRMioa
 2aRQZE6t9jQdpqn28R+mps2IjGaYW0hPSREbc3RchA60jcMdm3rIoU+3E
 ZAxotNyyZ25+NdUDv/krDDg3fg8Gb+4PtQZVL8xtpEPR4TZIenpZlbtSv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R1u4lr5Q
Subject: [Intel-wired-lan] [RFC PATCH v3 04/11] igc: remove
 convert_art_to_tsc()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 928f38792203..7899947cc855 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -911,7 +911,11 @@ static bool igc_is_crosststamp_supported(struct igc_adapter *adapter)
 static struct system_counterval_t igc_device_tstamp_to_system(u64 tstamp)
 {
 #if IS_ENABLED(CONFIG_X86_TSC) && !defined(CONFIG_UML)
-	return convert_art_ns_to_tsc(tstamp);
+	return (struct system_counterval_t) {
+		.cs_id	= CSID_X86_ART,
+		.cycles	= tstamp,
+		.nsecs	= true,
+	};
 #else
 	return (struct system_counterval_t) { };
 #endif
-- 
2.35.3

