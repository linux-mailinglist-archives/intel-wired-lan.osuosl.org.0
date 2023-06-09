Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96669729E1D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 17:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1344E4251D;
	Fri,  9 Jun 2023 15:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1344E4251D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686323755;
	bh=Pt453PUwROiVScpGT6OA97V17dndqGNL5S6xFX9cjfw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uXyJa5IyFZt3NSXz201z0D53FhPy140iNRRzxW60aYr6MotZH0GzxfzJP21RWKLOu
	 3XXHk3LxNZAnNSGcLj0mJxcTiVnvjzLtPiHJm6trGCOSTia8W0dPbb5+1OKqgnoWwe
	 3xuuiEYhQBU/vWpp3T/6qNv3jDoivgGZKSNq2Yi1jGWWSVjHHQxYyP0l5dlGAhWu7D
	 0sHdEocgdLXLE8YdtkMZpjarCUlWeC72N44+nc9hmehoPsZvxjLi5KSh10HomwRoug
	 1IRcL5obtb0q5tABBbRY8p163uA24IjVFUchD3uogJ07weXxiH7iK7hx1BFr6oHHr1
	 b89PLWNeMXbPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tASXgkgk07DI; Fri,  9 Jun 2023 15:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 659284251C;
	Fri,  9 Jun 2023 15:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 659284251C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59E7D1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 02:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A2DC41FA5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 02:55:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A2DC41FA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s9UpDv_mo8Iy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 02:55:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEFE041F9C
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEFE041F9C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 02:55:06 +0000 (UTC)
Received: from john-VirtualBox (unknown [111.19.92.254])
 by smtp2 (Coremail) with SMTP id C1UQrADHz19tlIJkewakDQ--.14997S2;
 Fri, 09 Jun 2023 10:54:38 +0800 (CST)
Date: Fri, 9 Jun 2023 10:54:37 +0800
From: Baozhu Ni <nibaozhu@yeah.net>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Outreachy <outreachy@lists.linux.dev>
Message-ID: <20230609025437.GA5307@john-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
X-CM-TRANSID: C1UQrADHz19tlIJkewakDQ--.14997S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxury3WFW7ur1xXry5KF1xXwb_yoWrAr1fpF
 Wjvas8ur1fJr47W3ZrJw4xZan8Zws7A345Gr4fu39Yva45Jr95CF13KrZ3Wry0vrZrXry3
 KF15ZrnxCF4qg3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSUDJUUUUU=
X-Originating-IP: [111.19.92.254]
X-CM-SenderInfo: 5qlet0x2kxq5hhdkh0dhw/1tbiDw+JelnxboRyfwAAs8
X-Mailman-Approved-At: Fri, 09 Jun 2023 15:15:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yeah.net; 
 s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
 Content-Type; bh=sMCFcoMSm3KIUqoY/BwUkMWGJLEkhAztPDeMF/Kppj8=;
 b=U5zl5YDsa3EGNJuAm00B/L+4kq87sb9rbx7PZvzMiUCSM8mQXlq7mQN22UcC3L
 Bf06bWGPY7Z4JhfxB7QBQTardzpBi7p2i/JnfitaPT6qhFWdgir4I8o0sUqtzP7j
 VRMv82xxAp5j5ZCncPJptwbZZhBp95BuhSauPWciouSYQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net
 header.a=rsa-sha256 header.s=s110527 header.b=U5zl5YDs
Subject: [Intel-wired-lan] [PATCH] e1000e: Remove not useful `else' after a
 break or return
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

`else' is not generally useful after a break or return

Signed-off-by: Baozhu Ni <nibaozhu@yeah.net>
---
 .../net/ethernet/intel/e1000e/80003es2lan.c   |  5 +-
 drivers/net/ethernet/intel/e1000e/ich8lan.c   | 59 +++++++++----------
 2 files changed, 31 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/80003es2lan.c b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
