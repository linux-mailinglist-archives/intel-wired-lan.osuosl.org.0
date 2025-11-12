Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FBEC51A18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 11:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3C8F40A5E;
	Wed, 12 Nov 2025 10:24:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kSEtnFv8hW1G; Wed, 12 Nov 2025 10:24:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32B2440A56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762943045;
	bh=gmjMGG+9uwYrdBaFaG40pgpWI5m/ssDILFCqYef0GKw=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j0I1gnW4YG5QVhGzjgmc8cPKq2toxjGWVUPWRIpep/alKPDv9cfTDATYM4DzIL+uk
	 6iFrB5vTRCx9DFUK42R/lVdKZsvUnkKP+tzYxyf9RJxClp2n8Sk3zXgdhUB4LLn7Th
	 aSa4zoQUh6mvtfjTyId7R38U2/nb0kXAn3Dyv6VTWbpgkLi6zgUaXKhFbuxxsZ8mnW
	 i/bM2VNGgcl5V9eF4SsEjDo4ypZs2n3AWeHkl/dEhdgwhXwWIZmztOv3X/1uPJnltK
	 pZyT48kNZmgtZLM6T+LsK8jLQz951iKmEB2oPrb/d3lrgTt6eocYaQ3or5MQIr11rb
	 j5sLGM+aCZ0Zw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32B2440A56;
	Wed, 12 Nov 2025 10:24:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 015441C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 10:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F25C740A4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 10:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NDrwp3b27Pg8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 10:24:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.46;
 helo=mail-oa1-f46.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1A253409C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A253409C0
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com
 [209.85.160.46])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A253409C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 10:24:02 +0000 (UTC)
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-3d5bb03d5c2so312565fac.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 02:24:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762943042; x=1763547842;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gmjMGG+9uwYrdBaFaG40pgpWI5m/ssDILFCqYef0GKw=;
 b=c9VXEjZJzZYdLkQz2p9puN+RwOjmekIvsHI64h57iMgFbfa+GbKxmmS1tBAw+Tnv4O
 HBsJzF/Zy1vbAAPMrLTsP/tSduTwcoUQ0MRUPGL5i6r1QgeWAoV7jPT1+tyr5pXmy1sk
 yM58BDG+tPtBcbWvsY7LrNq/YtdEAs4K0G0TP5n6tmVxdnxLCB+ptqZBhabvglMKqpNs
 X1fu0DGLkJTgXspg4d+cSWEmYVdaQ8RPrIOE+FZiszZTN5ybykYUIcWSfW17E3dD5stX
 q4nbp8BSiVTDM6esPU6N2V5p5E7LX0wjgIKvm082nPbLWMP4qIbXGVn+o2EyQ6sezfef
 AUyQ==
X-Gm-Message-State: AOJu0YxtFluTuKrDVKhXz+Bl6o+spWtFlaIXNjwuJhmNpbGYaBcHCPjW
 j92P6ZQGtqT6x1ywt44uQd0/jJMJn4cBrgvSN1eepI7mDY/SqfWHJyP5ErarfA==
X-Gm-Gg: ASbGncudeeETEMiilf6IKdQReHNCqBCRKjWqehMj2nasDUqcMtnhXpPBNE+lzJNoimv
 L6eMHkLlgO6b4JAId4RL6pvAClq9Vui+50loc6JAueGELxMr29hENEboXNRKvbNOa1BzVIX3gPd
 7kOGvx0kYVW8BtMAK8s5AV0XhTfI4lvMK2J/zbjcqOsE0aC4o9vz8/tae7TXu28WjJsQQqzwG3q
 S/Tw1pdw7MRrBhtM6bcYaqqPZKzdvcg/Owk5/wJ0KRRHTdwZU8F+I/tMyNX6LscnTvUDkp5mM3D
 vsFCeXsk3IYfiFL4ez9pMK3cwPbONjjBTFepHxE7FOeOyyPgTvv3LPUiuVBHCgPG3c6ZeieAFKn
 DKcWK1SD4aza/Zajyk526w950mrmzGxp5rsr1yEY9Ja98/iAyyV7xjHMn9NrKNv6RlFwkIOqRnV
 jgU9c=
X-Google-Smtp-Source: AGHT+IFFIe5XwMM0YpIX3Lc90l+/3mxxUxY0eH6uX9Bidfv2T/GEpqWLRifC3V1aiew7ppov4DZUmA==
X-Received: by 2002:a05:6870:a913:b0:3d8:9e0d:17da with SMTP id
 586e51a60fabf-3e833f7baadmr924714fac.7.1762943041721; 
 Wed, 12 Nov 2025 02:24:01 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:71::])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3e41f1c5675sm9255065fac.17.2025.11.12.02.24.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Nov 2025 02:24:01 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Wed, 12 Nov 2025 02:23:04 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-ixgbe_gxrings-v1-1-960e139697fa@debian.org>
