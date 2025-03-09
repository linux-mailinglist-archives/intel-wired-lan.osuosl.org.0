Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B87A58350
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Mar 2025 11:48:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B29560762;
	Sun,  9 Mar 2025 10:48:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LLfUPrjuEORR; Sun,  9 Mar 2025 10:48:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8385660746
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741517304;
	bh=YcmIKZXLQukbVhSf/JNgXSh7TbSilucKt3VmMFcpj+s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z/+XCyC+SVPYZlYyNyznWtydSojf8xPq6xlzYQ9zMhL6HY9XkPw4eIaOFO3UT6WBA
	 uzX6YIYS3Cqp5eE0wO/9l1ZOH60ug4kX8b9jXHyzxko6/H05dbFaV8EI2bMVYxR1hM
	 pQDGMLOJncT6MRYXrAzn3SmOosocisgR8EQXj5WkWgFNzJnIVHzooYVDa1kKjTReKB
	 /ixA3lXAMkOUFLTCJfNwhzHDElMxZlZo6TxKVv+OhT/9++4Bn/uYBRh0qYJLzvLSww
	 zrB+75+hDuVeRCS4ktpdxy+c5Scvr4vJjQsogJqpqGUFh4nY9J52mnS5X+Cufsi49d
	 RHWkCshvlf/ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8385660746;
	Sun,  9 Mar 2025 10:48:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CA2F1C1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5FCBC400B9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ChcXeie1LyOC for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Mar 2025 10:48:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 75DBD400AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75DBD400AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75DBD400AC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:21 +0000 (UTC)
X-CSE-ConnectionGUID: FmJIyL+zRtWQWe3IUwNv2Q==
X-CSE-MsgGUID: UREWywRtQmKNIpLlUGNT4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11367"; a="42636123"
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="42636123"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2025 03:48:21 -0700
X-CSE-ConnectionGUID: qUiAYvO5T/msA+rP2OOg+w==
X-CSE-MsgGUID: p13HVF5gQh6tQD9QU4MA+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="124655099"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa003.jf.intel.com with ESMTP; 09 Mar 2025 03:48:13 -0700
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
Date: Sun,  9 Mar 2025 06:46:41 -0400
Message-Id: <20250309104648.3895551-8-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741517302; x=1773053302;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ij2fIraKDwf5/gzdQZNpLgFH8xiF4vMpUeJsnouOpmo=;
 b=U850VBpe1CVimmQCwE+KJOA8gMZrEQXnZBH+cQsAVYdfIBmsVgQnTZTZ
 3bQ0fifKy5HSQRAiMt7CPWKU/GZtKzxlNi93G2DYwF5su3GtUqLHv5Cow
 1PMohzwhyEoa99/KRIkwfIfaK3aOyqbc6cHMjupyiGhaVqTCeCzdKMl9K
 i9wzD64z+cqmvse7Lt0KXnqpFJghnay/sRk/kKlbU2TmOsNc+qa0wgUoR
 ml1ey+7Xm7JOKxOXKtwprSmrcvpwOubCa+xoIYy7F52QUZWBn10UG4O0F
 5Ddt66RPhwu3Orp7u5dSOXl49/2nx2OQL1w6ooYH/HNOsJrbrW11Kk7K4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U850VBpe
Subject: [Intel-wired-lan] [PATCH iwl-next v9 07/14] igc: optimize TX packet
 buffer utilization for TSN mode
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

In preparation for upcoming frame preemption patches, optimize the TX
packet buffer size. The total packet buffer size (RX + TX) is 64KB, with
a maximum of 34KB for either RX or TX. Split the buffer evenly,
allocating 32KB to each.

For TX, assign 7KB to each of the four TX packet buffers (total 28KB)
and reserve 4KB for BMC.

References:
I225/I226 SW User Manual Section 4.7.9, Section 8.3.2

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index b180e1497cc5..db937931c646 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -419,8 +419,8 @@
 	IGC_TXPB0SIZE(20) | IGC_TXPB1SIZE(0) | IGC_TXPB2SIZE(0) | \
 	IGC_TXPB3SIZE(0) | IGC_OS2BMCPBSIZE(4))
 #define IGC_TXPBSIZE_TSN ( \
-	IGC_TXPB0SIZE(5) | IGC_TXPB1SIZE(5) | IGC_TXPB2SIZE(5) | \
-	IGC_TXPB3SIZE(5) | IGC_OS2BMCPBSIZE(4))
+	IGC_TXPB0SIZE(7) | IGC_TXPB1SIZE(7) | IGC_TXPB2SIZE(7) | \
+	IGC_TXPB3SIZE(7) | IGC_OS2BMCPBSIZE(4))
 
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
-- 
2.34.1

