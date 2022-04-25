Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4150D987
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 08:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDF7E60B29;
	Mon, 25 Apr 2022 06:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6gSdfanESQdm; Mon, 25 Apr 2022 06:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1292460A72;
	Mon, 25 Apr 2022 06:35:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58B571BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46D7B8138B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VwlFNwUJCyHx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 06:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D87C81329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650868521; x=1682404521;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nVg03s2IT7gQoen0LBIehxYvMzhqRVtxcGo3n+l0n4s=;
 b=h9dJOVZbv+XmMSq+UyTuOMvbhvfztbTocJCkp/vbru/oejKyFlDvFLa9
 A84PDqOxmutGsZ3NGiddJr13fnP801Cbs5thmXHnDLEs9B9wCpA3dGotO
 Mg2WmVsVZoaGSHO+RIrjU8/LjseNg7R0ovCmlXwMFJNXFuZQD2SkrWeTV
 LUbrQq1hR3/gyRY80WcQotcW88Ct7ufXCEkdS9z1k0kDD+CLhkNCn/aT7
 fyjuwq8RUfYcVYNg7Z8NL66/KU6EzevvFFCedOmzTO1Ywe6QNOnSHq4ym
 ps7zg2yQ5EfOWeRVp04IYP5mP8iEPg0f/O6vWdi1WfmD+4mM2FMtxnQ9e g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264008412"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="264008412"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 23:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="557568741"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga007.jf.intel.com with ESMTP; 24 Apr 2022 23:35:17 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Apr 2022 08:27:54 +0200
Message-Id: <20220425062756.14987-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/2] ice: preventing VLAN
 configuration in switchdev
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
Cc: michal.wilczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In switchdev for any VLAN configuration requested from VF PF should
answer with not supported error. Instead of adding custom ops for all
VLAN ops prevent setting VLAN VF caps.

Thanks for that ugly error from dmesg will be removed as VF should not
send VLAN configuration commands. If it sends any PF driver will
return not supported error because all VLAN opcodes are remove from
allowlist (only in switchdev mode).

Michal Swiatkowski (2):
  ice: don't set VF VLAN caps in switchdev
  ice: remove VLAN representor specific ops

 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 121 ++++++++----------
 1 file changed, 54 insertions(+), 67 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
