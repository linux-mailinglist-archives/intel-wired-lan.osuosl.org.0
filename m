Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4317829E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 15:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F079440980;
	Mon, 21 Aug 2023 13:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F079440980
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692623071;
	bh=lz1aBBTkHNGRRcFemsa42JN0ZJinqA4JUIARAiCE0F4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6+c8t0cuhRfJQNGHQYSCl6/XDmQ5JN+tPYrisTdyjWXdExHCzdazVfZeHErY30qYO
	 xi0F5laD4pbaywKkcZcHHochFMh74wK498Tr+TlT/Q4D7NR6U2hxMBUJGttKNq/dBG
	 OSCLad6COz1zbyjKlpcvnGj04jqtCjQJqEcPzTdeUOMdppW5UWx5THryK8OdHiwyxK
	 UPoCjT0BphLLlsh/zeqXjusJ6YnVt1xBLK0LV8Jo7mRLEVmbhQfbo3ikcqYEBjnNz7
	 GjgbbEvbgDcVx2a+GgL7mETTOkJfvFRXEVNKOsABe2WunQ/T5bEGjUxSsw5YwnVKXB
	 y98XohgLDJsoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJkcMioGJn_V; Mon, 21 Aug 2023 13:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BA4E40545;
	Mon, 21 Aug 2023 13:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BA4E40545
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 141A91BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75B5140545
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75B5140545
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k_-OM-1GJo81 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 13:04:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1864340980
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1864340980
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353898838"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="353898838"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 06:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="765361641"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="765361641"
Received: from lkp-server02.sh.intel.com (HELO 6809aa828f2a) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 21 Aug 2023 06:04:18 -0700
Received: from kbuild by 6809aa828f2a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qY4Zt-0000VE-2q;
 Mon, 21 Aug 2023 13:04:17 +0000
Date: Mon, 21 Aug 2023 21:03:50 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202308212014.a1qQx4Wp-lkp@intel.com>
References: <20230819094025.15196-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230819094025.15196-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692623062; x=1724159062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Owv1ANrpuvOaA6Tr8TM4kOysFxfycb+EDrnRaLZQHaw=;
 b=NV946gBFt+7QlhYQMVmnWxjsAd8c0HhPRycPGsa8JmmGfjjjoYrbwe92
 HgqxWI/ujX7HoccMdOgEG4ZFaDbiVOPTGpk+nl+w9YZtd1+kTUAUbYKty
 W56lZAvWDQYvMK+CbwwyKDAnWWsqXXkVjoqP+N6ey/7dHB22JPyjalX8w
 92wgIlv4tV5kDSJ3SdORUg0dav5vNAe/gvE4n7QlAP8O45yQ27v3X99nJ
 5ZywdxuNM+L5DnfmELML2N1sjT2sOnhUOr04GhjQ7O8c42yeFrTiMMHeq
 aTb6qMZqyQv9xI4gMLAXm2iWXh7bromD/VUudgl90HJqZUGUAXnShBnwN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NV946gBF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/9] ethtool: Add missing
 ETHTOOL_LINK_MODE_ to forced speed map
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, aelior@marvell.com,
 manishc@marvell.com, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]
