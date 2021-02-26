Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3A4325AA9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 01:20:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2C874335D;
	Fri, 26 Feb 2021 00:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bn2lzuayQhQW; Fri, 26 Feb 2021 00:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEC554334E;
	Fri, 26 Feb 2021 00:20:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E35E41BF9D1
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D230484246
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRW_2zcKTarp for <intel-wired-lan@osuosl.org>;
 Fri, 26 Feb 2021 00:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9F838421D
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:45 +0000 (UTC)
IronPort-SDR: N9RXwTrRhlozZgA22gjH/UGvikrhAVroetSdZjfems/cRplG3MRMEv2NGb4xtxCq14QVW3E8XC
 5S/EwMlQW7vQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="185033331"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="185033331"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:20:45 -0800
IronPort-SDR: /dD3B055y4Y6MgGELaz8GtyIBBlP7G5oOnPiCX38c5WtuFm2ww9PgiiDjRdS6qJGkEc/WPIdV7
 Nt2zLIFLyLng==
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="392639279"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:20:45 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 25 Feb 2021 16:22:59 -0800
Message-Id: <20210226002308.2348-1-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH v5 0/9] igc: Add support for AF_XDP
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

This is the fifth version of this series which adds AF_XDP zero-copy support
to igc driver.

The only change from v4:
    - igc_setup_rx_resources() - Modified to pass napi_id as a parameter
      to xdp_rxq_info_reg(). Earlier we were passing 0 instead, which
      implies napi_id is was unavailable/unknown.

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
 drivers/net/ethernet/intel/igc/igc_main.c | 652 ++++++++++++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 107 +++-
 drivers/net/ethernet/intel/igc/igc_xdp.h  |   8 +-
 5 files changed, 675 insertions(+), 127 deletions(-)


base-commit: bae0e60bed826a21db719985ceefe1e3eb3f58e5
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
