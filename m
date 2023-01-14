Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9BC66A9B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 07:43:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65E8841701;
	Sat, 14 Jan 2023 06:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65E8841701
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673678621;
	bh=gkTKPnD8+cwJh4lk3xYBC6prRL+1brwvqHO9VBVduJI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=y8CQI54ZBATtithldqQ+OsZCkFidrywu6ONlpuaCUdqwzw788/JRLtxPxqmp7QLjg
	 N2ChOwlUEZ3lX9Ve8kJvHQP1m9QRr7oEh/wAz+AMpB0nMLv65yo+CVpW4H6f1wD6x7
	 WXpRX9BK/QQjZUcYNJmTOcVXqr37xIxWdT+ej0rlqf/Q6tWOTPQDqPNyoMTLFr7oLh
	 PxC6YK5lkPV4XmkpfwA1lTrYsqvj1/9lpIWdHCBWevMRaiLR/jmIZCiZf5yZjYkzhZ
	 wxvDCTsuDS/SdDC7OhU6bDJy4J2+dngI/ordJp/PkHwN167JvlaXp0fJ17o3gFKPip
	 E36VBbzxEeS0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JxeVSqCuGgdR; Sat, 14 Jan 2023 06:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66D46405D2;
	Sat, 14 Jan 2023 06:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66D46405D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E84D41BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 06:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2D1441054
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 06:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2D1441054
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqkwNlUNQnK2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 06:43:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A45DA405D2
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A45DA405D2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 06:43:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="325427771"
X-IronPort-AV: E=Sophos;i="5.97,216,1669104000"; d="scan'208";a="325427771"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 22:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="987245219"
X-IronPort-AV: E=Sophos;i="5.97,216,1669104000"; d="scan'208";a="987245219"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jan 2023 22:43:31 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pGaGI-000BrK-1y;
 Sat, 14 Jan 2023 06:43:30 +0000
Date: Sat, 14 Jan 2023 14:42:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c24ed6.2gQP9YNvvyAVfSvW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673678613; x=1705214613;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Lz1zG2i5xRT/hVKU3eHzFJSiMhAbWleR8OyLTcpUgKs=;
 b=eMyqp9JqRCp5v/nFqZAUS+CFFIutmOVFXl9wmmsyyGChYAQUNcP0Lhjb
 Xd4D36MBzDgXZyBalXXu/r90hhS+jxenKxq1UEj9Sks2Klh0pqHcVaf6S
 JRn3UI9+DRleTAO7vYCTiHJhveY+M7fFSAGHGOUgu+04o50LXOW9YqqqQ
 7id75KyazWzVx9+eCkeetBiOtBHsu40bZT40baJRSYjNWjatcYuivt5uZ
 Mg7ot+KPcsTVGW9PwrHYgdz0nAPof+slthAwS7gm1xhqu3NW7mmb7FFvZ
 bzFyctuCMDUdKAKEVUwGBFpBRfA9WiMbgisgBaFiE42lEh0hyyFHVsdGH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eMyqp9Jq
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 6f8179c192345b91fb643a6ce4d9396ba6ddd77e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 6f8179c192345b91fb643a6ce4d9396ba6ddd77e  ixgbe: Filter out spurious link up indication

elapsed time: 728m

configs tested: 75
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                  randconfig-r043-20230112
s390                 randconfig-r044-20230112
riscv                randconfig-r042-20230112
ia64                             allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                                defconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a015
x86_64                           allyesconfig
i386                          randconfig-a001
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a003
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                          randconfig-a005
x86_64                           rhel-8.3-kvm
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
sparc                             allnoconfig
powerpc                    amigaone_defconfig
mips                           xway_defconfig
arm                         vf610m4_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                          allmodconfig
sh                               allmodconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
arm                  randconfig-r046-20230112
hexagon              randconfig-r041-20230112
hexagon              randconfig-r045-20230112
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
