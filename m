Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2751A1727
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 23:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEE8B87B18;
	Tue,  7 Apr 2020 21:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n9iE20XoMn8j; Tue,  7 Apr 2020 21:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AC4387D09;
	Tue,  7 Apr 2020 21:07:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 69C9D1BF983
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 664E1220C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id guCTjfZh+rpV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 21:07:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 0BC332048F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:20 +0000 (UTC)
IronPort-SDR: sn2BhB6ymmuBrbc2hNJ3TsLuM88mGpSgBtLHIv480l0gkc8/9md5Prur0ALGC0zrl4fgMxQtej
 jMt2xPrF4GeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:07:19 -0700
IronPort-SDR: fWppPtQAecwuJJxVYgVtbBVP6LlvhnAnalhWRCzc7ETwy59PPUPXMxh1002f366VCCGsMHsRyl
 wCWaxNoLt3PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="452593241"
Received: from jyguan-mobl1.amr.corp.intel.com ([10.212.37.126])
 by fmsmga006.fm.intel.com with ESMTP; 07 Apr 2020 14:07:18 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 14:07:06 -0700
Message-Id: <20200407210711.24371-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/5] igc: Fixes for ethertype filtering
 code
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

Hi,

This patch series provides some fixes and improvements to the ethertype
filtering code from IGC driver.

The improvements focuses on aligning the code organization to follow the
same rationale from the rest of the filtering code (MAC address and VLAN
priority filtering).

Best regards,

Andre

Andre Guedes (5):
  igc: Remove duplicated IGC_RXPBS macro
  igc: Remove ethertype filter in ptp code
  igc: Fix MAX_ETYPE_FILTER value
  igc: Refactor ethertype filtering code
  igc: Dump ETQF registers

 drivers/net/ethernet/intel/igc/igc.h         |  6 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  3 -
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 70 +++------------
 drivers/net/ethernet/intel/igc/igc_main.c    | 93 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 12 ---
 drivers/net/ethernet/intel/igc/igc_regs.h    |  2 -
 6 files changed, 107 insertions(+), 79 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
