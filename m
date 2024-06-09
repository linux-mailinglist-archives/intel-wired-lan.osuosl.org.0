Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5189890188A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 00:34:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5F06605CF;
	Sun,  9 Jun 2024 22:34:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJSQH8jjPryx; Sun,  9 Jun 2024 22:34:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C56E60655
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717972484;
	bh=5Q75Dprmy6/CfTPln0urkYUft/KhQ8tXUxsZOoT+khA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kD480Pbijh+5AxaOfhwfJJaRq5MNe3qc/Rv/BS/Tlk9K/t+MYoaVNIDwaSH8YSpyT
	 2n3YWK1FUiFNjUTLAeOYUUdzGQNSE3s/SlCU9M2nPvUvbnjzdkcOudHiJwOTzTaB8w
	 A5qtqx4rEvqOP7aZRCNKC9wM9gWfNKvJcdrZzifWeOMqlEw0rp+FqWpmQ0ue1L86MC
	 sQ2X31izq/3b2lyPSzxCWtORGxTD5rlJGODIySbH1qKBnhADpQtu/ftrGT4ieTTbV+
	 rmHwd8/5o/2WweIvJ3ZrI2yWb8dolMvrYt0Gi/OyWVbEgP8+Y0G0RlpWVrL4YxVLAC
	 YMiTWyXSt0E/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C56E60655;
	Sun,  9 Jun 2024 22:34:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 342201BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 22:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 209D080F34
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 22:34:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E1CaKBfZzc1L for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 22:34:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA85180F19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA85180F19
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA85180F19
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 22:34:41 +0000 (UTC)
X-CSE-ConnectionGUID: sqEWMAjNRHq6fnss+K12nA==
X-CSE-MsgGUID: QghF5TJYRHaTzJcd5GpsmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14803233"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="14803233"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 15:34:40 -0700
X-CSE-ConnectionGUID: RfCIc2f5TkCYoaPUy7JXMw==
X-CSE-MsgGUID: 4VQrmob1R6GwaE0Sbl6IBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="43314180"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 09 Jun 2024 15:34:37 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sGR7T-0001eE-0g;
 Sun, 09 Jun 2024 22:34:35 +0000
Date: Mon, 10 Jun 2024 06:33:44 +0800
From: kernel test robot <lkp@intel.com>
To: Richard chien <m8809301@gmail.com>, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Message-ID: <202406100635.nORK1Xs0-lkp@intel.com>
References: <20240609085735.6253-1-richard.chien@hpe.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240609085735.6253-1-richard.chien@hpe.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717972482; x=1749508482;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7POtHIFBnIfQvUggHgsCUgRA8D1KL4yajWsmoQaTe9k=;
 b=cbbgELttNzTdZBflt9qWYlvH8zcyOJmVQJzIP0CXdN94KpuuKk5zQX2J
 8Ulok6ZL+W2hCbujy/Qc7SRsrwO7cLvIprMY6QLCid2zdIJAXfk3XF7Wi
 f0gPJ0oSBP2rz9uSq0jHx0XN5Q/c1kSmF4HVRbfX4FfEfcPsQjijyXLV3
 uqlaivmfwJ/2p3LEJOWdUsDO0g5A66FDzsBKueoqhr/Ve1xG6d2rIeboJ
 rcAgz/kIsEUFVtsJwZvJELTSgj031F7dpB33HiEdlDy2odC6ELmWHy4ow
 S0fHvOWWRQ+59QxWQXmIA2FT7K9jIP2V+9e0PEyFM/08matOSzA6MjRhs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cbbgELtt
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add support for firmware update
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, oe-kbuild-all@lists.linux.dev,
 anthony.l.nguyen@intel.com, Richard chien <richard.chien@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Richard,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]
[also build test WARNING on linus/master v6.10-rc3 next-20240607]
[cannot apply to tnguy-next-queue/dev-queue]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Richard-chien/ixgbe-Add-support-for-firmware-update/20240609-170239
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240609085735.6253-1-richard.chien%40hpe.com
patch subject: [PATCH] ixgbe: Add support for firmware update
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20240610/202406100635.nORK1Xs0-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240610/202406100635.nORK1Xs0-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406100635.nORK1Xs0-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1104:9: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
    1104 |         default:
         |         ^
   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1104:9: note: insert 'break;' to avoid fall-through
    1104 |         default:
         |         ^
         |         break; 
   1 warning generated.


