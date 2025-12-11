Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C633CCB554B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 10:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A8A36085B;
	Thu, 11 Dec 2025 09:17:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1oH93GW5pIOs; Thu, 11 Dec 2025 09:17:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A9F061B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765444656;
	bh=0ReqNWw9x529uqIp1UH466ezxJx1+9i30DT5W+DPOXo=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jYDQNAEjTYNWk0PJYTo/qZjudfFDRmtFJvVB+sI23PDsKd7F1WbBHqD7YX9UBCBu2
	 TKn2Mp696UbBo4boZbWRZaTZ4mcqE0PX6v5VgkcWxiRESKXM1ysvx+TAodYOY5TgfO
	 ouhl9AmuIANzJcIOgmndbj7u5wFKGHoiVN/lJFLezhjnvrGP+JYRgaymPqjWN5+qp1
	 QHyd/azp0cn1TyQJv0cYZsXxk2yGwatHd3L0/qzD+ZHPlxyo7MHelxbjeyA7fwNE7z
	 IxOaWZiAIARz+SfABvtUXzUxMPoAmje0P8akoD6sPiN7wXikgctyF5+eBwG42v/XZK
	 Prn5WNXF3v/8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A9F061B5E;
	Thu, 11 Dec 2025 09:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BAEB62C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACEA684D17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q3mlqM1FPnwT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 09:17:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=43358fca2=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B13EB84CCA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B13EB84CCA
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B13EB84CCA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:17:33 +0000 (UTC)
X-CSE-ConnectionGUID: 7z5XtcuTTRSg6iIjsF34pA==
X-CSE-MsgGUID: SKEt8UE5SbuJPSS13CiTtA==
X-IronPort-AV: E=Sophos;i="6.20,265,1758585600"; 
   d="scan'208";a="8684372"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2025 09:17:33 +0000
Received: from EX19MTAUWC001.ant.amazon.com [205.251.233.105:1900]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.11.136:2525]
 with esmtp (Farcaster)
 id 08176fd1-36c7-465b-b25b-070a1a1e8fbd; Thu, 11 Dec 2025 09:17:33 +0000 (UTC)
X-Farcaster-Flow-ID: 08176fd1-36c7-465b-b25b-070a1a1e8fbd
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 09:17:32 +0000
Received: from b0be8375a521.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 09:17:29 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jedrzej
 Jagielski" <jedrzej.jagielski@intel.com>, Stefan Wegrzyn
 <stefan.wegrzyn@intel.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, <kohei@enjuk.org>, Kohei Enju <enjuk@amazon.com>
Date: Thu, 11 Dec 2025 18:15:32 +0900
Message-ID: <20251211091636.57722-3-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251211091636.57722-1-enjuk@amazon.com>
References: <20251211091636.57722-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D037UWB003.ant.amazon.com (10.13.138.115) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1765444653; x=1796980653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0ReqNWw9x529uqIp1UH466ezxJx1+9i30DT5W+DPOXo=;
 b=RkzEwMxW+qAKk7FR3PuoWxW2rwRBwf8OPMPr5YKZ8xTYapM2w/Ckqy/1
 7bf+aPdKocjb3MBAT+KHclKxeM5GtXtZoPA5qPWhn1QEc3wZ4qPaOCPrS
 I/gs3bWqr54T06QT4+EumknOBT/sOLy5E7iGqdEGY/1bn/WoJ66yKuugC
 t2ajA/0wkTrAp94lui2GYRY+79s/ISZhSLJM5xmhKeZSBYmVPXdFeSaW5
 K8ybGBxJ4HZqhYgUKKiqxrK4O4Z8nsjOHCste4Op+vMleXxyrhTiLCKEm
 JKDXhXUudjahnITCfHux880qFr1iHspI8Hdst4DFvgdZzusMBnYmIxk6P
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=RkzEwMxW
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: don't initialize
 aci lock in ixgbe_recovery_probe()
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

hw->aci.lock is already initialized in ixgbe_sw_init(), so
ixgbe_recovery_probe() doesn't need to initialize the lock. This
function is also not responsible for destroying the lock on failures.

Additionally, change the name of label in accordance with this change.

Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mode")
Reported-by: Simon Horman <horms@kernel.org>
Closes: https://lore.kernel.org/intel-wired-lan/aTcFhoH-z2btEKT-@horms.kernel.org/
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 85023bb4e5a5..b5de8a218424 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11476,10 +11476,9 @@ static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
 		return err;
 
 	ixgbe_get_hw_control(adapter);
-	mutex_init(&hw->aci.lock);
 	err = ixgbe_get_flash_data(&adapter->hw);
 	if (err)
-		goto shutdown_aci;
+		goto err_release_hw_control;
 
 	timer_setup(&adapter->service_timer, ixgbe_service_timer, 0);
 	INIT_WORK(&adapter->service_task, ixgbe_recovery_service_task);
@@ -11502,8 +11501,7 @@ static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
 	devl_unlock(adapter->devlink);
 
 	return 0;
-shutdown_aci:
-	mutex_destroy(&adapter->hw.aci.lock);
+err_release_hw_control:
 	ixgbe_release_hw_control(adapter);
 	return err;
 }
-- 
2.52.0

