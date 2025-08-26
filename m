Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 371FBB36FF7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0C7B8072B;
	Tue, 26 Aug 2025 16:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijBksbTTWOQa; Tue, 26 Aug 2025 16:20:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A85DC8072F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756225236;
	bh=wolm1EOIwVTR2pcniaviWxvSOfG3wXRGXARC28t4nj0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jv9cavI57+BfseQJutMZDzRw/pIvGjuHxXig+e23xNkrhwWqwhmvEkCIN0jSq0/gu
	 +m4pomNFkoqjYZ5PqpYmplDWywuyGsk04rlhmLPygLRBEG6VZfOEMdI/PWMp6SCtNN
	 c7dBEuIlW214GcfzacyOXj9hdotFANFhDpTlrg6SYcAkSqZESXje5AChxkWfi2LRhS
	 ld2Kb9iUWa3kac75Id8iijfgN1iJ0miJOtxR2BiMtPwII38dJxv1xaGkaRnVZf3lLM
	 v3equWbUJtnjX8/2giCA80p29BQpqEqOM9x83CGQ73xsXiOEovDyONTO2i0qbrW75O
	 XDvMXRGyd5x+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A85DC8072F;
	Tue, 26 Aug 2025 16:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 07E1FB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E194780729
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4KArgWZPp9th for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:20:34 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Aug 2025 16:20:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B664D80725
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B664D80725
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B664D80725
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:33 +0000 (UTC)
X-CSE-ConnectionGUID: AtnX97MTR82mQSSyCLveKA==
X-CSE-MsgGUID: gZhW7fqVQeujNG8t+1xJUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="46044853"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="46044853"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 09:13:27 -0700
X-CSE-ConnectionGUID: yOy3j64zTuW3pL1C0sTFrA==
X-CSE-MsgGUID: x/6I4/jBRouXbhqLejwyhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200562024"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa002.jf.intel.com with ESMTP; 26 Aug 2025 09:13:22 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 26 Aug 2025 17:54:54 +0200
Message-ID: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756225234; x=1787761234;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fQ3qr7gSKNiOWy7nrlKhfuZMLVGkbuKfJR1k3nNyANI=;
 b=DKmTC/pHwVt61qEwl2huv5RZXChatgys5Mv99ybVn5g7Dh9ODNYK/nRK
 z/h5psqYcVbMbOFKquykiT8ZmtaHy6gyI0ad72V9ea4jXiUs5TtW447r9
 FHMdHoyvsB8UN93qVanmJCeTwHbidlEpOzX2dhmoiZ3d2cuBQFnveyJ5a
 RkZUnHr8ZgbbW2CR+4DMunZo+DfLRSCfIIzFT9YKTD/ph+sGnjeEsK5IR
 2gTyFL1eOD0JJvjK2MCNjJBxJq/2sWyOooshI3CDegRAO/UdY5Nalf+S7
 lo4rj3atRBF6lrWpZWKOBm7a0g9wBFzJCCnXBWHR2nLc3hNKfKw5PI4+5
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DKmTC/pH
Subject: [Intel-wired-lan] [PATCH iwl-next v5 00/13] idpf: add XDP support
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

Add XDP support (w/o XSk for now) to the idpf driver using the libeth_xdp
sublib. All possible verdicts, .ndo_xdp_xmit(), multi-buffer etc. are here.
In general, nothing outstanding comparing to ice, except performance --
let's say, up to 2x for .ndo_xdp_xmit() on certain platforms and
scenarios.
idpf doesn't support VLAN Rx offload, so only the hash hint is
available for now.

Patches 1-7 are prereqs, without which XDP would either not work at all or
work slower/worse/...

Alexander Lobakin (9):
  xdp, libeth: make the xdp_init_buff() micro-optimization generic
  idpf: fix Rx descriptor ready check barrier in splitq
  idpf: use a saner limit for default number of queues to allocate
  idpf: link NAPIs to queues
  idpf: add support for nointerrupt queues
  idpf: use generic functions to build xdp_buff and skb
  idpf: add support for XDP on Rx
  idpf: add support for .ndo_xdp_xmit()
  idpf: add XDP RSS hash hint

