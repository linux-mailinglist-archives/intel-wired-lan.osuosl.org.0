Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ECA47034E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 15:59:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 280B46142E;
	Fri, 10 Dec 2021 14:59:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZEJk1X4NnMa; Fri, 10 Dec 2021 14:59:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21CB36143E;
	Fri, 10 Dec 2021 14:59:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E9501BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 697C16142E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iWHmE1x84w4m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 14:59:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AEA561267
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639148389; x=1670684389;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sc4UZZcBuoyPA5U2BemIlY7ATRRho8rNRsU713opSdc=;
 b=C+hW4pIxBUixq2eUvJQiUZv7ErJGNJBiFcxQ9OOrz5AueGw9M9OJzOT4
 wT7/eLIZ1oSKjRaHjvrMcqjS2mjpGVYvkyBhpk2nNS5ybLigdV1k+R12i
 O35Mc6y2Y4r7FFUw3uHtrdSZw7IzQdEHztGwDCn0YPuwcTr4XmHJ4ZF8e
 IeJrOaBvx7ZbzcUI4KFkSfSxwPKESmEBJJkIzryaORyJO+roDUis/tcDT
 TeKOfdy+cmy2mLJmj7OG+2DixMxmHuW/MNmXdc16Cez1k6+chL6BweEzA
 +7pJj6pC6nkk+N0oSl+QK+cZb2e4LBJNODM7sIIezjqGbFB4NFJlx8fDO w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238160340"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238160340"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 06:59:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="680763681"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 10 Dec 2021 06:59:46 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Dec 2021 15:59:36 +0100
Message-Id: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 0/5] ice: xsk: Rx processing
 fixes
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
Cc: elza.mathew@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi there,
it seems that previous [0] Rx fix was not enough and there are still
issues with AF_XDP Rx ZC support in ice driver. Elza reported that for
multiple XSK sockets configured on a single netdev, some of them were
becoming dead after a while. We have spotted more things that needed to
be addressed this time. More of information can be found in particular
commit messages.

Thanks,
Maciej

[0]: https://lore.kernel.org/bpf/20211129231746.2767739-1-anthony.l.nguyen@intel.com/

Maciej Fijalkowski (5):
  ice: xsk: return xsk buffers back to pool when cleaning the ring
  ice: xsk: allocate separate memory for XDP SW ring
  ice: xsk: do not clear status_error0 for ntu + nb_buffs descriptor
  ice: xsk: allow empty Rx descriptors on XSK ZC data path
  ice: xsk: fix cleaned_count setting

 drivers/net/ethernet/intel/ice/ice_base.c | 19 +++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 62 +++++++++++------------
 4 files changed, 62 insertions(+), 39 deletions(-)

-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
