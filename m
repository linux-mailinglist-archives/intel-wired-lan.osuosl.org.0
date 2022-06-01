Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE39F53A98B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jun 2022 17:05:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1529F40C38;
	Wed,  1 Jun 2022 15:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNTmUWKBk4Lx; Wed,  1 Jun 2022 15:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F417140C35;
	Wed,  1 Jun 2022 15:05:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8881BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 15:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 074FB4177A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 15:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=126.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yAw8jeRs3rRq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jun 2022 15:05:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from m15114.mail.126.com (m15114.mail.126.com [220.181.15.114])
 by smtp4.osuosl.org (Postfix) with ESMTP id E11D941778
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 15:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=HWtXy
 zpTYQi99vLNSN4B9mSWTWB3vA617XDlC71beEg=; b=REGwHbh2ta/WGQSkYIACC
 gSL3byjExvI15fyOzkdsCZNZ7qpTvwJZp8NZt741HlPEN2W+k5rnqHtZYEL4/FgV
 2z/Y8Z/BWyHpjnMoLoYsRMlsjuGnM4+kaJTt1Kq0iVi06L/WAkhUUTeBhtn9XXHW
 maDm0qIxrOMnI4Y/w76VfA=
Received: from localhost.localdomain (unknown [223.104.68.68])
 by smtp7 (Coremail) with SMTP id DsmowAC3mKT9f5dis3x_CQ--.20151S2;
 Wed, 01 Jun 2022 23:04:30 +0800 (CST)
From: Lixue Liang <lianglixuehao@126.com>
To: pmenzel@molgen.mpg.de
Date: Wed,  1 Jun 2022 15:04:28 +0000
Message-Id: <20220601150428.33945-1-lianglixuehao@126.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CM-TRANSID: DsmowAC3mKT9f5dis3x_CQ--.20151S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFW3Ww4xGFW3KrWrAFyxZrb_yoW8Zw1Upa
 yrJa42grWkJr4jqw4kX3WxZas0kan0q345C39Iyw1F93Z0grWDArWrtry7tryrKrZ5Ca13
 Zr17Za1Dua1DAFDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jU0edUUUUU=
X-Originating-IP: [223.104.68.68]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/xtbBGggTFl-HZMgquAAAsx
Subject: [Intel-wired-lan] [PATCH v4] igb: Assign random MAC address instead
 of fail in case of invalid one
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
Changelog:
* v4:
  - Change the igb_mian in the title to igb
  - Fix dev_err message: replace "already assigned random MAC address" 
    with "Invalid MAC address. Assigned random MAC address" 
  Suggested-by Tony <anthony.l.nguyen@intel.com>

* v3:
  - Add space after comma in commit message 
  - Correct spelling of MAC address
  Suggested-by Paul <pmenzel@molgen.mpg.de>

* v2:
  - Change memcpy to ether_addr_copy
  - Change dev_info to dev_err
  - Fix the description of the commit message
  - Change eth_random_addr to eth_hw_addr_random
  Reported-by: kernel test robot <lkp@intel.com>

 drivers/net/ethernet/intel/igb/igb_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 34b33b21e0dc..5e3b162e50ac 100644
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
+			"Invalid MAC address. Assigned random MAC address\n");
 	}
 
 	igb_set_default_mac_filter(adapter);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
