Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 720B68C3F09
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 12:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24EAD80C1B;
	Mon, 13 May 2024 10:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id igBnDz0Mgg9p; Mon, 13 May 2024 10:38:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C264480AB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715596724;
	bh=m0JPHNLMc16gLgljecB7THPHfw4CFTiIUMnEJevFqkY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4C+a+GbeywQ7OxTsULh7NTYmELIIUIHjGm/EHPp9gihfcsNjeeRst41tTFXFOBOzd
	 drCh1yzz8XpJoCz1jvtAP3k7qhecw6UqSi5tTYORTF4ToNFikgsBUf/ba16uMNlAiY
	 vihjShsgiAzi961d/e9lU0BBv+ByOksAavicKaAcRsxr6VcaYaXZTCKxKMbaY7tIhr
	 honCSfrg1IhnJVB20/N5iRwR0zKDjYOXGT5+dN7OHo5jf9mSnZm056idFLKNhIxASh
	 5XgoRBiP8KAXNFQHLxVq+7pzy+KolV2rtP9Th5TFHi4RmSm2/i5flGnIM/F6kpBLuD
	 ADryhMWSsfNrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C264480AB1;
	Mon, 13 May 2024 10:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 991091BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92A5C40C94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 02TFD0xDlKcj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 10:38:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D1C26405A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1C26405A1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1C26405A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:41 +0000 (UTC)
X-CSE-ConnectionGUID: GE/kJllmQZSJoYmen8bD0Q==
X-CSE-MsgGUID: CMR5b8BSSxG1jgEWQ/UsJQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29038962"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29038962"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:38:40 -0700
X-CSE-ConnectionGUID: TKDRBQSYQt+KkyGmmH7qiA==
X-CSE-MsgGUID: 6I/FiArkTq2mDDY4WToxBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61481723"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 13 May 2024 03:38:34 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Mon, 13 May 2024 16:08:04 +0530
Message-Id: <20240513103813.5666-4-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596722; x=1747132722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4F1lxedZEM3s7N7Auk2OfI1FJs1f0oZxEqwluHiKK4Q=;
 b=hBVNgR9h3DuGKlhHhF7rdjcQJbjC+45EoGbkheUijHS7f2uoHUrA3CvC
 X0sd5AQeRsQi7lV94qrpugcsxx42uJCO5jRTcJtk1pXUaDs4ijAIkR3kb
 9QFVi+bCPU/pZzXKNtqLoEvZ0nS36WaDNOZEKrFTOkYXgSV5S/SjI/tnT
 OJY4zbmqx0TO5EhK4Clq0SIp/3jEIimeJLIDq82cb9TzQq0pb8HCWqYpk
 UEhUkjcKZOvRkuOc4U9SaWG/pUl+h+axPQQ/7bHwL6yGmH66NQdIQQA+r
 PRLHVNUzLwz5+i+cK+uh2YrHrRHvXhf9dPFv0ljTzE/e9oAKB13RE4Ezm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hBVNgR9h
Subject: [Intel-wired-lan] [PATCH v8 03/12] e1000e: remove
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

