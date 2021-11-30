Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1237462947
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 01:48:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5120980C77;
	Tue, 30 Nov 2021 00:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ILKYL0dbWkPC; Tue, 30 Nov 2021 00:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28E29801DE;
	Tue, 30 Nov 2021 00:48:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47EFD1BF989
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43A5B60D54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:48:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id azwUsjBXFn_d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 00:48:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11F836058F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:48:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="234834374"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="234834374"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 16:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="459386538"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 29 Nov 2021 16:48:25 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mrrJo-000CYF-Ll; Tue, 30 Nov 2021 00:48:24 +0000
Date: Tue, 30 Nov 2021 08:47:41 +0800
From: kernel test robot <lkp@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202111300803.mYiFKuhQ-lkp@intel.com>
References: <20211129192300.14188-3-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129192300.14188-3-anthony.l.nguyen@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation
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

Hi Tony,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tnguy-next-queue/dev-queue]
[also build test ERROR on v5.16-rc3 next-20211129]
[cannot apply to net-next/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Tony-Nguyen/iavf-Add-support-for-VIRTCHNL_VF_OFFLOAD_VLAN_V2/20211130-032607
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20211130/202111300803.mYiFKuhQ-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/7764feeed253d22b477b98db13e41782ae11a902
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Tony-Nguyen/iavf-Add-support-for-VIRTCHNL_VF_OFFLOAD_VLAN_V2/20211130-032607
        git checkout 7764feeed253d22b477b98db13e41782ae11a902
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/iavf/iavf_main.c: In function 'iavf_parse_vf_resource_msg':
>> drivers/net/ethernet/intel/iavf/iavf_main.c:1859:35: error: 'IAVF_FLAG_REINIT_MSIX_NEEDED' undeclared (first use in this function); did you mean 'IAVF_FLAG_REINIT_ITR_NEEDED'?
    1859 |                 adapter->flags |= IAVF_FLAG_REINIT_MSIX_NEEDED;
         |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                                   IAVF_FLAG_REINIT_ITR_NEEDED
   drivers/net/ethernet/intel/iavf/iavf_main.c:1859:35: note: each undeclared identifier is reported only once for each function it appears in
   In file included from include/linux/perf_event.h:25,
                    from include/linux/trace_events.h:10,
                    from include/trace/trace_events.h:21,
                    from include/trace/define_trace.h:102,
                    from drivers/net/ethernet/intel/iavf/iavf_trace.h:209,
                    from drivers/net/ethernet/intel/iavf/iavf_main.c:12:
   At top level:
   arch/arc/include/asm/perf_event.h:126:27: warning: 'arc_pmu_cache_map' defined but not used [-Wunused-const-variable=]
     126 | static const unsigned int arc_pmu_cache_map[C(MAX)][C(OP_MAX)][C(RESULT_MAX)] = {
         |                           ^~~~~~~~~~~~~~~~~
   arch/arc/include/asm/perf_event.h:91:27: warning: 'arc_pmu_ev_hw_map' defined but not used [-Wunused-const-variable=]
      91 | static const char * const arc_pmu_ev_hw_map[] = {
         |                           ^~~~~~~~~~~~~~~~~


vim +1859 drivers/net/ethernet/intel/iavf/iavf_main.c

  1830	
  1831	/**
  1832	 * iavf_parse_vf_resource_msg - parse response from VIRTCHNL_OP_GET_VF_RESOURCES
  1833	 * @adapter: board private structure
  1834	 */
  1835	int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
  1836	{
  1837		int i, num_req_queues = adapter->num_req_queues;
  1838		struct iavf_vsi *vsi = &adapter->vsi;
  1839	
  1840		for (i = 0; i < adapter->vf_res->num_vsis; i++) {
  1841			if (adapter->vf_res->vsi_res[i].vsi_type == VIRTCHNL_VSI_SRIOV)
  1842				adapter->vsi_res = &adapter->vf_res->vsi_res[i];
  1843		}
  1844		if (!adapter->vsi_res) {
  1845			dev_err(&adapter->pdev->dev, "No LAN VSI found\n");
  1846			return -ENODEV;
  1847		}
  1848	
  1849		if (num_req_queues &&
  1850		    num_req_queues > adapter->vsi_res->num_queue_pairs) {
  1851			/* Problem.  The PF gave us fewer queues than what we had
  1852			 * negotiated in our request.  Need a reset to see if we can't
  1853			 * get back to a working state.
  1854			 */
  1855			dev_err(&adapter->pdev->dev,
  1856				"Requested %d queues, but PF only gave us %d.\n",
  1857				num_req_queues,
  1858				adapter->vsi_res->num_queue_pairs);
> 1859			adapter->flags |= IAVF_FLAG_REINIT_MSIX_NEEDED;
  1860			adapter->num_req_queues = adapter->vsi_res->num_queue_pairs;
  1861			iavf_schedule_reset(adapter);
  1862	
  1863			return -EAGAIN;
  1864		}
  1865		adapter->num_req_queues = 0;
  1866		adapter->vsi.id = adapter->vsi_res->vsi_id;
  1867	
  1868		adapter->vsi.back = adapter;
  1869		adapter->vsi.base_vector = 1;
  1870		adapter->vsi.work_limit = IAVF_DEFAULT_IRQ_WORK;
  1871		vsi->netdev = adapter->netdev;
  1872		vsi->qs_handle = adapter->vsi_res->qset_handle;
  1873		if (adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
  1874			adapter->rss_key_size = adapter->vf_res->rss_key_size;
  1875			adapter->rss_lut_size = adapter->vf_res->rss_lut_size;
  1876		} else {
  1877			adapter->rss_key_size = IAVF_HKEY_ARRAY_SIZE;
  1878			adapter->rss_lut_size = IAVF_HLUT_ARRAY_SIZE;
  1879		}
  1880	
  1881		return 0;
  1882	}
  1883	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
