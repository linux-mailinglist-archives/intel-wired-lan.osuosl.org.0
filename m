Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B440DBBE0D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 14:39:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 336C16135E;
	Mon,  6 Oct 2025 12:39:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EVkN02954QLt; Mon,  6 Oct 2025 12:39:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6F186131F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759754352;
	bh=0Mj6DyHT3p5mzeAzaSt+CxCS4GcrrIvBBI+kZriszA4=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lwxyjHkiHXvtzdIfMHA8DKFhd2uuMo7DKdVu9ktYYRzh7FSGgw4W7otwSlmVCz+v9
	 MdlfVjy1H05EUGPmaQwE4hvTSSNzML6Xam7CRd1b6lOmS5LuA+hxYMszMTgG7SPpRe
	 eDQdWJkTWdMujYLeu7szDxCQZ5ZI8eLhBdrlRctcwX9bfLL2ZGZv9gGTi0xJSk7bQw
	 s5+8FJTZISTmvnM8yJMF7ztHf1iNDikgmbWgJq78riLGCEwRL0LGKJhrGgTx75QlFe
	 SRHHE4kHCTeS4rVZFKukI3tgXIogm0VW5tklIXlEs0Uc0k49JXtzvV2P4Q1oIItrTh
	 /1Oogg0GkXtzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6F186131F;
	Mon,  6 Oct 2025 12:39:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CF9A272
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63A71840C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:39:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBmSt8vF8pAx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 12:39:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=367ca2993=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 55E3384064
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55E3384064
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55E3384064
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:39:09 +0000 (UTC)
X-CSE-ConnectionGUID: to7BJQWcQC6u5VydU6PuLg==
X-CSE-MsgGUID: p4V9+/vURF+S4NvZsXVZUg==
X-IronPort-AV: E=Sophos;i="6.18,319,1751241600"; 
   d="scan'208";a="4177632"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2025 12:39:08 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.7.35:8047]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.35.225:2525]
 with esmtp (Farcaster)
 id f1ee6362-a1f5-40f4-90a8-4d52248e5d16; Mon, 6 Oct 2025 12:39:08 +0000 (UTC)
X-Farcaster-Flow-ID: f1ee6362-a1f5-40f4-90a8-4d52248e5d16
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:39:07 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:39:05 +0000
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
Date: Mon, 6 Oct 2025 21:35:23 +0900
Message-ID: <20251006123741.43462-4-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251006123741.43462-1-enjuk@amazon.com>
References: <20251006123741.43462-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D039UWB002.ant.amazon.com (10.13.138.79) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1759754349; x=1791290349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Mj6DyHT3p5mzeAzaSt+CxCS4GcrrIvBBI+kZriszA4=;
 b=bivaAA6jpt0kS2NFOZlva9PbkOKap3uxhoZWU84r/x/M3wRPI2F7M3oK
 hSk9SG7jl2lsYPvoNr8gKJoFCPsdbq0jGEEmWplPSyc8hS4n2/7dDCUCp
 uZixCA/wbEK5bnIK1PACnE6JRYtAFG6ivNUwKGRbVtJsy15azMhPSUR5y
 fdhG7UCKEXARiNkecWGmt/mi1mfFamwRWk7OSOGYW48Xwy4gCi7DUDv4J
 6wyuK2/5IAtI5zVDb0VN3JOIZUmlW1jcxoZjxfoFDwI2r4ytY5Rcb860q
 hwEOnv7tMUGRTbMKwHNvdTeWbooe0cwK2ZbYqgqQQWckRuFOMImwolDHr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=amazon.com header.i=@amazon.com
 header.a=rsa-sha256 header.s=amazoncorp2 header.b=bivaAA6j
Subject: [Intel-wired-lan] [PATCH iwl-net v1 3/3] ixgbe: use EOPNOTSUPP
 instead of ENOTSUPP in ixgbe_ptp_feature_enable()
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

When the requested PTP feature is not supported,
ixgbe_ptp_feature_enable() returns -ENOTSUPP, causing userland programs
to get "Unknown error 524".

Since EOPNOTSUPP should be used when error is propagated to userland,
return -EOPNOTSUPP instead of -ENOTSUPP.

Fixes: 3a6a4edaa592 ("ixgbe: Hardware Timestamping + PTP Hardware Clock (PHC)")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 114dd88fc71c..6885d2343c48 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -641,7 +641,7 @@ static int ixgbe_ptp_feature_enable(struct ptp_clock_info *ptp,
 	 * disabled
 	 */
 	if (rq->type != PTP_CLK_REQ_PPS || !adapter->ptp_setup_sdp)
-		return -ENOTSUPP;
+		return -EOPNOTSUPP;
 
 	if (on)
 		adapter->flags2 |= IXGBE_FLAG2_PTP_PPS_ENABLED;
-- 
2.48.1

