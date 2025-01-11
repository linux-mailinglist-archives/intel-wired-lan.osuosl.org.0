Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C463BA09EC0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jan 2025 00:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C48183A4B;
	Fri, 10 Jan 2025 23:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RP4VWJMlmyg1; Fri, 10 Jan 2025 23:37:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E31B83A4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736552273;
	bh=nG4NNwVYnD3+6b2z+u+5A+eche08o7BIf9CwNsqgw00=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZP8Jv4RgbEcnwPQ0zEHT7lbBdYgdU2mGadESgELxOVZ4213vFnA2gbiXYcTfuimlS
	 7Pmc740N/gPAPKgca5d6nozjRIQbz1kNtpfW22nQODbi3XtRLs5ywXRPEGqOl67vvY
	 /G9JwsVC7CJPoGcJNdSHAdGNLz/DEs/4cnhRNw4KWH/HMQEw8aizTwpCuK2WO+6feL
	 G03xq4IIcyCFn7RDKOe29gilUkGI4r+zOs0Dl0lTbbP4ZDJVD/kXxLT/klYF3Rg5jB
	 wQNKlsbGEV9WoxmrLtsni9MqYb3jZpxitXV66JD5LX0PIDI2VO0efMdF5odQkMz1mV
	 FuWewiDelsZAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E31B83A4D;
	Fri, 10 Jan 2025 23:37:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C3E1F940
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 23:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA3C940B27
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 23:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hiqs0WEF8njS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 23:37:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sridhar.samudrala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C7DA04099B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7DA04099B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7DA04099B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 23:37:50 +0000 (UTC)
X-CSE-ConnectionGUID: f9XTXi4aRdiC9LVkgULnyw==
X-CSE-MsgGUID: /iN/zvC4RZquTybq04XbCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="40542502"
X-IronPort-AV: E=Sophos;i="6.12,305,1728975600"; d="scan'208";a="40542502"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 15:37:50 -0800
X-CSE-ConnectionGUID: FMYMb7IeQWO8Zd+QDusWnQ==
X-CSE-MsgGUID: 6R6fvFZdSw+OcJ1pcP113g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,305,1728975600"; d="scan'208";a="103673256"
Received: from jf3418-16b10-250812-p7.jf.intel.com ([10.166.80.88])
 by fmviesa006.fm.intel.com with ESMTP; 10 Jan 2025 15:37:49 -0800
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Cc: Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 10 Jan 2025 16:29:22 -0800
Message-ID: <20250111002921.167301-2-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736552271; x=1768088271;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zHQ4ZLwh1tJvzJXmXebl4aCYAAjrnRovb/kgEIc0LGY=;
 b=Kn1hKyVl2e/09BqtQje7aX6uSaIBrAduyoWlxfDSBrTUcipFU0E3ReBb
 Ysk0dO5tRK5D+MrmssRmR9maI1oI3/hh5lrJoWPFR5ojWWxM/zIQIA8LN
 4wn6FgcC4I6EFNf0u1wmlPSqc89/U401agu/su4oIm9ZTkWbPYSGgfma5
 GDIQXLjjCDCNHkVhwumKRlsPrCha12T547PHK6+aW5fPHyChgVX2ox3Dv
 vQHBzEGw0B6TfE12GJDQCphr7DCia5kcJ7nRoF7ZN4lB+6thZtJw8AGGN
 2AeZNltPycY0Us0sf+prNtvXKgpiNzR9BiXlJlRUm3kZKa5B6N9rajSVR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kn1hKyVl
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix handling rsc packet
 with a single segment
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

Handle rsc packet with a single segment same as a multi
segment rsc packet so that CHECKSUM_PARTIAL is set in the
skb->ip_summed field. The current code is passing CHECKSUM_NONE
resulting in TCP GRO layer doing checksum in SW and hiding the
issue. This will fail when using dmabufs as payload buffers as
skb frag would be unreadable.

Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 2fa9c36e33c9..c9fcf8f4d736 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3008,8 +3008,6 @@ static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 		return -EINVAL;
 
 	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_seg_len);
-	if (unlikely(rsc_segments == 1))
-		return 0;
 
 	NAPI_GRO_CB(skb)->count = rsc_segments;
 	skb_shinfo(skb)->gso_size = rsc_seg_len;
-- 
2.46.2

