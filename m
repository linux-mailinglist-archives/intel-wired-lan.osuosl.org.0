Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2159213747
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jul 2020 11:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4D1C86E9E;
	Fri,  3 Jul 2020 09:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y89Rg-tDlZan; Fri,  3 Jul 2020 09:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71AAB87D6B;
	Fri,  3 Jul 2020 09:09:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA92E1BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 09:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C5D9585A97
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 09:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SKOtMzu6NFll for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2020 09:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAD2E85A82
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 09:09:23 +0000 (UTC)
IronPort-SDR: CcJfHb89KRsMFxnhqll9Ymz8h8/TNzzHam/FZCgBXHhKdUQc5U6g+YqqdoCGXURVCnonTFZWLR
 iBewK+dnISJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="148644295"
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; 
 d="gz'50?scan'50,208,50";a="148644295"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 02:09:23 -0700
IronPort-SDR: D1moxyny3p1UqMm8YVu78eXL8WNuiPwzljrWBYqh4sekEppWld++libWvZxnBC12sy9R2qEFVy
 grw0fHkdj7+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; 
 d="gz'50?scan'50,208,50";a="426238438"
Received: from lkp-server01.sh.intel.com (HELO 6dc8ab148a5d) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 03 Jul 2020 02:09:21 -0700
Received: from kbuild by 6dc8ab148a5d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jrHhA-000093-E3; Fri, 03 Jul 2020 09:09:20 +0000
Date: Fri, 3 Jul 2020 17:08:21 +0800
From: kernel test robot <lkp@intel.com>
To: Qi Zhang <qi.z.zhang@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202007031723.hYsDk2tP%lkp@intel.com>
References: <20200702225805.32167-11-qi.z.zhang@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline
In-Reply-To: <20200702225805.32167-11-qi.z.zhang@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH S48 v3 10/14] ice: Support FDIR
 configure for AVF
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
Cc: kbuild-all@lists.01.org, qi.z.zhang@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Qi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on jkirsher-next-queue/dev-queue]
[cannot apply to v5.8-rc3 next-20200703]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Qi-Zhang/Support-Advanced-AVF-features/20200703-070522
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
config: m68k-randconfig-r026-20200702 (attached as .config)
compiler: m68k-linux-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=m68k 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/m68k/include/asm/bug.h:32,
                    from include/linux/bug.h:5,
                    from include/linux/thread_info.h:12,
                    from include/asm-generic/preempt.h:5,
                    from ./arch/m68k/include/generated/asm/preempt.h:1,
                    from include/linux/preempt.h:78,
                    from include/linux/spinlock.h:51,
                    from include/linux/seqlock.h:36,
                    from include/linux/time.h:6,
                    from include/linux/skbuff.h:15,
                    from include/linux/if_ether.h:19,
                    from include/linux/etherdevice.h:20,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:4:
   include/linux/dma-mapping.h: In function 'dma_map_resource':
   arch/m68k/include/asm/page_mm.h:169:49: warning: ordered comparison of pointer with null pointer [-Wextra]
     169 | #define virt_addr_valid(kaddr) ((void *)(kaddr) >= (void *)PAGE_OFFSET && (void *)(kaddr) < high_memory)
         |                                                 ^~
   include/asm-generic/bug.h:144:27: note: in definition of macro 'WARN_ON_ONCE'
     144 |  int __ret_warn_once = !!(condition);   \
         |                           ^~~~~~~~~
   arch/m68k/include/asm/page_mm.h:170:25: note: in expansion of macro 'virt_addr_valid'
     170 | #define pfn_valid(pfn)  virt_addr_valid(pfn_to_virt(pfn))
         |                         ^~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:352:19: note: in expansion of macro 'pfn_valid'
     352 |  if (WARN_ON_ONCE(pfn_valid(PHYS_PFN(phys_addr))))
         |                   ^~~~~~~~~
   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:11:
   include/linux/avf/virtchnl.h: At top level:
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:949:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     949 | VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:949:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_proto_hdrs' is not an integer constant
     949 | VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
         |                                 ^~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:957:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     957 | VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:957:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_cfg' is not an integer constant
     957 | VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
         |                                 ^~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:998:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     998 | VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:998:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_fdir_rule' is not an integer constant
     998 | VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
         |                                 ^~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1052:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1052 | VIRTCHNL_CHECK_STRUCT_LEN(2616, virtchnl_fdir_add);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1052:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_fdir_add' is not an integer constant
    1052 | VIRTCHNL_CHECK_STRUCT_LEN(2616, virtchnl_fdir_add);
         |                                 ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1154:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1154 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1154:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
    1154 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1204:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1204 | VIRTCHNL_CHECK_STRUCT_LEN(56, virtchnl_create_vport);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1204:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_create_vport' is not an integer constant
    1204 | VIRTCHNL_CHECK_STRUCT_LEN(56, virtchnl_create_vport);
         |                               ^~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1236:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1236 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1236:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
    1236 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1252:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1252 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1252:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
    1252 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1282:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1282 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1282:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
    1282 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1297:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1297 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1297:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
    1297 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1315:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1315 | VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_add_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1315:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_add_queues' is not an integer constant
    1315 | VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_add_queues);
         |                               ^~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1330:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1330 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_del_ena_dis_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1330:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_del_ena_dis_queues' is not an integer constant
    1330 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_del_ena_dis_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
