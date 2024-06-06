Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 532558FF7CB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 00:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DDB641A00;
	Thu,  6 Jun 2024 22:47:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VjHtj4Qd-lWo; Thu,  6 Jun 2024 22:47:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA73641985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717714041;
	bh=wzqYBDChU7u2uBfBKR4TXHcMpcDZ1MqxqT2KmGwAbL8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rgXkOPStmshLkU0BTuxud8ts592yREUsCj0Qbx6CKv7GGDmdNQXsBVHu9D3guIz0T
	 iGaHDmyX2163KIaGNg/LBfWkPZVzE3U2x6ABLjS331uVfUQmmp9eppKaVm9YLve231
	 XvsjadYPk9ifVxGvNdh5O0ZZ5ZDZFOYo3vVTHej0jgFzSxnK8PJibbbKiok9gnU0a2
	 rQVHXioj4xV3XlTNVMSlNIC06odgyxlqSo+QeYBwFRuM9mnA2BkwXMu1DGsrgDqAPZ
	 ELYPcIbItVkn5cflwSsegilFO3vYtGqIeNYj+GcofiQHltUcGSYq5oCuXWyn/pKjWf
	 OSvQ4QveEfuJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA73641985;
	Thu,  6 Jun 2024 22:47:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4E11BF94D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E578D849C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_rbBHH9Xrh3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2617E84987
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2617E84987
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2617E84987
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
X-CSE-ConnectionGUID: t2HyqRwzTnuqaxKo6VP34A==
X-CSE-MsgGUID: /Qjq2ED+SxiBKr4BNQeJaA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14224012"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14224012"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:12 -0700
X-CSE-ConnectionGUID: Ka3nhXjBQ5KrvMiFuZ/iyw==
X-CSE-MsgGUID: 71bnbA24R+CR341US9FiRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38243840"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:11 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 15:46:57 -0700
Message-ID: <20240606224701.359706-4-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240606224701.359706-1-jesse.brandeburg@intel.com>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717714033; x=1749250033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IQbaN1PyCav0Y/g6MkJYTJ58TbA4AQLCkvXvbv1VlrM=;
 b=h3d7ZFZPz8qbEbY5zv7ArhA94jIzfBOs5tGCtImF1TmCYjJtaX9dS7ov
 QEY+jdmpWZS9B4XKDpyn+8/cPx9qptacv73EpRVAjMhmi8mCWOIRbylnr
 YYnduE2z9On5m11umt6/COvKGVfE9bVfjXiJc2vf55KhGr1Ly7K46JfSs
 l2f68/e0fhlw1+sSsQ2qUuA6geKPAbtwMe/l0JDfmEFHdlNH6BPbFX/7U
 PFdLLNtJSYJRRSQT4AZN4P8R1JrA6nz30V38FHPj/i/gnD2SJUPpuoqyP
 wlNP1aB3tuuYvi0hjRqCd8TW0TYia9IZHArn5MznYWiBtFyOXtIOOEGYp
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h3d7ZFZP
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: add tracking of good
 transmit timestamps
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-doc@vger.kernel.org, corbet@lwn.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As a pre-requisite to implementing timestamp statistics, start tracking
successful PTP timestamps. There already existed a trace event, but
add a counter as well so it can be displayed by the next patch.

Good count is a u64 as it is much more likely to be incremented. The
existing error stats are all u32 as before, and are less likely so will
wrap less.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 9 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..ff0ba81d0694 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -628,6 +628,9 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 	if (tstamp) {
 		shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
 		ice_trace(tx_tstamp_complete, skb, idx);
+
+		/* Count the number of Tx timestamps that succeeded */
+		pf->ptp.tx_hwtstamp_good++;
 	}
 
 	skb_tstamp_tx(skb, &shhwtstamps);
@@ -686,6 +689,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	struct ice_ptp_port *ptp_port;
 	unsigned long flags;
+	u32 tstamp_good = 0;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 tstamp_ready;
@@ -786,11 +790,16 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 3af20025043a..2b15f2b58789 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -253,6 +253,7 @@ struct ice_ptp {
 	struct ptp_clock *clock;
 	struct hwtstamp_config tstamp_config;
 	u64 reset_time;
+	u64 tx_hwtstamp_good;
 	u32 tx_hwtstamp_skipped;
 	u32 tx_hwtstamp_timeouts;
 	u32 tx_hwtstamp_flushed;
-- 
2.43.0

