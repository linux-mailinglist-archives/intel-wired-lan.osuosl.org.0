Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8871ED9C0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 02:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF34C86DAB;
	Thu,  4 Jun 2020 00:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxn7RHvFUEEJ; Thu,  4 Jun 2020 00:01:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7672586DB0;
	Thu,  4 Jun 2020 00:01:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C37471BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BEC8422926
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f3qjiG9qQaj5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 00:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id BC617203F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:21 +0000 (UTC)
IronPort-SDR: 8AE7+RisxlGKXMeXs+aPOC38Ca2nrwk590sHwOPdipa9Pj7+Qxeu+NF7rQfyNgIeJkRAKt6IU5
 v8HAYublUEuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 17:01:21 -0700
IronPort-SDR: vLahde0mQ/1+w5ooQarUavu2tSk2QpXmIlUCL5H1pc16i01p7lh2VHKP+Qks0ytOA1M6nasQ9r
 tH109DTKORoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="272932794"
Received: from mrief-mobl1.amr.corp.intel.com ([10.209.62.192])
 by orsmga006.jf.intel.com with ESMTP; 03 Jun 2020 17:01:20 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jun 2020 17:00:59 -0700
Message-Id: <20200604000105.15059-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/6] igc: PTP timestamping fixes
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

This patch series provides some fixes and improvements to ptp timestamp
handling in IGC driver.

IGC ptp implementation was based on IGB, but there are a few differences on how
I225 handles rx timestamps that need to be considered. For example, I225 doesn't
report rx timestamps via the TS bit rx descriptor + RXSTMPL/RXSTMPH registers
mechanism. They are reported via the packet buffer only.

Apart from that, this patch series also fixes other issues like code
duplication, dummy UDP filter configuration, and missing SRRCTL register clean
up.

Regards,

Andre

Andre Guedes (6):
  igc: Clean up rx timestamping logic
  igc: Remove duplicate code in tx timestamp handling
  igc: Check __IGC_PTP_TX_IN_PROGRESS instead of ptp_tx_skb
  igc: Remove UDP filter setup in PTP code
  igc: Refactor igc_ptp_set_timestamp_mode()
  igc: Fix rx timestamp disabling

 drivers/net/ethernet/intel/igc/igc.h         |   3 -
 drivers/net/ethernet/intel/igc/igc_defines.h |   2 -
 drivers/net/ethernet/intel/igc/igc_main.c    |  12 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 256 +++++--------------
 drivers/net/ethernet/intel/igc/igc_regs.h    |   2 -
 5 files changed, 75 insertions(+), 200 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
