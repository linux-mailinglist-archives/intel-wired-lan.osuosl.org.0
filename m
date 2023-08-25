Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F37E17891AD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Aug 2023 00:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90C7F42047;
	Fri, 25 Aug 2023 22:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90C7F42047
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693002218;
	bh=XuouAeGeov8Ccd1Mo1ISUjIPYlFQ4XZEnVy5BI5ciqo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7E6pslDgUFVP7FhcDrJJX9VYBrTk8b9Cs1sJXoIBqRFpJuV1WhplP/nIKQW1r2mBQ
	 GYiuKOodmv8wwYVxeihqGHsa3eAKYjXCFge6VKzNMa/A8ERqWmoVdk9zYM7QguW2Ze
	 1PJXBvFNsaD94Kv4TYhjYj56eYAEYwH96bZ/OB9QgK3lz6fM7jUYfMWesInMYqMziK
	 7ksCoRs2HKLRATEx9wFgGiGFNd7eV53vOgFc0IbBbDLcf159761FB4hFXc3etqKqoj
	 qVEfTNw/j8Gx3BGQpdmKeycGjOGoT6K/YM6XYwA1yjvs62TbwGji8r7GiENZwc2fmN
	 DY0O60hv/qa5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ah2qe4MQYnd1; Fri, 25 Aug 2023 22:23:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA95041FA4;
	Fri, 25 Aug 2023 22:23:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA95041FA4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0269F1BF5A5
 for <intel-wired-lan@osuosl.org>; Fri, 25 Aug 2023 22:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC30841EA0
 for <intel-wired-lan@osuosl.org>; Fri, 25 Aug 2023 22:23:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC30841EA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cFn15888cKWT for <intel-wired-lan@osuosl.org>;
 Fri, 25 Aug 2023 22:23:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57E2841BB7
 for <intel-wired-lan@osuosl.org>; Fri, 25 Aug 2023 22:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57E2841BB7
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="374789364"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="374789364"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:22:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="772640758"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="772640758"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 25 Aug 2023 15:22:09 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qZfBu-000445-0v;
 Fri, 25 Aug 2023 22:22:06 +0000
Date: Sat, 26 Aug 2023 06:21:58 +0800
From: kernel test robot <lkp@intel.com>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>, intel-wired-lan@osuosl.org
Message-ID: <202308260616.Sf8QzI7c-lkp@intel.com>
References: <20230823180633.2450617-3-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823180633.2450617-3-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693002210; x=1724538210;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JBnc0QG+1aFQQroftxh2ThC8FXzf6nI5IRhrwD0d8tY=;
 b=lEmdwXiPKXFxri5NySFuLNRSb3CK1qzyx36loHRHqTRhRQVD2mNqMIGB
 E+owAAWnR9gV3lZNYNZCTfyXw7dUK40DRGkcIIXjmEDCzqM0VJLmudqiD
 oi7Bfr0fwHIclOODBG/kfKyj3630AnQ0zDbgg3PkjEoTwjIO+1Aw9ODZc
 Wozg4wcrpCNOnPmuizwguHcEAeOiQABk6Btsq/+mxJ3ocNtuneb+4ETf2
 /Fs+jcI2ch4ASFrwd8qscPEJ+28Udp9MTmMqFpnpyTOruIdfezGkMBGsj
 XV+EkQtRNWFN2/MCuikyY0V5t6lm5rAaYsCA8D91P2wT2loEXvUReAzeC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lEmdwXiP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/8] ethtool: Add forced
 speed to supported link modes maps
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

Hi Pawel,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Pawel-Chmielewski/ice-Add-E830-device-IDs-MAC-type-and-registers/20230824-021235
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230823180633.2450617-3-pawel.chmielewski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v3 2/8] ethtool: Add forced speed to supported link modes maps
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20230826/202308260616.Sf8QzI7c-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230826/202308260616.Sf8QzI7c-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308260616.Sf8QzI7c-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/qlogic/qede/qede_ethtool.c: In function 'qede_set_link_ksettings':
>> drivers/net/ethernet/qlogic/qede/qede_ethtool.c:584:29: error: assignment to 'const struct qede_forced_speed_map *' from incompatible pointer type 'struct ethtool_forced_speed_map *' [-Werror=incompatible-pointer-types]
     584 |                         map = qede_forced_speed_maps + i;
         |                             ^
>> drivers/net/ethernet/qlogic/qede/qede_ethtool.c:586:47: error: invalid use of undefined type 'const struct qede_forced_speed_map'
     586 |                         if (base->speed != map->speed ||
         |                                               ^~
   drivers/net/ethernet/qlogic/qede/qede_ethtool.c:588:53: error: invalid use of undefined type 'const struct qede_forced_speed_map'
     588 |                                                  map->caps))
         |                                                     ^~
   drivers/net/ethernet/qlogic/qede/qede_ethtool.c:592:70: error: invalid use of undefined type 'const struct qede_forced_speed_map'
     592 |                                      current_link.supported_caps, map->caps);
         |                                                                      ^~
   cc1: some warnings being treated as errors


vim +584 drivers/net/ethernet/qlogic/qede/qede_ethtool.c

