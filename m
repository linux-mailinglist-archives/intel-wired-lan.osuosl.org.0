Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0063CA58353
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Mar 2025 11:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1A05408EA;
	Sun,  9 Mar 2025 10:48:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7msQq8NYmZMJ; Sun,  9 Mar 2025 10:48:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97578408F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741517312;
	bh=1CHITon9hbGu+T+ofpzNmC//G2WE9TaF/tP5qmUQqhg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gDF99exPLnsnGaw1hH4m0vwxm237vCc1AH/+PcG6qwTOG4FpPrLEhdSwBvlVek37m
	 pjogKRVC1GGhxCX+erUXddrdQKgeXGzd81F+cxYWbKj2vNv/5itaZ5z3/s22Kk+VgW
	 8u0LQVuWU+j4YaJfbuvHWtt+M5hhkkyeG72c+MdoA2BY7vqES5MSMNqkaIpP+37R5D
	 wqOKQe344JdbsH0ptzZHw/aWZ56i+CCidD2tYfngUaKAfzBmdBA7eLgw4AEKiXe7nE
	 tnGRgj19uz+IbOmwyCywTp2ufcsXZJHMBxYRN2B+0UHWYprR6xZHxBR1HPz5hsMYzn
	 QGXGg1JhdNndg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97578408F9;
	Sun,  9 Mar 2025 10:48:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 79B9B1E3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6660C400E5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QtB0UbfmpIQr for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Mar 2025 10:48:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5BA3F400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BA3F400B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BA3F400B9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:29 +0000 (UTC)
X-CSE-ConnectionGUID: ta8OjDFURCiQR1wPljCq8Q==
X-CSE-MsgGUID: KgQAPDfTRzOD8xl9+UwzCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11367"; a="42636145"
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="42636145"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2025 03:48:29 -0700
X-CSE-ConnectionGUID: bA9EKfNKRpuXm3mKYtZVlg==
X-CSE-MsgGUID: IHMZ2A0sRnSSqUpzMYSp8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="124655116"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa003.jf.intel.com with ESMTP; 09 Mar 2025 03:48:21 -0700
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
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Sun,  9 Mar 2025 06:46:42 -0400
Message-Id: <20250309104648.3895551-9-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741517310; x=1773053310;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ocq5e0cvJCj6sSblL8b9kb+v9HOHoUW+NcBfEhCLAg4=;
 b=M1s/kDOxblojHQ1GuPsr6t90zOxzQfiQznkh2XqnW7ehhvp+7g72jcSG
 ojRe/au2QGkITfsbxrN84kj3xlaMInQfoLM8l9vb/yKvrq6siYD1Zpb9j
 i17ANUH/ejZFMpNdZSvBJUUoMcKn7coqQJFd5q024NznJD3ID9jrScbk8
 eLJv99KyrZ3+K+4POUIdeLJtdOSPaErL2QS4BGehXbdbDbgk5xvezpQ/V
 6fncbn1tq3Tjq2qlNzqXOdf/E41ZJKsCHggVkl3H9RCM0HcboqP8s03Yt
 G8PjWWFcXZIyKd77DLQC0IQJVFI4RuFx0RE0g/5ZuP/LaOTxLJaeOKT7G
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M1s/kDOx
Subject: [Intel-wired-lan] [PATCH iwl-next v9 08/14] igc: use FIELD_PREP and
 GENMASK for existing RX packet buffer size
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

Prepare for an upcoming patch that modifies the RX buffer size in TSN mode.
Refactor IGC_RXPBSIZE_EXP_BMC_DEFAULT and IGC_RXPBS_CFG_TS_EN using
FIELD_PREP and GENMASK to improve clarity and maintainability. Refactor
both macros for consistency, even though the upcoming patch only use
IGC_RXPBSIZE_EXP_BMC_DEFAULT.

The newly introduced macros follow the naming from the i226 SW User Manual
for easy reference.

I've tested IGC_RXPBSIZE_EXP_BMC_DEFAULT and IGC_RXPBS_CFG_TS_EN before
and after the refactoring, and their values remain unchanged.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index db937931c646..3564d15df57b 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -396,9 +396,20 @@
 #define IGC_RCTL_PMCF		0x00800000 /* pass MAC control frames */
 #define IGC_RCTL_SECRC		0x04000000 /* Strip Ethernet CRC */
 
-/* RXPBSIZE default value for Express and BMC buffer */
-#define IGC_RXPBSIZE_EXP_BMC_DEFAULT	0x000000A2
-#define IGC_RXPBS_CFG_TS_EN		0x80000000 /* Timestamp in Rx buffer */
+/* Mask for RX packet buffer size */
+#define IGC_RXPBSIZE_EXP_MASK		GENMASK(5, 0)
+#define IGC_BMC2OSPBSIZE_MASK		GENMASK(11, 6)
+/* Mask for timestamp in RX buffer */
+#define IGC_RXPBS_CFG_TS_EN_MASK	GENMASK(31, 31)
+/* High-priority RX packet buffer size (KB). Used for Express traffic when preemption is enabled */
+#define IGC_RXPBSIZE_EXP(x)		FIELD_PREP(IGC_RXPBSIZE_EXP_MASK, (x))
+/* BMC to OS packet buffer size in KB */
+#define IGC_BMC2OSPBSIZE(x)		FIELD_PREP(IGC_BMC2OSPBSIZE_MASK, (x))
+/* Enable RX packet buffer for timestamp descriptor, saving 16 bytes per packet if set */
+#define IGC_RXPBS_CFG_TS_EN		FIELD_PREP(IGC_RXPBS_CFG_TS_EN_MASK, 1)
+/* Default value following I225/I226 SW User Manual Section 8.3.1 */
+#define IGC_RXPBSIZE_EXP_BMC_DEFAULT ( \
+	IGC_RXPBSIZE_EXP(34) | IGC_BMC2OSPBSIZE(2))
 
 /* Mask for TX packet buffer size */
 #define IGC_TXPB0SIZE_MASK		GENMASK(5, 0)
-- 
2.34.1

