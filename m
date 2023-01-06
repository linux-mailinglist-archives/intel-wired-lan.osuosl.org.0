Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987F065FC66
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 09:02:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2ED5F404B5;
	Fri,  6 Jan 2023 08:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ED5F404B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672992130;
	bh=/3JPMhDSa5XnTovYt+Bub6H+prtMi0Nl8aEWpC/eZJ8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DMLSAfxl4HvCqpfJwzJhr+ECu4kzPR35vMBN0xQet5lvo8MlGQYUMufsCSjblARxr
	 1N1jCyMYAB5/1d9Dw/VN9KEfEP6+u4Wr2pymDq/vHoQiVmn8Zk6bvydmj0WMCAV+xY
	 hsJ+bhYsQ1S0pFlmnoWuxXjNzAGG88BSqneiGmGhb8Xubp+0YnOiLzhUtmdUT5cnPG
	 IX4CKPtrdtxu3yH3uWiwOE27MSlr4CeFQydTMTm8PN+73lckEvMir5Zu3niJ25OOw/
	 HyFgOi1L2iQ5FoKkJI4b+teceOXmxO0MjR2JhPlk0MJZdfpgsasGKXttniqh7HBBcS
	 KPjm0rGTKqr6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UYwtbizblP5w; Fri,  6 Jan 2023 08:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE29A404A3;
	Fri,  6 Jan 2023 08:02:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE29A404A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3510F1BF359
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 08:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FF8B400B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 08:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FF8B400B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3He-CeIKVFky for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 08:01:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30930404A3
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30930404A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 08:01:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="302131220"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="302131220"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 00:01:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="655888804"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="655888804"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 06 Jan 2023 00:01:52 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDhfk-00037y-0V;
 Fri, 06 Jan 2023 08:01:52 +0000
Date: Fri, 06 Jan 2023 16:01:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b7d542.q3uKRLJ3/MzbETT4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672992118; x=1704528118;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JVnCyJXekRDV061eDq989hssW/lL2lmWP9aZIPoMWzY=;
 b=RFdl+UgDnvB5UINfh5u8/AxjmLECS5lYAfdMg1eTGvSNnc5MtWOT5j/9
 Na2AKQjwPMFv/oLkU//E+mkrxu+5RlQz8A2JWmSc7bbDdw8xG/mHPc+K2
 AR1v/sBjVLHiOgcHfV4B8rsKt49ax/dZN6b8frMb/MEqPD0mr9fuinIpG
 GSlYJox3Z1fo8lp5w1LXfaQ2MLo/Dyt3r3k4RgovB6qvz2lcWsSojX/zZ
 zXknkDrrULx7Z/ZyPNSgMq0KMqRwOPNoU8nE934e1Vl96xsap+dVMJoug
 W6YlSilzMcaZSRXyO8LzBeIxPo6versLCjwovhznhTxmjUoBFwQ83fCKl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RFdl+UgD
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9960d5a3e54f06170125406e3e24b17ec29e7d58
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
branch HEAD: 9960d5a3e54f06170125406e3e24b17ec29e7d58  ice: fix out-of-bounds KASAN warning in virtchnl

Unverified Warning (likely false positive, please contact us if interested):

