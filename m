Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F88530035
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 May 2022 03:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CE254193D;
	Sun, 22 May 2022 01:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dEw4DYSsiu0u; Sun, 22 May 2022 01:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C458441922;
	Sun, 22 May 2022 01:30:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 210531BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 May 2022 01:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DFB841931
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 May 2022 01:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzQHXSG2nIfx for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 May 2022 01:30:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCA3941922
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 May 2022 01:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653183000; x=1684719000;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lVKPwmfJGZFHCxtVwbFEoG64+KFcs0rL65FtQDcMu8U=;
 b=UEERGQ6SpdSc8VYwH3injtRMupl5nVpDEOSdSZOvmlzb9yUF8+7x9YOr
 D6jn36m23IR/L4RpuuGOE3PeqcLu8dhgG7uXOhtIDhAVbOWVGr6VyGqIL
 IgLxu8gGktprytRUgD295IjSGSnJBDHIVRgOV1H/kVGGDjipGcC+QkrPy
 UU3txuvpasXZ0UfvT49Hrf3rqJnFUBrveaYy3HJ5EWZ9dezPio014H3kq
 XBfvEdXxTCHJ4abSLDrMVNg7M8x1HRB+6mphHXdBPVq0iGYc9O3V6f/AT
 BoGUbZLGCpNeokkNHy8NaS08v3sfnB6ZxqVt51sjXyMDXioidaLpklC3F g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10354"; a="272907412"
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="272907412"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2022 18:29:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="547285562"
Received: from lkp-server02.sh.intel.com (HELO 242b25809ac7) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 21 May 2022 18:29:57 -0700
Received: from kbuild by 242b25809ac7 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nsaPt-0006oi-7I;
 Sun, 22 May 2022 01:29:57 +0000
Date: Sun, 22 May 2022 09:29:15 +0800
From: kernel test robot <lkp@intel.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202205220932.IobcFqRE-lkp@intel.com>
References: <20220520084527.123885-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220520084527.123885-1-wojciech.drewek@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix switchdev rules book
 keeping
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Wojciech,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on net/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Wojciech-Drewek/ice-Fix-switchdev-rules-book-keeping/20220520-164759
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 9b80ccda233fa6c59de411bf889cc4d0e028f2c7
config: i386-debian-10.3-kselftests (https://download.01.org/0day-ci/archive/20220522/202205220932.IobcFqRE-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-1) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/e04c52f89a78dfae78ac79a71f0c92df8c409146
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Wojciech-Drewek/ice-Fix-switchdev-rules-book-keeping/20220520-164759
        git checkout e04c52f89a78dfae78ac79a71f0c92df8c409146
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/ drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_tc_lib.c: In function 'ice_eswitch_add_tc_fltr':
>> drivers/net/ethernet/intel/ice/ice_tc_lib.c:527:13: error: 'struct ice_tc_flower_fltr' has no member named 'dest_vsi_handle'
     527 |         fltr->dest_vsi_handle = rule_added.vsi_handle;
         |             ^~


vim +527 drivers/net/ethernet/intel/ice/ice_tc_lib.c

   452	
   453	static int
   454	ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
   455	{
   456		struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
   457		struct ice_adv_rule_info rule_info = { 0 };
   458		struct ice_rule_query_data rule_added;
   459		struct ice_hw *hw = &vsi->back->hw;
   460		struct ice_adv_lkup_elem *list;
   461		u32 flags = fltr->flags;
   462		int lkups_cnt;
   463		int ret;
   464		int i;
   465	
   466		if (!flags || (flags & ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT)) {
   467			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported encap field(s)");
   468			return -EOPNOTSUPP;
   469		}
   470	
   471		lkups_cnt = ice_tc_count_lkups(flags, headers, fltr);
   472		list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
   473		if (!list)
   474			return -ENOMEM;
   475	
   476		i = ice_tc_fill_rules(hw, flags, fltr, list, &rule_info, NULL);
   477		if (i != lkups_cnt) {
   478			ret = -EINVAL;
   479			goto exit;
   480		}
   481	
   482		/* egress traffic is always redirect to uplink */
   483		if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
   484			fltr->dest_vsi = vsi->back->switchdev.uplink_vsi;
   485	
   486		rule_info.sw_act.fltr_act = fltr->action.fltr_act;
   487		if (fltr->action.fltr_act != ICE_DROP_PACKET)
   488			rule_info.sw_act.vsi_handle = fltr->dest_vsi->idx;
   489		/* For now, making priority to be highest, and it also becomes
   490		 * the priority for recipe which will get created as a result of
   491		 * new extraction sequence based on input set.
   492		 * Priority '7' is max val for switch recipe, higher the number
   493		 * results into order of switch rule evaluation.
   494		 */
   495		rule_info.priority = 7;
   496	
   497		if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
   498			rule_info.sw_act.flag |= ICE_FLTR_RX;
   499			rule_info.sw_act.src = hw->pf_id;
   500			rule_info.rx = true;
   501		} else {
   502			rule_info.sw_act.flag |= ICE_FLTR_TX;
   503			rule_info.sw_act.src = vsi->idx;
   504			rule_info.rx = false;
   505			rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
   506			rule_info.flags_info.act_valid = true;
   507		}
   508	
   509		/* specify the cookie as filter_rule_id */
   510		rule_info.fltr_rule_id = fltr->cookie;
   511	
   512		ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
   513		if (ret == -EEXIST) {
   514			NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because it already exist");
   515			ret = -EINVAL;
   516			goto exit;
   517		} else if (ret) {
   518			NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter due to error");
   519			goto exit;
   520		}
   521	
   522		/* store the output params, which are needed later for removing
   523		 * advanced switch filter
   524		 */
   525		fltr->rid = rule_added.rid;
   526		fltr->rule_id = rule_added.rule_id;
 > 527		fltr->dest_vsi_handle = rule_added.vsi_handle;
   528	
   529	exit:
   530		kfree(list);
   531		return ret;
   532	}
   533	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
