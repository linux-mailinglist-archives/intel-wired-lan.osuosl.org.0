Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E70D859183
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 19:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8345460E77;
	Sat, 17 Feb 2024 18:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLXsyrI89FHH; Sat, 17 Feb 2024 18:09:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5DA160C0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708193367;
	bh=aFRnThzSsM1GB0U7YhBosyITi6QEbbLLMwyncP4eReU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2hMlpZ48DqAnmDSZZO1kbPUAGFmpnZZsbv18FvOkH4fcPTEi+oTGTeuR1DO2mPua3
	 7HlSM+eJ4FFcs2cFIbAqVqglwjKaH319RiSPC/xJOO0L0XMCNiMk4BnyGxoztZuXRo
	 3jNdqLhDD5TE873cQCWaVqukpzcRMxs+k+dcjYc3jlWtF5ET1li+kSBqbkWbrrbaht
	 LIUb1V61g87LI6TGcN1kiFgFOKXojDt4fzyogO3QxH+N8dzQOcszpQxWa5olfRyWWn
	 CV4LjNwdXHmEAeQGWH6eG7/dgCHxb7ErgdTYo4QN+I5yGsKShAEwqiGGdejowDwHMv
	 8KLkS4LvPzhuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5DA160C0E;
	Sat, 17 Feb 2024 18:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D7B81BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09AB3401D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJjXaeAH7BIy for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 18:09:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D463D40132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D463D40132
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D463D40132
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:23 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbP83-0084hf-Pd; Sat, 17 Feb 2024 19:09:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sat, 17 Feb 2024 12:08:26 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-keee-u32-cleanup-v3-5-fcf6b62a0c7f@lunn.ch>
References: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
In-Reply-To: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2711; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=jBShEoehGOiH3XARbTLV/6y5l6NHG5lC8OunACxocoE=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0PY7k7SN/4S228ROAzg7ZuMLyNMUmBTSrVMwB
 alKMwysKQqJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdD2OwAKCRDmvw3LpmlM
 hIAMD/9/if2OuCb4y445VS2/pfmVOV65uM3dKPOUIpYfYE4pqnEqNUHN09yJtOtOgAPCn+7nPsQ
 78NihovKh+pxO3ScOCoKfGkzcz6j3rRx9DX5yU2Mz7xGZh/AYfDDeKj2I9Pzl+UqGDIllEUscbn
 zExhnK3Gb0B+HGFIqF74KgN8AzoOenG8VLz7MXBe7v1/gzl/ZRXOQXA9lxokuotfV0UNl2nhrwC
 QW+hQcvwSY5qFu+u9kwqld+pfIGnFdn8TmflpUlD4MFXnaivCLZxVk2H1Bl0I9BwIL7v+IOKD+R
 HYPwoBO+NwFZZEq60YZGG66ciN5vlB6OEEv73u/AROr01D9OlwBJLlTSY/fctnk3Zaaer5Fcu4g
 s+a+p3Z2JEuA+1Jc5PqulsOLRBsfULx/EPPSnoMdpYnko7IgWMs1b/Qg61XPp3/ne7xYnXpKnUt
 HwLlKSoGp4/iTiejU5oZuf7MfKpj3ROHHr7lSBBMdLpH1dhGccG0El1naxVPpQsV9PnHp4Wf6tv
 30ZIMHfvXtMPIYFQDk6eKQtYZSEetgZk3CoLj4Ks0CeAfRnhgjuh5hfUUY8MJyKai8Zm3EfqU9D
 JHThBufm38cB/4OpIoUPWl6VeJUPr+4cP26J2SKGhc5rDfH7v7ysyCtrhA3BBGuqjWCYobqcyU6
 YWMovgekCvgh2/g==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=aFRnThzSsM1GB0U7YhBosyITi6QEbbLLMwyncP4eReU=; b=Ge
 WsZXvzoyXc6KytUoTSElPJ81kUgrOBxVQMMXwq/hJZ5AXQLyE7SCZLntg8sAeW6AXesLM1E45iXaB
 BTDz+Nx1ZdAznhc4az/tOjzyD+vIGkWsG5SZ3V51fgel3mWJO/yc2M3luzHDlujROrPQvuwWBnW+G
 W5Hy0PRH7sSpwzE=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=GeWsZXvz
Subject: [Intel-wired-lan] [PATCH net-next v3 5/8] net: intel: i40e/igc:
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Energy Efficient Ethernet should always be negotiated with the link
peer. Don't include SUPPORTED_Autoneg in the results of get_eee() for
supported, advertised or lp_advertised, since it is
assumed. Additionally, ethtool(1) ignores the set bit, and no other
driver sets this.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
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

