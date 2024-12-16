Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4478E9F2A4E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 07:48:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F249640B67;
	Mon, 16 Dec 2024 06:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZjcbMJzpDWev; Mon, 16 Dec 2024 06:48:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 208CA40B40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734331736;
	bh=y2wkeK1HVRVSK05XIKncFhFVPDnUcSDvVOdpNfxudJE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WkGe2Zm+SRGZnQafIV3uJIEdOGIziQXWcUvYyrsHvOhLjLmx7VXW2dfDHEtlfjU31
	 5AWKETjMXu/OnY+f2yGVj910EgLACnzzIQ7tp42GPjHMXLk2zE/Bs/vpTP69K9dyrq
	 j8OMigRZi85l8K1KDk6s2oOeo/bXjaNlQUD1sgojb9EkhxsM+18aARuS0Aif3RCCvQ
	 DXRjG/udtMS7HrArmrhdGf2tTD61/Tr+zc3Ov0wITtwJ9wdtdecYoI4gqHomnHSpsS
	 f9+jds6ii0hsHxSQYzq9tecYCFDn4/7oVuiNJCMJgJ9yRJ1zp1hSPjqS30aOWQbxdj
	 9f/Q4kyghXsZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 208CA40B40;
	Mon, 16 Dec 2024 06:48:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6496AC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5327881BF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:48:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oFZZR1teBiu8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 06:48:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9DE2F81B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DE2F81B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DE2F81B8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:48:52 +0000 (UTC)
X-CSE-ConnectionGUID: W8ifZdmhShqJ/GmlucVtTA==
X-CSE-MsgGUID: gneYCxrkSFaOm02NPER8eQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34848194"
X-IronPort-AV: E=Sophos;i="6.12,237,1728975600"; d="scan'208";a="34848194"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2024 22:48:52 -0800
X-CSE-ConnectionGUID: Qo3+iPYiQk+lYjS+equ3Ng==
X-CSE-MsgGUID: mRUZg2REQ/qZPZ0u3CJ5jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128101855"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa001.fm.intel.com with ESMTP; 15 Dec 2024 22:48:48 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 16 Dec 2024 01:47:13 -0500
Message-Id: <20241216064720.931522-3-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734331733; x=1765867733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lp2ZOST2PsJMRL/3aLQoOskt3ewvhhs0cnvkLwFO9gY=;
 b=NUTbA5BCJIzFgq5LX2MKtkAfOWTHkKNgEIUYZWFjLu+o1Wh0MxtokmAJ
 XVLSRqBix9Q7QtLleqNDdvGjyrJqrMUawAY4a3Kf23OOqgS7X/x3JngQU
 zzRH41kMRcntfYsWVc2HS9WlkPWaZk0xZ6izHQyQIe3TCimvldx/BAAqq
 6aQ0+Brp+pJGB6qdRdfjhrbuxx0t9guSjMKOFz/lXDSf5GVHGswQ2WAUy
 Q3N05al/4l4CCR+SAhuTK0DjHIbfXe5vjwFWui+FyM+o2c2kMp4FsCRpe
 sCWQqnTUz9PUdzW4y2UV00+uKX02Mjp+GULje7OVH2m/lHWoIWNBzIbvN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NUTbA5BC
Subject: [Intel-wired-lan] [PATCH iwl-next 2/9] igc: Optimize the TX packet
 buffer utilization
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

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Packet buffers (RX + TX) total 64KB. Neither RX or TX buffers can be
larger than 34KB. So divide the buffer equally, 32KB for each.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 8e449904aa7d..1f63a523faf2 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -400,7 +400,7 @@
 #define I225_TXPBSIZE_DEFAULT	0x04000014 /* TXPBSIZE default */
 #define IGC_RXPBS_CFG_TS_EN	0x80000000 /* Timestamp in Rx buffer */
 
-#define IGC_TXPBSIZE_TSN	0x04145145 /* 5k bytes buffer for each queue */
+#define IGC_TXPBSIZE_TSN	0x041c71c7 /* 7k bytes buffer for each queue + 4KB for BMC*/
 
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
-- 
2.25.1

