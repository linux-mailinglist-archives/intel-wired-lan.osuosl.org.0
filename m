Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8C711CB98
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 11:58:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B080D8753D;
	Thu, 12 Dec 2019 10:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 74U5-m2qIsps; Thu, 12 Dec 2019 10:58:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2D77887D5;
	Thu, 12 Dec 2019 10:58:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCD6F1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 10:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B78798818E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 10:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JP57fT8A79EA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 10:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4BAD688092
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 10:58:51 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m6so1797186ljc.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 02:58:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MdFiPrT4aTcu+uxYUpE8vjkyE4T7x3v0GuPMtOhzjJI=;
 b=aw7NK/nKtju3QQ8uB7brON1d7V06/qTqGN4gClZBZGizrHTDY6P8UF6KwkhELyD/w9
 ld1eaq8rLxUtSiBGstZCbJcxT59ItflqY+EiAjiEoIAqM9tTaik3LnA5l8kiL2xAO3yc
 q/4THpTXfhtwJSppqiLJ/boHmXGEGA4G4s+5p8YL5ZATlnY/rXu2KAgfmGMjUO3eIpwp
 k6Gl09u6bAvNkhTQzDA8R0yZl81Jc0H3SAEDISZikB9eZIBUpkgCmRJm+rMrGKvLxnBb
 aSqNjvvi1BJhozn9mFtENlxA6OwNoZH5bd/sjcaQ2fI2vYfDgU8J3ODfHkCb9NYav75I
 ox9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MdFiPrT4aTcu+uxYUpE8vjkyE4T7x3v0GuPMtOhzjJI=;
 b=VYpzmHnmHNHtClj3LJei1hIcMfws4tW6y29f5zekBkZ5RD+XL1g57NchKjT9n6gDLQ
 V0L4ChnaJevM0+ZjONkx+TqnaiV7CjMPWLj2ZCeKnYzkHMbxFQWTfhQewf9UQ3UExzyb
 lkZOQ7/d/eWGVFO4Bz7O46iLuyke2YI1hgNz/r5+ZD23Ebl9jlUHQIgIvXAUboGAFUXt
 uHkQUoIQHfB+0F9pvkEiuxOSwaagyI/hCgbM3gD/fs0ifP2gbFXqhEUf//jf979ZloQI
 Zu6tPvfauk49P5f2hzFKjKdBYSFnLZjiM0XfFu/CS8lgGEkiGN5TAhc8UZIeyvY9MSuE
 P3SA==
X-Gm-Message-State: APjAAAVahtjJFodcpQ8qCfjfxsT3ZUek8C8QXRO/2UBcoz8J0oJM/Evv
 tcaH6F/cUhw0w4MuLixtWy0=
X-Google-Smtp-Source: APXvYqwgVbK3KavsgLhtzDUGEnxKcVdSmx0O0TkFgq6nQgLJJ3VIP69yDYUcUeXrfN73RP4eyT6DGg==
X-Received: by 2002:a2e:9610:: with SMTP id v16mr5560953ljh.88.1576148329191; 
 Thu, 12 Dec 2019 02:58:49 -0800 (PST)
Received: from ul001888.synapse.com (18-129-132-95.pool.ukrtel.net.
 [95.132.129.18])
 by smtp.gmail.com with ESMTPSA id f24sm2811496ljm.12.2019.12.12.02.58.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 02:58:48 -0800 (PST)
From: Vasyl Gomonovych <gomonovych@gmail.com>
To: jeffrey.t.kirsher@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org, gomonovych@gmail.com
Date: Thu, 12 Dec 2019 11:58:47 +0100
Message-Id: <20191212105847.16488-1-gomonovych@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] igb: index regs_buff array via index
 variable
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch is just a preparation for additional register dump in regs_buff.
To make new register insertion in the middle of regs_buff array easier
change array indexing to use local counter reg_ix.

---

Basically this path is just a subject to ask
How to add a new register to dump from dataseet
Because it is logically better to add an additional register
in the middle of an array but that will break ABI.
To not have the ABI problem we should just add it at the
end of the array and increase the array size.

---

