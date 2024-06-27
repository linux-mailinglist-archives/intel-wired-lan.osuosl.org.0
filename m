Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C6291A7AC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:18:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F66060720;
	Thu, 27 Jun 2024 13:18:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id peETASs-pkrj; Thu, 27 Jun 2024 13:18:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C81160E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494325;
	bh=8Hm5Nt2PNuSE7ouS5euBOBkBdnCVy6rhJ5S7XyyjFio=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=b2OI8E88BwFUvaRwKs8Zh1XeQSSP0z7QlJv1MPtopfuv2GQ0n+ea2bWyLkVRL+MHC
	 B8d9MzLxbLQMjkdy9ILBBICmt5MmO0F0U1pquA+ijYu+RY/ZAvbwM7Zf/Nc+R9a5hl
	 wILwrXdPJNNxEu5fnBKVrwIoQN7HwRrdfJhm4yDQsU2X9BaeMB8aAnVnS5+ZLvkL/D
	 SVZu9NNNzWlhryCgqnIyOEo7udXaEmg3nxCnWafp26mb3Bmjx8nkaPV12kznoZl/kC
	 ZQOMy9QoxdhVaw2qCK5kRV9l1qNelHo7G1kfwswjWFZnIpvge+O/acX+wM0FytXV1D
	 ifTK5LlT+39Jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C81160E11;
	Thu, 27 Jun 2024 13:18:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E45B61BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC221402AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mPrNxy4mN7uC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:18:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9610F402AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9610F402AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9610F402AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:42 +0000 (UTC)
X-CSE-ConnectionGUID: r3scp18qTNilMcUJ0CbiGg==
X-CSE-MsgGUID: D8Iz81ZYTPWOoodqdB/qzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452326"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452326"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:18:42 -0700
X-CSE-ConnectionGUID: gS+2ox90Tp2qH/kRzOX02w==
X-CSE-MsgGUID: ue7M6aKrSF6M5fFXf4t3LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315363"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:40 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:49 +0200
Message-Id: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494323; x=1751030323;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CuGXgtBKOL2G2NvU1k0XYyLxojsLJ6yNufSIEaUfRZ0=;
 b=dJVppQjjSLdNPjrZ3XuZIW0WV1RXNn9UvS/p9gmmkxtzSDaSoXu+htlD
 /1bXYjHeBnXKnwRA7Ot1KOzuotIUB1K0+UGwqFuo+9t4R99xhjuhBx/VK
 NepRNKAx0XAHRg9cFmI01BJ0A7FV5caRyzkZp0M3COfkJ+/riwnzRHkMI
 RAU36xTCfinyE1vHQNYzZrToDJJbAOK+9zjt5P1mmFuEx8NQPr4+WjeeX
 rzloOU9GIjDKbzMViB1vMndjNffeteF++jbJyvcnMsBtzt7SWqnPwCZsw
 RAXBn10gOltp0lGdZkJnUntnl8ZcAn2mRBe8XzxZ+4gmlVBUZgz17i0MO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dJVppQjj
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 0/8] ice: fix AF_XDP ZC timeout
 and concurrency issues
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, aleksander.lobakin@intel.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

changes included in this patchset address an issue that customer has
been facing when AF_XDP ZC Tx sockets were used in combination with flow
control and regular Tx traffic.

After executing:
ethtool --set-priv-flags $dev link-down-on-close on
ethtool -A $dev rx on tx on

launching multiple ZC Tx sockets on $dev + pinging remote interface (so
that regular Tx traffic is present) and then going through down/up of
$dev, Tx timeout occured and then most of the time ice driver was unable
to recover from that state.

These patches combined together solve the described above issue on
customer side. Main focus here is to forbid producing Tx descriptors
when either carrier is not yet initialized or process of bringing
interface down has already started.

Olek,
we decided not to check IFF_UP as you initially suggested. Reason is
that when link goes down netif_running() has broader scope than IFF_UP
being set as the former (the __LINK_STATE_START bit) is cleared earlier
in the core.

Thanks,
Maciej

v3-v4:
- turn carrier on in ice_qp_ena() only when physical link is up [Michal]

v2->v3:
- drop redundant braces in patch 3 [Shannon]
- fix naming of ice_xsk_pool() in patch 6 [Shannon]
- add review and test tags

v1->v2:
- fix kdoc issues in patch 6 and 8
- drop Larysa's patches for now


Maciej Fijalkowski (7):
  ice: don't busy wait for Rx queue disable in ice_qp_dis()
  ice: replace synchronize_rcu with synchronize_net
  ice: modify error handling when setting XSK pool in ndo_bpf
  ice: toggle netif_carrier when setting up XSK pool
  ice: improve updating ice_{t,r}x_ring::xsk_pool
  ice: add missing WRITE_ONCE when clearing ice_rx_ring::xdp_prog
  ice: xsk: fix txq interrupt mapping

Michal Kubiak (1):
  ice: respect netif readiness in AF_XDP ZC related ndo's

 drivers/net/ethernet/intel/ice/ice.h      |  11 +-
 drivers/net/ethernet/intel/ice/ice_base.c |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c |   6 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 159 +++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |   4 +-
 6 files changed, 109 insertions(+), 77 deletions(-)

-- 
2.34.1

