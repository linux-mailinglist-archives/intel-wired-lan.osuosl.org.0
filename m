Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA390AEF089
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 10:10:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 236C960DD9;
	Tue,  1 Jul 2025 08:10:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ItXKzv2wv3RR; Tue,  1 Jul 2025 08:10:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46381611E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751357432;
	bh=SUtk7KgqvwYjerP1yIVxN8N9EHJms9WtBNXKesQ9JCE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R2BiPt7RIWQMY7guphrjB/sYKpxInv15gI/mGiXMPVfkvjCvoyFL1TvW3dLK/nTHi
	 l5UxK1SEWOtvvarvweti7k+nh11QduDHwN4AVh1xbUsaw521OOZauZrVljelAbqdkh
	 +OzcyBJrfdNj2b0hK8RZ8BYRSUGaHK6lFuAvAg9xNHDBlTl+8NJORV4r0hUwkfdwTK
	 wi6eaNo8Jvvm3LOglDi568tN4OxICrRVhQLcHIac6Qjm6OqUnVVLd20Hcdzj7i/PdP
	 1chXPodxvyisYzjJMuHr9Z7gcQv4tXqVUBNCo7pt8NxzmeyttuVNXg9LCqrlsZgNzL
	 Gwp9bQ1j7HDhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46381611E3;
	Tue,  1 Jul 2025 08:10:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D8F2197
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 08:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EE3D60DBC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 08:10:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BGjyxhc-qLZM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 08:10:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 531E560B9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 531E560B9D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 531E560B9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 08:10:28 +0000 (UTC)
X-CSE-ConnectionGUID: U+Vg9GZyRbC/9O4KyzdUtg==
X-CSE-MsgGUID: vDaBM32vS0+j/Ce9U21pdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="64208502"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="64208502"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 01:10:28 -0700
X-CSE-ConnectionGUID: FfQM4HJ7SaOljEvwIOLLnw==
X-CSE-MsgGUID: gsGXBrZtTReyIxWpf9dV0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="154237068"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa008.fm.intel.com with ESMTP; 01 Jul 2025 01:10:21 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Stanislav Fomichev <sdf@fomichev.me>,
 Zdenek Bouska <zdenek.bouska@siemens.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Tue,  1 Jul 2025 16:09:55 +0800
Message-Id: <20250701080955.3273137-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751357429; x=1782893429;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7sZ8JpEpsLeAlSytAyUZab5HbOa8V6855ztPImxUrcQ=;
 b=BVqsMN/ovsInwKYr2BiDPiLUFkw1oJdjxHEhnr5h1dDefZWrtH1qqYpN
 +AJpqcsMYB7lJ+slGnVZCalxvc2W16fkqDALz5K5b+euJQYFlI7d32qDN
 4O8h2T8fdGexLnsAAVqerGLJWJa5WXfYmOfSbh7juWdCpmOTwTVCUw1rK
 jaV4Sypa7hFmKQ93CrlbRtOTxSZjR7qEjkIPJ7FGHq1g/nIlpnnVwxFif
 8AsXjy+tUd4AxMcfjyf75Bdo4JJzeHfKAkvB9WE3acmQjaOw3MBreZ17w
 ZB6/C0aWpk6qnHYJaMR/2K3SH/A66rCg0OPFTq0RoSSsPWSgBmqEIYLD+
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BVqsMN/o
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix data_meta pointer
 adjustment for XDP zero-copy
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

Remove the unnecessary increment of the data_meta pointer to ensure the
metadata area is correctly presented to XDP program and to avoid accidental
overwriting of device-reserved metadata by XDP programs.

Previously, the data_meta pointer was incorrectly advanced when handling
hardware timestamps for XDP zero-copy frames. Since the HW timestamp is no
longer copied into a local variable, there is no need to adjust data_meta.

Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
Reported-by: Zdenek Bouska <zdenek.bouska@siemens.com>
Closes: https://lore.kernel.org/netdev/AS1PR10MB5675499EE0ED3A579151D3D3EBE02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 686793c539f2..8362e789777e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2829,11 +2829,6 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 			ctx->rx_ts = bi->xdp->data;
 
 			bi->xdp->data += IGC_TS_HDR_LEN;
-
-			/* HW timestamp has been copied into local variable. Metadata
-			 * length when XDP program is called should be 0.
-			 */
-			bi->xdp->data_meta += IGC_TS_HDR_LEN;
 			size -= IGC_TS_HDR_LEN;
 		} else {
 			ctx->rx_ts = NULL;
-- 
2.34.1