--
   In file included from arch/m68k/include/asm/bug.h:32,
                    from include/linux/bug.h:5,
                    from include/linux/thread_info.h:12,
                    from include/asm-generic/preempt.h:5,
                    from ./arch/m68k/include/generated/asm/preempt.h:1,
                    from include/linux/preempt.h:78,
                    from include/linux/spinlock.h:51,
                    from include/linux/seqlock.h:36,
                    from include/linux/time.h:6,
                    from include/linux/skbuff.h:15,
                    from include/linux/if_ether.h:19,
                    from include/linux/etherdevice.h:20,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:4:
   include/linux/dma-mapping.h: In function 'dma_map_resource':
   arch/m68k/include/asm/page_mm.h:169:49: warning: ordered comparison of pointer with null pointer [-Wextra]
     169 | #define virt_addr_valid(kaddr) ((void *)(kaddr) >= (void *)PAGE_OFFSET && (void *)(kaddr) < high_memory)
         |                                                 ^~
   include/asm-generic/bug.h:144:27: note: in definition of macro 'WARN_ON_ONCE'
     144 |  int __ret_warn_once = !!(condition);   \
         |                           ^~~~~~~~~
   arch/m68k/include/asm/page_mm.h:170:25: note: in expansion of macro 'virt_addr_valid'
     170 | #define pfn_valid(pfn)  virt_addr_valid(pfn_to_virt(pfn))
         |                         ^~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:352:19: note: in expansion of macro 'pfn_valid'
     352 |  if (WARN_ON_ONCE(pfn_valid(PHYS_PFN(phys_addr))))
         |                   ^~~~~~~~~
   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:11:
   include/linux/avf/virtchnl.h: At top level:
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:949:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     949 | VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:949:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_proto_hdrs' is not an integer constant
     949 | VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
         |                                 ^~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:957:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     957 | VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:957:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_cfg' is not an integer constant
     957 | VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
         |                                 ^~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:998:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     998 | VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:998:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_fdir_rule' is not an integer constant
     998 | VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
         |                                 ^~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1052:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1052 | VIRTCHNL_CHECK_STRUCT_LEN(2616, virtchnl_fdir_add);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1052:33: error: enumerator value for 'virtchnl_static_assert_virtchnl_fdir_add' is not an integer constant
    1052 | VIRTCHNL_CHECK_STRUCT_LEN(2616, virtchnl_fdir_add);
         |                                 ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1154:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1154 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1154:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
    1154 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1204:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1204 | VIRTCHNL_CHECK_STRUCT_LEN(56, virtchnl_create_vport);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1204:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_create_vport' is not an integer constant
    1204 | VIRTCHNL_CHECK_STRUCT_LEN(56, virtchnl_create_vport);
         |                               ^~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1236:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1236 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1236:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
    1236 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1252:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1252 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1252:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
    1252 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1282:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1282 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1282:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
    1282 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1297:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1297 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1297:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
    1297 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1315:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1315 | VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_add_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1315:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_add_queues' is not an integer constant
    1315 | VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_add_queues);
         |                               ^~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:186:36: warning: division by zero [-Wdiv-by-zero]
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1330:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1330 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_del_ena_dis_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1330:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_del_ena_dis_queues' is not an integer constant
    1330 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_del_ena_dis_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:186:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     186 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
