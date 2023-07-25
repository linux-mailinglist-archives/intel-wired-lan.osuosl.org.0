Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B590F760907
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 07:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D96E81DE1;
	Tue, 25 Jul 2023 05:07:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D96E81DE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690261679;
	bh=cqUMwGZf8+tpeYrdC8ZyIi0YjtwEw1dwq4ze83Skm8o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RZ1lbX/RYQC13o08uI8fnEOl+MGD3+8/QKA6TLD0tZF6qhylQSvuEqTUNGZiSGF2Y
	 UrCIRHk9fXrw/ITmwNT5nDg5QdaHqcI+n4OnbEcc3Dbas3PhKrBBuuf1/uzD9PuPT4
	 E24CMuVE/6pvw5pTDYFpRrAeTx8EspJEOuLSe9fO4oG96nhxLGDgKK49dCoZaMU/KG
	 ePnpidRKKLDV8T0so3nMNUXlxKMXH8eKgGnvtJG/hXRHrKajP7BVuX/WKYI/JD4FkR
	 1k/+YNf4gtwibRVydmtiQDmOD91Gk0o/rfPDkWYRrmoA2lRGUIGkZ+uca95D/Wewoy
	 K5cjKcxFGvrbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GRJk7l1kJgGJ; Tue, 25 Jul 2023 05:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A229481AC4;
	Tue, 25 Jul 2023 05:07:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A229481AC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A842A1BF319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F12560AAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:07:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F12560AAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKG2Xr1N442v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 05:07:51 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5164160A8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:07:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5164160A8D
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="370288366"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="370288366"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 22:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="676083996"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="676083996"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 24 Jul 2023 22:07:49 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qOAGt-000ALy-2w
 for intel-wired-lan@lists.osuosl.org; Tue, 25 Jul 2023 05:07:45 +0000
Date: Tue, 25 Jul 2023 13:07:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307251309.n257p2OK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690261671; x=1721797671;
 h=date:from:to:subject:message-id;
 bh=dn0cJ+mtZPpG9WJd1lbg8We87J9R8XUEaUW83AMRAO4=;
 b=MCiFqlZgUvVUqa6Ag7Py4SmPv58DznGvbvJNxaNFQQNt6D9lL+1hZjhH
 zuyUSCs99JSp1GawExG3eB0sc1EN1clCFvCvsU1VH8Ci2/sTuzfWe5B8x
 U+ANfkiAnAvG0aPnX8ONhmV3bC+wsiem8JBQ2zUCJCkToCIKb+ivfGTV1
 Ds49O6qfln/Nv+QxngXlmOdUf3V3KtZ3ZGAgDaBCwfcvwUEtkWqaGZiTt
 aGdWqNwQ3s0bNvZVYj5mTueVNUsUHSid3o2FndFjsEn8tfuwx9d10r9s9
 sD46QhwRJ3JNHjC+C/3Ej5Md+XoYSqQ00EHZLMX9YJvvstQaHCa7cw/CL
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MCiFqlZg
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 28fd42ea9300c1df2f6183b60ff8115a931603ea
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 28fd42ea9300c1df2f6183b60ff8115a931603ea  igc: Decrease PTM short interval from 10 us to 1 us

elapsed time: 720m

