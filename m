Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A736A43B049
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 12:39:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 218E0403E8;
	Tue, 26 Oct 2021 10:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-UXlwT6jMtS; Tue, 26 Oct 2021 10:39:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4D9840017;
	Tue, 26 Oct 2021 10:39:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B382D1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2FF2608F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EhOtRweUKoqM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 10:39:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01018608F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="293336093"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="293336093"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 03:39:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="554642388"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 26 Oct 2021 03:39:31 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 19QAdUhs008742
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 11:39:30 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 12:38:38 +0200
Message-Id: <20211026103840.11455-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/2] improve switchdev's slow-path
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

This patchset introduces new implementation of switchdev slow-path
which relies on advanced rules. That's why it also introduces
mechanism of replaying advanced rules which slow-path benefits from.

In current switchdev implementation, every VF PR is assigned to
individual ring on switchdev ctrl VSI. For slow-path traffic, there
is a mapping VF->ring done in software based on src_vsi value.

With this change, HW solution is introduced which is more
efficient. For each VF, src MAC (VF's MAC) filter will be created,
which forwards packets to the coresponding switchdev ctrl VSI queue
based on src MAC address.

Victor Raj (1):
  ice: replay advanced rules after reset

Wojciech Drewek (1):
  ice: improve switchdev's slow-path

 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 170 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  24 +--
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  80 ---------
 drivers/net/ethernet/intel/ice/ice_fltr.h     |   3 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  24 +++
 drivers/net/ethernet/intel/ice/ice_repr.c     |  17 ++
 drivers/net/ethernet/intel/ice/ice_repr.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  95 +++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  11 ++
 11 files changed, 260 insertions(+), 174 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
