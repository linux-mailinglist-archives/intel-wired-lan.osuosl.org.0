Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3ACA3F3D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 13:09:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E86D82200;
	Fri, 21 Feb 2025 12:09:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8FMVOXBlbDpO; Fri, 21 Feb 2025 12:09:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 381F981D47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740139764;
	bh=ubyvWdhfHL6jvjRG5G3OFfe9l3QwL4KnCkb3WEZ1Fk8=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lQ9bCsQmRgNv1T/KSaVWaYzGylrSpimGr2yjHdt0/eScFuBGpLVx41ZtlvB4zx1Nl
	 5qTsOPR+XsC0erVQeFExulcYWJcUCfIG4YH1bK/MqndsQ3pCchXQKccQi/JaI0GLXi
	 Uq7N59Fw342aMdKo9msOiRZZNeKXOjTfkgPh3SSxGKg/kVXd9MjC6UAVG+sNim2eQO
	 uAto48nxSuQrX4/Jkb8tuVwYthGvKSVv5pwXVlixk1+WSVzus1s3AKv0KfQC0qGpHn
	 fqjThxesMFqGj6FABNJvdtBjTFJLyIi5eB/bZ8KLecGejXzp9IMMINA4vKrE/jxDe4
	 V5iapETTuidlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 381F981D47;
	Fri, 21 Feb 2025 12:09:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 62B8C194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:09:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E97140A01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:09:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LiOGOhH3aiDj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 12:09:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EDD34409AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDD34409AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDD34409AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:09:19 +0000 (UTC)
X-CSE-ConnectionGUID: NYEhkXIYRYqlyCRZIrb+tg==
X-CSE-MsgGUID: YbbeDqehTf6klw73LBdNvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51173505"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51173505"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 04:09:19 -0800
X-CSE-ConnectionGUID: 3EBEiyPYSrSIgqmHsZ+fTw==
X-CSE-MsgGUID: 1Hz8CEQdT8KqwVaCSV8LyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="115182338"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 21 Feb 2025 04:09:16 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tlRqD-0005UH-39;
 Fri, 21 Feb 2025 12:09:13 +0000
Date: Fri, 21 Feb 2025 20:09:03 +0800
From: kernel test robot <lkp@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <202502212058.5XVt80Wb-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740139761; x=1771675761;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=C5U3RxfuTtuHOcmi/E44+nqNV54k8lJLpkj27EZLcAM=;
 b=MaRLtHdCyHEgEJ8106nZN1VdjxAqB/FyUESsAI+5s16yKLupZXgwyRD4
 iKzStzIhu01RVf3SjVQvlvFtAHdeL0anxB0EmPAG/0vCsnWWeE4o4ifgM
 9CahH9lbOzfRcBDBzaqamlMB/qOfrHZsnTFRPDQAbdsrx/w1p3DY0G8qb
 UFDMTwccbdgXj3SKrd+PikGG7THRM9fwg5W5zu3gzpwk8et1cZ4ayZOHP
 O84liAGYDW1A8eAF4u8/+GbCTQzILOQw4X5+oi8wz5wtRYOelmG4JIDO3
 tArhYdy1toZC8sX9a7+yUzQglANzPiGtijpfhvSvaBbXX/yn9aqlaFi7B
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MaRLtHdC
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 41/50]
 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:45:12: warning: variable
 'orom' is used uninitialized whenever 'if' condition is false
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   692375ca2a4e6916ddc2ef0d73faa37c7a93cd1a
commit: 6b998cf3e55cb55c817e12fdd5b05b3ab162cca7 [41/50] ixgbe: extend .info_get with stored versions
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20250221/202502212058.5XVt80Wb-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250221/202502212058.5XVt80Wb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502212058.5XVt80Wb-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:4:
   In file included from drivers/net/ethernet/intel/ixgbe/ixgbe.h:9:
   In file included from include/linux/pci.h:37:
   In file included from include/linux/device.h:32:
   In file included from include/linux/device/driver.h:21:
   In file included from include/linux/module.h:19:
   In file included from include/linux/elf.h:6:
   In file included from arch/s390/include/asm/elf.h:181:
   In file included from arch/s390/include/asm/mmu_context.h:11:
   In file included from arch/s390/include/asm/pgalloc.h:18:
   In file included from include/linux/mm.h:2224:
   include/linux/vmstat.h:504:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     504 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     505 |                            item];
         |                            ~~~~
   include/linux/vmstat.h:511:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     511 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     512 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
   include/linux/vmstat.h:524:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     524 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     525 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:45:12: warning: variable 'orom' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
      45 |                 else if (type == IXGBE_DL_VERSION_STORED)
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:49:5: note: uninitialized use occurs here
      49 |                          orom->major, orom->build, orom->patch);
         |                          ^~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:45:8: note: remove the 'if' if its condition is always true
      45 |                 else if (type == IXGBE_DL_VERSION_STORED)
         |                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      46 |                         orom = &ctx->pending_orom;
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:41:31: note: initialize the variable 'orom' to silence this warning
      41 |                 struct ixgbe_orom_info *orom;
         |                                             ^
         |                                              = NULL
>> drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:80:12: warning: variable 'eetrack' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
      80 |                 else if (type == IXGBE_DL_VERSION_STORED)
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:83:50: note: uninitialized use occurs here
      83 |                 snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", eetrack);
         |                                                                ^~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:80:8: note: remove the 'if' if its condition is always true
      80 |                 else if (type == IXGBE_DL_VERSION_STORED)
         |                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      81 |                         eetrack = ctx->pending_nvm.eetrack;
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:76:14: note: initialize the variable 'eetrack' to silence this warning
      76 |                 u32 eetrack;
         |                            ^
         |                             = 0
>> drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:124:11: warning: variable 'nvm' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
     124 |         else if (type == IXGBE_DL_VERSION_STORED)
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:127:45: note: uninitialized use occurs here
     127 |         snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
         |                                                    ^~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:124:7: note: remove the 'if' if its condition is always true
     124 |         else if (type == IXGBE_DL_VERSION_STORED)
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     125 |                 nvm = &ctx->pending_nvm;
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:120:28: note: initialize the variable 'nvm' to silence this warning
     120 |         struct ixgbe_nvm_info *nvm;
         |                                   ^
         |                                    = NULL
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:138:11: warning: variable 'orom' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
     138 |         else if (type == IXGBE_DL_VERSION_STORED)
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:141:45: note: uninitialized use occurs here
     141 |         snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
         |                                                    ^~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:138:7: note: remove the 'if' if its condition is always true
     138 |         else if (type == IXGBE_DL_VERSION_STORED)
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     139 |                 orom = &ctx->pending_orom;
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:134:30: note: initialize the variable 'orom' to silence this warning
     134 |         struct ixgbe_orom_info *orom;
         |                                     ^
         |                                      = NULL
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:152:11: warning: variable 'nvm' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
     152 |         else if (type == IXGBE_DL_VERSION_STORED)
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:155:50: note: uninitialized use occurs here
     155 |         snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
         |                                                         ^~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:152:7: note: remove the 'if' if its condition is always true
     152 |         else if (type == IXGBE_DL_VERSION_STORED)
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     153 |                 nvm = &ctx->pending_nvm;
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:148:28: note: initialize the variable 'nvm' to silence this warning
     148 |         struct ixgbe_nvm_info *nvm;
         |                                   ^
         |                                    = NULL
>> drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:166:11: warning: variable 'netlist' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
     166 |         else if (type == IXGBE_DL_VERSION_STORED)
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:171:4: note: uninitialized use occurs here
     171 |                  netlist->major, netlist->minor,
         |                  ^~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:166:7: note: remove the 'if' if its condition is always true
     166 |         else if (type == IXGBE_DL_VERSION_STORED)
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     167 |                 netlist = &ctx->pending_netlist;
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:162:36: note: initialize the variable 'netlist' to silence this warning
     162 |         struct ixgbe_netlist_info *netlist;
         |                                           ^
         |                                            = NULL
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:184:11: warning: variable 'netlist' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
     184 |         else if (type == IXGBE_DL_VERSION_STORED)
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:187:49: note: uninitialized use occurs here
     187 |         snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
         |                                                        ^~~~~~~
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:184:7: note: remove the 'if' if its condition is always true
     184 |         else if (type == IXGBE_DL_VERSION_STORED)
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     185 |                 netlist = &ctx->pending_netlist;
   drivers/net/ethernet/intel/ixgbe/devlink/devlink.c:180:36: note: initialize the variable 'netlist' to silence this warning
     180 |         struct ixgbe_netlist_info *netlist;
         |                                           ^
         |                                            = NULL
   10 warnings generated.


