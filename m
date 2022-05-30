Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 120A9539178
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A874260FEF;
	Tue, 31 May 2022 13:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GPMQMJ6L4lDV; Tue, 31 May 2022 13:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4A1160D9D;
	Tue, 31 May 2022 13:09:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26EA11BF314
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 10:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21FDF405C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 10:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=126.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 38WO8_0PzkAF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 May 2022 10:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from m15112.mail.126.com (m15112.mail.126.com [220.181.15.112])
 by smtp2.osuosl.org (Postfix) with ESMTP id C62EE4002B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=sF0xs
 3i6VUMYYdYuJHXE3WrD0C3bHhq1LujyIez1SnQ=; b=o3nenJJYUueaOa2P1ka6s
 0Cf0V9t0+ojUwe8ybpFNGeMvtzZtVdKkVro4Zzxx1zQVhKRZzmg0CaqUglDRe9S+
 5y55tZ5r7SvhNW/wgFwwYylkahrJX0QGKVQsrr4JHmCjCpkLDJEvPXDglw4IMY+E
 0uOJfwG6vWIG83qwCOrR+k=
Received: from localhost.localdomain (unknown [223.104.68.80])
 by smtp2 (Coremail) with SMTP id DMmowAB3fwNbo5RiPi31CA--.52866S2;
 Mon, 30 May 2022 18:58:37 +0800 (CST)
From: Lixue Liang <lianglixuehao@126.com>
To: pmenzel@molgen.mpg.de
Date: Mon, 30 May 2022 10:58:34 +0000
Message-Id: <20220530105834.97175-1-lianglixuehao@126.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <d50b23b1-38b5-2522-cbf4-c360c0ed05cd@molgen.mpg.de>
References: <d50b23b1-38b5-2522-cbf4-c360c0ed05cd@molgen.mpg.de>
MIME-Version: 1.0
X-CM-TRANSID: DMmowAB3fwNbo5RiPi31CA--.52866S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFW3Ww4xGFW3KrWrAFyxZrb_yoW8Xr13pa
 n5Xa4Igr1kXr4jq3ykJa18Za4Ykayjq345CrZxA3WF9Fn0vrWDAr4Ut347tryrGrZ5uFsx
 tr47Za1kuan8AaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07URwZxUUUUU=
X-Originating-IP: [223.104.68.80]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/xtbBGg4RFl-HZLYkDgAAsz
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
Subject: [Intel-wired-lan] [PATCH v3] igb_main: Assign random MAC address
 instead of fail in case of invalid one
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
 drivers/net/ethernet/intel/igb/igb_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 34b33b21e0dc..40f43534a3af 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3359,9 +3359,10 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	eth_hw_addr_set(netdev, hw->mac.addr);
 
 	if (!is_valid_ether_addr(netdev->dev_addr)) {
-		dev_err(&pdev->dev, "Invalid MAC Address\n");
-		err = -EIO;
-		goto err_eeprom;
+		eth_hw_addr_random(netdev);
+		ether_addr_copy(hw->mac.addr, netdev->dev_addr);
+		dev_err(&pdev->dev,
+			"Invalid MAC address, already assigned random MAC address\n");
 	}
 
 	igb_set_default_mac_filter(adapter);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