Michal Kubiak (4):
  idpf: add 4-byte completion descriptor definition
  idpf: remove SW marker handling from NAPI
  idpf: prepare structures to support XDP
  idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq

 drivers/net/ethernet/intel/idpf/Kconfig       |   2 +-
 drivers/net/ethernet/intel/idpf/Makefile      |   2 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  31 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 140 ++++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   1 -
 drivers/net/ethernet/intel/idpf/xdp.h         | 172 +++++++
 include/net/libeth/xdp.h                      |  11 +-
 include/net/xdp.h                             |  28 +-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  11 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  67 ++-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 110 ++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 424 ++++++++--------
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  11 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 173 ++++---
 drivers/net/ethernet/intel/idpf/xdp.c         | 454 ++++++++++++++++++
 17 files changed, 1217 insertions(+), 427 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.c

---
From v4[0]:
* 08/13: fix rare crashes when the number of XDPQSs < nr_cpu_ids -- merge
         artefacts after rebasing on top of Joshua's recent changes;
* 09/13: fix "suspicious RCU usage" during rmmod when lockdep is enabled.

From v3[1]:
* 01/13: make the xdp_init_buff() micro-opt generic, include some
         bloat-o-meter and perf diffs (Simon, Kees);
* 08/13: don't include XDPSQs in Ethtool's 'other_count' (Ethtool
         channels are interrupts!) (Jakub);
* 11/13:
  * finalize XDPSQs a bit earlier on Rx;
  * show some bloat-o-meter and performance diffs for
    __LIBETH_WORD_ACCESS (Jakub).

From v2[2]:
* rebase on top of [3] to resolve conflicts in Tony's tree;
* 02:
  * harmonize maximum number of queues to not create more Tx queues than
    completion queues or more Rx queues than buffer queues / 2;
  * fix VC timeouts on certain steppings as there processing a lot of queues
    can take more time than the minimum timeout of 2 seconds;
* 03: fix RTNL assertion fail on PCI reset.

From v1[4]:
* drop the libeth_xdp part (submitted separately and accepted);
* fix some typos and kdocs (Jakub, Maciej);
* pick a couple RBs (Maciej);
* 03: create a convenience helper (Maciej), fix rtnl assertion fail;
* 04: since XDP uses its own queue cleaning routines, don't add 4-byte
      completion support to the skb code;
* 05: don't use old weird logic with negative descriptor index (Maciej);
* 06: fix invalid interrupt vector counting in certain cases;
* 07: fix cleanup timer is fired after the queue buffers are already freed;
* 08: fix XDP program removal in corner cases such as PCI reset or
      remove request when there's no active prog (from netdev_unregister());
* 10: fix rare queue stuck -- HW requires to always have at least one free Tx
      descriptor on the queue, otherwise it thinks the queue is empty and
      there's nothing to send (true Intel HW veteran bug).

Testing hints: basic Rx and Tx (TCP, UDP, VLAN, HW GRO on/off, trafficgen
stress tests, performance comparison); xdp-tools with all possible actions
(xdp-bench for PASS, DROP, TX, REDIRECT to cpumap, devmap (inc self-redirect);
xdp-trafficgen to double-check XDP xmit). Would be nice to see a perf
comparison against ice (in percent) (idpf must be plugged into a PCIe 4+).

[0] https://lore.kernel.org/intel-wired-lan/20250811161044.32329-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/intel-wired-lan/20250730160717.28976-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/intel-wired-lan/20250624164515.2663137-1-aleksander.lobakin@intel.com
[3] https://lore.kernel.org/intel-wired-lan/20250725184223.4084821-1-joshua.a.hay@intel.com
[4] https://lore.kernel.org/intel-wired-lan/20250305162132.1106080-1-aleksander.lobakin@intel.com
-- 
2.51.0

