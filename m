Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F583BC1E8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 18:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1480783279;
	Mon,  5 Jul 2021 16:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fOxqZ1NogPj; Mon,  5 Jul 2021 16:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 057EA8339C;
	Mon,  5 Jul 2021 16:58:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 141971BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 16:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8711608D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 16:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BLWPbqAIZ6h1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 16:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 600D6608D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 16:57:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="270126737"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="270126737"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 09:57:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="562686263"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jul 2021 09:57:54 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 18:43:34 +0200
Message-Id: <20210705164338.58313-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-next 0/4] XDP_TX improvements for
 ice
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
Cc: joamaki@gmail.com, netdev@vger.kernel.org, toke@redhat.com,
 bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

this is a second revision of a series around XDP_TX improvements for ice
driver. When compared to v1 (which can be found under [1]), two new
patches are introduced that are focused on improving the performance for
XDP_TX as Jussi reported that the numbers were pretty low on his side.
Furthermore the fallback path is now based on static branch, as
suggested by Toke on v1. This means that there's no further need for a
standalone net_device_ops that were serving the locked version of
ndo_xdp_xmit callback.

Idea from 2nd patch is borrowed from a joint work that was done against
OOT driver among with Sridhar Samudrala, Jesse Brandeburg and Piotr
Raczynski, where we working on fixing the scaling issues for Tx AF_XDP
ZC path.

Last but not least, with this series I observe the improvement of
performance by around 30%.

Thanks!
Maciej

[1] : https://lore.kernel.org/bpf/20210601113236.42651-1-maciej.fijalkowski@intel.com/

Maciej Fijalkowski (4):
  ice: unify xdp_rings accesses
  ice: optimize XDP_TX descriptor processing
  ice: do not create xdp_frame on XDP_TX
  ice: introduce XDP_TX fallback path

 drivers/net/ethernet/intel/ice/ice.h          |   3 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  45 ++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 123 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   6 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  29 +++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  16 +++
 7 files changed, 190 insertions(+), 36 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
