Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7575B73A648
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 18:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19ED74185F;
	Thu, 22 Jun 2023 16:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19ED74185F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687452214;
	bh=4BHAeRoiS4HmB9p+igyvtO3TFhfyvHP+wvo3EcZFTKQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SS2pAAslXVWpkae6XxSl27fapuqZVX9K2+fHZsycVzlZCotSpePd/qEmM/97btEB1
	 4OIHRQSxLl1SWFCVs/swHvNLXiMtud96FZlVIFXhwwIkuZg4q3cGbvSlZBeR9sYa7a
	 2ODFXd5U8w+ZcTaZ3q0l/jQ0w5/nLxEW/VUpvsXo5d6N8gxYZdfht+qCxue69To99m
	 ugFZmq4+VVSGFDNIkFO7qHoCUgXoaxTyb8IIurF/3bwNt+SeYH6Gg2yjFa5qgHiRmH
	 o0cfycr3j+15HqxSIzbmA0XEPt0d/N03YNq3gBtivIDOOImrAF7pkVPGmGWZJLF/Sn
	 iy2rJ51JbLsPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9COpyb_h5_iX; Thu, 22 Jun 2023 16:43:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A60E41795;
	Thu, 22 Jun 2023 16:43:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A60E41795
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B39A11BF484
 for <intel-wired-lan@osuosl.org>; Thu, 22 Jun 2023 16:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A13641795
 for <intel-wired-lan@osuosl.org>; Thu, 22 Jun 2023 16:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A13641795
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WAxIbuFd1MP8 for <intel-wired-lan@osuosl.org>;
 Thu, 22 Jun 2023 16:43:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99D04402D1
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99D04402D1
 for <intel-wired-lan@osuosl.org>; Thu, 22 Jun 2023 16:43:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="340146676"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="340146676"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 09:43:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="714963694"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="714963694"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2023 09:42:44 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qCNON-0007h3-1z;
 Thu, 22 Jun 2023 16:42:43 +0000
Date: Fri, 23 Jun 2023 00:42:32 +0800
From: kernel test robot <lkp@intel.com>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
Message-ID: <202306230056.OGrsvyKV-lkp@intel.com>
References: <20230622133544.5531-1-muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622133544.5531-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687452204; x=1718988204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=y6vDTdkuslRBNW+Rfs2oBxbQ8aTcwlPs8ndExLmrHCI=;
 b=IskMMJv2mnNQ98kRGQo9qUym968zo+OfQu5dYGJ1DeySEHdb9uzOmZP0
 RiGTdLZ8RnkkfFS8UUAkkvCTeylY6OA6n5rxLf8YI1e9FbeHxxn9XHJmy
 WS2n2R5+/wI43hr+lDAlt46Ni6RI6uWVXstBMkpbn89/Y27U6NKxrp52h
 LBJql7jJ6kulVeANKCLfAi0+RNmBonWwOIlfRLtquVrSeTahbzIOJ6kcU
 sLJFZ7I4qwo3IBqBxACJCi0k2HbIlqVvctjRFbednWc2IyFBUF3EX9dLb
 PeTOu1yhRVSv6FjgIDpmO2kiWeF3D60sDCbktRm6yU78DIUGR1iI190VV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IskMMJv2
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix Kernel Panic
 during ndo_tx_timeout callback
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
Cc: anthony.l.nguyen@intel.com, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Muhammad,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Muhammad-Husaini-Zulkifli/igc-Fix-Kernel-Panic-during-ndo_tx_timeout-callback/20230622-224252
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230622133544.5531-1-muhammad.husaini.zulkifli%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix Kernel Panic during ndo_tx_timeout callback
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20230623/202306230056.OGrsvyKV-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230623/202306230056.OGrsvyKV-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306230056.OGrsvyKV-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/igc/igc_main.c:319:6: warning: no previous prototype for 'igc_disable_tx_ring_hw' [-Wmissing-prototypes]
     319 | void igc_disable_tx_ring_hw(struct igc_ring *ring)
         |      ^~~~~~~~~~~~~~~~~~~~~~


vim +/igc_disable_tx_ring_hw +319 drivers/net/ethernet/intel/igc/igc_main.c

   318	
 > 319	void igc_disable_tx_ring_hw(struct igc_ring *ring)
   320	{
   321		struct igc_hw *hw = &ring->q_vector->adapter->hw;
   322		u8 idx = ring->reg_idx;
   323		u32 txdctl;
   324	
   325		txdctl = rd32(IGC_TXDCTL(idx));
   326		txdctl &= ~IGC_TXDCTL_QUEUE_ENABLE;
   327		txdctl |= IGC_TXDCTL_SWFLUSH;
   328		wr32(IGC_TXDCTL(idx), txdctl);
   329	}
   330	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
