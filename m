Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC32710CAC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 14:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85934612E7;
	Thu, 25 May 2023 12:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85934612E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685019522;
	bh=mdcyt8njJNCx6knaT/l14IMP4dkFLF67IQwVZ5tVqIk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=asmMav2/eTl2Dmzxw0CfJj5i+kvxz6ZdQxMn7O3b8Z53iHqdQAMzRyNahG1AVWsvO
	 mt8xI5QIblNL54kzZNEVcLdud5x+ntbo8K/EuwIJSYA8SizrKPGxHD+Nb75hGaDH1t
	 aKEfvcephCR010vPqglzlDAnyNWOgqZlQsFFUmN06ihkp5M2ZFWr0k3TwqQSTudXLv
	 FtiqYqfAN0V6GvI8pDrjAcpntIw3bG4hnjGpxiRF6IdNmpOiIMGXbx39ZUB3ZN6P3v
	 0XazHQSjEyC2Q9eCoz38mXSxzu8YAZr4yWBmXP3O0/On4y66dcQfP3unfHoAjLjnNd
	 p/P0g+hAk6spg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7Y4QnPMcgJz; Thu, 25 May 2023 12:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2263F60804;
	Thu, 25 May 2023 12:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2263F60804
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23CD41BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDC2F4109B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDC2F4109B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id za9iFH5LRbYr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 12:58:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8A42409E2
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8A42409E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:58:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="351384298"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="351384298"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 05:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817075070"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="817075070"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga002.fm.intel.com with ESMTP; 25 May 2023 05:58:29 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 25 May 2023 14:57:34 +0200
Message-Id: <20230525125746.553874-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685019513; x=1716555513;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f0lF9njkggtpBf9SpDur9tx299D0+TkDV/kEtNrSjqI=;
 b=fDYE0zysnqffq22/wt/iiKruN4RBDgrJmhV44EU9vH3AqHun7l4uUQp8
 zIyWQtyUoYakfOtfu8sSDeCuES+M/iv7/gQrNypJClIStZ7EGK+JnASNf
 32LrTYF/7B+4G75ug24wCscbOeZDoUpt6lEOriPSwAKxbeCz8GhgyKQiB
 3PPEq5AIOShtQfa5fL4CfnYPpzfgFjHmeH9SHf0oL4/IFjRxWzMRw2n4H
 cKiX8RyXODrESr+OfasTuJ/bGOtDcypTJNpvtMmhY+sAnm3ZNGW3QEoMT
 IViFN5lniBKkNmgViVOWZbQCYQGFSBKSxR6oFuOGo0cibpdsOf0Dli2km
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fDYE0zys
Subject: [Intel-wired-lan] [PATCH net-next v2 00/12] net: intel: start The
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
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
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

Alexander Lobakin (12):
  net: intel: introduce Intel Ethernet common library
  iavf: kill "legacy-rx" for good
  iavf: optimize Rx buffer allocation a bunch
  iavf: remove page splitting/recycling
  iavf: always use a full order-0 page
  net: skbuff: don't include <net/page_pool.h> into <linux/skbuff.h>
  net: page_pool: avoid calling no-op externals when possible
  net: page_pool: add DMA-sync-for-CPU inline helpers
  iavf: switch to Page Pool
  libie: add common queue stats
  libie: add per-queue Page Pool stats
  iavf: switch queue stats to libie

 MAINTAINERS                                   |   3 +-
 drivers/net/ethernet/engleder/tsnep_main.c    |   1 +
 drivers/net/ethernet/freescale/fec_main.c     |   1 +
 drivers/net/ethernet/intel/Kconfig            |  12 +-
 drivers/net/ethernet/intel/Makefile           |   1 +
 drivers/net/ethernet/intel/i40e/i40e_common.c | 253 -------
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   1 +
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   7 -
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  74 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  88 ---
 drivers/net/ethernet/intel/iavf/iavf.h        |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c | 253 -------
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 227 +-----
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  45 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   7 -
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 715 +++++-------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 185 +----
 drivers/net/ethernet/intel/iavf/iavf_type.h   |  90 ---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  16 +-
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 316 --------
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  74 +-
 drivers/net/ethernet/intel/libie/Makefile     |   7 +
 drivers/net/ethernet/intel/libie/internal.h   |  23 +
 drivers/net/ethernet/intel/libie/rx.c         | 158 ++++
 drivers/net/ethernet/intel/libie/stats.c      | 190 +++++
 .../ethernet/mellanox/mlx5/core/en/params.c   |   1 +
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   1 +
 drivers/net/wireless/mediatek/mt76/mt76.h     |   1 +
 include/linux/net/intel/libie/rx.h            | 170 +++++
 include/linux/net/intel/libie/stats.h         | 214 ++++++
 include/linux/skbuff.h                        |   4 +-
 include/net/page_pool.h                       |  69 +-
 net/core/page_pool.c                          |  10 +
 34 files changed, 1139 insertions(+), 2081 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libie/Makefile
 create mode 100644 drivers/net/ethernet/intel/libie/internal.h
 create mode 100644 drivers/net/ethernet/intel/libie/rx.c
 create mode 100644 drivers/net/ethernet/intel/libie/stats.c
 create mode 100644 include/linux/net/intel/libie/rx.h
 create mode 100644 include/linux/net/intel/libie/stats.h

---
Directly to net-next, has non-Intel code changes (0006-0008).

From v1[0]:
* 0006: new (me, Jakub);
* 0008: give the helpers more intuitive names (Jakub, Ilias);
*  -^-: also expand their kdoc a bit for the same reason;
*  -^-: fix kdoc copy-paste issue (Patchwork, Jakub);
* 0011: drop `inline` from C file (Patchwork, Jakub).

[0] https://lore.kernel.org/netdev/20230516161841.37138-1-aleksander.lobakin@intel.com

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
