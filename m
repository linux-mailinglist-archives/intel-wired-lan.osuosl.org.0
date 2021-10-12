Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 817E542ABF3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 20:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4F4181858;
	Tue, 12 Oct 2021 18:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6FkfJHqTKYzb; Tue, 12 Oct 2021 18:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF6098183D;
	Tue, 12 Oct 2021 18:33:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EEDC1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65B0C405DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eMCRaCfVcyoY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 18:33:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6355B4028C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="250640569"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="250640569"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 11:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="491100328"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga008.jf.intel.com with ESMTP; 12 Oct 2021 11:33:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Oct 2021 11:31:02 -0700
Message-Id: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2 0/4] support for tunnel in ice
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

This series adds the support for ice VXLAN, Geneve and GRE offload.

Support adding drop and redirect filter from and to this tunnel devices.
From means from uplink to VF and to means from VF to uplink. There is no
support for decapsulation and encapsulation offload.

example:
- VXLAN from uplink to VF:
tc filter add dev $VXLAN_DEV protocol ip parent ffff: flower enc_dst_ip  \
$VF1_IP enc_key_id $VXLAN_VNI action mirred egress redirect dev $VF1_PR
- VXLAN from VF to uplink:
tc filter add dev $VF1_PR protocol ip parent ffff: flower enc_dst_ip \
$LP_IP enc_key_id $VXLAN_VNI action mirred egress redirect dev
$VXLAN_DEV
---
v2:
- Fix sparse error and kdoc issues
- Fix abbreviations

Michal Swiatkowski (4):
  ice: support for indirect notification
  ice: VXLAN and Geneve TC support
  ice: low level support for tunnels
  ice: support for GRE in eswitch

 drivers/net/ethernet/intel/ice/ice.h          |   8 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  30 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   4 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 196 ++++++++-
 .../ethernet/intel/ice/ice_protocol_type.h    |  35 ++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 375 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 392 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  10 +
 9 files changed, 1004 insertions(+), 49 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
