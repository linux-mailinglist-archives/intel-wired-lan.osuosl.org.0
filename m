Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BE2C82104
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A248610EC;
	Mon, 24 Nov 2025 18:19:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EPvXjASTVTo8; Mon, 24 Nov 2025 18:19:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87ACE610F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008364;
	bh=Fm7T4kYpemJMMvjDtiDQYS0ccg85PvSfsO/Tmuk9TY0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7Dy4vUy6L60CATbuxWIYsOWbw+xMvODiLz8FYrd9mgCHjCJQ9ExTvs84UElAKMggb
	 DHNzMLDrCRAMmOr5jomDbKQmshCSE8+yucPU0WqZEPywuSHzzDrVmIa0RmJ8bMR8qF
	 VgPIl1oVV7ytkKb/NAalovSa8wRhOwl52AhdaeTrMh9zCSzSG59IUpXL5BfGejjEsm
	 12BsSbr/XoaMPQcHUOpM2XM6MhvhiFKw/mVmya8lR6HoALBGVjFNc7nLf20UbwAuaw
	 MsI6h0JZH2l2nzNNYWBWLH5+KD2hKQWG9jOJu1cJYBlt+CrOaJ5IMx3UEnPM/22hIG
	 ZHLwJ/jjvFFyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87ACE610F0;
	Mon, 24 Nov 2025 18:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D19D4E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF3918355F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4oJubl4k-7Qh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.54;
 helo=mail-oa1-f54.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 079B18250B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 079B18250B
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com
 [209.85.160.54])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 079B18250B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:20 +0000 (UTC)
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-3ec3e769759so1181022fac.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008360; x=1764613160;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Fm7T4kYpemJMMvjDtiDQYS0ccg85PvSfsO/Tmuk9TY0=;
 b=KFEe/PbRgByC/2PmctGv/Ijo1r9+DlcX7RKUFdmWoQwpK3aOtTlz8EJeOUn6i1f4V0
 C+d0dVsXCAgKBl+74O4FjN8uFTd6awTCAGs1jA/tdVwyZWfDr/KOVZyDW21eE3G1UNlF
 fx4AzJl/rFIoLIhaelEy+Yd71mvO/qCQZF0pmzutnrzUvUMCTHllZvmulwkW5K2aGOly
 kWwQnONzdDQrtIIChrBIFIcYUD8rIUhbUtvZJcaVr/qChXdappE9Zc4p3gY+cPtgvpvY
 V6KSvv7i71PG4NKsHCjO/GS9cKTI0Bz9Y1JNM3Oe2Sy0vmJqf0kcsPp1nbUpTMjC+YIH
 HzQg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVpLoREHom/QdADoh8NaHX65GfQta8K8PHZKD5YO+djXZI+mOvfodruY07dgqoX7YkFZxhIuNf2PrfP+/YuRBM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxoMq6lo1SR+3NGgs3k/badWds+q5vTmDxhDHzJfRkJ0MC7aXHj
 E7e7dbP4SnznoqfwPe8Ux6XVEvYSNu71SWvibTama0/47FqDNi6SJwCD
X-Gm-Gg: ASbGncuXBxpkS1gZSUWxPb3HhiNSzKuvnHi2tf9aQGAI9CZfmiLiqk3MPVvkx0kM9hf
 dcU8ug38IH4gI0vraPKBRlhVkVLkIi2IjMLnR29Ny9Brzx8cUXYYdEScSjsOtz6MQk3EXYkwm7o
 0Bdyf9JhxgRQJDMFN6VX2nJttI1G1SUtd6hWZ4CCWiykq1MVOBoX/9/5qNmqv5m1xOEF1qYk3vn
 hF662EtOqyQT65RUBz/RWvlJGNqaMWqHv0Iapw8EMNLHTDcuJHoiktWqrGMFlt14/Dq4BbMSsGF
 +MPvuikpD+b1OgEBcx1pHrFdy3J19bzvnmFpwlkZ1WumHXGXW9MJDviqje63ofUBdWw4/0mXgug
 prN5iaY7E3v//qmS3vUG7uTPyihEbuh7wCRqsToF6BVPUD6nJpMSzYZzyP4ggLR/8knCizzioE7
 AtSIOig1Hm77VNVA==