[also build test WARNING on next-20230821]
[cannot apply to tnguy-next-queue/dev-queue tnguy-net-queue/dev-queue net/main linus/master horms-ipvs/master v6.5-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Greenwalt/ice-Add-E830-device-IDs-MAC-type-and-registers/20230821-095200
base:   net-next/main
patch link:    https://lore.kernel.org/r/20230819094025.15196-1-paul.greenwalt%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v2 3/9] ethtool: Add missing ETHTOOL_LINK_MODE_ to forced speed map
config: sparc64-randconfig-r015-20230821 (https://download.01.org/0day-ci/archive/20230821/202308212014.a1qQx4Wp-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230821/202308212014.a1qQx4Wp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308212014.a1qQx4Wp-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/linkmode.h:5,
                    from include/linux/mii.h:13,
                    from include/uapi/linux/mdio.h:15,
                    from drivers/vfio/platform/reset/vfio_platform_amdxgbe.c:14:
>> include/linux/ethtool.h:1190:18: warning: 'ethtool_forced_speed_800000' defined but not used [-Wunused-const-variable=]
    1190 | static const u32 ethtool_forced_speed_800000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/ethtool.h:1177:18: warning: 'ethtool_forced_speed_400000' defined but not used [-Wunused-const-variable=]
    1177 | static const u32 ethtool_forced_speed_400000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/ethtool.h:1164:18: warning: 'ethtool_forced_speed_200000' defined but not used [-Wunused-const-variable=]
    1164 | static const u32 ethtool_forced_speed_200000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/ethtool.h:1147:18: warning: 'ethtool_forced_speed_100000' defined but not used [-Wunused-const-variable=]
    1147 | static const u32 ethtool_forced_speed_100000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/ethtool.h:1140:18: warning: 'ethtool_forced_speed_56000' defined but not used [-Wunused-const-variable=]
    1140 | static const u32 ethtool_forced_speed_56000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/ethtool.h:1129:18: warning: 'ethtool_forced_speed_50000' defined but not used [-Wunused-const-variable=]
    1129 | static const u32 ethtool_forced_speed_50000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/ethtool.h:1122:18: warning: 'ethtool_forced_speed_40000' defined but not used [-Wunused-const-variable=]
    1122 | static const u32 ethtool_forced_speed_40000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/ethtool.h:1116:18: warning: 'ethtool_forced_speed_25000' defined but not used [-Wunused-const-variable=]
    1116 | static const u32 ethtool_forced_speed_25000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/ethtool.h:1111:18: warning: 'ethtool_forced_speed_20000' defined but not used [-Wunused-const-variable=]
    1111 | static const u32 ethtool_forced_speed_20000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/ethtool.h:1099:18: warning: 'ethtool_forced_speed_10000' defined but not used [-Wunused-const-variable=]
    1099 | static const u32 ethtool_forced_speed_10000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/ethtool.h:1095:18: warning: 'ethtool_forced_speed_5000' defined but not used [-Wunused-const-variable=]
    1095 | static const u32 ethtool_forced_speed_5000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/ethtool.h:1090:18: warning: 'ethtool_forced_speed_2500' defined but not used [-Wunused-const-variable=]
    1090 | static const u32 ethtool_forced_speed_2500[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/ethtool.h:1084:18: warning: 'ethtool_forced_speed_1000' defined but not used [-Wunused-const-variable=]
    1084 | static const u32 ethtool_forced_speed_1000[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/ethtool.h:1078:18: warning: 'ethtool_forced_speed_100' defined but not used [-Wunused-const-variable=]
    1078 | static const u32 ethtool_forced_speed_100[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/ethtool.h:1072:18: warning: 'ethtool_forced_speed_10' defined but not used [-Wunused-const-variable=]
    1072 | static const u32 ethtool_forced_speed_10[] __initconst = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~


vim +/ethtool_forced_speed_800000 +1190 include/linux/ethtool.h

  1071	
> 1072	static const u32 ethtool_forced_speed_10[] __initconst = {
  1073		ETHTOOL_LINK_MODE_10baseT_Full_BIT,
  1074		ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
  1075		ETHTOOL_LINK_MODE_10baseT1S_Full_BIT,
  1076	};
  1077	
> 1078	static const u32 ethtool_forced_speed_100[] __initconst = {
  1079		ETHTOOL_LINK_MODE_100baseT_Full_BIT,
  1080		ETHTOOL_LINK_MODE_100baseFX_Half_BIT,
  1081		ETHTOOL_LINK_MODE_100baseFX_Full_BIT,
  1082	};
  1083	
  1084	static const u32 ethtool_forced_speed_1000[] __initconst = {
  1085		ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
  1086		ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
  1087		ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
  1088	};
  1089	
> 1090	static const u32 ethtool_forced_speed_2500[] __initconst = {
  1091		ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
  1092		ETHTOOL_LINK_MODE_2500baseX_Full_BIT,
  1093	};
  1094	
> 1095	static const u32 ethtool_forced_speed_5000[] __initconst = {
  1096		ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
  1097	};
  1098	
  1099	static const u32 ethtool_forced_speed_10000[] __initconst = {
  1100		ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
  1101		ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
  1102		ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
  1103		ETHTOOL_LINK_MODE_10000baseR_FEC_BIT,
  1104		ETHTOOL_LINK_MODE_10000baseCR_Full_BIT,
  1105		ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
  1106		ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
  1107		ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT,
  1108		ETHTOOL_LINK_MODE_10000baseER_Full_BIT,
  1109	};
  1110	
  1111	static const u32 ethtool_forced_speed_20000[] __initconst = {
  1112		ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT,
  1113		ETHTOOL_LINK_MODE_20000baseMLD2_Full_BIT,
  1114	};
  1115	
  1116	static const u32 ethtool_forced_speed_25000[] __initconst = {
  1117		ETHTOOL_LINK_MODE_25000baseKR_Full_BIT,
  1118		ETHTOOL_LINK_MODE_25000baseCR_Full_BIT,
  1119		ETHTOOL_LINK_MODE_25000baseSR_Full_BIT,
  1120	};
  1121	
  1122	static const u32 ethtool_forced_speed_40000[] __initconst = {
  1123		ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT,
  1124		ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
  1125		ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT,
  1126		ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT,
  1127	};
  1128	
  1129	static const u32 ethtool_forced_speed_50000[] __initconst = {
  1130		ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
  1131		ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT,
  1132		ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT,
  1133		ETHTOOL_LINK_MODE_50000baseKR_Full_BIT,
  1134		ETHTOOL_LINK_MODE_50000baseKR_Full_BIT,
  1135		ETHTOOL_LINK_MODE_50000baseCR_Full_BIT,
  1136		ETHTOOL_LINK_MODE_50000baseLR_ER_FR_Full_BIT,
  1137		ETHTOOL_LINK_MODE_50000baseDR_Full_BIT,
  1138	};
  1139	
> 1140	static const u32 ethtool_forced_speed_56000[] __initconst = {
  1141		ETHTOOL_LINK_MODE_56000baseKR4_Full_BIT,
  1142		ETHTOOL_LINK_MODE_56000baseCR4_Full_BIT,
  1143		ETHTOOL_LINK_MODE_56000baseSR4_Full_BIT,
  1144		ETHTOOL_LINK_MODE_56000baseLR4_Full_BIT,
  1145	};
  1146	
  1147	static const u32 ethtool_forced_speed_100000[] __initconst = {
  1148		ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT,
  1149		ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT,
  1150		ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT,
  1151		ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
  1152		ETHTOOL_LINK_MODE_100000baseCR2_Full_BIT,
  1153		ETHTOOL_LINK_MODE_100000baseSR2_Full_BIT,
  1154		ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT,
  1155		ETHTOOL_LINK_MODE_100000baseLR2_ER2_FR2_Full_BIT,
  1156		ETHTOOL_LINK_MODE_100000baseDR2_Full_BIT,
  1157		ETHTOOL_LINK_MODE_100000baseKR_Full_BIT,
  1158		ETHTOOL_LINK_MODE_100000baseSR_Full_BIT,
  1159		ETHTOOL_LINK_MODE_100000baseLR_ER_FR_Full_BIT,
  1160		ETHTOOL_LINK_MODE_100000baseCR_Full_BIT,
  1161		ETHTOOL_LINK_MODE_100000baseDR_Full_BIT,
  1162	};
  1163	
> 1164	static const u32 ethtool_forced_speed_200000[] __initconst = {
  1165		ETHTOOL_LINK_MODE_200000baseKR4_Full_BIT,
  1166		ETHTOOL_LINK_MODE_200000baseSR4_Full_BIT,
  1167		ETHTOOL_LINK_MODE_200000baseLR4_ER4_FR4_Full_BIT,
  1168		ETHTOOL_LINK_MODE_200000baseDR4_Full_BIT,
  1169		ETHTOOL_LINK_MODE_200000baseCR4_Full_BIT,
  1170		ETHTOOL_LINK_MODE_200000baseKR2_Full_BIT,
  1171		ETHTOOL_LINK_MODE_200000baseSR2_Full_BIT,
  1172		ETHTOOL_LINK_MODE_200000baseLR2_ER2_FR2_Full_BIT,
  1173		ETHTOOL_LINK_MODE_200000baseDR2_Full_BIT,
  1174		ETHTOOL_LINK_MODE_200000baseCR2_Full_BIT,
  1175	};
  1176	
> 1177	static const u32 ethtool_forced_speed_400000[] __initconst = {
  1178		ETHTOOL_LINK_MODE_400000baseKR8_Full_BIT,
  1179		ETHTOOL_LINK_MODE_400000baseSR8_Full_BIT,
  1180		ETHTOOL_LINK_MODE_400000baseLR8_ER8_FR8_Full_BIT,
  1181		ETHTOOL_LINK_MODE_400000baseDR8_Full_BIT,
  1182		ETHTOOL_LINK_MODE_400000baseCR8_Full_BIT,
  1183		ETHTOOL_LINK_MODE_400000baseKR4_Full_BIT,
  1184		ETHTOOL_LINK_MODE_400000baseSR4_Full_BIT,
  1185		ETHTOOL_LINK_MODE_400000baseLR4_ER4_FR4_Full_BIT,
  1186		ETHTOOL_LINK_MODE_400000baseDR4_Full_BIT,
  1187		ETHTOOL_LINK_MODE_400000baseCR4_Full_BIT,
  1188	};
  1189	
> 1190	static const u32 ethtool_forced_speed_800000[] __initconst = {
  1191		ETHTOOL_LINK_MODE_800000baseCR8_Full_BIT,
  1192		ETHTOOL_LINK_MODE_800000baseKR8_Full_BIT,
  1193		ETHTOOL_LINK_MODE_800000baseDR8_Full_BIT,
  1194		ETHTOOL_LINK_MODE_800000baseDR8_2_Full_BIT,
  1195		ETHTOOL_LINK_MODE_800000baseSR8_Full_BIT,
  1196		ETHTOOL_LINK_MODE_800000baseVR8_Full_BIT,
  1197	};
  1198	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
