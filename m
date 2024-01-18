Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D411B831EA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 18:46:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BF8784444;
	Thu, 18 Jan 2024 17:46:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BF8784444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705599977;
	bh=7T9wC/dd7badYbInobeWf7OhZjqwCpqaE3iEATAYtBY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FBaDRwsIgpxKks+NC3Zfh1X7ZPvvYY/fdJ5p7ZM0/abtS70UAW30g6wb/QH+5+9IH
	 gRzp0pSH8ayUeLqT7KpcPBxkUp/erKjY00Kf5EyHRWgqILiXNTmzyJWeBupbnm/2Zk
	 fPE3hJA5QMnaS7ZgzqMLsmAZiQC25OMKf0OoBrgSvoDH57eZLwl0JvcCeb6mX0cikZ
	 7tuuzkAfLqUGgVp3O90qCQljV3tbbx6jG+1mhm/gkwZRUn/GIn0Ok0aTa+eWwZiPUk
	 LnsUJEilHLUdfMigmsfTK85rqTP2GEDOhibDyXjBL4lYXChMp0lU8DhjzMbKmb9mYp
	 pD3HnPxGufRdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z4oyp4Uic2QC; Thu, 18 Jan 2024 17:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F03984446;
	Thu, 18 Jan 2024 17:46:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F03984446
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D56A1BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF06C6F5EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF06C6F5EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WHx8lvRmKOg8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 17:46:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 268B360C2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 268B360C2C
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="22001381"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="22001381"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 09:46:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="26819567"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 18 Jan 2024 09:46:07 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jan 2024 18:45:45 +0100
Message-Id: <20240118174552.2565889-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705599969; x=1737135969;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QVDzK7qu8Dn9oJm3knKewxlwsWJntp4EWgC54cySeok=;
 b=CAozveIWD8b36iLKet1CSDKX7BCljQvPtln6Zg1nh18JkTLoM4w35yS5
 pYnwBP/AKcmPl7UAhvgW3IcdRT1TAL8edn6mz15jR+LxwFn5VyLnkaXvc
 r+OVM16BKV3OWEfdug2ACw7IMMozMGaBya/TIdpK+JBfP3KffW0XmCedw
 8IVUIdDsSg2fSqGNMHdLlbMPq1f6hVPvN29+aYC3l+kRUhm524jk4fPuY
 ZRP6Nkppx1ZhiggWLtOwNTfrCMfceI0RzwxUWy1Z5H4nFSLrT9CUpJS1U
 HqI5bJGet8hKSrD08X9FEXMF3lP8BPEVjln7zi+z06N+dG501CdkB5s42
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CAozveIW
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 0/7] ice: fix timestamping in
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PTP reset process has multiple places where timestamping can end up in
an incorrect state.

This series introduces a proper state machine for PTP and refactors
a large part of the code to ensure that timestamping does not break.

Jacob Keller (6):
  ice: pass reset type to PTP reset functions
  ice: rename verify_cached to has_ready_bitmap
  ice: don't check has_ready_bitmap in E810 functions
  ice: rename ice_ptp_tx_cfg_intr
  ice: factor out ice_ptp_rebuild_owner()
  ice: stop destroying and reinitalizing Tx tracker during reset

Karol Kolacinski (1):
  ice: introduce PTP state machine

V4 -> V6: patch 'ice: rename verify_cached to has_ready_bitmap' split into 2
V4 -> V5: rebased the series
V2 -> V3: rebased the series and fixed Tx timestamps missing
V1 -> V2: rebased the series and dropped already merged patches

 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 229 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  34 ++-
 5 files changed, 164 insertions(+), 106 deletions(-)


base-commit: c8c06ff7ca5d9fc593fd634e3c3ff78a7e2bc5fe
-- 
2.40.1