drivers/net/ethernet/intel/ice/ice_debugfs.c:35:7: warning: Uninitialized variable: cur_buf_len [uninitvar]
drivers/net/ethernet/intel/ice/ice_debugfs.c:43:3: warning: Assignment of function parameter has no effect outside the function. Did you forget dereferencing it? [uselessAssignmentPtrArg]
drivers/net/ethernet/intel/ice/ice_debugfs.c:44:3: warning: Assignment of function parameter has no effect outside the function. [uselessAssignmentArg]
drivers/net/ethernet/intel/ice/ice_devlink.c:1017:34: warning: Parameter 'extack' can be declared as pointer to const [constParameter]
drivers/net/ethernet/intel/ice/ice_devlink.c:1164:28: warning: Parameter 'parent' can be declared as pointer to const [constParameter]
drivers/net/ethernet/intel/ice/ice_devlink.c:765:11: warning: Uninitialized variable: vf->devlink_port [uninitvar]
drivers/net/ethernet/intel/ice/ice_fltr.c:32:70: warning: Parameter 'info' can be declared as pointer to const [constParameter]
drivers/net/ethernet/intel/ice/ice_fwlog.c:12:64: warning: Parameter 'cfg' can be declared as pointer to const [constParameter]
drivers/net/ethernet/intel/ice/ice_nvm.c:709:34: warning: Signed integer overflow for expression '0xff<<24'. [integerOverflow]
drivers/net/ethernet/intel/ice/ice_tc_lib.c:1981:29: warning: Uninitialized variable: fltr->src_vsi [uninitvar]
drivers/net/ethernet/intel/igc/igc_ethtool.c:1289:30: warning: Uninitialized variable: &tmp->filter [uninitvar]
drivers/net/ethernet/intel/igc/igc_ptp.c:526:60: warning: Operator '|' with one operand equal to zero is redundant. [badBitmaskCheck]
drivers/net/ethernet/intel/ixgbe/ixgbe_common.c:3591:33: warning: Parameter 'buffer' can be declared as pointer to const [constParameter]
drivers/net/ethernet/intel/ixgbe/ixgbe_common.c:950:28: warning: Parameter 'data' can be declared as pointer to const [constParameter]
drivers/net/ethernet/intel/ixgbe/ixgbe_common.h:139:48: warning: Parameter 'addr' can be declared as pointer to const [constParameter]

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- xtensa-randconfig-p001-20230105
    |-- drivers-net-ethernet-intel-ice-ice_debugfs.c:warning:Assignment-of-function-parameter-has-no-effect-outside-the-function.-Did-you-forget-dereferencing-it-uselessAssignmentPtrArg
    |-- drivers-net-ethernet-intel-ice-ice_debugfs.c:warning:Assignment-of-function-parameter-has-no-effect-outside-the-function.-uselessAssignmentArg
    |-- drivers-net-ethernet-intel-ice-ice_debugfs.c:warning:Uninitialized-variable:cur_buf_len-uninitvar
    |-- drivers-net-ethernet-intel-ice-ice_devlink.c:warning:Parameter-extack-can-be-declared-as-pointer-to-const-constParameter
    |-- drivers-net-ethernet-intel-ice-ice_devlink.c:warning:Parameter-parent-can-be-declared-as-pointer-to-const-constParameter
    |-- drivers-net-ethernet-intel-ice-ice_devlink.c:warning:Uninitialized-variable:vf-devlink_port-uninitvar
    |-- drivers-net-ethernet-intel-ice-ice_fltr.c:warning:Parameter-info-can-be-declared-as-pointer-to-const-constParameter
    |-- drivers-net-ethernet-intel-ice-ice_fwlog.c:warning:Parameter-cfg-can-be-declared-as-pointer-to-const-constParameter
    |-- drivers-net-ethernet-intel-ice-ice_nvm.c:warning:Signed-integer-overflow-for-expression-.-integerOverflow
    |-- drivers-net-ethernet-intel-ice-ice_tc_lib.c:warning:Uninitialized-variable:fltr-src_vsi-uninitvar
    |-- drivers-net-ethernet-intel-igc-igc_ethtool.c:warning:Uninitialized-variable:tmp-filter-uninitvar
    |-- drivers-net-ethernet-intel-igc-igc_ptp.c:warning:Operator-with-one-operand-equal-to-zero-is-redundant.-badBitmaskCheck
    |-- drivers-net-ethernet-intel-ixgbe-ixgbe_common.c:warning:Parameter-buffer-can-be-declared-as-pointer-to-const-constParameter
    |-- drivers-net-ethernet-intel-ixgbe-ixgbe_common.c:warning:Parameter-data-can-be-declared-as-pointer-to-const-constParameter
    `-- drivers-net-ethernet-intel-ixgbe-ixgbe_common.h:warning:Parameter-addr-can-be-declared-as-pointer-to-const-constParameter

elapsed time: 727m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
x86_64                            allnoconfig
um                             i386_defconfig
arc                                 defconfig
arc                  randconfig-r043-20230105
um                           x86_64_defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                           rhel-8.3-bpf
s390                                defconfig
sh                               allmodconfig
x86_64                           rhel-8.3-syz
s390                 randconfig-r044-20230105
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
mips                             allyesconfig
riscv                randconfig-r042-20230105
powerpc                          allmodconfig
x86_64                              defconfig
s390                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
ia64                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arc                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm                                 defconfig
i386                                defconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
arm                  randconfig-r046-20230105
hexagon              randconfig-r041-20230105
hexagon              randconfig-r045-20230105
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
