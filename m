Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73417C846EA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0869611A2;
	Tue, 25 Nov 2025 10:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ceCyVlqbwB-t; Tue, 25 Nov 2025 10:20:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33DB9611A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764066006;
	bh=PU9hyC9362jDv5FXyh0OOcazyjJD28LuH+4Fj57jjN0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MJpMi0u23+D8dHmnwZHF+9tWKVm52fxf42w27Naw5khz7Fqb3A2VYZtwGD4xHLOy3
	 F6k5pFStbe563SkAi7/Fv7sf97+DTNaPvESMkL0JbPc0U59f2QWYsiB6vfulZm3g2v
	 zr1baR9+84Cu1YFRhRsO41Mr8L9cb61MlGVJJ20RhOUeBqgnxXgrgXOFDO1B+uQ+UW
	 U5oFWBNBBXPYoGOgJt7iGmWv4num3o/qP2Ep540mAaPoBHXtgA9nDxFHWA2nRWjulL
	 SO1L0kNQnsowPP/x0eVAOdkQKsorfxfpGqREo1s4Sh3GaaDcm8PXonUdHsjrFDYj1V
	 mItGual7GY8cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33DB9611A0;
	Tue, 25 Nov 2025 10:20:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DD9C7E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C45E06112F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id etMLbdzJRs7o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:20:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.174;
 helo=mail-oi1-f174.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DCB9A61018
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCB9A61018
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCB9A61018
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id
 5614622812f47-450b2715b6cso2546940b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:20:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764066003; x=1764670803;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=PU9hyC9362jDv5FXyh0OOcazyjJD28LuH+4Fj57jjN0=;
 b=MLlg9fAa9zUn54wnH7dmrtLyWWYihUiQmZr9ht7T1rIp6LjbvVgfKX3SVFsEUUlisZ
 7V/uMkuV0jKgvmWUHkiiKJzINmMDa9bBVzYX33CLuUwy64LuERxVzVFqSxI6OmwGMlO3
 yJLzC28wN2MMozPjhZRapJlpreWdIid+t5QIeGsSowF6XR1bB5MzD0c98V2fZPMDghvd
 VjT64DUwxI04V0yb/pgrOAKZf+HWYJULXUHT+FOsClhXwt4oK8FdUOffr/myMlMWHQvZ
 B2h2O8kEstXpkpRwMgwIqGVsvsXBAy3vd531Z+nwJMg6pCFEtE4DNy7usn+/tkliZquF
 zFcg==
X-Gm-Message-State: AOJu0YwnRMNQOTGL4Bv746Ai7LX802uZNP+Fr5N1P3znD7e6R9vfBvht
 gw1ODhjc4/A3BvzFKftKu3oJ+iMCKo3zl5YwlI5b2yzUG+RduZ2gTIqU
X-Gm-Gg: ASbGncuoW2gWgiaDoCRxpf93G+lDcNgjQCXQYYTtKPK1zjCrNO9LnJNvAK0sT4xw3Dl
 AG2Nm3U42hSUcdkmffXqP6uGRNl2kwNXigkWljzzSkW0MRATOuY48fFwIa9HHQlVWSgBOURqwwn
 vbFycIOtsRiCHNHxriMRk1hWcNROYUMUV3VA5kBlbGI5QudAGMPX38vZxef8YrWICTSbL97hYQ6
 FTIZ3JBR085ALT+wr614P7dO8iRIR3IZ9zVeoqJ/2Ur9aZfRQ5EAMuyMFNo2BrV+0x+kF2sWVyi
 Hop62M55B5ZsGtmIcTDnjE1xbV8mmVmFe/zzbKqpsYsQqUXGn+ePpyPQYga8S5nJIWMjycgBRYk
 SXyF45C1+IVEpEjh0UygyAt3MZawFEoOQgYdYPFMnTXb7F7wyfhPZLxfyEqE4a7GhnwAAvX/6v6
 5vGyFHGP47/Knw
X-Google-Smtp-Source: AGHT+IHthk47k/0+mFB4/rU+D8HcVb5Zhji+7aaqntTqAXc55L/5R9rvQ4fRXAMNxSE4hloiSbB5jQ==
X-Received: by 2002:a05:6808:2227:b0:43f:5c61:448d with SMTP id
 5614622812f47-4514e60108emr894047b6e.9.1764066002689; 
 Tue, 25 Nov 2025 02:20:02 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:4::])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65782a38456sm4189883eaf.3.2025.11.25.02.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:20:02 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:50 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-7-f55cd022d28b@debian.org>
