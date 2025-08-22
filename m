Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57914B31DEB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 17:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56D45822BC;
	Fri, 22 Aug 2025 15:16:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZDvxSqhXRBd; Fri, 22 Aug 2025 15:16:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD2CF822C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755875796;
	bh=DG0RgMPuulrG2xNKBI/Kn2bJuiueGpLJCBM3YhZWTAU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=N0YaZUed/0n+F93ImbleGlmtgsr0v5fFhKMiq3K4IwhaknV97wEVCgHjGmVUwMPjI
	 k/YvchM9WY/uHmjaWPMH2/M0riryngO/7S77HEnnKFGE9cm420VD8rMwMve+rFpHJy
	 1KlCxEyOb0GAjFTM7E9O5UkAbhIphkIE1s9PDmBNbeVqp4f+R8T8yksYcrG5yIahrq
	 mcpDdacr6hTs7uLY8wGjRxaaRa9HwZ/XkDNJm0t+lC8tGZVymlqUfGMUiY9bGVDT0P
	 NVSyloFN0QdUNblKY8xP1zLchCpS0tOZrpj2Koy90DYMjBoAC5YH0WUvjYjt0i0bLe
	 vD86s726TzJUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD2CF822C1;
	Fri, 22 Aug 2025 15:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D09C3D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 15:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6F8460BB2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 15:16:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZLv92dZWu7i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 15:16:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0D4C160BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D4C160BA4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D4C160BA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 15:16:34 +0000 (UTC)
X-CSE-ConnectionGUID: c6u8ei7sRfugqpYWnagkag==
X-CSE-MsgGUID: 3SOyqylUTLazj9pxZoY4yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="58135046"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="58135046"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 08:16:34 -0700
X-CSE-ConnectionGUID: e09I/N5oSyasjeBqD4Wc4g==
X-CSE-MsgGUID: Lrd2Pn0TQe6YY13vbLYEig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="172923721"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 22 Aug 2025 08:16:32 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, magnus.karlsson@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 22 Aug 2025 17:16:17 +0200
Message-Id: <20250822151617.2261094-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755875795; x=1787411795;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oY0mk8KxQRWIvojXK2ESN4yhb+YTZY9xVqcXmvwTL6c=;
 b=XVkByU1SdjK4Zm0MD9pKTINTbJJQzP7zhelOTHtf7ZM4qMVrARyhxzKX
 dp2Zn+X9mD9NaQSyr1hgz5RV+HBpPV+jzsbIJfTDf1mayxUI8Fujy0+fP
 w0N86PNcPUK5Dlfex8rQ+OimJK4G6L2kbl+Zxetmw5b0d5DT/Nhf7tHy7
 0nEhTHQI5ma59Lp7YDj3QbU3RpdcmVw5ngnYy7yji/mJgMkQ30trljjJ8
 A8eGQjzIuYFLxKlP5IJbeK9SdT8wUrhjON11uRzaWTZyMBFKco99ERpUM
 poTAUtiQGhe7sWnMN8FrbHABnSfEjaTd045uJa4pItyLacD6EO0sSZoWh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XVkByU1S
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: remove redundant memory
 barrier when cleaning Tx descs
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

i40e has a feature which writes to memory location last descriptor
successfully sent. Memory barrier in i40e_clean_tx_irq() was used to
avoid forward-reading descriptor fields in case DD bit was not set.
Having mentioned feature in place implies that such situation will not
happen as we know in advance how many descriptors HW has dealt with.

Besides, this barrier placement was wrong. Idea is to have this
protection *after* reading DD bit from HW descriptor, not before.
Digging through git history showed me that indeed barrier was before DD
bit check, anyways the commit introducing i40e_get_head() should have
wiped it out altogether.

Also, there was one commit doing s/read_barrier_depends/smp_rmb when get
head feature was already in place, but it was only theoretical based on
ixgbe experiences, which is different in these terms as that driver has
to read DD bit from HW descriptor.

Fixes: 1943d8ba9507 ("i40e/i40evf: enable hardware feature head write back")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 048c33039130..b194eae03208 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -948,9 +948,6 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 		if (!eop_desc)
 			break;
 
-		/* prevent any other reads prior to eop_desc */
-		smp_rmb();
-
 		i40e_trace(clean_tx_irq, tx_ring, tx_desc, tx_buf);
 		/* we have caught up to head, no work left to do */
 		if (tx_head == tx_desc)
-- 
2.34.1

