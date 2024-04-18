Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311158A98A8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:36:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F44B41697;
	Thu, 18 Apr 2024 11:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L6uXBNxn_3GC; Thu, 18 Apr 2024 11:36:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0737C4168E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440202;
	bh=g9rrUDfTVzBALjTBZqu/qEUaCpd4C0NT5+Cirj8caDE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tfXcj/IAUfw8k9TQxOgnBt87SD3H2QKee/stRWRiF1SZQDXH/47SacIOAtrtZmibB
	 XN8f1CvEYNaBtkg9HGpxbuCNkUI5JtnhU1WZgFaIA6Taff0yye8cCafekQ1HloLVeF
	 Xw2LFQbDRwQW37d6MGnclYm7rdBzcoTLnFaiXl7qcIB5vpwRWWSpPv2J+dDRqKjXqi
	 lQZTbi329d8E8ybN9wW/xrLfocq8iaCOtaPv+58FV+T25CFb6wj7K5Lw0iKHHMSS6g
	 aw86T1SJ2gIWuDUuyvy6En8E9L7wzFzVn0Hie1GjOxWW4cEP3COV3ZnM5qAefaXbAM
	 Il3JCkZ680glQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0737C4168E;
	Thu, 18 Apr 2024 11:36:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 245711BF983
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FC3460BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LlNLKXztui53 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:36:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C4D560BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C4D560BA4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C4D560BA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:37 +0000 (UTC)
X-CSE-ConnectionGUID: D6xuubggTA+B8Ir8lVcEaw==
X-CSE-MsgGUID: 4oVrq2CqQ8aQx5Ql65kjmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19587686"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19587686"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:36:35 -0700
X-CSE-ConnectionGUID: xiqf2ZhTRxW958u4IVf8rA==
X-CSE-MsgGUID: qKipbVrMTdO+OMeDoK4GMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27586095"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 18 Apr 2024 04:36:31 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 18 Apr 2024 13:36:06 +0200
Message-ID: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440197; x=1744976197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OmUbjHBP4g7trrsWmNC2vJP7ZeDRKs3EuLB4aUbD8Ds=;
 b=GbAkGvrJ+7cb2bX4ZGRwPLJfUxwXBRfBHi37CoGzE38E8GYxFczAdCyS
 +VR8lx511CamcVy38KksodDlv5uWvb4V8Rhm2hb3DrweUQRDTGK1CrBNE
 5b2P+WAFcgavUx6Z+CnuKMSJQY2vkLIoZF8AJHKxND1mrqsukeKGUAcc4
 ZYAv6eNJPvEgSTt6azlJUF4LW/IchSKTTJNgcc2W/PqdbKwvE96eEGdwf
 yxTXWStsSwM37jrcOazpKZbUpk49iDeNpIGPg/xL1lXk0i4apdTmL6t/z
 AbSidfEG9uGShWLRgYWtYg5dopwlrJ/P5gx3Npg8eKXWNqlxFMDLap+90
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GbAkGvrJ
Subject: [Intel-wired-lan] [PATCH net-next v10 00/10] net: intel: start The
 Great Code Dedup + Page Pool for iavf
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, linux-mm@kvack.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Here's a two-shot: introduce {,Intel} Ethernet common library (libeth and
libie) and switch iavf to Page Pool. Details are in the commit messages;
here's a summary:

Not a secret there's a ton of code duplication between two and more Intel
ethernet modules. Before introducing new changes, which would need to be
copied over again, start decoupling the already existing duplicate
functionality into a new module, which will be shared between several
Intel Ethernet drivers. The first name that came to my mind was
"libie" -- "Intel Ethernet common library". Also this sounds like
"lovelie" (-> one word, no "lib I E" pls) and can be expanded as
"lib Internet Explorer" :P
The "generic", pure-software part is placed separately, so that it can be
easily reused in any driver by any vendor without linking to the Intel
pre-200G guts. In a few words, it's something any modern driver does the
same way, but nobody moved it level up (yet).
The series is only the beginning. From now on, adding every new feature
or doing any good driver refactoring will remove much more lines than add
for quite some time. There's a basic roadmap with some deduplications
planned already, not speaking of that touching every line now asks:
"can I share this?". The final destination is very ambitious: have only
one unified driver for at least i40e, ice, iavf, and idpf with a struct
ops for each generation. That's never gonna happen, right? But you still
can at least try.
PP conversion for iavf lands within the same series as these two are tied
closely. libie will support Page Pool model only, so that a driver can't
use much of the lib until it's converted. iavf is only the example, the
rest will eventually be converted soon on a per-driver basis. That is
when it gets really interesting. Stay tech.

