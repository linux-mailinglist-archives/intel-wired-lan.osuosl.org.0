Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2355281BBBF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 17:18:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99D14418CA;
	Thu, 21 Dec 2023 16:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99D14418CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703175506;
	bh=lPJzTp/7n6WIWxUZz8KCWcxY3EC1Bt+H+RcD++cgvEs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DYQ2qlii4c+FqLsOLcpoN1VoE5aPdRC4azuGzoMYMLdb7pPOgXd/AAVQYVq+JndsB
	 lHEjp3S/pKK2JKlrDINJFi3ZLr6//SRBXfi3lmzjT/QboxZOlCLcMwhwHDpPeW1U/x
	 8Y+l0eSWkSjjQ/mlouveS42ttX5chEShSXnE4VQMbNA2d2z0WVLxzy/cTKWNv5ImOX
	 /FZ+frY3PBY7GyHrQFMJta9IH4urUbWyAQs000OgslSdtlFn/KIoENOnKEnd78IcKA
	 4zrE9HLMwCX48+S1n0wKr9rKUwNvFYjz8nTHbMFdBTDuwRzajVXeQa539lEpx+VQVS
	 3d39mBMUt3ozg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zANhKtaW0L-b; Thu, 21 Dec 2023 16:18:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 959584191F;
	Thu, 21 Dec 2023 16:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 959584191F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53B7E1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D34580C8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D34580C8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SDBch03AjYwy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 09:33:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A2E680AB4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A2E680AB4
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="3188516"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="3188516"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 01:33:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="810918187"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="810918187"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orsmga001.jf.intel.com with ESMTP; 21 Dec 2023 01:33:15 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Thu, 21 Dec 2023 15:02:47 +0530
Message-Id: <20231221093254.9599-4-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
References: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 21 Dec 2023 16:18:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703151202; x=1734687202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PmpIlUpx7+DXd9SlbVWYDCreHkh1wtkoXMr9WfcfHRg=;
 b=PS9s22oNcCafNoLKz47o1xVCyQ9j9PUPSKuWE5NJeI+bCi7sGOdDOQrM
 HsKXqAjK9DKs2la99kAFgAjKNSg4PfDMBRga0EWfVPV7Lfj24k9REx84M
 ulm1KLw+o4hZ7ZrCYklv2EgJ2ocB5dEmb3Mo426eMe20VIMXYxdmqgmOI
 I5qRZnaLylsx7bY+TSIlNwabxJovFU+jd3oPOXBSD3UKj3MhvVsvkZTLA
 9SUFnEjAbJm72ivyc2QZN63U5VYBz0FPLfmNdCBWTsdH7CPdxrTvDFnmh
 sf/V/4u4XL4Mj8buWOoec0+lDioNbsxOzlZwIPNSL5dj+5+M/eqBNUUYj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PS9s22oN
Subject: [Intel-wired-lan] [RFC PATCH v2 03/10] e10002: remove
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ptp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 02d871bc112a..9d8be03a9827 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -124,7 +124,8 @@ static int e1000e_phc_get_syncdevicetime(ktime_t *device,
 	sys_cycles = er32(PLTSTMPH);
 	sys_cycles <<= 32;
 	sys_cycles |= er32(PLTSTMPL);
-	*system = convert_art_to_tsc(sys_cycles);
+	system->cycles = sys_cycles;
+	system->cs_id = CSID_X86_ART;
 
 	return 0;
 }
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
