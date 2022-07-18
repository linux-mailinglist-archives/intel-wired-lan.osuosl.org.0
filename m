Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91443577ECA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 11:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A186840932;
	Mon, 18 Jul 2022 09:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A186840932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658137049;
	bh=/CPWJ5XUJt1U7P5YKT2v61GjAuwwzEBcZg+IqAzmGn4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LOMbEHgdx99/WC4kJ3q+XuOYjVmghYg3b74fWXFF4MUBuB5DMlpR1UKhtTXRxdZnP
	 ejH6e4hoyhxUbw4Q8XC6qgb6UrQ8SNs6br7LFgUuvQBvPJ/IRc0ad+Yw3IQf+Dz8z1
	 zhtSXKXKy23a61WXHt9/t3vm5zZlbe4dVRiz2N/ONT7hxjirJgxCGqmORIOTBfIvSB
	 LHOaVVMhRBv1iUxYFmCO+GIusvad7BYT0xigPmVxJ85eFMVGHQfuKVBa0qDV7MbL4I
	 122NkKtI++BG6RFvgf75H4Kx46hMljrB0hnTsJrI5F7cGyQXWedTq1He5YkRr1qVhX
	 KABoQI0vf0zcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRVcaJGqsK8y; Mon, 18 Jul 2022 09:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D35394092B;
	Mon, 18 Jul 2022 09:37:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D35394092B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9EB71BF47D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 09:37:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B37C481421
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 09:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B37C481421
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHpmHb3l9qDG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 09:37:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 833518141E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 833518141E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 09:37:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="311859538"
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="311859538"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 02:37:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="655202114"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jul 2022 02:37:19 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oDNBn-0004Eo-2l;
 Mon, 18 Jul 2022 09:37:19 +0000
Date: Mon, 18 Jul 2022 17:37:00 +0800
From: kernel test robot <lkp@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202207181711.LUIFqImA-lkp@intel.com>
References: <20220718065607.196699-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220718065607.196699-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658137041; x=1689673041;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WBjyBLndWuxMeZ4mPgUafcAbObs9l+sJrxDYD/Jfd3Y=;
 b=hhnJ9qGnbCj0ZL7BiXeebr3Us6DgSfJyCrRceDcm18a+vOmCnTJXJVNS
 cxFjrq80a4X9EyAPOwb0/G6NcTf3LTAOAvUGNmp69yA412hVX+0iptEBz
 WbIpZDBKJbGRqJMFcqXlObeVT8eaSVNFS8TEx/BnbcXFHBQf8tzYVRAek
 pZwUANMEAMu3Enbq5f1llQPlxqotrDhtBDr9s81j8SZwXRHdBjiMrGRWP
 ML29IC+Os99hAYEpOBt/QCLfd/sSZJjLug9G2Sk3xNLbEBtdBHE8Egb1M
 FueUfL+KOZfiDTFnclb7uTvK8LanxsM5O5p+ASB2rw/rbEYXjxjgC1sVn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hhnJ9qGn
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Fix VSIs unable to share
 unicast MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 kbuild-all@lists.01.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jedrzej,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Jedrzej-Jagielski/ice-Fix-VSIs-unable-to-share-unicast-MAC/20220718-150030
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 11052589cf5c0bab3b4884d423d5f60c38fcf25d
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220718/202207181711.LUIFqImA-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/b3781a141e58204a573a255b21f3f7f8faecba58
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jedrzej-Jagielski/ice-Fix-VSIs-unable-to-share-unicast-MAC/20220718-150030
        git checkout b3781a141e58204a573a255b21f3f7f8faecba58
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_switch.c: In function 'ice_remove_mac':
>> drivers/net/ethernet/intel/ice/ice_switch.c:3973:21: warning: unused variable 'add' [-Wunused-variable]
    3973 |                 u8 *add = &list_itr->fltr_info.l_data.mac.mac_addr[0];
         |                     ^~~
   drivers/net/ethernet/intel/ice/ice_switch.c:3965:23: warning: variable 'rule_lock' set but not used [-Wunused-but-set-variable]
    3965 |         struct mutex *rule_lock; /* Lock to protect filter rule list */
         |                       ^~~~~~~~~
   At top level:
   drivers/net/ethernet/intel/ice/ice_switch.c:3930:1: warning: 'ice_find_ucast_rule_entry' defined but not used [-Wunused-function]
    3930 | ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
         | ^~~~~~~~~~~~~~~~~~~~~~~~~


vim +/add +3973 drivers/net/ethernet/intel/ice/ice_switch.c

8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3948  
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3949  /**
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3950   * ice_remove_mac - remove a MAC address based filter rule
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3951   * @hw: pointer to the hardware structure
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3952   * @m_list: list of MAC addresses and forwarding information
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3953   *
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3954   * This function removes either a MAC filter rule or a specific VSI from a
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3955   * VSI list for a multicast MAC address.
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3956   *
5518ac2a64423f Tony Nguyen            2021-10-07  3957   * Returns -ENOENT if a given entry was not added by ice_add_mac. Caller should
5518ac2a64423f Tony Nguyen            2021-10-07  3958   * be aware that this call will only work if all the entries passed into m_list
5518ac2a64423f Tony Nguyen            2021-10-07  3959   * were added previously. It will not attempt to do a partial remove of entries
5518ac2a64423f Tony Nguyen            2021-10-07  3960   * that were found.
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3961   */
5e24d5984c805c Tony Nguyen            2021-10-07  3962  int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3963  {
072f0c3db9daf7 Dave Ertman            2018-09-19  3964  	struct ice_fltr_list_entry *list_itr, *tmp;
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3965  	struct mutex *rule_lock; /* Lock to protect filter rule list */
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3966  
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3967  	if (!m_list)
d54699e27d506f Tony Nguyen            2021-10-07  3968  		return -EINVAL;
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3969  
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3970  	rule_lock = &hw->switch_info->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
072f0c3db9daf7 Dave Ertman            2018-09-19  3971  	list_for_each_entry_safe(list_itr, tmp, m_list, list_entry) {
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3972  		enum ice_sw_lkup_type l_type = list_itr->fltr_info.lkup_type;
8b2c858240aca4 Akeem G Abodunrin      2019-07-25 @3973  		u8 *add = &list_itr->fltr_info.l_data.mac.mac_addr[0];
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3974  		u16 vsi_handle;
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3975  
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3976  		if (l_type != ICE_SW_LKUP_MAC)
d54699e27d506f Tony Nguyen            2021-10-07  3977  			return -EINVAL;
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3978  
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3979  		vsi_handle = list_itr->fltr_info.vsi_handle;
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3980  		if (!ice_is_vsi_valid(hw, vsi_handle))
d54699e27d506f Tony Nguyen            2021-10-07  3981  			return -EINVAL;
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3982  
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3983  		list_itr->fltr_info.fwd_id.hw_vsi_id =
8b2c858240aca4 Akeem G Abodunrin      2019-07-25  3984  					ice_get_hw_vsi_num(hw, vsi_handle);
b3781a141e5820 Anirudh Venkataramanan 2022-07-18  3985  
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3986  		list_itr->status = ice_remove_rule_internal(hw,
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3987  							    ICE_SW_LKUP_MAC,
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3988  							    list_itr);
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3989  		if (list_itr->status)
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3990  			return list_itr->status;
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3991  	}
80d144c9ac82fd Anirudh Venkataramanan 2018-08-09  3992  	return 0;
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3993  }
d76a60ba7afb89 Anirudh Venkataramanan 2018-03-20  3994  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