Alexander Lobakin (10):
  net: intel: introduce {,Intel} Ethernet common library
  iavf: kill "legacy-rx" for good
  iavf: drop page splitting and recycling
  slab: introduce kvmalloc_array_node() and kvcalloc_node()
  page_pool: constify some read-only function arguments
  page_pool: add DMA-sync-for-CPU inline helper
  libeth: add Rx buffer management
  iavf: pack iavf_ring more efficiently
  iavf: switch to Page Pool
  MAINTAINERS: add entry for libeth and libie

 MAINTAINERS                                   |  20 +
 drivers/net/ethernet/intel/Kconfig            |   7 +
 drivers/net/ethernet/intel/libeth/Kconfig     |   9 +
 drivers/net/ethernet/intel/libie/Kconfig      |  10 +
 drivers/net/ethernet/intel/Makefile           |   3 +
 drivers/net/ethernet/intel/libeth/Makefile    |   6 +
 drivers/net/ethernet/intel/libie/Makefile     |   6 +
 include/net/page_pool/types.h                 |   4 +-
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   7 -
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  88 ---
 drivers/net/ethernet/intel/iavf/iavf.h        |   2 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   7 -
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 146 +----
 drivers/net/ethernet/intel/iavf/iavf_type.h   |  90 ---
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 320 ----------
 include/linux/net/intel/libie/rx.h            |  50 ++
 include/linux/slab.h                          |  17 +-
 include/net/libeth/rx.h                       | 242 ++++++++
 include/net/page_pool/helpers.h               |  34 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 253 --------
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   1 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  72 +--
 drivers/net/ethernet/intel/iavf/iavf_common.c | 253 --------
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 140 -----
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  40 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 551 +++---------------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 111 +---
 drivers/net/ethernet/intel/libeth/rx.c        | 150 +++++
 drivers/net/ethernet/intel/libie/rx.c         | 124 ++++
 net/core/page_pool.c                          |  10 +-
 32 files changed, 836 insertions(+), 1955 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libeth/Kconfig
 create mode 100644 drivers/net/ethernet/intel/libie/Kconfig
 create mode 100644 drivers/net/ethernet/intel/libeth/Makefile
 create mode 100644 drivers/net/ethernet/intel/libie/Makefile
 create mode 100644 include/linux/net/intel/libie/rx.h
 create mode 100644 include/net/libeth/rx.h
 create mode 100644 drivers/net/ethernet/intel/libeth/rx.c
 create mode 100644 drivers/net/ethernet/intel/libie/rx.c

---
libeth has way more generic functionality and code in the idpf XDP
tree[0], take a look if you want to have more complete picture of
what this really is about.

From v9[1]:
* pick Acked-by from Vlastimil and a couple Reviewed-by from Przemek;
* mention that the libeth_fq::fp kernel-doc generates a warning and the
  fix for that is pending on the linux-doc ML (Jakub);
* no functional changes.

From v8[2]:
* rebase on top of net-next (6.9-rc1+);
* introduce kvmalloc_array_node() and kvcalloc_node();
* make Rx buffer management NUMA-aware;
* resolve kdoc issues (Jakub, me).

From v7[3]:
* drop Page Pool optimization prereqs;
* drop generic stats part: will redo to the new per-queue stats later;
* split libie into "generic" and "fnic" (i40e, ice, iavf) parts;
* use shorter and modern struct names;
* #1: allow to compile-out hotpath IPv6 code when !CONFIG_IPV6;
* #1: generate XDP RSS hash directly in the lookup table;
* #8: fix rare skb nullptr deref bug.

