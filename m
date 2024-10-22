Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5E89B1126
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D4AD60BA2;
	Fri, 25 Oct 2024 21:01:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GfYSjAlCZAkg; Fri, 25 Oct 2024 21:01:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97D9D60BA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890117;
	bh=G0+cTnqfkoCZ9jusaYTqH6vR9HVVkH3hA0gXF6LzMn8=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f1KRjXSA4wqbuOvWmvuFAsihHoSi82BfjnjrsWbpLNbfMFEblG/rxup1OzVYSU1wg
	 KxJO94V76N7gVWm2WleSdSjjV4vDJVf3KMnobojBJqQrvh9Uw2425zWl/NLXwCjdlY
	 MX5Yg4wXFXZeG1NZlRQQ49cchr8lP4N8ve7o2DDmK0vs9zgy+bb8bdhOHkPW+R7fTy
	 gff0AR81/g/8F4UpLPFTmw/Fg4wol0mxqDwumV8VDJLaV4l+VFEjJq/DzoN9rMumJ+
	 bkASdL6Pik7hCm5znlx/5GK+2hmGvF6U0dB5WpFGhwsVx+i2V/a0Z/o8Rx6AN91zQQ
	 1L38s+B9AMo4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97D9D60BA6;
	Fri, 25 Oct 2024 21:01:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EE1C963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4527F60699
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:01:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CxHVA3SyKfeE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 07:01:31 +0000 (UTC)
X-Greylist: delayed 1112 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 22 Oct 2024 07:01:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E8D3605C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E8D3605C1
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.255;
 helo=szxga08-in.huawei.com; envelope-from=yuancan@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E8D3605C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:01:30 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.48])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4XXjHQ2LSqz1T94l;
 Tue, 22 Oct 2024 14:40:50 +0800 (CST)
Received: from dggpeml500024.china.huawei.com (unknown [7.185.36.10])
 by mail.maildlp.com (Postfix) with ESMTPS id 7623818007C;
 Tue, 22 Oct 2024 14:42:50 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 22 Oct
 2024 14:42:49 +0800
From: Yuan Can <yuancan@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <cramerj@intel.com>,
 <shannon.nelson@amd.com>, <mitch.a.williams@intel.com>, <jgarzik@redhat.com>, 
 <auke-jan.h.kok@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: <yuancan@huawei.com>
Date: Tue, 22 Oct 2024 14:38:07 +0800
Message-ID: <20241022063807.37561-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH] igb: Fix potential invalid memory access
 in igb_init_module()
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

The pci_register_driver() can fail and when this happened, the dca_notifier
needs to be unregistered, otherwise the dca_notifier can be called when
igb fails to install, resulting to invalid memory access.

Fixes: fe4506b6a2f9 ("igb: add DCA support")
Signed-off-by: Yuan Can <yuancan@huawei.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index f1d088168723..18284a838e24 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -637,6 +637,10 @@ static int __init igb_init_module(void)
 	dca_register_notify(&dca_notifier);
 #endif
 	ret = pci_register_driver(&igb_driver);
+#ifdef CONFIG_IGB_DCA
+	if (ret)
+		dca_unregister_notify(&dca_notifier);
+#endif
 	return ret;
 }
 
-- 
2.17.1

