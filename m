Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 575A6B24DAE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 17:40:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7C8D40746;
	Wed, 13 Aug 2025 15:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RxTgyuk6oFYC; Wed, 13 Aug 2025 15:40:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43AFB407B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755099633;
	bh=W3/LCjdYgnvKVWgpxpUKKmIxRhAr/0fiOOOMiN18tf4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qEtiGs5r6BCfE1zmytwSm+KskS9biN0fNkcB9WLTYHP/lgwE86YJ2AZ7dsoN2BI2C
	 HiSuW9oA2gcVsLa50xyeujhvdB4HgeoTrvpxpa2MT4O+Db0+M1b3r+J2OouSCTzyW7
	 z6Zsn6UJZaoW813A/rf5JsXsj/1NIQaXkYCPi9I3uCVyHUacfta9GBtn8ly9F0MITy
	 y4GdOZZGm3maTQqgoNUJvD5hSn+T2QScYh6/8dbbcdOQbyE+q6WSJSLr+rtRGVWhwg
	 RstP0DzUmk+KrnwgnpL6J9vn7YaiktV21MNVo6uz6gd6rALt6wOW4jVK0afXcwp7Kr
	 QTU87RNDRAA9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43AFB407B2;
	Wed, 13 Aug 2025 15:40:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F8121C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 15:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05D7880F82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 15:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdAOSQhB98TH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 15:40:31 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Aug 2025 15:40:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 56AE98135C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56AE98135C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56AE98135C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 15:40:31 +0000 (UTC)
X-CSE-ConnectionGUID: a9L77QvvQlufcyAv2rUE1g==
X-CSE-MsgGUID: T5D4W85bR0eWnn0teCMbGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="68474323"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="68474323"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 08:33:24 -0700
X-CSE-ConnectionGUID: uUYy7rc4SWaeoTzt73/wxg==
X-CSE-MsgGUID: 8pT3Hq+iQ6GzT87dw4RtFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="165997685"
Received: from host59.igk.intel.com ([10.123.220.59])
 by fmviesa007.fm.intel.com with ESMTP; 13 Aug 2025 08:33:21 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 13 Aug 2025 13:33:04 -0400
Message-ID: <20250813173304.46027-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755099631; x=1786635631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lfsr4ccnl0Hj8Ai02iL8Y7K6ZbjNWef0+nt5altBcx4=;
 b=SlpwAS26v30uBa4tAUgMQpPwTzRbmGCdBYdcf8O4h3LbXJWI7yhbBj5p
 k2jDVL5b5YafmrUI80YC8B7t6AoTeGXHP0/otZpjmhvX5c1HVqSdMl1da
 QyEt4NQtPWwFnWLmlNOh8DKDdj+3JrRcYzHI7WKbIrAUQbVwPxCm4kg07
 YxFJ/JM9Ij8hD6Qm4kPYuSlHOsrzLVx8V4EX1BSbHnMTl4rgoXfxZumIq
 ThELGQ95b0kX6fUCPXazArYiloSX23n12fWfl8swG7wMamUr8V/b7IfF1
 5WJJfxQIhPIqMUhAcWf02Qs/ComLn/sLS9NkJg5fnRUixaXkdAqhUvUuZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SlpwAS26
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: cleanup remaining SKBs in
 PTP flows
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

From: Milena Olech <milena.olech@intel.com>

When the driver requests Tx timestamp value, one of the first steps is
to clone SKB using skb_get. It increases the reference counter for that
SKB to prevent unexpected freeing by another component.
However, there may be a case where the index is requested, SKB is
assigned and never consumed by PTP flows - for example due to reset during
running PTP apps.

Add a check in release timestamping function to verify if the SKB
assigned to Tx timestamp latch was freed, and release remaining SKBs.

Fixes: 4901e83a94ef ("idpf: add Tx timestamp capabilities negotiation")
Signed-off-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ptp.c          | 3 +++
 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index ee21f2ff0cad..63a41e688733 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -855,6 +855,9 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
 	head = &vport->tx_tstamp_caps->latches_in_use;
 	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
 		list_del(&ptp_tx_tstamp->list_member);
+		if (ptp_tx_tstamp->skb)
+			consume_skb(ptp_tx_tstamp->skb);
+
 		kfree(ptp_tx_tstamp);
 	}
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index 4f1fb0cefe51..688a6f4e0acc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -517,6 +517,7 @@ idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
 	shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
 	skb_tstamp_tx(ptp_tx_tstamp->skb, &shhwtstamps);
 	consume_skb(ptp_tx_tstamp->skb);
+	ptp_tx_tstamp->skb = NULL;
 
 	list_add(&ptp_tx_tstamp->list_member,
 		 &tx_tstamp_caps->latches_free);

base-commit: 94f1d1440652b6145cbaa026f376ae4e7fb95843
-- 
2.42.0

