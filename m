Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B08C81D350
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 10:20:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D54783B2A;
	Sat, 23 Dec 2023 09:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D54783B2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703323224;
	bh=f450KmgCVIBsvDwV0wF8g+whApC92aynSvXPajYVj+0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6JReIQHPbJdESbskISZ/AIqbl8yQObCso3JIRBAKgAyERM6Ov0zcK1pVDIj/Rjl2Q
	 AHdxbTEFzgUY7/uR0BzRG7Vtrfz5UwkAEwmFOfwlzMpV4mi2IKP6Q4NMRAGYYTJm9T
	 ULB1vAQSusF1J3GlUb3F5OemROgOR35ym2cetcTxbNtzCIM1EDN6EI+eO7rbXuGbAz
	 eVLfe4WPX+oqd2xSr5F3rGDiwCeUIAd7MW/wXqw9qLnTcvcgpzaEqHvn5bLByrNaHW
	 4BnMKCed8EwV767YWFtLK6upTnL/piXjpdk4uloqyzKOvCiNolhJjxXoG/f0rSLytH
	 JjMNq3SKmLhyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dANzewA8X46K; Sat, 23 Dec 2023 09:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 473AE83B23;
	Sat, 23 Dec 2023 09:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 473AE83B23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AB5E1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 09:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D567183B23
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 09:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D567183B23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0Ay8Ig8j6LW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 09:20:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DF4283B20
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 09:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DF4283B20
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="395082618"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="395082618"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2023 01:20:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="867943307"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="867943307"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Dec 2023 01:20:12 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rGyA9-000AVZ-32;
 Sat, 23 Dec 2023 09:19:27 +0000
