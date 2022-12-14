Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F56064C1B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 02:15:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8DB760B1C;
	Wed, 14 Dec 2022 01:15:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8DB760B1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670980510;
	bh=0gDm1i9sdXA7GL+TmaeIULMMzeeaDD/XYHo2JANXr80=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pL3+h1A2CpHwzCrAbgaIgJjaazXgRnE802xK7nuNKl+Wpaj2NkrcTppZhq54eV+IJ
	 kRSx0BCnDW3nye0diM/RtwWDxA8E5vSO06pvKmCiieTYxWcBgTQYoprCjKohUlluP2
	 9Ev84u5cySnCz/JLMX5vkiOcrA37+rde6e5U4dupm+G+UJ4SpPND56qLuwqmXSb8zK
	 wzJ46zBj8gmhcLKk595i1Zw4DlLjpFFiWCCOV9BTW9qxbMZgxTBAil3UoWuEwnz5a0
	 AExCNiRRoxuZ8Pn8QAhOhfVyii4rpOyqA7WTg1g8LXht5Yj3ZK/m/LRg9/7PSMbsZ3
	 KySy/bXlQXnqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H86JHLKuKNe8; Wed, 14 Dec 2022 01:15:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7BB160B11;
	Wed, 14 Dec 2022 01:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7BB160B11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55D501BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 01:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AF7960A94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 01:15:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AF7960A94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4J8PddOZjfJj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 01:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B96D260B11
Received: from m15112.mail.126.com (m15112.mail.126.com [220.181.15.112])
 by smtp3.osuosl.org (Postfix) with ESMTP id B96D260B11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 01:15:01 +0000 (UTC)
Received: from localhost.localdomain (unknown [117.136.79.146])
 by smtp2 (Coremail) with SMTP id DMmowADHz7MtI5lj3iuJEw--.5203S2;
 Wed, 14 Dec 2022 09:13:20 +0800 (CST)
From: Lixue Liang <lianglixuehao@126.com>
To: anthony.l.nguyen@intel.com, kuba@kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 14 Dec 2022 01:12:14 +0000
Message-Id: <20221214011214.51836-1-lianglixuehao@126.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CM-TRANSID: DMmowADHz7MtI5lj3iuJEw--.5203S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw1ruFWxAr17Ar43tF4xJFb_yoW5uF4Upa
 y0gF43Wryktr47Zw4kWw4xZF95W3WDJ3yfGa9xZw1F9FnIv34DArW8K343Jry0qrZYkayx
 Jr17ZFZ7ua1qva7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UR89NUUUUU=
X-Originating-IP: [117.136.79.146]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/xtbBGgnXFl-HaSMZAgAAsb
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=126.com; 
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=5ip81
 +wNz5xtBTBVts1Fb1RLCzaC6pg2EyPJm4Juic8=; b=WEOsSfCUJD0aqoNqa9gyi
 zDrK9ScOUzX3F9KIH7ev+bBMnNOouQ9wRY6ki/oEBZYLLRFa/ljjipw9ZAuzNkOv
 7VgYDPCGBxDRTsgj57247iUifpDQcz/GzSqySG0HpY6PS4Ml+5AhGJwhuVh7b58v
 inMlebLPIF68I1w7v8+0G0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=126.com header.i=@126.com
 header.a=rsa-sha256 header.s=s110527 header.b=WEOsSfCU
Subject: [Intel-wired-lan] [PATCH v7] igb: Assign random MAC address instead
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
 richardcochran@gmail.com, jesse.brandeburg@intel.com, ast@kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
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
* v7:
  - To group each parameter together
Suggested-by Tony Nguyen <anthony.l.nguyen@intel.com>
* v6:
  - Modify commit messages and naming of module parameters
  - [PATCH v6] link:
    https://lore.kernel.org/netdev/20220610023922.74892-1-lianglixuehao@126.com/
Suggested-by Paul <pmenzel@molgen.mpg.de>
* v5:
  - Through the setting of module parameters, it is allowed to complete
    the loading of the igb network card driver with an invalid MAC address.
  - [PATCH v5] link:
    https://lore.kernel.org/netdev/20220609083904.91778-1-lianglixuehao@126.com/
Suggested-by <alexander.duyck@gmail.com>
* v4:
  - Change the igb_mian in the title to igb
  - Fix dev_err message: replace "already assigned random MAC address"
    with "Invalid MAC address. Assigned random MAC address"
  - [PATCH v4] link:
    https://lore.kernel.org/netdev/20220601150428.33945-1-lianglixuehao@126.com/
Suggested-by Tony <anthony.l.nguyen@intel.com>

* v3:
  - Add space after comma in commit message
  - Correct spelling of MAC address
  - [PATCH v3] link:
    https://lore.kernel.org/netdev/20220530105834.97175-1-lianglixuehao@126.com/
Suggested-by Paul <pmenzel@molgen.mpg.de>

* v2:
  - Change memcpy to ether_addr_copy
  - Change dev_info to dev_err
  - Fix the description of the commit message
  - Change eth_random_addr to eth_hw_addr_random
  - [PATCH v2] link:
    https://lore.kernel.org/netdev/20220512093918.86084-1-lianglixue@greatwall.com.cn/
Reported-by: kernel test robot <lkp@intel.com>

 drivers/net/ethernet/intel/igb/igb_main.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index f8e32833226c..8ff0c698383c 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -241,6 +241,10 @@ static int debug = -1;
 module_param(debug, int, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
+static bool allow_invalid_mac_address;
+module_param(allow_invalid_mac_address, bool, 0);
+MODULE_PARM_DESC(allow_invalid_mac_address, "Allow NIC driver to be loaded with invalid MAC address");
+
 struct igb_reg_info {
 	u32 ofs;
 	char *name;
@@ -3358,9 +3362,16 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
