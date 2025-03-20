Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F01F7A6A6FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 14:19:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF81483EC2;
	Thu, 20 Mar 2025 13:19:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ON1zRhQkcpy; Thu, 20 Mar 2025 13:19:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EABD783CDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742476775;
	bh=Vi0xqQPzmH4/FhgbKdjhM+vqIXKUL/8tmoh5Gquo5wc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=l7YF7X+9UWT/BTxcQnvkLG62iuN3R9Zp+1S7gOiJzPoUjdR5N0U4M01AHrq1rJZ4P
	 0X0Hda6lnKl9J4D9NIR5ouOhsbqEY5amqXIKPDscQgdPJIaevSUt0bEanhtxVO9ciG
	 65cEWYWRwX/j8iQd2Eoh3gaHpTC8BeO2G5s2F9euKLm7qc5DD+tMf4INg8aCeKivy5
	 L6Jw88g75r58afTlOv+RLm5frO6TwY/5Q7DA4KL0zEzsvNqbX1tYF/oWXKmjM1iK10
	 flDLCQ722mT7r5dWGhThqXPl9ABw2PLUhKaKdXxkx5fQsHhHx/cqttAa2Xa1PBeuBe
	 rFGMzPlsL6J6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EABD783CDC;
	Thu, 20 Mar 2025 13:19:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 08C4A1A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF81C606C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H867f0V2u_zW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 13:19:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E61AF605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E61AF605D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E61AF605D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:31 +0000 (UTC)
X-CSE-ConnectionGUID: QcM9oND5T3urL59tDRC03w==
X-CSE-MsgGUID: 5QeVppL3Sbay9ctamwzyxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="55083733"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="55083733"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 06:19:31 -0700
X-CSE-ConnectionGUID: KOJKTDjzQV2xkHAHfocs7A==
X-CSE-MsgGUID: 08z3xn/GS0uv/VR5PmleUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="160311374"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 20 Mar 2025 06:19:30 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Mar 2025 14:15:35 +0100
Message-Id: <20250320131538.712326-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742476772; x=1774012772;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8v2IlNO/kUlcnwT83q5ZXsTX+JsEa2epR2YhLXfU0YQ=;
 b=SD/aXfu+RP84XlGGsUrsMimX12JnO1P+h9mxWBZKdgzMyMLrt9VMutYm
 SzD6Rx1VB9vCBkb8iHbvcO/IGVJBhlVlYfgCUMdhnDfgBM1U2bZPEFROp
 +1ib3NkQ/5iY3ZCbVxB4m1tf7q7RyrgHiWRXduTr7WO/ucSvjbmRxUG6B
 PiSkFO8VlBzbPGw2Jqs9DRvAjeOgg/XwBFfLqsBRiJn0s5UMDThEpTEqy
 K4IZLV8RlJmw1pyjJEpASq1Q7qYyY6AROwgnDm1TP3b+0QYHIB31EUoFc
 PUY8KGwfbXcw42wB7L/RMXSIWnZWN9o8ds3sX58AerYCz46nhbn1GPXcu
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SD/aXfu+
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/3] E825C timesync dual NAC
 support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: netdev@vger.kernel.org, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series adds full support for timesync operations for E8225C
devices which are configured in so called 2xNAC mode (Network
Acceleration Complex). 2xNAC mode is the mode in which IO die
is housing two complexes and each of them has its own PHY connected
to it. The complex which controls time transmitter is referred as
primary complex.

The series solves known configuration issues in dual config mode:
- side-band queue (SBQ) addressing when configuring the ports on the PHY
  on secondary NAC
- access to timesync config from the second NAC as only one PF in
  primary NAC controls time transmitter clock

v2->v3:
- update commit message (1/3) about regression risk after removing the
  workaround (no risk expected) 
 
v1->v2:
- fixed ice_pf_src_tmr_owned function doc
- fixed type for lane_num field in ice_hw struct 

Karol Kolacinski (3):
  ice: remove SW side band access workaround for E825
  ice: refactor ice_sbq_msg_dev enum
  ice: enable timesync operation on 2xNAC E825 devices

 drivers/net/ethernet/intel/ice/ice.h         | 60 +++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.c  |  8 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 49 +++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 82 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |  5 --
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h | 11 +--
 drivers/net/ethernet/intel/ice/ice_type.h    |  1 +
 7 files changed, 149 insertions(+), 67 deletions(-)


base-commit: 410597c085b1ab697bd40cc8cd532eb337a5405e
-- 
2.39.3

