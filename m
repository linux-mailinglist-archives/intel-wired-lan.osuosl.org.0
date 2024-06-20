Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0113C9106E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 15:56:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94C96846FA;
	Thu, 20 Jun 2024 13:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yJBXt3kjvF0H; Thu, 20 Jun 2024 13:56:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 647D7846FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718891787;
	bh=4iCUU8wbjvQqiD5nUDxOgrwPxNZomUHMbQGEfLqkzLw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4uG9qMGMzTOOsecLLP2+biHLqNY/0k6Wv2BBrwyJVyUg/ewWuEiJF6Nob4ZQFvQmD
	 vjjKGBLvO/yhAwFGOhlOpaHS5fIHLVOcUGfuU43ORdn2T8Zrz6U9yysdKfGSelsPHD
	 KPGR0S337R6sV2HW2h2/mBUj8QY82ppofnQmEWlbzIXRjN4W1z4msM8Wk/5O5J7fA7
	 w7K4ZC6Ugo15nkPLVhha5E1D8xPbiuXbDiRAlTVpH22fbVes5GwG8xdISviGcMRUpg
	 GPj1AyV7hvUKyBP6yvNCsHWWWJAuOhMYwAHRK4d5nkT1bjoUrFt3wLTKL3xKPue27y
	 c0M3dH8EG5jmA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 647D7846FC;
	Thu, 20 Jun 2024 13:56:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF3C61BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAB4742EE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nED4t2ejLSE8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 13:56:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B7C0042E6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7C0042E6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7C0042E6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:22 +0000 (UTC)
X-CSE-ConnectionGUID: DQXcTaAySK+y4C/NziXyOQ==
X-CSE-MsgGUID: zcNjAuv1TtWWqcMCNmcw3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15987761"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15987761"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:56:21 -0700
X-CSE-ConnectionGUID: LgJEYDKKSF+XcN9BD0ATpA==
X-CSE-MsgGUID: DzuNFawVSnGs6JO2uwcUWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="46772031"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jun 2024 06:56:18 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 15:53:33 +0200
Message-ID: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718891783; x=1750427783;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l5CCEC9MovHn87sutgB7KfaIHIgWDh73rpUM0x5SHjk=;
 b=bcvhT40CHtBl6PpB1lCcAhffoZcJ6ARETHjS6fd4hAnwARkMJge0fv4g
 cirJRv258Q00FDUTSunzRCEA0jr/ZXJZrrUjy8P2I5tm1/IAS7v2FHEja
 oBvOpmYkITaS7Qkyf0D0UWrRu0/KUlc0PgrDCDAVa6V4LOrTktZG9WQUS
 uVHw4z6druDsVOLEgJyqE8R9CFaJNHgljIVroN38ZIX6zzeKtKsKAeA68
 KojOzCT9V7mEUH/CKhFQwuMSZn9PkwJlcJJFjrR22NZFEBpBFiFjc42iQ
 +ButB2Zw+Rrxe5XnXEm572BN3ftnjzoWv7F5iaTlG4FW1W6Fr+hTYlbw2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bcvhT40C
Subject: [Intel-wired-lan] [PATCH iwl-next v2 00/14] idpf: XDP chapter I:
 convert Rx to libeth
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
Cc: Mina Almasry <almasrymina@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

XDP for idpf is currently 5 chapters:
* convert Rx to libeth (this);
* convert Tx and stats to libeth;
* generic XDP and XSk code changes, libeth_xdp;
* actual XDP for idpf via libeth_xdp;
* XSk for idpf (^).

Part I does the following:
* splits &idpf_queue into 4 (RQ, SQ, FQ, CQ) and puts them on a diet;
* ensures optimal cacheline placement, strictly asserts CL sizes;
* moves currently unused/dead singleq mode out of line;
* reuses libeth's Rx ptype definitions and helpers;
* uses libeth's Rx buffer management for both header and payload;
* eliminates memcpy()s and coherent DMA uses on hotpath, uses
  napi_build_skb() instead of in-place short skb allocation.

Most idpf patches, except for the queue split, removes more lines
than adds.
Expect far better memory utilization and +5-8% on Rx depending on
the case (+17% on skb XDP_DROP :>).

Alexander Lobakin (14):
  cache: add __cacheline_group_{begin,end}_aligned() (+ couple more)
  page_pool: use __cacheline_group_{begin,end}_aligned()
  libeth: add cacheline / struct layout assertion helpers
  idpf: stop using macros for accessing queue descriptors
  idpf: split &idpf_queue into 4 strictly-typed queue structures
  idpf: avoid bloating &idpf_q_vector with big %NR_CPUS
  idpf: strictly assert cachelines of queue and queue vector structures
  idpf: merge singleq and splitq &net_device_ops
  idpf: compile singleq code only under default-n CONFIG_IDPF_SINGLEQ
  idpf: reuse libeth's definitions of parsed ptype structures
  idpf: remove legacy Page Pool Ethtool stats
  libeth: support different types of buffers for Rx
  idpf: convert header split mode to libeth + napi_build_skb()
  idpf: use libeth Rx buffer management for payload buffer

 drivers/net/ethernet/intel/Kconfig            |   13 +-
 drivers/net/ethernet/intel/idpf/Kconfig       |   26 +
 drivers/net/ethernet/intel/idpf/Makefile      |    3 +-
 include/net/page_pool/types.h                 |   22 +-
 drivers/net/ethernet/intel/idpf/idpf.h        |   11 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |    2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  734 +++++----
 include/linux/cache.h                         |   59 +
 include/net/libeth/cache.h                    |   66 +
 include/net/libeth/rx.h                       |   19 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  152 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   88 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  306 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 1412 +++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  178 ++-
 drivers/net/ethernet/intel/libeth/rx.c        |  132 +-
 net/core/page_pool.c                          |    3 +-
 18 files changed, 1824 insertions(+), 1403 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/Kconfig
 create mode 100644 include/net/libeth/cache.h

---
From v1[0]:
*  *: pick Reviewed-bys from Jake;
* 01: new, add generic __cacheline_group_{begin,end}_aligned() and
      a couple more cache macros;
* 02: new, make use of new macros from 01;
* 03: use macros from 01 (no more struct_group()), leave only
      aggressive assertions here;
* 07: adjust to the changes made in 01 and 03;
      fix typos in the kdocs;
* 13: fix typos in the commit message (Jakub);
* 14: fix possible unhandled null skb (Simon, static checker).

From RFC[1]:
*  *: add kdocs where needed and fix the existing ones to build cleanly;
      fix minor checkpatch and codespell warnings;
      add RBs from Przemek;
* 01: fix kdoc script to understand new libeth_cacheline_group() macro;
      add an additional assert for queue struct alignment;
* 02: pick RB from Mina;
* 06: make idpf_chk_linearize() static as it's now used only in one file;
* 07: rephrase the commitmsg: HW supports it, but never wants;
* 08: fix crashes on some configurations (Mina);
* 11: constify header buffer pointer in idpf_rx_hsplit_wa().

Testing hints: basic Rx regression tests (+ perf and memory usage
before/after if needed).

[0] https://lore.kernel.org/netdev/20240528134846.148890-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20240510152620.2227312-1-aleksander.lobakin@intel.com
-- 
2.45.2

