Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FB359E3F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 14:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D8D0405B6;
	Tue, 23 Aug 2022 12:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D8D0405B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661258976;
	bh=IgOYQwz2oQR4C0r/eaGUbjFYlaXSGYdm2gdYT3/RbJs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=S17J0gwn4Hw3i1cdBz4F+ud8hjYaE6VMQofXt1Ryw0M5d1h5E/NeS8eVa1Yf29ay5
	 O8w6Wyj/p0HjgVCZyIkvnO5kzHRxq8lRrMnfyYMDHhv0iWmjDVYwZhxtUM+8CXvqcI
	 VJIlXsiIUksmIdgQPH/82xxOw07bDs7QhzJlFRLg5a/S+4WMPOu+knzqM4VwjKhYYz
	 C8Ij2Uy5FKQPK83pROmj4YLyEsqFkGe9K3toF1n96HIEuNrTJ/HGAGGy7TKC/cbEB3
	 SbjgwkdlOvwtwWTrhQiBZ6q73DKGaPd0js/5ZMnf3k8BfeVAQzqXvgAOjk4p+ZorLB
	 AuXZh40JCpJMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbcUiuEwyzNo; Tue, 23 Aug 2022 12:49:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D09F405A3;
	Tue, 23 Aug 2022 12:49:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D09F405A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E7BD1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 06:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3564681496
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 06:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3564681496
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHgdlbrNyJEM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 06:02:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A5A08148A
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A5A08148A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 06:02:09 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 r15-20020a17090a1bcf00b001fabf42a11cso13573865pjr.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 23:02:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=NvGvQzFB0ozvqye6TlBt72hA2XeFJRaYoqL5R2NvJN4=;
 b=U3p5ciD3hptbi4y/oxmX3AFVHwTmQJehi769EG0A+Xii7C7UMIDK9xEaNnfykvYHjP
 NEcPS193BCyvDEuQUi3MFezq1+Ad/gTpBawHvIdxAv70e7ecZjEIE74FqKk4zw/CJRDV
 effyEbLKReTzn4OULX9NnfAc+BorONvn3rLo2faxVqQWJJCKC6AW/CWLCOtP7K/naySb
 n98f64PzQklodjhGe6IAz77CCXrqnTnACXUDG5jNNuu3GIhAaccZYxaMwxt4/XhHWJNt
 6FxAv4UR0iQtCysHfv2L9zHgVviS8tvqcu+9HFUwpbTx482mBxrdLo1YsqLPv4PiIXtp
 JewQ==
X-Gm-Message-State: ACgBeo0XqNIb/jEZCdpGXryQh+4U2ahOm+gWgfNkQ+8kaNFIsTsA4Gux
 zw0rXghif8vSmLX8hfFDXTeIiCD7Y3Li7A==
X-Google-Smtp-Source: AA6agR4rPYAjCopNScCV/Bn5ZXnNtyPRlX60jgns2XshzEnrty3ZT9jOXB1FU02tMb0QA815eeaUiA==
X-Received: by 2002:a17:902:9341:b0:172:775e:9573 with SMTP id
 g1-20020a170902934100b00172775e9573mr23469570plp.128.1661234528811; 
 Mon, 22 Aug 2022 23:02:08 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu.
 [2607:f720:1300:3033::1:4dd]) by smtp.googlemail.com with ESMTPSA id
 oc9-20020a17090b1c0900b001f56a5e5d2fsm736059pjb.2.2022.08.22.23.02.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Aug 2022 23:02:08 -0700 (PDT)
From: lily <floridsleeves@gmail.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 22 Aug 2022 23:02:00 -0700
Message-Id: <20220823060200.1452663-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Aug 2022 12:49:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=NvGvQzFB0ozvqye6TlBt72hA2XeFJRaYoqL5R2NvJN4=;
 b=aa/FNbu286jkKwQUjQcjg9brlMPdJPy3a0j7sSMc5yBNcqKaULuazPcfi1utZeBd7y
 8W3LVRBQkO2Fwk+HU3FuwZv4qb0jPDbtNWo5EGAK+Z2x8cKmtM2fpc9X8DJ+/3f9ySi6
 f99kaKrXeG0WyfwP+v6LVEgx6VT9bUEmSMTzajrwTolXODCLgBqntbcKr0EvmFUJ0B7q
 CnEc5erBc6sMpOWBLG4B10s2bhc7PPUkEM/lqzVejQjEx4PWPv23WGbeMsi9D3qgr90Q
 uBk80UHIz+M8pzlUO/q5FlbH8eoNEw+Od3XWENwexrBdUa1Fp4aXNS5YIqPErWqOjN6a
 fThg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=aa/FNbu2
Subject: [Intel-wired-lan] [PATCH v1] drivers/net/ethernet: check return
 value of e1e_rphy()
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
Cc: edumazet@google.com, lily <floridsleeves@gmail.com>, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1e_rphy() could return error value, which need to be checked.

Signed-off-by: Li Zhong <floridsleeves@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/phy.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index fd07c3679bb1..15ac302fdee0 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -2697,9 +2697,12 @@ static s32 e1000_access_phy_wakeup_reg_bm(struct e1000_hw *hw, u32 offset,
 void e1000_power_up_phy_copper(struct e1000_hw *hw)
 {
 	u16 mii_reg = 0;
+	int ret;
 
 	/* The PHY will retain its settings across a power down/up cycle */
-	e1e_rphy(hw, MII_BMCR, &mii_reg);
+	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
+	if (ret)
+		return ret;
 	mii_reg &= ~BMCR_PDOWN;
 	e1e_wphy(hw, MII_BMCR, mii_reg);
 }
@@ -2715,9 +2718,12 @@ void e1000_power_up_phy_copper(struct e1000_hw *hw)
 void e1000_power_down_phy_copper(struct e1000_hw *hw)
 {
 	u16 mii_reg = 0;
+	int ret;
 
 	/* The PHY will retain its settings across a power down/up cycle */
-	e1e_rphy(hw, MII_BMCR, &mii_reg);
+	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
+	if (ret)
+		return ret;
 	mii_reg |= BMCR_PDOWN;
 	e1e_wphy(hw, MII_BMCR, mii_reg);
 	usleep_range(1000, 2000);
@@ -3037,7 +3043,9 @@ s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
 		return 0;
 
 	/* Do not apply workaround if in PHY loopback bit 14 set */
-	e1e_rphy(hw, MII_BMCR, &data);
+	ret_val = e1e_rphy(hw, MII_BMCR, &data);
+	if (ret_val)
+		return ret_val;
 	if (data & BMCR_LOOPBACK)
 		return 0;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
