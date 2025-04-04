Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 538FDA7BAC0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:29:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A19EC61B2A;
	Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XeXbwFd7t7Q7; Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B6556128E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743762585;
	bh=Y+hlAZIxgCxSPOMWoGBYPbJ0cwbfGjbR8lc/KolWSOg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=elg/N0K2+2jwoWT1HoIhsgR6BAeLttXm6srYfy9TEsUPj/Ig+xkxETjuti0hEVVat
	 Uziiji9lYNtrqtvmMUw0WJSUd6wXFlYGGRm0Zz3IpfrVbWWocrbNifw2ZTtFSEd4eH
	 Ii3h0F/6yGzOJH7gwMfs+FC5q9OBSZM3Gr5T9aisR0MiRw1kV+kYDKZXt2rDCaxcdn
	 E34j5Z0YFDDZi1aCBBbhf0q85imbcH/3ZEapXSswpVJTHUxWG2QW4NKO4XIE3wE8fA
	 lZxV9v92yBZMCBNbUbm32Yt6NgAu4C4/kaDWVdRXz00/f+pO1ce768PwoINOH0g91u
	 0SGMurKyZc4/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B6556128E;
	Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C4E7B117
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AAD1E820E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3OfZXOcmMVJ2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:29:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0D9EE8188B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D9EE8188B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D9EE8188B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:42 +0000 (UTC)
X-CSE-ConnectionGUID: yQGgyPf2QqawLdaius5QAA==
X-CSE-MsgGUID: ccvnCTUtRDO2xzrgbRPTng==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="48992427"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="48992427"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:29:42 -0700
X-CSE-ConnectionGUID: VD45QYLXSnSyIchbUbXj8w==
X-CSE-MsgGUID: 7fELeSEDTnS66HAbkDlthg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="164485283"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2025 03:29:40 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AED4133E99;
 Fri,  4 Apr 2025 11:29:39 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Stanislav Fomichev <sdf@fomichev.me>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  4 Apr 2025 12:23:15 +0200
Message-Id: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743762583; x=1775298583;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RG93Fpdngz5z7PSj8asDmrw/ZjfV29C/fDhTOXzFCEk=;
 b=gHjBx4ARAJObrpSxD0SQOZWemf6pmkkvH0yDRLcFoCEYClLFEiWdwNBw
 xLlW5lA8JUD6LHnWp1VlNDap1P3MuyxOqijDQfWwQLTWPd+9K3onOoiW4
 +yfhp+ZoElgCUlnxSWvp+/GjIHD60r+GAp98TiC69XYena6Mfnzcu09UV
 C6l0avA45iu5bvHibADZG6NJtxPQflucTozu2n4i9J0KhTpg+L2oQt2Ur
 v8Dn6ww9adW+dUXFL5NndJjE6VEO0a5IO23pQLhp+s+BSkNcBpMwSAY4C
 uldoyZ353k9KXX/pBalFl8KOf0er0YoFuJHUy8zl/s2N0QQrt0Dz4I743
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gHjBx4AR
Subject: [Intel-wired-lan] [PATCH iwl-net 0/6] undeadlock iavf
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix some deadlocks in iavf, and make it less error prone for the future.

Patch 1 is simple and independed from the rest.
Patches 2, 3, 4 are strictly a refactor, but it enables the last patch
	to be much smaller.
	(Technically Jake given his RB tags not knowing I will send it to -net).
Patch 5 just adds annotations, this also helps prove last patch to be correct.
Patch 6 removes the crit lock, with its unusual try_lock()s.

I have more refactoring for scheduling done for -next, to be sent soon.

There is a simple test:
 add VF; decrease number of queueus; remove VF
that was way too hard to pass without this series :)

Testing hints for VAL:
whole regression set, both against ice and i40e.

Przemek Kitszel (6):
  iavf: iavf_suspend(): take RTNL before netdev_lock()
  iavf: centralize watchdog requeueing itself
  iavf: simplify watchdog_task in terms of adminq task scheduling
  iavf: extract iavf_watchdog_step() out of iavf_watchdog_task()
  iavf: sprinkle netdev_assert_locked() annotations
  iavf: get rid of the crit lock

 drivers/net/ethernet/intel/iavf/iavf.h        |   1 -
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  29 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 289 ++++++------------
 3 files changed, 96 insertions(+), 223 deletions(-)

-- 
2.39.3

