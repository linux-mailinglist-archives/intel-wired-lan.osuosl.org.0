Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4A79B1128
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33115408B2;
	Fri, 25 Oct 2024 21:02:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1fOo_dIf0Ebn; Fri, 25 Oct 2024 21:01:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EC5840649
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890119;
	bh=pAsagBhHYWNse0z9sz7m1oEj7upZkSYWmZQJJfowrHc=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fQ5RdDJBhm4CVrkwH1GMesFkn0SiYP7wU9103X09wBb3GLjHsOV9NVR9iMoCwsgw9
	 zfEOtQZBKaybgWQtyhNfFM4UyBwTgFGw6ZRMAOIXDkSDdBtH11FVgnmHlpzAaTIvoO
	 G/ob2CSDO+ll0bauA6iQsH3gyjYut+/mGUbOoqbrDUj/ckOsJiypjRrbB7QwW/wtj4
	 V4Tng/q0ywb4Pl41p5qlGZ2AZ5LJdQgZbu4gEuy/GLG5w5QbpryvqxN+qDYqmThNwk
	 7JFuNZg3Gf9+LV5s9nHbJfqCPz7UoY+eCN7YYCJT3GL5rx4knoGLdZafFAHKSNyi5/
	 Mj3xQM02bL0Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EC5840649;
	Fri, 25 Oct 2024 21:01:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E90F59B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 12:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E302140629
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 12:15:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WsjfeqPxmyO5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 12:15:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=yuancan@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 78F0B40352
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78F0B40352
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78F0B40352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 12:15:44 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.174])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XYScJ0yS8zdkJY;
 Wed, 23 Oct 2024 20:13:04 +0800 (CST)
Received: from dggpeml500024.china.huawei.com (unknown [7.185.36.10])
 by mail.maildlp.com (Postfix) with ESMTPS id 80E4B140259;
 Wed, 23 Oct 2024 20:15:34 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Wed, 23 Oct
 2024 20:15:33 +0800
From: Yuan Can <yuancan@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <alexander.h.duyck@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: <yuancan@huawei.com>
Date: Wed, 23 Oct 2024 20:10:48 +0800
Message-ID: <20241023121048.26905-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net v2] igb: Fix potential invalid memory
 access in igb_init_module()
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

Fixes: bbd98fe48a43 ("igb: Fix DCA errors and do not use context index for 82576")
Signed-off-by: Yuan Can <yuancan@huawei.com>
---
Changes since v1:
- Change fix tag to bbd98fe48a43.
- Change target branch to net.
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

