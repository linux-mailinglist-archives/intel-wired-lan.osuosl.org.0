Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDBD288082
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 04:54:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5162D86D9A;
	Fri,  9 Oct 2020 02:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tHO2Yt-ZeW7m; Fri,  9 Oct 2020 02:54:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C36FD869FD;
	Fri,  9 Oct 2020 02:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DA081BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4A9818762F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mBVhnK-Fb2Lb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 02:53:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B1F488762A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:53:59 +0000 (UTC)
IronPort-SDR: 229i6s8WJSZD2aTMzyK2C+QOxyl2H8daF9uLA8tA0owWOdjZvP8VRAUWnZmJ8Wb5Lda8+pSnZj
 tUpkC5imnAZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="229621307"
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="229621307"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:58 -0700
IronPort-SDR: 8hc/0HkElyixFIEZ1QOs7gvu3pvvoGK730DW3O0zrzMOJP4jkuVjFFhENcU6o3OVB1wQBq1+Gm
 aEfkDuDGuEAw==
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="528740711"
Received: from simonejo-mobl1.amr.corp.intel.com ([10.212.226.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:57 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Oct 2020 19:53:40 -0700
Message-Id: <20201009025349.4037-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/9] igc: Add XDP support
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

Hi all,

This patch series adds XDP support for the igc driver. The approach implemented
by this series follows the same approach implemented in other Intel drivers as
much as possible for the sake of consistency.

The series is organized in two parts. In the first part, i.e. patches from 1 to
5, igc_main.c and igc_ptp.c code is refactored in preparation for landing the
XDP support, which is introduced in the second part (patches from 6 to 9).

As far as code organization is concerned, XDP-related helpers are defined in a
new file, igc_xdp.c, and are called by igc_main.c.

The features added by this series have been tested with the samples provided in
samples/bpf/: xdp1, xdp2, xdp_redirect_cpu, and xdp_redirect_map.

Upcoming series will add support of UMEM and zero-copy features from AF_XDP.

Best regards,
Andre

Andre Guedes (9):
  igc: Fix igc_ptp_rx_pktstamp()
  igc: Remove unused argument from igc_tx_cmd_type()
  igc: Introduce igc_rx_buffer_flip() helper
  igc: Introduce igc_get_rx_frame_truesize() helper
  igc: Refactor rx timestamp handling
  igc: Add Initial XDP support
  igc: Add support for XDP_TX action
  igc: Add support for XDP_REDIRECT action
  igc: Implement ndo_xdp_xmit callback

 drivers/net/ethernet/intel/igc/Makefile   |   2 +-
 drivers/net/ethernet/intel/igc/igc.h      |  18 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 280 +++++++++++++++++-----
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  87 ++++---
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 202 ++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  27 +++
 6 files changed, 516 insertions(+), 100 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h

-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
