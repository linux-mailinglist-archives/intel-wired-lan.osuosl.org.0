Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 643959A07D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 12:52:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAE844053F;
	Wed, 16 Oct 2024 10:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bk-6vRGAjkXB; Wed, 16 Oct 2024 10:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CA1E4054B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729075968;
	bh=Z9vDXnAerIxkQq5nKXBy4EcfUrejdiD6zK8BFf8+yJo=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AQnfeIuLlFQucak9rYY9o2IwEiEXiZzyLpnSC1gXhs/MunQk0kiz9THUtW44xLNzs
	 MJRHqk3kuuxJxUYHR2XrUiKI2pXj2zVtze1WLjjBA0jVnoY7tviYQWUexHtVOj2zPw
	 Plv5zN1k615GtzGNKqlCyguKzJRgC3bf1ZACCoVhsOj3yb4xPGg69Dqf5Jk9tINoyl
	 evQbNznIS17fTQI4wJbhnS7/SwrGpTB8OBNVa0BjwEfnyiTt15C+IfYWX0a2EkC0Fd
	 5bBm0IhmqIXsFqMFj8QIbYEWVEkEyHBnuxx9r0ZqXjiwPHBEW7U9mGq7zfE1/rDVGM
	 tEF2HgzPvznOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CA1E4054B;
	Wed, 16 Oct 2024 10:52:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 64C0727E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 10:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C32E608E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 10:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H4LpRcPr-hve for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 10:52:45 +0000 (UTC)
X-Greylist: delayed 1001 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 16 Oct 2024 10:52:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63844608E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63844608E2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.32;
 helo=szxga06-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63844608E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 10:52:43 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.163])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4XT6nX4DXrz1xxB0;
 Wed, 16 Oct 2024 18:36:00 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id B4F6D180043;
 Wed, 16 Oct 2024 18:35:54 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Wed, 16 Oct
 2024 18:35:53 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>, <vedang.patel@intel.com>,
 <andre.guedes@intel.com>, <maciej.fijalkowski@intel.com>,
 <jithu.joseph@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>,
 <yuehaibing@huawei.com>
Date: Wed, 16 Oct 2024 18:53:10 +0800
Message-ID: <20241016105310.3500279-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net] igc: Fix passing 0 to ERR_PTR in
 igc_xdp_run_prog()
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

Return NULL instead of passing to ERR_PTR while res is IGC_XDP_PASS,
which is zero, this fix smatch warnings:
drivers/net/ethernet/intel/igc/igc_main.c:2533
 igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'

Fixes: 26575105d6ed ("igc: Add initial XDP support")
Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6e70bca15db1..c3d6e20c0be0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2530,7 +2530,7 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 	res = __igc_xdp_run_prog(adapter, prog, xdp);
 
 out:
-	return ERR_PTR(-res);
+	return res ? ERR_PTR(-res) : NULL;
 }
 
 /* This function assumes __netif_tx_lock is held by the caller. */
-- 
2.34.1

