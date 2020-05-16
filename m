Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A011D5DA2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 03:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9723E22829;
	Sat, 16 May 2020 01:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xR1isJVPIzC5; Sat, 16 May 2020 01:30:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1472B22846;
	Sat, 16 May 2020 01:30:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3DCB1BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A931D22829
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4gfvnezAtloK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 01:30:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 58E2E2281E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:02 +0000 (UTC)
IronPort-SDR: Uuf+0V6EK82EVWSkinrZVHMcneHh9uDN7Wj+wn93LkVRgjrcBDr0bvyeRPhGQ25y2ouua8VD9F
 rZx7/kFF3yFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 18:30:01 -0700
IronPort-SDR: c/1wXf/KexM6fjgEE6TwkFvVC4jFoJ/IJtxuNnt9d9ZaAAZKjpTyHuTRMebdkaI2OxJ3j101kr
 JEF3iufYlTnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307569128"
Received: from wkbertra-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.131.129])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 18:30:01 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 18:29:44 -0700
Message-Id: <20200516012948.3173993-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 m-karicheri2@ti.com, vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This series adds support for configuring frame preemption, as defined
by IEEE 802.1Q-2018 (previously IEEE 802.1Qbu) and IEEE 802.3br.

Frame preemption allows a packet from a higher priority queue marked
as "express" to preempt a packet from lower priority queue marked as
"preemptible". The idea is that this can help reduce the latency for
higher priority traffic.

Previously, the proposed interface for configuring these features was
using the qdisc layer. But as this is very hardware dependent and all
that qdisc did was pass the information to the driver, it makes sense
to have this in ethtool.

One example, for retrieving and setting the configuration:

$ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
Frame preemption settings for enp3s0:
	support: supported
	active: active
	supported queues: 0xf
	supported queues: 0xe
	minimum fragment size: 68


$ ethtool --set-frame-preemption enp3s0 fp on min-frag-size 68 preemptible-queues-mask 0xe

This is a RFC because I wanted to have feedback on some points:

  - The parameters added are enough for the hardware I have, is it
    enough in general?

  - even with the ethtool via netlink effort, I chose to keep the
    ioctl() way, in case someone wants to backport this to an older
    kernel, is there a problem with this?

  - Some space for bikeshedding the names and location (for example,
    does it make sense for these settings to be per-queue?), as I am
    not quite happy with them, one example, is the use of preemptible
    vs. preemptable;


About the patches, should be quite straightforward:

Patch 1, adds the ETHTOOL_GFP and ETHOOL_SFP commands and the
associated data structures;

Patch 2, adds the ETHTOOL_MSG_PREEMPT_GET and ETHTOOL_MSG_PREEMPT_SET
netlink messages and the associated attributes;

Patch 3, is the example implementation for the igc driver, the catch
here is that frame preemption in igc is dependent on the TSN "mode"
being enabled;

Patch 4, adds some registers that helped during implementation.

Another thing is that because igc is still under development, to avoid
conflicts, I think it might be easier for the PATCH version of this
series to go through Jeff Kirsher's tree.

Vinicius Costa Gomes (4):
  ethtool: Add support for configuring frame preemption
  ethtool: Add support for configuring frame preemption via netlink
  igc: Add support for configuring frame preemption
  igc: Add support for exposing frame preemption stats registers

 drivers/net/ethernet/intel/igc/igc.h         |   3 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   6 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  77 ++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  10 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     |  46 ++++-
 include/linux/ethtool.h                      |   6 +
 include/uapi/linux/ethtool.h                 |  25 +++
 include/uapi/linux/ethtool_netlink.h         |  19 ++
 net/ethtool/Makefile                         |   3 +-
 net/ethtool/ioctl.c                          |  36 ++++
 net/ethtool/netlink.c                        |  15 ++
 net/ethtool/netlink.h                        |   2 +
 net/ethtool/preempt.c                        | 181 +++++++++++++++++++
 13 files changed, 423 insertions(+), 6 deletions(-)
 create mode 100644 net/ethtool/preempt.c

-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