X-B4-Tracking: v=1; b=H4sIAAdgFGkC/x3MSwqAMAwFwKuEt7ZgCir0KiLiJ9ZsorQiBfHug
 nOAeZAlqWQEepDk1qyHIRBXhGWfLIrTFYHga98ws3da4ixjLEktZtfy0m4drx37GRXhTLJp+b8
 eJpczKReG9/0A+T47lmkAAAA=
X-Change-ID: 20251112-ixgbe_gxrings-61c6f71d712b
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2569; i=leitao@debian.org;
 h=from:subject:message-id; bh=7buZIml+vYNlKuOKSsFWE1hHtW5O4S3qAolR1oHcodI=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpFGBAd+OmxF+aCLlLNOP1At7YER2YtTmmHxYWP
 s2PX5WCRp+JAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaRRgQAAKCRA1o5Of/Hh3
 bZpgEACglF3dSw3Lu5l7IIR19b2hXkkRgxiqC8O+6j9IHaK989ZfaP+mdimCb3DPYCTp9bYYUbf
 3hGX8CS/H9UQaESFMunujdFlhXSEIs36x5YoLCrb3QxtEEEsmI7ZQBdr/Ld8lsS5i3BrlH+8U2M
 bYRRQaWrsb0rENrQrfiDTru9l3qZyE2TaXMoZUpvm63qOVmnSQv2vJVwxk+owSDyr8K5FVmUX+J
 EO08J/K2Up72F1ntL4BZf+Z1lcwaajZvD5mjbLTFOXYOrkbYlb1sfNHtYD/Gtq6GTwFVbvK8BTg
 nFR3Gmu7nRcKa9T3HioT0gh2OB5rNRre5OM2BMFH8eJlJfMBDwXe/QPrE+1PXlP+xLHDFNlUaZR
 OVlXIJ+JrCIo2Yg7+unJHVxJE3YfAiejGUPgBfsh/chHUjEIne9Sfeiq0d062XqeY9I+o0DuStl
 V6YVV/NJGXSVCR/OvAYJKEhbIpt5JR/iwWA1iEgPlDGqAmOHfCKCG1NrZ2oGTR4Hfd/XjxUAm1O
 WpepxzVqr1xmJM38mef+S4czustgWXbKuDsgqjdWIlWlmU8FrB4M7xHOYnBdgmXGMB8nCwMYNDv
 D4j4KpU5/WpDPOskzbn9i1CWn2Euk4IRm43n4LN2lDDgOKkJzpiG4cWkFFlZXAiHhSnp9PgEnr8
 ZkSISIkzrjDcTiw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next] net: ixgbe: convert to use
 .get_rx_ring_count
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

Convert the ixgbe driver to use the new .get_rx_ring_count ethtool
operation for handling ETHTOOL_GRXRINGS command. This simplifies the
code by extracting the ring count logic into a dedicated callback.

The new callback provides the same functionality in a more direct way,
following the ongoing ethtool API modernization.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 2d660e9edb80..2ad81f687a84 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2805,6 +2805,14 @@ static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
 		return 64;
 }
 
+static u32 ixgbe_get_rx_ring_count(struct net_device *dev)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+
+	return min_t(u32, adapter->num_rx_queues,
+		     ixgbe_rss_indir_tbl_max(adapter));
+}
+
 static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 			   u32 *rule_locs)
 {
@@ -2812,11 +2820,6 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = min_t(int, adapter->num_rx_queues,
-				  ixgbe_rss_indir_tbl_max(adapter));
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = adapter->fdir_filter_count;
 		ret = 0;
@@ -3743,6 +3746,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops = {
 	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
 	.get_coalesce           = ixgbe_get_coalesce,
 	.set_coalesce           = ixgbe_set_coalesce,
+	.get_rx_ring_count	= ixgbe_get_rx_ring_count,
 	.get_rxnfc		= ixgbe_get_rxnfc,
 	.set_rxnfc		= ixgbe_set_rxnfc,
 	.get_rxfh_indir_size	= ixgbe_rss_indir_size,
@@ -3791,6 +3795,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
 	.get_coalesce           = ixgbe_get_coalesce,
 	.set_coalesce           = ixgbe_set_coalesce,
+	.get_rx_ring_count	= ixgbe_get_rx_ring_count,
 	.get_rxnfc		= ixgbe_get_rxnfc,
 	.set_rxnfc		= ixgbe_set_rxnfc,
 	.get_rxfh_indir_size	= ixgbe_rss_indir_size,

---
base-commit: bde974ef62569a7da12aa71d182a760cd6223c36
change-id: 20251112-ixgbe_gxrings-61c6f71d712b

Best regards,
--  
Breno Leitao <leitao@debian.org>

