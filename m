Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EF643B4E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 16:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52005400CE;
	Tue, 26 Oct 2021 14:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j99IBblmB0QE; Tue, 26 Oct 2021 14:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 282094020B;
	Tue, 26 Oct 2021 14:55:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10A511BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 684A260632
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TEVktD8MlVfr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 14:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC68B60A35
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="228685296"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="228685296"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 07:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497370427"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 26 Oct 2021 07:47:54 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 18:47:17 +0200
Message-Id: <20211026164719.1766911-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next 0/2] ice: ethtool -L fixes
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
Cc: alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 marta.a.plantykow@intel.com, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi there,

here are the two fixes for issues around ethtool's set_channels()
callback for ice driver. Both are related to XDP resources. First one
corrects the size of vsi->txq_map that is used to track the usage of Tx
resources and the second one prevents the wrong refcounting of bpf_prog.

Thanks!

Maciej Fijalkowski (2):
  ice: fix vsi->txq_map sizing
  ice: avoid bpf_prog refcount underflow

 drivers/net/ethernet/intel/ice/ice_lib.c  |  9 +++++++--
 drivers/net/ethernet/intel/ice/ice_main.c | 18 +++++++++++++++++-
 2 files changed, 24 insertions(+), 3 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