References: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
In-Reply-To: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2009; i=leitao@debian.org;
 h=from:subject:message-id; bh=OkmNiQ6YYv3uc0G7OY7lyiSTVze+U7ucr00ng0VO9JY=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIUkKS6lrxmxJ+rShJYVwYFd7lG986d7poy
 OhlH+xcpDKJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bQ9VD/sGdvKkjtI6Tc77NNcYNT6lJ/PYEYfiEz4K+4k+XKrA09ddP/hGGQMqNPBbXkKnsvhUgz7
 uzvBCrI24UvzI8yJ32aCGYndKQQ0yfnoG6357aIi++DDz3EiViD4S2j75kDFLBTHzJwN4sS0F9a
 BffhCmk/eUc8vv8DdGcSYjKldgJwYEkl5D++Xz0OC1HDdYTYuTCx/AvSRm1hkBKH2Z80JWL/M5d
 a9e6NbDKjJYiQZIS5opkVPN3Ank3bT8KYjz3iyHoBVObVyXhydZ4r8cOzgcj3vBTABKa7BPA358
 qinhzpWXB7BJZt5NIrRradIPWk8iRMhwpyLiH5Iyb/31ZMJ1cC1EHCiXNwsaslS4Dt+PDMf/sHU
 Dbfqhzi7XxOP3tQoBDSnYuc7kZ2nj1JHYQ1ds2j+YQ+dYL8TDvii+GB1htOd7ayeEA1rI1EBDup
 V7jyPhuaIGCfoya61WeVI5YJmtZieJF6zk6U8okXvNhutZlS19rrlQAyV5gozOGCWHeZCkH8X7n
 3+ErTSefDVJBSu2xTHUXQzpLsVOnmBHfknyZidg6wyQVM3ViyPOELt3KvYwXuPpFu+6s/At8kf+
 hduzrQB5WAXjFtsgzsKWlONlhCyezQWqVjMo/AiM2rMSRQhSwFkjAoZXQ6L4PM+yt1X/ixEprqk
 q0kyk+sG9bre7Hw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 7/8] ixgbevf: extract GRXRINGS
 from .get_rxnfc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
optimize RX ring queries") added specific support for GRXRINGS callback,
simplifying .get_rxnfc.

Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the new
.get_rx_ring_count().

This simplifies the RX ring count retrieval and aligns ixgbevf with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ethtool.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index bebad564188e..537a60d5276f 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -867,19 +867,11 @@ static int ixgbevf_set_coalesce(struct net_device *netdev,
 	return 0;
 }
 
-static int ixgbevf_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *info,
-			     u32 *rules __always_unused)
+static u32 ixgbevf_get_rx_ring_count(struct net_device *dev)
 {
 	struct ixgbevf_adapter *adapter = netdev_priv(dev);
 
-	switch (info->cmd) {
-	case ETHTOOL_GRXRINGS:
-		info->data = adapter->num_rx_queues;
-		return 0;
-	default:
-		hw_dbg(&adapter->hw, "Command parameters not supported\n");
-		return -EOPNOTSUPP;
-	}
+	return adapter->num_rx_queues;
 }
 
 static u32 ixgbevf_get_rxfh_indir_size(struct net_device *netdev)
@@ -987,7 +979,7 @@ static const struct ethtool_ops ixgbevf_ethtool_ops = {
 	.get_ethtool_stats	= ixgbevf_get_ethtool_stats,
 	.get_coalesce		= ixgbevf_get_coalesce,
 	.set_coalesce		= ixgbevf_set_coalesce,
-	.get_rxnfc		= ixgbevf_get_rxnfc,
+	.get_rx_ring_count	= ixgbevf_get_rx_ring_count,
 	.get_rxfh_indir_size	= ixgbevf_get_rxfh_indir_size,
 	.get_rxfh_key_size	= ixgbevf_get_rxfh_key_size,
 	.get_rxfh		= ixgbevf_get_rxfh,

-- 
2.47.3

