Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3848556F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:14:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ECB341B13;
	Wed, 14 Feb 2024 23:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qCdk5HVZSsVP; Wed, 14 Feb 2024 23:14:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0750F41B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707952449;
	bh=49iqTWfS/7oGaeehgWp7vgxQU4YHET0VID5+MapWGoc=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PWMCWohLb/E7+5pG6IENsDNP3VZ/TVnOnM7BY/Y/6tplmOVNLKq+n8ovbRb8xgZd7
	 UtCgDQk28E2mavb8NGDMlPSbVVQ1OVNj6FqPgcwbBkl2hKNuX4d6jaiIr0KJMcaCkd
	 7K3ve7N2FyxFjwPaFo4YCN3YOXxG5jjC46F+mN8w/+gkqSGMFPesXLqmbp6mLQ041n
	 S32du11UyicYtQWEUfJGlnHHowAU0RVZaHwLQAI9I63fA+hkwIhc6bKkChR2vWfXMh
	 4eBEK3izDtXbVUI3sQzdKJnR58omcuOwHQey46YFvNimr4Mvy+cWBXi4WbQLOiT55A
	 kEhIQVE+Jnp5A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0750F41B26;
	Wed, 14 Feb 2024 23:14:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BA131BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:14:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 479F641860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:14:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtK2R9_y2vlJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 23:14:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1D9B040279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D9B040279
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D9B040279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:14:06 +0000 (UTC)
Received: from c-76-156-77-114.hsd1.mn.comcast.net ([76.156.77.114]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1raOSD-007pqx-KV; Thu, 15 Feb 2024 00:14:13 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Wed, 14 Feb 2024 17:13:22 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240214-keee-u32-cleanup-v2-5-4ac534b83d66@lunn.ch>
References: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
In-Reply-To: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2657; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=9+M44JGWsDWJYIbg9x3Eie/quc/6CSKv3btaL1mRVk8=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlzUkk+rR68hA2G2PyV777v/AUcs9UNwvnxswYZ
 A2Rl6AaeMqJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZc1JJAAKCRDmvw3LpmlM
 hKLQD/9T1pxSQXqLaiLLzt97eAe5eh4P4BlIJxZg5HlocwxaIeSSoaLGERNr/OWaT4TIKyGRSh/
 lZirct/22D1jAULjbl9oYWmQB9d8OOy9gXWKqp/80sCszIHwXJI0X6918X1bNsl2A390Wil7wSa
 2Ooi2TvFjVLveS7RDsggmbplfNeKdLQp7VmCWB38g9F4PmF2dh2EjSYX4d925lVwUt3kvXvI53G
 WlCNpJsZpt3VELBsJacfYDoYaFXhOAvXUwl/XnFVw9effCslhGDxGhKYKWZP88rBRDTN/P7iDyy
 dqQCRdgKqSbSDErdgHgrL87BCuf7zi7y4l0zb3g3L6Qk08AwkOh3Ct0cvm8DBFdisvtfFj09z37
 Peh4XLIPMRS9PbHiJUaus/LEim9eNkNZevLOEYG6RsRp0IoRrodKhGdFkNXh1RfC3oJJJPtxLXn
 rSz1K4nqFO9X2g9Yq7XZ/kEKTaajs7Ec3GQ/8Iaea/5V67HwgD2LA+bBCZfMhxOLJXiomLSrPJK
 qfqXSwBLPmKiU0iKISe9X5QNeHE9bi0u8LhwP7vHzR09cW7z/f+jH8pL0MeLxLRv3bdcmP6mzOp
 1UfSIvRKDjhnDyDCo+K4F925AKdrHB7XI0w57CqJZIGR1n8aGJp4OjbBgnlQ1Op0SQolefAhA1l
 TWVacQfReSV1M4A==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=49iqTWfS/7oGaeehgWp7vgxQU4YHET0VID5+MapWGoc=; b=nY
 ISlLWxsAC6LYs872WEaIwPQGL6ohm+NGpCk3V02m6hb0+iElzuP54/oahiBRVEUL7KKFXZuFtrc2M
 D8kJcxZzzgKydkEWgg79f2HdeA4AKHCNCGypqZe+IKjmZCOh6RqhKgAlsU50/sSMdL0dHazSyM4Sn
 PFgbk8YgbySfDD4=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=nYISlLWx
Subject: [Intel-wired-lan] [PATCH net-next v2 5/8] net: intel: i40e/igc:
 Remove setting Autoneg in EEE capabilities
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

Energy Efficient Ethernet should always be negotiated with the link
peer. Don't include SUPPORTED_Autoneg in the results of get_eee() for
supported, advertised or lp_advertised, since it is
assumed. Additionally, ethtool(1) ignores the set bit, and no other
driver sets this.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 7 +------
 drivers/net/ethernet/intel/igc/igc_ethtool.c   | 4 ----
 2 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 1b5473358e1a..42e7e6cdaa6d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5664,16 +5664,12 @@ static int i40e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	if (phy_cfg.eee_capability == 0)
 		return -EOPNOTSUPP;
 
-	edata->supported_u32 = SUPPORTED_Autoneg;
-	edata->lp_advertised_u32 = edata->supported_u32;
-
 	/* Get current configuration */
 	status = i40e_aq_get_phy_capabilities(hw, false, false, &phy_cfg, NULL);
 	if (status)
 		return -EAGAIN;
 
-	edata->advertised_u32 = phy_cfg.eee_capability ? SUPPORTED_Autoneg : 0U;
-	edata->eee_enabled = !!edata->advertised_u32;
+	edata->eee_enabled = !!phy_cfg.eee_capability;
 	edata->tx_lpi_enabled = pf->stats.tx_lpi_status;
 
 	edata->eee_active = pf->stats.tx_lpi_status && pf->stats.rx_lpi_status;
@@ -5691,7 +5687,6 @@ static int i40e_is_eee_param_supported(struct net_device *netdev,
 		u32 value;
 		const char *name;
 	} param[] = {
-		{edata->advertised_u32 & ~SUPPORTED_Autoneg, "advertise"},
 		{edata->tx_lpi_timer, "tx-timer"},
 		{edata->tx_lpi_enabled != pf->stats.tx_lpi_status, "tx-lpi"}
 	};
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 47c797dd2cd9..ac92d10a3e97 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1634,7 +1634,6 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 			mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
 
 	*edata = adapter->eee;
-	edata->supported_u32 = SUPPORTED_Autoneg;
 
 	eeer = rd32(IGC_EEER);
 
@@ -1647,9 +1646,6 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 
 	edata->eee_enabled = hw->dev_spec._base.eee_enable;
 
-	edata->advertised_u32 = SUPPORTED_Autoneg;
-	edata->lp_advertised_u32 = SUPPORTED_Autoneg;
-
 	/* Report correct negotiated EEE status for devices that
 	 * wrongly report EEE at half-duplex
 	 */

-- 
2.43.0

