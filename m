Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C37A58685D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 02:30:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A1F240583;
	Tue, 27 Feb 2024 01:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o6srRJDQ9RHZ; Tue, 27 Feb 2024 01:30:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83C7A4084B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708997414;
	bh=dlWosYEl5DyVPkmkUpp8E4kMoFve7mS4xHfsaci4cI8=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xIqDOpO/AlHtA+V7ywSy6t92FkViw551PttbPNcBK1i1Au0QbnBRHm+8VIeyPAQaM
	 F/7njEfrPpBVKzQn4A7+MUnf4B7A0AlHYCW+6pCc1Wx0my01NrMsZGPCqe2Izr0Xpa
	 84hvMkr/awhC7zMplCvKHcLcj4erSbNl9to7cQm9RZgiXMzlqkKKdfEYKGp0kMD0Nh
	 aW03xvZ6YcCcbfvYxOZDpkSrFrXpmS6P3rrDmnhm//o0P5RxoG2agbeYGo0dsc8Idh
	 kwtay28d6st7Vhc/iv/GCIlP9cx0hZjPOpwaq3fCHjF8qsz2oro2i3shD5t9gVukgr
	 aBIdStk4xIpbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83C7A4084B;
	Tue, 27 Feb 2024 01:30:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 910271BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AA7680F5C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b0g38KAdlBQh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 01:30:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 82DE480B6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82DE480B6E
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 82DE480B6E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:30:08 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1remIW-008mef-FC; Tue, 27 Feb 2024 02:30:20 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 26 Feb 2024 19:29:15 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-keee-u32-cleanup-v5-9-9e7323c41c38@lunn.ch>
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
In-Reply-To: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5173; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=5UVxVNfHiA0++FWexHxcJ07Y9z6b+yzUVmqRkNhmezY=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl3Tr4u9xn6AoQC66Hw8FvhwDiyA1JzuD/uIEMl
 T6hs8CDA0KJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZd06+AAKCRDmvw3LpmlM
 hFuDEADbMV10f0w4q9NW0+WK26n/0hTfAoyDi/htQNBEKponnUa4QypgvPzSfIT1oPDh19yO/nO
 leKwKU1jwbE9s780IEK5P8M33KFH5CeOBjqhprOHSOXS0iBagJxqSXiiOEzIShVfmy0bRLbZUvk
 +GljhQT0V4xg58w9dXtAHzSRQ/Nuv/vXGgd91W89Xh0FWPKzOoan6EPV4i25P9+igWdU9XmhjPF
 NDi6YblkxXOcgsjh4sj0bjNqVvgRirx9xy3k9HqnBgKzE0npnA8i8Q2Fyprt69rhBYj00nV7Rao
 fqsCnJ0BICOuscvsFl+rj0XjbdNZywuEkyzM6Dd1pp+axOi137qns5B2RWa4JKbhhrjgzDEnj96
 88VjENswrrWLfaAfSJ1qc6FXkG4YeDu7yebMkRVGuZs/jNtygFp83GQ8+4A0cK8GqnT5ota4nPI
 hptVwiJCfxHCnrwZJZ1qZNgdcOu0bekBbZ+ApKewohNnD7FFOvX01idFmWs7CoyjFqpPq0TPP2s
 Fy7FDTaKH1ZOKFYbKxCsKj4GyzYPsmNT9Cm+i5g5Hc13XEuZwnnu0vWPO/65msXs8o385O6NIW1
 i48imSV8YhsMv0dQixVsizfxAfyP356zTagy7NZwQsGtTsfc5Uv5Z7giMz7e2wtbe2AmLyUOt7y
 fvAeLKL9XucDPIA==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=dlWosYEl5DyVPkmkUpp8E4kMoFve7mS4xHfsaci4cI8=; b=xc
 cAaaeCdh07Px5HbStQedb4PTTG0L3o0cTpgvkNkCkWt5tqK9DH8WQ9AMR4J9UdXrUI7nVu/Kfg9pH
 IjVRy+CROR5iilXz5c4gbPqh7pts1daXGcIyGng0BdsK80Eup3DlCfWitSG8omYMMPRlUqpCHWoZF
 shFPzEhNSdgl64I=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=xccAaaeC
Subject: [Intel-wired-lan] [PATCH net-next v5 9/9] net: ethtool: eee: Remove
 legacy _u32 from keee
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

All MAC drivers have been converted to use the link mode members of
keee. So remove the _u32 values, and the code in the ethtool core to
convert the legacy _u32 values to link modes.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 include/linux/ethtool.h |  3 ---
 net/ethtool/eee.c       | 31 ++++---------------------------
 net/ethtool/ioctl.c     | 29 ++++++++++-------------------
 3 files changed, 14 insertions(+), 49 deletions(-)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index b90c33607594..9901e563f706 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -226,9 +226,6 @@ struct ethtool_keee {
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(advertised);
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertised);
-	u32	supported_u32;
-	u32	advertised_u32;
-	u32	lp_advertised_u32;
 	u32	tx_lpi_timer;
 	bool	tx_lpi_enabled;
 	bool	eee_active;
diff --git a/net/ethtool/eee.c b/net/ethtool/eee.c
index db6faa18fe41..bf398973eb8a 100644
--- a/net/ethtool/eee.c
+++ b/net/ethtool/eee.c
@@ -4,9 +4,6 @@
 #include "common.h"
 #include "bitset.h"
 
