Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7CA3E265E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E29C40510;
	Fri,  6 Aug 2021 08:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_S4-MCOMXaD; Fri,  6 Aug 2021 08:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA8A0404F9;
	Fri,  6 Aug 2021 08:49:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60B571BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C6DD83B42
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWYy3YcC7-SC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 330AB83B34
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="211231428"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="211231428"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="523388628"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 06 Aug 2021 01:49:07 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kP030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:07 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:48:57 +0200
Message-Id: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net-next v1 0/9] advanced switch rule
 management
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series adds support for adding/removing advanced switch filters
in ice driver. Advanced filters are building blocks for HW acceleration
of TC orchestration. Add ndo_setup_tc callback implementation for PF and
VF port representors (when device is configured in switchdev mode).

Define dummy packet headers to allow adding advanced rules in HW.
Supported headers, and thus filters, are:
- MAC + IPv4 + UDP
- MAC + VLAN + IPv4 + UDP
- MAC + IPv4 + TCP
- MAC + VLAN + IPv4 + TCP
- MAC + IPv6 + UDP
- MAC + VLAN + IPv6 + UDP
- MAC + IPv6 + TCP
- MAC + VLAN + IPv6 + TCP

Dan Nowlin (2):
  ice: manage profiles and field vectors
  ice: create advanced switch recipe

Grishma Kotecha (2):
  ice: implement low level recipes functions
  ice: allow adding advanced rules

Kiran Patil (1):
  ice: ndo_setup_tc implementation for PF

Michal Swiatkowski (2):
  ice: Allow changing lan_en and lb_en on all kinds of filters
  ice: ndo_setup_tc implementation for PR

Shivanshu Shukla (1):
  ice: allow deleting advanced rules

Victor Raj (1):
  ice: cleanup rules info

 drivers/net/ethernet/intel/ice/Makefile            |    3 +-
 drivers/net/ethernet/intel/ice/ice.h               |    4 +
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h    |   57 +
 drivers/net/ethernet/intel/ice/ice_common.c        |   42 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c       |    3 +
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c     |  278 ++-
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h     |   14 +
 drivers/net/ethernet/intel/ice/ice_flex_type.h     |   13 +
 drivers/net/ethernet/intel/ice/ice_fltr.c          |  127 +
 drivers/net/ethernet/intel/ice/ice_main.c          |   68 +
 drivers/net/ethernet/intel/ice/ice_protocol_type.h |  169 ++
 drivers/net/ethernet/intel/ice/ice_repr.c          |   53 +
 drivers/net/ethernet/intel/ice/ice_switch.c        | 2541 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h        |  139 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c        |  855 +++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.h        |  130 +
 drivers/net/ethernet/intel/ice/ice_type.h          |    4 +
 17 files changed, 4402 insertions(+), 98 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tc_lib.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tc_lib.h

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
