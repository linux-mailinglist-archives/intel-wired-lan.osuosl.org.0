Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F67C6837AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:45:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C097240522;
	Tue, 31 Jan 2023 20:45:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C097240522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197920;
	bh=EbvSSZUIJdSHSxe5Gz23ftugntPnv7DBSr20k4XiGG0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=U4NZmMWhK74SKEjP6qpivKXEPgNkXDT0PQGNio7/2XwNEoa44oZZMuyNWpVFyANWh
	 yS8hAvZywW6Nc1x6RvhVp1uLm28QdvZV+IwzZ7vUTf2tis80clXJ8BaZuBePh644gb
	 OfA/zMW/K8jz0RNHkhOlpll05ZUu9vpWlj7X+gRSMKB9SjVopJpZUb2o6squVi9T8B
	 dBTIF/EvmrdC6N2A9pF0vzHphXfPU/Rq54bYAMzH+1apKOu+RelU0ic6XgtiEi7QA7
	 lLTJatz2C8ILxuvjPc6WOKqMigmfoOcmwxU/wEYDS8b3k8qAoD6eJWd1U+jEbMAGsm
	 I8y65aT92qJGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S7WzSaiQZuUo; Tue, 31 Jan 2023 20:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9461C404F6;
	Tue, 31 Jan 2023 20:45:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9461C404F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC5221BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 943DA60BDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 943DA60BDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLzD5dDtV05x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3040760B77
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3040760B77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167065"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167065"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:45:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595218"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595218"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:09 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:44:53 +0100
Message-Id: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197913; x=1706733913;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jmq7RRGlshhZoJmSbplAEOtDxmbFHh5q1JoifDLUQ20=;
 b=U6Oqkq7mgYW3tH5Agheoqy6HNwBMm+qLTs2Mgx4m0HBXUHvRagZ2oWip
 w94jdm/jY8gQwWOdqPNW0gGlJcgUrjvTAGH/TgVJAsPcIeK7IugGyLgRT
 8xL6XnHov+nPmbooWZloGDELWDzzknUcdYGyGfc03v5XR0qwxgEMy6F+t
 qH1REGHDw+PF/pSsy3Vurco7ALcsGVlYv6SiLb0SZ2y5weyYhoLOCIceX
 PBYsJRgjNpxvztNubRY8dAUPLDiZrYDGsaecR6ppzRfsnT2bR6XuOauZV
 y+HehmRgw4Rp+HTEqrHc7muK1pfdjNsLIkLETm6gc+scBWvlbmXWPt3+I
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U6Oqkq7m
Subject: [Intel-wired-lan] [PATCH bpf-next 00/13] ice: add XDP mbuf support
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi there,

although this work started as an effort to add multi-buffer XDP support
to ice driver, as usual it turned out that some other side stuff needed
to be addressed, so let me give you an overview.

First patch adjusts legacy-rx in a way that it will be possible to refer
to skb_shared_info being at the end of the buffer when gathering up
frame fragments within xdp_buff.

Then, patches 2-9 prepare ice driver in a way that actual multi-buffer
patches will be easier to swallow.

10 and 11 are the meat. What is worth mentioning is that this set
actually *fixes* things as patch 11 removes the logic based on
next_dd/rs and we previously stepped away from this for ice_xmit_zc().
Currently, AF_XDP ZC XDP_TX workload is off as there are two cleaning
sides that can be triggered and two of them work on different internal
logic. This set unifies that and allows us to improve the performance by
2x with a trick on the last (13) patch.

12th is a simple cleanup of no longer fields from Tx ring.

I might be wrong but I have not seen anyone reporting performance impact
among patches that add XDP multi-buffer support to a particular driver.
Numbers below were gathered via xdp_rxq_info and xdp_redirect_map on
1500 MTU:

XDP_DROP      +1%
XDP_PASS      -1,2%
XDP_TX        -0,5%
XDP_REDIRECT  -3,3%

Cherry on top, which is not directly related to mbuf support (last
patch):
XDP_TX ZC +126%

Target the we agreed on was to not degrade performance for any action by
anything that would be over 5%, so our goal was met. Basically this set
keeps the performance where it was. Redirect is slower due to more
frequent tail bumps.

Thanks!


Maciej Fijalkowski (13):
  ice: prepare legacy-rx for upcoming XDP multi-buffer support
  ice: add xdp_buff to ice_rx_ring struct
  ice: store page count inside ice_rx_buf
  ice: pull out next_to_clean bump out of ice_put_rx_buf()
  ice: inline eop check
  ice: centrallize Rx buffer recycling
  ice: use ice_max_xdp_frame_size() in ice_xdp_setup_prog()
  ice: do not call ice_finalize_xdp_rx() unnecessarily
  ice: use xdp->frame_sz instead of recalculating truesize
  ice: add support for XDP multi-buffer on Rx side
  ice: add support for XDP multi-buffer on Tx side
  ice: remove next_{dd,rs} fields from ice_tx_ring
  ice: xsk: do not convert to buff to frame for XDP_TX

 drivers/net/ethernet/intel/ice/ice_base.c     |  21 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   8 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  47 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 408 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  54 ++-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 236 ++++++----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  75 +++-
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 192 +++++----
 9 files changed, 629 insertions(+), 416 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
