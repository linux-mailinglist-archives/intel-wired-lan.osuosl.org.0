Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2CA8556F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:14:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4779D41A04;
	Wed, 14 Feb 2024 23:14:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hm2JdfPKRUMq; Wed, 14 Feb 2024 23:14:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E80941877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707952442;
	bh=sauFk9hjjr6pfRUCRoWd8WYck0QUyoBECM2fduhdkgE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kd8YMJz4cR0s3jLVzrewiZ58ySrnCDmgQbqJ8vf24vyZbcShOdVE+c7rvp9JwOUt5
	 u7Yw4Q00HHMOjGjWhfK9mmrZXrXUQwt9VNFw48ELbrHwRPzoxWY00F3r7HMKUgLDTG
	 R0EVh2kKKYisRxpSEkZ2XnRb+2cOIBd6AY0aCTFLuwY8ZJbQAHJjeOuN6Bl2wHUwws
	 iCQeSnSJcumbgb7reveOGrJhKKQYztSJqHVz4rbMt4dyMtwXbSStR0yJzsy57ABZT6
	 ci/+W5BvR4ZbGZAI/6VXxm+64OUf5bmJW61ImkkFWr57Jthcr108P5p7jLp3hCXjaz
	 doLolTLQcBKlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E80941877;
	Wed, 14 Feb 2024 23:14:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1729B1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F098B60781
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id heC7-kXIRu2A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 23:13:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 36BBC60765
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36BBC60765
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36BBC60765
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:57 +0000 (UTC)
Received: from c-76-156-77-114.hsd1.mn.comcast.net ([76.156.77.114]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1raOS3-007pqx-Ma; Thu, 15 Feb 2024 00:14:03 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Wed, 14 Feb 2024 17:13:19 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240214-keee-u32-cleanup-v2-2-4ac534b83d66@lunn.ch>
References: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
In-Reply-To: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2018; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=Cpjch1b1D9Jp2vWORWgwbDnErRScd5QZqvv0qT6yMzg=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlzUkjg41ZWDOkDbY4cl40Mp4plWC8lPr7urE1Y
 xR07ZdFiaeJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZc1JIwAKCRDmvw3LpmlM
 hN6FD/9iVloxbhIqi9a5XdLaZHPNJhtehuPbEtTJcduK9CjOBQJo3/YJ61KGd5GbWhYvcbJUM3p
 4ORL4n3zpsPJLCUpmyb5AaBpHGVpl2jVow+BXmYTq3ak0SAFy6sZEE9jH5csHzwd3VLbG4Aaxey
 YCYCdG/Lev2aCsILsqNXLSVlW4pe6bx8qGmhulchBIj6VfjJfbWJjC1DiIRtuUKvQ9SFLm27TvB
 sQTf6/jPPT4O2AlgHq+DtIie2a16S0KezI75fuNiBzY2g5/uefVcHq9H++6tAKo6D8ySCG/lP5f
 NVpTZA0/7h8yDd70FNNOxb89bjpEnWUlJrE/bS8ujD3LU83Ii02+e4z7jrwTCnhc6HeiByrWMVm
 soxaZ/7BEhvn0D3tQEwjRrQyWizBT6Q1P2M1pAGPq1rVPoqC206dBW7YdZ2Gx60O94+NACvUvYE
 DmJZ6yE07Xfnec7nQKx44bqjfO1Z5ciykD7+m8QlfJ3hGgaS6B5raS1q5t3qP8NnHU/4JMNvp72
 R2vojGJspg8mEglMV6ZY5zzHE39B02NfEPQTqBGz9k+dgO7TtfTVADuCnO8AzvUAoYuvC1fwht0
 2rVfbJluv7EynpimelGOXDCkEURXHWnmD9calR7xXpQmbKJs5ol+gtF0Th+v4CSxDiAxBVrl0pQ
 T0gvmhUd+Tq087w==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=sauFk9hjjr6pfRUCRoWd8WYck0QUyoBECM2fduhdkgE=; b=Ec
 mZlUX1UNq6CGMMG95w8sPC14i27KZlqTSZGKA57NsJlVIjQ9FwBDhHwxtaz0l7cr9Rq8uq8kM0WZ3
 92UOvFqNHTCZ4SfH3RNOO5NPv6bFmkB0tAfrilrUSTg7Va5DRXNIWvPu2njlgshDVWGx3ylPCQDkf
 BsYBfLxCM0LqDK8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=EcmZlUX1
Subject: [Intel-wired-lan] [PATCH net-next v2 2/8] net: usb: ax88179_178a:
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
 drivers/net/usb/ax88179_178a.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
index d6168eaa286f..d4bf9865d87b 100644
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
@@ -1663,7 +1663,6 @@ static int ax88179_reset(struct usbnet *dev)
 	ax88179_disable_eee(dev);
 
 	ax88179_ethtool_get_eee(dev, &eee_data);
-	eee_data.advertised_u32 = 0;
 	ax88179_ethtool_set_eee(dev, &eee_data);
 
 	/* Restart autoneg */

-- 
2.43.0

