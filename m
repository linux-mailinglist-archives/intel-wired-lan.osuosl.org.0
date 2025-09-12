Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F244B54F19
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 041D6405D8;
	Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q71i1krGSsOc; Fri, 12 Sep 2025 13:17:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B51740656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683035;
	bh=ZAavoENXfPqTusXgPpFczF98QCl79zugGk9n+wZua8Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MyJoBw1MfEcNAl+9vMnuvJew1jB33eb0qW7q6etRzVHe7WFNjyovPKfiJ+6fRTPNo
	 klooHhV51uCLfJTaFfJKdId5Bgufzt2rMM9aH/BqzI5LqLEnRvnheVK39vwtdUtDI0
	 JOBFqAZdV8YyvuWDPN9T8xSkLqIlfEAA3mJcMqTwklVmEuNqX55F7kRQg9teOrddmV
	 X4AHPTwa3HSaZFad+2JARQz1/0RTu2OHYETpiuP89fXIZBsFVjn8/SrBRCVJU+KlF2
	 gRTPNn4RhvLJRfMKxEQgWm9RjXZ2JQAdVJ5619vKxzFPRWPlb3Mii8PTNn1OCvmH63
	 6PVO302xVyFoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B51740656;
	Fri, 12 Sep 2025 13:17:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1820625B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 090A640605
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xDAtYLsOvIPx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 396AC405E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 396AC405E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 396AC405E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:12 +0000 (UTC)
X-CSE-ConnectionGUID: NBrMpvwTSn+8xpwhMliLPg==
X-CSE-MsgGUID: hVZY7bkLT0+2i8devfxlZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461398"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461398"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:12 -0700
X-CSE-ConnectionGUID: jAmMynUMS+iiQ33zQpcMmQ==
X-CSE-MsgGUID: dozrqj/ARvOLvhPTPLceOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131203"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:10 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9DF1D2FC6E;
 Fri, 12 Sep 2025 14:17:08 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:18 +0200
Message-Id: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683033; x=1789219033;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qmp/sVrKPtWZYE32eNYZrLxUcCXTL+w4Rquv9L6eNds=;
 b=Tm+gETZE2JohBW7eYWsQ1AuXi37+PT9eO4ZqQsX5GLydr3fH5GLZZNud
 Kr2LGpUw09IR54Cgdj6c+ylnGUikrk69aYeovtrbkGRA+QY2MS7Q+gmzD
 Yhh1QHLhlAGX7COGnqoz46r/MkSeF7I/fvilrVJh0zTVJIJ+LGVHaBb9r
 r3pqeWpL8Ag3KiTi/mv288FvdOmcH4Fd+YA3Sj7zCvMCP1W8tL4mdBP2t
 SLDIGGmMQuxgO3ULkQQXdFDt+7x4VyQ3WuDMmKPdQGo3mBDG5l7ubvNhy
 BEii3PTEVRU9VtoExh352G97ybUmWo+KLHL+/J5+qqHRjjHPKeZF8jiwt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tm+gETZE
Subject: [Intel-wired-lan] [PATCH iwl-next 0/9] ice: pospone service task
 disabling
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move service task shutdown to the very end of driver teardown procedure.
This is needed (or at least beneficial) for all unwinding functions that
talk to FW/HW via Admin Queue (so, most of top-level functions, like
ice_deinit_hw()).

Most of the patches move stuff around (I believe it makes it much easier
to review/proof when kept separate) in preparation to defer stopping the
service task to the very end of ice_remove() (and other unwinding flows).
Then last patch fixes duplicate call to ice_init_hw() (actual, but
unlikely to encounter, so -next, given the size of the changes).

First patch is not much related, only by that it was developed together
with the rest, and is so small, that there is no point for separate thread

--
changes vs internal review:
Expanded cover letter (Jake).

Przemek Kitszel (9):
  ice: enforce RTNL assumption of queue NAPI manipulation
  ice: move service task start out of ice_init_pf()
  ice: move ice_init_interrupt_scheme() prior ice_init_pf()
  ice: ice_init_pf: destroy mutexes and xarrays on memory alloc failure
  ice: move udp_tunnel_nic and misc IRQ setup into ice_init_pf()
  ice: move ice_init_pf() out of ice_init_dev()
  ice: extract ice_init_dev() from ice_init()
  ice: move ice_deinit_dev() to the end of deinit paths
  ice: remove duplicate call to ice_deinit_hw() on error paths

 drivers/net/ethernet/intel/ice/ice.h          |   4 +
 .../net/ethernet/intel/ice/devlink/devlink.c  |  21 ++-
 drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 159 +++++++++---------
 5 files changed, 109 insertions(+), 82 deletions(-)

-- 
2.39.3

