Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2626258B3E6
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Aug 2022 06:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A69DD83F3A;
	Sat,  6 Aug 2022 04:51:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A69DD83F3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659761518;
	bh=iWcaRjVfeCIm4hsck3f/JOOTq87QKw61yQKxzXZD/BQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hM3T9O/EUQTwOV4CvG8iD3RoQ70tJnovkOMwI+qyRlUhGBM5x2n91Eb2xxz2VT8oM
	 c27BKGCJ36TusWoU4i8ALXnCT8ts8cJZyq8FgkFpgVERnbnEKf6dwongfsmqVa+QBs
	 DFTiQ5iLM7R147lBH4ftjDZ9XPG7pwYhd/ZQS6VfWhreiMgrrkp+QjdUtLUul0IkvW
	 FQAe/+ZDHlcuGiwERyZSbduapB7wBEJ9zadoKsNUw/ubI/tOGijBfarHZxWSdwVbJ0
	 VDPKueP/ZwAsUjTei/7aja/mZ5fqrTtgP0pkm4JEcksFIaVneuwvA3NClGfTmPw4Yy
	 AoLcK3YyL844A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8wlRJLo0iRJM; Sat,  6 Aug 2022 04:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FB8D83F2D;
	Sat,  6 Aug 2022 04:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FB8D83F2D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD8EF1BF294
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Aug 2022 04:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD24B60FFC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Aug 2022 04:51:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD24B60FFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dclhXVg5SZS0 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Aug 2022 04:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DB8E60FEF
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9DB8E60FEF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Aug 2022 04:51:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="270113936"
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="270113936"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 21:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="579739699"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 05 Aug 2022 21:51:45 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oKBmq-000K2x-1N;
 Sat, 06 Aug 2022 04:51:44 +0000
Date: Sat, 06 Aug 2022 12:51:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62edf33c.N7ozIADqmuqCRVS3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659761511; x=1691297511;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=gz8EWQeubEpT7YrHq/Z4SEyW01BhfNilFfgrwTKuvJI=;
 b=OYeLhXVjgcxpXeoLZZJnSYaFPxcwnbDhJ8pJ+fgyeDLD7UtK6Yly8bUI
 QKhynV+ljR3hLo1dPEYfrBNBKDZ6imMssISBxVwo5duXCZXLEyalSPPTb
 hVmuVnPJNkPAfwq5D6KsWZs3q93AmiGp6o6+We1jyWrA2C5bFBvv5cUar
 3alnc5kCe7Vg0nwIgGd5RKxSnKahUa9UYVU6wpcWOhEeOnQesGr4fPneH
 1UnlV0tt51A3Qn0xKrcv6OownpCDJ+nEL8LN6pvQcr4JeIbg1CD3lBAXo
 /og4rht5rPYtqB2pbRzMIsv7yI+c2zxWulrO8HQDef1oupFjrFD5sFiNa
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OYeLhXVj
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 85319869b945e14701ee8cb997ac440c736e7dee
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
branch HEAD: 85319869b945e14701ee8cb997ac440c736e7dee  ice: Fix VF not able to send tagged traffic with no VLAN filters

elapsed time: 718m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                                defconfig
i386                          randconfig-a005
arm                                 defconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a004
x86_64                           allyesconfig
x86_64                        randconfig-a002
i386                             allyesconfig
x86_64                        randconfig-a006
i386                          randconfig-a014
powerpc                           allnoconfig
powerpc                          allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
alpha                            allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
mips                             allyesconfig
arc                              allyesconfig
sh                               allmodconfig
s390                 randconfig-r044-20220805
arc                  randconfig-r043-20220805
riscv                randconfig-r042-20220805
m68k                             allyesconfig
m68k                             allmodconfig
ia64                             allmodconfig
csky                              allnoconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
arc                         haps_hs_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          landisk_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a011
x86_64                        randconfig-a003
i386                          randconfig-a015
hexagon              randconfig-r045-20220805
hexagon              randconfig-r041-20220805
powerpc                    ge_imp3a_defconfig
mips                     loongson1c_defconfig
arm                         s3c2410_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
