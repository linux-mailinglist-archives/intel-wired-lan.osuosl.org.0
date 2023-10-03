Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063557B7135
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 20:43:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4877F4181A;
	Tue,  3 Oct 2023 18:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4877F4181A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696358614;
	bh=PE7bZoFffKkUtBDAbnDXzTTEhlhwn+CmXCV3/fFPQpo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hs82gD7vnL+pzIUWLXAFYCLNXzOROVoxXmhDgbbumGuZQsimS0i4nLg7EsUlK6kR6
	 9yzayIehjkYjqdMlsnpq3P9iJoiZx+GJN/EpVd5GCskooJhrAeJdw5SyVaWDqI1Gi4
	 TvRth9qP8S08CAt1qkT4VXco0PVkJU5zhEDfqTK7JicK3NdsaxdvjOq+HjsaBZo5iC
	 e6VzPf5iuw3534TKakiS9QWK7s2ETsZWs86aTj1El0lnjEfPgYeJqG8to5KZMb51qr
	 /1Vj5wqpu3LzUBjzxmXMCABs9MDx4OPtbw1ccAYKysDDlbBjnDr/LqI0k9Ls9SyRrF
	 JAyZ6/9FllVLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5jntv_todxxc; Tue,  3 Oct 2023 18:43:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31EA24012F;
	Tue,  3 Oct 2023 18:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31EA24012F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E46F01BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 18:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C72D04173F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 18:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C72D04173F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4RtVu1L-vFoo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 18:43:28 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 03 Oct 2023 18:43:28 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11410408AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11410408AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 18:43:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="4516709"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; 
   d="scan'208";a="4516709"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 11:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="874786501"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="874786501"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 11:36:18 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Oct 2023 11:36:01 -0700
Message-Id: <20231003183603.3887546-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696358608; x=1727894608;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fTzKFu75PwflFK5vPw4iJL8YI6768mFc2vcJ3/KflLE=;
 b=gDov6UH6dXu8wkDryyKnS23rYzGL3XMWciRDt4tdxcr+jgoz0Cm+EVCg
 z/mP8I+yktoSFU94tQYYfLixSLBKvcjFCuC7K6LJBXMbqLR43UPglaDLD
 9M1Om/EI5PuZrhsZHhPbzPvamMAIDZ3mVvtyRNbGvaD2HTAklZxLp/KNK
 k5+ZIuOXfxUB/9PMjw4UWnJsJcG8aGP7/EsGl3kIXXb3yzin9KBg1SRDZ
 mnp6WhJJqZp+oN0/Shl26U3xObHbhVYyTZibr0KPO40OYpd+xAQvAaYc/
 +hI4l1gp7VOM07+x2x6bjxgY7zwmBO3s8r0Y1d+Eed72Vc+n7IgxXKjxp
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gDov6UH6
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format specifier
 cleanups
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
Cc: netdev@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Clean up some warnings from the W=1 build which moves the intel
directory back to "clean" state. This mostly involved converting to
using ethtool_sprintf where appropriate and kasprintf in other places.

The second patch goes the extra mile and cleans up -Wformat=2 warnings
as suggested by Alex Lobakin, since those flags will likely be turned on
as well.

gcc-12 runs clean after these changes, and clang-15 still has some minor
complaints as mentioned in patch-2.

Jesse Brandeburg (2):
  intel: fix string truncation warnings
  intel: fix format warnings

 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 ++-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  8 ++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 22 ++++-------
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  7 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  4 +-
 drivers/net/ethernet/intel/igb/igb_main.c     | 37 +++++++++----------
 drivers/net/ethernet/intel/igc/igc_ethtool.c  |  5 ++-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  4 +-
 9 files changed, 46 insertions(+), 51 deletions(-)


base-commit: e643597346c72ebb961ee79ebec34acc042e8ac2
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
