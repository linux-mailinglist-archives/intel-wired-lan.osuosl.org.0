Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 529063B4B9F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 02:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDC5C6065A;
	Sat, 26 Jun 2021 00:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQ7ebOt_wSD9; Sat, 26 Jun 2021 00:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D932F60642;
	Sat, 26 Jun 2021 00:34:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 373C51C11AD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56763402AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJU56bh00o1V for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jun 2021 00:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5438240500
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:44 +0000 (UTC)
IronPort-SDR: +uh8X5MmHnJ5DwoJNdV6fyuMUALhIh1ccgpRA6PfaMOS4I9j9WjfhTZY7uxPJbAANFxEsoBexG
 SVfJErd1WJvg==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="268890547"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="268890547"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:40 -0700
IronPort-SDR: GqdBDBdxUL9Es7PEfXblA2eVd+27IFX+2tzCKGQ3JALDbpTNcWD6agBTwaafUBbiVKe7x4EA9D
 YIFPDxci/0jw==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="557008593"
Received: from aschmalt-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.160.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:40 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Jun 2021 17:33:02 -0700
Message-Id: <20210626003314.3159402-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 00/12] ethtool: Add support
 for frame preemption
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
Cc: mkubecek@suse.cz, jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com,
 jhs@mojatatu.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

When the APIs, now including verification, are fine, I can separate
this series into smaller pieces, to make further review easier. I am
proposing this as one series so it's easier to get the full picture.


Changes from v3:
 - Added early support for sending/receiving support for verification
   frames (Vladimir Oltean). This is a bit more than RFC-quality, but
   adding this so people can see how it fits together with the rest.
   The driver specific bits are interesting because the hardware does
   the absolute minimum, the driver needs to do the heavy lifting.

 - Added support for setting preemptible/express traffic classes via
   tc-mqprio (Vladimir Oltean). mqprio parsing of configuration
   options is... interesting, so comments here are going to be useful,
   I may have missed something.

Changes from v2:
 - Fixed some copy&paste mistakes, documentation formatting and
   slightly improved error reporting (Jakub Kicinski);

Changes from v1:
 - The minimum fragment size configuration was changed to be
   configured in bytes to be more future proof, in case the standard
   changes this (the previous definition was '(X + 1) * 64', X being
   [0..3]) (Michal Kubecek);
 - In taprio, frame preemption is now configured by traffic classes (was
   done by queues) (Jakub Kicinski, Vladimir Oltean);
 - Various netlink protocol validation improvements (Jakub Kicinski);
 - Dropped the IGC register dump for frame preemption registers, until a
   stardandized way of exposing that is agreed (Jakub Kicinski);

Changes from RFC v2:
 - Reorganised the offload enabling/disabling on the driver size;
 - Added a few igc fixes;

Changes from RFC v1:
 - The per-queue preemptible/express setting is moved to applicable
   qdiscs (Jakub Kicinski and others);
 - "min-frag-size" now follows the 802.3br specification more closely,
   it's expressed as X in '64(1 + X) + 4' (Joergen Andreasen);

Another point that should be noted is the addition of the
TC_SETUP_PREEMPT offload type, the idea behind this is to allow other
qdiscs (was thinking of mqprio) to also configure which traffic
classes should be marked as express/preemptible.

Original cover letter (lightly edited):

This is still an RFC because two main reasons, I want to confirm that
this approach (per-queue settings via qdiscs, device settings via
ethtool) looks good, even though there aren't much more options left ;-)
The other reason is that while testing this I found some weirdness
in the driver that I would need a bit more time to investigate.

(In case these patches are not enough to give an idea of how things
work, I can send the userspace patches, of course.)

The idea of this "hybrid" approach is that applications/users would do
the following steps to configure frame preemption:

$ tc qdisc replace dev $IFACE parent root handle 100 taprio \
      num_tc 3 \
      map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
      queues 1@0 1@1 2@2 \
      base-time $BASE_TIME \
      sched-entry S 0f 10000000 \
      preempt 1110 \
      flags 0x2 

The "preempt" parameter is the only difference, it configures which
traffic classes are marked as preemptible, in this example, traffic
class 0 is marked as "not preemptible", so it is express, the rest of
the four traffic classes are preemptible.

The next step, of this example, would be to enable frame preemption in
the device, via ethtool, and set the minimum fragment size to 192 bytes:

$ sudo ./ethtool --set-frame-preemption $IFACE fp on min-frag-size 192

Cheers,


Vinicius Costa Gomes (12):
  ethtool: Add support for configuring frame preemption
  taprio: Add support for frame preemption offload
  core: Introduce netdev_tc_map_to_queue_mask()
  taprio: Replace tc_map_to_queue_mask()
  mqprio: Add support for frame preemption offload
  igc: Add support for enabling frame preemption via ethtool
  igc: Add support for TC_SETUP_PREEMPT
  igc: Simplify TSN flags handling
  igc: Add support for setting frame preemption configuration
  ethtool: Add support for Frame Preemption verification
  igc: Check incompatible configs for Frame Preemption
  igc: Add support for Frame Preemption verification

 Documentation/networking/ethtool-netlink.rst |  41 +++
 drivers/net/ethernet/intel/igc/igc.h         |  27 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  17 ++
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  45 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    | 249 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 127 ++++++----
 drivers/net/ethernet/intel/igc/igc_tsn.h     |   1 +
 include/linux/ethtool.h                      |  24 ++
 include/linux/netdevice.h                    |   2 +
 include/net/pkt_sched.h                      |   4 +
 include/uapi/linux/ethtool_netlink.h         |  19 ++
 include/uapi/linux/pkt_sched.h               |   2 +
 net/core/dev.c                               |  20 ++
 net/ethtool/Makefile                         |   2 +-
 net/ethtool/common.c                         |  25 ++
 net/ethtool/netlink.c                        |  19 ++
 net/ethtool/netlink.h                        |   4 +
 net/ethtool/preempt.c                        | 157 ++++++++++++
 net/sched/sch_mqprio.c                       |  41 ++-
 net/sched/sch_taprio.c                       |  65 +++--
 20 files changed, 815 insertions(+), 76 deletions(-)
 create mode 100644 net/ethtool/preempt.c

-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
