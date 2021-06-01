Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1841C3972B6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 13:46:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A4F5402B8;
	Tue,  1 Jun 2021 11:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cqU4ap2LyMuT; Tue,  1 Jun 2021 11:46:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51B504048A;
	Tue,  1 Jun 2021 11:46:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E47741BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 11:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE207404AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 11:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUXDeCURr98r for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jun 2021 11:46:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A904E4049E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 11:46:12 +0000 (UTC)
IronPort-SDR: OTWRCFSnzyHgJaf3dJXuxAVhkmPQrnYVX60ggNFY3XGpmhKmge236w2cYmeLdvaB6hYbb1wTCj
 ThiojbTFMKbg==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="203526546"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="203526546"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 04:46:11 -0700
IronPort-SDR: ovwvWknKV5qnbqnY2ThMg6YjgHEfadAuRFMxnLmyNEcqapYiiTe/lF+xQqvdr6KudyEFHrwsqf
 WY864hzFGffQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="446931344"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2021 04:46:09 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Jun 2021 13:32:34 +0200
Message-Id: <20210601113236.42651-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next 0/2] ice: bring up XDP_TX back
 to life
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi there,

here are the improvements for handling the XDP_TX/REDIRECT actions in
ice driver. People have been recently reporting that they stumble upon a
situation where no packets are xmitted when they do XDP_TX from their
BPF programs - first patch addresses that.

Second patch handles the case where we could not have XDP ring per core.
Let's consider that as a starting point of fixing Intel drivers against
that scenario.

Note that this is based on the series that I sent two weeks ago:
https://lore.kernel.org/bpf/20210520063500.62037-1-maciej.fijalkowski@intel.com/

Parametrizing of ice_vsi_cfg_txqs/ice_vsi_stop_tx_rings is needed for a
fallback path.

Thanks!

Maciej Fijalkowski (2):
  ice: unify xdp_rings accesses
  ice: introduce XDP Tx fallback path

 drivers/net/ethernet/intel/ice/ice.h          | 37 +++++++++
 drivers/net/ethernet/intel/ice/ice_base.c     |  5 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 76 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 62 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 13 +++-
 7 files changed, 191 insertions(+), 8 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
