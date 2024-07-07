Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B28F29297E8
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Jul 2024 14:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6286A813F6;
	Sun,  7 Jul 2024 12:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVr7mNnqeTQn; Sun,  7 Jul 2024 12:55:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 444288112D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720356951;
	bh=Zrc75Lk5J0D/5RNj0hmDH7si4hg/2uxeMa9Bwc/oDk0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tCLkunqKcS0CgKHmOflBBBcqPsas8Atd7dKaKpStRg9xqiYssHPD2ItyYXeBzbVfa
	 Jbk3F6rcNCiepF0OOmfyuXjSzA5P8xF1Xk2V6sqSvPdggFNl2fjsFfIQmB8UYcaQV5
	 5o2xnQOQfsSB/DUrgAMVxOS1fc6LkNowCsgcaq9RIlv78rtYB5a89xfFBxNzG7+mMe
	 zgCcYz3NxOGnzQEICAbc8FoayvSaYJIsIBNbtU483kxhgm5NkB3ZIepC8zawM9h7Ns
	 ilEL+VmxeThQmhnPPf8R987CRYuut1Gy+LWEq+cZG7xjbrahYIpakiJnfdPLLziYCZ
	 PSq8VZ6hGwutQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 444288112D;
	Sun,  7 Jul 2024 12:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1844B1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1289A6077C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EifLmtuSqOT2 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jul 2024 12:55:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 09A94605D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09A94605D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09A94605D7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:47 +0000 (UTC)
X-CSE-ConnectionGUID: pGT7Co/4Qri/kN9/ErP3FQ==
X-CSE-MsgGUID: rTyWS3g+RjudK6rmM/4MEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11125"; a="17673457"
X-IronPort-AV: E=Sophos;i="6.09,190,1716274800"; d="scan'208";a="17673457"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 05:55:47 -0700
X-CSE-ConnectionGUID: 2S7CYKyxT3+zy3DqW2yehA==
X-CSE-MsgGUID: 4SKpKOtqTeiGdJIs2bchdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,190,1716274800"; d="scan'208";a="47029662"
Received: from linux.intel.com ([10.54.29.200])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 05:55:46 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 06BA920738C7;
 Sun,  7 Jul 2024 05:55:42 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Simon Horman <horms@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
Date: Sun,  7 Jul 2024 08:53:16 -0400
Message-Id: <20240707125318.3425097-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720356948; x=1751892948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tQF6ozfBKP+jPtiv0rM/lmlMPzLKQsttHfHaT183vZk=;
 b=IvFo8gErSZinG26LX/+IsmUVEsB6JMHHkQRck/C1+9ZZlNYvvVjbbySk
 q9avS5PY/ZYEJiM1WnRnV9hf8ywUzX8eMqXP7upcqt3OxjQfyMzt0BYjO
 GEftjAOMotzSduPMqvpIwZl0T66kutPN8P6r+auu147cgqQ5s82jCKd6r
 HmYDxJD1yXlzRyV4kEZ3lQnjlNcUySciehVupVrhNnxcjM4n8Qm5sjyap
 urUfz61DCMbB2i5NBnkG+Hbh3A1rt9ideg1wYPD4R8KNjDsrSFdizs6Vo
 7QQa+DwFr6Ufa/Y7Y3kg7lzcaWeZ4fuBSWh2VaLpxT4C1TsaX6CNH4J47
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IvFo8gEr
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/3] igc: Fix
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
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_main.c |  8 ++++++--
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 16 ++++++++--------
 drivers/net/ethernet/intel/igc/igc_tsn.h  |  1 +
 3 files changed, 15 insertions(+), 10 deletions(-)

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
index 22cefb1eeedf..f6eaa288926e 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -78,6 +78,14 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
 	wr32(IGC_GTXOFFSET, txoffset);
 }
 
+bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	return (rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
+		adapter->taprio_offload_enable;
+}
+
 /* Returns the TSN specific registers to their default values after
  * the adapter is reset.
  */
@@ -262,14 +270,6 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
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

