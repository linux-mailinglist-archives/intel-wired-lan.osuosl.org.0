Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C657C9A067
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 05:43:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC1E583C82;
	Tue,  2 Dec 2025 04:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l3M9ZSHQo38p; Tue,  2 Dec 2025 04:43:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0173A83C87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764650617;
	bh=fI8EqN78O40L41UoXs1OawhUWfdbWoUdLfShYqDtWbs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zNvnlP6LuxZYc73mn0rgoCawaUo6dmsh7uf9RTDmOKMhpTggTaiJiVjYXYNk9c8iZ
	 uB0bZUyUtL/37UcBDlERE+9yxv4Hfr4srRVX4xF/ej0V2cxVQN/jflrXNL1yhRGCYU
	 lnl0AD804rQRD4NtD3YpnCLqgyKfqYxKv+nzy5XN20oj5QwHZfuNtuOx3n/P1RHY/g
	 4rr/UXOuxWlQms/HVC9c8OgiKHakbAMY0UBJSHvPt/PJMNRwGhQcoLnOhSYpbje5oj
	 o3uaUuHymrvEd8G4B5LNXd5AGnOaiRXewTa0QV0QEvhp0T9wMDX58rNYgXoCj6V8Nf
	 t1+PG1hksgq0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0173A83C87;
	Tue,  2 Dec 2025 04:43:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FDB11BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 04:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7209083C82
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 04:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5OndHLEFZdoQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 04:43:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=chwee.lin.choong@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 739AE83C81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 739AE83C81
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 739AE83C81
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 04:43:33 +0000 (UTC)
X-CSE-ConnectionGUID: TtlBNSjkQMiVlnyX2pbg5Q==
X-CSE-MsgGUID: 9eBiS5KzSamMMaK2lSTfLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="78071884"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="78071884"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 20:43:33 -0800
X-CSE-ConnectionGUID: JNZIT0lsRZCYkNQ9r7s52w==
X-CSE-MsgGUID: /K6JqyLSTxmDi1MrzGeTjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="194363908"
Received: from p2dy149cchoong.png.intel.com ([10.107.243.50])
 by orviesa008.jf.intel.com with ESMTP; 01 Dec 2025 20:43:30 -0800
From: Chwee-Lin Choong <chwee.lin.choong@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bouska, Zdenek <zdenek.bouska@siemens.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Date: Tue,  2 Dec 2025 20:23:51 +0800
Message-ID: <20251202122351.11915-1-chwee.lin.choong@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764650613; x=1796186613;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YHuykW3BY2bKlagS0Shm67CUfpc2QWoDRQovzkp6umk=;
 b=OBbPvA1VSW8e0Tukn7tzjbqGmz+Qrp48vucAE5iAh/OwvAHq2YfdFsAb
 1oGjBRraTjkoQRJ8YV8hUv5sElE8kl3s+x8PIy7TKz4QOa4My6caaV7+j
 EtE8Z4VjRdveZRCd5MNazRQRkQFaSkMi0NUfrzUGF/rSPZY7TpgWbjUAI
 StXE7A/xH9P4pUDt5Vol1Bj0bGWunyZrqpk5Ew1X79kMT7fyv5aFszCFx
 RE2IB6tVe9N+IhLqCIdInCJqgv4K9y+MuWL5MpDGQMYiKRgcYAL0oX7DV
 3Q/jPIR81uOtrr+lEu81j0kWQqZtxdUXhz8QlfyLWlE7CaC7+uBUq03nl
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OBbPvA1V
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Use 5KB TX packet buffer
 per queue for TSN mode
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

Update IGC_TXPBSIZE_TSN to allocate 5KB per TX queue (TXQ0-TXQ3)
as recommended in I225/I226 SW User Manual Section 7.5.4 for TSN
operation.

Fixes: 0d58cdc902da ("igc: optimize TX packet buffer utilization for TSN mode")
Reported-by: Bouska, Zdenek <zdenek.bouska@siemens.com>
Closes: https://lore.kernel.org/netdev/AS1PR10MB5675DBFE7CE5F2A9336ABFA4EBEAA@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 498ba1522ca4..9482ab11f050 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -443,9 +443,10 @@
 #define IGC_TXPBSIZE_DEFAULT ( \
 	IGC_TXPB0SIZE(20) | IGC_TXPB1SIZE(0) | IGC_TXPB2SIZE(0) | \
 	IGC_TXPB3SIZE(0) | IGC_OS2BMCPBSIZE(4))
+/* TSN value following I225/I226 SW User Manual Section 7.5.4 */
 #define IGC_TXPBSIZE_TSN ( \
-	IGC_TXPB0SIZE(7) | IGC_TXPB1SIZE(7) | IGC_TXPB2SIZE(7) | \
-	IGC_TXPB3SIZE(7) | IGC_OS2BMCPBSIZE(4))
+	IGC_TXPB0SIZE(5) | IGC_TXPB1SIZE(5) | IGC_TXPB2SIZE(5) | \
+	IGC_TXPB3SIZE(5) | IGC_OS2BMCPBSIZE(4))
 
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
-- 
2.43.0

