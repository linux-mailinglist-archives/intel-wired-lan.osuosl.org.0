Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DFA428A26
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Oct 2021 11:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39B8360858;
	Mon, 11 Oct 2021 09:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HdRigUUX456n; Mon, 11 Oct 2021 09:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31D3760850;
	Mon, 11 Oct 2021 09:48:59 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DD721BF3F3
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 09:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72AC1402B5
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 09:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGWDHvwo83_n for <intel-wired-lan@osuosl.org>;
 Mon, 11 Oct 2021 09:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC29F40266
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 09:48:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10133"; a="226795780"
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="226795780"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 02:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="525912812"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 11 Oct 2021 02:48:33 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 11 Oct 2021 11:48:17 +0200
Message-Id: <20211011094821.5286-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/4] support for tunnel in ice
 eswitch
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

This series adds the support for ice vxlan, geneve and gre offload.

Support adding drop and redirect filter from and to this tunnel deivces.
From means from uplink to VF and to means from VF to uplink. There is no
support for decapsulation and encapsulation offload.

example:
- vxlan from uplink to VF:
tc filter add dev $VXLAN_DEV protocol ip parent ffff: flower enc_dst_ip  \
$VF1_IP enc_key_id $VXLAN_VNI action mirred egress redirect dev $VF1_PR
- vxlan from VF to uplink:
tc filter add dev $VF1_PR protocol ip parent ffff: flower enc_dst_ip \
$LP_IP enc_key_id $VXLAN_VNI action mirred egress redirect dev $VXLAN_DEV

Michal Swiatkowski (4):
  ice: support for indirect notification
  ice: vxlan and geneve tc support
  ice: low level support for tunnels
  ice: support for gre in eswitch

 drivers/net/ethernet/intel/ice/ice.h          |   8 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  26 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   4 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 196 ++++++++-
 .../ethernet/intel/ice/ice_protocol_type.h    |  35 ++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 374 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 393 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  10 +
 9 files changed, 1000 insertions(+), 49 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
