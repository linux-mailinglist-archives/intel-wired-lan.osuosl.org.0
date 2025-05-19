Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD8BABC1F0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 17:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08E3B81E8A;
	Mon, 19 May 2025 15:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wqn4Vmoc12RO; Mon, 19 May 2025 15:15:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2E2781CBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747667737;
	bh=PqIpt5RhECTJVaTbln8f1SEZjBm73IQZjCr7jD+m87w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Bmu+uCLU5E3DfmhlO/j56BybxjKoym8EB4qebEmhWZTldVoC53vcsWVPHzcmnlclW
	 EpqKi8xJ9rpK3tAYA6+Oeywz5NOJhhPEkaSnRKmiJF+PKcrZiC6rBd2qC5w9s9V6bp
	 x1rKf3jdSK8ghDOicnMicPxrrdOoICgyjm7BaoaaInr5jsTnAOTH5etztQq2jg6dPQ
	 O6SoEearxfbXhNqW9V1wNvqTSdxsCn0fHdRUrsgAM1MDBi7VYeQUYbX4SQU7J3B0Lu
	 hd+Mjv3UptRKu9ZkpBI1wxPPxfVsfn6jTpGGW5gxe0OcdRJ7OdhTFnzRxiOVUQsDxh
	 zjyOdyHOkNcaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2E2781CBA;
	Mon, 19 May 2025 15:15:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 81E97193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 678B681DBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_oTDTAfIEhI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 07:20:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D6C380DF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D6C380DF0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D6C380DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:38 +0000 (UTC)
X-CSE-ConnectionGUID: 60qlJ2oYSyGQGdBydHGpWA==
X-CSE-MsgGUID: sbU0XKyyQSWfWx/LIZh4qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="72030688"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72030688"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:20:37 -0700
X-CSE-ConnectionGUID: YyPRf72qRi2gzLQRKklzKA==
X-CSE-MsgGUID: mvKcYUVhR9WuQj+iar3zTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139798719"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa007.jf.intel.com with ESMTP; 19 May 2025 00:20:34 -0700
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 19 May 2025 03:19:04 -0400
Message-Id: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 May 2025 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747639238; x=1779175238;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y+C59h/qCKqtCEBhRtM+dfq6uWu6DUbfGTucGvd/FNA=;
 b=Gsb3TWj/1q8wyF9haA6I+WU6fzs8np1GRtUnNGLTm0DNp5K5I5DLkb3Z
 X2Dpy38xMiLkxjTjlddQGLQFmYcrHohd4DKhc35vc4noi02Le/0vzWCQZ
 18xKgkSOL45FhjkSKjtodEb8tU3SENnXJcK0AYNWGP8suRphKTY2mxPI+
 sBIypJDi661F6grmrX/6Ks0WKZz/5v5SmdorEkO9fegg4xxAxtNc0BmyE
 EcHoWxZZncL5auTjubccG2KBiPFycaW2Iut4f2Im04Zw4aKfjJwxhD8kA
 QYVELmQO8/vX7mGooXAHtFMHNoK/mbzhxw6M22PM9OZmKNCINBTNTzZOc
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Gsb3TWj/
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/7] igc: harmonize queue
 priority and add preemptible queue support
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

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

MAC Merge support for frame preemption was previously added for igc:
https://patchwork.kernel.org/project/netdevbpf/patch/20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com/

This series builds on that work and adds support for:
- Harmonizing taprio and mqprio queue priority behavior, based on past
  discussions and suggestions:
  https://lore.kernel.org/all/20250214102206.25dqgut5tbak2rkz@skbuf/
- Enabling preemptible queue support for both taprio and mqprio, with
  priority harmonization as a prerequisite.

Patch organization:
- Patches 1–3: Preparation work for patches 6 and 7
- Patches 4–5: Queue priority harmonization
- Patches 6–7: Add preemptible queue support

v3 changes:
- v2: https://patchwork.kernel.org/project/netdevbpf/cover/20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com/
- Patch 8 fixes a HW limitation and should precede preemption support. Merged into patch 6. (Simon)
- Add Reviewed-by tag from Simon for patch 1-5

v2 changes:
- v1: https://patchwork.kernel.org/project/netdevbpf/cover/20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com/
- Move RXDCTL macros for consistency with TXDCTL (Ruinskiy, Dima)
- Rename RX descriptor control macros with RXDCTL prefix (Ruinskiy, Dima)
- Add FPE acronym explanation in commit description (Loktionov, Aleksandr)
- Add Reviewed-by tag from Aleksandr for patch 6

Faizal Rahim (7):
  igc: move TXDCTL and RXDCTL related macros
  igc: add DCTL prefix to related macros
  igc: refactor TXDCTL macros to use FIELD_PREP and GEN_MASK
  igc: assign highest TX queue number as highest priority in mqprio
  igc: add private flag to reverse TX queue priority in TSN mode
  igc: add preemptible queue support in taprio
  igc: add preemptible queue support in mqprio

 drivers/net/ethernet/intel/igc/igc.h         |  33 +++++-
 drivers/net/ethernet/intel/igc/igc_base.h    |   8 --
 drivers/net/ethernet/intel/igc/igc_defines.h |   1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  12 +-
 drivers/net/ethernet/intel/igc/igc_main.c    |  56 ++++++---
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 116 ++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_tsn.h     |   5 +
 7 files changed, 188 insertions(+), 43 deletions(-)

--
2.34.1

