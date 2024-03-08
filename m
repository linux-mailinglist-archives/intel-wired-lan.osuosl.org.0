Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7B7876626
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 15:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A29883339;
	Fri,  8 Mar 2024 14:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOsFpLnVTyZP; Fri,  8 Mar 2024 14:18:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B357783380
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709907534;
	bh=WErq/QoWcplvedvS8zCqRGUZEdrHO0GPQdC24KlVhrc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PXkx55WwDJDgsqwARp7eifnptOiZzgEUdjweKXPePwLaI6Vv7O1sIkQiJHD9N0W2K
	 D6lZaFTcxOi71BC+Y4FDhVssrGV96vmTNWmhVNGs2G64RYhw4WHn9dAdA7x+ddrT63
	 FOZrVyptJ00BOO7kjcak/4Q6u/sbeNFNNXuxBkVvzQjkqRzzN4az7egYZnshScWxsL
	 IMFEFBTIB6whmg2u6XUcVV091m8hUbzjd21Wg4alSWmkb0ddG+PtqG2wpuxBXCLCpp
	 sjiiiYklCvq9LFVWpIBriDPsuDtvPiU8/pBEJ3W+EIPgOqf1iSrO4WJ0/VmcalgwUP
	 b9Qd1yZITvoQw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B357783380;
	Fri,  8 Mar 2024 14:18:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EAB7F1BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7B8560A40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FDDWMA9cMuh3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 14:18:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 788E560855
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 788E560855
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 788E560855
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:18:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4504428"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4504428"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15176981"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa005.jf.intel.com with ESMTP; 08 Mar 2024 06:18:46 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri,  8 Mar 2024 15:18:25 +0100
Message-ID: <20240308141833.2966600-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709907532; x=1741443532;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RwpHhMlY0TqrMS1s4V56hL4gwB9k2v+2t7BuVUiKIKQ=;
 b=PKPHLJZUqK3AIt4omHPKERZE3HiPFb5ZeS9Ijc6vqthrQoSj6HycQ6rk
 H+uzBT9dmYHAJ0nYCvNYhv9d6CechCe3GJdUnFT0ffpSFSLcyxPTS+BtM
 Gvsrn03tUcawsx1Qdu+pQ4nqwV+sg1DzwQSMrcP8JY+q3NQhWik74mubW
 CZBAIouzjSuqYPl3AiRbrBrlIwKacGo7ZUQRAs3QJpsiHLZoXA1eWjEvM
 DUnh1qFYPN0HBKX9+OS+wi4d0KxY/ew6jm+7w5vo2P3KcWV+BUqW4BRou
 HaLu7WB8JVTrm1DA/ACwemWtpBxfN8MwisftRpGQHfyVfSUSQ0ZLlwFsv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PKPHLJZU
Subject: [Intel-wired-lan] [PATCH net-next v8 0/8] net: intel: start The
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
 Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com
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

Alexander Lobakin (8):
  net: intel: introduce {,Intel} Ethernet common library
  iavf: kill "legacy-rx" for good
  iavf: drop page splitting and recycling
  page_pool: constify some read-only function arguments
  page_pool: add DMA-sync-for-CPU inline helper
  libeth: add Rx buffer management
  iavf: pack iavf_ring more efficiently
  iavf: switch to Page Pool

 MAINTAINERS                                   |   4 +-
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
 include/net/libeth/rx.h                       | 240 ++++++++
 include/net/page_pool/helpers.h               |  34 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 253 --------
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   1 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  72 +--
 drivers/net/ethernet/intel/iavf/iavf_common.c | 253 --------
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 140 -----
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  40 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 550 +++---------------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 111 +---
 drivers/net/ethernet/intel/libeth/rx.c        | 148 +++++
 drivers/net/ethernet/intel/libie/rx.c         | 124 ++++
 net/core/page_pool.c                          |  10 +-
 31 files changed, 798 insertions(+), 1955 deletions(-)
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

From v7[1]:
* drop Page Pool optimization prereqs;
* drop generic stats part: will redo to the new per-queue stats later;
* split libie into "generic" and "fnic" (i40e, ice, iavf) parts;
* use shorter and modern struct names;
* #1: allow to compile-out hotpath IPv6 code when !CONFIG_IPV6;
* #1: generate XDP RSS hash directly in the lookup table;
* #8: fix rare skb nullptr deref bug.

From v6[2]:
* #04: resolve ethtool_puts() Git conflict (Jakub);
* #06: pick RB from Ilias;
* no functional changes.

From v5[3]:
* drop Page Pool DMA shortcut: will pick up Eric's more global DMA sync
  optimization[4] and expand it to cover both IOMMU and direct DMA a bit
  later (Yunsheng);
* drop per-queue Page Pool Ethtool stats: they are now exported via
  generic Netlink interface (Jakub);
* #01: leave a comment why exactly this alignment (Jakub, Yunsheng);
* #08: make use of page_pool_params::netdev when calculating PP params;
* #08: rename ``libie_rx_queue`` -> ``libie_buf_queue``.

From v4[5]:
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

From v3[6]:
* base on the latest net-next, update bloat-o-meter and perf stats;
* split generic PP optimizations into a separate series;
* drop "optimize hotpath a bunch" commit: a lot of [controversial]
  changes in one place, worth own series (Alex);
* 02: pick Rev-by (Alex);
* 03: move in-place recycling removal here from the dropped patch;
* 05: new, add libie Rx buffer API separatelly from IAVF changes;
* 05-06: use new "hybrid" allocation API from[7] to reduce memory usage
  when a page can fit more than 1 truesize (also asked by David);
* 06: merge with "always use order-0 page" commit to reduce diffs and
  simplify things (Alex);
* 09: fix page_alloc_fail counter.

From v2[8]:
* 0006: fix page_pool.h include in OcteonTX2 files (Jakub, Patchwork);
* no functional changes.

From v1[9]:
* 0006: new (me, Jakub);
* 0008: give the helpers more intuitive names (Jakub, Ilias);
*  -^-: also expand their kdoc a bit for the same reason;
*  -^-: fix kdoc copy-paste issue (Patchwork, Jakub);
* 0011: drop `inline` from C file (Patchwork, Jakub).

[0] https://github.com/alobakin/linux/commits/idpf-libie-new
[1] https://lore.kernel.org/netdev/20231213112835.2262651-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/netdev/20231207172010.1441468-1-aleksander.lobakin@intel.com
[3] https://lore.kernel.org/netdev/20231124154732.1623518-1-aleksander.lobakin@intel.com
[4] https://lore.kernel.org/netdev/20221115182841.2640176-1-edumazet@google.com
[5] https://lore.kernel.org/netdev/20230705155551.1317583-1-aleksander.lobakin@intel.com
[6] https://lore.kernel.org/netdev/20230530150035.1943669-1-aleksander.lobakin@intel.com
[7] https://lore.kernel.org/netdev/20230629120226.14854-1-linyunsheng@huawei.com
[8] https://lore.kernel.org/netdev/20230525125746.553874-1-aleksander.lobakin@intel.com
[9] https://lore.kernel.org/netdev/20230516161841.37138-1-aleksander.lobakin@intel.com

-- 
2.44.0

