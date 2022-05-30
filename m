Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E16539177
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6AB460DDF;
	Tue, 31 May 2022 13:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBoPGNgwAH_S; Tue, 31 May 2022 13:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA61560D93;
	Tue, 31 May 2022 13:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CD8A1BF834
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 03:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3993B405A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 03:52:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=126.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYhw1grpmbd7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 May 2022 03:52:20 +0000 (UTC)
X-Greylist: delayed 00:31:39 by SQLgrey-1.8.0
Received: from m15112.mail.126.com (m15112.mail.126.com [220.181.15.112])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37D1340145
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 03:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=9thq6
 63oygG9CMTqky7iY/KDoxlJkQXsre85S3OEShQ=; b=BA5tY+30CByxQxHdKKWi5
 DApHrxizW31R5xfC+9tve7ON2HsgzR/L52p85m2YV5gX+m79m5fN4W0WVLX/WAEc
 y3Hc9ccwYxgdB9Af+cUcMTt+1jjisvA/6nNlyUEHuw2H5uTxWHgbt3RlXHrwLu+E
 ugPIcKCA+wLUwjTkJxuKUE=
Received: from localhost.localdomain (unknown [223.104.68.108])
 by smtp2 (Coremail) with SMTP id DMmowABXtPDxN5Ri+ovmCA--.47774S2;
 Mon, 30 May 2022 11:20:20 +0800 (CST)
From: Lixue Liang <lianglixuehao@126.com>
To: pmenzel@molgen.mpg.de
Date: Mon, 30 May 2022 03:19:41 +0000
Message-Id: <20220530031941.44006-1-lianglixuehao@126.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <d50b23b1-38b5-2522-cbf4-c360c0ed05cd@molgen.mpg.de>
References: <d50b23b1-38b5-2522-cbf4-c360c0ed05cd@molgen.mpg.de>
MIME-Version: 1.0
X-CM-TRANSID: DMmowABXtPDxN5Ri+ovmCA--.47774S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFW3Ww4xGFW3KrWrAFyxZrb_yoW8Gr15pF
 s5JFWxKrykXr4jg3ykXw1xZas0kayDta45GrZxA3WF9Fn0vrWDAr15K347tryrJrZ5ZFsx
 tr47Zw4kuan8JaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UvtCcUUUUU=
X-Originating-IP: [223.104.68.108]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/1tbi2hURFluwMFHCzQAAsN
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
Subject: [Intel-wired-lan] [PATCH v3 3/3] igb_main: Assign random MAC
 address instead of fail in case of invalid one
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
Cc: lianglixue@greatwall.com.cn, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lixue Liang <lianglixue@greatwall.com.cn>

In some cases, when the user uses igb_set_eeprom to modify the MAC
address to be invalid, the igb driver will fail to load. If there is no
network card device, the user must modify it to a valid MAC address by
other means.

Since the MAC address can be modified, then add a random valid MAC address
to replace the invalid MAC address in the driver can be workable, it can
continue to finish the loading, and output the relevant log reminder.

Signed-off-by: Lixue Liang <lianglixue@greatwall.com.cn>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 746233befade..40f43534a3af 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3362,7 +3362,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		eth_hw_addr_random(netdev);
 		ether_addr_copy(hw->mac.addr, netdev->dev_addr);
 		dev_err(&pdev->dev,
-			"Invalid MAC Address, already assigned random MAC Address\n");
+			"Invalid MAC address, already assigned random MAC address\n");
 	}
 
 	igb_set_default_mac_filter(adapter);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
