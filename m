Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D35C65A6413
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 14:54:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8090B414C4;
	Tue, 30 Aug 2022 12:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8090B414C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661864064;
	bh=oqHXO6ZHl1e4E5ZX2U/ep87HoeB7Ub4FukOwffs7fsw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FFEJUPQ4jvnuziP8QNXtEOVoiR1l9fzo9KxXOHOGEXW3ZgFsMvMiRFYP+BSAMGjvQ
	 Uy2lgx0SY8iDUYg+T7g3KJ/JOidnPFvwMZYKlAb4GvoEDRFCl0l4aXrxVv8HyLBFHH
	 pS/6PwVNL0JZuDdVk4vYSuirkloXvog4p0UOiOzwiHhkssRIgENqMCgrk35DGsBatQ
	 z0xraUc5g0XEKc57HzbbSzmYq6U2yctTyL49j2Jrj6XD5b11Tqe5CROPuc3QHfGj0d
	 fKSicpnjz63zmeCBJhd2G5m2P5lgqwnt8u7u5PzDP+FbYNPJZgKSfUIXEYEvq4efP/
	 vQBthmQpleT4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZET2tJabdBSy; Tue, 30 Aug 2022 12:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 227C24157A;
	Tue, 30 Aug 2022 12:54:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 227C24157A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C75F1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 07:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05C6281402
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 07:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05C6281402
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eniZ1aMn_FWh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 07:16:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 314EE81396
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 314EE81396
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 07:16:15 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id l65so126107pfl.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 00:16:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=oV//up81vPxxhX9sqIPOvRWHdXCHQPB4s33YAP3fJbQ=;
 b=r5Bi7mucHy01SrPBm+54EoaUsLVip8IzyglQyp6xoaI2GOmLhqJZJO5NHnYnlhywt5
 NIsmn6l/a/aXCz4F2aZPO3T/SkDH26tDAnbE7FhPYZu9ZbyvuL/2K69FU9rYIGqusyj/
 5SaY9i4wF8P6e+zxJjM30mNFtHMfqNIUabvWcAVnkfHl2wHTd6m5Eze3UlLe4OijPuXQ
 kiEPDD9q0F4UpX9+QZecDysSgPVJW4fTwFjGBiG2f8b0OlwGqWxV9nTqbbKT8gUck3JO
 v85JzHS2ZW2GHtZu/L+xqPe+YjJzshhupKV+s2HpdgfVoSJ2VDvjVYsm3D3etm0xsQ6R
 XOyQ==
X-Gm-Message-State: ACgBeo22Lciir/Uw/C7e1KWKHfHwF0SxxRMRMuKeM2gcCTYLQ01krvnT
 NSGgj+84iKWs8QIHkG1MKgg=
X-Google-Smtp-Source: AA6agR5w1Kz8qTSPfL/3YelPPCFHbLYuEOQxreX4CK4hqNgRCjE21rEvtTBF1fT7RVEP1uEJforG5g==
X-Received: by 2002:a63:1223:0:b0:42c:11b:91d8 with SMTP id
 h35-20020a631223000000b0042c011b91d8mr8097812pgl.97.1661843774581; 
 Tue, 30 Aug 2022 00:16:14 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu.
 [2607:f720:1300:3033::1:4dd]) by smtp.googlemail.com with ESMTPSA id
 g2-20020a170902d1c200b0017300ec80b0sm8663910plb.308.2022.08.30.00.16.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Aug 2022 00:16:14 -0700 (PDT)
From: Li Zhong <floridsleeves@gmail.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Aug 2022 00:15:49 -0700
Message-Id: <20220830071549.2137413-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 30 Aug 2022 12:54:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=oV//up81vPxxhX9sqIPOvRWHdXCHQPB4s33YAP3fJbQ=;
 b=DkURfYdM0njl6lwV7AsIMzsiUsHpKV2320LS9AfWmwUgP9+ND+tfDxVtlnwnJSiAgW
 fomwVRFWfwI0SQYZzKP1caVs9PjfiAsqzWR6vI0FQVbUbCmCsJARxwvmncNFGGz94vM7
 zLEx5rprQyOt8moZhD/5pWHI4OZ+phtrU8Wmw5M9o++y9R6XqI+EEEsc0RWDn+HvLWfZ
 J2YuGrQ/RYCstVGzcCQwBfPQfPgTuEdPsUGZ3VCjpHv3pJ0f3tGm4JQfzl1Yu2NRL2w8
 ViWSr8SbqDXBTnlHcBng2PBm3b1WVAEpaPHz83pIjpwdPZT0RKl4lXT7Mlzg3RswO80y
 +gSg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DkURfYdM
Subject: [Intel-wired-lan] [PATCH v3] drivers/net/ethernet/e1000e: check
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

e1e_rphy() could return error value when reading PHY register, which
needs to be checked.

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
