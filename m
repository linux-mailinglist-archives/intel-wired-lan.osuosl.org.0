Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552DC20193E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jun 2020 19:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E04D89A4B;
	Fri, 19 Jun 2020 17:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MgOfOermt2Ab; Fri, 19 Jun 2020 17:19:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F29D289A3E;
	Fri, 19 Jun 2020 17:19:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F16F1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2020 17:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B0DB88D79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2020 17:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5nQDgEvBYl82 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jun 2020 17:19:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6116488E4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2020 17:19:46 +0000 (UTC)
IronPort-SDR: hyzLexa9fGENdbfvMdayJf9CfzoI2CCq2KUWuVuaMy8aMSRtWAT1xrHhjxEzJZ4MbHE3Pa/c/H
 67SvpuXYtoYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9657"; a="141298882"
X-IronPort-AV: E=Sophos;i="5.75,256,1589266800"; d="scan'208";a="141298882"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2020 10:19:45 -0700
IronPort-SDR: nFYA7NjF4Ncmd8ixPdSwqq2W2x9N6IyIrtvSS9dtaNeiW17TPheeLI1TEex2jJsKy1eSnU1khK
 kdu+vU2wKUWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,256,1589266800"; d="scan'208";a="477702824"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.119.213])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2020 10:19:44 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 20 Jun 2020 01:10:17 +0800
Message-Id: <20200619171022.9539-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619045711.16055-1-haiyue.wang@intel.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 0/5] ice: add Intel DCF mode support
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

v2: fix the macro ICE_DCF_VFID definition style issue.

Haiyue Wang (5):
  ice: add the virtchnl handler for AdminQ command
  ice: add DCF cap negotiation and state machine
  ice: support to get the VSI mapping
  ice: enable DDP package info querying
  ice: add switch rule management for DCF

 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_dcf.c      | 848 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcf.h      |  97 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  24 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |  35 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 366 ++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
 include/linux/avf/virtchnl.h                  |  63 ++
 12 files changed, 1421 insertions(+), 34 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
