Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE49368D0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 08:21:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 121BA60DC2;
	Fri, 23 Apr 2021 06:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBO65s1DfHxy; Fri, 23 Apr 2021 06:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12351605C1;
	Fri, 23 Apr 2021 06:21:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF8D81BF3BE
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B151E40384
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rlkya-IEFEoo for <intel-wired-lan@osuosl.org>;
 Fri, 23 Apr 2021 06:21:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F60E40374
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:22 +0000 (UTC)
IronPort-SDR: noR/ZTiUwfvIIaPbLZmO/PZ8BwakEM6ipLt076sv90Eqn1Hb1rV/gI1tI7ziXKUcInMxq/wqW1
 XiPEbVFymM3Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="195580157"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="195580157"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:21:21 -0700
IronPort-SDR: 6b+7zEQRbyG4Caqs+Ih3a9nIqCicXbwdGrvjM4l3zJ80U7ac9WIDICAKKRqaFNQ0w/83XEWGDE
 ibHIdg23sRrA==
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="617897363"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:21:17 -0700
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 22 Apr 2021 23:25:46 -0700
Message-Id: <20210423062555.14972-1-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH v6 0/9] igc: Add support for AF_XDP
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
Cc: kuba@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

This is the sixth version of this series which adds AF_XDP zero-copy support
to igc driver.

This revision addresses review comments from Jakub Kicinski.

changes in v6:
    Patch 8/9 - "igc: Enable RX via AF_XDP zero-copy"
      * In XDP_PASS flow, copy metadata too into the skb.
      * When h/w timestamp is added by the NIC, after copying it into
        a local variable, update xdp_buff->data_meta so that
        metadata length when XDP program is called 0.
      * In igc_xdp_enable_pool(), call xsk_pool_dma_unmap() on
        failure.


Known issues (carried from v3):
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

v5 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20210226002308.2348-1-jithu.joseph@intel.com/

v4 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20210222090936.6768-1-jithu.joseph@intel.com/

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
 drivers/net/ethernet/intel/igc/igc_main.c | 658 ++++++++++++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 109 +++-
 drivers/net/ethernet/intel/igc/igc_xdp.h  |   8 +-
 5 files changed, 683 insertions(+), 127 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
