Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0119584CDF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 09:46:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6C37408F3;
	Fri, 29 Jul 2022 07:46:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6C37408F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659080797;
	bh=2p2lPgBYnHmvwY6SclesIZv1LJVYvAU7EJ0jsy+hCnU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Bm3Kd7KDtpykxad4doE4D3HsJxkmB39baT9zc80b7MqEuKg/UJRSYJYCnpV7iLVjt
	 Vb1XEk8c3pjvgRuO1O12Kr7F5KqMbpjsp0B5raj/+owbfthQIlrgtT97iREwoq86Rk
	 SQ44NHRk7+qNIYOU0tf8Mh63rNFr31YRCue3KHLfPwtwmUO3DZkQ7wH8oJ69NGBKU+
	 vM21ExXOVeeTcdy21FofnJmX7ydBSrTGPr2trMYT5TzEkfSkDHwsL8i4+leyVtEcob
	 F+2C+PlUah7+L2ZCPPZBdsjELJIk6KSWJWlSWjz+ct650JxDWa+8phh/NE6C7bH8tq
	 RbidgD+uqmCzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJY0qQThABeu; Fri, 29 Jul 2022 07:46:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8944A40476;
	Fri, 29 Jul 2022 07:46:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8944A40476
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 543181BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 07:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D3CF40476
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 07:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D3CF40476
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KSZA_loUotqj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 07:46:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0016F40017
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0016F40017
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 07:46:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="352715558"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="352715558"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 00:46:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="928650713"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jul 2022 00:46:16 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHKhL-000BKv-2y;
 Fri, 29 Jul 2022 07:46:15 +0000
Date: Fri, 29 Jul 2022 15:45:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e39015.e0caEc/x3bdjPrMm%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659080790; x=1690616790;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CixU0FhuDwTMKMKLsXPZpLzroAkMUiHCa2cjVhVogWs=;
 b=jd8XYW44A9EzB+eZDvDsJNBRC/diX8r0x9wNkqcEq7nI9xPgZY43CT4t
 ewSmY5eVnG/Zd63MRjfk6Qj8w6feHHX/dqtwKDvW1lKxBMmVANprHkVuL
 qrMqKRIFv5xrfV/nGXDy5YpXpjwmtHz0Kyel+LPjjGYT6JEzatZM3gido
 j96VDls1xkIobsGXYcrej3gRGAFU6dQxMmiZiPT/CywVV4GAlC+Mtw+O0
 O6j3tmFMH6t5GDkQQpj9J4ZD3QROwbgeIknO567yV7LsxTApfrpt7LL6e
 Y93qFPBTtwhAIecpXy2voK13ad2oHpB15SJAZQNz6+MSYoP/f2xedRWcn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jd8XYW44
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 44ece4e1a3ecb07fd757699ffc2483463a202965
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 44ece4e1a3ecb07fd757699ffc2483463a202965  ice: allow toggling loopback mode via ndo_set_features callback

elapsed time: 712m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
arm                                 defconfig
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm64                            allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a002
x86_64                           rhel-8.3-syz
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
arc                  randconfig-r043-20220728
x86_64                        randconfig-a004
sh                               allmodconfig
riscv                randconfig-r042-20220728
x86_64                        randconfig-a006
s390                 randconfig-r044-20220728
ia64                             allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
ia64                          tiger_defconfig
microblaze                          defconfig
arm                         axm55xx_defconfig
nios2                         10m50_defconfig
alpha                               defconfig
m68k                        m5407c3_defconfig
powerpc                     taishan_defconfig
sh                         ap325rxa_defconfig
powerpc                      tqm8xx_defconfig
arm                          lpd270_defconfig
loongarch                           defconfig
loongarch                         allnoconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220728
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20220728
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
powerpc                      katmai_defconfig
arm                  colibri_pxa300_defconfig
arm                        magician_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
