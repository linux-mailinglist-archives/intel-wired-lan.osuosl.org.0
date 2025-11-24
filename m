Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4EBC820EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCEEF610C8;
	Mon, 24 Nov 2025 18:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jfkLXVm5wT2D; Mon, 24 Nov 2025 18:19:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3579610C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008356;
	bh=3DxjUqbIL2xCh1eBwG3gbSSaebFppsbY/iTXLQi+/Eg=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9cgrZHK9tbI6fg66sCbemoqSEDPpeFGVQpELS4eI+fdaV91U8e4xA/y9z9mK97UM+
	 8F7ixFSReBVyV1DxM/Sqvki0TBo9rXYem+5Cu6cXe5upaSYU03yJK2IKMZyBoMY4Wv
	 g33brEAsAXAmbLfnibiIiQOnAheBBLA1q6sEXzehC7a7FgeoGCabP0Z5oyL3nuxX4O
	 MakfLySniS7dF1KA+V0RNHsDp7ATDQtxwEPCtGQplfXJ2OPMMXNK2e4mLSnc7KgxM6
	 fAR3NRqP+cY5W9tzuQ/KKjcPLjXj5qZ8U3TNXwzHIibpzs+JMpzKY9tq3UosawjiGY
	 IQaFmzmhY5HPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3579610C0;
	Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D8E9E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 100A9403CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oX-Zf6kJMTfp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.42;
 helo=mail-ot1-f42.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E07440241
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E07440241
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E07440241
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:14 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id
 46e09a7af769-7c7533dbd87so3304494a34.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008353; x=1764613153;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3DxjUqbIL2xCh1eBwG3gbSSaebFppsbY/iTXLQi+/Eg=;
 b=nG2vhdPgDjWDp0AYtwBAsbH9+oP2eyNWpeaMXbu4h/LrDDx4StxXl6R6BTfxn9An8m
 4Ib+QBV1eUHNLu0imioqQDkzyaQu2saMC6GeBqEVxBxUX7Z02AYMlU6kieaS2yAO6JJI
 8qw3HBXN30MYrhpUO7AMympWArHetlZSXynxUwSJUij8D3l9SPuBK4OQOf4h31U6eQYc
 0lMMHboNFzdFRrJLOYjEtqMtRh0GkOdiDzJeCf5SCbZKQPgq0lU+VXNc+MRAGsk8IrVs
 GPHgIc12RuphzKLY3W1j5S7HsgXxfJhdLtN18WZSaNejn/1eHUkGvp0XyO7SQYOfYDd4
 oNDw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1eYYcx/mlJtfcMOFQ5tL0SKGg8Tvffk5Wns40Z+QLu3g2c3QPkXshdCngOCUUzDj+1vWAPAGT3Uj1U0losH0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRguUhFqK6/WBVESbfxgE5qZzh/iLEvQmhLarIdRwbWJ0Hh3BI
 z2zL0Amp/SD65LbCb2P/hf2S2HA9eAJd+UTQMZ9DkN1CSxitYn/mtoTL
X-Gm-Gg: ASbGnctV2MMt7gfVh77lFCEe65EJyN3fEWn++AiuSx92bgs0rjQlypi74CaM0//DgaU
 AZ3C3TELNSMML6WPAwKXlbnJ81rbo7uklmi4jT5IaOCZyVEKciM/WP7kSPu+WCe0kPcIk//Xvw5
 naDsFVvwvjrev37nRndBz7jbZYma5onjQLEqkPPD2x4TyfUArqEchEREAZkIGOXfcfH7I4M7Je5
 f/4jWmLmcCduTg/OxXR3FP5davnaWRKIjsgpq94MNLZrFk3DIuYBmQgaHSFvA7Y5wCqD6bf7X1q
 QS1agdK9VF2q6oUGO0IZBWheRE6wyloIjDaZJcgArIlShrAXtzTtT5sGzZzEB9ydcRu8Mb5cotI
 MARQ95KBZtsa4Gkz4ibIZhfl42ThsYsE53sphXxzGr0v5hi6Ikht1FSB6YP/2nMsswS+S8aXGRn
 ASGgJlnVP50D5vGD5ig6dRSYFK
