Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5091C7D6AFC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 14:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E09F4331D;
	Wed, 25 Oct 2023 12:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E09F4331D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698236169;
	bh=UXBTQMJ/X/ZbPBSkIZISZmf5vIyEjyEZg8WoDoU+bqs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vozF0Niie628wkpgbyHemERbJj92JUBoJsrSk48d2dbpKOzyRn9oc/hp3j1nyTKT/
	 AwLMkHWYX1/GlvaKjT3xql7XLg1OmH8H+hBPkJupMx1M41HVTWuNNSBuMAGDMokTHG
	 Ypp2r4buAyLracT/QHqE20FwCnKl1AtjfcIbKglEeNo7d8WtfGP5qNZt84wEPosbbe
	 eFF/Ogk/4+mHjUCJdjlQwbEznpdy2PGNOdpz2zCDmR4p6FciDWVSghVoo+DsMg44Vp
	 I5VzAwMv3bqcoJCzdZkLTn6hEhIVw/4VbWNPJZneHK+uyT3k/JkNXnEYtLtE0koiu3
	 vdZ6lOtuaTOVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8mIT1rZ2datG; Wed, 25 Oct 2023 12:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 158FE43647;
	Wed, 25 Oct 2023 12:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 158FE43647
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79F5B1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E78B84CD1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E78B84CD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TucyR_AVOkaw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 12:16:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8661F84988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8661F84988
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418414308"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="418414308"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="824627903"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="824627903"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga008.fm.intel.com with ESMTP; 25 Oct 2023 05:15:58 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Oct 2023 14:13:20 +0200
Message-Id: <20231025121330.216300-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236160; x=1729772160;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iRmEhT0JTeMDB60zfBwoZaPy4wkYiCd9tiTW7ZQtzLw=;
 b=B2C3ZepXRpb2mL2LYgV0jNjg9dwAuSNpDAnXM6OcHpXilmPLNcjuftCH
 VcfgRYFSWtjup1gDiN90tB3PeukAX1IARzGw3DBhYq24FmuZNd/GOilIJ
 boyg6sokwu/fVENTo04Hiac6/WNQmtRu6ZPLi/ml/a+UdcF35EWV4EB1M
 yl52tZP9KAbX1PXiZTix00FoTmAMQWAJbkK31edohP8ChYJj8TYA7TiJi
 ENkLL/EOWR+l6mf+jdKTF3tQQ9XwyaF7ouRfngpwHQceB6h1uW1mPgCdx
 ReutV23gWngluivpa5EcGR5jSjFU454FB1ZFSJPOXP+BM7WK+LJty+dPN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B2C3ZepX
Subject: [Intel-wired-lan] [PATCH iwl-next 00/10] ice: fix timestamping in
 reset process
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PTP reset process has multiple places where timestamping can end up in
an incorrect state.

This series introduces a proper state machine for PTP and refactors
a large part of the code to ensure that timestamping does not break.

Jacob Keller (9):
  ice: pass reset type to PTP reset functions
  ice: rename verify_cached to has_ready_bitmap
  ice: rename ice_ptp_configure_tx_tstamp
  ice: rename ice_ptp_tx_cfg_intr
  ice: factor out ice_ptp_rebuild_owner()
  ice: remove ptp_tx ring parameter flag
  ice: modify tstamp_config only during TS mode set
  ice: restore timestamp configuration after reset
  ice: stop destroying and reinitalizing Tx tracker during reset

Karol Kolacinski (1):
  ice: introduce PTP state machine

 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  14 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 312 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  38 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.c    |   3 -
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   1 -
 7 files changed, 222 insertions(+), 149 deletions(-)


base-commit: c7ee7435210df79c6f08ae8bf045933478b6a118
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
