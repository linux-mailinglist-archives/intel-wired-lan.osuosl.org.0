Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4A967AA8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 07:55:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2A0C4183B;
	Wed, 25 Jan 2023 06:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2A0C4183B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674629756;
	bh=dYRH8OXAxwObiMf7u+MyuMY/Ynt0tLuUuIB3yqKBnHk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=247VZBvo7Xn1AILIMAu4ai5ohgc15duvdjVu6sFE/v3AD8pGUBXVejoDYi52+zdum
	 6gJilj3RcoyifTfBq2HsYlSl0+97y+swdm+O9cT6VgxCzh7sHAMBdIR3yQjrU0lVRs
	 EmUsnWN9ctqOPmwGH//o6DDWlyztKZIuBUZARbuzYoXm0Ra/wJeXn6z2xrpWTgoxPQ
	 tD+JKUfbF087fEy8Gf9XnnH1XFZaoC7/UWaIheyYCXTqaM/jwk8fwdX01At49d2wcV
	 BJVdjrpOHHKttwHHXpKPNS+q4NRyqK4HzKohBwKcuB5TLY0LTmIUyFZGH7iZhGfmzH
	 pFTQcRLnGxJOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-B3wNQ_1mrR; Wed, 25 Jan 2023 06:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5096E41833;
	Wed, 25 Jan 2023 06:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5096E41833
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A9C11BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 06:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5014640B70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 06:55:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5014640B70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GBB3K9ZpI6Ql for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 06:55:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0E76403B7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0E76403B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 06:55:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="306158893"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="306158893"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 22:55:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="725766416"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="725766416"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2023 22:55:47 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKZhC-00077s-1S;
 Wed, 25 Jan 2023 06:55:46 +0000
Date: Wed, 25 Jan 2023 14:55:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d0d271.qMmExP9j2RmofQhP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674629748; x=1706165748;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tCIrrvCV/QAokLsS4kQR7cUWgT2yjNM2Mkxjet67QLo=;
 b=Rf3x6FCUMfv1tfIMF/SQPp+Slvj9hIo8nLcWgMAnB/nFDyjlbm9tDuzW
 N8jLzEqdrJk1/e0+Is7eGfQuRtNnmOZ0VH4uQJx9fdBK8DlipKZOZhyEn
 yqH3cGxQlaWDNOkq489xeI8MwaZf/IOJIPYeN8iltlYTHM+AF02Ki27uC
 qZXLM53Tv4a36+Yjr39wJa57Ys/+sf+k2cV3sxiGhlAgG0dgPaSNgUE6n
 ukKsL96MhkQJF7K0GfYTI8yap6yeejzylrNgbe9WE8wZR3WFYTz/aWhsU
 M6QuWeXNjvZ88H+vLGdd+nr/G4sUfZVHd8OoysKopz0yI3HiNf8dHe1r0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rf3x6FCU
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 24272e1d3a1293a3286dca88a7316b9beeb25802
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
branch HEAD: 24272e1d3a1293a3286dca88a7316b9beeb25802  ice/ptp: fix the PTP worker retrying indefinitely if the link went down

elapsed time: 726m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
alpha                            allyesconfig
m68k                             allyesconfig
sh                               allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                             allyesconfig
s390                                defconfig
arc                  randconfig-r043-20230123
arm                  randconfig-r046-20230123
x86_64                              defconfig
x86_64                               rhel-8.3
i386                                defconfig
ia64                             allmodconfig
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
arm                                 defconfig
i386                             allyesconfig
x86_64               randconfig-a002-20230123
x86_64               randconfig-a004-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a001-20230123
arm64                            allyesconfig
x86_64               randconfig-a006-20230123
x86_64               randconfig-a005-20230123
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
i386                 randconfig-a004-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a006-20230123

clang tested configs:
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123
riscv                randconfig-r042-20230123
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a014-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a015-20230123
x86_64                          rhel-8.3-rust
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a015-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
