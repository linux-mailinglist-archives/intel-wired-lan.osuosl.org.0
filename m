Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFB27BEE4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 00:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06A86610EC;
	Mon,  9 Oct 2023 22:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06A86610EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696890580;
	bh=jPx/+TskZjph6zaX0C3KCtg4a3NkeObS2tCzV9b+O+8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AGDVddPMeY+fELB8yCVwRDx0UBJvwq7wY2FIgZrqXfnnNheZlIL9z4zZOhblLgVjR
	 SPRej16fSDF9d61DuVqXqgqkfKRtXnERZFaJD5udrT36Z306x3z7qG4N+WzbcNYDMO
	 32Q3Q+waH6hyDJvXNw2MWnU9c17o5rDzED8qYludbT7TzwEzCBNODkwtAVC9XhzHY0
	 r7exyxQbkXbv9Xrk/eAjuQxdaYY8u+cE2Gc8H4UizhWI7xOl6x41ClUaiwcLgIO/rP
	 q/AN7sGP3VTlD6+xxSyzzZjKMaRWTchvOI5cSU9ygm26BPvXzeCo8Xzh66uDk+tKb9
	 Cka1SiJUau07w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sZOEcsr4UK-Q; Mon,  9 Oct 2023 22:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA51260BFF;
	Mon,  9 Oct 2023 22:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA51260BFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF82A1BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B86C60EC3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:29:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B86C60EC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id heyjHErpzFpk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 22:29:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D030960BFF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D030960BFF
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="2849381"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; 
   d="scan'208";a="2849381"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 15:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="843876572"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="843876572"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2023 15:28:47 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 10 Oct 2023 00:26:11 +0200
Message-Id: <20231009222616.12163-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696890570; x=1728426570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qn02x6oNIDv29hbmsU6QjRTEVE9qGBnpzwd3mHYtNk8=;
 b=C1crBD1p4YFEmQWjEddFuX77deBfN2ntCDKtKSx45H4SeaUiYsa4ZlJM
 0B4Ekb7e577xKNA+M98ZCkbDEtQllW0481oFd0auEUx/IJdHx1/4CD3tC
 e9y68aKRD52fCV7Fzd4t73+9mIWmIYzezR7du3KKbxUlnb4owyx4Rug6I
 xv8NUWuXW7w3HPamU8zj0s2IeLxyFS7WtASc1FnShATAuz4MVr35VZk5T
 26+Cm817R7h7i482WPSAiXHHC/AED5aGa/24QVCc+3QyVcF8lZ5Fun3sZ
 T82j3xDpYXeMA015l4F/ig0asgLlkEH7mVnZJSzvEBDnAfY0fvOoWTJYc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C1crBD1p
Subject: [Intel-wired-lan] [PATCH net-next v4 0/5] dpll: add phase-offset
 and phase-adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve monitoring and control over dpll devices.
Allow user to receive measurement of phase difference between signals
on pin and dpll (phase-offset).
Allow user to receive and control adjustable value of pin's signal
phase (phase-adjust).

v3->v4:
- do not increase do version of uAPI header as it is not needed (v3 did
  not have this change)
- fix spelling around commit messages, argument descriptions and docs
- add missing extack errors on failure set callbacks for pin phase
  adjust and frequency
- remove ice check if value is already set, now redundant as checked in
  the dpll subsystem

v2->v3:
- do not increase do version of uAPI header as it is not needed

v1->v2:
- improve handling for error case of requesting the phase adjust set
- align handling for error case of frequency set request with the
approach introduced for phase adjust


Arkadiusz Kubalewski (5):
  dpll: docs: add support for pin signal phase offset/adjust
  dpll: spec: add support for pin-dpll signal phase offset/adjust
  dpll: netlink/core: add support for pin-dpll signal phase
    offset/adjust
  ice: dpll: implement phase related callbacks
  dpll: netlink/core: change pin frequency set behavior

 Documentation/driver-api/dpll.rst         |  53 +++++-
 Documentation/netlink/specs/dpll.yaml     |  31 +++
 drivers/dpll/dpll_netlink.c               | 188 +++++++++++++++++-
 drivers/dpll/dpll_nl.c                    |   8 +-
 drivers/dpll/dpll_nl.h                    |   2 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 220 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
 include/linux/dpll.h                      |  18 ++
 include/uapi/linux/dpll.h                 |   6 +
 9 files changed, 518 insertions(+), 18 deletions(-)

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
