Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0CA520D2C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 07:20:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FB9460B33;
	Tue, 10 May 2022 05:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PdlSKMRxIRDE; Tue, 10 May 2022 05:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D52A960ABB;
	Tue, 10 May 2022 05:20:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C83D01BF2CE
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 05:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C07B460ABB
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 05:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PwsPXZJoY4lx for <intel-wired-lan@osuosl.org>;
 Tue, 10 May 2022 05:20:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 750FE60AB1
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 05:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652160038; x=1683696038;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3D1KkDB8H2YeX+I6eWdOKF6XIFgljL4fDHk1tvjSEhI=;
 b=cXxcHalOEYen0qZSiJqSRL4C9FbWlYoxvyPv7ZAryseH7LbRaFyJPYc9
 P/d/ayEW8ubtjid2JLX5D+oyyDdbJtAschSmv3ZD3ZujcfefGZDjy8zRM
 RJCuP4kho9VjVXEkUW01oko6Rvw7UfBrpZpHKt3h0uO6JLemBTYNSldjY
 4ukmMN1hKFnFszNdqsfNxHbLjfgAsQ5wE8BECFyPbmSZHjxssOGw7flLm
 Wvp/T0/KgmaBu5XZLIC9PBl7cQtNyWoL8Zclt/tlVIwUEWJQiNKBmVlSX
 +ACwfVPqqyxagj6N4eqqdQ4zDfDvboQg9cvymc7d05h3tXX5Cph6uNY4v g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="269402239"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="269402239"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 22:20:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="710857935"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 09 May 2022 22:20:36 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1noIIV-000HN2-U5;
 Tue, 10 May 2022 05:20:35 +0000
