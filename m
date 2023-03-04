Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA266AA9B8
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 14:01:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 697F260644;
	Sat,  4 Mar 2023 13:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 697F260644
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677934863;
	bh=iH4pom1P1bXUe7b7FnpKijJJezh/HiJ5Ef+rMXd6EVA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=N1FgyUZh6vPKout0yHteHRJstCd8aE2rPrtdIaQy/qxLVCTB1hJ+Y0VH4CWa+ZoiZ
	 4iMia/iQ0bcFKtLDKOGpqWbAmcJ6I0B/67sdptRLjwDAZY2YDAgG2e3XhgPAfaic/o
	 198UnaF7YzRbva+nhDHHh9/yv9dG5FFP9ffNv8QMZh6BVl3ULvptDBnOHK8TYSh4G5
	 MnfaKCa0C2YOrYDAKOBIulTOJCPG/RjrajCecpIVuuvdwORzVakawvD7jO8XwydKiQ
	 bR97pS7ufH6jTCPCJIhT6RLGTQi5+Fz/NPP/Yw+twzPGepcarn5On/HuZzg6KzHHvC
	 fxCRX1H4HBCQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mxqIw2udjVZV; Sat,  4 Mar 2023 13:01:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39D18605EA;
	Sat,  4 Mar 2023 13:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39D18605EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7A2F1BF239
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 13:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACEEB81E6F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 13:00:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACEEB81E6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Efm_ZwY500U for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 13:00:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9432C81E30
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9432C81E30
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 13:00:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="332735559"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="332735559"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 05:00:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="1004882016"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="1004882016"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 04 Mar 2023 05:00:54 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYRVN-0002Av-1L;
 Sat, 04 Mar 2023 13:00:53 +0000
Date: Sat, 04 Mar 2023 21:00:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640340f8./Z5lhFefR1L2WmC1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677934855; x=1709470855;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nG6NwOoUiK6DpSLaDFUYUDuD+GO05FQMUoHt8xmJQJU=;
 b=he/vuBriAmRriZt4lbHu2BNPjHOFIdKESOLZkGWFaK+inGMvWJtoD1ZN
 Rr4R8AsD3523HVQu+/Hp5CM8OJxtPcqX/l/aDX3pZCc/Ro6+YJ/XydPOG
 inSsAGbeFajhxUgkiczUSroH2/V5j34dZqmjokgqbyZI3oIIyDYL+dF3k
 UTqiTtUKonK8x6ggem1QuwzHKEH646PKNPLd78+piqsEJqSGQPBLR209W
 2EUzY4U4HVJqfzsTkzF4I/o5YpijdgHpcAfU7CoLDjmftjYwBEa83PUri
 M4iBBpFs1nQpC0PtFyhTTLVzlbyBCredWBJhWJW8iR7vbAei3NgT6BEHa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=he/vuBri
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fff23c30138753d88d5684bedb92d9cc008d52b0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: fff23c30138753d88d5684bedb92d9cc008d52b0  ice: copy last block omitted in ice_get_module_eeprom()

elapsed time: 726m

configs tested: 105
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230303   gcc  
alpha                randconfig-r036-20230302   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230302   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r031-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230302   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230302   clang
arm64                randconfig-r034-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230302   gcc  
hexagon              randconfig-r002-20230303   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230302   gcc  
ia64                 randconfig-r023-20230302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230302   gcc  
microblaze           randconfig-r006-20230302   gcc  
microblaze           randconfig-r006-20230303   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r006-20230302   gcc  
openrisc             randconfig-r012-20230302   gcc  
openrisc             randconfig-r032-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230302   gcc  
riscv                randconfig-r004-20230303   clang
riscv                randconfig-r022-20230302   clang
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230302   clang
s390                 randconfig-r024-20230302   clang
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230302   gcc  
sh                   randconfig-r014-20230302   gcc  
sparc        buildonly-randconfig-r002-20230302   gcc  
sparc        buildonly-randconfig-r003-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230303   gcc  
sparc                randconfig-r025-20230302   gcc  
sparc64              randconfig-r001-20230303   gcc  
sparc64              randconfig-r013-20230302   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
