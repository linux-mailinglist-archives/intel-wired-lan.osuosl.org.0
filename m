Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C87A545A33
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jun 2022 04:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6D8240272;
	Fri, 10 Jun 2022 02:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8hdOXTIYBoSX; Fri, 10 Jun 2022 02:40:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D990440C3F;
	Fri, 10 Jun 2022 02:40:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BCE81BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 02:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F92A40272
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 02:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ol2hGFvjfOY2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jun 2022 02:40:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from m15112.mail.126.com (m15112.mail.126.com [220.181.15.112])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D17540138
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 02:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=91ux5
 kPCoAamyvRVP7GYhUZHehWVrxoVsAQMzUFDlOg=; b=nh8IXWmkLuJv6B55c+GLN
 3NaOxRpisUQUB9ANqLqaW35T7mjbG9yzcQEAVdfPORqgw92Ihu5Qqkq2i1zIA+io
 SQINq7+d2CIW06nhbF5ker7l2IFJodM3v4eHzcEunCXDMMjGRuZZJhA4iRiuYbx+
 bo+Kx0NgLchZiPsUo6/KjA=
Received: from localhost.localdomain (unknown [117.136.33.145])
 by smtp2 (Coremail) with SMTP id DMmowABHTwPvrqJiJk9+Cw--.18883S2;
 Fri, 10 Jun 2022 10:39:44 +0800 (CST)
From: Lixue Liang <lianglixuehao@126.com>
To: pmenzel@molgen.mpg.de
Date: Fri, 10 Jun 2022 02:39:22 +0000
Message-Id: <20220610023922.74892-1-lianglixuehao@126.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CM-TRANSID: DMmowABHTwPvrqJiJk9+Cw--.18883S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw1ruFWxAr17AFy7Gr15Arb_yoW5Xw1kpa
 yUJa43XrWkJr4avaykXw48XFy5CayDJ3y5CFZxZw1F9FnIqw1DArW8t347Xry0grWvka1x
 Jr17Zrs7ua1DAa7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j-kucUUUUU=
X-Originating-IP: [117.136.33.145]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/1tbiohccFlx5hnOT2QABsk
Subject: [Intel-wired-lan] [PATCH v6] igb: Assign random MAC address instead
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

Add the module parameter "allow_invalid_mac_address" to control the
behavior. When set to true, a random MAC address is assigned, and the
driver can be loaded, allowing the user to correct the invalid MAC address.

Signed-off-by: Lixue Liang <lianglixue@greatwall.com.cn>
---
Changelog:
* v6:
  - Modify commit messages and naming of module parameters
Suggested-by Paul <pmenzel@molgen.mpg.de>
* v5:
  - Through the setting of module parameters, it is allowed to complete
    the loading of the igb network card driver with an invalid MAC address.
Suggested-by <alexander.duyck@gmail.com>
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

 drivers/net/ethernet/intel/igb/igb_main.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 34b33b21e0dc..b61f216331da 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -238,8 +238,11 @@ MODULE_LICENSE("GPL v2");
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
+static bool allow_invalid_mac_address;
 module_param(debug, int, 0);
+module_param(allow_invalid_mac_address, bool, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
+MODULE_PARM_DESC(allow_invalid_mac_address, "Allow NIC driver to be loaded with invalid MAC address");
 
 struct igb_reg_info {
 	u32 ofs;
@@ -3359,9 +3362,16 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	eth_hw_addr_set(netdev, hw->mac.addr);
 
 	if (!is_valid_ether_addr(netdev->dev_addr)) {
-		dev_err(&pdev->dev, "Invalid MAC Address\n");
-		err = -EIO;
-		goto err_eeprom;
+		if (!allow_invalid_mac_address) {
+			dev_err(&pdev->dev, "Invalid MAC address\n");
+			err = -EIO;
+			goto err_eeprom;
+		} else {
+			eth_hw_addr_random(netdev);
+			ether_addr_copy(hw->mac.addr, netdev->dev_addr);
+			dev_err(&pdev->dev,
+				"Invalid MAC address. Assigned random MAC address\n");
+		}
 	}
 
 	igb_set_default_mac_filter(adapter);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
