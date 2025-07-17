Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72116B08828
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 10:46:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E99A60B5D;
	Thu, 17 Jul 2025 08:46:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ygeL0J2kYuu; Thu, 17 Jul 2025 08:46:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F4CA611FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752741991;
	bh=P+kL74j0ExtZ4wXNLIEglOejI1+Gx7vp0SMgGWBrNx0=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tKvQVYI+7HAAwLO5GDe7nwLpvUGS6r+VfyHF7Lr/+mtpIsBJTdZwRj3nKsvJx690K
	 KIaDsHyHdmM+gIedk8LZlxun9rbjz245LHx5QlGjJY1JbXWuUl6H7BKveKp9/3zRMq
	 kpOHBXf0mULpiWAl3vR5tdp5U5gXSooN44oG+HEnr1S7SgVj03f7KMOcD0/ez3a/0w
	 teV0G3Escu24mqcxmQ5uzyI0Rormnl9xiInraR4i/vwyUKvs5br9tOGvutxf6m6EA9
	 a/FiklFTjDzUKWWtD9TjOO29L4peTHoqgJYNYysOFJcAiHf9vfWoGtHONaDNSE/DWS
	 yM81Js//7mxWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F4CA611FC;
	Thu, 17 Jul 2025 08:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 095D8A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 08:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDBA583FB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 08:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmM-M5bApxwG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 08:46:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=99.78.197.218;
 helo=smtp-fw-80007.amazon.com;
 envelope-from=prvs=28653d3b2=ytohnuki@amazon.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB49083F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB49083F12
Received: from smtp-fw-80007.amazon.com (smtp-fw-80007.amazon.com
 [99.78.197.218])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB49083F12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 08:46:28 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.16,318,1744070400"; d="scan'208";a="424163580"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
 by smtp-border-fw-80007.pdx80.corp.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jul 2025 08:46:24 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.38.20:55971]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.36.115:2525]
 with esmtp (Farcaster)
 id f061f135-2222-43bd-98f0-87d97b004775; Thu, 17 Jul 2025 08:46:23 +0000 (UTC)
X-Farcaster-Flow-ID: f061f135-2222-43bd-98f0-87d97b004775
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 17 Jul 2025 08:46:22 +0000
Received: from c889f3b07a0a.amazon.com (10.106.83.17) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 17 Jul 2025 08:46:20 +0000
From: Yuto Ohnuki <ytohnuki@amazon.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Yuto Ohnuki <ytohnuki@amazon.com>
Date: Thu, 17 Jul 2025 09:46:09 +0100
Message-ID: <20250717084609.28436-1-ytohnuki@amazon.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-Originating-IP: [10.106.83.17]
X-ClientProxiedBy: EX19D036UWB004.ant.amazon.com (10.13.139.170) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1752741988; x=1784277988;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P+kL74j0ExtZ4wXNLIEglOejI1+Gx7vp0SMgGWBrNx0=;
 b=R63hDWmNEnxfPBV+KYwWvgJuBqAwLw1rU1UCMJkhkXCSXttf/HQAG4dT
 jXuMsO73wbfPvGCPbPp8ol6x5tOATJDGM6MyHRICgOpZ2RuLC7ny0JA9w
 sYvDqIypavDzl9tYNbO6j13gDH6KGF7v0pBrXI4Jw97NqMW4uxA4Cl67o
 RJ1doTjSddjnRAtDuekJ0AwRvfoK6GYDVUSTDouV9OGIVQiXAV7yHPesc
 JdmYryO/MDdqVBYX25D5ZpDeYkNewaaVb2gKCn9W+I0rra9ddI4xMzSbJ
 peiUGnWFuAGFjJZSbKMHzrHwj3JzcDEKDD4eoFy2lwnI0VNJ7e/8s/U9l
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=R63hDWmN
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: remove unused fields
 from struct ixgbevf_adapter
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

Remove hw_rx_no_dma_resources and eitr_param fields from struct
ixgbevf_adapter since these fields are never referenced in the driver.

Note that the interrupt throttle rate is controlled by the
rx_itr_setting and tx_itr_setting variables.

This change simplifies the ixgbevf driver by removing unused fields,
which improves maintainability.

Signed-off-by: Yuto Ohnuki <ytohnuki@amazon.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index 4384e892f967..3a379e6a3a2a 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -346,7 +346,6 @@ struct ixgbevf_adapter {
 	int num_rx_queues;
 	struct ixgbevf_ring *rx_ring[MAX_TX_QUEUES]; /* One per active queue */
 	u64 hw_csum_rx_error;
-	u64 hw_rx_no_dma_resources;
 	int num_msix_vectors;
 	u64 alloc_rx_page_failed;
 	u64 alloc_rx_buff_failed;
@@ -363,8 +362,6 @@ struct ixgbevf_adapter {
 	/* structs defined in ixgbe_vf.h */
 	struct ixgbe_hw hw;
 	u16 msg_enable;
-	/* Interrupt Throttle Rate */
-	u32 eitr_param;
 
 	struct ixgbevf_hw_stats stats;
 
-- 
2.47.1




Amazon Web Services EMEA SARL, 38 avenue John F. Kennedy, L-1855 Luxembourg, R.C.S. Luxembourg B186284

Amazon Web Services EMEA SARL, Irish Branch, One Burlington Plaza, Burlington Road, Dublin 4, Ireland, branch registration number 908705