-#define EEE_MODES_COUNT \
-	(sizeof_field(struct ethtool_keee, supported_u32) * BITS_PER_BYTE)
-
 struct eee_req_info {
 	struct ethnl_req_info		base;
 };
@@ -41,15 +38,6 @@ static int eee_prepare_data(const struct ethnl_req_info *req_base,
 	ret = dev->ethtool_ops->get_eee(dev, eee);
 	ethnl_ops_complete(dev);
 
-	if (!ret && !ethtool_eee_use_linkmodes(eee)) {
-		ethtool_convert_legacy_u32_to_link_mode(eee->supported,
-							eee->supported_u32);
-		ethtool_convert_legacy_u32_to_link_mode(eee->advertised,
-							eee->advertised_u32);
-		ethtool_convert_legacy_u32_to_link_mode(eee->lp_advertised,
-							eee->lp_advertised_u32);
-	}
-
 	return ret;
 }
 
@@ -62,11 +50,6 @@ static int eee_reply_size(const struct ethnl_req_info *req_base,
 	int len = 0;
 	int ret;
 
-	BUILD_BUG_ON(sizeof(eee->advertised_u32) * BITS_PER_BYTE !=
-		     EEE_MODES_COUNT);
-	BUILD_BUG_ON(sizeof(eee->lp_advertised_u32) * BITS_PER_BYTE !=
-		     EEE_MODES_COUNT);
-
 	/* MODES_OURS */
 	ret = ethnl_bitset_size(eee->advertised, eee->supported,
 				__ETHTOOL_LINK_MODE_MASK_NBITS,
@@ -154,16 +137,10 @@ ethnl_set_eee(struct ethnl_req_info *req_info, struct genl_info *info)
 	if (ret < 0)
 		return ret;
 
-	if (ethtool_eee_use_linkmodes(&eee)) {
-		ret = ethnl_update_bitset(eee.advertised,
-					  __ETHTOOL_LINK_MODE_MASK_NBITS,
-					  tb[ETHTOOL_A_EEE_MODES_OURS],
-					  link_mode_names, info->extack, &mod);
-	} else {
-		ret = ethnl_update_bitset32(&eee.advertised_u32, EEE_MODES_COUNT,
-					    tb[ETHTOOL_A_EEE_MODES_OURS],
-					    link_mode_names, info->extack, &mod);
-	}
+	ret = ethnl_update_bitset(eee.advertised,
+				  __ETHTOOL_LINK_MODE_MASK_NBITS,
+				  tb[ETHTOOL_A_EEE_MODES_OURS],
+				  link_mode_names, info->extack, &mod);
 	if (ret < 0)
 		return ret;
 	ethnl_update_bool(&eee.eee_enabled, tb[ETHTOOL_A_EEE_ENABLED], &mod);
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index b419969c0dcb..317308bdbda9 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1514,9 +1514,6 @@ static void eee_to_keee(struct ethtool_keee *keee,
 {
 	memset(keee, 0, sizeof(*keee));
 
-	keee->supported_u32 = eee->supported;
-	keee->advertised_u32 = eee->advertised;
-	keee->lp_advertised_u32 = eee->lp_advertised;
 	keee->eee_active = eee->eee_active;
 	keee->eee_enabled = eee->eee_enabled;
 	keee->tx_lpi_enabled = eee->tx_lpi_enabled;
@@ -1533,6 +1530,8 @@ static void eee_to_keee(struct ethtool_keee *keee,
 static void keee_to_eee(struct ethtool_eee *eee,
 			const struct ethtool_keee *keee)
 {
+	bool overflow;
+
 	memset(eee, 0, sizeof(*eee));
 
 	eee->eee_active = keee->eee_active;
@@ -1540,22 +1539,14 @@ static void keee_to_eee(struct ethtool_eee *eee,
 	eee->tx_lpi_enabled = keee->tx_lpi_enabled;
 	eee->tx_lpi_timer = keee->tx_lpi_timer;
 
-	if (ethtool_eee_use_linkmodes(keee)) {
-		bool overflow;
-
-		overflow = !ethtool_convert_link_mode_to_legacy_u32(&eee->supported,
-								    keee->supported);
-		ethtool_convert_link_mode_to_legacy_u32(&eee->advertised,
-							keee->advertised);
-		ethtool_convert_link_mode_to_legacy_u32(&eee->lp_advertised,
-							keee->lp_advertised);
-		if (overflow)
-			pr_warn("Ethtool ioctl interface doesn't support passing EEE linkmodes beyond bit 32\n");
-	} else {
-		eee->supported = keee->supported_u32;
-		eee->advertised = keee->advertised_u32;
-		eee->lp_advertised = keee->lp_advertised_u32;
-	}
+	overflow = !ethtool_convert_link_mode_to_legacy_u32(&eee->supported,
+							    keee->supported);
+	ethtool_convert_link_mode_to_legacy_u32(&eee->advertised,
+						keee->advertised);
+	ethtool_convert_link_mode_to_legacy_u32(&eee->lp_advertised,
+						keee->lp_advertised);
+	if (overflow)
+		pr_warn("Ethtool ioctl interface doesn't support passing EEE linkmodes beyond bit 32\n");
 }
 
 static int ethtool_get_eee(struct net_device *dev, char __user *useraddr)

-- 
2.43.0

