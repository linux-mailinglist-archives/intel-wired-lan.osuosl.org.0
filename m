Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83581C82107
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A00226103E;
	Mon, 24 Nov 2025 18:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id shPCR41Nb2DJ; Mon, 24 Nov 2025 18:19:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1A6A61086
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008364;
	bh=lpuv5uBb34S2sKQbL15mp3kM5Ctt2dd8AM4k33sXpoA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ct5JHjGWiLA/u+42DFoMuOUI82Mc4nTF3qBHbIxzf3+xHb1o+bgJ9bG/u5jSMTuJ0
	 OjjdSR8O0DGtjTJ+rZwyDkHVLNwALWugndq2Bs1RuOMtcXtWTD/VVQXiKb57XaB8Pw
	 bE4xAnaTGVMbFwZ0tbnqfQSZlzBF/U0uwSUWds3v6q3GmzGxulCYKWqWJgb9ct3Uty
	 BkIUr9iUucOMzAbdG/L+txEuTrpkZWYk5/kOp2EXjP+Cn37Ov9Th3ryDCnmtpf75ij
	 lNrYxsV6qAIoaAcCkLk/v4cBn+p/sRrOiNPS1orprddZ65BZTEXPHfes8kcsrDIfU0
	 OIUMriPxT2iGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1A6A61086;
	Mon, 24 Nov 2025 18:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D1B2834E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8E4F4040A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WxJgRbUSRDk8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.46;
 helo=mail-ot1-f46.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 13C9540401
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13C9540401
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13C9540401
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:19 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-7c6cc44ff62so3102794a34.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008359; x=1764613159;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=lpuv5uBb34S2sKQbL15mp3kM5Ctt2dd8AM4k33sXpoA=;
 b=YGMubewyhlCza9lvkyXG36He8Cj2DM0NMg5XnvCKNyroc5wDgibQsrt5KLW0lS211o
 4mFnOz6VHYAc3fcAAWTQRHjji/MsuSkRgpX36SjFVqyIS0ZzJnU2ehny8+KIUAF2Z4MG
 HnTK0k0ePtflDlk8KHkEEpCLTo4pxjtp8D4/ZjK+1pB44w4gIx8yt6Dd9AVBbbf+MPAU
 oYDf3eumtMygqUsHZhFDlck2hTEnfjpqoDoZ91fz8vbOsP9xUi7fDyv5Aw9zkoKd6Irh
 XqHdvljTmhS+6cBn1tErQP9Sofwu/C8t0CVkQfyNpSQDJxeriYSCHrQL4nLT28T150Ab
 l8Kg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUnVsc3rRAY2TN6glHZAVHsWBeGydA4KlVOzZe/iNaNSvo8QptWFZLKqImCGckUNW9hLh5fBCOSP0DY1YqsHAo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxvzJxO+onUctH8+t7zuEq2od/7MzqJIf3zIdhXs6UOZIBX5wei
 lqK4XZkq9WlwhlrbCNSkKEX8YEvfr4zGtxdYz7fT1PxR9O6iIvloRZbq
X-Gm-Gg: ASbGncsmi8VaVh7DoBXPCXQEy+bpuRyYg4b6ECSZ/+xupaPprfQV7LsVmjvmr7IwjOG
 cb/2OPfFyvJIRkrvL6Kozdhv8fJiB6K0MQ4Y1FldZnph6v+Mby8e3i0NwxZSrM17YfJjKaUTwe2
 LDIsskBojI/Ka7on6HYLzC4VLVP6UQz6o12HE+C42OY9TcHNrZbVFmh4z4kUgi/NR3IXCm0cJJc
 UGDosPZ72og/UF+NJIBrrJwIMNrhcQvpnrbB4oLG5z3tckxfd2iEugqBXpVSpoY73kTy00pGZLG
 +IKgcXCZDHYi89BlUvUMR0z7ziMxJEdAorNISrvAwCu+rHRQSPgHK3MkRSRyUhPQma02O6UbV02
 pn8Nl1Tr8m5uPpbHy9eNUlBbwSkKydQ2dt9bAWFzUGpq7RHLpA5tA8TxkVtfKIlv8UXw3XHybb7
 u6MENTso8XJ2p0zg==
X-Google-Smtp-Source: AGHT+IGLyTlOGAFidnFnYcwBbuXw23XYxP3MgOKH7xbrMv0wbPQmYh/J64HtXsWHCv78nNaDS0I0GA==
X-Received: by 2002:a05:6830:71a9:b0:7c7:6626:b595 with SMTP id
 46e09a7af769-7c798b57595mr7147761a34.3.1764008358888; 
 Mon, 24 Nov 2025 10:19:18 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:5d::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d32f601sm5513512a34.12.2025.11.24.10.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:18 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:11 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-7-89be18d2a744@debian.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1941; i=leitao@debian.org;
 h=from:subject:message-id; bh=v3FELT954aTfsjXFGCQjBmaqRQsN/PNh4kyuahjVzFw=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGdS6QcA3NViqOUrQv3y1/oRQL8hlQDzAOWm
 PfRac3kV4qJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnQAKCRA1o5Of/Hh3
 bYeGD/9Qc0SPn9JXbdTvMKmq46s4CjUHTti9396l4b4GyFTAlxrjl/N11ZXZRU9VRLExRJL8DF5
 SYO8qrjrZ8dFz1Vfxz/HoGCky2YLmVpT9KLWNCygZbkKzUuY6ndPFdTDpL9AtRFQrp1CXx2sYub
 2mqQWn3WTL5kVGOOVVs4diQZg/PNG4C/Ad8NQkkzI7abHxxzIqh9TBz0Y4HcoGPPiH2kVFkglq2
 hNNAN0Fj4NdHZ9iee7abuKVslhJcakSCH3HwtmbDfHYuVn7q+mJAirZPBOU56zYxDeXHoK7WksU
 jznJ6x0AOnxrq9q38SZutudQmmwTPVPR9GrSA6/eECKViLGDkAP3TMpk7WRX0930/ZmVW9xhu6U
 e7aQKYK9SQbFMj4f4mM4VTU13P4TqA0HW8geLupV5+XieysIoftsneh4znma+wuyEDPlpKtPC/X
 oK3i27eKmqpxpflNMbnrL+VdcZOuV2IJ8i0NbC/Hi8AsFWTP6zv3zW7hRP/zRO/SUoFzqA1R1iV
 2Rm5igOcZyIwp9zNiysOPLAkodu3nvKLCqTfGQI57oZ6HTc3Capln2RLn3NVSbiirYUiyashH+f
 zFafDBfvP35pPTkIs4r/fRkYLrmqV1DV1i1GUGJ+p0QM6O0LoHO2te/8LOO9ANJ4nD3O9nxr9MW
 2y1VmnoSHYF1rVA==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 7/8] ixgbevf: extract GRXRINGS
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