vim +45 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c

    30	
    31	static void ixgbe_info_orom_ver(struct ixgbe_adapter *adapter,
    32					struct ixgbe_info_ctx *ctx,
    33					enum ixgbe_devlink_version_type type)
    34	{
    35		struct ixgbe_hw *hw = &adapter->hw;
    36		struct ixgbe_nvm_version nvm_ver;
    37	
    38		ctx->buf[0] = '\0';
    39	
    40		if (hw->mac.type == ixgbe_mac_e610) {
    41			struct ixgbe_orom_info *orom;
    42	
    43			if (type == IXGBE_DL_VERSION_RUNNING)
    44				orom = &adapter->hw.flash.orom;
  > 45			else if (type == IXGBE_DL_VERSION_STORED)
    46				orom = &ctx->pending_orom;
    47	
    48			snprintf(ctx->buf, sizeof(ctx->buf), "%d.%d.%d",
    49				 orom->major, orom->build, orom->patch);
    50			return;
    51		}
    52	
    53		ixgbe_get_oem_prod_version(hw, &nvm_ver);
    54		if (nvm_ver.oem_valid) {
    55			snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x",
    56				 nvm_ver.oem_major, nvm_ver.oem_minor,
    57				 nvm_ver.oem_release);
    58	
    59			return;
    60		}
    61	
    62		ixgbe_get_orom_version(hw, &nvm_ver);
    63		if (nvm_ver.or_valid)
    64			snprintf(ctx->buf, sizeof(ctx->buf), "%d.%d.%d",
    65				 nvm_ver.or_major, nvm_ver.or_build, nvm_ver.or_patch);
    66	}
    67	
    68	static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
    69				       struct ixgbe_info_ctx *ctx,
    70				       enum ixgbe_devlink_version_type type)
    71	{
    72		struct ixgbe_hw *hw = &adapter->hw;
    73		struct ixgbe_nvm_version nvm_ver;
    74	
    75		if (hw->mac.type == ixgbe_mac_e610) {
    76			u32 eetrack;
    77	
    78			if (type == IXGBE_DL_VERSION_RUNNING)
    79				eetrack = hw->flash.nvm.eetrack;
  > 80			else if (type == IXGBE_DL_VERSION_STORED)
    81				eetrack = ctx->pending_nvm.eetrack;
    82	
    83			snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", eetrack);
    84			return;
    85		}
    86	
    87		ixgbe_get_oem_prod_version(hw, &nvm_ver);
    88	
    89		/* No ETRACK version for OEM */
    90		if (nvm_ver.oem_valid) {
    91			ctx->buf[0] = '\0';
    92			return;
    93		}
    94	
    95		ixgbe_get_etk_id(hw, &nvm_ver);
    96		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm_ver.etk_id);
    97	}
    98	
    99	static void ixgbe_info_fw_api(struct ixgbe_adapter *adapter,
   100				      struct ixgbe_info_ctx *ctx)
   101	{
   102		struct ixgbe_hw *hw = &adapter->hw;
   103	
   104		snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u",
   105			 hw->api_maj_ver, hw->api_min_ver, hw->api_patch);
   106	}
   107	
   108	static void ixgbe_info_fw_build(struct ixgbe_adapter *adapter,
   109					struct ixgbe_info_ctx *ctx)
   110	{
   111		struct ixgbe_hw *hw = &adapter->hw;
   112	
   113		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", hw->fw_build);
   114	}
   115	
   116	static void ixgbe_info_fw_srev(struct ixgbe_adapter *adapter,
   117				       struct ixgbe_info_ctx *ctx,
   118				       enum ixgbe_devlink_version_type type)
   119	{
   120		struct ixgbe_nvm_info *nvm;
   121	
   122		if (type == IXGBE_DL_VERSION_RUNNING)
   123			nvm = &adapter->hw.flash.nvm;
 > 124		else if (type == IXGBE_DL_VERSION_STORED)
   125			nvm = &ctx->pending_nvm;
   126	
   127		snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
   128	}
   129	
   130	static void ixgbe_info_orom_srev(struct ixgbe_adapter *adapter,
   131					 struct ixgbe_info_ctx *ctx,
   132					 enum ixgbe_devlink_version_type type)
   133	{
   134		struct ixgbe_orom_info *orom;
   135	
   136		if (type == IXGBE_DL_VERSION_RUNNING)
   137			orom = &adapter->hw.flash.orom;
   138		else if (type == IXGBE_DL_VERSION_STORED)
   139			orom = &ctx->pending_orom;
   140	
   141		snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
   142	}
   143	
   144	static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
   145				       struct ixgbe_info_ctx *ctx,
   146				       enum ixgbe_devlink_version_type type)
   147	{
   148		struct ixgbe_nvm_info *nvm;
   149	
   150		if (type == IXGBE_DL_VERSION_RUNNING)
   151			nvm = &adapter->hw.flash.nvm;
   152		else if (type == IXGBE_DL_VERSION_STORED)
   153			nvm = &ctx->pending_nvm;
   154	
   155		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
   156	}
   157	
   158	static void ixgbe_info_netlist_ver(struct ixgbe_adapter *adapter,
   159					   struct ixgbe_info_ctx *ctx,
   160					   enum ixgbe_devlink_version_type type)
   161	{
   162		struct ixgbe_netlist_info *netlist;
   163	
   164		if (type == IXGBE_DL_VERSION_RUNNING)
   165			netlist = &adapter->hw.flash.netlist;
 > 166		else if (type == IXGBE_DL_VERSION_STORED)
   167			netlist = &ctx->pending_netlist;
   168	
   169		/* The netlist version fields are BCD formatted */
   170		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x",
   171			 netlist->major, netlist->minor,
   172			 netlist->type >> 16, netlist->type & 0xFFFF,
   173			 netlist->rev, netlist->cust_ver);
   174	}
   175	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
