Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C7B6B82D6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 21:36:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7769C60FF5;
	Mon, 13 Mar 2023 20:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7769C60FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678739785;
	bh=47JVm7bAOb/LeWM/pov1F/ncAbfq419Kr5Q/ElEYKTw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KjKHT1TL4wQtFYnSLMJVQZCMm5AWk3zv/lF2RZhgpdaoTWiiZsKdis0FnD4FxXyLT
	 kG6B5HmkksOPHIJmyDgCelAnnky3wxT47tFopx4vXmo5LxUgnKbxIhuI4YynP1X49i
	 mtr2WfGGcfYjNDAbHIuGkYob6Yfzv1iEqJ/kXAio4Hdv2vmOS+jdEAXi9lwNPdrxeB
	 yJdmS8vZPIgTBWPR3B56sBbe/Nk5E6aYVHJDHAdPp5Ec0Tr8vvsB1wZQtQALwgJWF2
	 ryrkSNCh/QcPlOLop9p45suQhajOCKUcEMXXnYp+2qBijg8Eq/VUjo5MBugvtvuW3s
	 hdCd1oBnAQvvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BIIFzHWwz9Du; Mon, 13 Mar 2023 20:36:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70EDF60E26;
	Mon, 13 Mar 2023 20:36:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70EDF60E26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 306601BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11ACB41726
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11ACB41726
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5TgDnpBU4V0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 20:36:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 528924173A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 528924173A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="364913215"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="364913215"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 13:36:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="747732593"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="747732593"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 13:36:17 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 13:36:06 -0700
Message-Id: <20230313203608.1680781-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678739779; x=1710275779;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yiPGkCuFWRqq/+zZ5dNxbmWknE3r/SafDd8SL+ywou8=;
 b=ex2+MNAZtOcD/RCBcmyDnZy+FbcBR9cumGkWy++wUYkTaWVjIFluAkmq
 YOCWPqz2YDJ30UxawPRxI8fTbqPy4jKkQIoiAgAK8C3JO7k70CrPewhAX
 EOXDqpykYKJBj+MhLL74I/TUBDpi9VePJPzKx3B1ZJRmJTwcJ1n1iFpz6
 no+hzV5+y7/2VCyuFzrvmg6vbVV0MaMXX/DxU6ZPCqCa/wIDd/dog+U30
 UfH+VvkTjAldP1W0VcEKin40b7NsVwhI5U8mjLJrP9nCmd5DnfsWgMC9r
 Bf3bHJWzzk+H/NMGKNYRZouXFSedG4iuB+oCKOmyyKM18UL54569aZdH4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ex2+MNAZ
Subject: [Intel-wired-lan] [PATCH net v1 0/2] ice_switch fixes series
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix a couple of small issues, with a small refactor to correctly handle
a possible misconfiguration of RDMA filters, and some trivial function
headers that didn't match their function.

Brett Creeley (1):
  ice: Fix ice_cfg_rdma_fltr() to only update relevant fields

Jesse Brandeburg (1):
  ice: fix W=1 headers mismatch

 drivers/net/ethernet/intel/ice/ice_switch.c   | 26 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  1 +
 3 files changed, 24 insertions(+), 5 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
