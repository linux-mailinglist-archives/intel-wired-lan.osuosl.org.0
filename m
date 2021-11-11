Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AADC844D8AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 15:55:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2951760724;
	Thu, 11 Nov 2021 14:55:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_NboQeJyLrq; Thu, 11 Nov 2021 14:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28C2360712;
	Thu, 11 Nov 2021 14:55:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 728B01BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 09:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60A3E606A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 09:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30U6jWFWW4Bv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 09:07:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D602C6067D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 09:07:19 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id t21so5268626plr.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 01:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6tQh7m9CUeENmbF3fMGGxqc/RSUJgVc93rGIOxU+OrI=;
 b=Qj7l6GMPo48D9KdVSZLmRsdv5Sy9vfmDfwiFu7iFaLtTHHyweRi649OcIvp/R6adc5
 JwHouP9RlHkPK/hY0vQDVVDB+9DPU/bw5sInaqpf1kfItHoqt43Yp8q7xujK/nUxnqrr
 9W/GCNlqvdYAPDORueMS7atLjpOC8gJWZVdHLd5RnpIHKX/jixwkNIsER6/9PTn/aEpn
 j+QoHnFT71FOLJnRNlWN8K5b60L0AMtJEXm2I2wECJyRm4DBzfsl7eyfTvA9saLJq+Br
 CahM3izsUhSZAWLSAaD4SUfO8SthKxXcIYBjvUZyxHsrb8jsiSSudLAHEzhfEeg4frXN
 thmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6tQh7m9CUeENmbF3fMGGxqc/RSUJgVc93rGIOxU+OrI=;
 b=tRjxyeTg2FTQWDYkj7b8I+JpdeFT9G/yUdYJ4InDo+SCLKsRrp6GylNat17gV1jV4D
 e8K3NFyiftyBejyPjSpJDYgFUcMlz4N7zQI2jsWKslqRonlHqbAVJWxPlxK/P9Crg2cb
 qBtsqqAcsBiuOur5kuh9r00AKsQRgqaeo69RvwP4C3yr4IAKnP+sPqIq0qyURvvxltPV
 HGqBhVSRbBd1ibjTpk6NU1nnNd4xPjbCrB+PA7OhZ9xku+sOJjEtJR3uYyJaVOeuTolA
 FcMc0PECPG463qTEPubEFpCSsKa9jlBDb5gXouqszS8OMy1RJW7L1a/Rcz+tdOL8Oav3
 wSTg==
X-Gm-Message-State: AOAM533KMaEa3dBgNNT0LbBjz3onOT4JrG19pMlQArgdf4IIvzic3yo7
 zycwy57lI9iI+PDB4VO42zM=
X-Google-Smtp-Source: ABdhPJxQqGX8kuHhJzN+8PQryU0wwT/0jPEfMR0AjotmoYG5i9API1mKERKHS58Y2r+Oh+9MSuvRmA==
X-Received: by 2002:a17:90a:a88e:: with SMTP id
 h14mr24345661pjq.41.1636621639398; 
 Thu, 11 Nov 2021 01:07:19 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id v16sm1722731pgo.71.2021.11.11.01.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Nov 2021 01:07:19 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: luo.penghao@zte.com.cn
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu, 11 Nov 2021 09:07:12 +0000
Message-Id: <20211111090712.158901-1-luo.penghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 11 Nov 2021 14:55:35 +0000
Subject: [Intel-wired-lan] [PATCH linux-next] e1000e: Remove useless
 variables
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
Cc: netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, luo penghao <luo.penghao@zte.com.cn>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: luo penghao <luo.penghao@zte.com.cn>

This variable is not used in the function.

The clang_analyzer complains as follows:

drivers/net/ethernet/intel/e1000e/netdev.c:916:19 warning
drivers/net/ethernet/intel/e1000e/netdev.c:1310:19 warning

Value stored to 'hw' during its initialization is never read

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index ebcb2a3..8a79681 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -914,7 +914,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 	struct e1000_adapter *adapter = rx_ring->adapter;
 	struct net_device *netdev = adapter->netdev;
 	struct pci_dev *pdev = adapter->pdev;
-	struct e1000_hw *hw = &adapter->hw;
 	union e1000_rx_desc_extended *rx_desc, *next_rxd;
 	struct e1000_buffer *buffer_info, *next_buffer;
 	u32 length, staterr;
@@ -1308,7 +1307,6 @@ static bool e1000_clean_rx_irq_ps(struct e1000_ring *rx_ring, int *work_done,
 				  int work_to_do)
 {
 	struct e1000_adapter *adapter = rx_ring->adapter;
-	struct e1000_hw *hw = &adapter->hw;
 	union e1000_rx_desc_packet_split *rx_desc, *next_rxd;
 	struct net_device *netdev = adapter->netdev;
 	struct pci_dev *pdev = adapter->pdev;
-- 
2.15.2


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
