Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F845B16411
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 18:07:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D16060E87;
	Wed, 30 Jul 2025 16:07:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_nPYEGQ-APE; Wed, 30 Jul 2025 16:07:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FF6C613DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753891670;
	bh=HxVYmtY68kNjpeQcTOkEYL2rYIeZ8H/UzWKkvFS+45U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e3F6Gafyk1aCPZvheHpomhL8ljLefii6v/xm48GWysKVpPbHJyScg9wS0ImfL9aBF
	 TJUiqHgcanzM7LFmEeoT3KbrnP7AzgLs8MWPrpFyAbIs0qN19s08Z5eCEaQt/l0Yy6
	 b9Yh1nfRZOC2ZnuqYOsYQe3hScAS08OGJsCc3y3BRlrEcyoi2YKYo6iSyrWKMeTogW
	 inKahVjjdVrn5YWjPcks98oIZFDeAtbKJiimvA12tkHKXRejaaBJrXes/Ca6vkmLnG
	 3v2qshgB4cmaL4TYAoCNhBDEXPjt5lSM5IzDsICxyUwbCTBCqyDKTPcsOgfkd1nhnV
	 l+rJbHCQbCVKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FF6C613DB;
	Wed, 30 Jul 2025 16:07:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C4857186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A36018226D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:07:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F0aaNLMTl4g0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 16:07:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 727168224C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 727168224C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 727168224C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:07:47 +0000 (UTC)
X-CSE-ConnectionGUID: HOB29pwxRxWzN8F5pMp7SA==
X-CSE-MsgGUID: 5zus6+TaRg2ZGiUFEkucyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67278689"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="67278689"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 09:07:46 -0700
X-CSE-ConnectionGUID: SgaWh9f9SkKngM83EI++Dg==
X-CSE-MsgGUID: Gcl3eqohTU2LqAwsSMukwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="163812831"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 30 Jul 2025 09:07:42 -0700
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
Date: Wed, 30 Jul 2025 18:06:59 +0200
Message-ID: <20250730160717.28976-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753891668; x=1785427668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NkE32OUza/abY3/2RhJRNJXE/p1m9qtlJckwPiJMCNU=;
 b=HZdCLOLEgb+L1vMe6TBPrzQadqyk8Sr2CKcmMnb9VS6RY/cbNOva6bbC
 5GtSiy2EZeQyVVxIsDHUr7WxmH38TG6N8QXbDvGPtYDDTi6Ib0WkgB1UP
 gM3xFy8TW5FM8W7XgPy8j7SnYcKQT3oVuxcaSCmq5xSxqoTQC2C7qgbL5
 oCCXzPx//tmaB3sjJiTms94wvIShmke2GqaSvqjkwCV20xD0CrvngchXH
 OSKt7lunaJ/Q5Mx7roKSaprixNHunXqcb2jTFukmO6/fKoEzMKoum184r
 wLC0KfG7/vsLPBIex/vH6m7073V70O2UVZLPzNA2Bx6tmK935dcxpe1+I
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HZdCLOLE
Subject: [Intel-wired-lan] [PATCH iwl-next v3 00/18] idpf: add XDP support
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

Patches 1-6 are prereqs, without which XDP would either not work at all or
work slower/worse/...

Alexander Lobakin (8):
  idpf: fix Rx descriptor ready check barrier in splitq
  idpf: use a saner limit for default number of queues to allocate
  idpf: link NAPIs to queues
  idpf: add support for nointerrupt queues
  idpf: use generic functions to build xdp_buff and skb
  idpf: add support for XDP on Rx
  idpf: add support for .ndo_xdp_xmit()
  idpf: add XDP RSS hash hint

Joshua Hay (6):
  idpf: add support for Tx refillqs in flow scheduling mode
  idpf: improve when to set RE bit logic
  idpf: simplify and fix splitq Tx packet rollback error path
  idpf: replace flow scheduling buffer ring with buffer pool
  idpf: stop Tx if there are insufficient buffer resources
  idpf: remove obsolete stashing code

Michal Kubiak (4):
  idpf: add 4-byte completion descriptor definition
  idpf: remove SW marker handling from NAPI
  idpf: prepare structures to support XDP
  idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq

 drivers/net/ethernet/intel/idpf/Kconfig       |    2 +-
 drivers/net/ethernet/intel/idpf/Makefile      |    2 +
 drivers/net/ethernet/intel/idpf/idpf.h        |   31 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |    6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  217 ++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |    1 -
 drivers/net/ethernet/intel/idpf/xdp.h         |  172 +++
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   11 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |    6 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   67 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  171 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 1142 +++++++----------
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   11 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  173 +--
 drivers/net/ethernet/intel/idpf/xdp.c         |  452 +++++++
 16 files changed, 1541 insertions(+), 924 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.c

---
Sending to get reviews and to trigger Intel's validation.

Joshua's series[0] is included and goes first to resolve conflicts.
It is *not* a part of the actual series.

From v2[1]:
* rebase on top of [0] to resolve conflicts in Tony's tree;
* 02:
  * harmonize maximum number of queues to not create more Tx queues than
    completion queues or more Rx queues than buffer queues / 2;
  * fix VC timeouts on certain steppings as there processing a lot of queues
    can take more time than the minimum timeout of 2 seconds;
* 03: fix RTNL assertion fail on PCI reset.

From v1[2]:
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
comparison against ice (in percent) (idpf must be plugged into a PCIe 5.x).

[0] https://lore.kernel.org/intel-wired-lan/20250725184223.4084821-1-joshua.a.hay@intel.com
[1] https://lore.kernel.org/intel-wired-lan/20250624164515.2663137-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/intel-wired-lan/20250305162132.1106080-1-aleksander.lobakin@intel.com
-- 
2.50.1