Date: Tue, 10 May 2022 13:20:32 +0800
From: kernel test robot <lkp@intel.com>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
Message-ID: <202205101357.46oBdnm7-lkp@intel.com>
References: <20220509010847.17492-1-muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220509010847.17492-1-muhammad.husaini.zulkifli@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 muhammad.husaini.zulkifli@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Muhammad,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tnguy-next-queue/dev-queue]
[also build test WARNING on v5.18-rc6 next-20220509]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Muhammad-Husaini-Zulkifli/igc-Correct-the-launchtime-offset/20220509-091028
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
config: arm64-allmodconfig (https://download.01.org/0day-ci/archive/20220510/202205101357.46oBdnm7-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 3abb68a626160e019c30a4860e569d7bc75e486a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/819e4648eaccdeaf40643fd0fe7cd735a584c251
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Muhammad-Husaini-Zulkifli/igc-Correct-the-launchtime-offset/20220509-091028
        git checkout 819e4648eaccdeaf40643fd0fe7cd735a584c251
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash arch/arm64/kernel/ drivers/net/ethernet/intel/igc/ drivers/rtc/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/igc/igc_tsn.c:102:2: warning: variable 'tx_offset' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
           default:
           ^~~~~~~
   drivers/net/ethernet/intel/igc/igc_tsn.c:106:22: note: uninitialized use occurs here
           wr32(IGC_GTXOFFSET, tx_offset);
                               ^~~~~~~~~
   drivers/net/ethernet/intel/igc/igc_regs.h:310:10: note: expanded from macro 'wr32'
           writel((val), &hw_addr[(reg)]); \
                   ^~~
   arch/arm64/include/asm/io.h:142:52: note: expanded from macro 'writel'
   #define writel(v,c)             ({ __iowmb(); writel_relaxed((v),(c)); })
                                                                 ^
   arch/arm64/include/asm/io.h:127:74: note: expanded from macro 'writel_relaxed'
   #define writel_relaxed(v,c)     ((void)__raw_writel((__force u32)cpu_to_le32(v),(c)))
                                                                                ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__cpu_to_le32'
   #define __cpu_to_le32(x) ((__force __le32)(__u32)(x))
                                                     ^
   drivers/net/ethernet/intel/igc/igc_tsn.c:87:15: note: initialize the variable 'tx_offset' to silence this warning
           u16 tx_offset;
                        ^
                         = 0
   1 warning generated.


vim +/tx_offset +102 drivers/net/ethernet/intel/igc/igc_tsn.c

    81	
    82	static int igc_tsn_enable_offload(struct igc_adapter *adapter)
    83	{
    84		struct igc_hw *hw = &adapter->hw;
    85		u32 tqavctrl, baset_l, baset_h;
    86		u32 sec, nsec, cycle;
    87		u16 tx_offset;
    88		ktime_t base_time, systim;
    89		int i;
    90	
    91		cycle = adapter->cycle_time;
    92		base_time = adapter->base_time;
    93	
    94		switch (adapter->link_speed) {
    95		/* TODO: This code use same transmit offset across all link speed as for now. */
    96		case SPEED_10:
    97		case SPEED_100:
    98		case SPEED_1000:
    99		case SPEED_2500:
   100			tx_offset = 1500;
   101			break;
 > 102		default:
   103			break;
   104		}
   105	
   106		wr32(IGC_GTXOFFSET, tx_offset);
   107		wr32(IGC_TSAUXC, 0);
   108		wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
   109		wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
   110	
   111		tqavctrl = rd32(IGC_TQAVCTRL);
   112		tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
   113		wr32(IGC_TQAVCTRL, tqavctrl);
   114	
   115		wr32(IGC_QBVCYCLET_S, cycle);
   116		wr32(IGC_QBVCYCLET, cycle);
   117	
   118		for (i = 0; i < adapter->num_tx_queues; i++) {
   119			struct igc_ring *ring = adapter->tx_ring[i];
   120			u32 txqctl = 0;
   121			u16 cbs_value;
   122			u32 tqavcc;
   123	
   124			wr32(IGC_STQT(i), ring->start_time);
   125			wr32(IGC_ENDQT(i), ring->end_time);
   126	
   127			if (adapter->base_time) {
   128				/* If we have a base_time we are in "taprio"
   129				 * mode and we need to be strict about the
   130				 * cycles: only transmit a packet if it can be
   131				 * completed during that cycle.
   132				 */
   133				txqctl |= IGC_TXQCTL_STRICT_CYCLE |
   134					IGC_TXQCTL_STRICT_END;
   135			}
   136	
   137			if (ring->launchtime_enable)
   138				txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
   139	
   140			/* Skip configuring CBS for Q2 and Q3 */
   141			if (i > 1)
   142				goto skip_cbs;
   143	
   144			if (ring->cbs_enable) {
   145				if (i == 0)
   146					txqctl |= IGC_TXQCTL_QAV_SEL_CBS0;
   147				else
   148					txqctl |= IGC_TXQCTL_QAV_SEL_CBS1;
   149	
   150				/* According to i225 datasheet section 7.5.2.7, we
   151				 * should set the 'idleSlope' field from TQAVCC
   152				 * register following the equation:
   153				 *
   154				 * value = link-speed   0x7736 * BW * 0.2
   155				 *         ---------- *  -----------------         (E1)
   156				 *          100Mbps            2.5
   157				 *
   158				 * Note that 'link-speed' is in Mbps.
   159				 *
   160				 * 'BW' is the percentage bandwidth out of full
   161				 * link speed which can be found with the
   162				 * following equation. Note that idleSlope here
   163				 * is the parameter from this function
   164				 * which is in kbps.
   165				 *
   166				 *     BW =     idleSlope
   167				 *          -----------------                      (E2)
   168				 *          link-speed * 1000
   169				 *
   170				 * That said, we can come up with a generic
   171				 * equation to calculate the value we should set
   172				 * it TQAVCC register by replacing 'BW' in E1 by E2.
   173				 * The resulting equation is:
   174				 *
   175				 * value = link-speed * 0x7736 * idleSlope * 0.2
   176				 *         -------------------------------------   (E3)
   177				 *             100 * 2.5 * link-speed * 1000
   178				 *
   179				 * 'link-speed' is present in both sides of the
   180				 * fraction so it is canceled out. The final
   181				 * equation is the following:
   182				 *
   183				 *     value = idleSlope * 61036
   184				 *             -----------------                   (E4)
   185				 *                  2500000
   186				 *
   187				 * NOTE: For i225, given the above, we can see
   188				 *       that idleslope is represented in
   189				 *       40.959433 kbps units by the value at
   190				 *       the TQAVCC register (2.5Gbps / 61036),
   191				 *       which reduces the granularity for
   192				 *       idleslope increments.
   193				 *
   194				 * In i225 controller, the sendSlope and loCredit
   195				 * parameters from CBS are not configurable
   196				 * by software so we don't do any
   197				 * 'controller configuration' in respect to
   198				 * these parameters.
   199				 */
   200				cbs_value = DIV_ROUND_UP_ULL(ring->idleslope
   201							     * 61036ULL, 2500000);
   202	
   203				tqavcc = rd32(IGC_TQAVCC(i));
   204				tqavcc &= ~IGC_TQAVCC_IDLESLOPE_MASK;
   205				tqavcc |= cbs_value | IGC_TQAVCC_KEEP_CREDITS;
   206				wr32(IGC_TQAVCC(i), tqavcc);
   207	
   208				wr32(IGC_TQAVHC(i),
   209				     0x80000000 + ring->hicredit * 0x7735);
   210			} else {
   211				/* Disable any CBS for the queue */
   212				txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);
   213	
   214				/* Set idleSlope to zero. */
   215				tqavcc = rd32(IGC_TQAVCC(i));
   216				tqavcc &= ~(IGC_TQAVCC_IDLESLOPE_MASK |
   217					    IGC_TQAVCC_KEEP_CREDITS);
   218				wr32(IGC_TQAVCC(i), tqavcc);
   219	
   220				/* Set hiCredit to zero. */
   221				wr32(IGC_TQAVHC(i), 0);
   222			}
   223	skip_cbs:
   224			wr32(IGC_TXQCTL(i), txqctl);
   225		}
   226	
   227		nsec = rd32(IGC_SYSTIML);
   228		sec = rd32(IGC_SYSTIMH);
   229	
   230		systim = ktime_set(sec, nsec);
   231	
   232		if (ktime_compare(systim, base_time) > 0) {
   233			s64 n;
   234	
   235			n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
   236			base_time = ktime_add_ns(base_time, (n + 1) * cycle);
   237		}
   238	
   239		baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
   240	
   241		wr32(IGC_BASET_H, baset_h);
   242		wr32(IGC_BASET_L, baset_l);
   243	
   244		return 0;
   245	}
   246	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
