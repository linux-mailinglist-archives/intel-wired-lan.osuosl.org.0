Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1B7A3CF8A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 03:54:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B69B611B4;
	Thu, 20 Feb 2025 02:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMpOFwlsmA48; Thu, 20 Feb 2025 02:54:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7216611AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740020077;
	bh=L663zWHJAJ0zSwFRe0E4kjWKNAWHc7L/2kdkPLFx/qk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c53+s48roFRzP9Qe+eECtQuLEPp3ZYzIMePoD3JfNAC3YX7afCr7oWV1Wa6CVONW2
	 3pZku8ENd5egaDDBLH2NzuEYmu/oewRCyx3Q+icjB7Q9SLA2y3uk8YRt2mZkXMS3WT
	 x3g15FkmcWPCAs3LzusmgbHEuY7WYIFwxcJSTJr//t4g8IOAKFpVxffl9SN9NsP2Rb
	 A+CQKsmrPMue3Zt0BQb+5MCqorhZeE6H8snehMXzk/QqeHUcYPCojpG4+oEBufvKOv
	 Uhh1nQ4K+hbVZIeWvJYcFksAPVOhpHhQTecTeJeC3ZNmjvWBAnnRPSey4MtQU2ARpM
	 +rYSkFdPbXUdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7216611AE;
	Thu, 20 Feb 2025 02:54:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 467DA194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36414611B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HJl917iWjPO7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 02:54:34 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 717B7611AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 717B7611AE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 717B7611AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: qtrduNOiRtaEZOgoOJM6tg==
X-CSE-MsgGUID: XYtjsSnkTtuoItQi7nIh4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="41041974"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="41041974"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 18:54:34 -0800
X-CSE-ConnectionGUID: EwkMu9iDR0ilK+hqVznZsA==
X-CSE-MsgGUID: HFzUk+/HR9mEDTXCYkmNAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="115104284"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa008.fm.intel.com with ESMTP; 19 Feb 2025 18:54:27 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Wed, 19 Feb 2025 21:53:43 -0500
Message-Id: <20250220025349.3007793-4-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740020074; x=1771556074;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0OdUdx+lahN2+LUJ2jOFDFj83SCLzyn+8zKWv0oeisM=;
 b=lMLD7M57ZCKyK24YXPn1fyteOpIZFsRunzdbNBm3YZyLGpPoOVL+6uYD
 gtLVwXYgRlwFhVxmTDoK27MRJPaSzVnHKqz/HRxdp9Ck4Y3lS5P1Zkjb1
 vbIf8fHh4BV434ALg5oqSbPS2WUty9eGpjFaQ62UT5jkZjlMQ+psToAYD
 4sRP1cr4a34+C2zomMUSVZdvORa+0lUCXB4hA6I3baSYwuDWatdkuHjI3
 P3Qr2KsDJLy8DPmCvOdiOsH19pV6UY88MvjLpDqQzpl95zNwotddPDqNj
 WISOQDieCkkSG0ZXUPSVbJc0/xEbkE7/SK1D8yS+Uoi1czw1jqdr3+/tf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lMLD7M57
Subject: [Intel-wired-lan] [PATCH iwl-next v5 3/9] igc: Optimize the TX
 packet buffer utilization
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

Packet buffers (RX + TX) total 64KB. Neither RX or TX buffers can be
larger than 34KB. So divide the buffer equally, 32KB for each.

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 8e449904aa7d..516ef70c98e9 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -400,7 +400,8 @@
 #define I225_TXPBSIZE_DEFAULT	0x04000014 /* TXPBSIZE default */
 #define IGC_RXPBS_CFG_TS_EN	0x80000000 /* Timestamp in Rx buffer */
 
-#define IGC_TXPBSIZE_TSN	0x04145145 /* 5k bytes buffer for each queue */
+ /* 7KB bytes buffer for each tx queue (total 4 queues) + 4KB for BMC*/
+#define IGC_TXPBSIZE_TSN	0x041c71c7
 
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
-- 
2.34.1

