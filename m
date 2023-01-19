Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A00F767317B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 07:00:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9380C4195B;
	Thu, 19 Jan 2023 06:00:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9380C4195B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674108045;
	bh=3t1skd52CC1+rjYW81tPJyZh6eC409fSc8129waTMBg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=m89kKMJHIZ9t79SRLkBWmPl0o4wM8+zMa0nYAOSCzINyUwEyIGHApL+Bwa9v8PlPt
	 /EXUrk2Yk6V6FnjDyIOwopXt7rcXkFZQM1ZG88iH57D5Vovkn9G4aMvVa2W4Bx2YuP
	 kgngYtAgKo1Z/xDHObL4oz+VKMSR5uOyCxK7s//MLXfqhTaqf+O+7oxQW+KmTA+tGm
	 bNhDHvcwn7fOWeBKAkVQKoaE2oJ/InCixGLLjd3X6lJtGYTh5qgP4wkPzDQpdZd9FP
	 fJ666WZgXwdb7AxH40D8qgUBHJY4ZWCggcRYoCjoabUOSsfKyqdieTvq1qEb2G+K47
	 mrIHu7xuzr4sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0t7ktAYE6XbX; Thu, 19 Jan 2023 06:00:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22CBF4190A;
	Thu, 19 Jan 2023 06:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22CBF4190A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25B671BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 06:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA6F5821AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 06:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA6F5821AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXqcVwfJN_fa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 06:00:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC75E821AC
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC75E821AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 06:00:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="327278237"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="327278237"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 22:00:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="768067640"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="768067640"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2023 22:00:36 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pINyV-0001AD-1c;
 Thu, 19 Jan 2023 06:00:35 +0000
Date: Thu, 19 Jan 2023 14:00:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c8dc6f.NABCWUf8DqInkzUn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674108037; x=1705644037;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=s3/dFM43HytKJN1AegK8lVdidJjjgkDheP4ZUNmE7dw=;
 b=c3w6LwhgrTq/JSFtsVIj9QnMV6iMe0FjgvBhiClUgsqoqNfv3eWoJ6uF
 Jq5PlgSOH6vIYZgfmL7Fj2nWRlMWJmgaNleDdGhUMeiPalpDYnjdncAR2
 j/6dgRjJWofK3+IA5ZozCwZ13A5RvYtwRO/99ZbUqQb27SaQS5AscpgAX
 wdwXpucOdDjSWLN+R0Um9BA0Vt8EVPzs6s4Ky+AvbhEljBKg81kC0yM1W
 I7+toroA0qhMjcjndOBnBthZSiDijfV1wbpqOX58kz/CSkpXzQZxWBnPx
 QPAS0fiMP3j3F4ITMSN1zEcr/NPqc1cV0ibUjNzsSiWgSgKzMnK7NwzL0
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c3w6Lwhg
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 dd2bcc3ced4c47bead56ad9b728d7d5c3941cae2
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
branch HEAD: dd2bcc3ced4c47bead56ad9b728d7d5c3941cae2  ice: Mention CEE DCBX in code comment

elapsed time: 721m

configs tested: 78
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
arc                  randconfig-r043-20230118
s390                 randconfig-r044-20230118
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20230118
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                            allnoconfig
m68k                             allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
sh                               allmodconfig
powerpc                          allmodconfig
powerpc                      mgcoge_defconfig
sh                        dreamcast_defconfig
sh                           se7722_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-c001
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
sh                                  defconfig
powerpc                mpc7448_hpc2_defconfig
xtensa                              defconfig
parisc                           allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
arm                       omap2plus_defconfig
microblaze                          defconfig
nios2                         10m50_defconfig
arm                               allnoconfig
sh                           se7705_defconfig
arc                      axs103_smp_defconfig

clang tested configs:
hexagon              randconfig-r045-20230118
hexagon              randconfig-r041-20230118
arm                  randconfig-r046-20230118
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
arm                        spear3xx_defconfig
arm                        neponset_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
