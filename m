Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2118597FD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Feb 2024 18:07:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2077282242;
	Sun, 18 Feb 2024 17:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0Vh_X0o_YR4; Sun, 18 Feb 2024 17:07:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 699EE82245
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708276076;
	bh=VwM8omFAb/USTaaRR/I+p2JFbh5V/UtXkfhHiw9cl4I=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vtk0z5GRpL2hyUnP2tHiIEIv323x1z1kpkWd/SsqLwIPn+vRrS2PxoCLMPg/yZuR6
	 9ihkz+KmmaY8xVANExq4GAf8/kO9bToiPQeJwl4/m74LFFuvUqwcCNRp3FaivRj5kl
	 5oHmy4CHzXJPc9C+zVhHfRJi1WE+1EzKVP1USZQwRBI6hNu0y+ZpinmF68TJw3oXCu
	 vpHpQN0VXEIgzTpMy/nrE8tDu/pAvFXSxiRSC9EI4/VLeixMUbJT6lmVj/6GVBCDqn
	 QKeYwt+w8wHFg9cVao2YhRK4UaPZuQVbADV8DrfH17yi9f2k1wxmXWJKOx0t+m2CJs
	 z5ysiH1X5BKEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 699EE82245;
	Sun, 18 Feb 2024 17:07:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89A5A1BF396
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 775394071C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1g8RekMiDgLu for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Feb 2024 17:07:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C3A8840718
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3A8840718
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3A8840718
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:52 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbkdy-0088HX-Oy; Sun, 18 Feb 2024 18:07:58 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sun, 18 Feb 2024 11:07:05 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240218-keee-u32-cleanup-v4-8-71f13b7c3e60@lunn.ch>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
In-Reply-To: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1638; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=JUBlNHQ9KEInXfv/Ts82d6LWLEYOujFvKhAve8sOAdY=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0jlBR1jCpUGgmoGhhgBBTwtCSWKQdM++eFeLI
 7FZYtP8Uc+JAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdI5QQAKCRDmvw3LpmlM
 hAd+EAC/o1GrNt9qRvp7CrUNHCoEMKRI7L8QKnx0ZtDef3lGW8PNHh0YcY4ovJUxUT929XeeAEf
 jOnF4K05TU72oBh3svHIwfED0592QpL8g5cNHR7FoPQL6+KaczbLzb+y3J4+A31+oBaw5pX/TGn
 h9c+oWpkQy4Ut6f4fVpo7gwaFmfH7FVUlnRnKYVi+rEEyw9qvZ/gNZteE5sRQlKDuw6B3SUjBfW
 JtLRWd6b06gsSwi8lZazLessKtZ7nzyZiS0X1g2jcj9i/QP9IJ+tudfMEYHFf63p1PRLSdnhA1k
 tQfB5QGhEB0XUFLPd0YB+uqtd6yUycjIBzahOVGuIUx2nIrnHjGcGkwuJ/q3CZHPgQqwAF0sHrf
 KgENrYLWdbB2Fmh52QEn2+Jy0xBaAqgTELz4rOzWZxViNCYYxtzsBV8bqtaRu29D8Jc4ceUBG0m
 XTxIfyI1BxROvoL5OkF6j4qhQzKJ8tUxXVUHT6DBfIoXVEESJQCEN8lUwLHEHkWlYM8NHyjAJfq
 LeXpl2TIewsM3LpifPVU329mmPKaWVAIxAnpq+Pnt0RZry7B+DS5W9nXMFmb/rNO3wteGFDoCof
 YMj/0GxrECMSjqKlEEaEdlLa56NPgh19J1Oe6S1FR8IEG8iI/2fHrUIaLVi3qCeQ+yj7nuhMt6D
 cUPj0P35gT2jjKA==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=VwM8omFAb/USTaaRR/I+p2JFbh5V/UtXkfhHiw9cl4I=; b=Yc
 9l8/tkSqwjaElYJZfu/XA3cfDIXOFmDg/swedEeAVmxB2mUAH5wfpsuwODQ3aF04gGwkswjntUjDc
 7vK/K1lj4LIZMrJ2TxjfjX9P2fTYh/raj0jb83qv0C2E7akG3Gao8EjF/hZ1ad9yjQWIWACPfZB9j
 DsTqtqQDeTrRqO4=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Yc9l8/tk
Subject: [Intel-wired-lan] [PATCH net-next v4 8/9] net: intel: igc: Use
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

