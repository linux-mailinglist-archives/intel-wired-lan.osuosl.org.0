Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCD8BBE0CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 14:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F80261316;
	Mon,  6 Oct 2025 12:38:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zi8A6YKVjCRA; Mon,  6 Oct 2025 12:38:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E7EC61312
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759754326;
	bh=w1ho3AKsusw0YaB2Mzcv5sgobas24QH5Pr9I5YKB0Us=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jRIYfcWhD/R2srNtc85zLZ462WU0gryj3l2kYh+upONkFeWuGxCg8K8tcWW5/ODIB
	 NJKf5ZMZ7w4hIAH1G+eHMELlgqHf85UbMwBjhQA0iUU2n7wr/qDKzWKVLZkmnZ7/Lw
	 s6YNaLOmiKJwOmOTYIXNO1I4Kt7yfOSB6ae8YYdXhFiQLSlcihaqyRo0VtKDv5R/RW
	 CjjNtj/cKbUKXGICtOzqNHJUaK2keb6MLrEYKbi1r86RA5hVFBy9y9tFdvw7qewP6a
	 SOM1FyzwVCGUjkwwvrcNri53FzNbje4yk3BBF7z0TpepnwwkYphhu4Dh8lVheOS94T
	 c32Vbt4+HIXsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E7EC61312;
	Mon,  6 Oct 2025 12:38:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1ACA4272
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D106612ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:38:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZP5cNpOgJJz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 12:38:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.218.115.239;
 helo=pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=367ca2993=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 22CA06130A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22CA06130A
Received: from pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [34.218.115.239])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22CA06130A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:38:44 +0000 (UTC)
X-CSE-ConnectionGUID: CoxzmejuQUGvLrDzsDTnEg==
X-CSE-MsgGUID: CyiQNdvwRD6PJF8ZbH1JKg==
X-IronPort-AV: E=Sophos;i="6.18,319,1751241600"; 
   d="scan'208";a="4182878"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2025 12:38:43 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.7.35:59160]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.20.71:2525]
 with esmtp (Farcaster)
 id 034f4a92-bb00-487b-b42c-23a385aa2101; Mon, 6 Oct 2025 12:38:43 +0000 (UTC)
X-Farcaster-Flow-ID: 034f4a92-bb00-487b-b42c-23a385aa2101
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.218) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:38:43 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:38:40 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, Sasha Neftin
 <sasha.neftin@intel.com>, Richard Cochran <richardcochran@gmail.com>, "Jacob
 Keller" <jacob.e.keller@intel.com>, <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Mon, 6 Oct 2025 21:35:22 +0900
Message-ID: <20251006123741.43462-3-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251006123741.43462-1-enjuk@amazon.com>
References: <20251006123741.43462-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D042UWA001.ant.amazon.com (10.13.139.92) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1759754324; x=1791290324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w1ho3AKsusw0YaB2Mzcv5sgobas24QH5Pr9I5YKB0Us=;
 b=EsIqftc+2phRd8gHM3rhOWPhhG6xECX74LKsDszHFrYHN+Kzf9O/AeTv
 /XzsqvU1j9AHILUgWv+lujDytYEqhxgmZbuDLAiIWAlwHxxoA8KCUfDKm
 GDZWiYBdP5zFvWy7UEdyckATw7EizOqaBbQCe3tqsFR1vu4khMcQw4E4h
 F3WcH6Rz1ckIyvLzIyNcL4sSsKb0IzcKr7WSRKDL4kgemSDICKsM3Z8Bm
 /k3ybZD+DarZD+njScv/S4visP62agYViE51S3q7A+YncyOj/4pZre+6w
 V/gLNAWJM3V3ymRDAZACyqwnzZgenEda7a/4WKl/wCKdrhKQqpYZUWVSH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=amazon.com header.i=@amazon.com
 header.a=rsa-sha256 header.s=amazoncorp2 header.b=EsIqftc+
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/3] igc: use EOPNOTSUPP
 instead of ENOTSUPP in igc_ethtool_get_sset_count()
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

igc_ethtool_get_sset_count() returns -ENOTSUPP when a given stringset is
not supported, causing userland programs to get "Unknown error 524".

Since EOPNOTSUPP should be used when error is propagated to userland,
return -EOPNOTSUPP instead of -ENOTSUPP.

Fixes: 36b9fea60961 ("igc: Add support for statistics")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ca93629b1d3a..bb783042d1af 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -810,7 +810,7 @@ static int igc_ethtool_get_sset_count(struct net_device *netdev, int sset)
 	case ETH_SS_PRIV_FLAGS:
 		return IGC_PRIV_FLAGS_STR_LEN;
 	default:
-		return -ENOTSUPP;
+		return -EOPNOTSUPP;
 	}
 }
 
-- 
2.48.1

