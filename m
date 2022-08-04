Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0660A589D5C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 16:20:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9BF3417B8;
	Thu,  4 Aug 2022 14:20:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9BF3417B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659622846;
	bh=WOhPK1lBeyftPgtVbAxJT2JU4+9DFWMas7xLI2gpI0M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Z1d90Ju6f9zW9Pb9ympNIUDP+qkpEVz0x9XpoW3gIoTu7Ouzv39uJDgJbZc1yTnSy
	 MBYDT68FtH5o/QwsiB42D8yzFuUaV3RvRkb3nAoYTAsrkSiDglhNWBpfCE3vm/DswY
	 Bxy8JqDrH1KMUNfCI6YMPBO+0qlNocmxx/mrO/lATR0N7WGM7OC7ZPDHncUsFV2unE
	 1oStZAQd0XxuyATLB+Q+TNW+0/FpA4Sh9neBuaGv4+JGY7RkiugGE1SgnKwOFXYDZm
	 MRyYp6pHoD7vgn288PwnpwVMSqwsjCjAINdmCP8NJKO/nRSIb/xe3ISXpTTmLGAF5h
	 dpTFbvLcCOBgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxOhnfFPd728; Thu,  4 Aug 2022 14:20:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92D67416E7;
	Thu,  4 Aug 2022 14:20:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92D67416E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 575401BF32E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29103417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29103417B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pMqNg6tIA1sO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 14:20:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F722416E7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F722416E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="315820503"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="315820503"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 07:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="579089253"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2022 07:20:35 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Aug 2022 16:20:26 +0200
Message-Id: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659622839; x=1691158839;
 h=from:to:cc:subject:date:message-id;
 bh=KLeH+cv9/jAwBy76dYzMTBzeUNXGblDtmxQEbwGLNpo=;
 b=i+MrJEFPzpD3kLgsSckFUyrWHKrs24OfNS4jebzVkwvq3eQOn1Cpb2E1
 v4agD+ylkIzM4Cg6/HqB6o6KVFiJk1pWeX5b8k9TbyqODek3EhGhGbSJg
 XCKgVwIw/KxVRzYv0xMlhle44um+N/zfnxXBnnN/XS/9vfO+WTFo7RWwz
 p2bPUfmMv93RKwlqnLrv+uVg8kfIjsopxNu5/MjaelvZJ6jecHbM1x1qj
 840cWT4zdHy/1hLT1dTw3GtcyD6y3GQaQpkQkiRWXvS0GetS3o1Acl1+F
 GN5/Ulfz4gMSnyTjNcZ3f8THfrkjZUBVRFZXx9W0Hb260mCzXORckNBVl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i+MrJEFP
Subject: [Intel-wired-lan] [PATCH net v2 0/4] ice: Fixes for double vlan
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
If the requested promiscuous mode setting already exists,
an -EEXIST error message would be printed.
This is incorrect because promiscuous mode is
either on/off and shouldn't print an error when the requested
configuration is already set.
Avoid enabling or disabling vlan 0 when trying to set promiscuous
vlan mode if double vlan mode is enabled. This fix is needed
because the driver tries to add the vlan 0 filter twice (once for
inner and once for outer) when double VLAN mode is enabled.

---
 v2: Fixed error message when setting same promiscuous mode
---
Benjamin Mikailenko (1):
  ice: Ignore error message when setting same promiscuous mode

Grzegorz Siwik (3):
  ice: Fix double VLAN error when entering promisc mode
  ice: Ignore ERR_ALREADY_EXISTS when setting promisc mode
  ice: Fix clearing of promisc mode with bridge over bond

 drivers/net/ethernet/intel/ice/ice_fltr.c   |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_lib.c    |  8 +++++++-
 drivers/net/ethernet/intel/ice/ice_main.c   | 13 ++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.c |  9 ++++++++-
 4 files changed, 31 insertions(+), 7 deletions(-)

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
