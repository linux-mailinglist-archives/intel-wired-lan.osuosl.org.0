Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA838BBE0C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 14:38:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C42641116;
	Mon,  6 Oct 2025 12:38:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7haO-Il5pYlu; Mon,  6 Oct 2025 12:38:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85B2F41202
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759754306;
	bh=YG9e/0v+fYu3UiekrrDI0YP0FDkXWAEUGnUqxPOjvLg=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MiOMTWVxnqFwhyYvgAxhpwmpY/YJdG+/d+XN1yO/SiqMnLHdjp2WOrj/zNYONbsak
	 O2dW/lz0596agSJHXwNTnE9pgUQkfQdpObo3yowwWX3/c6Csf697FGmQtJSy9r8zHE
	 UHFVfAFtLdUvefmNscZ/r1zhBHEFXA/+XwH8cJuJAspqYfa1pqH3phtMuGfcjBcSTU
	 AS1n+LPNDmQgMNJsfEtj3aoMYri9u0p1ezpgySoKJr9m9pAMEfl7oV/qHMRAjM9ASu
	 8Sc0husSdq6ppGaydo/fKVxLcNAgb+QMhAoDvIjcQHYxZde7Dg3LH7+zO5ra0nkVr4
	 w4XwczwPA/Nhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85B2F41202;
	Mon,  6 Oct 2025 12:38:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D730B909
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:38:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC9708407E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:38:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ABI1Sk600ufU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 12:38:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=367ca2993=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0D0CE84064
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D0CE84064
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D0CE84064
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:38:23 +0000 (UTC)
X-CSE-ConnectionGUID: nXhKJ3QOTequsnyGVdt/7w==
X-CSE-MsgGUID: FpuhatAATfCfYtrre7QXMA==
X-IronPort-AV: E=Sophos;i="6.18,319,1751241600"; 
   d="scan'208";a="4177589"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2025 12:38:21 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.21.151:16972]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.32.215:2525]
 with esmtp (Farcaster)
 id 96070aa0-62ba-4d12-8db9-4c20b3e74c89; Mon, 6 Oct 2025 12:38:21 +0000 (UTC)
X-Farcaster-Flow-ID: 96070aa0-62ba-4d12-8db9-4c20b3e74c89
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:38:18 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:38:15 +0000
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
Date: Mon, 6 Oct 2025 21:35:21 +0900
Message-ID: <20251006123741.43462-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251006123741.43462-1-enjuk@amazon.com>
References: <20251006123741.43462-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D045UWA002.ant.amazon.com (10.13.139.12) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1759754304; x=1791290304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YG9e/0v+fYu3UiekrrDI0YP0FDkXWAEUGnUqxPOjvLg=;
 b=ZtTrAy9EMk37BXFuEC8T16lWmUwPiSsjO1TY8N9dwaDjpsvoQd3sYjhg
 vcm4ObDwGgoC1ewnqRGdjuosSIK2d0i8iIFtIy/dlK5+pfaytsircbnLX
 EhQBTvQ3CESNBVm6havMJsg2y8XGH8lG+NzP8bWZyNivssNgyNcoHxhCG
 95hcaKtw3zL+9BAa+PL7NhlWPSTAXmjrEx4fqpB/N1Oa9qv6lTRkCyV3F
 vexHxgTMxhwoX1u6Dw5SXbBCfUjunfCLAsBM8lHKzUuKbX0CW3+GDRV/W
 BkDV3xz1wfGqNfeoL6EeKene5RRfKwjtwVy7E5fxi5L757xxl7jgJG5Zc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=ZtTrAy9E
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/3] igb: use EOPNOTSUPP
 instead of ENOTSUPP in igb_get_sset_count()
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

igb_get_sset_count() returns -ENOTSUPP when a given stringset is not
supported, causing userland programs to get "Unknown error 524".

Since EOPNOTSUPP should be used when error is propagated to userland,
return -EOPNOTSUPP instead of -ENOTSUPP.

Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index f8a208c84f15..10e2445e0ded 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2281,7 +2281,7 @@ static int igb_get_sset_count(struct net_device *netdev, int sset)
 	case ETH_SS_PRIV_FLAGS:
 		return IGB_PRIV_FLAGS_STR_LEN;
 	default:
-		return -ENOTSUPP;
+		return -EOPNOTSUPP;
 	}
 }
 
-- 
2.48.1

