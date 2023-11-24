Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B17F7828
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 16:50:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E803E42171;
	Fri, 24 Nov 2023 15:50:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E803E42171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700841017;
	bh=4ZtpAyUfYOLlwSk7ZfH9da1HEmJ/AyiasGI4dQ9LVu0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VfaszhCYZaM0HEQ13G9I96L68+xVIbrUlcS0nsfu2P6V0D7LWjeRDwnUIqkCIRd0Y
	 tmD+CZy3nlxpFHjcQQi8FyZ5A16qhx7J7cyGXSMKHX/Tab7wmusrkbK2NmTIPxs3eO
	 IjxyWzaxovZfONYLezpIJAANsqocBpLFsONEBmnLoAdGLC4UI/AEf6skxE4XzkzFKk
	 4+Q1MBiHwHy40yApQ6UzrnOSz++/JlJSFsUvqZll6g31w9xTeZrZgojHar/Wma3KBs
	 45URElgb+nATfQV+zPKbVaRADRkvddBl+6wKwbbkUTNJmUTtwAe4vLnLlX05B07DQg
	 wfiXROHokQg0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVpEbzdyAxMX; Fri, 24 Nov 2023 15:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F8BB42158;
	Fri, 24 Nov 2023 15:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F8BB42158
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 558D41BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2668342181
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2668342181
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CBNtf2WxvuRc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 15:50:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B207A4216A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B207A4216A
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="389592423"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="389592423"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 07:50:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="15659739"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 24 Nov 2023 07:49:57 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 24 Nov 2023 16:47:18 +0100
Message-ID: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700841007; x=1732377007;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QbtcaO740tBPAPpBK4rvmbroWz1PJY6JofPTWopFM0w=;
 b=HU/c/+ddPg3RMylQ5AcWusZ8LAVN9kdRsgvNjU/K+rUxdn1YCumaagMi
 spk2lFKNg0kQ154qOaUwUtmApogxUgJ2VRwAderTvNJFjVLKtzgUnW/nM
 f6oGfuZlWkgAluCxnTP4uySXoRnZXQ6WvabpjYTktiXhyfLC7Gte80i3y
 d41Qt4qXi5aJM+sJm/LJSB36jBksz3OEF7MsIWR8TVseN9gnZ64sEDLf9
 3UkJAoKbv6EF3aey+F0Xh+OW7tU1tEpXPBzZr0hGNI0QVx5EVW9V6SRWq
 BSRscd+QfZVwu9sPNOy8mEcDjelNb9e6KQUhzgw++xEU54BnuZISfnq3a
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HU/c/+dd
Subject: [Intel-wired-lan] [PATCH net-next v5 00/14] net: intel: start The
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Here's a two-shot: introduce Intel Ethernet common library (libie) and
switch iavf to Page Pool. Details are in the commit messages; here's
a summary:

Not a secret there's a ton of code duplication between two and more Intel
ethernet modules. Before introducing new changes, which would need to be
copied over again, start decoupling the already existing duplicate
functionality into a new module, which will be shared between several
Intel Ethernet drivers. The first name that came to my mind was
"libie" -- "Intel Ethernet common library". Also this sounds like
"lovelie" (-> one word, no "lib I E" pls) and can be expanded as
"lib Internet Explorer" :P
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

Alexander Lobakin (14):
  page_pool: make sure frag API fields don't span between cachelines
  page_pool: don't use driver-set flags field directly
  page_pool: avoid calling no-op externals when possible
  net: intel: introduce Intel Ethernet common library
  iavf: kill "legacy-rx" for good
  iavf: drop page splitting and recycling
  page_pool: constify some read-only function arguments
  page_pool: add DMA-sync-for-CPU inline helpers
  libie: add Rx buffer management (via Page Pool)
  iavf: pack iavf_ring more efficiently
  iavf: switch to Page Pool
  libie: add common queue stats
  libie: add per-queue Page Pool stats
  iavf: switch queue stats to libie

 MAINTAINERS                                   |   3 +-
 drivers/net/ethernet/intel/Kconfig            |   6 +
 drivers/net/ethernet/intel/Makefile           |   1 +
 drivers/net/ethernet/intel/i40e/i40e_common.c | 253 -------
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   1 +
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   7 -
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  72 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  88 ---
 drivers/net/ethernet/intel/iavf/iavf.h        |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c | 253 -------
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 241 +------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  42 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   7 -
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 626 ++++--------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 174 +----
 drivers/net/ethernet/intel/iavf/iavf_type.h   |  90 ---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  17 +-
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 316 ---------
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  74 +--
 drivers/net/ethernet/intel/libie/Kconfig      |   9 +
 drivers/net/ethernet/intel/libie/Makefile     |   7 +
 drivers/net/ethernet/intel/libie/internal.h   |  20 +
 drivers/net/ethernet/intel/libie/rx.c         | 188 ++++++
 drivers/net/ethernet/intel/libie/stats.c      | 190 ++++++
 include/linux/net/intel/libie/rx.h            | 263 ++++++++
 include/linux/net/intel/libie/stats.h         | 213 ++++++
 include/net/page_pool/helpers.h               | 115 +++-
 include/net/page_pool/types.h                 |  10 +-
 net/core/page_pool.c                          |  50 +-
 30 files changed, 1270 insertions(+), 2069 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libie/Kconfig
 create mode 100644 drivers/net/ethernet/intel/libie/Makefile
 create mode 100644 drivers/net/ethernet/intel/libie/internal.h
 create mode 100644 drivers/net/ethernet/intel/libie/rx.c
 create mode 100644 drivers/net/ethernet/intel/libie/stats.c
 create mode 100644 include/linux/net/intel/libie/rx.h
 create mode 100644 include/linux/net/intel/libie/stats.h

---
Directly to net-next, has non-Intel code changes :p

From v4[0]:
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

From v3[1]:
* base on the latest net-next, update bloat-o-meter and perf stats;
* split generic PP optimizations into a separate series;
* drop "optimize hotpath a bunch" commit: a lot of [controversial]
  changes in one place, worth own series (Alex);
* 02: pick Rev-by (Alex);
* 03: move in-place recycling removal here from the dropped patch;
* 05: new, add libie Rx buffer API separatelly from IAVF changes;
* 05-06: use new "hybrid" allocation API from[2] to reduce memory usage
  when a page can fit more than 1 truesize (also asked by David);
* 06: merge with "always use order-0 page" commit to reduce diffs and
  simplify things (Alex);
* 09: fix page_alloc_fail counter.

From v2[3]:
* 0006: fix page_pool.h include in OcteonTX2 files (Jakub, Patchwork);
* no functional changes.

From v1[4]:
* 0006: new (me, Jakub);
* 0008: give the helpers more intuitive names (Jakub, Ilias);
*  -^-: also expand their kdoc a bit for the same reason;
*  -^-: fix kdoc copy-paste issue (Patchwork, Jakub);
* 0011: drop `inline` from C file (Patchwork, Jakub).

[0] https://lore.kernel.org/netdev/20230705155551.1317583-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20230530150035.1943669-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/netdev/20230629120226.14854-1-linyunsheng@huawei.com
[3] https://lore.kernel.org/netdev/20230525125746.553874-1-aleksander.lobakin@intel.com
[4] https://lore.kernel.org/netdev/20230516161841.37138-1-aleksander.lobakin@intel.com

-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
