Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28876429787
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Oct 2021 21:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADC9840368;
	Mon, 11 Oct 2021 19:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWyP1mEr_a6b; Mon, 11 Oct 2021 19:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A55F40358;
	Mon, 11 Oct 2021 19:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C17ED1BF2A6
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B775240369
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RONN0PdGZXu8 for <intel-wired-lan@osuosl.org>;
 Mon, 11 Oct 2021 19:27:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1A7240358
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="214100407"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="214100407"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 12:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="460084365"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga002.jf.intel.com with ESMTP; 11 Oct 2021 12:27:17 -0700
From: sudheer.mogilappagari@intel.com
To: intel-wired-lan@osuosl.org
Date: Mon, 11 Oct 2021 12:25:15 -0700
Message-Id: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/3] Application Device Queues
 support
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

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

This series introduces initial support for Application Device Queues(ADQ)
in ice driver. ADQ provides traffic isolation for application flows in
hardware and ability to steer traffic to a given traffic class. This
helps in aligning NIC queues to application threads.

Traffic classes are configured using mqprio framework of tc command
and mapped to HW channels(VSIs) in the driver. The queue set of each
traffic class is managed by corresponding VSI. Each traffic channel
can be configured with bandwidth rate-limiting limits and is offloaded
to the hardware through the mqprio framework by specifying the mode
option as 'channel' and shaper option as 'bw_rlimit'.

Next, the flows of application can be steered into a given traffic class
using "tc filter" command. The option "skip_sw hw_tc x" indicates 
hw-offload of filtering and steering filtered traffic into specified TC.
Non-matching traffic flows through TC0.

When channel configuration are removed queue configuration is set to
default and filters configured on individual traffic classes are deleted.

example:
$ ethtool -K eth0 hw-tc-offload on

Configure 3 traffic classes and map priority 0,1,2 to TC0, TC1 and TC2
respectively. TC0 has 2 queues from offset 0 & TC1 has 8 queues from
offset 2 and TC2 has 4 queues from offset 10. Enable hardware offload
of channels.

$ tc qdisc add dev eth0 root mqprio num_tc 3 map 0 1 2 queues \
	2@0 8@2 4@10 hw 1 mode channel

$ tc qdisc show dev eth0
qdisc mqprio 8001: root  tc 2 map 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0
             queues:(0:1) (2:9) (10:13)
             mode:channel


Configure two filters to match based on dst ipaddr, dst tcp port and
redirect to TC1 and TC2.
$ tc qdisc add dev eth0 clsact

$ tc filter add dev eth0 protocol ip ingress prio 1 flower\
  dst_ip 192.168.1.1/32 ip_proto tcp dst_port 80\
  skip_sw hw_tc 1
$ tc filter add dev eth0 protocol ip ingress prio 1 flower\
  dst_ip 192.168.1.1/32 ip_proto tcp dst_port 5001\
  skip_sw hw_tc 2

$ tc filter show dev eth0 ingress

Delete traffic classes configuration:
$ sudo tc qdisc del dev eth0 root

Kiran Patil (3):
  ice: Add infrastructure for mqprio support via ndo_setup_tc
  ice: enable ndo_setup_tc support for mqprio_qdisc
  ice: Add tc-flower filter support for channel

 drivers/net/ethernet/intel/ice/ice.h          | 108 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |  31 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 201 ++--
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  10 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  10 +
 drivers/net/ethernet/intel/ice/ice_lib.c      | 386 ++++++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |  17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 975 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_sched.c    |  68 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 119 +++
 drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 217 +++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  22 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   7 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   4 +-
 18 files changed, 2029 insertions(+), 155 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
