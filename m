Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 129474F168A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Apr 2022 15:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E4B060FD9;
	Mon,  4 Apr 2022 13:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5n01TqqXzbeZ; Mon,  4 Apr 2022 13:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9045D60B1C;
	Mon,  4 Apr 2022 13:52:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92F401BF263
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Apr 2022 02:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7185141A22
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Apr 2022 02:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=163.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSNQL9ldGZ40 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Apr 2022 02:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-m972.mail.163.com (mail-m972.mail.163.com [123.126.97.2])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00E0341A15
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Apr 2022 02:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=BINrC
 NBNH44euvnshLFjjJf4FagiFC3JLY+4VjHPKL8=; b=Vz+Zad/M0vsawnPWVgkqK
 /c+k91Ifj1zun7LHfDYmuArkwVK78gTiClRy9VrHucLD5fDGn1s6bSyOEZ1CK6dQ
 YUGKcWLC5GQntclMK0PBjOjEWIWC3DniZmIon3h2Qnks/HkBd4/sjgPe3pF6Hqy2
 HGu00KW5k5DJdflkTuxFz4=
Received: from localhost.localdomain (unknown [218.106.182.227])
 by smtp2 (Coremail) with SMTP id GtxpCgCH7DktskdiqyxVAA--.10933S4;
 Sat, 02 Apr 2022 10:17:25 +0800 (CST)
From: Jianglei Nie <niejianglei2021@163.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Sat,  2 Apr 2022 10:17:15 +0800
Message-Id: <20220402021715.4740-1-niejianglei2021@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: GtxpCgCH7DktskdiqyxVAA--.10933S4
X-Coremail-Antispam: 1Uf129KBjvdXoWrtw17Xr48Zr1kGw1DGr1rZwb_yoWDCwc_uw
 47XryfJrW5W3WFy3y5tayfua40vr1DXF95Za13tayfX345Cr9FqasYvrWfXr40gr15AF9r
 Ar43ta43C345tjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xR_yxRPUUUUU==
X-Originating-IP: [218.106.182.227]
X-CM-SenderInfo: xqlhyxxdqjzvrlsqjii6rwjhhfrp/1tbiQxXWjFc7YXss4QAAs3
X-Mailman-Approved-At: Mon, 04 Apr 2022 13:52:20 +0000
Subject: [Intel-wired-lan] [PATCH v2] ice: Fix memory leak in
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

A memory chunk was allocated for orom_data in ice_get_orom_civd_data()
by vzmalloc(). But when ice_read_flash_module() fails, the allocated
memory is not freed, which will lead to a memory leak.

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
