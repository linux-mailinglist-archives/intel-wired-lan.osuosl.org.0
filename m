Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDA9611FB2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Oct 2022 05:16:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BAE981839;
	Sat, 29 Oct 2022 03:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BAE981839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667013377;
	bh=iSLaJmFW2fNDWi8vKSbjJk6dmEjBfl97yw/ToS06HFQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BKgbKfa0isDmpLWqod8wr+RZ4yY/tz7MQfnAM1intgU26Sqdx3kfJ+3E39igmXCnF
	 Xxmyqgkpa1zYRs23j01JggLDYwLrioEN2Bq/4jiErtB1F0o5eFQZALDy0XpYj2ZgKJ
	 lfOkildqqojIeqb7Kh0bFz1u6vlvcAq3ge+QrKawUaBWX9X8glXveiMsM9wMcj/0j3
	 BX41XbKPxL8H03OZWrSBp9k7O5tiLNnN0xAy2TJ+oquMM9DGCvFJobNCftwA1S7Qtr
	 pytetqOfdZT+/GZrS4OdKxcZL0mwcUkwjBxgTyV59CIpXMSSTsgvo1yfdr0864fzLx
	 z9yXjrKANpzqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFt94mKXHBwG; Sat, 29 Oct 2022 03:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EEFB8176D;
	Sat, 29 Oct 2022 03:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EEFB8176D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55EE01BF982
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 30B3040134
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30B3040134
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5y6GahyXKPl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Oct 2022 03:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4010D400F8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4010D400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:16:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="394948140"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="394948140"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 20:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="610954179"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="610954179"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 28 Oct 2022 20:15:52 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oocK8-000AVl-0f;
 Sat, 29 Oct 2022 03:15:52 +0000
Date: Sat, 29 Oct 2022 11:15:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <635c9aba.J1Fx840mKJlqa7k/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667013370; x=1698549370;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KAsI6H9KsafNQZXHNQjV8Ep1l8Hop/BCzFR4N7hLVXs=;
 b=kmVX7ytd/Wq/FFMVF2Y2nZJ5FfRNGH758H+ezr226mDy588LzXHPyuRT
 oFOl0c6bHmK26Jl4v66dm4Gijo/b4XJs2f6ZvXQsHv4iCxaA/EOk0s6cW
 dB7XNaKURePOC/SZ6DZNKOv+eeu9oTk4Cy293Lymzu/OqLWg3Hr5gTTgw
 ekS9DkVz+7sM8kY90pblCV+0jMK3VcHVibf8xNUL3+WJVPXefdu7fpA49
 lyt5olCA0d8FLhBKbRwTx4n+4dpE+kKvpMFXiMW128zp3gUFy6Y1wO8M1
 AJER2QzPKErH0bVc+5FgpsiODfL84l9Kq//OaYXUI8wAFmfmBPUyceyNt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kmVX7ytd
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ab65de6b1a52ee174c575e06759a4e29c80346ae
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
branch HEAD: ab65de6b1a52ee174c575e06759a4e29c80346ae  iavf: check that state transitions happen under lock

elapsed time: 724m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
ia64                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
powerpc                           allnoconfig
alpha                               defconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
mips                             allyesconfig
i386                                defconfig
powerpc                          allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arc                  randconfig-r043-20221028
arm                                 defconfig
riscv                randconfig-r042-20221028
s390                 randconfig-r044-20221028
i386                          randconfig-a014
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                             allyesconfig
arm64                            allyesconfig
x86_64                        randconfig-a013
arm                              allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
s390                                defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
s390                             allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
hexagon              randconfig-r041-20221028
i386                          randconfig-a011
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a015
hexagon              randconfig-r045-20221028
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
