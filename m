Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B58C320EB49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2020 04:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38EC7876D6;
	Tue, 30 Jun 2020 02:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XOFJYkhkrh_w; Tue, 30 Jun 2020 02:09:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38049876B3;
	Tue, 30 Jun 2020 02:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FF121BF25B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 02:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E89C21135
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 02:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1eh7x+TJucRn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2020 02:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 43F43203E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 02:09:25 +0000 (UTC)
IronPort-SDR: BVkWWdtOm1dGMXhdD8Gi49UInROnognmXSQAWUHwzrlhe21zo/fF0OPonOHb52/1tgsoLbC3gv
 G/TmhrzvfVXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="164137977"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="164137977"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 19:09:24 -0700
IronPort-SDR: FrtJue7+6EXg/MXuRpLF65CbxOUoLsLcUzbZqmynhqfDWA72z7S7rl3rGgn5b+Z24tcfKGCMgj
 7FW/4wgs60Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="277274161"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.119.213])
 by orsmga003.jf.intel.com with ESMTP; 29 Jun 2020 19:09:23 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Jun 2020 09:59:42 +0800
Message-Id: <20200630015947.79722-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619045711.16055-1-haiyue.wang@intel.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next, v6 0/5] ice: add Intel DCF mode support
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

The iproute2 and ethtool are evolving to expose the NIC hardware capability.
But these available orchestration methods in Linux kernel are limited in their
capability to exercise advance functionality in the hardware, since different
vendors may have different data programming method.

Intel Ethernet Adaptive Virtual Function (AVF) is the common hardware interface
for SR-IOV, it has the defined message format to talks with the PF. 

To make good use of the advanced functionality like Switch (Binary Classifier),
The ice PF driver introduces a DCF (Device Config Function) mode to extend the
AVF feature.

The DCF (Device Config Function) method wraps an raw flow admin queue command in
a virthcnl message and sends it to the PF to be executed. This is required because
it doesn't have the privilege level to issue the admin queue commands, so it acts
as a proxy PF. So that the user can customize the AVF feature, and use their own
programming language to translate the flow rule management data into ice raw flow,
these raw flows then can be executed in PF's sandbox.

And the kernel PF driver fully controls the behavior of DCF for security, like only
the trusted VF with ID zero can run into DCF mode, and also for being compatible
with the common AVF feature, the VF needs to advertise and acquire DCF capability
firstly.

v6: Rebase with the new commit for ice_switch.c/h.

v5: Update the prefix with 'net-next'.

v4: Mirror commit message update.

v3: Remove the unused function, and control the ice_aq_sw_rules scope by CONFIG_PCI_IOV.
    Capitalize all abbreviations.

v2: Fix the macro ICE_DCF_VFID definition style issue.

Haiyue Wang (5):
  ice: add the virtchnl handler for AdminQ command
  ice: add DCF cap negotiation and state machine
  ice: support to get the VSI mapping
  ice: enable DDP package info querying
  ice: add switch rule management for DCF

 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_dcf.c      | 839 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcf.h      |  91 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |  29 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 366 ++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
 include/linux/avf/virtchnl.h                  |  63 ++
 12 files changed, 1403 insertions(+), 26 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
