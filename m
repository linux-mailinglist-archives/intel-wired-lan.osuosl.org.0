Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FF056A342
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 15:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F335661215;
	Thu,  7 Jul 2022 13:16:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F335661215
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657199782;
	bh=+qcwNrvHSwWFN26QuIMK/2h2nrm2q0aUY1Ef0Ke43co=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=quffzVmZOb9j15NqxX1ZhcR4FsoZfRKiyUrWAcSSmsjdpRhZjrg8sJo4k/+2i5Vf2
	 qqdoTmRCdpI/OvEhQuIjAZXnw87+qInAX58kqgV9oarOBrSGiqtqzsipBipZI8q54P
	 ITmq8RRo3+5N3/WyDd5Tv6nAtI/MfUKEPjJ5rX73jlUGbE9+MfBls7nyVvlC5n3PJR
	 jplGivnme9ESUhxPXVc5Q1GAKIjuxaX4WDH8Y9diFerRgKxbZMTcLTQBvBBPJJs0aQ
	 A5xBo0ZD8WqQwp1hksdMy0tvPDrf8wIlzeIqR3gtbyl3aYxgGQnzKBfogUc+a6gqls
	 1MHXG4Lyg2I5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FwvTRYElyZnh; Thu,  7 Jul 2022 13:16:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A03A06120B;
	Thu,  7 Jul 2022 13:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A03A06120B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F15D1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 779E241A68
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 779E241A68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 412U7MeR6LCv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 13:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1934F41A5F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1934F41A5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="285147973"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="285147973"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 06:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651131606"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2022 06:16:02 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 15:15:48 +0200
Message-Id: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657199764; x=1688735764;
 h=from:to:cc:subject:date:message-id;
 bh=RfqLFFRT/HRJwjQuYxHfRm0yMxbZb9WWqfP/sAGmlg8=;
 b=gbHKn6+ntFiNLV2itfVRgpyxJIZtBsiSXIZI2b59qWhY4VvVkEeAjd7d
 lFYCVc6gMLYZGQFxUAG+QPZ7KF+UyCBr+iA6ovUhr0fpKR4z3eYX43FxV
 Z+SpmUnkhqloLIGulMZHjjuH/plA5gcEZnTj6+stkNmywSodJajVHpi2q
 hqJ5xKxECu7P7ahmCxfVvW/Hg5SM4K6VGUMLianGkT153tIlMM55xsws7
 wy7loSF9sXp5F8qSnaZie+2JQ5pfsyXtOFkn19W724xnrxQgZJKyDvfKu
 hcY1jsGxU3kFMi1rtulajQVPDQXWuZjS5S9j6ybazdJljWZI5eDYUAOzv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gbHKn6+n
Subject: [Intel-wired-lan] [PATCH net v1 0/3] ice: Fixes for double vlan
 promiscuous mode
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes known issues related to double vlan promiscuous mode.
When at least two interfaces are bonded and a bridge is enabled on the
bond, an error can occur when the bridge is removed and re-added. The
reason for the error is because promiscuous mode was not fully cleared from
the VLAN VSI in the hardware.
Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.
This fix is needed because the driver could set promiscuous mode
when it still has not cleared properly.
Avoid enabling or disabling vlan 0 when trying to set promiscuous
vlan mode if double vlan mode is enabled. This fix is needed
because the driver tries to add the vlan 0 filter twice (once for
inner and once for outer) when double VLAN mode is enabled.

Grzegorz Siwik (3):
  ice: Fix double VLAN error when entering promisc mode
  ice: Ignore ERR_ALREADY_EXISTS when setting promisc mode
  ice: Fix clearing of promisc mode with bridge over bond

 drivers/net/ethernet/intel/ice/ice_lib.c    |  8 +++++++-
 drivers/net/ethernet/intel/ice/ice_main.c   | 13 ++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.c |  9 ++++++++-
 3 files changed, 27 insertions(+), 3 deletions(-)

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
