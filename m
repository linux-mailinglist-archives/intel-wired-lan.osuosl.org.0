Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA5874889C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:57:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CF4582135;
	Wed,  5 Jul 2023 15:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CF4582135
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688572660;
	bh=5QRNbBEEkZ+8SgEEaOPKFOsAUkRixA7ej21JlEG8/ts=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Mce30Q2JeoMGgQe5+iYqjvuriVDBuKl9E/XMxNYvYZW9EtaP5mlLNpt/3yLn+jMQa
	 xFetBd14yVwK7RtZJjZHuXXwKiTHw2pvlggaAl/qYfdfCEkkwVziEQP823MVR+45ub
	 7T/qiZbd03PKPB95CrOmr3q+UWtKH0R6wnKOpjdjXFxHumPbDiNdjdMRanIwsQKP/I
	 oUMrG2EkQjAPzXCgBH+Ey1ly/Jiwtppd0KWOGmTy1f7k7qKgf3N8XCd0gz3hIk9RiR
	 6w+hQ4z1TKxfDOxSBQWEYgsEvIoboBqIJaoWx6iHmbRiOs6cMwbkl5zG1DZ1j8gjno
	 C1Anwnu3W825w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dRJfFqWHHEJC; Wed,  5 Jul 2023 15:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 397BA8206E;
	Wed,  5 Jul 2023 15:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 397BA8206E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C36731BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9933F40489
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:57:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9933F40489
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzH2f7oDNUFk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 15:57:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A44B40106
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A44B40106
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:57:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366863373"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="366863373"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 08:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="789205538"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="789205538"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jul 2023 08:57:25 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed,  5 Jul 2023 17:55:42 +0200
Message-ID: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688572652; x=1720108652;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LyPMsf3C0/NaDYzoiwx7gQCCBQX3u+0J5fs1oCvaAiY=;
 b=D+lLJJg8gd6QfWumxScGr9oNrzuIRb1KzMoOnz+19ohCGcn2BFmdesIF
 lxvK6hS2pCgwg4jKGDvgN24IiSsrFulmPAZ7XDW3tGgzMPLtWvXqbnDer
 YFCWafo6FvzoXxPRVjV/ndLmZnX+spxFoeIk/VWpVOdeWvEXnFSiciPfY
 407QO2O9igD0sZ3hlDLnxbEjpWyKqNozWw/8JSn+Atx3YxrSzLWyFsM2i
 o7p7LaCJxb27PkeQ7ueRE6hOLLjOdFgHd3HQGeb5EDtTZuq5J86Oi5jIH
 gti4q8Mr0PNGQD1yJ+Ujjc9sDheOMj6KlHywybITQWn2BwyKTabKCn9bL
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D+lLJJg8
Subject: [Intel-wired-lan] [PATCH RFC net-next v4 0/9] net: intel: start The
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Here's a two-shot: introduce Intel Ethernet common library (libie) and
switch iavf to Page Pool. Details in the commit messages; here's
summary:

Not a secret there's a ton of code duplication between two and more Intel
ethernet modules. Before introducing new changes, which would need to be
copied over again, start decoupling the already existing duplicate
functionality into a new module, which will be shared between several
Intel Ethernet drivers.
The first thing that came to my mind was "libie" -- "Intel Ethernet
common library". Also this sounds like "lovelie" and can be expanded as
"lib Internet Explorer" :P I'm open for anything else (but justified).
The series is only the beginning. From now on, adding every new feature
or doing any good driver refactoring will remove much more lines than add
for quite some time. There's a basic roadmap with some deduplications
planned already, not speaking of that touching every line now asks: "can
I share this?".
PP conversion for iavf lands within the same series as these two are tied
closely. libie will support Page Pool model only, so a driver can't use
much of the lib until it's converted. iavf is only the example, the rest
will eventually be converted soon on a per-driver basis. That is when it
gets really interesting. Stay tech.

Alexander Lobakin (9):
  net: intel: introduce Intel Ethernet common library
  iavf: kill "legacy-rx" for good
  iavf: drop page splitting and recycling
  net: page_pool: add DMA-sync-for-CPU inline helpers
  libie: add Rx buffer management (via Page Pool)
  iavf: switch to Page Pool
  libie: add common queue stats
  libie: add per-queue Page Pool stats
  iavf: switch queue stats to libie

 MAINTAINERS                                   |   3 +-
 drivers/net/ethernet/intel/Kconfig            |  11 +
 drivers/net/ethernet/intel/Makefile           |   1 +
 drivers/net/ethernet/intel/i40e/i40e_common.c | 253 --------
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   1 +
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   7 -
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  74 +--
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  88 ---
 drivers/net/ethernet/intel/iavf/iavf.h        |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c | 253 --------
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 226 +------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  44 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   7 -
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 608 ++++--------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 176 +----
 drivers/net/ethernet/intel/iavf/iavf_type.h   |  90 ---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  20 +-
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 316 ---------
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  74 +--
 drivers/net/ethernet/intel/libie/Makefile     |   7 +
 drivers/net/ethernet/intel/libie/internal.h   |  23 +
 drivers/net/ethernet/intel/libie/rx.c         | 183 ++++++
 drivers/net/ethernet/intel/libie/stats.c      | 190 ++++++
 include/linux/net/intel/libie/rx.h            | 241 +++++++
 include/linux/net/intel/libie/stats.h         | 214 ++++++
 include/net/page_pool.h                       |  49 +-
 27 files changed, 1137 insertions(+), 2025 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libie/Makefile
 create mode 100644 drivers/net/ethernet/intel/libie/internal.h
 create mode 100644 drivers/net/ethernet/intel/libie/rx.c
 create mode 100644 drivers/net/ethernet/intel/libie/stats.c
 create mode 100644 include/linux/net/intel/libie/rx.h
 create mode 100644 include/linux/net/intel/libie/stats.h

---
Directly to net-next, has non-Intel code change (#4) :p

Based on the PP "hybrid" allocation series[0] and requires it to work.

From v3[1]:
* base on the latest net-next, update bloat-o-meter and perf stats;
* split generic PP optimizations into a separate series;
* drop "optimize hotpath a bunch" commit: a lot of [controversial]
  changes in one place, worth own series (Alex);
* 02: pick Rev-by (Alex);
* 03: move in-place recycling removal here from the dropped patch;
* 05: new, add libie Rx buffer API separatelly from IAVF changes;
* 05-06: use new "hybrid" allocation API from[0] to reduce memory usage
  when a page can fit more than 1 truesize (also asked by David);
* 06: merge with "always use order-0 page" commit to reduce diffs and
  simplify things (Alex);
* 09: fix page_alloc_fail counter.

From v2[2]:
* 0006: fix page_pool.h include in OcteonTX2 files (Jakub, Patchwork);
* no functional changes.

From v1[3]:
* 0006: new (me, Jakub);
* 0008: give the helpers more intuitive names (Jakub, Ilias);
*  -^-: also expand their kdoc a bit for the same reason;
*  -^-: fix kdoc copy-paste issue (Patchwork, Jakub);
* 0011: drop `inline` from C file (Patchwork, Jakub).

[0] https://lore.kernel.org/netdev/20230629120226.14854-1-linyunsheng@huawei.com
[1] https://lore.kernel.org/netdev/20230530150035.1943669-1-aleksander.lobakin@intel.com
[2] https://lore.kernel.org/netdev/20230525125746.553874-1-aleksander.lobakin@intel.com
[3] https://lore.kernel.org/netdev/20230516161841.37138-1-aleksander.lobakin@intel.com

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
