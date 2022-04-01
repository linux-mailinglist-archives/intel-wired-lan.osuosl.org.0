Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 989A64EEEA5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 15:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C56A4024E;
	Fri,  1 Apr 2022 13:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6FGAGZMucgq4; Fri,  1 Apr 2022 13:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9AB44091C;
	Fri,  1 Apr 2022 13:58:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A34C1BF378
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 08:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87F0460E94
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 08:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=163.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7VyxGBmjhplR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 08:01:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-m971.mail.163.com (mail-m971.mail.163.com [123.126.97.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 268E060E73
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=JUc46
 HYuLiqd9LVyi4hFXB41fWVvcsco2nwyplr06aY=; b=csG42RSPrqWtd1oel1QRR
 zKmpHz7cN2eYLXAN5Y+PQ2/eurmSwZHUO3t7ocST0HBaOykqfhoxdeXeKZ1eb3Pb
 PLORxWU9vE1qnG8nN4U5e+pbfHyefNi7P895pxGe762uqFAfPLyKL+m8dYwLvjLs
 0Y6LZxSfrLn7x72WKcRF6A=
Received: from localhost.localdomain (unknown [218.106.182.227])
 by smtp1 (Coremail) with SMTP id GdxpCgB3NWo1sUZiKRQTAA--.3770S4;
 Fri, 01 Apr 2022 16:01:09 +0800 (CST)
From: Jianglei Nie <niejianglei2021@163.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Fri,  1 Apr 2022 16:00:51 +0800
Message-Id: <20220401080051.16846-1-niejianglei2021@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: GdxpCgB3NWo1sUZiKRQTAA--.3770S4
X-Coremail-Antispam: 1Uf129KBjvdXoWrZFWUWw4kZFW5JryDAr1UZFb_yoWDWFXE9w
 42qryxJrW5W3WFy3y5tayfu34Fvr1DXr95Za13tayfX345Cr9FqasYvrWxXr40gr1UAF17
 Ar43ta43C345tjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRtOJeJUUUUU==
X-Originating-IP: [218.106.182.227]
X-CM-SenderInfo: xqlhyxxdqjzvrlsqjii6rwjhhfrp/1tbiDw7VjFUMcc6wYwAAst
X-Mailman-Approved-At: Fri, 01 Apr 2022 13:58:08 +0000
Subject: [Intel-wired-lan] [PATCH] ice: Fix memory leak in
 ice_get_orom_civd_data()
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Jianglei Nie <niejianglei2021@163.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Line 637 allocates a memory chunk for orom_data by vzmalloc(). But
when ice_read_flash_module() fails, the allocated memory is not freed,
which will lead to a memory leak.

We can fix it by freeing the orom_data when ce_read_flash_module() fails.

Signed-off-by: Jianglei Nie <niejianglei2021@163.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 4eb0599714f4..13cdb5ea594d 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -641,6 +641,7 @@ ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
 	status = ice_read_flash_module(hw, bank, ICE_SR_1ST_OROM_BANK_PTR, 0,
 				       orom_data, hw->flash.banks.orom_size);
 	if (status) {
+		vfree(orom_data);
 		ice_debug(hw, ICE_DBG_NVM, "Unable to read Option ROM data\n");
 		return status;
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
