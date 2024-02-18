Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DDB8597F9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Feb 2024 18:07:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 547A4821B0;
	Sun, 18 Feb 2024 17:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ussRgIBkJ-O3; Sun, 18 Feb 2024 17:07:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C25C821A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708276067;
	bh=aFRnThzSsM1GB0U7YhBosyITi6QEbbLLMwyncP4eReU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LcmgCuyygWYSMIDj27iRx0RH9hluzeAkI3HPdQcPcns28HqIxiyQNalsdRsvNWmns
	 1tC1MtW0oYSf7kEzvai3nyoH1Ml4wq7JLqYvJKTdcnptM9Dvthexn1R12KrUFsS398
	 J/WF9Ht/2b4YxPn8vIOaB0PlCtehwAzRW6IKzhYNF7qaI1txWaZrfNIC8MRJXyz/rB
	 ofh/my1D6ZHps8mHhUTzk9YwId3SWqgwcq60uWbXmqYFKC7987hCgMy1PGwUv5X/GW
	 9jeCTnzAXeG6/CSA0Gy/nqiSuXgjXQM91tunONOecG8G7IBjKcZaB/83eESG31hoQJ
	 KvnpF2H4ng2rA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C25C821A8;
	Sun, 18 Feb 2024 17:07:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7BB1BF396
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37BB440169
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdraWNv5DLiF for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Feb 2024 17:07:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1977B400CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1977B400CF
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1977B400CF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:42 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbkdo-0088HX-UQ; Sun, 18 Feb 2024 18:07:49 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sun, 18 Feb 2024 11:07:02 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240218-keee-u32-cleanup-v4-5-71f13b7c3e60@lunn.ch>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
In-Reply-To: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2711; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=jBShEoehGOiH3XARbTLV/6y5l6NHG5lC8OunACxocoE=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0jlAMT9Oz3fl2t1Fj5aWbUkFiXJyPsfMFfaXt
 ddsjRvTWY+JAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdI5QAAKCRDmvw3LpmlM
 hMRDEADZfbTifRtNPmUUkeYI81wNBVFF22R1hpdrqUQ4yOsirNebG6Lxb6yo5/tpVcagYOPhRP2
 JtRRR8834buT3QWHcFEqG6HkAT2KomsSrgIpZxJISGMG4kIPqcWMdu2Ma1ulfETSLVe5C6FvSl7
 jSfOafcJ4Dlp1DLvvmdPT0PNufPbzxH3jVptyuASzExmxApjQoKy+2Bv1WKZ/EN2betp3aYKpuW
 LdlXNiTTq0qSjDkFok++I9CxOuwlol5Ni8z6JpVsn1JPRP4o6867nzUXkCeiqplebMkxsBV0vgi
 9aBv76el4AXAeF9q1Qclkb0HfYVHOJsYyMfAzcas/BPEGOOmEu88DlXfcP4LjAVPazeEN5zwDOs
 M0x5ofPejeGIefVduu6HeRUeLHuzm7MuUvImUSgAGTYcpZ+U4E28Ak5ifmUHEakS4luAhm0dw52
 a8U9fd11NvneMvaFCtLYibcfYRzVRbbfgfoVAoSMu0W7uUep8baUw+tEz1AF78ZGGlbhuZ4rmsm
 IGf+5oEF1EdeVH2bqDshxYCxfWAheN8Jha8DMFpEPHa5L4xvlfDbCMvvrByrJ1lRdN4ObAi4bEY
 dEI3refN+CI6JlrPPsIk9DV+pprTjJ4yncawVxxFNvZ/a8BBPNbT9WNZHBvZWZsUb+IpUIjJB8T
 4PhFdsczI68TF5w==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=aFRnThzSsM1GB0U7YhBosyITi6QEbbLLMwyncP4eReU=; b=Pk
 89Yc2vBB0hkAtYM0op8l3WOsI6xtG01wblt7FLT7nJm/Ax+xLUurl/bd7tL9CH/WATasT/02Tq6qG
 T5ttc0zFldzTa44E3jZ1yo6f81BOsJLijYDA4FjL5MgefEFcd5tYIsaKHYA2KBANwwjCkTFUSA4WT
 uCacSp4xR/wSuiw=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Pk89Yc2v
Subject: [Intel-wired-lan] [PATCH net-next v4 5/9] net: intel: i40e/igc:
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

