Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D8860E12
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 10:36:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 637D241C4C;
	Fri, 23 Feb 2024 09:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ATgrSrfTQJUA; Fri, 23 Feb 2024 09:36:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB52041C4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708680967;
	bh=jmfrFuAsWi0wpEKGbQ5raIcMFQUbp2C8gp4TJDXaw/4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BrByMZO2XSIcsLv6GSrIn4mkJT56V8Km489v9j33y0XiTHHZy/G77b5s8cKndz1Rp
	 EsvsUzqpnNi1hcHb0Z6ddc2Ik+9JUJI0wbGGhNjYUSfgv5yV08xaPGLGWjD5x/FsGz
	 a8+kku+tX1igpJdOEdSrCzT6gtgUIwJ8a553Mx2VDduv3T4A1fY2PySEwq0nE271FR
	 tg5+HY5vd4oKZl6AgElD6n5aP/NhVFL+J9ui5aQ3QDNpqkIi51KytsQjxsrJ/fRbrY
	 TLvWET0vsA5XsL5Jrw2YarV24fw9Ob3ciOOfMWOV/i2fwsTsdF5Uk0YoMZJzUYFyoG
	 Cmn+PeETSjpTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB52041C4E;
	Fri, 23 Feb 2024 09:36:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC24A1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 09:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF87C41E1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 09:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWOFBTAqGMek for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 09:36:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6D9741DFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6D9741DFC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6D9741DFC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 09:36:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="6799480"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6799480"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 01:35:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="29019500"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 23 Feb 2024 01:35:57 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rdRxh-0007Hc-1J;
 Fri, 23 Feb 2024 09:35:33 +0000
Date: Fri, 23 Feb 2024 17:35:12 +0800
From: kernel test robot <lkp@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202402231718.8mWcBppj-lkp@intel.com>
References: <20240222145025.722515-3-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222145025.722515-3-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708680961; x=1740216961;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=P62c/gW3qUy4OC1LLVXVfdGjVFXf5PvIZI0YSta30b4=;
 b=foMV3AXFTEp0YMmvAZxmTLuWpXPOINv3iU4296W6OShwk90ceD8GERTL
 yjNA76LbbUYFsu7VegxwZ99wMH88aaBvfXnoqbgqRp/ZnhXcWlHzBSbIB
 WXLl05fJWoHpD/98EUwuD/Sg/3jyW4BJyt24YttnGD2IsUYQ5uv6w19KC
 IS76InYPkdKMoKpGMXb2owk7NUb9SBc149OTWkJeauAF5b5dZq6dxsPY5
 kpodT6F0hqGMppx/tA5Z/F1jlzUHFve9zi/eJWKZsMASNx6GKcypr3oIa
 QRbxB1AFOSyWgtkZmU1H9vdtkrrsr5LNwte9H75gMupjQrkn9Jzya5I2Y
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=foMV3AXF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: avoid unnecessary
 devm_ usage
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Maciej,

kernel test robot noticed the following build warnings:

[auto build test WARNING on v6.8-rc5]
[also build test WARNING on linus/master next-20240223]
[cannot apply to tnguy-next-queue/dev-queue tnguy-net-queue/dev-queue horms-ipvs/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maciej-Fijalkowski/ice-do-not-disable-Tx-queues-twice-in-ice_down/20240222-225134
base:   v6.8-rc5
patch link:    https://lore.kernel.org/r/20240222145025.722515-3-maciej.fijalkowski%40intel.com
patch subject: [PATCH iwl-next 2/3] ice: avoid unnecessary devm_ usage
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20240223/202402231718.8mWcBppj-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240223/202402231718.8mWcBppj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402231718.8mWcBppj-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_common.c: In function 'ice_update_link_info':
>> drivers/net/ethernet/intel/ice/ice_common.c:3242:32: warning: variable 'hw' set but not used [-Wunused-but-set-variable]
    3242 |                 struct ice_hw *hw;
         |                                ^~
--
   drivers/net/ethernet/intel/ice/ice_ethtool.c: In function 'ice_loopback_test':
>> drivers/net/ethernet/intel/ice/ice_ethtool.c:947:24: warning: variable 'dev' set but not used [-Wunused-but-set-variable]
     947 |         struct device *dev;
         |                        ^~~


vim +/hw +3242 drivers/net/ethernet/intel/ice/ice_common.c

fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3221  
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3222  /**
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3223   * ice_update_link_info - update status of the HW network link
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3224   * @pi: port info structure of the interested logical port
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3225   */
5e24d5984c805c Tony Nguyen            2021-10-07  3226  int ice_update_link_info(struct ice_port_info *pi)
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3227  {
092a33d4031205 Bruce Allan            2019-04-16  3228  	struct ice_link_status *li;
5e24d5984c805c Tony Nguyen            2021-10-07  3229  	int status;
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3230  
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3231  	if (!pi)
d54699e27d506f Tony Nguyen            2021-10-07  3232  		return -EINVAL;
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3233  
092a33d4031205 Bruce Allan            2019-04-16  3234  	li = &pi->phy.link_info;
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3235  
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3236  	status = ice_aq_get_link_info(pi, true, NULL, NULL);
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3237  	if (status)
092a33d4031205 Bruce Allan            2019-04-16  3238  		return status;
092a33d4031205 Bruce Allan            2019-04-16  3239  
092a33d4031205 Bruce Allan            2019-04-16  3240  	if (li->link_info & ICE_AQ_MEDIA_AVAILABLE) {
092a33d4031205 Bruce Allan            2019-04-16  3241  		struct ice_aqc_get_phy_caps_data *pcaps;
092a33d4031205 Bruce Allan            2019-04-16 @3242  		struct ice_hw *hw;
092a33d4031205 Bruce Allan            2019-04-16  3243  
092a33d4031205 Bruce Allan            2019-04-16  3244  		hw = pi->hw;
f8543c3af0dcb2 Maciej Fijalkowski     2024-02-22  3245  		pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
092a33d4031205 Bruce Allan            2019-04-16  3246  		if (!pcaps)
d54699e27d506f Tony Nguyen            2021-10-07  3247  			return -ENOMEM;
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3248  
d6730a871e68f1 Anirudh Venkataramanan 2021-03-25  3249  		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3250  					     pcaps, NULL);
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3251  
f8543c3af0dcb2 Maciej Fijalkowski     2024-02-22  3252  		kfree(pcaps);
092a33d4031205 Bruce Allan            2019-04-16  3253  	}
092a33d4031205 Bruce Allan            2019-04-16  3254  
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3255  	return status;
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3256  }
fcea6f3da546b9 Anirudh Venkataramanan 2018-03-20  3257  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
