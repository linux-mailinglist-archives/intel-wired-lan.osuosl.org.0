Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D43C28556FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:14:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7984C41836;
	Wed, 14 Feb 2024 23:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fsk3X8J-2vUh; Wed, 14 Feb 2024 23:14:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F98D41821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707952468;
	bh=VwM8omFAb/USTaaRR/I+p2JFbh5V/UtXkfhHiw9cl4I=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GW1y69Zt/L3PWuZkOGFUu5ugGRlGkrnbxQGwTU6mwZ7Ccg7Eepn5LgMHIxCJQInZN
	 7tYZ2fmb/UVbA/dTbRbkJQP4D1+lHH2GcSoXN9iAwpur8BzGHD33hcsoBC8MRifSFc
	 SHb4vx6zpF7RlmMTRrekkaNnu/BTuUg7KUaaFjawW0x/YSrxCSzVExv+ZRhr3CtHOS
	 BvDU84ApiK5BrUtKcjsRVaFWWxKUVLDyLmyhBlpJGbhXpta1yieCTM6A1iURIXv+mY
	 Mv8wxsVzMJpe6rr+xL4/XRnlAo5PpTqiUXwnOfXxUHgPAWRlg/uF9R0s+kjW9fAmgl
	 EJWSOvjOPAf9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F98D41821;
	Wed, 14 Feb 2024 23:14:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 213EE1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:14:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DCC341854
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AvJfdsHkmMck for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 23:14:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1329241851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1329241851
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1329241851
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:14:25 +0000 (UTC)
Received: from c-76-156-77-114.hsd1.mn.comcast.net ([76.156.77.114]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1raOSN-007pqx-IF; Thu, 15 Feb 2024 00:14:23 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Wed, 14 Feb 2024 17:13:25 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240214-keee-u32-cleanup-v2-8-4ac534b83d66@lunn.ch>
References: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
In-Reply-To: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1638; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=JUBlNHQ9KEInXfv/Ts82d6LWLEYOujFvKhAve8sOAdY=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlzUklKe7j/H8r+mEvYMjo5M5wQh5Gdw3q5KAH6
 L4whiI972WJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZc1JJQAKCRDmvw3LpmlM
 hM1xD/4lxlo53phEXX7A+P7upo21SlhwgWCNZMC87FoevHKp68+yAODJhTyHVO3yo4u23qG+2+3
 wNMfeQuHGf3WU3WLoZI19M3MXvOvpaRuORsWD2dQE7RfWyTc96Y/+6nFRTJkHuPAF28DdbPT7dg
 du/5w20lBhkS6IP0IcJP0HBrdVysT45EHnfEBd+94BWl3V8ObTcboi3LOswuQzqUGcl/ODndHmc
 LRWGNt10pa4KnGYVN01LcghbfJxPWqf5WQeIPtIQew1+kCwkA/wtWRuDzG7qwrdVUXi+08sZfnz
 9U1SrZQT+bgCaUC07pmkLMhvmIJMgppqgNHPNcRhuw6d8bkLLsVIquS0OAScGxlaIQBzzP56I7y
 3PaphJ2FTOeNzVVbzpudFftXfa2y/7dJhiTVwajYimZ3sYTkOyTdhEuS+nJwLHVCBkNUN3MVOyc
 A59iMSl8qVyEZm5x+7/zrqcN17CEIiXkQQcnc1F94IvhUpj86R2WdsVKoMl0KJq3GAAe3D9YhAK
 ClQLSYI5P5Ld4msk2tuDKc8SAddHjnGNYrsjDuw7njYUNbzVuQjyiuBSvfrKClGVtFSRuJ7+YFM
 ARcRM8h671nefDkpmgYUmaE1ltPGHsWXymsy8Zbs1lVSOP98rMbc3wVr3pVFgmBsrzFZKYguQV8
 qIgXgkNp3fpbajw==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=VwM8omFAb/USTaaRR/I+p2JFbh5V/UtXkfhHiw9cl4I=; b=KT
 KfCbqzHMlot+Qw4VoK7sWzsR5eTkkxy5tkQyuR836xwuSc8UenUGk1NAo3ocYCvRF3J2LZrUOm+zW
 o9JCPCeth3907YcUiVNDjKnk5Hgl3JtsqUG0RIBr0w2QeUiTwrqJjxgAX5wr68pBYWr4Sl8An2U9s
 jE8NNWhAtTtyv5U=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=KTKfCbqz
Subject: [Intel-wired-lan] [PATCH net-next v2 8/8] net: intel: igc: Use
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

