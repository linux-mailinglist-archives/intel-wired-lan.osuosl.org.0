Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C26288B6D61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 10:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0ACD781EF4;
	Tue, 30 Apr 2024 08:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PNSMsBh-tKbl; Tue, 30 Apr 2024 08:52:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A50B81257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714467177;
	bh=m0JPHNLMc16gLgljecB7THPHfw4CFTiIUMnEJevFqkY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U91FU86H95+jrKOfGZ8yy7/3NEa89tFxn+KYQs0S1nwer1UkeKtyFc1MDhUliuSgF
	 tVXIb7k/DULWcms5MCncIcQ/tVy8epMQrOp88KI8ovLD16mZUrcq5JNGyZoK4Qo9qo
	 32lNt7O00ny/RA5B68RLj5u0bYA1UNxrKovKIYWF+7GxB1gkEegf3/chOv8uuTujRq
	 DLOlydJzF5W2dtU7m4Kr+7Y7uMiws3alHi7Xhk30v+X9MdpXiy54KuJRe2xwpjTuQv
	 Ahg6gPHZzlmJrAOZyzhYw4M9EmJ/9Qagm/fmhcLFYaLpJJuzCpAkvvv4KihToIyVY0
	 E6TQlbGBECLgQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A50B81257;
	Tue, 30 Apr 2024 08:52:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A520B1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FAD881EF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:52:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KfLgnAL1NCqw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 08:52:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B9CA581F1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9CA581F1D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9CA581F1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:52:54 +0000 (UTC)
X-CSE-ConnectionGUID: O+NeCrRgSZifZq2FDfFVfw==
X-CSE-MsgGUID: 6b5LB5tkQI+UQRBMABuKfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="21311339"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="21311339"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 01:52:54 -0700
X-CSE-ConnectionGUID: MUWH9i2rSeG7onmR7tigcw==
X-CSE-MsgGUID: B+FpvNxWQpm9X9W5AblC6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26891504"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orviesa007.jf.intel.com with ESMTP; 30 Apr 2024 01:52:47 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Apr 2024 14:22:16 +0530
Message-Id: <20240430085225.18086-4-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714467175; x=1746003175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4F1lxedZEM3s7N7Auk2OfI1FJs1f0oZxEqwluHiKK4Q=;
 b=AO3+690kXDbsdhz6t4OVl4wIv2VBs05TH42p20m4ZgFPxqwg95hfk0Zw
 ZBzG9WC3f7g+k+kWso5fw/+TxIk+TtGBpQCYqjHIoJCuNSeMKvC2ZrGyQ
 SIMWtby96TKLlaf9L0Ja/yXzUALAQSrPykuGeWIwFYWxG0wHC9nIZrj83
 9K3TArknrMwmpi/chTk1+E6aF4ZMVP8yVxJw4QIF6FNcz+vdK0WTtW+5V
 sP6WL7fRcwAvxIrPYnuAjw5M0yOol/YiGP3LiFD4mRBOB7lzPazzUA8FY
 ZH6Y0AuxWDTQSUcThgKoqX+koBgR2NeKpEfmbxD22LULWKFYb4wcTjHGs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AO3+690k
Subject: [Intel-wired-lan] [PATCH v7 03/12] e1000e: remove
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

From: Thomas Gleixner <tglx@linutronix.de>

The core code provides a mechanism to convert the ART base clock to the
corresponding TSC value without requiring an architecture specific
function.

Store the ART clocksoure ID and the cycles value in the provided
system_counterval structure.

Replace the direct conversion via convert_art_to_tsc() by filling in the
required data.

No functional change intended.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ptp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index bbcfd529399b..89d57dd911dc 100644
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

