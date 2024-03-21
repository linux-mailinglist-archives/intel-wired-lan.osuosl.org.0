Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C16EC881A6A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 01:17:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C3A582053;
	Thu, 21 Mar 2024 00:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6vVsvVp8vP_u; Thu, 21 Mar 2024 00:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B20981FB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710980218;
	bh=a1C8m6qX9ViMOj2dKhDTrrIU/HrJ/V1qXCuTS4G4dMs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MUmEf1DSa61dRslE7KfKniU+bcGSq5oZbQ/7a6qWQXhpBncxuV+zpM6RYDYDa1Est
	 7q7y42hvvgaiTv0JQN+8iT0IWn30S6hA2FPR2YOvoNa3ukXbOdtjSRRqc4k8UHLzXp
	 B0/ksxCnInpN4pddfIkZHd/eDc8WEeo8ZiFIrD8shHI/G3/xmJ0tD8L7t8b7fPX/UE
	 1C0+uzMr5l19x8eQ1568ZC3RptyW6MiKarLkQhFKnrrQaJp4o9xq2pVAnAlsV5MHON
	 zN6bPiHLyBP+vJcEP8wJxZiVDco1xEVpa29Yxb12Mp9+IY7OSst4ykZ1lkQCthHZP6
	 yrnmpQ6kyJ4Dw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B20981FB7;
	Thu, 21 Mar 2024 00:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 384E71BF976
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 00:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 227BA4097A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 00:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cyboMYOHG9h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 00:16:55 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 21 Mar 2024 00:16:54 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E686840760
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E686840760
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E686840760
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 00:16:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6074678"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; 
   d="scan'208";a="6074678"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 17:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="45423039"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by fmviesa001.fm.intel.com with ESMTP; 20 Mar 2024 17:09:44 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Mar 2024 17:09:25 -0700
Message-ID: <20240321000925.14941-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710980215; x=1742516215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SQQpEskKz6nU/yh/A8RtthfArv1j+wjpVb/IC+sc1CU=;
 b=RRN6js+98Qf7smh8Suy4vd4insvCkg8cV2fA8drQEfZh2CD2JiREz9LG
 tz5sm0qcMlj2TY2clBZCuH/u5ze9NfF5GkuTviwDxd1yRLHz+YcpCUX4u
 /gwz79Lz4bR/gfrjLoSv5qPP3i8dgZdSwY9XTDYZ0mzWmQYGCVqXuzyvu
 YIY7LjdYBu8Tq5wAT4BjFnwBZpyyc9Pd9Y1GNv9urX1tZrKWGkaab+GwZ
 l7XZwFssdHlDCc1309QJqMdRfJjOygPlEwPiIQd2GzpHxz1+Hu6YDvjst
 cdWJYgoKE35pJIjHOIU6XosxlrhZ2zJ8wmPkiGxbsnAmuhW4NIaV1QBjv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RRN6js+9
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix kernel panic on unknown
 packet types
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
Cc: emil.s.tantilov@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Salvatore Daniele <sdaniele@redhat.com>,
 Balazs Nemeth <bnemeth@redhat.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

In the very rare case where a packet type is unknown to the driver,
idpf_rx_process_skb_fields would return early without calling
eth_type_trans to set the skb protocol / the network layer handler.
This is especially problematic if tcpdump is running when such a
packet is received, i.e. it would cause a kernel panic.

Instead, call eth_type_trans for every single packet, even when
the packet type is unknown.

Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
Reported-by: Balazs Nemeth <bnemeth@redhat.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Tested-by: Salvatore Daniele <sdaniele@redhat.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 2f8ad79ae3f0..017a081d8580 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2940,6 +2940,8 @@ static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
 	rx_ptype = le16_get_bits(rx_desc->ptype_err_fflags0,
 				 VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M);
 
+	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
+
 	decoded = rxq->vport->rx_ptype_lkup[rx_ptype];
 	/* If we don't know the ptype we can't do anything else with it. Just
 	 * pass it up the stack as-is.
@@ -2950,8 +2952,6 @@ static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
 	/* process RSS/hash */
 	idpf_rx_hash(rxq, skb, rx_desc, &decoded);
 
-	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
-
 	if (le16_get_bits(rx_desc->hdrlen_flags,
 			  VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M))
 		return idpf_rx_rsc(rxq, skb, rx_desc, &decoded);
-- 
2.43.0

