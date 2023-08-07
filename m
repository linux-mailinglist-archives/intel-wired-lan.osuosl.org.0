Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A8B771E41
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 12:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5105F6076C;
	Mon,  7 Aug 2023 10:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5105F6076C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691404650;
	bh=bC2KfT9d4GVI08x1fw8u7uOSRLwPl4bSztT3aybb5us=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1Sw0e0I2Wh+85R+mmgQuYmrz8aRtAf7uHgcs/0nZLMjN0vKgJFZtGv8koNoYqoWeP
	 SipsgPOmJ2d1s8FY6kPWeTu8ukoBiRAnqjtZ5nnI4oNF9KBTlBY8uqVlpoCouox9y2
	 ZWK7U+rpfpWmbZmPANJUY3FSQhd/ZcpPjvgIR+fGFmaqvGvoGfMaSdTzXVmf5UhI66
	 I3A4aYE9EsF9IwZC5KU+NccIhLxWDGuGuT2LQS+I0CGQCU2621556RCowb3wks5x4C
	 7PBChSp4GV1IAjCvrlshgvqtybq6s2QHvZZwROlBXwKok6uERy/G+yVQuKw6s5XIOs
	 wuJ1ft5r+BKPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ian8393Fu1O2; Mon,  7 Aug 2023 10:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D05AD60792;
	Mon,  7 Aug 2023 10:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D05AD60792
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55B601BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2F734085D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2F734085D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IkW7HL9Dg_Xu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 10:36:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DA14401E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DA14401E8
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="401482290"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="401482290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 03:36:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874262821"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2023 03:36:30 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 12:36:15 +0200
Message-Id: <20230807103624.468230-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691404590; x=1722940590;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4IAWb9O7jg5ntQVaPfWe8BbWJrd2eC8zS3ha2332mwo=;
 b=Ka5uUA4x09nkW3+GeWjAjJ8zuzLh4mR6PJOxvIH0LoDUAttoouxUyLDf
 NpQEBA6WS4CL7UOG8FkDhFde+IRfRRVJq4PVaKS2OKTP/lZ2YWDQxFN2G
 Rddgf/tw1n6q0NnquX7NA1/pNxZYe51w1l63N37vB26XAMYZlhO0mnQ0x
 Pco9FY/8JrRpCszMSAHrkaxMMOO2rAscS0/s29swauCOJYMeuFXZyN53C
 AdPtb521yhK5nu2IKIzDJaGJqFagO1kTZB0O/p3wC1MH1QtYEJqW+QjVJ
 ebnYw03Y6Ja4lpQ4TcGC1pp4BB/M8d+GgBaxUbZdji9rf4ERwS7xdnb45
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ka5uUA4x
Subject: [Intel-wired-lan] [PATCH 0/9] ice: fix timestamping in reset process
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PTP reset process has multiple places where timestamping can end up in
an incorrect state.

This series introduces a proper state machine for PTP and refactors
a large part of the code to ensure that timestamping does not break.

Karol Kolacinski (9):
  ice: use ice_pf_src_tmr_owned where available
  ice: introduce PTP state machine
  ice: pass reset type to PTP reset functions
  ice: rename PTP functions and fields
  ice: factor out ice_ptp_rebuild_owner()
  ice: remove ptp_tx ring parameter flag
  ice: modify tstamp_config only during TS mode set
  ice: restore timestamp configuration after reset
  ice: stop destroying and reinitalizing Tx tracker during reset

 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  16 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 331 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  36 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    |   3 -
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   1 -
 7 files changed, 247 insertions(+), 143 deletions(-)
-- 
2.39.2


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
