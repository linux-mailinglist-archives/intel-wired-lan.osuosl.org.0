Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36933808E85
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:22:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C944583CA6;
	Thu,  7 Dec 2023 17:22:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C944583CA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701969738;
	bh=lagWl7bDQk0VBdjvtg8aS+tI6MnjbBNY2YInnxGGDm0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UKFT85cLlxIjb4oFb94bes1VxGeIkhOsCvZvlRFEOk3ogRhapb7/hqVtajZca1qFj
	 drI9LRx0p/KmNU8E5q9dglI3mYQaFeQk0JlUIhYwlA65wjnQ0I7mFLKb9PmMmM2Yge
	 xJtkONBPRx5OyjTBAE1vkpLr6mMU+Tz4U5WgUacstpvrLFrBxQSQuq08uXh2+Pqf96
	 gCi1qc7L0mJq6OVAILbMOmV8sHA59fG2HyJxFvK0LjFY5TgsSRsS8PaALV8qXU9MJn
	 yx6YqR5fS9/gl3LmXf/kWlddOY4nUC1LBzFwHGEFWvurdMnRKVnu3YFBzoWIX+7fDx
	 9Sq57JGq4HhKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e2V0OOmCXC_G; Thu,  7 Dec 2023 17:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C85383C29;
	Thu,  7 Dec 2023 17:22:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C85383C29
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D035A1BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97E2F60AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97E2F60AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B3weuzzFOahR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:22:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 517D360A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 517D360A5A
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="374434631"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="374434631"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:21:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721548484"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721548484"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2023 09:21:50 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  7 Dec 2023 18:19:58 +0100
Message-ID: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969730; x=1733505730;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cxce2/w/Ev4WegPERyasoQSNccjGfNR/i9i/+gJ+2KM=;
 b=E2zBkumrZ/YM/Fd1qUnRFcGtFRN0ezGb6K1eQvAM4Ngk2GD20hGwmOek
 7oiaEgVIgxcWS+DZ20ZbwSA3yElVGTyuu+XX5opvSBaDKrs2CtB2BRWfy
 Jh6ZP/OFHiYjFsqWK40+EYrbjV71CuJbUFmjz+4GFEBTLBbt7Zl96bFAW
 zroMeBEcKYhYQbIRQMXdtwpEKbs4MflpAlZBvR1pJACDLNnMXj1MnRfDa
 g2x/MPNoL6IusZjNrLiAxa30gW404Y+/iYGSweYXOVVP29ZJJFvprk/mL
 uC+Dcqk/ALyy9Qv0EvXaaIot6RWPJ1D74OkbyR7KruGMVVmqmLflkQqB2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E2zBkumr
Subject: [Intel-wired-lan] [PATCH net-next v6 00/12] net: intel: start The
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

Alexander Lobakin (12):
  page_pool: make sure frag API fields don't span between cachelines
  page_pool: don't use driver-set flags field directly
  net: intel: introduce Intel Ethernet common library
  iavf: kill "legacy-rx" for good
  iavf: drop page splitting and recycling
  page_pool: constify some read-only function arguments
  page_pool: add DMA-sync-for-CPU inline helper
  libie: add Rx buffer management (via Page Pool)
  iavf: pack iavf_ring more efficiently
  iavf: switch to Page Pool
  libie: add common queue stats
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
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 235 +------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  42 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   7 -
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 624 ++++--------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 174 +----
 drivers/net/ethernet/intel/iavf/iavf_type.h   |  90 ---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  17 +-
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 316 ---------
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  74 +--
 drivers/net/ethernet/intel/libie/Kconfig      |   9 +
 drivers/net/ethernet/intel/libie/Makefile     |   7 +
 drivers/net/ethernet/intel/libie/rx.c         | 179 +++++
 drivers/net/ethernet/intel/libie/stats.c      | 121 ++++
 include/linux/net/intel/libie/rx.h            | 259 ++++++++
 include/linux/net/intel/libie/stats.h         | 179 +++++
 include/net/page_pool/helpers.h               |  34 +-
 include/net/page_pool/types.h                 |  19 +-
 net/core/page_pool.c                          |  42 +-
 29 files changed, 1058 insertions(+), 2057 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libie/Kconfig
 create mode 100644 drivers/net/ethernet/intel/libie/Makefile
 create mode 100644 drivers/net/ethernet/intel/libie/rx.c
 create mode 100644 drivers/net/ethernet/intel/libie/stats.c
 create mode 100644 include/linux/net/intel/libie/rx.h
 create mode 100644 include/linux/net/intel/libie/stats.h

---
Directly to net-next, has non-Intel code changes :p

From v5[0]:
* drop Page Pool DMA shortcut: will pick up Eric's more global DMA sync
  optimization[1] and expand it to cover both IOMMU and direct DMA a bit
  later (Yunsheng);
* drop per-queue Page Pool Ethtool stats: they are now exported via
  generic Netlink interface (Jakub);
* #01: leave a comment why exactly this alignment (Jakub, Yunsheng);
* #08: make use of page_pool_params::netdev when calculating PP params;
* #08: rename ``libie_rx_queue`` -> ``libie_buf_queue``.

From v4[2]:
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

From v3[3]:
* base on the latest net-next, update bloat-o-meter and perf stats;
* split generic PP optimizations into a separate series;
* drop "optimize hotpath a bunch" commit: a lot of [controversial]
  changes in one place, worth own series (Alex);
* 02: pick Rev-by (Alex);
* 03: move in-place recycling removal here from the dropped patch;
* 05: new, add libie Rx buffer API separatelly from IAVF changes;
* 05-06: use new "hybrid" allocation API from[4] to reduce memory usage
  when a page can fit more than 1 truesize (also asked by David);
* 06: merge with "always use order-0 page" commit to reduce diffs and
  simplify things (Alex);
* 09: fix page_alloc_fail counter.

From v2[5]:
* 0006: fix page_pool.h include in OcteonTX2 files (Jakub, Patchwork);
* no functional changes.

From v1[6]:
* 0006: new (me, Jakub);
* 0008: give the helpers more intuitive names (Jakub, Ilias);
*  -^-: also expand their kdoc a bit for the same reason;
*  -^-: fix kdoc copy-paste issue (Patchwork, Jakub);
* 0011: drop `inline` from C file (Patchwork, Jakub).

[0] https://lore.kernel.org/netdev/20231124154732.1623518-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20221115182841.2640176-1-edumazet@google.com
[2] https://lore.kernel.org/netdev/20230705155551.1317583-1-aleksander.lobakin@intel.com
[3] https://lore.kernel.org/netdev/20230530150035.1943669-1-aleksander.lobakin@intel.com
[4] https://lore.kernel.org/netdev/20230629120226.14854-1-linyunsheng@huawei.com
[5] https://lore.kernel.org/netdev/20230525125746.553874-1-aleksander.lobakin@intel.com
[6] https://lore.kernel.org/netdev/20230516161841.37138-1-aleksander.lobakin@intel.com

-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
