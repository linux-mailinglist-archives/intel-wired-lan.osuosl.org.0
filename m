Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE5924A8CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 23:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C8EE862FC;
	Wed, 19 Aug 2020 21:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Nr9xD21bCsB; Wed, 19 Aug 2020 21:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98557862E4;
	Wed, 19 Aug 2020 21:59:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 151181BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF2EE226C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDb3xv26y6LU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 21:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D3F6226A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:54 +0000 (UTC)
IronPort-SDR: Lv303Ksvdfaccdjq16cY/e7yBnuQ3k/qY+rFDVZr93GI8lHPqJFJB9ezcno8PlwD9MJPECU9od
 rUv+Q8+4hTBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="216734393"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="216734393"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 14:58:53 -0700
IronPort-SDR: kDAqQRW3c1B0JiInfSTiW91W7pRJ741kjuy5JBkMEHyPvvDLsJPkoWimYMZjAURVRWLuHogofd
 9ipTDJp/fOjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="329469936"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2020 14:58:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 19 Aug 2020 14:58:35 -0700
Message-Id: <20200819215838.3834786-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.218.ge27853923b9d.dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/3] ice devlink updates
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series includes a couple of minor cleanups in ice_devlink.c

First, Ani converts ice_info_get_dsn into a void function, as it always
returns success and does not need to conform to the factory pattern of the
other info reporting functions.

Second, Jake adds reporting of the DDP Track ID for the DDP package to
devlink info. The track ID is indicated as a bundle_id which refers to the
tracking identifier for the DDP package. This is similar to the fw.bundle_id
which refers to the main firmware block. This track ID is useful as the DDP
version alone is not enough to uniquely identify the DDP package.

Finally, Jake refactored the devlink_port to be tracked by the ice_vsi
structure instead of ice_pf. Doing so helps avoid some cleanup ordering
issues that resulted in possibly calling devlink_port_unregister twice, or
for a devlink_port that was never registered. Additionally, this paves the
way for a future addition of devlink_port for virtual functions and other
types of ports besides the main PF port.

Anirudh Venkataramanan (1):
  ice: Change ice_info_get_dsn to be void

Jacob Keller (2):
  ice: add the DDP Track ID to devlink info
  ice: refactor devlink_port to be per-VSI

 Documentation/networking/devlink/ice.rst     |  5 ++
 drivers/net/ethernet/intel/ice/ice.h         |  7 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c | 72 ++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_devlink.h |  4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  5 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  8 +--
 6 files changed, 60 insertions(+), 41 deletions(-)


base-commit: 94f0e130c54caede97dd62d5fec8ada4142fe68f
-- 
2.28.0.218.ge27853923b9d.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
