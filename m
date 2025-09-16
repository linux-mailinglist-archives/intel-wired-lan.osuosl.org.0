Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC32B5A12A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C355082778;
	Tue, 16 Sep 2025 19:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JcFirengWzyR; Tue, 16 Sep 2025 19:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED7A0826BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758050218;
	bh=sNr3SKt5CrT6IDBuCg3IOdVGRmbxahySyY9MeTf/2Zw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1FxmDz3VtCLdU0F6hxqJOAoQ8mozvxA5gtQYTMj7HhfSlZnwG1GQd4GoPqwpkPrr5
	 mWGHERNxlRac0xGgUy2YioXLO2IopkktBzs7ThjN+OtU7oV9bG5K84KnKX3VWuv+D3
	 /SE/ROSUqd0pML1Pkg99PUw0Z9p/V8ABe3SFp/kOoHGOg3aeedJhUG3HzyRR1M1wOL
	 HOXTDCdznF9KRv6RUZ827VtloKcor3fIvCYAS/PyeKxcA6jfotKRiSElf+1msfKAEr
	 7s96Ng1gLe9OV+HOB/NOlWphGVFnATDqUQnJEht0XWCNe9DU/Wg3uLGT4+m7RTWH/X
	 ZtgCT8bpYET/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED7A0826BB;
	Tue, 16 Sep 2025 19:16:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E24BA279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8E444168B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M3qIYl-BcQTt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12827404BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12827404BB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12827404BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:54 +0000 (UTC)
X-CSE-ConnectionGUID: hQokLEXsQHahFWh98vIqOw==
X-CSE-MsgGUID: 88P07PanRBawbsG6lmsXbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60037595"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60037595"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:54 -0700
X-CSE-ConnectionGUID: rwMndYWHTve6R1+0KYpCEQ==
X-CSE-MsgGUID: fbqmXmMGS6G3lE5kpHYoYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174961764"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:54 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 16 Sep 2025 12:14:56 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-resend-jbrandeb-ice-standard-stats-v4-3-ec198614c738@intel.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: jbrandeburg@cloudflare.com
X-Mailer: b4 0.15-dev-cbe0e
X-Developer-Signature: v=1; a=openpgp-sha256; l=3014;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=l9QPbikcO3yzD0f+hT38WuIhSPbXbHBQQnlptoND3ck=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoyT25c0beb4KFz05op+2e9v8Z+OBhasP7CBOyCNxT97g
 eQOkSjRjlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACbySIbhD2/HUZm1HRcsNnoH
 6Sa+VJpbr1fO0HKptevSk/QWi0vN9owM/Re828/XlL4/OPe1/d9V1h2GnmmKJydcDsm2mxbzddM
 ENgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758050215; x=1789586215;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=0lR819Q6hVHKftUnHgobtlPp/21TNCumWUp9mYFgO5Q=;
 b=YQn8fjBr6IQYUVlkqQOdcqmk4Wo/xdfiYa1jlkszLR7P8Q3eM1mDLQ5f
 p7t0YM7X9Xc4Uc3f0P9yusICWjpFM9kLFWbnMFrJhXGyRbq+Ug+CgogHF
 +U3XsJP0YNvNbVL+ecTp16eiUUohGYDEl9ZqT4FpI+Ss6ixQapMQslHe4
 1Ar+Tp/EVcROpMSuomwRjK9Q1z8uP+CaWZkiNgQlxQ2aRB7g4/aJaMYn1
 XKiMQnEexOIYOvD0U6HIlwsh9BS0oLUFIiSo8fv3IfN94SPSV68A+wrEB
 F6QoyDF1+y3n8dQQLRv3XdzX8Te+gO4ANf4ZKdo1wPX33lU8r6nCihdQm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YQn8fjBr
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: add tracking of good
 transmit timestamps
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

As a pre-requisite to implementing timestamp statistics, start tracking
successful PTP timestamps. There already existed a trace event, but
add a counter as well so it can be displayed by the next patch.

Good count is a u64 as it is much more likely to be incremented. The
existing error stats are all u32 as before, and are less likely so will
wrap less.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.h | 2 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 137f2070a2d9..27016aac4f1e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -237,6 +237,7 @@ struct ice_ptp_pin_desc {
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
  * @reset_time: kernel time after clock stop on reset
+ * @tx_hwtstamp_good: number of completed Tx timestamp requests
  * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
  * @tx_hwtstamp_timeouts: number of Tx skbs discarded with no time stamp
  * @tx_hwtstamp_flushed: number of Tx skbs flushed due to interface closed
@@ -261,6 +262,7 @@ struct ice_ptp {
 	struct ptp_clock *clock;
 	struct kernel_hwtstamp_config tstamp_config;
 	u64 reset_time;
+	u64 tx_hwtstamp_good;
 	u32 tx_hwtstamp_skipped;
 	u32 tx_hwtstamp_timeouts;
 	u32 tx_hwtstamp_flushed;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9b065709c899..d2ca9d7bcfc1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -500,6 +500,9 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 	if (tstamp) {
 		shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
 		ice_trace(tx_tstamp_complete, skb, idx);
+
+		/* Count the number of Tx timestamps that succeeded */
+		pf->ptp.tx_hwtstamp_good++;
 	}
 
 	skb_tstamp_tx(skb, &shhwtstamps);
@@ -558,6 +561,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	struct ice_ptp_port *ptp_port;
 	unsigned long flags;
+	u32 tstamp_good = 0;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 tstamp_ready;
@@ -658,11 +662,16 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		if (tstamp) {
 			shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
 			ice_trace(tx_tstamp_complete, skb, idx);
+
+			/* Count the number of Tx timestamps that succeeded */
+			tstamp_good++;
 		}
 
 		skb_tstamp_tx(skb, &shhwtstamps);
 		dev_kfree_skb_any(skb);
 	}
+
+	pf->ptp.tx_hwtstamp_good += tstamp_good;
 }
 
 /**

-- 
2.51.0.rc1.197.g6d975e95c9d7

