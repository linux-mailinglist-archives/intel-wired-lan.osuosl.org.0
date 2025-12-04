Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7966CA253B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 05:41:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D7C360C1F;
	Thu,  4 Dec 2025 04:41:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HNtBkdf8dhvs; Thu,  4 Dec 2025 04:41:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B387960C27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764823294;
	bh=OpgyOkYbWc3Rj6wVyPGAb0UhiliCZMpNfFwAy4KBA0s=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gAI11IpO7k1PxUE97Sb75y1lS4wI9VxDLy+FrjPd7C6CUkr7AGTSCAIgPC5znr47w
	 2TLlgxYzx8q0ZyriCaO/2UCZ0vvB9zIeBhydjhdqUkwBur4AuhVvSLC/2wkFSx1GI6
	 t2RrES78u16nJBRAGucTlOMeob/cLeHoa+7QiGadZPwmWrWyRQUwp/Aa7mk94hM/zA
	 83euwpH2pGDYsLswFqDnmix+L6neMP3x5N31fY2RF9MrI10hFIT5yFrih6yeVZ7nUG
	 bLyi0iOIUkkBJSdyDZsxjzjLMwC4PZaZlSPKTRhqZuRMb7Zckv9V2QTK8NH4WJpOlp
	 TApS3VhQ6yafA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B387960C27;
	Thu,  4 Dec 2025 04:41:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A1175D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 04:41:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93CE3404E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 04:41:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nZzE3vgdgOBe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 04:41:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=chwee.lin.choong@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BDDC9404CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDDC9404CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDDC9404CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 04:41:30 +0000 (UTC)
X-CSE-ConnectionGUID: Hge4eRlIRQqGoJuvBRo4dQ==
X-CSE-MsgGUID: cfiLefLFR6SwoWPZyu5vJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65830533"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="65830533"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 20:41:30 -0800
X-CSE-ConnectionGUID: tY188lS6TIWhEgQ7hypAlA==
X-CSE-MsgGUID: VNU1mn/lQXiGpuqnF1h2ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194703060"
Received: from p2dy149cchoong.png.intel.com ([10.107.243.50])
 by orviesa009.jf.intel.com with ESMTP; 03 Dec 2025 20:41:26 -0800
From: Chwee-Lin Choong <chwee.lin.choong@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zdenek Bouska <zdenek.bouska@siemens.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Simon Horman <horms@kernel.org>
Date: Thu,  4 Dec 2025 20:21:50 +0800
Message-ID: <20251204122150.23853-1-chwee.lin.choong@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764823292; x=1796359292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wj1zTlmxZ6w8p5WL1TQZ0TATfR58M5u70uppx+bZhRs=;
 b=O2KteBX7urGpibpHhoMSWXD/VCbM+4DydG6DNyl/k4s8A/wa+xwpIkCK
 Kq9BvHlOmneziXQc6rv9KvXuujAvRl/2t5Cvn0LmSVE9RCGwrkQuXXZY4
 TtEHhW+CoNGwwmAkJhbpEtbRp7bLsPh1OvREknpa1T7feMKlBm6CuyZ3F
 36D494gLuwY6HvVMQKvM5D6b6acPR1PCl/LQYdCeDUjz5mveFRxD1tACl
 s69y9iqKjyGbmwEb8IR+BNdmPAY6oC/ccl7pc0evnhgUr1yBza0uwpkxs
 dr+rygvMHYurVcfGmxie6WgsuHSL6VF4h/3WL+Y/WEyAOev64aNdKFvuV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O2KteBX7
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: Reduce TSN TX packet
 buffer from 7KB to 5KB per queue
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

The previous 7 KB per queue caused TX unit hangs under heavy
timestamping load. Reducing to 5 KB avoids these hangs and matches
the TSN recommendation in I225/I226 SW User Manual Section 7.5.4.

The 8 KB “freed” by this change is currently unused. This reduction
is not expected to impact throughput, as the i226 is PCIe-limited
for small TSN packets rather than TX-buffer-limited.

Fixes: 0d58cdc902da ("igc: optimize TX packet buffer utilization for TSN mode")
Reported-by: Zdenek Bouska <zdenek.bouska@siemens.com>
Closes: https://lore.kernel.org/netdev/AS1PR10MB5675DBFE7CE5F2A9336ABFA4EBEAA@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
---
v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250918183811.31270-1-chwee.lin.choong@intel.com/

changelog:
v1 -> v2 
- Elaborated commit message
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

