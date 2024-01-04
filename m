Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B93C824608
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 17:22:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18AD6405B2;
	Thu,  4 Jan 2024 16:22:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18AD6405B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704385368;
	bh=GUTtB9m6M/z1F9wOOEilIMS9iUI36DBSZLKQRroWd8Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KSUD5CV8OBxQQy5nXGI/EsR62sSTgAxv/kYEPPuaLEDvoWJJMYN2/GakVbTzQP/DM
	 yXreW3jVpjwRw2sp7e206q1vCpk8FufCcdTMkhcp4rSq4EFNK+s3I469PTs4uOHhbt
	 ks46BNTB757TIzRMdKHh3JqpQpob/LSbHjU6SrLT78wSq3g88eUZuFUAD5/YUlD7c1
	 N8cNxfJAftYGoP6RSImCa9G8J95J099IvYQglLNIrEHZY7Gc/6gF1lrhsWOo1dVOw4
	 CqqzBVRMMcYQZFcfq6GMEwuuQZBlypHL0qxgZdQ3BAwq47AFe5R6VNWB2gf8YCSUAp
	 te8yIN0rlWotg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7LAiIJM9IMYc; Thu,  4 Jan 2024 16:22:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B65CD400C4;
	Thu,  4 Jan 2024 16:22:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B65CD400C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D791E1BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 01:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC3284193F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 01:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC3284193F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q7pbX57vAVUW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 01:02:00 +0000 (UTC)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58BD14193C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 01:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58BD14193C
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-6d9cb95ddd1so2712b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Jan 2024 17:02:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704330119; x=1704934919;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GUTtB9m6M/z1F9wOOEilIMS9iUI36DBSZLKQRroWd8Y=;
 b=jB1Drma57sUW/Wd6hwvkGs5fHx1tJkEvWclmbx/H2kSxFafm1I2E/zdfMND5uzNN9+
 5EalmVI813f4eMtFAJ54BksuNzzd8/6yAlIvizQR5LbydYIcckpsmoNcvOGan3NJSI41
 FTNn028HpzWI2J8FaAhkXDCQi+M18y18ggcbjwQCcGkJq9+LZfJxwbJnbDRhtlpojnpJ
 lWtXFMQU3/TW2AgHX3rlyHUWVwsfDrgfAwc3mxR0gd92oXJUw/gOvlJqyuwIbokPr6kb
 fX3I0bPy1zB4wVfHw6dRJ67HBAugcP2m5IwtRnbx43NO2wHLwzDICgOgvf+pU5AoJTjq
 fG1g==
X-Gm-Message-State: AOJu0Yx3LAbUVZduER1OFPE+YKnQB6Yb2LAd+zDU1wVtFScZ9WA+ZJJF
 HVTZ3DJLfHDJvKN2RyS00vXIzl+etueTNO53Y1Mfy1tnug==
X-Google-Smtp-Source: AGHT+IG5V+rWMVERqBwU2wtsk1BUYMyHmWZuvo7erq08WB09VY45/EGvaZs+qai1vPHitlI+bfRjBQ==
X-Received: by 2002:a17:90a:318a:b0:28c:b189:cf15 with SMTP id
 j10-20020a17090a318a00b0028cb189cf15mr3527856pjb.20.1704330118737; 
 Wed, 03 Jan 2024 17:01:58 -0800 (PST)
Received: from arista-Idaville.sjc.aristanetworks.com ([74.123.28.10])
 by smtp.googlemail.com with ESMTPSA id
 er14-20020a17090af6ce00b0028be4e9b0a5sm2341608pjb.28.2024.01.03.17.01.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jan 2024 17:01:58 -0800 (PST)
