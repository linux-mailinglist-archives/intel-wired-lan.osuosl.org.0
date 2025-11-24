Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D07C82101
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 119D3610C0;
	Mon, 24 Nov 2025 18:19:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GwfPxIf_v-zd; Mon, 24 Nov 2025 18:19:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D8CB610CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008363;
	bh=XdOK/+JSUKsUAuFyuE3vjj9D8Qk2MEeTKmCgASJ6/Kc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iqSMZa9l5CJrtZdggGQDIJ17DDGHMaHoMVxzUX2IPnrLCU074sg/6MK/B4D2ymy9/
	 hB+zNssjARVNGr5/PpcbFLEo+KyV/nig4qRd++M/u0acXOH5bPJ0ae/pgTRWHLS0q/
	 YXBWCO6Um+WCREw4o6T/k1oEeIMn25znS+lW7lafezRk+bmlRR4TcMV7E7CzfSp9Gd
	 tDmkKA1UwtbVzNviEOFQhHPX920/d31x+IZ/Cc4oqFoV/JT/g66WJDYVipjmWOm4qO
	 SUtnto9GmvUD9q2HsD0LpxEi4ImXB4C9+P4EP1gIvwx+Q3jYBHn8Q5GEflNEUMBMot
	 gfE5BClQj7lqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D8CB610CA;
	Mon, 24 Nov 2025 18:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ED13AE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D413083521
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wT69PGpOHaiR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.41;
 helo=mail-oa1-f41.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 061C98250B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 061C98250B
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com
 [209.85.160.41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 061C98250B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:18 +0000 (UTC)
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-3ec3cdcda4eso3039539fac.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008358; x=1764613158;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=XdOK/+JSUKsUAuFyuE3vjj9D8Qk2MEeTKmCgASJ6/Kc=;
 b=RBcJAmWu5XgbIGQ/3LpJb4u32I7T1BYYG7cAEHOiZfWVJBiH1sN20iiPyh7SwEOG4Y
 7irOdlQ8rPSd2ZrIytuyRaVIRkrz51jCjnsJadU0oiaAqu+IOp8P/fNiP1oIsvaA6/mt
 18rvwcTjNsHgttx0cfRLGK9/kd3SQIJtLiWKl97chy8udbonjrPLLADMBc4h0VhwOwCF
 btei5F5Vd2sODR5JkQmwz8z/k+oYox4oyGXQoaU17tOxlMvEI1kRUeMXeR7iXtRZsioE
 6lyIZkMtY6a5nTczVw81seSO+7iU9Ba5FluHWd7dWv8W+C9N/zwSrKio9F1kr9J1JpQg
 NFlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4d9X6cHSzw3p+ExAigD/BesFCgLJsM8mt6FQylMiqeawjQkuQT2BjF6UXbRR9cTYkMeBWAUxhi7gdvwcmy7c=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy9s83kQJcrCR8txrp21vNBkZVEp2NZrqTbLdszVJohpNx1gQ0i
 16E8/XH4cLUYhosurZqd2JGblRb3pm8zfxxDYGkmxLU+uejYiM6QWvhh
X-Gm-Gg: ASbGncuMPlu8kk+VxkU4EeATHzICnaP0s0oVbZWGQU5NRb62jU/AJALpmJ4Syg4r3vY
 fXUZ6AOqSvGnj1U1Y6MCN88W22eu3JkVChfghia/oE0pXA35qP4YiduySjlgAzEHf/5S6CgEaMM
 aTPiHrNlP8tYiTauhqVbHJQrvaO+kPqyIEe3jpf0pRcxapkmhioJpAJe1AD74pu+keFXXUq2EMb
 fc9XtvI38Egk9/b+C7no184zmhPpQ+JVRWBdV4qrL5G4YVixDJMMQGHNaMgvvrVkfhmFhRuJrHo
 bC0rPVhUJvgkrCR+EF1c/TktJmm4aY0UfeBZskaJiuj4pxv5Odt+WnqQaKmCU13RJLef7gHuOpK
 /NawlR98WaScvxQ5Id4lSMgnxsmzg10rNTknGgME2KeE5pcB6t2Fy+WqeHqM3A4F6rB9gnvXamI
 rhIICobiOMPtm76A==
X-Google-Smtp-Source: AGHT+IFsMYMZsraWZeN3BUvD1HXeX+FpLoZiZgRtlLXlHtafV46HeiFiZHENmrqbuDEprBt45CmkCg==
X-Received: by 2002:a05:6870:a2d1:b0:3e7:e20a:39fb with SMTP id
 586e51a60fabf-3ed1fd4ff6cmr52374fac.11.1764008357879; 
 Mon, 24 Nov 2025 10:19:17 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:72::])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3ec9dc8e103sm6508744fac.19.2025.11.24.10.19.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:17 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:10 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-6-89be18d2a744@debian.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1850; i=leitao@debian.org;
 h=from:subject:message-id; bh=r7kjPpO3EmMUKZOQEZlWjxTq3oyKJiuHGfOq2mFvYMA=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGdKv15ipu1j1gMS0Jhfn4ft7Ly7jrvTdWd7
 8Q8gdOtGemJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnQAKCRA1o5Of/Hh3
 bZXdD/9kWqQNyNoVCNuwu1DAB8IoqQYDXO4gblgkYeyAIwCF/DUfqZrg2iDMn9NHesx6ez06K6C
 M7wn38DzZvlSqJrfMIrYg6xL73sziCXQiH3hM1ltLbzw+q9AYTeyCygU1+iPTBvK7LeGOl34Toe
 d3JTPQt5UvVZAbvPAB5AKdxPYyvwRmLfx53TLQZ0eB7ax9HF6HJZpJhSeq3ltsZ+QeXG21Loz2e
 lVGA5pO53PT+o2NnOEUu82x2yXl6PbDwiMhvBh9y1PEYrJ8ZsfsG+vUTEhsVIUgCByfZURwbyKK
 tweLnG8+7BJK7PmNr69HoIiOPS0QKy/v2D6JBaLkDJvULUj+qX2f2fgw+YnxwTWUV3NMHP5X74s
 c8wdVpFdmvJ2K5rVpgAF7LrLszl5E4arCAM/gTLAIvw5PBm7Jh0Qh1s6RGJKStuwbDeD0SV/O7x
 mVUOcHYDJsRuNw+57hNhso1Nj3Egq49AG6ib6/qpU7C8LdwKOovDoZSFqufrpn3s1K0LWmyaJis
 8gYTMHTFYxZMG2gYceACrWq85RHj1FVmgG7aWS4rTR/y/yj5djXjMV7l2aaOId+/1o5XqSacFyv
 P1MyNAswjYdYpGQpB3S+E/Z/pOcLkRNdumq5dCRm66Z+OcW95Z5fehVxmtoCH8vrl6O1kQItFqO
 3BFnOwlIYyUIs8g==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 6/8] igc: extract GRXRINGS from
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

This simplifies the RX ring count retrieval and aligns igc with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index bb783042d1af..e94c1922b97a 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1091,15 +1091,19 @@ static int igc_ethtool_get_rxfh_fields(struct net_device *dev,
 	return 0;
 }
 
+static u32 igc_ethtool_get_rx_ring_count(struct net_device *dev)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+
+	return adapter->num_rx_queues;
+}
+
 static int igc_ethtool_get_rxnfc(struct net_device *dev,
 				 struct ethtool_rxnfc *cmd, u32 *rule_locs)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = adapter->num_rx_queues;
-		return 0;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = adapter->nfc_rule_count;
 		return 0;
@@ -2170,6 +2174,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.set_coalesce		= igc_ethtool_set_coalesce,
 	.get_rxnfc		= igc_ethtool_get_rxnfc,
 	.set_rxnfc		= igc_ethtool_set_rxnfc,
+	.get_rx_ring_count	= igc_ethtool_get_rx_ring_count,
 	.get_rxfh_indir_size	= igc_ethtool_get_rxfh_indir_size,
 	.get_rxfh		= igc_ethtool_get_rxfh,
 	.set_rxfh		= igc_ethtool_set_rxfh,

-- 
2.47.3

