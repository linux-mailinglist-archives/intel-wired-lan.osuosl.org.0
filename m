Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEED9567EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 12:14:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71DFB404A9;
	Mon, 19 Aug 2024 10:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GkSllYPpgIkK; Mon, 19 Aug 2024 10:14:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16A5A404C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724062470;
	bh=JpvdqqT5/q1zNJqa65+vT9j7pmwmJZPixpCPobD+4Ac=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QXUg56ya2wzAp9hKIyPJoYvap0UxYDjPJb8CnRJM76MtVuUiG241KofnwPEphfxKT
	 FrulxBBlVbXuv7phmjANjyEmK5cbleaYqAT9MuNV3R1DId5xCD/4G8YwX/aJ7YVwYc
	 FyaC2taH+aeUJayRMbAl9f5DNw3AhUqnl2dWI/Tm5TD6ZCo07TvNyqxH67tSgbIft8
	 gg9lyONKEZ10heNrwh8SINcDcI/xxVNxxzHElQWKXe5OBrGzWTdEpdf6F1S7X7mee6
	 8hHCHUPvWRrJI7mSzndIsufh06nkHjsSAkN1YWzzZ9MvZQQrI3iyspzb+4dRsXqhk1
	 C5W86NLNwnlLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16A5A404C0;
	Mon, 19 Aug 2024 10:14:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 293CB1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2558C60763
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l5iTpHHc2xsQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 10:14:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E9846072A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E9846072A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E9846072A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:26 +0000 (UTC)
X-CSE-ConnectionGUID: 14pTeEQfT8yvOd8JTQbryg==
X-CSE-MsgGUID: yEfZPoZTTZOC4ARRB/a/eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="22443454"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="22443454"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 03:14:27 -0700
X-CSE-ConnectionGUID: HoSDcKyeSpi9Ww5gdWiYMg==
X-CSE-MsgGUID: trlfEET5Sq2x8vkfSmN16A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="65000841"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 19 Aug 2024 03:14:19 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6EC1E135E8;
 Mon, 19 Aug 2024 11:14:17 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 19 Aug 2024 12:05:37 +0200
Message-ID: <20240819100606.15383-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724062468; x=1755598468;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s0zAxlyXNZ+O9S3b8lRDOQsTtc9BspZrt7J09VPJZ3k=;
 b=d8cJroa8+lu89395gPJT2f2gDLcrE0jLdymBEGZeLrNv5mPFvG2phxD0
 cwlNpfaCGE3eqDNAz6tUgTLfulQiIc8WF8XGGvF0ps/QTAG8Z3JwMD/Gw
 jmPT5AXtw9wHnrzX1Hg67Vzf5G7vd4rcTwxSmHCZPVrUzx9sxWO6uanUP
 UdpzOop15he+qHqGK3oEqShNrlUZHTEBEdFG621xZuqT1npFF73itKUFy
 PCc1Cv/uZLz5cicOnb2g1RxqNkyqFSwhDHylnvyj8gWVprQP5dDrw46yc
 JzTde81w7NtPMxXJJGehSjga0vJmr68X34NzXh/BbRGBuE5FmfAtxk6se
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d8cJroa8
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/6] ice: fix synchronization
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

v2: https://lore.kernel.org/netdev/20240724164840.2536605-1-larysa.zaremba@intel.com/
v2->v3:
* deconfig VSI when coalesce allocation fails in ice_vsi_rebuild (patch 2/6)
* rebase and resolve conflicts in patch 3 and 4
* add tags from v2

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
 drivers/net/ethernet/intel/ice/ice_lib.c  | 179 ++++++++--------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  10 +-
 drivers/net/ethernet/intel/ice/ice_main.c |  47 ++++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  18 +--
 6 files changed, 106 insertions(+), 161 deletions(-)

-- 
2.43.0

