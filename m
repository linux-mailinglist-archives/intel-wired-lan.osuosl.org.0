Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB75C93B558
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C99D240DE4;
	Wed, 24 Jul 2024 16:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Idp_BgVeHZT4; Wed, 24 Jul 2024 16:58:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98CBC40DF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721840313;
	bh=Gzo0LwaY7UnzhLp3hNcuzVDfIMHQoLU/WhBJsFm366E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Opx/bmzQB2Qtt4nz0lfBYz+bOkgIqPDvvOmEddXbfWJ+YVgup5LUwd3zJdAKYvv6u
	 HicQYLYmUtQtEjVupkJgGqiIAeDfNQE4TwwWb8b7bFmHO1PmotCfya4qY1ehwfsD39
	 IJ09fnicSXebxTVgNE3rIY05NLsm0JHCIpg3YRuL2NYTAIRfHffi9nc12DjTS+5jiy
	 YaLHKe0YsxM3326hjnTmu1e0udXmtE7x8waK1Pv6HOhrYC4u4X1LfkWVMJX0VDQpYX
	 97JG3twL1eskmWRRSA70YHm5B7T9fFcgX46TXOd1sQmc54jkUPUz4aL8F2zEZlyd8c
	 jaK2xDFOUK39w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98CBC40DF2;
	Wed, 24 Jul 2024 16:58:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C04751BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA34B814B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtnUrWpqUCI6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:58:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B68DF813ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B68DF813ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B68DF813ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:30 +0000 (UTC)
X-CSE-ConnectionGUID: SzSu/QNOTw6WcpJGyjRG7Q==
X-CSE-MsgGUID: z5scyZzdQZuogCtUO5lozw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30679729"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30679729"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:58:30 -0700
X-CSE-ConnectionGUID: JaAMf6SKT36fJrtSfnXnFQ==
X-CSE-MsgGUID: M9OmluhuRcSSUQtvTT9B2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="56960617"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2024 09:58:25 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3B34B28785;
 Wed, 24 Jul 2024 17:58:23 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 18:48:31 +0200
Message-ID: <20240724164840.2536605-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721840311; x=1753376311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rsVz+LhgSFt8cu91zlcAvS+TOmocgJJ/c2yTNsJ47XE=;
 b=CA9t1JRcnAc/vXLSSV+LEkXjJ1RRmxgnnFKbe72p2PTzJabpxAnr2OKn
 mzS10ltr52S8L+jbLH9wow1h9joY08ed7Etj4u3gIYqvPNwkP7UC0IHP/
 0Z7+6MeKPpmm5uhw8NMQzVgCIgIcqU3oiqfgrz4m0LOq2zLOu9KLGc6t1
 FORPlsRPrRC2BBIQPxaPwN/JuIF2d86mY8VjmLfmvL/eg4oCjGpOXVrNc
 rdZfMdFSyAhe8SWhwa+wQ3FLUZX2H1JuksRp9t6ShEvOhc8vg9mHUONaV
 0DbJcE8kEWqNEQlZFwR3r9eDR4uIuC8kuJHeHdMgY7irnbDK+GOluluE7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CA9t1JRc
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/6] ice: fix synchronization
 between .ndo_bpf() and reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF reset can be triggered asynchronously, by tx_timeout or by a user. With some
unfortunate timings both ice_vsi_rebuild() and .ndo_bpf will try to access and
modify XDP rings at the same time, causing system crash.

The first patch factors out rtnl-locked code from VSI rebuild code to avoid
deadlock. The following changes lock rebuild and .ndo_bpf() critical sections
with an internal mutex as well and provide complementary fixes.

v1: https://lore.kernel.org/netdev/20240610153716.31493-1-larysa.zaremba@intel.com/
v1->v2:
* use mutex for locking
* redefine critical sections
* account for short time between rebuild and VSI being open
* add netif_queue_set_napi() patch, so ICE_RTNL_WAITS_FOR_RESET strategy can be
  dropped, no more rtnl-locked code in ice_vsi_rebuild()
* change the test case from waiting for tx_timeout to happen to actively firing
  resets through sysfs, this adds more minor fixes on top

Larysa Zaremba (6):
  ice: move netif_queue_set_napi to rtnl-protected sections
  ice: protect XDP configuration with a mutex
  ice: check for XDP rings instead of bpf program when unconfiguring
  ice: check ICE_VSI_DOWN under rtnl_lock when preparing for reset
  ice: remove ICE_CFG_BUSY locking from AF_XDP code
  ice: do not bring the VSI up, if it was down before the XDP setup

 drivers/net/ethernet/intel/ice/ice.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c |  11 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  | 171 +++++++---------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  10 +-
 drivers/net/ethernet/intel/ice/ice_main.c |  47 ++++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  18 +--
 6 files changed, 102 insertions(+), 157 deletions(-)

-- 
2.43.0

