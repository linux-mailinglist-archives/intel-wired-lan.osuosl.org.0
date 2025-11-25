Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 521DEC846F0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D4C661185;
	Tue, 25 Nov 2025 10:20:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNV51loHe3s8; Tue, 25 Nov 2025 10:20:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF1AD61166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764066007;
	bh=Tvbta4fVdZn9vAqQBg3FZCIOEShaAvkwCR4RcvEMvMU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BUF25M8nZjONDzxQm76QzsSXKIz+ZX0ixWTxaOcvjqeu/f6o8xxxVoS8vAAdPf1I1
	 jaOvnXgaWEslkXXZ4dra36tBtPSJOmTAM1wmjRMqGYVD+/YlEzcE250pz4724vk9Ef
	 FLIajwQzbls9w0WW3+Nj+9nG112HQ7nl3XPSyfipckYxN8tczdTnITGX43hGLKHvnx
	 vDHJYbTsl3iJWGhNOuxPH2Xpx/ZyQpYBuorRdnlSxVNCWRN2g9SOo6CUHoXyA8XWxM
	 iLklTw0t1O9SP19aTolPlr5rhIhEdprMd5b6rnTi2H+jZMS6b9cxmXeGuQak+y/86u
	 HbduzgVjdXSrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF1AD61166;
	Tue, 25 Nov 2025 10:20:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A5C23359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98610408AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zl4HUnmomJwH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:20:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.51;
 helo=mail-oo1-f51.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EA637408A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA637408A6
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com
 [209.85.161.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA637408A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:04 +0000 (UTC)
Received: by mail-oo1-f51.google.com with SMTP id
 006d021491bc7-6579872f00dso1404716eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:20:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764066004; x=1764670804;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Tvbta4fVdZn9vAqQBg3FZCIOEShaAvkwCR4RcvEMvMU=;
 b=lUd0GgUHaGR3yjsEtvL7btcqGXjhu26V0WI4ufGV6m+l2XIb04HvUWDcL99roQPqJ0
 QlWMrfx1zOVWn6NDSrhZ/C+QzLT4MLV76z2sDrc84jePGWE9Mv+L7UGcbuiWrW0zNwQc
 c/+HvljmzxpaqmYY8v6ASezaXs/XL3mrPg+3yDvXmFz89lXroAS7jPMflcTRJTz2Ye3o
 J5fbYhQec761QYqRUngcyoxqskVAl+t7/bT6NO87wO+Ds/gxjQ5WcimZQe6uuCIFFbED
 6p6Rtszi3VZup6zu9LMZC0ERuIGh2dWtzDAx/6LTnKN9VhpGmEzSOheUu+SYHa4niA8C
 y32g==
X-Gm-Message-State: AOJu0YwBsa0Ftn9aQGhmQvQ435q8Sz1Q0G1AmctSTcamfURqQOOWVPvH
 IOxgZl05Ax4L/YN/KOBSw4I2T7t4eFIHgCces0Xkf0rxormfl6qZVj8z
X-Gm-Gg: ASbGncsj/VsuRRZRbwOVGdu+5GG+D2nF+LYemy/n5mK1GnlUMDXi32v8zH6a9HoO+ax
 l4uippQQ+0F2+IeC5ak1K+7hHiNxivyxGc6n9+C2t6HDIsVX14vE6rT3sjJyCIn2eKUexJXY0S1
 Hx8Wqsj4iI+BkMAWOB4eOKhWTfGICY6uQSDIn3IJkHpGJMug6XbNlaoZzevz1ZczMBFgVZLrAGR
 37AHtvrdQsVckLtTCptcC12caGDD7BYYV3k8GEKvzoxXbLnQuNni0HlouvFOLlWQCc+xhVJ1oLp
 8b4oIn+qVCVabyIEjiZ9ZPYMNNXji+KQzbBUO9Id2gGF3d5LyCzwPOLTvn6j/hDglADrp+1iAm/
 nglPf74G0AqEnBhkege6bfXuj+Ru/j7sREN9GFnwFKzsBpjh4hX73989aYHxCBhuHI+eQ830pmw
 NHBGziT3lNQdpVhGCJDreJ
X-Google-Smtp-Source: AGHT+IG0n0J7rKRKrTWwDRtn+YiwdUe/ykWABXHXC6gNlvNKhYZ7bef0l5IiHuvPmD0px4kFdMhhrg==
X-Received: by 2002:a05:6830:2b0c:b0:7c7:6da2:6d6d with SMTP id
 46e09a7af769-7c798c4acb9mr8363612a34.5.1764066003793; 
 Tue, 25 Nov 2025 02:20:03 -0800 (PST)
Received: from localhost ([2a03:2880:10ff::]) by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d4280ddsm6145336a34.29.2025.11.25.02.20.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:20:03 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:51 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-8-f55cd022d28b@debian.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1964; i=leitao@debian.org;
 h=from:subject:message-id; bh=dXV72bqndpkkvzq9o6QtXIzE69babSsUr1zwRzXjy7A=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIAMYpRybdfkoBMBylttuJo/I+zxk10WasV
 OHTbp/453GJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 beq9D/sGrH7k8zyr42hndTHDhiu3C+5sa8ejE3PTLKXfz8VGFpSwkznKO3f7QGhI+fhLBP0aPN1
 FO/fj0bnQA55HE3/gO6mdw+Y6Y4LFlL41U3T6Z5pLty6QrgbpOKeRTVoXA7NJeNiGB1Mgyaa+O4
 2nqjhJsF93MHNuBOONOtiq1Hjz4QrbMqPLacFotgrEobYEqjR+HWYIIlrpaHcifg6Pf4J2Y6B4W
 UPV63dTdvs68k037miseUbQSqRfLa+RanPmZUby4C1TOWqfJCIjoP/XF59uWtuIhGat39Ri83oD
 sZLxizdb5iEVehz827agbw5CDq8i2E/xOveVYBGZNDNJxkgg3Dp7GFOu4dUoYJx1FqwGDSqtp+7
 T6QaUEiDadl57/vHgGTjTBLtsNRDgKfkpqeOVPAnxrILZ5mSVDiW/iFzFVT3Fik1TdvB11Cc4+X
 1U8w5+ISyAJx6jQ8Y7mO3fh10d0boHc+1EMJjY7reRm2cNvZ193tW46EaeDd72gmvUr0WYql0V+
 qMztuITVslcHA0JkDqJGoZ5ULWLF33SRDwjh/WtCnbjMlICzk5Qs4tWJ6GCj1N8cgrhJdYgRrAq
 n1oHTCrplBgL07N+ldMZpwJdZC24gl3MB2Q/jWiww8Sg64qRJA6oya4FYHqLfFH0nGQq31EMb+m
 x7CGTmvx2hs3cfw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 8/8] fm10k: extract GRXRINGS
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

This simplifies the RX ring count retrieval and aligns fm10k with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
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