configs tested: 150
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230724   gcc  
alpha                randconfig-r016-20230724   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230724   gcc  
arc                  randconfig-r043-20230725   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230724   clang
arm                  randconfig-r012-20230724   gcc  
arm                  randconfig-r046-20230724   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230725   gcc  
arm64                randconfig-r023-20230724   clang
arm64                randconfig-r031-20230724   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230724   gcc  
hexagon              randconfig-r002-20230724   clang
hexagon              randconfig-r041-20230724   clang
hexagon              randconfig-r045-20230724   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230723   clang
i386         buildonly-randconfig-r004-20230724   gcc  
i386         buildonly-randconfig-r005-20230723   clang
i386         buildonly-randconfig-r005-20230724   gcc  
i386         buildonly-randconfig-r006-20230723   clang
i386         buildonly-randconfig-r006-20230724   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230724   gcc  
i386                 randconfig-i002-20230724   gcc  
i386                 randconfig-i003-20230724   gcc  
i386                 randconfig-i004-20230724   gcc  
i386                 randconfig-i005-20230724   gcc  
i386                 randconfig-i006-20230724   gcc  
i386                 randconfig-i011-20230724   clang
i386                 randconfig-i011-20230725   gcc  
i386                 randconfig-i012-20230724   clang
i386                 randconfig-i012-20230725   gcc  
i386                 randconfig-i013-20230724   clang
i386                 randconfig-i013-20230725   gcc  
i386                 randconfig-i014-20230724   clang
i386                 randconfig-i014-20230725   gcc  
i386                 randconfig-i015-20230724   clang
i386                 randconfig-i015-20230725   gcc  
i386                 randconfig-i016-20230724   clang
i386                 randconfig-i016-20230725   gcc  
i386                 randconfig-r012-20230725   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230725   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r014-20230724   gcc  
m68k                 randconfig-r035-20230724   gcc  
microblaze           randconfig-r015-20230724   gcc  
microblaze           randconfig-r016-20230724   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r034-20230725   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230725   gcc  
nios2                randconfig-r025-20230724   gcc  
openrisc             randconfig-r012-20230724   gcc  
openrisc             randconfig-r033-20230725   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230724   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230725   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230724   gcc  
riscv                randconfig-r042-20230724   clang
riscv                randconfig-r042-20230725   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230725   clang
s390                 randconfig-r011-20230725   gcc  
s390                 randconfig-r013-20230724   clang
s390                 randconfig-r021-20230724   clang
s390                 randconfig-r022-20230724   clang
s390                 randconfig-r026-20230724   clang
s390                 randconfig-r044-20230724   clang
s390                 randconfig-r044-20230725   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230724   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230724   gcc  
sparc                randconfig-r003-20230724   gcc  
sparc                randconfig-r013-20230724   gcc  
sparc                randconfig-r021-20230725   gcc  
sparc64              randconfig-r016-20230724   gcc  
sparc64              randconfig-r016-20230725   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230724   clang
um                   randconfig-r006-20230724   clang
um                   randconfig-r024-20230724   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230723   clang
x86_64       buildonly-randconfig-r001-20230724   gcc  
x86_64       buildonly-randconfig-r002-20230723   clang
x86_64       buildonly-randconfig-r002-20230724   gcc  
x86_64       buildonly-randconfig-r003-20230723   clang
x86_64       buildonly-randconfig-r003-20230724   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r003-20230724   gcc  
x86_64               randconfig-r006-20230724   gcc  
x86_64               randconfig-r022-20230725   gcc  
x86_64               randconfig-r025-20230725   gcc  
x86_64               randconfig-x001-20230724   clang
x86_64               randconfig-x001-20230725   gcc  
x86_64               randconfig-x002-20230724   clang
x86_64               randconfig-x002-20230725   gcc  
x86_64               randconfig-x003-20230724   clang
x86_64               randconfig-x003-20230725   gcc  
x86_64               randconfig-x004-20230724   clang
x86_64               randconfig-x004-20230725   gcc  
x86_64               randconfig-x005-20230724   clang
x86_64               randconfig-x005-20230725   gcc  
x86_64               randconfig-x006-20230724   clang
x86_64               randconfig-x006-20230725   gcc  
x86_64               randconfig-x011-20230724   gcc  
x86_64               randconfig-x012-20230724   gcc  
x86_64               randconfig-x013-20230724   gcc  
x86_64               randconfig-x014-20230724   gcc  
x86_64               randconfig-x015-20230724   gcc  
x86_64               randconfig-x016-20230724   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r006-20230724   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