Signed-off-by: Vasyl Gomonovych <gomonovych@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 110 ++++++++++---------
 1 file changed, 57 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 3182b059bf55..4531f7ea9d99 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -459,6 +459,7 @@ static void igb_get_regs(struct net_device *netdev,
 	struct e1000_hw *hw = &adapter->hw;
 	u32 *regs_buff = p;
 	u8 i;
+	int reg_ix = 0;
 
 	memset(p, 0, IGB_REGS_LEN * sizeof(u32));
 
@@ -603,116 +604,119 @@ static void igb_get_regs(struct net_device *netdev,
 	regs_buff[119] = adapter->stats.scvpc;
 	regs_buff[120] = adapter->stats.hrmpc;
 
+	reg_ix = 121;
 	for (i = 0; i < 4; i++)
-		regs_buff[121 + i] = rd32(E1000_SRRCTL(i));
+		regs_buff[reg_ix++] = rd32(E1000_SRRCTL(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[125 + i] = rd32(E1000_PSRTYPE(i));
+		regs_buff[reg_ix++] = rd32(E1000_PSRTYPE(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[129 + i] = rd32(E1000_RDBAL(i));
+		regs_buff[reg_ix++] = rd32(E1000_RDBAL(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[133 + i] = rd32(E1000_RDBAH(i));
+		regs_buff[reg_ix++] = rd32(E1000_RDBAH(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[137 + i] = rd32(E1000_RDLEN(i));
+		regs_buff[reg_ix++] = rd32(E1000_RDLEN(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[141 + i] = rd32(E1000_RDH(i));
+		regs_buff[reg_ix++] = rd32(E1000_RDH(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[145 + i] = rd32(E1000_RDT(i));
+		regs_buff[reg_ix++] = rd32(E1000_RDT(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[149 + i] = rd32(E1000_RXDCTL(i));
+		regs_buff[reg_ix++] = rd32(E1000_RXDCTL(i));
 
 	for (i = 0; i < 10; i++)
-		regs_buff[153 + i] = rd32(E1000_EITR(i));
+		regs_buff[reg_ix++] = rd32(E1000_EITR(i));
 	for (i = 0; i < 8; i++)
-		regs_buff[163 + i] = rd32(E1000_IMIR(i));
+		regs_buff[reg_ix++] = rd32(E1000_IMIR(i));
 	for (i = 0; i < 8; i++)
-		regs_buff[171 + i] = rd32(E1000_IMIREXT(i));
+		regs_buff[reg_ix++] = rd32(E1000_IMIREXT(i));
 	for (i = 0; i < 16; i++)
-		regs_buff[179 + i] = rd32(E1000_RAL(i));
+		regs_buff[reg_ix++] = rd32(E1000_RAL(i));
 	for (i = 0; i < 16; i++)
-		regs_buff[195 + i] = rd32(E1000_RAH(i));
+		regs_buff[reg_ix++] = rd32(E1000_RAH(i));
 
 	for (i = 0; i < 4; i++)
-		regs_buff[211 + i] = rd32(E1000_TDBAL(i));
+		regs_buff[reg_ix++] = rd32(E1000_TDBAL(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[215 + i] = rd32(E1000_TDBAH(i));
+		regs_buff[reg_ix++] = rd32(E1000_TDBAH(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[219 + i] = rd32(E1000_TDLEN(i));
+		regs_buff[reg_ix++] = rd32(E1000_TDLEN(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[223 + i] = rd32(E1000_TDH(i));
+		regs_buff[reg_ix++] = rd32(E1000_TDH(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[227 + i] = rd32(E1000_TDT(i));
+		regs_buff[reg_ix++] = rd32(E1000_TDT(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[231 + i] = rd32(E1000_TXDCTL(i));
+		regs_buff[reg_ix++] = rd32(E1000_TXDCTL(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[235 + i] = rd32(E1000_TDWBAL(i));
+		regs_buff[reg_ix++] = rd32(E1000_TDWBAL(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[239 + i] = rd32(E1000_TDWBAH(i));
+		regs_buff[reg_ix++] = rd32(E1000_TDWBAH(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[243 + i] = rd32(E1000_DCA_TXCTRL(i));
+		regs_buff[reg_ix++] = rd32(E1000_DCA_TXCTRL(i));
 
 	for (i = 0; i < 4; i++)
-		regs_buff[247 + i] = rd32(E1000_IP4AT_REG(i));
+		regs_buff[reg_ix++] = rd32(E1000_IP4AT_REG(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[251 + i] = rd32(E1000_IP6AT_REG(i));
+		regs_buff[reg_ix++] = rd32(E1000_IP6AT_REG(i));
 	for (i = 0; i < 32; i++)
-		regs_buff[255 + i] = rd32(E1000_WUPM_REG(i));
+		regs_buff[reg_ix++] = rd32(E1000_WUPM_REG(i));
 	for (i = 0; i < 128; i++)
-		regs_buff[287 + i] = rd32(E1000_FFMT_REG(i));
+		regs_buff[reg_ix++] = rd32(E1000_FFMT_REG(i));
 	for (i = 0; i < 128; i++)
-		regs_buff[415 + i] = rd32(E1000_FFVT_REG(i));
+		regs_buff[reg_ix++] = rd32(E1000_FFVT_REG(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[543 + i] = rd32(E1000_FFLT_REG(i));
+		regs_buff[reg_ix++] = rd32(E1000_FFLT_REG(i));
 
-	regs_buff[547] = rd32(E1000_TDFH);
-	regs_buff[548] = rd32(E1000_TDFT);
-	regs_buff[549] = rd32(E1000_TDFHS);
-	regs_buff[550] = rd32(E1000_TDFPC);
+	regs_buff[reg_ix++] = rd32(E1000_TDFH);
+	regs_buff[reg_ix++] = rd32(E1000_TDFT);
+	regs_buff[reg_ix++] = rd32(E1000_TDFHS);
+	regs_buff[reg_ix++] = rd32(E1000_TDFPC);
 
 	if (hw->mac.type > e1000_82580) {
-		regs_buff[551] = adapter->stats.o2bgptc;
-		regs_buff[552] = adapter->stats.b2ospc;
-		regs_buff[553] = adapter->stats.o2bspc;
-		regs_buff[554] = adapter->stats.b2ogprc;
+		regs_buff[reg_ix++] = adapter->stats.o2bgptc;
+		regs_buff[reg_ix++] = adapter->stats.b2ospc;
+		regs_buff[reg_ix++] = adapter->stats.o2bspc;
+		regs_buff[reg_ix++] = adapter->stats.b2ogprc;
 	}
 
+	reg_ix = 555;
 	if (hw->mac.type == e1000_82576) {
 		for (i = 0; i < 12; i++)
-			regs_buff[555 + i] = rd32(E1000_SRRCTL(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_SRRCTL(i + 4));
 		for (i = 0; i < 4; i++)
-			regs_buff[567 + i] = rd32(E1000_PSRTYPE(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_PSRTYPE(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[571 + i] = rd32(E1000_RDBAL(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_RDBAL(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[583 + i] = rd32(E1000_RDBAH(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_RDBAH(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[595 + i] = rd32(E1000_RDLEN(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_RDLEN(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[607 + i] = rd32(E1000_RDH(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_RDH(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[619 + i] = rd32(E1000_RDT(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_RDT(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[631 + i] = rd32(E1000_RXDCTL(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_RXDCTL(i + 4));
 
 		for (i = 0; i < 12; i++)
-			regs_buff[643 + i] = rd32(E1000_TDBAL(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TDBAL(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[655 + i] = rd32(E1000_TDBAH(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TDBAH(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[667 + i] = rd32(E1000_TDLEN(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TDLEN(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[679 + i] = rd32(E1000_TDH(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TDH(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[691 + i] = rd32(E1000_TDT(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TDT(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[703 + i] = rd32(E1000_TXDCTL(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TXDCTL(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[715 + i] = rd32(E1000_TDWBAL(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TDWBAL(i + 4));
 		for (i = 0; i < 12; i++)
-			regs_buff[727 + i] = rd32(E1000_TDWBAH(i + 4));
+			regs_buff[reg_ix++] = rd32(E1000_TDWBAH(i + 4));
 	}
 
+	reg_ix = 739;
 	if (hw->mac.type == e1000_i210 || hw->mac.type == e1000_i211)
-		regs_buff[739] = rd32(E1000_I210_RR2DCDELAY);
+		regs_buff[reg_ix] = rd32(E1000_I210_RR2DCDELAY);
 }
 
 static int igb_get_eeprom_len(struct net_device *netdev)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