From v6[4]:
* #04: resolve ethtool_puts() Git conflict (Jakub);
* #06: pick RB from Ilias;
* no functional changes.

From v5[5]:
* drop Page Pool DMA shortcut: will pick up Eric's more global DMA sync
  optimization[6] and expand it to cover both IOMMU and direct DMA a bit
  later (Yunsheng);
* drop per-queue Page Pool Ethtool stats: they are now exported via
  generic Netlink interface (Jakub);
* #01: leave a comment why exactly this alignment (Jakub, Yunsheng);
* #08: make use of page_pool_params::netdev when calculating PP params;
* #08: rename ``libie_rx_queue`` -> ``libie_buf_queue``.

From v4[7]:
* make use of Jakub's &page_pool_params split;
* #01: prevent frag fields from spanning into 2 cachelines after
  splitting &page_pool_params into fast and slow;
* #02-03: bring back the DMA sync shortcut, now as a per-page flag
  (me, Yunsheng);
* #04: let libie have its own Kconfig to stop further bloating of poor
  intel/Kconfig;
* #06: merge page split-reuse-recycle drop into one commit (Alex);
* #07: decouple constifying of several Page Pool function arguments
  into a separate commit, constify some more;
* #09: stop abusing internal PP fields in the driver code (Yunsheng);
* #09: calculate DMA sync size (::max_len) correctly: within one page,
  not one buffer (Yunsheng);
* #10: decouple rearranging &iavf_ring into separate commit, optimize
  it even more;
* #11: let the driver get back to the last descriptor to process after
  an skb allocation fail, don't drop it (Alex);
* #11: stop touching unrelated stuff like watchdog timeout etc. (Alex);
* fix "Return:" in the kdoc (now `W=12 C=1` is clean), misc typos.

From v3[8]:
* base on the latest net-next, update bloat-o-meter and perf stats;
* split generic PP optimizations into a separate series;
* drop "optimize hotpath a bunch" commit: a lot of [controversial]
  changes in one place, worth own series (Alex);
* 02: pick Rev-by (Alex);
* 03: move in-place recycling removal here from the dropped patch;
* 05: new, add libie Rx buffer API separatelly from IAVF changes;
* 05-06: use new "hybrid" allocation API from[8] to reduce memory usage
  when a page can fit more than 1 truesize (also asked by David);
* 06: merge with "always use order-0 page" commit to reduce diffs and
  simplify things (Alex);
* 09: fix page_alloc_fail counter.

From v2[10]:
* 0006: fix page_pool.h include in OcteonTX2 files (Jakub, Patchwork);
* no functional changes.

From v1[11]:
* 0006: new (me, Jakub);
* 0008: give the helpers more intuitive names (Jakub, Ilias);
*  -^-: also expand their kdoc a bit for the same reason;
*  -^-: fix kdoc copy-paste issue (Patchwork, Jakub);
* 0011: drop `inline` from C file (Patchwork, Jakub).

[0] https://github.com/alobakin/linux/commits/idpf-libie-new
[1] https://lore.kernel.org/netdev/20240404154402.3581254-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/netdev/20240308141833.2966600-1-aleksander.lobakin@intel.com
[3] https://lore.kernel.org/netdev/20231213112835.2262651-1-aleksander.lobakin@intel.com
[4] https://lore.kernel.org/netdev/20231207172010.1441468-1-aleksander.lobakin@intel.com
[5] https://lore.kernel.org/netdev/20231124154732.1623518-1-aleksander.lobakin@intel.com
[6] https://lore.kernel.org/netdev/20221115182841.2640176-1-edumazet@google.com
[7] https://lore.kernel.org/netdev/20230705155551.1317583-1-aleksander.lobakin@intel.com
[8] https://lore.kernel.org/netdev/20230530150035.1943669-1-aleksander.lobakin@intel.com
[9] https://lore.kernel.org/netdev/20230629120226.14854-1-linyunsheng@huawei.com
[10] https://lore.kernel.org/netdev/20230525125746.553874-1-aleksander.lobakin@intel.com
[11] https://lore.kernel.org/netdev/20230516161841.37138-1-aleksander.lobakin@intel.com

-- 
2.44.0