..

vim +/virtchnl_static_assert_virtchnl_fdir_rule +998 include/linux/avf/virtchnl.h

   997	
 > 998	VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
   999	
  1000	/* Status returned to VF after VF requests FDIR commands
  1001	 * VIRTCHNL_FDIR_SUCCESS
  1002	 * VF FDIR related request is successfully done by PF
  1003	 * The request can be OP_ADD/DEL.
  1004	 *
  1005	 * VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE
  1006	 * OP_ADD_FDIR_FILTER request is failed due to no Hardware resource.
  1007	 *
  1008	 * VIRTCHNL_FDIR_FAILURE_RULE_EXIST
  1009	 * OP_ADD_FDIR_FILTER request is failed due to the rule is already existed.
  1010	 *
  1011	 * VIRTCHNL_FDIR_FAILURE_RULE_CONFLICT
  1012	 * OP_ADD_FDIR_FILTER request is failed due to conflict with existing rule.
  1013	 *
  1014	 * VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST
  1015	 * OP_DEL_FDIR_FILTER request is failed due to this rule doesn't exist.
  1016	 *
  1017	 * VIRTCHNL_FDIR_FAILURE_RULE_INVALID
  1018	 * OP_ADD_FDIR_FILTER request is failed due to parameters validation
  1019	 * or HW doesn't support.
  1020	 *
  1021	 * VIRTCHNL_FDIR_FAILURE_RULE_TIMEOUT
  1022	 * OP_ADD/DEL_FDIR_FILTER request is failed due to timing out
  1023	 * for programming.
  1024	 */
  1025	enum virtchnl_fdir_prgm_status {
  1026		VIRTCHNL_FDIR_SUCCESS = 0,
  1027		VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE,
  1028		VIRTCHNL_FDIR_FAILURE_RULE_EXIST,
  1029		VIRTCHNL_FDIR_FAILURE_RULE_CONFLICT,
  1030		VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST,
  1031		VIRTCHNL_FDIR_FAILURE_RULE_INVALID,
  1032		VIRTCHNL_FDIR_FAILURE_RULE_TIMEOUT,
  1033	};
  1034	
  1035	/* VIRTCHNL_OP_ADD_FDIR_FILTER
  1036	 * VF sends this request to PF by filling out vsi_id,
  1037	 * validate_only and rule_cfg. PF will return flow_id
  1038	 * if the request is successfully done and return add_status to VF.
  1039	 */
  1040	struct virtchnl_fdir_add {
  1041		u16 vsi_id;  /* INPUT */
  1042		/*
  1043		 * 1 for validating a fdir rule, 0 for creating a fdir rule.
  1044		 * Validate and create share one ops: VIRTCHNL_OP_ADD_FDIR_FILTER.
  1045		 */
  1046		u16 validate_only; /* INPUT */
  1047		u32 flow_id;       /* OUTPUT */
  1048		struct virtchnl_fdir_rule rule_cfg; /* INPUT */
  1049		enum virtchnl_fdir_prgm_status status; /* OUTPUT */
  1050	};
  1051	
> 1052	VIRTCHNL_CHECK_STRUCT_LEN(2616, virtchnl_fdir_add);
  1053	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--+HP7ph2BbKc20aGI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
nLGlQe//AKyKUu9G1wEA

--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--+HP7ph2BbKc20aGI--
