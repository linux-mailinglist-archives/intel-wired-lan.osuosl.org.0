Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 601F885917B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 19:09:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B612E60B1B;
	Sat, 17 Feb 2024 18:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llR_aiGWLvKf; Sat, 17 Feb 2024 18:09:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2A346088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708193354;
	bh=cy2kGO2U2TPr1pnz3CApIMBYaE8Xib0u+l8VUL1Ic70=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y/KZMhfrOg5baclrZt1dHotY0KKcQEkt43xM4UHkcTFnlRQictIvLduWbKyTdLZJA
	 +RcwtWUNdOjrLOWqUaBW2w968xav/JS7zmpb/Afpk4r0p1FhkP1ohtlj3PVxkc5WHc
	 ObpNoDJRq3Tw7qxrnsSS4djlsW21lfuakkH2lQcNkqV8jzuKUxkX3F8EKw5zIpA0Sf
	 FQLaNGdu8lUBXgXH6JbtIH6lk8g8SP2tJXtNSAwHTQ94VYbfgFg6n9ZgwEahRQe7KO
	 EXNhqAETPldHyW0XXjNZvlcO8NiOJqeHQU4uK4x1L6eLPKmhJ/2GGJYEIRy06hH5Vj
	 kudB4muPrzoAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2A346088D;
	Sat, 17 Feb 2024 18:09:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 723C41BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 581AE40886
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ck70SEMJ0zl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 18:09:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 67CDB4087C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67CDB4087C
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67CDB4087C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:10 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbP7p-0084hf-S0; Sat, 17 Feb 2024 19:09:22 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sat, 17 Feb 2024 12:08:22 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-keee-u32-cleanup-v3-1-fcf6b62a0c7f@lunn.ch>
References: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
In-Reply-To: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3506; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=F0mfdZrj/FgaIdcQuHDCEsazFz0S4bAcsGtKqN8CFVA=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0PY5RMYKHr9BbcggVVLmatVyES123SsD69hBv
 mT1m7+50kWJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdD2OQAKCRDmvw3LpmlM
 hAqPEAC8IJdckcEDDXuFuDJGrTYlhBa/c4Cgv2emfdcMoFuP5SQN8alLVCTPZEaDgB/eu7NB7AJ
 Pys+EANlnPSGppi9BYLWuKplwDpEQ911h5NTNkbEM/v2402nS6eAXgba1oBLfxnAsfq2rVEmr7B
 ak3zcIYl3Dlir+T4WtT970bNcVEXvXSOBEm9UGZqcWKjxotntcK95R5O7i1RJuKVUEYh/2NRt9A
 GD6cNyxMJ2MLdirPZOc11EpRztvBXZyyuiEWqSk9Z4U9n+SeC9WQ1Jj3HmIvZiFlECGjR/30xZW
 fcuoflhxnEbTREPCGiURMviWXgz1jP/01c3z8PSP53joC1tWmd8gKS7JVrvLK6t2sBHuimMJ6/t
 ZAD266C8ksvRzRqVGLfQfCr3Zvp6TlingjrTkSzxM48755OxuH+J6PQR5i6aARvvNB2QDFLC24W
 1NivKOYu0wb6ksamsd1c8KmZxbfq7FJih/kOuQ5mTXDRLpVdCLI2y4Bk+a4gttAFcmHiO2vBDZ4
 Yec2n4IS86/y/t2OOZie+2O4kMLmrZiaKZcAe44y+01iQvVwpNB2NvD1S+abJFxJPg/WIZbKJlC
 MXutR61h27yCJs10sBsIrgsBhSQ8I2I77ETrYdezNPbWVkdEogJDOraweiiHAClONv5KEftl8ov
 aCSbHiHMD9/phdg==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=cy2kGO2U2TPr1pnz3CApIMBYaE8Xib0u+l8VUL1Ic70=; b=wt
 ELyE6uwjCmpuz/iQy5V1SDaGivOesNVgGfRW8PAYlXaKPhe+YIXeTnGRlRpevR603wcN3GjijVh1C
 26Wy362WaFzMqUApI9HEO/F4uYLHIv5yo+G9qclOI3oG+2fMcDWT2coQXhfzluqmOwFbA6KCp9WJC
 4uj8tJBhz3OHnY4=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=wtELyE6u
