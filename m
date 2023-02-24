Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA686A1D07
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 14:32:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D994460F83;
	Fri, 24 Feb 2023 13:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D994460F83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677245521;
	bh=PGpVqX9nrDAvIS/M8OnelApGQXxqFhdH/0/VaNJEOBw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j+Gy5pc0pl7wfqNCDF9kl8UkzHWOYpFVxoTWVeubUtvdQMXuJtKeDqlJlEszjbf5k
	 w/eTCmjJ+CnBRho3TcSKKynmZeHLhRBycC6gEXUq5UNdTDlNVG5BWQ/QfgjmM6G9jh
	 8ZoK3FTmL46LYYiQrz0rkz1cR4ZGxuz2Zq7zh6YWAjUREqEyU24t1E441ufk92wmiC
	 CUkfRW9pjWMe2r++E22huuvXJfGwPW8wEIvhn6Qj8cyfRPx4bg8mLFpPHhpJGafog+
	 U7QQHMPpkM2wf36Lup+yf4ZGh7B3glmKWRgDAY2OwcNL+XmgGyT6qxjkyEjHVstrdx
	 s29HaQIQreFIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBhFLiC39L9W; Fri, 24 Feb 2023 13:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C964B60E7F;
	Fri, 24 Feb 2023 13:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C964B60E7F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 082BF1BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 13:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D268D81FC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 13:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D268D81FC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L9wjFxNhfSEm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 13:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B225881EE6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B225881EE6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 13:31:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="321674336"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="321674336"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 05:31:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="796744074"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="796744074"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 24 Feb 2023 05:31:52 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pVYAx-0002Rf-1j;
 Fri, 24 Feb 2023 13:31:51 +0000
Date: Fri, 24 Feb 2023 21:31:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f8bc41.0OSvRqCAB/8q/krw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677245513; x=1708781513;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0KPlarNnlESAdR5vLDsXOPMpr7n0pe9fkh/wRynzdtA=;
 b=IT5Or5bpXecbOWLuHFtEM5FT+CCcZKGO311nfIy1Z0+WJLFpSUp3AUvr
 uZwSYyXGuSuKnRgZGFu6n9usCxbIlqe4MG1HROZEHU8FOlYTHC1thBUNh
 Hq10JQC5oEziEGvH+4N2MZEpIc8R7UjXyV8qTqPTs8Ou7/R0+uKkKf4fq
 oYzl2MOQdKEPtOgNpm3hTIjsY8NKgextQCRcEM4HKTRSTr0sPNcKbPHZM
 ZQoX3eFp0cMISq7XiDxUOlmgHYj9mLDe/5f6z+qaWPaUXXVJ+KRXHq//V
 CVzA5s2HUDIOwQTZmD7sBjbiUUURVtm88MgF98t2Kq0/gEjrv/tXkRkjG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IT5Or5bp
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 cd0ca7272459260cce896ec5b20de29b5a1f8b64
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: cd0ca7272459260cce896ec5b20de29b5a1f8b64  ice: remove unnecessary CONFIG_ICE_GNSS

elapsed time: 720m

configs tested: 19
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
clang                                   alpha   defconfig
gcc                                       arc   defconfig
gcc                                       arm   defconfig
gcc                                     arm64   defconfig
gcc                                      csky   defconfig
gcc                                      i386   defconfig
gcc                                      ia64   defconfig
gcc                                 loongarch   defconfig
gcc                                      m68k   defconfig
gcc                                     nios2   defconfig
gcc                                    parisc   defconfig
gcc                                  parisc64   defconfig
gcc                                     riscv   defconfig
gcc                                     riscv   rv32_defconfig
gcc                                      s390   defconfig
gcc                                     sparc   defconfig
gcc                                        um   i386_defconfig
gcc                                        um   x86_64_defconfig
gcc                                    x86_64   defconfig
gcc                                                  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