Date: Sat, 23 Dec 2023 17:18:52 +0800
From: kernel test robot <lkp@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Message-ID: <202312231758.zG1LthuL-lkp@intel.com>
References: <20231220173837.3326983-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231220173837.3326983-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703323215; x=1734859215;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VF25ho2j2NVuPYzT72i4te3/XkLT3iNnKvt8SlOW+hs=;
 b=lJxAx8PkGWsEcpPDl+BzIILV449aJDGMwwicVuGYQfjbDnnzeeMOtgj4
 z6/9cApY5hQoTYDplwJDaVG2WXwqt4DqVeEfM85C0CRU+9dfIj4XFRdCJ
 0p/Y7gjwRhLO1I2S3QVU93wSH1JMvG/gLOZHwUnY/K154sjrDSUy41gTV
 PhFJ01bA5LwbgMAHxoHZmA7neHLSRNV8cr3oGAtJsGnRJjFl6beSL1c0Z
 EWsI6QEuLlgVbgChduJRAAg3LIfHwSQja24jawsq8HE+YmWhKHk0zGlnx
 tSpjfsQczEuTcPshP/2nGi40NwFg5VuxGHvgB5CXFXzxz9FTedbFxQ8lw
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lJxAx8Pk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add trace events
 related to SFP module IOCTLs
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Aleksandr,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Aleksandr-Loktionov/i40e-add-trace-events-related-to-SFP-module-IOCTLs/20231222-165333
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20231220173837.3326983-1-aleksandr.loktionov%40intel.com
patch subject: [PATCH iwl-next v2] i40e: add trace events related to SFP module IOCTLs
config: x86_64-randconfig-161-20231222 (https://download.01.org/0day-ci/archive/20231223/202312231758.zG1LthuL-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231223/202312231758.zG1LthuL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312231758.zG1LthuL-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/trace/define_trace.h:102,
                    from drivers/net/ethernet/intel/i40e/i40e_trace.h:276,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:25:
   drivers/net/ethernet/intel/i40e/./i40e_trace.h: In function 'ftrace_test_probe_i40e_ioctl_get_module_info':
>> include/trace/trace_events.h:416:35: error: 'trace_event_raw_event_i40e_ioctl_template' undeclared (first use in this function); did you mean 'trace_event_raw_event_i40e_tx_template'?
     416 |  check_trace_callback_type_##call(trace_event_raw_event_##template); \
         |                                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:205:1: note: in expansion of macro 'DEFINE_EVENT'
     205 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
   include/trace/trace_events.h:416:35: note: each undeclared identifier is reported only once for each function it appears in
     416 |  check_trace_callback_type_##call(trace_event_raw_event_##template); \
         |                                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:205:1: note: in expansion of macro 'DEFINE_EVENT'
     205 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h: In function 'ftrace_test_probe_i40e_ioctl_get_module_eeprom':
>> include/trace/trace_events.h:416:35: error: 'trace_event_raw_event_i40e_ioctl_template' undeclared (first use in this function); did you mean 'trace_event_raw_event_i40e_tx_template'?
     416 |  check_trace_callback_type_##call(trace_event_raw_event_##template); \
         |                                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:211:1: note: in expansion of macro 'DEFINE_EVENT'
     211 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h: In function 'ftrace_test_probe_i40e_ioctl_get_link_ksettings':
>> include/trace/trace_events.h:416:35: error: 'trace_event_raw_event_i40e_ioctl_template' undeclared (first use in this function); did you mean 'trace_event_raw_event_i40e_tx_template'?
     416 |  check_trace_callback_type_##call(trace_event_raw_event_##template); \
         |                                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:217:1: note: in expansion of macro 'DEFINE_EVENT'
     217 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
   In file included from include/trace/define_trace.h:102,
                    from drivers/net/ethernet/intel/i40e/i40e_trace.h:276,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:25:
   drivers/net/ethernet/intel/i40e/./i40e_trace.h: At top level:
>> include/trace/trace_events.h:441:14: error: 'event_class_i40e_ioctl_template' undeclared here (not in a function); did you mean 'event_class_i40e_xmit_template'?
     441 |  .class   = &event_class_##template,  \
         |              ^~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:205:1: note: in expansion of macro 'DEFINE_EVENT'
     205 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
>> include/trace/trace_events.h:445:19: error: 'trace_event_type_funcs_i40e_ioctl_template' undeclared here (not in a function); did you mean 'trace_event_type_funcs_i40e_xmit_template'?
     445 |  .event.funcs  = &trace_event_type_funcs_##template, \
         |                   ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:205:1: note: in expansion of macro 'DEFINE_EVENT'
     205 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
>> include/trace/trace_events.h:446:16: error: 'print_fmt_i40e_ioctl_template' undeclared here (not in a function); did you mean 'print_fmt_i40e_tx_template'?
     446 |  .print_fmt  = print_fmt_##template,   \
         |                ^~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:205:1: note: in expansion of macro 'DEFINE_EVENT'
     205 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
   In file included from include/trace/define_trace.h:103,
                    from drivers/net/ethernet/intel/i40e/i40e_trace.h:276,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:25:
   drivers/net/ethernet/intel/i40e/./i40e_trace.h: In function 'perf_test_probe_i40e_ioctl_get_module_info':
>> include/trace/perf.h:67:35: error: 'perf_trace_i40e_ioctl_template' undeclared (first use in this function); did you mean 'perf_trace_i40e_xmit_template'?
      67 |  check_trace_callback_type_##call(perf_trace_##template); \
         |                                   ^~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:205:1: note: in expansion of macro 'DEFINE_EVENT'
     205 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h: In function 'perf_test_probe_i40e_ioctl_get_module_eeprom':
>> include/trace/perf.h:67:35: error: 'perf_trace_i40e_ioctl_template' undeclared (first use in this function); did you mean 'perf_trace_i40e_xmit_template'?
      67 |  check_trace_callback_type_##call(perf_trace_##template); \
         |                                   ^~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:211:1: note: in expansion of macro 'DEFINE_EVENT'
     211 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h: In function 'perf_test_probe_i40e_ioctl_get_link_ksettings':
>> include/trace/perf.h:67:35: error: 'perf_trace_i40e_ioctl_template' undeclared (first use in this function); did you mean 'perf_trace_i40e_xmit_template'?
      67 |  check_trace_callback_type_##call(perf_trace_##template); \
         |                                   ^~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/./i40e_trace.h:217:1: note: in expansion of macro 'DEFINE_EVENT'
     217 | DEFINE_EVENT(
         | ^~~~~~~~~~~~
--
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c: In function 'i40e_get_link_ksettings':
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:1077:2: error: implicit declaration of function 'i40e_trace' [-Werror=implicit-function-declaration]
    1077 |  i40e_trace(ioctl_get_link_ksettings, pf, hw_link_info->link_info);
         |  ^~~~~~~~~~
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:1077:13: error: 'ioctl_get_link_ksettings' undeclared (first use in this function); did you mean 'i40e_get_link_ksettings'?
    1077 |  i40e_trace(ioctl_get_link_ksettings, pf, hw_link_info->link_info);
         |             ^~~~~~~~~~~~~~~~~~~~~~~~
         |             i40e_get_link_ksettings
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:1077:13: note: each undeclared identifier is reported only once for each function it appears in
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c: In function 'i40e_get_module_info':
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:5589:14: error: 'ioctl_get_module_info' undeclared (first use in this function); did you mean 'i40e_get_module_info'?
    5589 |   i40e_trace(ioctl_get_module_info, pf, ~0UL);
         |              ^~~~~~~~~~~~~~~~~~~~~
         |              i40e_get_module_info
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c: In function 'i40e_get_module_eeprom':
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:5617:13: error: 'ioctl_get_module_eeprom' undeclared (first use in this function); did you mean 'i40e_get_module_eeprom'?
    5617 |  i40e_trace(ioctl_get_module_eeprom, pf, ee ? ee->len : 0U);
         |             ^~~~~~~~~~~~~~~~~~~~~~~
         |             i40e_get_module_eeprom
   cc1: some warnings being treated as errors


vim +/i40e_trace +1077 drivers/net/ethernet/intel/i40e/i40e_ethtool.c

  1057	
  1058	/**
  1059	 * i40e_get_link_ksettings - Get Link Speed and Duplex settings
  1060	 * @netdev: network interface device structure
  1061	 * @ks: ethtool ksettings
  1062	 *
  1063	 * Reports speed/duplex settings based on media_type
  1064	 **/
  1065	static int i40e_get_link_ksettings(struct net_device *netdev,
  1066					   struct ethtool_link_ksettings *ks)
  1067	{
  1068		struct i40e_netdev_priv *np = netdev_priv(netdev);
  1069		struct i40e_pf *pf = np->vsi->back;
  1070		struct i40e_hw *hw = &pf->hw;
  1071		struct i40e_link_status *hw_link_info = &hw->phy.link_info;
  1072		bool link_up = hw_link_info->link_info & I40E_AQ_LINK_UP;
  1073	
  1074		ethtool_link_ksettings_zero_link_mode(ks, supported);
  1075		ethtool_link_ksettings_zero_link_mode(ks, advertising);
  1076	
> 1077		i40e_trace(ioctl_get_link_ksettings, pf, hw_link_info->link_info);
  1078		if (link_up)
  1079			i40e_get_settings_link_up(hw, ks, netdev, pf);
  1080		else
  1081			i40e_get_settings_link_down(hw, ks, pf);
  1082	
  1083		/* Now set the settings that don't rely on link being up/down */
  1084		/* Set autoneg settings */
  1085		ks->base.autoneg = ((hw_link_info->an_info & I40E_AQ_AN_COMPLETED) ?
  1086				    AUTONEG_ENABLE : AUTONEG_DISABLE);
  1087	
  1088		/* Set media type settings */
  1089		switch (hw->phy.media_type) {
  1090		case I40E_MEDIA_TYPE_BACKPLANE:
  1091			ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
  1092			ethtool_link_ksettings_add_link_mode(ks, supported, Backplane);
  1093			ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
  1094			ethtool_link_ksettings_add_link_mode(ks, advertising,
  1095							     Backplane);
  1096			ks->base.port = PORT_NONE;
  1097			break;
  1098		case I40E_MEDIA_TYPE_BASET:
  1099			ethtool_link_ksettings_add_link_mode(ks, supported, TP);
  1100			ethtool_link_ksettings_add_link_mode(ks, advertising, TP);
  1101			ks->base.port = PORT_TP;
  1102			break;
  1103		case I40E_MEDIA_TYPE_DA:
  1104		case I40E_MEDIA_TYPE_CX4:
  1105			ethtool_link_ksettings_add_link_mode(ks, supported, FIBRE);
  1106			ethtool_link_ksettings_add_link_mode(ks, advertising, FIBRE);
  1107			ks->base.port = PORT_DA;
  1108			break;
  1109		case I40E_MEDIA_TYPE_FIBER:
  1110			ethtool_link_ksettings_add_link_mode(ks, supported, FIBRE);
  1111			ethtool_link_ksettings_add_link_mode(ks, advertising, FIBRE);
  1112			ks->base.port = PORT_FIBRE;
  1113			break;
  1114		case I40E_MEDIA_TYPE_UNKNOWN:
  1115		default:
  1116			ks->base.port = PORT_OTHER;
  1117			break;
  1118		}
  1119	
  1120		/* Set flow control settings */
  1121		ethtool_link_ksettings_add_link_mode(ks, supported, Pause);
  1122		ethtool_link_ksettings_add_link_mode(ks, supported, Asym_Pause);
  1123	
  1124		switch (hw->fc.requested_mode) {
  1125		case I40E_FC_FULL:
  1126			ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
  1127			break;
  1128		case I40E_FC_TX_PAUSE:
  1129			ethtool_link_ksettings_add_link_mode(ks, advertising,
  1130							     Asym_Pause);
  1131			break;
  1132		case I40E_FC_RX_PAUSE:
  1133			ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
  1134			ethtool_link_ksettings_add_link_mode(ks, advertising,
  1135							     Asym_Pause);
  1136			break;
  1137		default:
  1138			ethtool_link_ksettings_del_link_mode(ks, advertising, Pause);
  1139			ethtool_link_ksettings_del_link_mode(ks, advertising,
  1140							     Asym_Pause);
  1141			break;
  1142		}
  1143	
  1144		return 0;
  1145	}
  1146	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