X-Google-Smtp-Source: AGHT+IECk7Ln47cP16adw4wOskOF4KXnTNhYGD1bWD/JnrhKyswVQFDUvxWKWTLtQ5ty3hPw0t7hxQ==
X-Received: by 2002:a05:6830:4126:b0:7c5:2dbf:4a83 with SMTP id
 46e09a7af769-7c798b57480mr6345439a34.2.1764008353184; 
 Mon, 24 Nov 2025 10:19:13 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:45::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d428edfsm5574340a34.31.2025.11.24.10.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:12 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:06 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-2-89be18d2a744@debian.org>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: michal.swiatkowski@linux.intel.com, michal.kubiak@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2120; i=leitao@debian.org;
 h=from:subject:message-id; bh=rL8W2AoR2IUzqeEYR3E8MpD4GwZ6IgyxiHP0qiXIJm4=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGdTid0yKtX8UI5tUw/o0nWkUiR+7FBRZut7
 CSlKqZWFZGJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnQAKCRA1o5Of/Hh3
 bV2BD/4hPBomVHir2/nBbEv+rFXtri6Sx/XGCuYkhH6dGgIJwIcvP0UxRIL6z9OtM2CqcpXyPRM
 7yo5U6TJ3Iv4//Mkb+6TBbOhmeL1VQzpCEEfCUzX2YadpN6j3DG2ceJ+iDLtZX1iqH38Fi1IR5Y
 qwC9xe67zhK1A6KNMqBWeFj1ADKYvQnxXH4IeoEZaAX6dcueHNARjVgOLaLvLWqoPGo0lmj7HPY
 Rpod5w9B0rTvDWCqK760QZ2wTfiNOlnTLPnUFZCyxe4hXK+kZTmxvGDeoS4zOvKgxkYo3NlTpFp
 lfUR0XceRdll/Px0u/54ZhxNivCQpgyqOatLIJ3IMdp2rbqDg5+qMpF8MJy/HLq8nYE8Wvq5+A7
 ymaVEKsgKzoJwFca8tqBhT3D3AU895ND0Ci7hhYfwrXofmIp51kf/HZP99a2jV73BHtlEyqZLA2
 6mchVlo/igJ0i4yUUtUveknvtJFd6IG4RjulW2ZGcSAqimfQDdY+XloMn/WA0Z/R62ftVnt+4jR
 PKIDeRF0Mbvba0393O2naNi9rne734ynBNmC8e14F6OxotFV0n0saSPWcxQknVFCNx1CLvXa8UK
 Ou2iCep06agy/i1redH0sAz27F4hz5vyV5IpuL3C3S9rapd3XDAjjbzqpPaI4gEUyLardH3g3hn
 mzq4+b93/0ECGWw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 2/8] iavf: extract GRXRINGS from
 .get_rxnfc
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

This simplifies the RX ring count retrieval and aligns iavf with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index a3f8ced23266..08ff90e73803 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1638,6 +1638,19 @@ static int iavf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 	return ret;
 }
 
+/**
+ * iavf_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Returns the number of RX rings.
+ **/
+static u32 iavf_get_rx_ring_count(struct net_device *netdev)
+{
+	struct iavf_adapter *adapter = netdev_priv(netdev);
+
+	return adapter->num_active_queues;
+}
+
 /**
  * iavf_get_rxnfc - command to get RX flow classification rules
  * @netdev: network interface device structure
@@ -1653,10 +1666,6 @@ static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = adapter->num_active_queues;
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 			break;
@@ -1866,6 +1875,7 @@ static const struct ethtool_ops iavf_ethtool_ops = {
 	.set_per_queue_coalesce = iavf_set_per_queue_coalesce,
 	.set_rxnfc		= iavf_set_rxnfc,
 	.get_rxnfc		= iavf_get_rxnfc,
+	.get_rx_ring_count	= iavf_get_rx_ring_count,
 	.get_rxfh_indir_size	= iavf_get_rxfh_indir_size,
 	.get_rxfh		= iavf_get_rxfh,
 	.set_rxfh		= iavf_set_rxfh,

-- 
2.47.3