From: Prasad Koya <prasad@arista.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jan 2024 17:01:44 -0800
Message-Id: <20240104010144.2137857-1-prasad@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 04 Jan 2024 16:22:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1704330119; x=1704934919; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=GUTtB9m6M/z1F9wOOEilIMS9iUI36DBSZLKQRroWd8Y=;
 b=E3yeqgEdu35/qfgVngf0EBuMdWiwBB8pevxIDdiw34Y3IvGGyZw8mLfwXQyPyR2ITR
 2aq+MbtUnVTl/XRGmBoGWm5jyWGMfaw3edALIiKXpC0ykggl9fCgs5dyEFwICN3oU37k
 XR6yJF0YK+u7svcw2Y0wL5wxvUM1B6mtU2gd/3uXdp/0I5LQBMM/h1h61rrd+bXYWha7
 2ORP4guqJgJv4t/dvCTIRtmEG4NjPKsOhbhHDBDlOUejaBu40XaL7+kO+hx6VHvh8jTq
 Bb3QZ0vi6on0A8xsSXCKQa3uxsgVc8flKy0Au7oxgpAyr7Fo2hUuHA8L7v0xbM8F+ICA
 cK8Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=E3yeqgEd
Subject: [Intel-wired-lan] [PATCH] [iwl-net] igc: write to phy power
 management and management control registers to power up/power down the phy
 during interface up/down
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
Cc: Salam <noureddine@arista.com>, Naama Meir <naamax.meir@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, sasha.neftin@intel.com,
 gilligan@arista.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 Prasad Koya <prasad@arista.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

 For I225/226 parts, when the interface is set down with "ip
 link set <dev> down", interface is down but the PHY (led) continues
 to be up. This patch makes the phy to be actually off/on during
 interface down/up events.

Signed-off-by: Prasad Koya <prasad@arista.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  3 ++
 drivers/net/ethernet/intel/igc/igc_phy.c     | 42 +++++++++++++-------
 2 files changed, 31 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index b3037016f31d..6f60f5bd9cc7 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -684,4 +684,7 @@
 #define IGC_LTRMAXV_LSNP_REQ		0x00008000 /* LTR Snoop Requirement */
 #define IGC_LTRMAXV_SCALE_SHIFT		10
 
+/* PHY Power management register */
+#define IGC_GO_LINK_DISCONNECT		0x0020	   /* Go Link Disconnect */
+
 #endif /* _IGC_DEFINES_H_ */
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 53b77c969c85..319cdf876f4e 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -107,12 +107,22 @@ s32 igc_phy_has_link(struct igc_hw *hw, u32 iterations,
  */
 void igc_power_up_phy_copper(struct igc_hw *hw)
 {
-	u16 mii_reg = 0;
+	struct igc_phy_info *phy = &hw->phy;
+	u32 phpm, manc;
+
+	if (phy->ops.acquire(hw))
+		return;
+
+	manc = rd32(IGC_MANC);
+	manc &= ~IGC_MANC_BLK_PHY_RST_ON_IDE;
+	wr32(IGC_MANC, manc);
 
-	/* The PHY will retain its settings across a power down/up cycle */
-	hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
-	mii_reg &= ~MII_CR_POWER_DOWN;
-	hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);
+	phpm = rd32(IGC_I225_PHPM);
+	phpm &= ~IGC_GO_LINK_DISCONNECT;
+	wr32(IGC_I225_PHPM, phpm);
+	usleep_range(100, 200);
+
+	hw->phy.ops.release(hw);
 }
 
 /**
@@ -124,17 +134,21 @@ void igc_power_up_phy_copper(struct igc_hw *hw)
  */
 void igc_power_down_phy_copper(struct igc_hw *hw)
 {
-	u16 mii_reg = 0;
-
-	/* The PHY will retain its settings across a power down/up cycle */
-	hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
-	mii_reg |= MII_CR_POWER_DOWN;
+	struct igc_phy_info *phy = &hw->phy;
+	u32 phpm, manc;
 
-	/* Temporary workaround - should be removed when PHY will implement
-	 * IEEE registers as properly
-	 */
-	/* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);*/
+	if (phy->ops.acquire(hw))
+		return;
+	/* Set "Go Link Disconnect" bit in the PHPM register to turn off the PHY */
+	phpm = rd32(IGC_I225_PHPM);
+	phpm |= IGC_GO_LINK_DISCONNECT;
+	wr32(IGC_I225_PHPM, phpm);
 	usleep_range(1000, 2000);
+
+	manc = rd32(IGC_MANC);
+	wr32(IGC_MANC, manc | IGC_MANC_BLK_PHY_RST_ON_IDE);
+
+	phy->ops.release(hw);
 }
 
 /**
-- 
2.25.1

