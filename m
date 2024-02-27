Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D55468685D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 02:30:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8969340844;
	Tue, 27 Feb 2024 01:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ip84EdS2M40; Tue, 27 Feb 2024 01:30:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D06374025A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708997411;
	bh=j7WYc5BzjQwZP7iBz9OnwnkxvlP37ESIju8ZWgAQlho=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qkhXt67deiPAjmtX3JsLDFp0LjvFlnNG3UWtZlYbOJNewLH+eAJYJH9FmEQbPxu1A
	 moMI3P50IMnpA0B5l5hO/ygGMoR3AWfQO2nsbakfWlTpvzKqjnsgUnn5wfXCnph7eL
	 OUBy0vHrVbfv5+WKKSXq02Hu2I75QXayTng/OMzxhDMDzM/zvmo027WdOsukD7uCi8
	 2kBIOeylmvKRafMlQj3KYK8LuqbtPQNRJJKSslXj1hBQ9yrwLKQ5/4A8qDD24xiPUK
	 iimxZWA4pD7lXyOEhgTIf/v+C6yZtj9OPLn6lOs2ljX8Y9EMZytvo8w4kFseCfac7v
	 G9KGm9miiTuuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D06374025A;
	Tue, 27 Feb 2024 01:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FD471BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3D2280F50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0lxekpMNA3K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 01:30:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B90080B59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B90080B59
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B90080B59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:30:05 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1remIS-008mef-Vz; Tue, 27 Feb 2024 02:30:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 26 Feb 2024 19:29:14 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-keee-u32-cleanup-v5-8-9e7323c41c38@lunn.ch>
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
In-Reply-To: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1684; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=GLbpN+b7fMBqkKjjmSHSV3wUD/JZDYXsfXRADsHf3lg=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl3Tr4FL68PUOtdpjKHIPxxcexRCI1y4UMd6Vlr
 rSihWxrcCaJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZd06+AAKCRDmvw3LpmlM
 hP6ZD/92rT0gKDX7pqllheXiCM8p+u2G+QJdNENffYdQYlQoBxfqyPxkjGUzFdxb4shj4lB6Th4
 TYWtB4GP6JqMZjF8WyVCsMoBtk2naQmvlx/ZiJAtlez33qAP5dxVzyliGkttt8yPzszdM3k43XS
 Jqteqs6QSIGLV5cCzbFQjKN/rmvh/nUo1TeZbtVny2GaxCTLrkRtf4+YmzjumeqTLON/QyUyMvi
 a9HX1XfxT2d2Ma+aGx5evt3W4lwrXXXOVxxmzNv7i/ZD6IolovhsyVYI9gUsWILgjVBW4D+DQrU
 XO2dAq9nCwWALBFDRqrZZH2hYJO8qy2YEvxtwivOlQdDu7Luz9xhnjLJWNgMdg9Teyz/6wcXdjp
 PYMjgiXcfl2lBroeyviIxzCQjqa/vpyyuXKPC3b8irAI7p0RI6zA2yw6gWa2izIsgHduvATA4es
 /27pvw5+jCgN+X3Il/ALjzDuE8YNhOJe/i+sfTh9WfSDv7tsVDJnqZxvp/3hBbNxpniAsApDA2D
 HvvaasZdaeAUI4z9H2t8q193+Cr2bmmzz8L0Z3gcilVooVu6Hqt84oH7Q0R8bPk/L3bt3iBCvLN
 tF4KDHOwcQaFmWEdDPXpDz+TmxkT8sYSABRIU7xysRK3ZHQE9KixbdmYgi+mQhkEY3AKpID4gyr
 KwHp+THDbG0XsOQ==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=j7WYc5BzjQwZP7iBz9OnwnkxvlP37ESIju8ZWgAQlho=; b=t4
 OdcNFLj+zXpkW3FNqm+geAzwHTeWjn1j9BtBIWQOHK/CRtNac9RVnxFVONYXrhIOaw7UfJ0OL/ehn
 tVq8cfUNWS5fucQ3kE9tvlk1g9RMyrGwQCqB0DxVuWkTYiCvF03gyji5bml0m2m01CrVg38M+TZCx
 vxas57mRZkVIIuI=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=t4OdcNFL
Subject: [Intel-wired-lan] [PATCH net-next v5 8/9] net: intel: igc: Use
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make use of the existing linkmode helpers for converting PHY EEE
register values into links modes, now that ethtool_keee uses link
modes, rather than u32 values.

Reviewed-by: Simon Horman <horms@kernel.org>
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

