Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 390F23212B1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 10:07:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6678883829;
	Mon, 22 Feb 2021 09:07:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_tuobzczOOH; Mon, 22 Feb 2021 09:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2843883852;
	Mon, 22 Feb 2021 09:07:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A0F01BF38E
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7559887128
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N0O6exr1dwzj for <intel-wired-lan@osuosl.org>;
 Mon, 22 Feb 2021 09:07:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BF8D887121
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:07:28 +0000 (UTC)
IronPort-SDR: B6T/2W8wKN5zCofUwTe1mt0l8MJ3ChFTg8T+WSsbR6LwezAJKsry3CjadjRIR7UxrCgqRo1ft/
 r5KrhGqui2LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="180935364"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="180935364"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:07:28 -0800
IronPort-SDR: WDyfmzVN1xIFzuX37TSHDAR3SxtgCKEOmbZr4VBTFMEtoYT5tn4g+5HipVQbTIymx38jVx9L73
 dorDFzXJLnAg==
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="441321281"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:07:24 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 22 Feb 2021 01:09:27 -0800
Message-Id: <20210222090936.6768-1-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH v4 0/9] igc: Add support for AF_XDP
 zero-copy
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

Hi all,

This is the fourth version of this series which adds AF_XDP zero-copy support
to igc driver.

The main changes from v3 are:

    - Renamed igc_xdp_run_prog() to __igc_xdp_run_prog()
    - Reworded commit message for 2nd patch in this series as suggested
      in the review
    - igc_clean_rx_irq_zc() - Assigned ring->next_to_clean to local
      variable for performance reasons as suggested in review comment
    - igc_xdp_xmit_zc() - Assigned ring->next_to_use to local variable
      and replaced work_done conditional variable as per review comment
    - Added Maciej Fijalkowski's reviewed by tags

Known issues (from v3):
    When an XDP application is running in Tx-Only mode with Zero-Copy
    enabled, it is not expected to add the frames to the fill-queue. I have
    noticed the following two issues in this scenario:
    - If XDP_USE_NEED_WAKEUP flag is not set by application, igc_poll()
      will go into infinite loop because the buffer allocation resulting
      in igc_clean_rx_irq_zc() indicating that all work is not done and NAPI
      should keep polling. This does not occur if XDP_USE_NEED_WAKEUP
      flag is set.
    - Since there are no buffers allocated by userspace for the fill
      queue, there is no memory allocated for the NIC to copy the data
      to. If the packet received is destined to the hardware queue where
      XDP application is running, no packets are received even on other
      queues.
    Both these issues can be mitigated by adding a few frames to the
    fill queue. The second issue can also be mitigated by making sure no
    packets are being received on the hardware queue where Rx is running.

v3 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20210209024243.23406-1-vedang.patel@intel.com/

v2 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201223203705.78705-1-andre.guedes@intel.com/

v1 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201217202415.77891-1-andre.guedes@intel.com/

Andre Guedes (9):
  igc: Move igc_xdp_is_enabled()
  igc: Refactor __igc_xdp_run_prog()
  igc: Refactor igc_clean_rx_ring()
  igc: Refactor XDP rxq info registration
  igc: Introduce TX/RX stats helpers
  igc: Introduce igc_unmap_tx_buffer() helper
  igc: Replace IGC_TX_FLAGS_XDP flag by an enum
  igc: Enable RX via AF_XDP zero-copy
  igc: Enable TX via AF_XDP zero-copy

 drivers/net/ethernet/intel/igc/igc.h      |  33 +-
 drivers/net/ethernet/intel/igc/igc_base.h |   2 +
 drivers/net/ethernet/intel/igc/igc_main.c | 651 ++++++++++++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 107 +++-
 drivers/net/ethernet/intel/igc/igc_xdp.h  |   8 +-
 5 files changed, 674 insertions(+), 127 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
