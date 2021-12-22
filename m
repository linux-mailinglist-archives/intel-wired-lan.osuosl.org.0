Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A7F47CCF7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 07:24:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B46740A79;
	Wed, 22 Dec 2021 06:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e8l8QgeCuots; Wed, 22 Dec 2021 06:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A6924047D;
	Wed, 22 Dec 2021 06:24:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 194BE1BF5B4
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0711160F6F
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVXT-bN33MPV for <intel-wired-lan@osuosl.org>;
 Wed, 22 Dec 2021 06:24:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2623B60AAF
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640154289; x=1671690289;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E9t21jQnnAVZEFtm8cYTLH+nRY5NcHHPjjlBOCDT7O0=;
 b=XvrVMNF9JbGEnuiPW214+3yYB2Vcj7L8X6z3LhZyvAYm1q5gQkv5GFsg
 Ruz4DI+32c4LHiatdO5cZWfjBmXMh1LMISdGugkANl3YBtbZs+E2SlwxE
 xXydpi3tJed3h+m4rDDkgmRAzKI585EefDYiHv4fybT/wiuyyfL2827f4
 vYZi9o3KUxDgvK9YEwDUwZ5cMgOrSqrzeNzOAuQTFLVz3LtZdoWxXwrSe
 zwfpwSWbVyNe99qeurvGuNmpmkDCwNPBIYHZJgVSGOtHovA/X7xS7wBUR
 J2mcdKMjA3MyV8SQ9MPHR1uQZeMpY398VqYaXpTKaY7q/xkvokLwdtNE2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="326857339"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="326857339"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 22:24:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="521552620"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2021 22:24:46 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 22 Dec 2021 07:21:58 +0100
Message-Id: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/3] refactor irq allocation in
 ice
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

The ice driver uses the old PCI irq reseveration API. Change the ice
driver to use the current API.

Implement a fallback mechanism where, if the driver can't reserve the
maximum number of interrupts, it will limit the number of queues or
disable capabilities.

First two patches add ability to turn on and off eswitch offload. This
is needed when driver can't reserve maximum number of interrupts. In
this case driver turns off eswitch offload as driver can work
without it. Additionally, the eswitch can be supported only if SRIOV is
available, so set eswitch capabilities only if SRIOV is supported.

Michal Swiatkowski (3):
  ice: add check for eswitch support
  ice: change mode only if eswitch is supported
  ice: use new alloc irqs API

 drivers/net/ethernet/intel/ice/Makefile      |   3 +-
 drivers/net/ethernet/intel/ice/ice.h         |   4 +-
 drivers/net/ethernet/intel/ice/ice_arfs.c    |   3 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  46 +++-
 drivers/net/ethernet/intel/ice/ice_eswitch.h |  12 +
 drivers/net/ethernet/intel/ice/ice_irq.c     | 213 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_irq.h     |  12 +
 drivers/net/ethernet/intel/ice/ice_lib.c     |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c    | 220 +------------------
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   3 +-
 10 files changed, 300 insertions(+), 221 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