Subject: [Intel-wired-lan] [PATCH net-next v3 1/8] net: usb: r8152: Use
 linkmode helpers for EEE
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
Cc: netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make use of the existing linkmode helpers for converting PHY EEE
register values into links modes, now that ethtool_keee uses link
modes, rather than u32 values.

Rework determining if EEE is active to make is similar as to how
phylib decides, and make use of a phylib helper to validate if EEE is
valid in for the current link mode. This then requires that PHYLIB is
selected.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/usb/Kconfig |  1 +
 drivers/net/usb/r8152.c | 31 +++++++++++++++----------------
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
index 3fd7dccf0f9c..3c360d4f0635 100644
--- a/drivers/net/usb/Kconfig
+++ b/drivers/net/usb/Kconfig
@@ -99,6 +99,7 @@ config USB_RTL8150
 config USB_RTL8152
 	tristate "Realtek RTL8152/RTL8153 Based USB Ethernet Adapters"
 	select MII
+	select PHYLIB
 	select CRC32
 	select CRYPTO
 	select CRYPTO_HASH
diff --git a/drivers/net/usb/r8152.c b/drivers/net/usb/r8152.c
index 3d806b3ff425..fa5e9b7f3bb4 100644
--- a/drivers/net/usb/r8152.c
+++ b/drivers/net/usb/r8152.c
@@ -10,6 +10,7 @@
 #include <linux/etherdevice.h>
 #include <linux/mii.h>
 #include <linux/ethtool.h>
+#include <linux/phy.h>
 #include <linux/usb.h>
 #include <linux/crc32.h>
 #include <linux/if_vlan.h>
@@ -8924,23 +8925,22 @@ static void rtl8152_get_strings(struct net_device *dev, u32 stringset, u8 *data)
 
 static int r8152_get_eee(struct r8152 *tp, struct ethtool_keee *eee)
 {
-	u32 lp, adv, supported = 0;
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(common);
 	u16 val;
 
 	val = r8152_mmd_read(tp, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
-	supported = mmd_eee_cap_to_ethtool_sup_t(val);
+	mii_eee_cap1_mod_linkmode_t(eee->supported, val);
 
 	val = r8152_mmd_read(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
-	adv = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_cap1_mod_linkmode_t(eee->advertised, val);
 
 	val = r8152_mmd_read(tp, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
-	lp = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_cap1_mod_linkmode_t(eee->lp_advertised, val);
 
 	eee->eee_enabled = tp->eee_en;
-	eee->eee_active = !!(supported & adv & lp);
-	eee->supported_u32 = supported;
-	eee->advertised_u32 = tp->eee_adv;
-	eee->lp_advertised_u32 = lp;
+
+	linkmode_and(common, eee->advertised, eee->lp_advertised);
+	eee->eee_active = phy_check_valid(tp->speed, tp->duplex, common);
 
 	return 0;
 }
@@ -8959,23 +8959,22 @@ static int r8152_set_eee(struct r8152 *tp, struct ethtool_keee *eee)
 
 static int r8153_get_eee(struct r8152 *tp, struct ethtool_keee *eee)
 {
-	u32 lp, adv, supported = 0;
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(common);
 	u16 val;
 
 	val = ocp_reg_read(tp, OCP_EEE_ABLE);
-	supported = mmd_eee_cap_to_ethtool_sup_t(val);
+	mii_eee_cap1_mod_linkmode_t(eee->supported, val);
 
 	val = ocp_reg_read(tp, OCP_EEE_ADV);
-	adv = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_cap1_mod_linkmode_t(eee->advertised, val);
 
 	val = ocp_reg_read(tp, OCP_EEE_LPABLE);
-	lp = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_cap1_mod_linkmode_t(eee->lp_advertised, val);
 
 	eee->eee_enabled = tp->eee_en;
-	eee->eee_active = !!(supported & adv & lp);
-	eee->supported_u32 = supported;
-	eee->advertised_u32 = tp->eee_adv;
-	eee->lp_advertised_u32 = lp;
+
+	linkmode_and(common, eee->advertised, eee->lp_advertised);
+	eee->eee_active = phy_check_valid(tp->speed, tp->duplex, common);
 
 	return 0;
 }

-- 
2.43.0

