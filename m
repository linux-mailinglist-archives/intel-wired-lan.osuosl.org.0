Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0EF7B685D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 13:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16E1C81F30;
	Tue,  3 Oct 2023 11:54:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16E1C81F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696334072;
	bh=R4z2wZvPPCUDqYGpsFEDcdzyS0GUTijpWwGyr09ydfg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=whdZgzywlAg0obojDjJPqNyZoy0Q15KMBYFja6qXs6cvaCC3NipoXoVM17n3jHfu0
	 9SahpA2wG9MhVzWT+Z2zgjFDPhICBDk0TER8Q59D7YQCHpjOpYdSeJhPr/XhCKH7nY
	 EPovn6yKyUgLUhKlW5BrbijUTAgZA18p8NiLJ2FJuUkNCBE5Xhchv1WuRASuGRRtfX
	 anBtUvn3Q34FKEWXmHe8CpcrFjrQe7aibqKFjmNsY79G+MkTH8brUjGLdZSisf1l3R
	 6n5G4LDwAOg3vsc1dMLAPUJJR47w9LT5dJLHakgPUfxyrTqCyDvJqTCsei0jpHzFYW
	 9hBTFj/76oY4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtkoTVSAVMFs; Tue,  3 Oct 2023 11:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 040AB81F2F;
	Tue,  3 Oct 2023 11:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 040AB81F2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB59C1BF276
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 11:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B841141DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 11:54:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B841141DA6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAL9A34aMQJl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 11:54:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 688F141C0F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 11:54:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 688F141C0F
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="382764327"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="382764327"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 04:54:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="841324637"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="841324637"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Oct 2023 04:54:18 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qndyi-00075s-2M;
 Tue, 03 Oct 2023 11:54:16 +0000
Date: Tue, 3 Oct 2023 19:54:09 +0800
From: kernel test robot <lkp@intel.com>
To: Aniruddha Paul <aniruddha.paul@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202310031925.uHjPXxCu-lkp@intel.com>
References: <20231003081639.1915967-1-aniruddha.paul@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231003081639.1915967-1-aniruddha.paul@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696334062; x=1727870062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YuUBS98GIeSeyEiT0rDr6RqvPbt3U21tkUiVvYVC4iM=;
 b=EVCrGOkQlnfVtpRveT+W9/xODFYOytdbDLWhqepA0tYAxywI8Il0z5Se
 XDgMyg1+ysWgTd9oKPpMDijYruRsRO0AtXMgbwJhzCyAwmNseexzgHbTK
 m8zu3wnQmEbDMvpPGB6nJlSYqARPE0jAHEWKifAhWk3lDi1E/0wokieqQ
 AaVNTNQkZVloyqcgTLp/x9W0nP4agU9iOf7V6etdPnOqusTHKZGhtx5Hu
 pa891WiDSKcl2RvG4aqmEj5hN3SxKplI/zS3aLNWq7KkCirc4GvXnX59e
 CZRtGx9KqwJdXrWrjGJP9CKbPmDBfkmSwLnf8ZBx7+rdFeb2roarZLbE4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EVCrGOkQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net,
 v2] ice: Fix VF-VF filter rules in switchdev mode
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, marcin.szycik@intel.com,
 Aniruddha Paul <aniruddha.paul@intel.com>, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Aniruddha,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on v6.6-rc4 next-20231003]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Aniruddha-Paul/ice-Fix-VF-VF-filter-rules-in-switchdev-mode/20231003-161801
base:   linus/master
patch link:    https://lore.kernel.org/r/20231003081639.1915967-1-aniruddha.paul%40intel.com
patch subject: [PATCH iwl-net,v2] ice: Fix VF-VF filter rules in switchdev mode
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20231003/202310031925.uHjPXxCu-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231003/202310031925.uHjPXxCu-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310031925.uHjPXxCu-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_tc_lib.c: In function 'ice_eswitch_tc_parse_action':
>> drivers/net/ethernet/intel/ice/ice_tc_lib.c:678:26: warning: unused variable 'repr' [-Wunused-variable]
     678 |         struct ice_repr *repr;
         |                          ^~~~


vim +/repr +678 drivers/net/ethernet/intel/ice/ice_tc_lib.c

   672	
   673	static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
   674					       struct ice_tc_flower_fltr *fltr,
   675					       struct flow_action_entry *act)
   676	{
   677		int err;
 > 678		struct ice_repr *repr;
   679	
   680		switch (act->id) {
   681		case FLOW_ACTION_DROP:
   682			fltr->action.fltr_act = ICE_DROP_PACKET;
   683			break;
   684	
   685		case FLOW_ACTION_REDIRECT:
   686			err = ice_tc_setup_redirect_action(filter_dev, fltr, act->dev);
   687			if (err)
   688				return err;
   689	
   690			break;
   691	
   692		default:
   693			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported action in switchdev mode");
   694			return -EINVAL;
   695		}
   696	
   697		return 0;
   698	}
   699	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
