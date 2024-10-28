Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BA09B3C3A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 21:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 875888112B;
	Mon, 28 Oct 2024 20:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RVa8OUsPInY5; Mon, 28 Oct 2024 20:49:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D98678112E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730148572;
	bh=VLbxwFyyzrpRVVQLGolOO1b5ttF3nVzcyu4R749A/WQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=spSFZT4FZdcuPOk88RFCcj2UMydcYxmeg1VDtSxESYLryB7Cb7GEHT9yJ1L0UZSNB
	 gseOEdn6sNr6T78Q38CUS0PKi1SFq3mCCYh/DTyEm7+7BOhxIH5ZIz2dUKY5lrJNl5
	 Aq/O/6uKF2vk/uLd/9BkDForJCgLTTEjuIg3FIzw3vdK179zUSMt7bqsOHqi06eHrL
	 wYkYLMog18WCQhEhBCsBZK9/eu5Te50su4W9F0oF4UFM/qGYgCkM/RX54HwPC3O19L
	 bjJohPBPpgVCESKFFb6y3yj9r1TNTEWjdAdOTn/2coLvlVl/KyTB6SPDvMA0ucR7N1
	 6l4wiVfZkkCaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D98678112E;
	Mon, 28 Oct 2024 20:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E6AA112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 347F6607ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aANoaVJ6z-Hz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 20:49:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5B0C86077C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B0C86077C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B0C86077C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:49:30 +0000 (UTC)
X-CSE-ConnectionGUID: IBw7tC0fThmrSht4iLPlrA==
X-CSE-MsgGUID: V6L2CwacQRagq/atvIeiQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33685563"
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="33685563"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:49:30 -0700
X-CSE-ConnectionGUID: viuexy25RuyvgsRMcbtVWw==
X-CSE-MsgGUID: U9s741yGRQ+rB5BMlwkU4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="86529951"
Received: from unknown (HELO gklab-003-001.igk.intel.com) ([10.211.3.1])
 by orviesa005.jf.intel.com with ESMTP; 28 Oct 2024 13:49:28 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Mon, 28 Oct 2024 21:45:42 +0100
Message-Id: <20241028204543.606371-4-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20241028204543.606371-1-grzegorz.nitka@intel.com>
References: <20241028204543.606371-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730148570; x=1761684570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=biS9PpsZukdARCT2UtGImUoOkdDZ1ON6YK3e5b1v/dU=;
 b=Sivs7Y98UaZbOlb5HgYv6GnTrkvVZEumg/xgBR0/gQBujkG+nHzdUE6S
 QXRD1FEXgrCWplHKPFHw+u37Vl1NoK1R+82LPqY871ReK5nlmh0nTCAbp
 33Wm7L4JUGHEk2FTmYvSm8q+7h/SnBbSdi1pzuWYeHqRPF4KM8jaEpq2c
 6QeCuUcdqXpaHf9kt+vafbfKy/hV8Sy2jpQVbxzBmeRlSVajg3cClW/i/
 5+VzaGWh9w3Y6p8dZHIrfSD/a1HdivoxAtJYLTFh1jm5SwC9XIGjxhA90
 inrst6pASt/n5j4gkZodu+pKLoS1xnMpUDLmO1jX7qXmCLHdR0J1mhmyo
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sivs7Y98
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 3/4] ice: Fix ETH56G FC-FEC Rx
 offset value
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

Fix ETH56G FC-FEC incorrect Rx offset value by changing it from -255.96
to -469.26 ns.

Those values are derived from HW spec and reflect internal delays.
Hex value is a fixed point representation in Q23.9 format.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index e63f2a36eabf..339b9f59ddde 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -86,7 +86,7 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
 		.rx_offset = {
 			.serdes = 0xffffeb27, /* -10.42424 */
 			.no_fec = 0xffffcccd, /* -25.6 */
-			.fc = 0xfffe0014, /* -255.96 */
+			.fc = 0xfffc557b, /* -469.26 */
 			.sfd = 0x4a4, /* 2.32 */
 			.bs_ds = 0x32 /* 0.0969697 */
 		}
-- 
2.39.3

