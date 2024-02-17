Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8468E85918A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 19:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E8CA60E8D;
	Sat, 17 Feb 2024 18:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yABTN8Hvdd7F; Sat, 17 Feb 2024 18:09:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66E42608C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708193376;
	bh=VwM8omFAb/USTaaRR/I+p2JFbh5V/UtXkfhHiw9cl4I=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1dv06d0EoBJonLTyVFgDk4nf7RjEKf+0LbE1VRlsCyRBH7uTm6YFd7gQ49BkTeb8A
	 3GwZjTzePjdJITgeEw086K2IR+MKpUxdkMi3bYxPY+fGOIfxtRKVaCqpj7ZOvscQOH
	 qZIp1ptHA/1NnEPYdNEITorrLLHwY7Gn3EQHoqQUMAR/LeQBhgj3ysbmubULghEeV2
	 z/rptLrA9FsSrKEI2oT+xnlTmrwthdGmm2gp0r2gEvDES7TR8EnhxnGUSi3jZlkFtF
	 SHV1KlBLPp4wfKgenf2lRqjQ7MyJGWRMyNvhq99qJssjciist9/DkA47oRzcCLkVT6
	 nTjMOQm0PZ69g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66E42608C3;
	Sat, 17 Feb 2024 18:09:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1171BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C91EC80DA3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzOT09tY_Eay for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 18:09:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 03DB280BE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03DB280BE1
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03DB280BE1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:33 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbP8D-0084hf-KD; Sat, 17 Feb 2024 19:09:45 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sat, 17 Feb 2024 12:08:29 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-keee-u32-cleanup-v3-8-fcf6b62a0c7f@lunn.ch>
References: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
In-Reply-To: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1638; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=JUBlNHQ9KEInXfv/Ts82d6LWLEYOujFvKhAve8sOAdY=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0PY8QswMZXFgclyrmiaG6Mz5z1C9NpM6VoMTr
 6lMSfGhKCqJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdD2PAAKCRDmvw3LpmlM
 hOLjEADIAYAUBqeIHdM2i1gNP2BQ6NHP0THsFP5kUpdF+K1kenJv0qXrOFtwSiazeWwckU8rDDa
 iU7BFilBn0lFc8ts4/NhsGYy6xlEsCk8k7aRc9OzEnsQMm/YzEutyHJ273avPL+41R8aMG9/e7+
 TazrzAWDTXwBi1VPIQlb38Oim45OPghmPCAIfbd287xo/AFoQjT5jeITBBO/WE3/Y6LolrMLxK5
 YXcWxlJaL7J1r1wKMp6U99icOY6tid1XdxZ7J3Ue5jiPmZxsDgSeIzT4VRaYbfJ+NpjuL+sdrqT
 Hh1FImogd5Ebu0vwkSB6fTt32/FR8+w2R4WFYkqNP8esEDlWabLkPFwBP00S5icCAz3KvdodWet
 G7PyjZPBC9CP+w2CIYs3FOL4G2JlTDRnqb0as5Oyx1Zn9FGQucl17WqV7nA5itVuOxFT8KS53d/
 ysLkTQL6B8GetPqlskK1uSTbFkYDFKknZPsvtD3Uq20RjywJ4ILmEIWcNLGh04XhZAjAlZQr8Yd
 63V0Gmq+nmEWZ3bE/vZrbf8382A9gzYMNjq4T5tlo2fApr1jj2T38h25dr1gfERwjaG9qkh6Cnl
 lvhAvXj9DyYwb0ZWcOSAqGLl5tyXkIZ8Y3Ip3U4Jp2CaMCalhsJ1nL7f4yNdOpBQgVfh1EfssjZ
 rghfWW6fjwdPtCQ==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=VwM8omFAb/USTaaRR/I+p2JFbh5V/UtXkfhHiw9cl4I=; b=h+
 uWf32bDXfJHQJlMFbKO6z40qckTpR053ZZDrThpza8HPRCmYD5+qyuRiRGDdmFlLv8TlW8ISUbj6l
 boeUJRLC17kMIxYbNl8R5RR3C0kThhxypeYpnT0A5tY+DOel5jDpbWI0BrBzZ/v2tEPqfPj3jiOSD
 M5wzXybhUhJhe5Q=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=h+uWf32b
Subject: [Intel-wired-lan] [PATCH net-next v3 8/8] net: intel: igc: Use
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

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ac92d10a3e97..1a64f1ca6ca8 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1630,8 +1630,8 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 	u32 eeer;
 
 	if (hw->dev_spec._base.eee_enable)
-		edata->advertised_u32 =
-			mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
+		mii_eee_cap1_mod_linkmode_t(edata->advertised,
+					    adapter->eee_advert);
 
 	*edata = adapter->eee;
 
@@ -1653,7 +1653,7 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 		edata->eee_enabled = false;
 		edata->eee_active = false;
 		edata->tx_lpi_enabled = false;
-		edata->advertised_u32 &= ~edata->advertised_u32;
+		linkmode_zero(edata->advertised);
 	}
 
 	return 0;
@@ -1695,7 +1695,8 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised_u32);
+	adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
+
 	if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
 		hw->dev_spec._base.eee_enable = edata->eee_enabled;
 		adapter->flags |= IGC_FLAG_EEE;

-- 
2.43.0

