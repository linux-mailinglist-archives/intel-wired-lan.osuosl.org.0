Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 472FDC846E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 323106119E;
	Tue, 25 Nov 2025 10:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W4UVOcWnQOKX; Tue, 25 Nov 2025 10:20:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4540D61182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764066005;
	bh=8Yu7gPJkUQ7vuyCmZzm/NNLqbPOpqaQrxUJ4JkhHxnk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1w2eyyFNU/8PKe+rUDNtSj8/Y4M3jvOPtlEQe/MSpOOsHlEziQIj/zNRZFyFT51rJ
	 kZD7dZWqo5zu3pIG0v5R2jipjSrd3aiEcT/GmYP9gLB2hypPin23HJ6yJMa1CXyjjI
	 dntCcFfz8TAMUW0S9+2npb/r+X1GWvRlaZnM+vG0OTT7vNsWtF0/qzZOFMl2GPLATu
	 d957oEalgffnYveE52IJ6l/Q+wx9RwUlK5XFtuTj1/B6nJA9Wgw2+zhHUE0bjIjdY3
	 4U+wa9Y/BZ9KWd2j+BZkWIWwQ9+maBD/ZxzgY4mZzCC2Gzgq+xmwBNP76k22HOn/3M
	 klUUw13xx6G/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4540D61182;
	Tue, 25 Nov 2025 10:20:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E080359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4009C403CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m1_5pdMfVw-p for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:20:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.49;
 helo=mail-ot1-f49.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5B7074020C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B7074020C
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
 [209.85.210.49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B7074020C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:02 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id
 46e09a7af769-7c765f41346so2084783a34.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:20:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764066001; x=1764670801;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=8Yu7gPJkUQ7vuyCmZzm/NNLqbPOpqaQrxUJ4JkhHxnk=;
 b=bD8nY3gB5GzHtorQXsMNMoR0iF6BvlKDsCCL5pOE95qvFdjYIMZT72tXU9K7trrHpQ
 eFwS9xxGw5i2j42bEXFRbBkxvArEDH8IGbVimakY6RACui0pgHDeHYBY7CwFS3ZaapSn
 h27HHg62lKywlXcF6rzlvVDOGT5TMhJnLsNLXN8dMQmQHQh2qeYIWjIXby9Zw+aBmlBC
 DwbeF3cK6Uj4X0MMjYJ4C+YK0wM/mzyBfpBET3hzubHp3UI8fswGYn8x3T8N3bgjw9JT
 xrVClvijELc1AxYdqcSd4FCwCYwivNXWvBEH9SVFKBdENDMHQr+N6NU28oWgIoGg0dMD
 bHvw==
X-Gm-Message-State: AOJu0YzjkqOUF5B7PmE3mt7qjEX/2gGRyxOhBA1mP+RFklfj2NF6utYL
 sa7vxeDjsaLsSMd6n5m/EweWgrJr4V6DNULYeKHBQJAuU0rWy0rJWEf8
X-Gm-Gg: ASbGncs/ld/HakFxLfmTQatutDuKZMe8lJ6BY3QYwCwFPxuEV6TP+mtr3lKU6Rqo7X5
 spF7A3gR1kreGi2ipYhmm77EedoYoeea8/ZeRDN6hQpCU9x4g0n9d9upJYwJb5EbCMINuKlk+qj
 V3LLyIqkVvHUAdWf4cN+HaeScM9hxDpRRAkVdgOhn0GVG0ZPjh7Wou6H4/UE8wSu5y0vMhNvjDx
 bkkywcCPjfhhGEd6J3e00eBUnu2CbzbTS/1P4CN4VW7McYvB7yT0HEq8KLSg1CgVnjzI97pJO6K
 EUkG1FEm5s9Y8R/+Pub55tyXzRAR33w0FKHnE1h9nsacyEc3bMr2GaqkkZEZjRpFo5IO8VuOR7z
 srQXAiEJdwkVWjEOAE8gBXH/t2kYQlgNj9vesovV6M4BclZyLLD4auaO2hJDxgL7KqjpDWFe2bC
 0IFoTI5mC+VUecDA==
X-Google-Smtp-Source: AGHT+IFYidAJStx/3yLbtUGaORWltJ3sPJCt+ub5ZDeRVPCOV25y2qZl0pgExiFfidEWvGeNPQgc7Q==
X-Received: by 2002:a05:6830:a90:b0:7c7:1c77:f107 with SMTP id
 46e09a7af769-7c798cc684dmr8246144a34.34.1764066001247; 
 Tue, 25 Nov 2025 02:20:01 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:5b::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d400b2fsm6117096a34.22.2025.11.25.02.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:20:00 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:49 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-6-f55cd022d28b@debian.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1918; i=leitao@debian.org;
 h=from:subject:message-id; bh=Q0AZpTNUFttrJLNx9FvORT21hZNYuuTH+qlH8H7VieA=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIRfG2UeA7ILtyLTVPFkpMX69FPiKLhzY5p
 DWiH7FBcluJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bSZhD/0emHaiSZYsdU/B4gJdVA27ND+ZjOBWi7ZzZhXpt8NirHhjrt/kqoyxYR1506PQIgx/jU6
 oUVL46lADAMbXim0ui+0FungfV0L2yXRUjnLeFppXmp8FYKQsPjXECqKklesgdCEIgMqQQA/11C
 6MKn367INNE2kOXJh0gFA7vFNaCGPy7PLjJl8tYwMCNwSGPnVzLxRkHFs1GEpfrbXyyvRE13hu6
 23Ggl111gePbkwJAknUfY7f69TKJRX0dn/gh1WJK2nLoJ1yJfq8GMan2LQ9DO4e3VWTdmbjrskn
 5UVh0ISbounYP5X6ubpGJ6REPB8GbSv1smiqZXajN8YOYlRCMWHccfoIoxhGwo7MLCT3o1Nnc4A
 hvYIoFjn7Ai3TmE/25WDGgDIyB76QbmawwUflu12uk2CEXHJG4TVox6YuO6OSNVB56rLFpMTRJs
 /8NsrYNcrwIoSFVPuAq4xlR3UBn4MXWTgwNAusTs9cR6D8wVR7YuMAWTIhNISTw1y0yJvTZEwNX
 KEYUx3JddG/X+SjcSrf92w99XvLHsi50gAQ2lQZEQChr5FujdTussekfS+sXd6DKcO1g2K8eWHT
 UWaI0+z0rGeXJMEkgl+Jc65mQL3J0ph9iO07RaFv2LR69kfcW15lnZK6pW4yOKnpwCI6I5UNPJk
 dKfM//WFoI/ROig==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 6/8] igc: extract GRXRINGS
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

This simplifies the RX ring count retrieval and aligns igc with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
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

