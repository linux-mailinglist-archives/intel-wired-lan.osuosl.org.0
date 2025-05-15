Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4147FAB8D9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 19:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAFCF831CA;
	Thu, 15 May 2025 17:22:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2bW5DiwkJxa8; Thu, 15 May 2025 17:22:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58E3883145
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747329735;
	bh=AmaE7zmMQ/HYq+spNziv4SnDbQjnhMZn5DIjgMiKoKE=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NRUWn2hY1oyuJxaaJ5lMyOB/bNw9WWSjyCwEB4sNUIlKuivpy+CjZsbLtp4tOMfUs
	 prP16yL9DjBk0ANrWGoQ7vOSV5CqJc/K0SqOmZs3wBntMLYkKhtpg5hovBR50d+rng
	 x4MtCzWO9JPb8lbQqZt44kx22YOrzoxvo+faPPFWbD0n1g5mlLvoN/VwUA8gEi+OQ2
	 t2p3rtWE8tRwjqlgAqX1JvzuukTTV3WJoxCx+0enqLUMlJT8qaL962g8j+6PqXRjsP
	 hLd9cQBdRann0btIb4QBi2xPc9+utHghKDPJq8kWyRVtXk+rov1AC1S0yW948RT8m6
	 v8j2t6fXjQJPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58E3883145;
	Thu, 15 May 2025 17:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 19CF413D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 12:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F34C140C08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 12:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S7DLDXgzHJg6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 12:50:31 +0000 (UTC)
X-Greylist: delayed 326 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 15 May 2025 12:50:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B931A40C38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B931A40C38
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=58.251.27.85;
 helo=mxct.zte.com.cn; envelope-from=long.yunjian@zte.com.cn;
 receiver=<UNKNOWN> 
Received: from mxct.zte.com.cn (mxct.zte.com.cn [58.251.27.85])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B931A40C38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 12:50:30 +0000 (UTC)
Received: from mxde.zte.com.cn (unknown [10.35.20.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mxct.zte.com.cn (FangMail) with ESMTPS id 4Zyqfw0Gb1z57fJ
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 20:44:56 +0800 (CST)
Received: from mxhk.zte.com.cn (unknown [192.168.250.137])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxde.zte.com.cn (FangMail) with ESMTPS id 4Zyqfs5gf8zBRHKT
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 20:44:53 +0800 (CST)
Received: from mxct.zte.com.cn (unknown [192.168.251.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZyqfR5K0yz8R03x
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 20:44:31 +0800 (CST)
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mxct.zte.com.cn (FangMail) with ESMTPS id 4Zyqf73n23z51SY2;
 Thu, 15 May 2025 20:44:15 +0800 (CST)
Received: from njb2app05.zte.com.cn ([10.55.22.121])
 by mse-fl1.zte.com.cn with SMTP id 54FCiADT030587;
 Thu, 15 May 2025 20:44:11 +0800 (+08)
 (envelope-from long.yunjian@zte.com.cn)
Received: from mapi (njy2app01[null]) by mapi (Zmail) with MAPI id mid201;
 Thu, 15 May 2025 20:44:14 +0800 (CST)
Date: Thu, 15 May 2025 20:44:14 +0800 (CST)
X-Zmail-TransId: 2af96825e19effffffff8ff-d246d
X-Mailer: Zmail v1.0
Message-ID: <20250515204414844_YQsk90Odo5a3bx9qvo8g@zte.com.cn>
Mime-Version: 1.0
From: <long.yunjian@zte.com.cn>
To: <anthony.l.nguyen@intel.com>
Cc: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <fang.yumeng@zte.com.cn>, <xu.lifeng1@zte.com.cn>,
 <ouyang.maochun@zte.com.cn>, <mou.yi@zte.com.cn>
Content-Type: text/plain;
	charset="UTF-8"
X-MAIL: mse-fl1.zte.com.cn 54FCiADT030587
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 6825E1C6.001/4Zyqfw0Gb1z57fJ
X-Mailman-Approved-At: Thu, 15 May 2025 17:22:12 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zte.com.cn
Subject: [Intel-wired-lan] =?utf-8?q?=5BPATCH_linux-next=5D_net=3A_e100?=
 =?utf-8?q?=3A_Use_str=5Fread=5Fwrite=28=29_helper?=
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

From: Yumeng Fang <fang.yumeng@zte.com.cn>

Remove hard-coded strings by using the str_read_write() helper.

Signed-off-by: Yumeng Fang <fang.yumeng@zte.com.cn>
---
 drivers/net/ethernet/intel/e100.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index c0ead54ea186..ab93caab72bb 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -147,6 +147,7 @@
 #include <linux/firmware.h>
 #include <linux/rtnetlink.h>
 #include <linux/unaligned.h>
+#include <linux/string_choices.h>


 #define DRV_NAME		"e100"
@@ -946,7 +947,7 @@ static u16 mdio_ctrl_hw(struct nic *nic, u32 addr, u32 dir, u32 reg, u16 data)
 	spin_unlock_irqrestore(&nic->mdio_lock, flags);
 	netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
 		     "%s:addr=%d, reg=%d, data_in=0x%04X, data_out=0x%04X\n",
-		     dir == mdi_read ? "READ" : "WRITE",
+		     str_read_write(dir == mdi_read),
 		     addr, reg, data, data_out);
 	return (u16)data_out;
 }
@@ -1009,7 +1010,7 @@ static u16 mdio_ctrl_phy_mii_emulated(struct nic *nic,
 		default:
 			netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
 				     "%s:addr=%d, reg=%d, data=0x%04X: unimplemented emulation!\n",
-				     dir == mdi_read ? "READ" : "WRITE",
+				     str_read_write(dir == mdi_read),
 				     addr, reg, data);
 			return 0xFFFF;
 		}
@@ -1018,7 +1019,7 @@ static u16 mdio_ctrl_phy_mii_emulated(struct nic *nic,
 		default:
 			netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
 				     "%s:addr=%d, reg=%d, data=0x%04X: unimplemented emulation!\n",
-				     dir == mdi_read ? "READ" : "WRITE",
+				     str_read_write(dir == mdi_read),
 				     addr, reg, data);
 			return 0xFFFF;
 		}
-- 
2.25.1
