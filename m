Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FCF21ACD9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 04:04:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB6BA88641;
	Fri, 10 Jul 2020 02:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h9MoaItF1lbT; Fri, 10 Jul 2020 02:04:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E73B58864A;
	Fri, 10 Jul 2020 02:04:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3B921BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 02:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD77F2E0E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 02:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6EpS8cCGWCcn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 02:04:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C0F02051E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 02:04:12 +0000 (UTC)
IronPort-SDR: vCzOpDVLMy2emrQDxUokiiblp2Go9WeAaRVaCSkBH6jXhy/8wja9IjgekHDdQSj+AAkDYPxEj7
 tSncLa8QCweQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="145630611"
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="145630611"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 19:04:11 -0700
IronPort-SDR: p8mt6T4rjdhZAPISlaBY30+7qcB+u9PwGBDeFqc1DXZuGsgXQFbAVbuVK0rM3kwVr3+co3t93B
 xYmsLj+3mnDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="484014983"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.119.213])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jul 2020 19:04:10 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Jul 2020 09:54:16 +0800
Message-Id: <20200710015421.92122-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619045711.16055-1-haiyue.wang@intel.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next, v8 0/5] ice: add Intel DCF mode support
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

v8: fix unaligned pointer use for packed/unaligned structure

v7: Remove the CONFIG_PCI_IOV for function 'ice_aq_sw_rules'.

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
 drivers/net/ethernet/intel/ice/ice_dcf.c      | 833 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcf.h      |  91 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  16 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |  27 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 366 ++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
 include/linux/avf/virtchnl.h                  |  63 ++
 12 files changed, 1392 insertions(+), 26 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
