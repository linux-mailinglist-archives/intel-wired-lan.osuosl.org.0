Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4EEAE187D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 12:03:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E63D40E19;
	Fri, 20 Jun 2025 10:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WZvMF0VanV3E; Fri, 20 Jun 2025 10:03:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B654740E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750413810;
	bh=q8Tl9Xass3Z/Ho8meJ66n7Mo4xmSll5bH6eYZ/z2AWU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0zruyJ9g5JMx+5gHiBU+XHOZGpBR1ILzt58KvItsgTVoyZgfV7el3qWqdt5Q9DioG
	 Nwtz3pGUXxpsZOOZbNT6o+W6YZZOjRrmkM0EZHcnsKM8SpiehyAaws4tuVzQ8/BIXx
	 u5K6ptJqE0cmyFCTNaOjIFKxc/DQHGN2OcmTbI0+1W2tV/oHzdNb+qbtuqDRqEHflB
	 WPk6G8AFbC2ySMjKxEAR99GE7lc5xOwaumI4yv69y6QJ3NIjvm4mbgkpLXs5lXEbeV
	 rYfLGC6fPHDz3DcUKVWV+dCQFvSb1AltYly5+ohcjRBnftogxpHJ9aHPypsIDAmJ/Q
	 NU0BwIqYkmyVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B654740E0E;
	Fri, 20 Jun 2025 10:03:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5CAEDE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C5A540DF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QZBBD4SFuztZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 10:03:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 91FC640DDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91FC640DDC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91FC640DDC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:03:27 +0000 (UTC)
X-CSE-ConnectionGUID: L6aSFVGOReivBWANESr+qw==
X-CSE-MsgGUID: YQNBG2R1Q8+u+82b0wWEnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52817101"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="52817101"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 03:03:27 -0700
X-CSE-ConnectionGUID: MhaWDlu1QxqkL0qi3Zw4pw==
X-CSE-MsgGUID: Ce0XWxVtSoSksHuUAySBQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="181744791"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa001.fm.intel.com with ESMTP; 20 Jun 2025 03:03:21 -0700
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
 Joshua Hay <joshua.a.hay@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Brett Creeley <bcreeley@amd.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 20 Jun 2025 18:02:50 +0800
Message-Id: <20250620100251.2791202-2-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250620100251.2791202-1-yoong.siang.song@intel.com>
References: <20250620100251.2791202-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750413808; x=1781949808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CQGVmG5DzyINqq9HjZaFAhV7/N9sszZHtO3uOlf8a+k=;
 b=DQ5KUgrVlpxzLGaqzS1kz6QmpZszgGYlzYmbftBRv4oDxTcfSnCaBpxJ
 COgGePmCLpQXrMhK0AD5ZJw+dkruyZs/VvMYDRp2nY+pwNNtaYDPJf4Ty
 unGUMhoJ0hFUEb23zpLkaQ3WaXFfQk7ONAsE7wM+VhqJDGiNikEuF7cfe
 fhtfqfbwAkG6ipjdJTjwn7OukWh6jR9w9Og2xH+zmYfvzORfull4VbkJL
 hjFBAA6LrBCg482sOEXFPTR40dmDf0EaGLllgdMV8bUaThD2PlcMaIasC
 Dsiy0CfSY4xSHEuOE4mW6DLJGqz7fQW7l2UNwfLgvS6/iWJaAXpw1h62b
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DQ5KUgrV
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v3 1/2] igc: Relocate RSS field definitions to igc_defines.h
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move the RSS field definitions related to IPv4 and IPv6 UDP from igc.h to
igc_defines.h to consolidate the RSS field definitions in a single header
file, improving code organization and maintainability.

This refactoring does not alter the functionality of the driver but
enhances the logical grouping of related constants

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         | 4 ----
 drivers/net/ethernet/intel/igc/igc_defines.h | 3 +++
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1525ae25fd3e..0b35e593d5ee 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -406,10 +406,6 @@ extern char igc_driver_name[];
 #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
 #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
 
-#define IGC_MRQC_ENABLE_RSS_MQ		0x00000002
-#define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
-#define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
-
 /* RX-desc Write-Back format RSS Type's */
 enum igc_rss_type_num {
 	IGC_RSS_TYPE_NO_HASH		= 0,
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 86b346687196..d80254f2a278 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -383,11 +383,14 @@
 #define IGC_RXDEXT_STATERR_IPE		0x40000000
 #define IGC_RXDEXT_STATERR_RXE		0x80000000
 
+#define IGC_MRQC_ENABLE_RSS_MQ		0x00000002
 #define IGC_MRQC_RSS_FIELD_IPV4_TCP	0x00010000
 #define IGC_MRQC_RSS_FIELD_IPV4		0x00020000
 #define IGC_MRQC_RSS_FIELD_IPV6_TCP_EX	0x00040000
 #define IGC_MRQC_RSS_FIELD_IPV6		0x00100000
 #define IGC_MRQC_RSS_FIELD_IPV6_TCP	0x00200000
+#define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
+#define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
 
 /* Header split receive */
 #define IGC_RFCTL_IPV6_EX_DIS	0x00010000
-- 
2.34.1

