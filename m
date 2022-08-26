Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DCC5A2BC7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 17:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F16A4102A;
	Fri, 26 Aug 2022 15:57:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F16A4102A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661529431;
	bh=QGbxweMCCL//xSWbkJj14MyMuOqGArNefTb3FUuPIgg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=u+C8oHpS+FIcVCKHFm1K+1/mIUBl28V/KwsXOMJ5FB0JQjbsmseIvgjfIAUrL28Li
	 Il4pyPdMamoZw7yKz3j6KS01HGxV5j0zhaFvxToxUXtSTW6YtpciJVbwOZLegfI8RN
	 c9T7qoRtCINbpmwlcIfgvp5ZWV3sGiKTl28bLPzY7T7EtcEmY0ZIOcmrjdkcrFd/yz
	 6TcvMA8Xvn5/wjD+gHkX2cHasBUEcmlhRAISUx7t9NqoXyPQRNnKWtOswDtED0W44j
	 5aUHp2n/3/+zyNbUSYxZm8UoabuirFHaqRqbPj488s52PUubjVkTjrN22DcuJn5QBX
	 Zr23b+kXKWeWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bq0Tu0jrQ2DC; Fri, 26 Aug 2022 15:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7284340FDD;
	Fri, 26 Aug 2022 15:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7284340FDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04B7C1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 06:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D123841966
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 06:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D123841966
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OI7RE_E_Rmhg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 06:56:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 157A74196E
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 157A74196E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 06:56:37 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id d12so832429plr.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 23:56:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=KjTu3WZ7BYoc24FpxzDgvGSEPvPIK+/85ugDuX1XsWs=;
 b=KPEOaHrccueYkGAiQzXSIHrz4VY6aC4WfYwlcXsI/WNhmJnui3n2Hb+bOZnFrmY4+y
 Mn1F5NIlECOm++Q5fJqA22c3RnzHS1w0wp8DZSnR3Ty1SGeTQ9nhKa7Jb3S4VMu5uPg3
 Tr882HCNIWAqti490i5Vu6nCP/xTCVuuh5DbkF7CDCPZcBmHfelydtMNNL+odO5mpm1C
 tRhmWoJ3peeFxLD7N1p8wvPzQs6o3qhM6e/AzAz83cgzoLpkoKlaVqdKA2A9Orf4JU5G
 N70Us6lcLNJoM6hEqRgnaHUltZkawRFCTWQ7AdZ//EAV2ipij2ntI3DctueV4TsmDNNh
 amHA==
X-Gm-Message-State: ACgBeo3OBwcHQcLfSx+IagU94HzSGpEp5u0bRjKAX3Vn6T4ia2l4JtnO
 bLsDgPDeqRiMhGXopmbB2vA=
X-Google-Smtp-Source: AA6agR4FshwGd2RWaRUIY579oO0VCN85Bh8OlckOU9Qzl9fecrI2JBRzsZ77xGYhMRL2cKU/LOKMdw==
X-Received: by 2002:a17:90b:3b50:b0:1fb:632c:f978 with SMTP id
 ot16-20020a17090b3b5000b001fb632cf978mr2938700pjb.231.1661496997429; 
 Thu, 25 Aug 2022 23:56:37 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu.
 [2607:f720:1300:3033::1:4dd]) by smtp.googlemail.com with ESMTPSA id
 mi6-20020a17090b4b4600b001f52fa1704csm11620478pjb.3.2022.08.25.23.56.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Aug 2022 23:56:36 -0700 (PDT)
From: Li Zhong <floridsleeves@gmail.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Aug 2022 23:56:27 -0700
Message-Id: <20220826065627.1615965-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 26 Aug 2022 15:57:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=KjTu3WZ7BYoc24FpxzDgvGSEPvPIK+/85ugDuX1XsWs=;
 b=VzB0bl+iEINcPc60YjOjrVq/MGe3EZIOGIfRN3cOt1lPmr7/2CWr2btJPt7fsoTg0H
 V3AUk91Yq4C68L+7jvOaSn0ixJnibvNsheUDBe21w3J9B7yzFpryF5gKe+dnMg7Cnq8U
 As4NbkjBOZDd0qVheRpnG20stTMyRlEddZUII8bfxiZMoK0tKVhFqVlDf9ou+rpvZbJV
 KlRWHKBmKhR6gVCxhZC9Gwhec9gradkDgrsxBkRtEW1U7N+qItgNvz9oHq/HUw++EAQA
 ATNNIRV0LfJv7Bu4iuOcko0KrfkTgdnnZlZXxrJ1hmATPqQTWCnKrZwjMR7vJPheapR7
 uG2Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=VzB0bl+i
Subject: [Intel-wired-lan] [PATCH net-next v2] drivers/net/ethernet: check
 return value of e1e_rphy()
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
Cc: edumazet@google.com, Li Zhong <floridsleeves@gmail.com>, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1e_rphy() could return error value, which needs to be checked and
reported for debugging and diagnose.

Signed-off-by: Li Zhong <floridsleeves@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/phy.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index fd07c3679bb1..060b263348ce 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -2697,9 +2697,14 @@ static s32 e1000_access_phy_wakeup_reg_bm(struct e1000_hw *hw, u32 offset,
 void e1000_power_up_phy_copper(struct e1000_hw *hw)
 {
 	u16 mii_reg = 0;
+	int ret;
 
 	/* The PHY will retain its settings across a power down/up cycle */
-	e1e_rphy(hw, MII_BMCR, &mii_reg);
+	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
+	if (ret) {
+		e_dbg("Error reading PHY register\n");
+		return;
+	}
 	mii_reg &= ~BMCR_PDOWN;
 	e1e_wphy(hw, MII_BMCR, mii_reg);
 }
@@ -2715,9 +2720,14 @@ void e1000_power_up_phy_copper(struct e1000_hw *hw)
 void e1000_power_down_phy_copper(struct e1000_hw *hw)
 {
 	u16 mii_reg = 0;
+	int ret;
 
 	/* The PHY will retain its settings across a power down/up cycle */
-	e1e_rphy(hw, MII_BMCR, &mii_reg);
+	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
+	if (ret) {
+		e_dbg("Error reading PHY register\n");
+		return;
+	}
 	mii_reg |= BMCR_PDOWN;
 	e1e_wphy(hw, MII_BMCR, mii_reg);
 	usleep_range(1000, 2000);
@@ -3037,7 +3047,11 @@ s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
 		return 0;
 
 	/* Do not apply workaround if in PHY loopback bit 14 set */
-	e1e_rphy(hw, MII_BMCR, &data);
+	ret_val = e1e_rphy(hw, MII_BMCR, &data);
+	if (ret_val) {
+		e_dbg("Error reading PHY register\n");
+		return ret_val;
+	}
 	if (data & BMCR_LOOPBACK)
 		return 0;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
