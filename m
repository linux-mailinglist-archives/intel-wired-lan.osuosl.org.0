Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A898685C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 02:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDD30405E6;
	Tue, 27 Feb 2024 01:29:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yID-v41bkHUh; Tue, 27 Feb 2024 01:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 061D040846
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708997389;
	bh=VVdXr7I14QOocq6jRP2h+Z57I1rBZSPhsTVLK5lp4fE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1gUHQpqVqty/W0ADSTumXaSEUDcr/GrU4559PMnQhVZkrnBEJMseY9/xA4fXLM3ND
	 FmAryZeGnUjOH9GbpW62tL0pTTXwXovRvUbvFQf7Cy59Hs2AgoKsnEZXI3q75SFAfI
	 SYit6cSdqS6NnBvUaz0jQqw5S1HHPojmMTbduOaLZi1OiOVdKuYUEoTtkJsH/FOkZe
	 CLALs5sLiMIxyCH8t0EqU9ffoUeEQa4dYgLpMnOzVy/8g2wyyyQI2nM5VfQZtc8gfk
	 /alEHxJ0xKsXesIteDc6xlrVHfFOUIa0yIJC7jSHXsnHAaOqF34BbZ5iC2MAbfVrlk
	 xJMOMwuLD/gmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 061D040846;
	Tue, 27 Feb 2024 01:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC8501BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98C30401F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hNDXnq23D6VZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 01:29:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 86AEF40017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86AEF40017
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86AEF40017
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:44 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1remI8-008mef-9t; Tue, 27 Feb 2024 02:29:56 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 26 Feb 2024 19:29:08 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-keee-u32-cleanup-v5-2-9e7323c41c38@lunn.ch>
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
In-Reply-To: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2059; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=tbNUdk4209inAM5nR1Lk8nxebvhajOxhY6zmxiVGHvA=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl3Tr2eIaiGXypoUp9oCQXVEYmyqhvXAb29q12x
 J15CkgcQJ2JAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZd069gAKCRDmvw3LpmlM
 hIDzEACLNwNGGNT5das6TnT4sCDrrJeJUjKp7sLWGXNg7h6WkXOOJeemcYcchdHCme/e6ctzPC0
 jDH26i8zKkFBpaEoZd+1zBibqgK1TXbYnoXhNOC1brGF6uYaaa1aJW40VIBomWrSHz0oCoxCjax
 LV/uQrLsIUx3T11YYeYzayFZGRX/uNc/aF1p6yX4+08oE1l81ysqLFLxYLWfh4Az94QB4IDQHhA
 XUGjQLC+ZcJW55fjsCxY6nJ1vZ+3zDGwmWmp+tged7i2asppgPi9UtSWHRSL+rG96nkgPqfk6+w
 cQs4sLelJFU2CyI52bgWUzH4waPc5s6dBBbfLFJoC87XczZIny+cmd2ndM61lsppVKEsQ0yblyI
 Z+xh8WS2B5YFkRwuATTsYUHCULOQWQi2tZZy3qqMQEXQScNX07mqycuZAFYx6IgN/nr3UhBR21I
 Qmx1pQgoZb66qYGs1QNeNVFeYk1k7GjEoE4i4oKceJule31J8k0k9cWa9heYPlVs9ZAzXm9uBy9
 Z0segKuB/v29nWh4cIplBOQlxFUMxlxBV3zvuhAQWqYLhcESq33DBmxhl1+F9MGoYhUNym+erPU
 YyFNy4Szxf5sorjlNEq7EOgf9ltq0CZpgObBsrPyp1Gfu5LLBXARFMRNB+NgtSsTlpyfTjQhKVD
 CL1j+Ogk+WwmSkw==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=VVdXr7I14QOocq6jRP2h+Z57I1rBZSPhsTVLK5lp4fE=; b=l7
 HPmpAV3g/st4btel2J2b7OMOj+bFAVS5UfLoA6yFZvdsqDFYsA1H6sirNds6e6Olz3UxJsMiNiqg+
 SuSACMS24bmkuh3ajEAG3UqGxWIFsgR1uFu5J6tUdNHwApUTT+FmP+AWffQ+KBVV2nAUByVmzbfh4
 wkCv3jE/kzsUquI=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=l7HPmpAV
Subject: [Intel-wired-lan] [PATCH net-next v5 2/9] net: usb: ax88179_178a:
 Use linkmode helpers for EEE
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
 drivers/net/usb/ax88179_178a.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
index d6168eaa286f..88e084534853 100644
--- a/drivers/net/usb/ax88179_178a.c
+++ b/drivers/net/usb/ax88179_178a.c
@@ -676,21 +676,21 @@ ax88179_ethtool_get_eee(struct usbnet *dev, struct ethtool_keee *data)
 					    MDIO_MMD_PCS);
 	if (val < 0)
 		return val;
-	data->supported_u32 = mmd_eee_cap_to_ethtool_sup_t(val);
+	mii_eee_cap1_mod_linkmode_t(data->supported, val);
 
 	/* Get advertisement EEE */
 	val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_ADV,
 					    MDIO_MMD_AN);
 	if (val < 0)
 		return val;
-	data->advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_cap1_mod_linkmode_t(data->advertised, val);
 
 	/* Get LP advertisement EEE */
 	val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_LPABLE,
 					    MDIO_MMD_AN);
 	if (val < 0)
 		return val;
-	data->lp_advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_cap1_mod_linkmode_t(data->lp_advertised, val);
 
 	return 0;
 }
@@ -698,7 +698,7 @@ ax88179_ethtool_get_eee(struct usbnet *dev, struct ethtool_keee *data)
 static int
 ax88179_ethtool_set_eee(struct usbnet *dev, struct ethtool_keee *data)
 {
-	u16 tmp16 = ethtool_adv_to_mmd_eee_adv_t(data->advertised_u32);
+	u16 tmp16 = linkmode_to_mii_eee_cap1_t(data->advertised);
 
 	return ax88179_phy_write_mmd_indirect(dev, MDIO_AN_EEE_ADV,
 					      MDIO_MMD_AN, tmp16);
@@ -1663,7 +1663,7 @@ static int ax88179_reset(struct usbnet *dev)
 	ax88179_disable_eee(dev);
 
 	ax88179_ethtool_get_eee(dev, &eee_data);
-	eee_data.advertised_u32 = 0;
+	linkmode_zero(eee_data.advertised);
 	ax88179_ethtool_set_eee(dev, &eee_data);
 
 	/* Restart autoneg */

-- 
2.43.0

