Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D934B53F26
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 01:41:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3E7542430;
	Thu, 11 Sep 2025 23:41:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RIk8rlpWEz1M; Thu, 11 Sep 2025 23:41:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 505354240A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757634106;
	bh=sNr3SKt5CrT6IDBuCg3IOdVGRmbxahySyY9MeTf/2Zw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gDu8SKUWorGGJAKMcNVPyASeYHrAa1N0ahuQVXoTfTMfQh4krakU232aKQw9Ty4+R
	 J0H5ScSonUQPj2Nnb6rcCUiHpIBUXbb3dZZYvzAzNRLc3gogCRls7xnPtNItD2x3LI
	 OT3R4y+JlyV6L9BhrP/9m+REd4LJp+CWGcC4B78yktzPDyMt1c3ER6k6EUQSXwOQHM
	 z3IWPIgxmufy8QpHR9/R2ga/l6FXjMKvqpVn4K/Z7Mtb3nz6rvWbmekRzqxSzgvhzq
	 CKqv0O7/NM5+UG6ncKx8iwDMk0cJ5emU6LAiOJZ/EnrzYOZR46fU75AOz+2DiCjW/R
	 QmVGjdkX+925w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 505354240A;
	Thu, 11 Sep 2025 23:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 596ED25B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B5BF46F6BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id En-i5vqulgbf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1348E6F6C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1348E6F6C2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1348E6F6C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
X-CSE-ConnectionGUID: P/KN7TEqT2OjNWV1nSbJ5A==
X-CSE-MsgGUID: vtJVqnBkT6KSgDb1J1O/Zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="71354798"
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="71354798"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:38 -0700
X-CSE-ConnectionGUID: UsC3Y0Z4Rt60s9pI2C3GGQ==
X-CSE-MsgGUID: YgMQ2ex7Sc+7RnAFgf0tdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="204589496"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 11 Sep 2025 16:40:39 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-resend-jbrandeb-ice-standard-stats-v3-3-1bcffd157aa5@intel.com>
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
In-Reply-To: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=3014;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=l9QPbikcO3yzD0f+hT38WuIhSPbXbHBQQnlptoND3ck=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhozDcYZXE5qZ+bunzzJ4Lefi9Slk+6b3my/fKIyeHaTwg
 vEqQ5JWRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABNZ5cnw38GY3eT53gL+z0Fz
 D5lyrlvd6bnMbcdybcs1Si8c92W7zmb47xmiHWL7i7VxypQbmb5cfwqVFl9ikjqlZbR7rq/CvVN
 t/AA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757634101; x=1789170101;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=0lR819Q6hVHKftUnHgobtlPp/21TNCumWUp9mYFgO5Q=;
 b=Ywphodx4VmLn4BhzEya4n0jAV5thJSkww6rmNyQD4olP+qQvL7jSbi9U
 xAeq043AyS7NvW3cwOCZ0jp0L3yBZLGnMGeBKsoBVoN+ezmbYIy7V8e/K
 GFiVzZYKCZG0z/yhCygCgyHULPX6NPxlVJhmacxUZh3DUvY5bBcgd+Yq/
 30K1nKTAPK5Y+dF0POWLWDfVqEZ9GAAVH6FCwdfnv9l1JomykDH7WLI6h
 Bzwe94nOZSDrXL7BoPoA2DTqzEjUwYIrWgh22FDRjN2AkFhcmj/wTB/wc
 gY163JOa2kX+O38RlFBWGzd26zV6ifdtVRLQuHVwrZ98YLUYyfv/UpUjg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ywphodx4
Subject: [Intel-wired-lan] [PATCH v3 3/5] ice: add tracking of good transmit
 timestamps
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

