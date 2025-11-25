Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67010C846D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3ED3E6116C;
	Tue, 25 Nov 2025 10:20:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pY7SilcJJc69; Tue, 25 Nov 2025 10:19:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B513B61161
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065999;
	bh=Ev1qL0vgRlnaty2XtQ6L8S4d7iM08dylTBEfHI0VuIk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lI7cCu/vudKZWdel+tUP7vXazUc0F2bl5MEdAxYWMpsOFPb1s/XGNM+uqcLagTZKQ
	 R/90DCTAL+zMgWKAP0gG0xNDQ5e/2ANKUXjE2pvHMxU2gnSGpqNsE5/8lpP42qUZCi
	 39+esHF2iwIxfE+EdNQRxtuSq1krgFigYEoox/Dgu8iixsiuisRRigNriEOSH2nbw8
	 vW1xUZKpakWOp/Msk1WtJSzWVqceUkujvzQNh27qX1K2lH2m0VeH9Gx5ltr6i8EtU8
	 R2KWiiEs6uLH7s+Y17tyozzxllm8w4dI6qJFZ4Jz1R/gLulKCfbr+xSt7Lf7h/hzi4
	 RMJg7HSDFJkUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B513B61161;
	Tue, 25 Nov 2025 10:19:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B33E2359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99E3A6110B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E70XRKrCMn67 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:19:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.47;
 helo=mail-oa1-f47.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0AA760F9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0AA760F9D
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com
 [209.85.160.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0AA760F9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:57 +0000 (UTC)
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-3ec47e4c20eso3301873fac.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:19:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764065996; x=1764670796;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Ev1qL0vgRlnaty2XtQ6L8S4d7iM08dylTBEfHI0VuIk=;
 b=v+wfPiNhEEJR0jfc9GA+9IdfoAkPrLIRYjCbqxDGQwL2eloU9G9gzqYXP85hQyhX1a
 CG/Ta741DU7mjKIpMvSQKT2dyaFckoiagJLXoaCS3V7w+7m+cfu+cQj8Rw8W0tUEvrAj
 EDAfv6To6ZYL90m7jozmG/Tju57f/yPu1u8RPHZJO2mAF3Jbv3VFVpvsyptXTp6n25o0
 gdkQTRhcyC4yZjbhDJ4ESZGGK87BfO5Q3/wvDiozI66zmD0JJIRuoWWXv6Wat5aiREzQ
 c3sK/5VJOpfzSVEjg14JUu9GyXucEF7Inoeyo8PMpuAKZ/yKJFf733JNGuXUL1hdrbcH
 i36w==
X-Gm-Message-State: AOJu0Yzi6ryO9JD55NdLT7rgiyU4mSsZV3b2olYFtUQHEx+W1rnQWV9Q
 oBb4vB6qWR0ykvTwb7eZWVhMybSwGYOj30GdQGHcclEsuyAL2+2NQOKX
X-Gm-Gg: ASbGncv6HAtgq7u08Cc+gc5PcHfd1L6Jx2sibQE4rYtJuWp7mdtEjG3xo5YXm/TrRjL
 JwhC7lQu4IuYEt2Y3uHmtvnbnK0R1uVG+cAGE38oGMkURUxLGCyc+7zp+6ejjabjVxuzjpgyBTd
 dvVvY+VWqnlYomUBCrPES+Fh4AgEujom1X62IgUuTMDhJuO/H6nncuEyXnNwwH26XflO3Rf6PcN
 kGqyAwFTT/XaCNyQb/KP/cb149i4nU4SXHOXUwuuMzwc/h3Y588FW2Zo48fX1rJ+eaEfDdqNLvf
 eVuHh0wOZIy55LHpP1DPjcNOaMLyRA+57MeQAESeoLqqXl5VrYLFwAFeIQj6l/d5XYcyL36ERpU
 jNQYx3CUwS69odAsGFqczlNmAuNS6qnq3i5swsTedfA6dUFUZq8//C8Rw6e5ER9yCqtoHjHP6uC
 BuEPVZcFC/FLstqw==
X-Google-Smtp-Source: AGHT+IFBHj5AHiLPFSozWaRHBF9ntqn5K9eCGUcsuxG5NUpa2ycHn2Q/uRMEEg5Cb/MN6mcrbNf2fA==
X-Received: by 2002:a05:6808:1919:b0:450:f3e4:eb05 with SMTP id
 5614622812f47-45112d150ebmr6096325b6e.64.1764065996364; 
 Tue, 25 Nov 2025 02:19:56 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:48::])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65782a6c8f3sm4126405eaf.7.2025.11.25.02.19.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:19:55 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:45 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-2-f55cd022d28b@debian.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2184; i=leitao@debian.org;
 h=from:subject:message-id; bh=3i7C7WKxlPKP4f0VTj5obFFhyx8DsVbLTl7zSEWQvvY=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIkIZHrCNVt2InqazbIwEgJO57onj7C+BuT
 j9j6CLnX9qJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bQ+oD/9EbaUQfykt99NhcVKbXM6HAwxijuvKLLPjhCOVON+bxERVgo+//umDkG3hSFCTkg5qx9s
 zWpGsCNkJFxFCpcF0BmP9EAn0CAdnlBn75QxEi4/RlVYKecqEW7oB/cct4Q0wNcw8ilTKAw+Sxq
 ryvQTRMn8IBBclGQAg7a4EmITq/sTf13WO2HNjSombXZKD9byz4IgN9bnQoYj8dI+Pu40kVLs4f
 pC5zvi0GkvPGjiQQ+mIHatvzj0dZOFg8BVLzMgEGMNtQupydoWN4u5vy7gxZudjtIM7QAmUjUmu
 OILpoxNvPVbKWqTkqJf70V3AVhxP69z/pEabqn2C6msu3fsei0eIISS3DHu7ym3i8MRmhA7P2EB
 jLnsxemyENdeASWvtozEm4KIZIF8HQvpOhLatLDBn/wQ7SIfytJUTDhBit0boyZ8UjV4TKypsLW
 Cf7Gch06WdkhKMbt9Kbky9odcF+4A9I8pEY7aisLj/D+Ooi6Xb+zj2opl4FJu/MzPUdu3cO3LSB
 nzYW2W/nQVeLIAwZIOV7mH3P2u4pWsziNMoG0sjptWZ9AzBPwvdzgGGWDc51qzGZdBWuYZBhVLv
 WTN+D4rPBlSx99pGJuzOtav9Rwz+tjCnu9uWrPnlIKCZGrlxLDuKrFwZPPCPV4NyJWWAVWqlr/H
 11mQ3GmGPFk/zbw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 2/8] iavf: extract GRXRINGS
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

This simplifies the RX ring count retrieval and aligns iavf with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index a3f8ced23266..2cc21289a707 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1638,6 +1638,19 @@ static int iavf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 	return ret;
 }
 
+/**
+ * iavf_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Return: number of RX rings.
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