X-Google-Smtp-Source: AGHT+IHk6DmiZ9rpOaxacJxdWVhUPb7ROk8BC/Lrjvw36nO5cYN272dniKUvdPt3nFoemdv0k23irQ==
X-Received: by 2002:a05:6871:a509:b0:3ec:3464:6a01 with SMTP id
 586e51a60fabf-3ecbe2e2531mr4998928fac.22.1764008359961; 
 Mon, 24 Nov 2025 10:19:19 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:5d::])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3ec9c2cf16asm6481464fac.5.2025.11.24.10.19.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:19 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:12 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-8-89be18d2a744@debian.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1896; i=leitao@debian.org;
 h=from:subject:message-id; bh=+tr0rXCH3AppraOpbUulaj+yjW39IimK04ZXWNj9Ab8=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGdghtwLmciShpO+hE5nMVvZSncmpHb5w+dv
 GWfQi0xDpuJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnQAKCRA1o5Of/Hh3
 bbtbD/0Vk0xiqTFHZzmeMTEhz0ob741q7xVzRMymgLSJXw7eSNIwOzXeIVsoN3wJ/mVaMB28xsm
 mjRUf4HqK0HA2pmdVUi+MZVXG4LD63Qt3XWlj8oyb0iIrSuwpY02UGWkWN0Ry4FjMLuRHwLO6QF
 FrHGwuBCoFbZ+M8aE64uqAF/rRaTX97ZTY6/o4gPfkxtzfJJ99lr/DP1xQgjr5rM0Xb3wXu01W8
 03mGJTg4lGgp8NLBE/6WSRLgyuQE0KpEJDg60iQgfC86R/ysrNoGmV4Fsa1LmOsLE2xeZtiPCB2
 HBye5VM4ciChfusUhN7wpnWbtRsz6esv+FcgFHZhzLp7v4BNDDd0EOCODb8mjPmOOKDs4Wp22ra
 xwuyupifJ4y9SUS5dPuMa8bAOQboHmzh4bym61lUWT0RCv96W46gOkRSGuhZvj9ACgkr2pLLNL2
 AzaVSl8R6D/iqC2G9bGsdpKbLjoMP6hx8BNt1DNEpwN7Le8TSolSaOTBWmvDu3/9zkCWLKdUQOz
 sm/XBYxY1JXuaVG4w8cl6WzPRcJ0p+Br8RxPJvasxn7whhRR5kAv3Za5rwaNwf7Zf/tuBmhzP3x
 9VMdP5qSjtqjOe8fijA4LXqYTJcRdaaGkA1L2dJNBeJSR6Y38KqEscHc/x3tXN1hAGZqVMHDT1/
 5EJWH6oCFLFcX4Q==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 8/8] fm10k: extract GRXRINGS from
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

This simplifies the RX ring count retrieval and aligns fm10k with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index bf2029144c1d..76e42abca965 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -734,22 +734,11 @@ static int fm10k_get_rssh_fields(struct net_device *dev,
 	return 0;
 }
 
-static int fm10k_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
-			   u32 __always_unused *rule_locs)
+static u32 fm10k_get_rx_ring_count(struct net_device *dev)
 {
 	struct fm10k_intfc *interface = netdev_priv(dev);
-	int ret = -EOPNOTSUPP;
 
-	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = interface->num_rx_queues;
-		ret = 0;
-		break;
-	default:
-		break;
-	}
-
-	return ret;
+	return interface->num_rx_queues;
 }
 
 static int fm10k_set_rssh_fields(struct net_device *dev,
@@ -1160,7 +1149,7 @@ static const struct ethtool_ops fm10k_ethtool_ops = {
 	.set_ringparam		= fm10k_set_ringparam,
 	.get_coalesce		= fm10k_get_coalesce,
 	.set_coalesce		= fm10k_set_coalesce,
-	.get_rxnfc		= fm10k_get_rxnfc,
+	.get_rx_ring_count	= fm10k_get_rx_ring_count,
 	.get_regs               = fm10k_get_regs,
 	.get_regs_len           = fm10k_get_regs_len,
 	.self_test		= fm10k_self_test,

-- 
2.47.3