vim +1104 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c

  1005	
  1006	static int ixgbe_nvmupd_validate_offset(struct ixgbe_adapter *adapter,
  1007	                                        u32 offset)
  1008	{
  1009	        struct net_device *netdev = adapter->netdev;
  1010	
  1011	        switch (offset) {
  1012	        case IXGBE_STATUS:
  1013	        case IXGBE_ESDP:
  1014	        case IXGBE_MSCA:
  1015	        case IXGBE_MSRWD:
  1016	        case IXGBE_EEC_8259X:
  1017	        case IXGBE_FLA_8259X:
  1018	        case IXGBE_FLOP:
  1019	        case IXGBE_SWSM_8259X:
  1020	        case IXGBE_FWSM_8259X:
  1021	        case IXGBE_FACTPS_8259X:
  1022	        case IXGBE_GSSR:
  1023	        case IXGBE_HICR:
  1024	        case IXGBE_FWSTS:
  1025	                return 0;
  1026	        default:
  1027	                if ((offset >= IXGBE_MAVTV(0) && offset <= IXGBE_MAVTV(7)) ||
  1028	                    (offset >= IXGBE_RAL(0) && offset <= IXGBE_RAH(15)))
  1029	                        return 0;
  1030	        }
  1031	
  1032	        switch (adapter->hw.mac.type) {
  1033	        case ixgbe_mac_82599EB:
  1034	                switch (offset) {
  1035	                case IXGBE_AUTOC:
  1036	                case IXGBE_EERD:
  1037	                case IXGBE_BARCTRL:
  1038	                        return 0;
  1039	                default:
  1040	                        if (offset >= 0x00020000 &&
  1041	                            offset <= ixgbe_get_eeprom_len(netdev))
  1042	                                return 0;
  1043	                }
  1044	                break;
  1045	        case ixgbe_mac_X540:
  1046	                switch (offset) {
  1047	                case IXGBE_EERD:
  1048	                case IXGBE_EEWR:
  1049	                case IXGBE_SRAMREL:
  1050	                case IXGBE_BARCTRL:
  1051	                        return 0;
  1052	                default:
  1053	                        if ((offset >= 0x00020000 &&
  1054	                             offset <= ixgbe_get_eeprom_len(netdev)))
  1055	                                return 0;
  1056	                }
  1057	                break;
  1058	        case ixgbe_mac_X550:
  1059	                switch (offset) {
  1060	                case IXGBE_EEWR:
  1061	                case IXGBE_SRAMREL:
  1062	                case IXGBE_PHYCTL_82599:
  1063	                case IXGBE_FWRESETCNT:
  1064	                        return 0;
  1065	                default:
  1066	                        if (offset >= IXGBE_FLEX_MNG_PTR(0) &&
  1067	                            offset <= IXGBE_FLEX_MNG_PTR(447))
  1068	                                return 0;
  1069	                }
  1070	                break;
  1071	        case ixgbe_mac_X550EM_x:
  1072	                switch (offset) {
  1073	                case IXGBE_PHYCTL_82599:
  1074	                case IXGBE_NW_MNG_IF_SEL:
  1075	                case IXGBE_FWRESETCNT:
  1076	                case IXGBE_I2CCTL_X550:
  1077	                        return 0;
  1078	                default:
  1079	                        if ((offset >= IXGBE_FLEX_MNG_PTR(0) &&
  1080	                             offset <= IXGBE_FLEX_MNG_PTR(447)) ||
  1081	                            (offset >= IXGBE_FUSES0_GROUP(0) &&
  1082	                             offset <= IXGBE_FUSES0_GROUP(7)))
  1083	                                return 0;
  1084	                }
  1085	                break;
  1086	        case ixgbe_mac_x550em_a:
  1087	                switch (offset) {
  1088	                case IXGBE_PHYCTL_82599:
  1089	                case IXGBE_NW_MNG_IF_SEL:
  1090	                case IXGBE_FWRESETCNT:
  1091	                case IXGBE_I2CCTL_X550:
  1092	                case IXGBE_FLA_X550EM_a:
  1093	                case IXGBE_SWSM_X550EM_a:
  1094	                case IXGBE_FWSM_X550EM_a:
  1095	                case IXGBE_SWFW_SYNC_X550EM_a:
  1096	                case IXGBE_FACTPS_X550EM_a:
  1097	                case IXGBE_EEC_X550EM_a:
  1098	                        return 0;
  1099	                default:
  1100	                        if (offset >= IXGBE_FLEX_MNG_PTR(0) &&
  1101	                            offset <= IXGBE_FLEX_MNG_PTR(447))
  1102	                                return 0;
  1103	                }
> 1104	        default:
  1105	                break;
  1106	        }
  1107	
  1108	        return -ENOTTY;
  1109	}
  1110	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
