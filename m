Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3737B716601
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:04:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF19483C79;
	Tue, 30 May 2023 15:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF19483C79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459053;
	bh=RPvmFCsHeTv3C8JgYVE2Z8lTh/Ftb24yibSWWgl1gL8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CWyYwHxFhSCsxgl1n0ft9JKcb2tiGvfmPmV/fgphMNRuPmjLdNOXLNS35SNZFvusS
	 csFa8urv43MHyDGrF4VyG8w4YD0M5nCYL9FtosCLsmnoHyqiKWoN11X8RmfBZNJv3E
	 JhiLkVLY2VG0NJjudFULkwaacVm2A/aPA8KN3LcKPU0EWrR7uTgb3V+O8q3kKrhhSW
	 /Bw2j1Q9Wpd6eHZuivyS1OJqL2I3+MxH80mQBQc1a9dMowSIRUwPiF6L2s0KrBTQNE
	 2f+nQ1TGWQoUNfdRdLwfE3Uq0TcC6PjIKYHmFCcoB1HQ4MOK7Le0SIanQjU7PzZs5N
	 4f0UbqXCvKiyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FfLrowdsMlJ; Tue, 30 May 2023 15:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A1E083449;
	Tue, 30 May 2023 15:04:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A1E083449
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BE841BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DD9241190
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DD9241190
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aSYCSH4NQ_8O for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:04:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F172D417F1
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F172D417F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358192159"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358192159"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:03:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796304135"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="796304135"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 08:03:05 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 17:00:23 +0200
Message-Id: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685459046; x=1716995046;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fUAq4wbgsz1SejWCkHqlnI+GpKDj8KfUTf02IkbfZbk=;
 b=AF+POzh72Ee+vwKlkqB8e5LS4YdT2Di7cUDgCQNmHp9qrFnnKH6WySsb
 6iJmOyqJcvsVOVIMQRSoIj415Ypp1HCSUEeSsCMQHdaBndz7r19kaI3hl
 zLaCLMVcYFyuX4yM5Mz7wfBuBaYP8bxp4QvNJqLyqVQXBmR1udxygIDl4
 ZAnQHjcfK2DbGCL75XQzArQ/H3bA0IWMhqIWrdrTJ2W3drznI/CRP4bZ7
 M3oqnUsXWg/vqHwoTjjvlGBsw6Ji9G6uTu/UmJ1SUk3FBEBRkE5NxW/xA
 bjsSajsQOeM+nZBZ8htnVtBRwT+Y4TeeZuSMIFBFzcrCg3hBquNEwqgvj
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AF+POzh7
Subject: [Intel-wired-lan] [PATCH net-next v3 00/12] net: intel: start The
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
 .../marvell/octeontx2/nic/otx2_common.c       |   1 +
 .../ethernet/marvell/octeontx2/nic/otx2_pf.c  |   1 +
 .../ethernet/mellanox/mlx5/core/en/params.c   |   1 +
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   1 +
 drivers/net/wireless/mediatek/mt76/mt76.h     |   1 +
 include/linux/net/intel/libie/rx.h            | 170 +++++
 include/linux/net/intel/libie/stats.h         | 214 ++++++
 include/linux/skbuff.h                        |   4 +-
 include/net/page_pool.h                       |  69 +-
 net/core/page_pool.c                          |  10 +
 36 files changed, 1141 insertions(+), 2081 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libie/Makefile
 create mode 100644 drivers/net/ethernet/intel/libie/internal.h
 create mode 100644 drivers/net/ethernet/intel/libie/rx.c
 create mode 100644 drivers/net/ethernet/intel/libie/stats.c
 create mode 100644 include/linux/net/intel/libie/rx.h
 create mode 100644 include/linux/net/intel/libie/stats.h

---
Directly to net-next, has non-Intel code changes (0006-0008).

From v2[0]:
* 0006: fix page_pool.h include in OcteonTX2 files (Jakub, Patchwork);
* no functional changes.

From v1[1]:
* 0006: new (me, Jakub);
* 0008: give the helpers more intuitive names (Jakub, Ilias);
*  -^-: also expand their kdoc a bit for the same reason;
*  -^-: fix kdoc copy-paste issue (Patchwork, Jakub);
* 0011: drop `inline` from C file (Patchwork, Jakub).

[0] https://lore.kernel.org/netdev/20230525125746.553874-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20230516161841.37138-1-aleksander.lobakin@intel.com

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
