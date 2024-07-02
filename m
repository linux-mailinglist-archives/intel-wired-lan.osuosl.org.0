Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB34591EDA4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 06:11:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A14F760A9D;
	Tue,  2 Jul 2024 04:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n6zhJMytrMns; Tue,  2 Jul 2024 04:11:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7ADF608F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719893513;
	bh=LhSyu9ACy8WaXBiPisIByIj4Qv8ECt3Ft7F14cmpJJ8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c6ISB0Ixm0p/pxA+c66T+I6cuGQR3nbjMBwWBDGP/n2QUPz8cRGiqyaeyFRiT1hXM
	 GM/mh1v01xNzYpFZ6XeMF3cp9OMfRoy4eDMqLFo3/trm4K3OHH1648kqNTJvl7sxS4
	 8xmJ//dis3RM6AGLkPg4U196+7SCGRJ6Fiy0gGZtpVUAEmROyGoQkOQwBQ6HJKWZQi
	 ANKdMB+dAvnpoBLehG7XMGgRuLnplx1XTQb7K676vhJ2j/tpZWCBkRYp80IAeGn7pS
	 /CbFVbSWennexhLoX9CwSkjx7zc36WE1G6LxsplDbi6GUtnnjIHa6F1NfRB3VzRt5Y
	 2dseDvEiC0Tbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7ADF608F6;
	Tue,  2 Jul 2024 04:11:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B424E1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97BB26080A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bq1LYWpIVDF6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 04:11:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 979ED607EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 979ED607EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 979ED607EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:50 +0000 (UTC)
X-CSE-ConnectionGUID: AVCmnDJZSoOxtgXqP+mUKw==
X-CSE-MsgGUID: rR+s1WvhSsC03OZaWnkskQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="20916481"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="20916481"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:50 -0700
X-CSE-ConnectionGUID: aOqUkMZvRHyxCVM5hGKQ4A==
X-CSE-MsgGUID: NKeDPlQxThqAg17vhI3IEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46183514"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:50 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 0169F2019374;
 Mon,  1 Jul 2024 21:11:46 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue,  2 Jul 2024 00:09:23 -0400
Message-Id: <20240702040926.3327530-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719893510; x=1751429510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IG+jA6WK8oBnqv/MTjklMRjKGhlbiPGKuUuCogmTQDg=;
 b=FIHYs0EeHD1AZj0gtEoGm49yiW2Rldqxt1tYr/CQtjvLFnWLF4Egr5mo
 RbacU9r3t9rPkwxkKRMSP76WUrja3NdcRmZplSmW+08+UvTNRc1M7sbdx
 M5eYO30s1cvwKT4ZwzSjYMFVJU8Nsb/1hj0rSHXnbBI9iUIkYVcBB6vq8
 jlUvVHgNuk7y/rlLAbodx5235e0t4/1xHg5eyJ85pKLyzw+Ar+T+SY5/s
 2hR1cUyc6TZg4CK/rV6pSALhIIi60CtlVVkOJb9ehAJiLWeEHOPf46UVG
 LwCnAz5FOafPVu/SoHkS/cqLrD4K8lRWInNbn1Ii+ItqSoisTK5GBXD3e
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FIHYs0Ee
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/4] igc: Fix
 qbv_config_change_errors logics
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When user issues these cmds:
1. Either a) or b)
   a) mqprio with hardware offload disabled
   b) taprio with txtime-assist feature enabled
2. etf
3. tc qdisc delete
4. taprio with base time in the past

At step 4, qbv_config_change_errors wrongly increased by 1.

Excerpt from IEEE 802.1Q-2018 8.6.9.3.1:
"If AdminBaseTime specifies a time in the past, and the current schedule
is running, then: Increment ConfigChangeError counter"

qbv_config_change_errors should only increase if base time is in the past
and no taprio is active. In user perspective, taprio was not active when
first triggered at step 4. However, i225/6 reuses qbv for etf, so qbv is
enabled with a dummy schedule at step 2 where it enters
igc_tsn_enable_offload() and qbv_count got incremented to 1. At step 4, it
enters igc_tsn_enable_offload() again, qbv_count is incremented to 2.
Because taprio is running, tc_setup_type is TC_SETUP_QDISC_ETF and
qbv_count > 1, qbv_config_change_errors value got incremented.

This issue happens due to reliance on qbv_count field where a non-zero
value indicates that taprio is running. But qbv_count increases
regardless if taprio is triggered by user or by other tsn feature. It does
not align with qbv_config_change_errors expectation where it is only
concerned with taprio triggered by user.

Fixing this by relocating the qbv_config_change_errors logic to
igc_save_qbv_schedule(), eliminating reliance on qbv_count and its
inaccuracies from i225/6's multiple uses of qbv feature for other TSN
features.

The new function created: igc_tsn_is_taprio_activated_by_user() uses
taprio_offload_enable field to indicate that the current running taprio
was triggered by user, instead of triggered by non-qbv feature like etf.

Fixes: ae4fe4698300 ("igc: Add qbv_config_change_errors counter")
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c |  8 ++++++--
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 19 +++++++++++--------
 drivers/net/ethernet/intel/igc/igc_tsn.h  |  1 +
 3 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 305e05294a26..0f8a5ad940ec 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6334,12 +6334,16 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (!validate_schedule(adapter, qopt))
 		return -EINVAL;
 
+	igc_ptp_read(adapter, &now);
+
+	if (igc_tsn_is_taprio_activated_by_user(adapter) &&
+	    is_base_time_past(qopt->base_time, &now))
+		adapter->qbv_config_change_errors++;
+
 	adapter->cycle_time = qopt->cycle_time;
 	adapter->base_time = qopt->base_time;
 	adapter->taprio_offload_enable = true;
 
-	igc_ptp_read(adapter, &now);
-
 	for (n = 0; n < qopt->num_entries; n++) {
 		struct tc_taprio_sched_entry *e = &qopt->entries[n];
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 22cefb1eeedf..02dd41aff634 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -78,6 +78,17 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
 	wr32(IGC_GTXOFFSET, txoffset);
 }
 
+bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
+	    adapter->taprio_offload_enable)
+		return true;
+	else
+		return false;
+}
+
 /* Returns the TSN specific registers to their default values after
  * the adapter is reset.
  */
@@ -262,14 +273,6 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		s64 n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
 
 		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
-
-		/* Increase the counter if scheduling into the past while
-		 * Gate Control List (GCL) is running.
-		 */
-		if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
-		    (adapter->tc_setup_type == TC_SETUP_QDISC_TAPRIO) &&
-		    (adapter->qbv_count > 1))
-			adapter->qbv_config_change_errors++;
 	} else {
 		if (igc_is_device_id_i226(hw)) {
 			ktime_t adjust_time, expires_time;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index b53e6af560b7..98ec845a86bf 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -7,5 +7,6 @@
 int igc_tsn_offload_apply(struct igc_adapter *adapter);
 int igc_tsn_reset(struct igc_adapter *adapter);
 void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
+bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter);
 
 #endif /* _IGC_BASE_H */
-- 
2.25.1

