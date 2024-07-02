Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CA491EDA6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 06:12:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32817608F6;
	Tue,  2 Jul 2024 04:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h-QtsFOx6h3L; Tue,  2 Jul 2024 04:11:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 615F160A48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719893519;
	bh=725Va2YFdqbjlWAHgGLosfXPQxNpGGV8Gc5W83Fvp0E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5A5X42uI3FcSrehS9GM4a+Xut3qubXDM6Pc+l0ujpbfjFKTz/SpbzfPGAnpU6edUd
	 SMEyFwDQLmMkmum/umQRSol+pQHnysWXdg5atN5W5iMZUpGVG9Xn1+ggOx5UvJq86e
	 D0BwPYJe/6DvL3AO83bCrxknJrBWMtY7GL1/pciB2ErBP2QoNWFTJefCG8OOzBCF0K
	 h/Z7tO/TMidatKeIXbl71elK9sBMSuEPtK+nPjj3Xz9BbcG3vfMEZ7CM8/XHtXc9tN
	 3GlGq1lcZYaPOKLvFvk+gLKnAF7win2g0jleXgJGH0s4HSD0euyemA0ed93QFnN2EI
	 PnpmO9RfmzAzA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 615F160A48;
	Tue,  2 Jul 2024 04:11:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C55171BF32E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B35486080A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7hW4S6mOV6o0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 04:11:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D0F93608F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0F93608F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0F93608F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:56 +0000 (UTC)
X-CSE-ConnectionGUID: 7Q4z86JjR0GCqzhl34EDkQ==
X-CSE-MsgGUID: XxL28k6/TcyT2fbeXYK/yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="20916507"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="20916507"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:56 -0700
X-CSE-ConnectionGUID: 0+0d3rO8R+uzETMJEHOLBA==
X-CSE-MsgGUID: s2nPRl6GQJq0fPnKLzu8gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="50959311"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:56 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 66345201A797;
 Mon,  1 Jul 2024 21:11:53 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue,  2 Jul 2024 00:09:25 -0400
Message-Id: <20240702040926.3327530-4-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719893517; x=1751429517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U63gD7ZbW2JihHJgZe5fO8a8nHLclY5LSPu+PTCwR+s=;
 b=cNzacM1t/VaKJ7daKaaJ9ugvQVHJVfNXMHWf1537U1WmFVweanlMjicM
 ZW4Uw3hEAX8ah5XfO0YCSK7NQgZcj94Q2dT8sMdRwBzXT0QdUmCeZyM9o
 D9M1saOj3F2G6Alih+TusBWb4U9/+AAiYj2RSoOY51kaSV7xfmHcv1nUt
 iHbhfGacdQmkdV/beCUCoat9g36/TLOoe3GKKK4gqCEbpSrqxahx+BCyc
 B4ehDigzvw33bsEEz35SVVkPzFcD5ThO0hb+HXn9wKuMuiWDg80yN8/xU
 /nDswBj4WVHbtD4iDKytObcLR4VcqHf0ugkIzAG+TPepKizrPeORrNiVK
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cNzacM1t
Subject: [Intel-wired-lan] [PATCH iwl-net v1 3/4] igc: Remove unused
 qbv_count
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

Removing qbv_count which is now obsolete after these 2 patches:
"igc: Fix reset adapter logics when tx mode change"
"igc: Fix qbv_config_change_errors logics"

The variable qbv_count serves to indicate whether Taprio is active or if
the tx mode is in TSN (IGC_TQAVCTRL_TRANSMIT_MODE_TSN). This is due to its
unconditional increment within igc_tsn_enable_offload(), which both runs
Taprio and sets the tx mode to TSN.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 2 --
 3 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 8b14c029eda1..5fd0d85f83ac 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -254,7 +254,6 @@ struct igc_adapter {
 	bool taprio_offload_enable;
 	u32 qbv_config_change_errors;
 	bool qbv_transition;
-	unsigned int qbv_count;
 	/* Access to oper_gate_closed, admin_gate_closed and qbv_transition
 	 * are protected by the qbv_tx_lock.
 	 */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0f8a5ad940ec..e7664bd81505 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6246,7 +6246,6 @@ static int igc_qbv_clear_schedule(struct igc_adapter *adapter)
 	adapter->cycle_time = NSEC_PER_SEC;
 	adapter->taprio_offload_enable = false;
 	adapter->qbv_config_change_errors = 0;
-	adapter->qbv_count = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 61f047ebf34d..26dbe3442ad1 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -267,8 +267,6 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 
 	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
-	adapter->qbv_count++;
-
 	cycle = adapter->cycle_time;
 	base_time = adapter->base_time;
 
-- 
2.25.1

