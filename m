Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5418282311E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 17:18:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3B8D419E7;
	Wed,  3 Jan 2024 16:18:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3B8D419E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704298714;
	bh=+xK5Qg9KSIPkv/nQ9AM9OwYbjDloqDgJX/+IIJ7S58c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=niDIPdBYQhmWZSpqeWo8oRkZxhzlodgBkBb/WuDso6pWHbxvqW9rpFxBoPHiNRjSj
	 mU8K3cUOIC3dMg5EnFQxwXUP8YitVYNwtBafF9XcNYQdW3uRGhjeL79OzdmutYxnbl
	 cjXvCGG5PXXjwXkR3vTvk7enRtMSyqdfOLIWyq1ISetMuy8w+/nKOqqwl+IKPNr0A2
	 DQooGtZ50f/2eRNROXlpn0pm2XhaD+5niI7tNgvX0T32rMQEpt6civFAwEywmBA47u
	 Jr8ZvQn5WQFowHKrHl/Ubk6y3Ffzatl5WbnndIRdD0hWr3ZPLF4ziwtkXis2yB3Br8
	 WyvEezg9JX2uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59ToMGobvqi3; Wed,  3 Jan 2024 16:18:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B427A419C6;
	Wed,  3 Jan 2024 16:18:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B427A419C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED7DA1BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3C06821FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3C06821FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFop8gWNpTX3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 11:56:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29C8B8214E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29C8B8214E
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="428169562"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="428169562"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="1111348106"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="1111348106"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2024 03:56:48 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  3 Jan 2024 17:25:58 +0530
Message-Id: <20240103115602.19044-8-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
References: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 03 Jan 2024 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704283015; x=1735819015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+PyxmFRWe/t75785UAnv5jwKbLbVhxVPk8E+eOUGbOw=;
 b=ORtU6G6q9S0Fd8VQ/8UcYGBoMiWDuw7HpT4VHUURUf41b0x88ibB6sLi
 LRjw9sEcTlWk90JUMo9cqeeDBD//EKZjt+WEPtbvgNcHcFgAqe4YqWkKQ
 x/EDzpJJ9xJKB5jFGjkFsrAYDnAzk1qavKtHjcL3meIVOh6CKzy5nOCKx
 oyNWIgkL+u9R1MhPl4qTTc2AiR3/814i2LD0zsonVryX6oUFmvzzjN8Gg
 +X0a2cz76jK6gQX+q1ruc0DLEwy/ojREsQz4r7v5lFFoWD9FS2eA1KT+R
 7wHlRwCXSZkpoP4zzTfVfQrRzhBuUW1MqcNRULqQD0ZZyuHHy5EzRVHPl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ORtU6G6q
Subject: [Intel-wired-lan] [RFC PATCH v3 07/11] ice/ptp: remove
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
 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 71f405f8a6fe..f4611a5d8c27 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1978,7 +1978,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
 			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
 			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
-			*system = convert_art_ns_to_tsc(hh_ts);
+			system->cycles = hh_ts;
 			/* Read Device source clock time */
 			hh_ts_lo = rd32(hw, GLTSYN_HHTIME_L(tmr_idx));
 			hh_ts_hi = rd32(hw, GLTSYN_HHTIME_H(tmr_idx));
-- 
2.35.3

