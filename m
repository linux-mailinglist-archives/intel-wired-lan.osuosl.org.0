Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61728587AAD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 12:28:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E549460BC1;
	Tue,  2 Aug 2022 10:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E549460BC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659436132;
	bh=9pXI4HbN9dmPVEKBbqmzpyTqV/hM7xe/J8zDELxFh+w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=N1wAcIgkUCCHn2G9WTAHPpt+sunC9nOskUBLERxX4ntpuRikPcA/hjjYpV5r8Rwj1
	 5jW0xOxxNFZ4R/0ibkLNqxVdTbJi2WOy3phGjy4iiwvQWtrdkJXQKBMb82vKcQeQRI
	 2yeF7e4mEPy7UzDPUTKN7Z/j7zpc8A7QyNMLpbN8BC5hKh9HE7QzxNB14gnt2k4m4u
	 OedzUi8tGx5514FoXJ/uznJJDbAuDrDR9NKRzReSXJZCKOi8BLMwosPTNOoPe8aXHP
	 +IKNzsN3w/N4niQa2hFjO0DEkBAIGI3rYnRD+U86d6AVb9G962zPO4c3jfGADPoSBI
	 YwO3awU8yPicw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qD3GNd9-HgY1; Tue,  2 Aug 2022 10:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD82C60AFD;
	Tue,  2 Aug 2022 10:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD82C60AFD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D28E41BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A685F402C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A685F402C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fMU3xsZ0bzEP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 10:28:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B970402C2
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B970402C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="290589525"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="290589525"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 03:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="635244135"
Received: from propan.igk.intel.com ([10.211.8.82])
 by orsmga001.jf.intel.com with ESMTP; 02 Aug 2022 03:28:45 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Aug 2022 12:26:15 +0200
Message-Id: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659436126; x=1690972126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F8REI7Ci4/eEDXHtP/leKe+AkOkkghHLP84sO8fXodo=;
 b=fop++LULw+dbwWGjipg1SmQ2ABkAdv49pcP0XEprOP2VsPb/WR/x6A5m
 slShuDnd5P5UeCGqkpR1U+citnVTFZvyC04BP3gzyKw7mBPEI0MQzMMhV
 Gqu/mu087diN0p0nIycF25EXR7KgHnHaRQ9/dzsBDYcdJLchmKntAnCsK
 b94YX97JGLhncXXB9938pqhXYyMaZsauaZACFmCqC4S0bS9PQVB3JfWWn
 3aSsiy2e6l+pfP4ZBzs+BJXxPf8SI97b35K2IW/u8I9a2QLrMRyG9ji56
 TYPgRjVc1rwx3t2UozqNzwPm9bv5s8HSSRDlNOPwwsUKLK62g9dtWEr/s
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fop++LUL
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] ice: Implement LLDP MIB
 Pending change
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the RDMA traffic class is removed, then our Control QP (RDMA Admin QP)
may not receive completions and would hang RDMA processing. Which would
translate into requests for reset on the card after receiving such
changes from the switch.

To solve above problem FW will no longer remove TC nodes for the
applicable TC instead allowing RDMA to destroy QP markers. After RDMA
finish outstanding operations notification needs to be sent to FW to
finish DCB configuration change.

Anatolii Gerasymenko (2):
  ice: Get DCBX config from LLDP MIB change event
  ice: Handle LLDP MIB Pending change
v2: Remove inline hint for ice_dcb_is_mib_change_pending()

Tsotne Chakhvadze (1):
  ice: Add 'Execute Pending LLDP MIB' Admin Queue command

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 18 ++++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 13 +++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb.c      | 39 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb.h      |  2 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 53 +++++++++++--------
 6 files changed, 101 insertions(+), 25 deletions(-)

-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