133fac0eedc355 Sudarsana Kalluru            2015-10-26  546  
054c67d1c82afd Sudarsana Reddy Kalluru      2016-08-09  547  static int qede_set_link_ksettings(struct net_device *dev,
054c67d1c82afd Sudarsana Reddy Kalluru      2016-08-09  548  				   const struct ethtool_link_ksettings *cmd)
133fac0eedc355 Sudarsana Kalluru            2015-10-26  549  {
054c67d1c82afd Sudarsana Reddy Kalluru      2016-08-09  550  	const struct ethtool_link_settings *base = &cmd->base;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  551  	struct qede_dev *edev = netdev_priv(dev);
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  552  	const struct qede_forced_speed_map *map;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  553  	struct qed_link_output current_link;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  554  	struct qed_link_params params;
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  555  	u32 i;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  556  
fe7cd2bfdac4d8 Yuval Mintz                  2016-04-22  557  	if (!edev->ops || !edev->ops->common->can_link_change(edev->cdev)) {
054c67d1c82afd Sudarsana Reddy Kalluru      2016-08-09  558  		DP_INFO(edev, "Link settings are not allowed to be changed\n");
133fac0eedc355 Sudarsana Kalluru            2015-10-26  559  		return -EOPNOTSUPP;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  560  	}
133fac0eedc355 Sudarsana Kalluru            2015-10-26  561  	memset(&current_link, 0, sizeof(current_link));
133fac0eedc355 Sudarsana Kalluru            2015-10-26  562  	memset(&params, 0, sizeof(params));
133fac0eedc355 Sudarsana Kalluru            2015-10-26  563  	edev->ops->common->get_link(edev->cdev, &current_link);
133fac0eedc355 Sudarsana Kalluru            2015-10-26  564  
133fac0eedc355 Sudarsana Kalluru            2015-10-26  565  	params.override_flags |= QED_LINK_OVERRIDE_SPEED_ADV_SPEEDS;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  566  	params.override_flags |= QED_LINK_OVERRIDE_SPEED_AUTONEG;
bdb5d8ec47611c Alexander Lobakin            2020-07-20  567  
054c67d1c82afd Sudarsana Reddy Kalluru      2016-08-09  568  	if (base->autoneg == AUTONEG_ENABLE) {
bdb5d8ec47611c Alexander Lobakin            2020-07-20  569  		if (!phylink_test(current_link.supported_caps, Autoneg)) {
161adb046b9119 sudarsana.kalluru@cavium.com 2017-05-04  570  			DP_INFO(edev, "Auto negotiation is not supported\n");
161adb046b9119 sudarsana.kalluru@cavium.com 2017-05-04  571  			return -EOPNOTSUPP;
161adb046b9119 sudarsana.kalluru@cavium.com 2017-05-04  572  		}
161adb046b9119 sudarsana.kalluru@cavium.com 2017-05-04  573  
133fac0eedc355 Sudarsana Kalluru            2015-10-26  574  		params.autoneg = true;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  575  		params.forced_speed = 0;
bdb5d8ec47611c Alexander Lobakin            2020-07-20  576  
bdb5d8ec47611c Alexander Lobakin            2020-07-20  577  		linkmode_copy(params.adv_speeds, cmd->link_modes.advertising);
133fac0eedc355 Sudarsana Kalluru            2015-10-26  578  	} else {		/* forced speed */
133fac0eedc355 Sudarsana Kalluru            2015-10-26  579  		params.override_flags |= QED_LINK_OVERRIDE_SPEED_FORCED_SPEED;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  580  		params.autoneg = false;
054c67d1c82afd Sudarsana Reddy Kalluru      2016-08-09  581  		params.forced_speed = base->speed;
bdb5d8ec47611c Alexander Lobakin            2020-07-20  582  
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  583  		for (i = 0; i < ARRAY_SIZE(qede_forced_speed_maps); i++) {
1d4e4ecccb1144 Alexander Lobakin            2020-07-20 @584  			map = qede_forced_speed_maps + i;
bdb5d8ec47611c Alexander Lobakin            2020-07-20  585  
1d4e4ecccb1144 Alexander Lobakin            2020-07-20 @586  			if (base->speed != map->speed ||
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  587  			    !linkmode_intersects(current_link.supported_caps,
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  588  						 map->caps))
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  589  				continue;
bdb5d8ec47611c Alexander Lobakin            2020-07-20  590  
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  591  			linkmode_and(params.adv_speeds,
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  592  				     current_link.supported_caps, map->caps);
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  593  			goto set_link;
bdb5d8ec47611c Alexander Lobakin            2020-07-20  594  		}
bdb5d8ec47611c Alexander Lobakin            2020-07-20  595  
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  596  		DP_INFO(edev, "Unsupported speed %u\n", base->speed);
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  597  		return -EINVAL;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  598  	}
133fac0eedc355 Sudarsana Kalluru            2015-10-26  599  
1d4e4ecccb1144 Alexander Lobakin            2020-07-20  600  set_link:
133fac0eedc355 Sudarsana Kalluru            2015-10-26  601  	params.link_up = true;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  602  	edev->ops->common->set_link(edev->cdev, &params);
133fac0eedc355 Sudarsana Kalluru            2015-10-26  603  
133fac0eedc355 Sudarsana Kalluru            2015-10-26  604  	return 0;
133fac0eedc355 Sudarsana Kalluru            2015-10-26  605  }
133fac0eedc355 Sudarsana Kalluru            2015-10-26  606  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