index be9c695dde12..f063e2bd48fa 100644
--- a/drivers/net/ethernet/intel/e1000e/80003es2lan.c
+++ b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
@@ -43,11 +43,10 @@ static s32 e1000_init_phy_params_80003es2lan(struct e1000_hw *hw)
 	if (hw->phy.media_type != e1000_media_type_copper) {
 		phy->type = e1000_phy_none;
 		return 0;
-	} else {
-		phy->ops.power_up = e1000_power_up_phy_copper;
-		phy->ops.power_down = e1000_power_down_phy_copper_80003es2lan;
 	}
 
+	phy->ops.power_up = e1000_power_up_phy_copper;
+	phy->ops.power_down = e1000_power_down_phy_copper_80003es2lan;
 	phy->addr = 1;
 	phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 	phy->reset_delay_us = 100;
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 0c7fd10312c8..8ab4e45de5f2 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -3592,9 +3592,8 @@ static s32 e1000_read_flash_byte_ich8lan(struct e1000_hw *hw, u32 offset,
 	 */
 	if (hw->mac.type >= e1000_pch_spt)
 		return -E1000_ERR_NVM;
-	else
-		ret_val = e1000_read_flash_data_ich8lan(hw, offset, 1, &word);
 
+	ret_val = e1000_read_flash_data_ich8lan(hw, offset, 1, &word);
 	if (ret_val)
 		return ret_val;
 
@@ -3659,20 +3658,20 @@ static s32 e1000_read_flash_data_ich8lan(struct e1000_hw *hw, u32 offset,
 			else if (size == 2)
 				*data = (u16)(flash_data & 0x0000FFFF);
 			break;
-		} else {
-			/* If we've gotten here, then things are probably
-			 * completely hosed, but if the error condition is
-			 * detected, it won't hurt to give it another try...
-			 * ICH_FLASH_CYCLE_REPEAT_COUNT times.
-			 */
-			hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
-			if (hsfsts.hsf_status.flcerr) {
-				/* Repeat for some time before giving up. */
-				continue;
-			} else if (!hsfsts.hsf_status.flcdone) {
-				e_dbg("Timeout error - flash cycle did not complete.\n");
-				break;
-			}
+		}
+
+		/* If we've gotten here, then things are probably
+		 * completely hosed, but if the error condition is
+		 * detected, it won't hurt to give it another try...
+		 * ICH_FLASH_CYCLE_REPEAT_COUNT times.
+		 */
+		hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
+		if (hsfsts.hsf_status.flcerr) {
+			/* Repeat for some time before giving up. */
+			continue;
+		} else if (!hsfsts.hsf_status.flcdone) {
+			e_dbg("Timeout error - flash cycle did not complete.\n");
+			break;
 		}
 	} while (count++ < ICH_FLASH_CYCLE_REPEAT_COUNT);
 
@@ -3734,20 +3733,20 @@ static s32 e1000_read_flash_data32_ich8lan(struct e1000_hw *hw, u32 offset,
 		if (!ret_val) {
 			*data = er32flash(ICH_FLASH_FDATA0);
 			break;
-		} else {
-			/* If we've gotten here, then things are probably
-			 * completely hosed, but if the error condition is
-			 * detected, it won't hurt to give it another try...
-			 * ICH_FLASH_CYCLE_REPEAT_COUNT times.
-			 */
-			hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
-			if (hsfsts.hsf_status.flcerr) {
-				/* Repeat for some time before giving up. */
-				continue;
-			} else if (!hsfsts.hsf_status.flcdone) {
-				e_dbg("Timeout error - flash cycle did not complete.\n");
-				break;
-			}
+		}
+
+		/* If we've gotten here, then things are probably
+		 * completely hosed, but if the error condition is
+		 * detected, it won't hurt to give it another try...
+		 * ICH_FLASH_CYCLE_REPEAT_COUNT times.
+		 */
+		hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
+		if (hsfsts.hsf_status.flcerr) {
+			/* Repeat for some time before giving up. */
+			continue;
+		} else if (!hsfsts.hsf_status.flcdone) {
+			e_dbg("Timeout error - flash cycle did not complete.\n");
+			break;
 		}
 	} while (count++ < ICH_FLASH_CYCLE_REPEAT_COUNT);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
