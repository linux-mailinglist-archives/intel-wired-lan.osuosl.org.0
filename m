Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D36748A01
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 19:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A2AD41817;
	Wed,  5 Jul 2023 17:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A2AD41817
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688577436;
	bh=oBb6QMQNyJZii350TRFGc3ZTBvc6iylunQjVcFupS4o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q87h7rZS+jzPWD2YkZs1Y3Lfg9BM/2JPJRoqe99+RFhTfRnvCBy6Jy+AIPSVrg1U7
	 A2+Tnsq+npJ+xW5fpC7BC13pjqF3hMOlrNm0Rv2y0niwiCCGF4YZvdvphnKd9w8XSQ
	 mVXXRDXw/2B+esvudzqIaofoNUCOS45ezHuIwEsRHNV+9Tp1lyZPyhOS7HkC7K8YZ4
	 LmuVHbSQU4N0K1eIRr4bs/c75k0TJ/E30mhqYOdgQDe9iUFSXbpaFLpi2U0ZsMVZKZ
	 +lau7ASOCeTVJQCsEIv4O0204MLAFKM0AFj8vmyZSUQbYuUMylPstIg5z5vCksY9P6
	 tkUf6QjlnvUsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CxzNOiAtJb8s; Wed,  5 Jul 2023 17:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2992417FE;
	Wed,  5 Jul 2023 17:17:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2992417FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DFAB1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 17:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 119F8417FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 17:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 119F8417FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GuYj4rkFQMw0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 17:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC27B417FE
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC27B417FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 17:17:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="362267422"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="362267422"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 10:17:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="713260175"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="713260175"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 05 Jul 2023 10:17:03 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qH67h-0000jy-39;
 Wed, 05 Jul 2023 17:17:01 +0000
Date: Thu, 6 Jul 2023 01:16:31 +0800
From: kernel test robot <lkp@intel.com>
To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Message-ID: <202307060154.LjqekYIL-lkp@intel.com>
References: <20230704095915.9750-4-sriram.yagnaraman@est.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230704095915.9750-4-sriram.yagnaraman@est.tech>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688577427; x=1720113427;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0Dw+QDQUJHMAT3bZNG/T7PvNSKyBjgzzz7A5MOKCsdI=;
 b=HPnd0F9T2NXsLN8KBhamwj+ODLxQjhGMsMv6AmQhv92QFeFaiYnjBtMr
 Y0E0fGFKhyPnNIP7DvG5gdqLKHF/oWh3h9nc7a4J8UxOhyU69Zaudt8T+
 BCPUrlObdV72pIyhStkJzxJnuWFo2RuIWQ9jf4REvSeSjQrI2uz09zokn
 eoQ9dhdL9qwFev8ViCO30Oz3jP1hm+jQLedliw28p+neBXOi4gnJZnxP4
 dYvBjiwyrZhI4Fm6gn1AlcUTgBoxuL/IohHaBGf1N5hfAJg+Mbt0nD0Cp
 2yWzJnw/bSrJ+BRpShVhA+0nFh/GWVcnjoKiMM2MwVtqlUKc2vJEpiMAx
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HPnd0F9T
Subject: Re: [Intel-wired-lan] [PATCH 3/4] igb: add AF_XDP zero-copy Rx
 support
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sriram,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]
[also build test WARNING on tnguy-net-queue/dev-queue horms-ipvs/master linus/master v6.4 next-20230705]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sriram-Yagnaraman/igb-prepare-for-AF_XDP-zero-copy-support/20230704-180613
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230704095915.9750-4-sriram.yagnaraman%40est.tech
patch subject: [PATCH 3/4] igb: add AF_XDP zero-copy Rx support
config: openrisc-randconfig-r093-20230705 (https://download.01.org/0day-ci/archive/20230706/202307060154.LjqekYIL-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230706/202307060154.LjqekYIL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307060154.LjqekYIL-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/igb/igb_main.c:2016:32: sparse: sparse: incompatible types in conditional expression (different base types):
>> drivers/net/ethernet/intel/igb/igb_main.c:2016:32: sparse:    bool
>> drivers/net/ethernet/intel/igb/igb_main.c:2016:32: sparse:    void
   drivers/net/ethernet/intel/igb/igb_main.c:4920:27: sparse: sparse: incompatible types in conditional expression (different base types):
   drivers/net/ethernet/intel/igb/igb_main.c:4920:27: sparse:    bool
   drivers/net/ethernet/intel/igb/igb_main.c:4920:27: sparse:    void

vim +2016 drivers/net/ethernet/intel/igb/igb_main.c

  1984	
  1985	/**
  1986	 *  igb_configure - configure the hardware for RX and TX
  1987	 *  @adapter: private board structure
  1988	 **/
  1989	static void igb_configure(struct igb_adapter *adapter)
  1990	{
  1991		struct net_device *netdev = adapter->netdev;
  1992		int i;
  1993	
  1994		igb_get_hw_control(adapter);
  1995		igb_set_rx_mode(netdev);
  1996		igb_setup_tx_mode(adapter);
  1997	
  1998		igb_restore_vlan(adapter);
  1999	
  2000		igb_setup_tctl(adapter);
  2001		igb_setup_mrqc(adapter);
  2002		igb_setup_rctl(adapter);
  2003	
  2004		igb_nfc_filter_restore(adapter);
  2005		igb_configure_tx(adapter);
  2006		igb_configure_rx(adapter);
  2007	
  2008		igb_rx_fifo_flush_82575(&adapter->hw);
  2009	
  2010		/* call igb_desc_unused which always leaves
  2011		 * at least 1 descriptor unused to make sure
  2012		 * next_to_use != next_to_clean
  2013		 */
  2014		for (i = 0; i < adapter->num_rx_queues; i++) {
  2015			struct igb_ring *ring = adapter->rx_ring[i];
> 2016			ring->xsk_pool ?
  2017				igb_alloc_rx_buffers_zc(ring, igb_desc_unused(ring)) :
  2018				igb_alloc_rx_buffers(ring, igb_desc_unused(ring));
  2019		}
  2020	}
  2021	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
