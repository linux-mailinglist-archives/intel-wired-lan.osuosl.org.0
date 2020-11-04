Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8DE2A5CFD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 04:12:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1A6F866ED;
	Wed,  4 Nov 2020 03:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qo0hIC8ccG6V; Wed,  4 Nov 2020 03:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51F278697D;
	Wed,  4 Nov 2020 03:12:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 432761BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F1D4867FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DzX5UuJKxYjZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 03:12:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C9EB866ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:19 +0000 (UTC)
IronPort-SDR: VMZLJNlwR861seiZurLdy6DSnTgWEis1jPQZaODj7zgluY42vnFg7aw9UkYBJGvINNCknK5eJt
 xOmfP3EMDC/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="156934744"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="156934744"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:17 -0800
IronPort-SDR: z+y1RM4/gu1q83KG55XGeRaGQq5pvDrFQyh3KEXGstcPZG0UHdVPQeQrcd4j+ewGdJSbyEg02O
 wsC+nQfi5a8A==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="471042884"
Received: from abkumar-dell.amr.corp.intel.com ([10.212.180.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:16 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Nov 2020 19:12:01 -0800
Message-Id: <20201104031210.27772-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 0/9] igc: Add XDP support
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

This is the fourth version of this series which adds XDP support to igc
driver.

Changes from v3 are:

    - Minor update in comment in igc_ptp_rx_pktstamp()
    - Replaced modulo op in igc_xdp_get_tx_ring()

v3 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201030210351.46482-1-andre.guedes@intel.com/

v2 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201028201943.93147-1-andre.guedes@intel.com/

v1 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201009025349.4037-1-andre.guedes@intel.com/

Cheers,
Andre


Andre Guedes (9):
  igc: Fix igc_ptp_rx_pktstamp()
  igc: Remove unused argument from igc_tx_cmd_type()
  igc: Introduce igc_rx_buffer_flip() helper
  igc: Introduce igc_get_rx_frame_truesize() helper
  igc: Refactor rx timestamp handling
  igc: Add set/clear large buffer helpers
  igc: Add initial XDP support
  igc: Add support for XDP_TX action
  igc: Add support for XDP_REDIRECT action

 drivers/net/ethernet/intel/igc/Makefile   |   2 +-
 drivers/net/ethernet/intel/igc/igc.h      |  18 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 434 +++++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  89 +++--
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  60 +++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  13 +
 6 files changed, 515 insertions(+), 101 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h

-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
