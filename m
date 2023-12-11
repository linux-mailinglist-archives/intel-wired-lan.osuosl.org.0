Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E280CEE1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 16:02:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5477860FBF;
	Mon, 11 Dec 2023 15:02:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5477860FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702306960;
	bh=uFQrxrDPDkJaUjRDWVNiS/sBGJswgUofb+jNIMOgMVg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LIbUnSdItr/t4U04CJ+O0SfP9Rb87jWrVzJoSWtoP9GYxaIq8soMANbxRC1XfBRPy
	 uOi3aOGCHPB1u+OS2yMc/hRYn4miuDZWy7TFRL/13G94rJPex4GlYuDvjouI+9x5Uh
	 Ekys3jVVdCyzHPA2n/h9hNneAecVU2Iv8kpAZXrDCHnOi0sHVHn2VCwELqZyERwV9J
	 NR/lUbhqYwuJftHnP20EJLMtR5hr260TP26HlOfpjKGSJ+ODcTKreR6c/oTWx4vQk9
	 3aVTiihtfEiaxiWBE5l4U9d+8zNkahTF2pIatHO0jWW1w+t3g8/lMcOe9ql/wbcWNY
	 2d+9Mq87/C4XA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4H3KOQVXuMFG; Mon, 11 Dec 2023 15:02:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4107B60B48;
	Mon, 11 Dec 2023 15:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4107B60B48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7759C1BF860
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 15:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5029281E5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 15:02:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5029281E5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tcox_GHoyDDE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 15:02:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CCAA81DF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 15:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CCAA81DF7
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="393532293"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="393532293"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 07:02:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="773090842"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="773090842"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2023 07:02:31 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Dec 2023 16:02:20 +0100
Message-Id: <20231211150226.295090-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702306953; x=1733842953;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/KrtDmmsQ++WSJtSiK7MMLaEx5uASusGRF2v36tCVVU=;
 b=Xm/tV1IC7nZu+rPzxDzJ9Ih56HmEk4bKAGVAOOKHqsdY2hxUoQrj60sb
 V1mZFdAQ5+9SfA4k1iHg0Ymj4UhfjBs7rpPizrMOTBzlawWTzYxko1DhQ
 snflimCTof0EkW+oPEjp7hfOoHCSh4AN8otY1CYWXhW7LM/NoltDvPbcS
 TM6LA91ru0rBlrUOOPR80Z32Z9crEO9fPhvQRjPDut4QqTIUZKftBghOS
 RIqSiG/goY6NW0pfgATtwXel7PBz0kXIFYrsflOa7uLGKj1HriiI7MNsH
 9blKYoZ0P6nrP7I4USYvf+zQvwqicR8icIiUS+k+OcwKzJ2QiNeFoI0SU
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xm/tV1IC
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/6] ice: fix timestamping in
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PTP reset process has multiple places where timestamping can end up in
an incorrect state.

This series introduces a proper state machine for PTP and refactors
a large part of the code to ensure that timestamping does not break.

Jacob Keller (5):
  ice: pass reset type to PTP reset functions
  ice: rename verify_cached to has_ready_bitmap
  ice: rename ice_ptp_tx_cfg_intr
  ice: factor out ice_ptp_rebuild_owner()
  ice: stop destroying and reinitalizing Tx tracker during reset

Karol Kolacinski (1):
  ice: introduce PTP state machine

V1 -> V2: rebased the series and dropped already merged patches

 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 226 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  34 ++-
 5 files changed, 163 insertions(+), 104 deletions(-)


base-commit: 9615a96563f03aef04320cb9b4c33f7bdabac5af
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
