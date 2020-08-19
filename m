Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE8E24A615
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 20:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1607875BF;
	Wed, 19 Aug 2020 18:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4ElCBOGR9RK; Wed, 19 Aug 2020 18:37:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C6CC8761D;
	Wed, 19 Aug 2020 18:37:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA13B1BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 18:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB2C787E17
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 18:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uY7OKnEkvz7k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 18:37:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4C9F387CDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 18:37:27 +0000 (UTC)
IronPort-SDR: MXDZMHqtV72BiLO7+WNcpCrxqzEKzlfqYmx5tOP+d29fzAVm9eSFHXltbr9LWsuno5Cjd9vRY3
 udZLLOsa0vmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="154442005"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; 
 d="gz'50?scan'50,208,50";a="154442005"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 11:37:26 -0700
IronPort-SDR: hun0FPP6mT14SakPTS1PVU1mNIrwqfKHvexJL5ispKnfgm35j9qU8wZXm4OVo/PIeOAZ6fgKvr
 vrFB3S5eADtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; 
 d="gz'50?scan'50,208,50";a="310865172"
Received: from lkp-server01.sh.intel.com (HELO 4cedd236b688) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 19 Aug 2020 11:37:22 -0700
Received: from kbuild by 4cedd236b688 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k8Sxd-0000So-FW; Wed, 19 Aug 2020 18:37:21 +0000
Date: Thu, 20 Aug 2020 02:37:04 +0800
From: kernel test robot <lkp@intel.com>
To: Alice Michael <alice.michael@intel.com>
Message-ID: <202008200201.ALXaBjhf%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE 1/15]
 include/linux/avf/virtchnl.h:809:31: error: enumerator value for
 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer
 constant
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
Cc: kbuild-all@lists.01.org, Madhu Chittim <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>,
 Pavan Kumar Linga <Pavan.Kumar.Linga@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git 100GbE
head:   411736a35504785d139d04e0a72222d6e4d1c749
commit: d3c6232fa2b0ca4823ca335fc3df7c7f99026727 [1/15] virtchnl: Extend AVF ops
config: i386-randconfig-a014-20200818 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
reproduce (this is a W=1 build):
        git checkout d3c6232fa2b0ca4823ca335fc3df7c7f99026727
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:11:
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:809:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:891:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:907:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:937:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:952:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         |                               ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
--
   In file included from drivers/net/ethernet/intel/ice/ice.h:37,
                    from drivers/net/ethernet/intel/ice/ice_common.h:7,
                    from drivers/net/ethernet/intel/ice/ice_flex_pipe.c:4:
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:809:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:891:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:907:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:937:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:952:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         |                               ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   In file included from drivers/net/ethernet/intel/ice/ice_flex_pipe.c:6:
   drivers/net/ethernet/intel/ice/ice_flex_pipe.c: In function 'ice_free_flow_profs':
   drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
     197 | #define ICE_FLOW_ENTRY_HNDL(e) ((u64)e)
         |                                 ^
   drivers/net/ethernet/intel/ice/ice_flex_pipe.c:2921:9: note: in expansion of macro 'ICE_FLOW_ENTRY_HNDL'
    2921 |         ICE_FLOW_ENTRY_HNDL(e));
         |         ^~~~~~~~~~~~~~~~~~~
--
   In file included from drivers/net/ethernet/intel/ice/ice.h:37,
                    from drivers/net/ethernet/intel/ice/ice_common.h:7,
                    from drivers/net/ethernet/intel/ice/ice_flow.c:4:
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:809:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:891:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:907:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:937:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:952:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         |                               ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   In file included from drivers/net/ethernet/intel/ice/ice_flow.c:5:
   drivers/net/ethernet/intel/ice/ice_flow.c: In function 'ice_flow_add_entry':
   drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
     197 | #define ICE_FLOW_ENTRY_HNDL(e) ((u64)e)
         |                                 ^
   drivers/net/ethernet/intel/ice/ice_flow.c:946:13: note: in expansion of macro 'ICE_FLOW_ENTRY_HNDL'
     946 |  *entry_h = ICE_FLOW_ENTRY_HNDL(e);
         |             ^~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_flow.c: In function 'ice_flow_rem_entry':
   drivers/net/ethernet/intel/ice/ice_flow.h:198:32: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
     198 | #define ICE_FLOW_ENTRY_PTR(h) ((struct ice_flow_entry *)(h))
         |                                ^
   drivers/net/ethernet/intel/ice/ice_flow.c:974:10: note: in expansion of macro 'ICE_FLOW_ENTRY_PTR'
     974 |  entry = ICE_FLOW_ENTRY_PTR(entry_h);
         |          ^~~~~~~~~~~~~~~~~~
--
   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:11:
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:809:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
     809 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:891:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
     891 | VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:907:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
     907 | VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:937:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
     937 | VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
         |                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:952:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
     952 | VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         |                               ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   In file included from drivers/net/ethernet/intel/i40e/i40e_trace.h:209,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:21:
   include/trace/define_trace.h:95:42: fatal error: ./i40e_trace.h: No such file or directory
      95 | #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
         |                                          ^
   compilation terminated.
..

# https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/?id=d3c6232fa2b0ca4823ca335fc3df7c7f99026727
git remote add jkirsher-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git
git fetch --no-tags jkirsher-next-queue 100GbE
git checkout d3c6232fa2b0ca4823ca335fc3df7c7f99026727
vim +/virtchnl_static_assert_virtchnl_get_capabilities +809 include/linux/avf/virtchnl.h

   808	
 > 809	VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
   810	
   811	/* structure to specify a chunk of contiguous queues */
   812	struct virtchnl_queue_chunk {
   813		enum virtchnl_queue_type type;
   814		u16 start_queue_id;
   815		u16 num_queues;
   816	};
   817	
   818	VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
   819	
   820	/* structure to specify several chunks of contiguous queues */
   821	struct virtchnl_queue_chunks {
   822		u16 num_chunks;
   823		u16 rsvd;
   824		struct virtchnl_queue_chunk chunks[1];
   825	};
   826	
   827	VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_chunks);
   828	
   829	/* VIRTCHNL_OP_CREATE_VPORT
   830	 * PF sends this message to CP to create a vport by filling in the first 8
   831	 * fields of virtchnl_create_vport structure (vport type, tx, rx queue models
   832	 * and desired number of queues and vectors). CP responds with the updated
   833	 * virtchnl_create_vport structure containing the number of assigned queues,
   834	 * vectors, vport id, max mtu, default mac addr followed by chunks which in turn
   835	 * will have an array of num_chunks entries of virtchnl_queue_chunk structures.
   836	 */
   837	struct virtchnl_create_vport {
   838		enum virtchnl_vport_type vport_type;
   839		/* single or split */
   840		enum virtchnl_queue_model txq_model;
   841		/* single or split */
   842		enum virtchnl_queue_model rxq_model;
   843		u16 num_tx_q;
   844		/* valid only if txq_model is split Q */
   845		u16 num_tx_complq;
   846		u16 num_rx_q;
   847		/* valid only if rxq_model is split Q */
   848		u16 num_rx_bufq;
   849		u16 vport_id;
   850		u16 max_mtu;
   851		u8 default_mac_addr[ETH_ALEN];
   852		enum virtchnl_rss_algorithm rss_algorithm;
   853		u16 rss_key_size;
   854		u16 rss_lut_size;
   855		u16 qset_handle;
   856		struct virtchnl_queue_chunks chunks;
   857	};
   858	
   859	VIRTCHNL_CHECK_STRUCT_LEN(56, virtchnl_create_vport);
   860	
   861	/* VIRTCHNL_OP_DESTROY_VPORT
   862	 * VIRTCHNL_OP_ENABLE_VPORT
   863	 * VIRTCHNL_OP_DISABLE_VPORT
   864	 * PF sends this message to CP to destroy, enable or disable a vport by filling
   865	 * in the vport_id in virtchnl_vport structure.
   866	 * CP responds with the status of the requested operation.
   867	 */
   868	struct virtchnl_vport {
   869		u16 vport_id;
   870	};
   871	
   872	VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
   873	
   874	/* Tx queue config info */
   875	struct virtchnl_txq_info_v2 {
   876		u16 queue_id;
   877		/* single or split */
   878		enum virtchnl_queue_model model;
   879		/* tx or tx_completion */
   880		enum virtchnl_queue_type type;
   881		/* queue or flow based */
   882		enum virtchnl_txq_sched_mode sched_mode;
   883		/* base or native */
   884		enum virtchnl_desc_profile desc_profile;
   885		u16 ring_len;
   886		u64 dma_ring_addr;
   887		/* valid only if queue model is split and type is tx */
   888		u16 tx_compl_queue_id;
   889	};
   890	
 > 891	VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
   892	
   893	/* VIRTCHNL_OP_CONFIG_TX_QUEUES
   894	 * PF sends this message to set up parameters for one or more TX queues.
   895	 * This message contains an array of num_qinfo instances of virtchnl_txq_info_v2
   896	 * structures. CP configures requested queues and returns a status code. If
   897	 * num_qinfo specified is greater than the number of queues associated with the
   898	 * vport, an error is returned and no queues are configured.
   899	 */
   900	struct virtchnl_config_tx_queues {
   901		u16 vport_id;
   902		u16 num_qinfo;
   903		u32 rsvd;
   904		struct virtchnl_txq_info_v2 qinfo[1];
   905	};
   906	
 > 907	VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
   908	
   909	/* Rx queue config info */
   910	struct virtchnl_rxq_info_v2 {
   911		u16 queue_id;
   912		/* single or split */
   913		enum virtchnl_queue_model model;
   914		/* rx or rx buffer */
   915		enum virtchnl_queue_type type;
   916		/* base or native */
   917		enum virtchnl_desc_profile desc_profile;
   918		/* rsc, header-split, immediate write back */
   919		u16 queue_flags;
   920		/* 16 or 32 byte */
   921		enum virtchnl_rxq_desc_size desc_size;
   922		u16 ring_len;
   923		u16 hdr_buffer_size;
   924		u32 data_buffer_size;
   925		u32 max_pkt_size;
   926		u64 dma_ring_addr;
   927		u64 dma_head_wb_addr;
   928		u16 rsc_low_watermark;
   929		u8 buffer_notif_stride;
   930		enum virtchnl_rx_hsplit rx_split_pos;
   931		/* valid only if queue model is split and type is rx buffer*/
   932		u16 rx_bufq1_id;
   933		/* valid only if queue model is split and type is rx buffer*/
   934		u16 rx_bufq2_id;
   935	};
   936	
 > 937	VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
   938	
   939	/* VIRTCHNL_OP_CONFIG_RX_QUEUES
   940	 * PF sends this message to set up parameters for one or more RX queues.
   941	 * This message contains an array of num_qinfo instances of virtchnl_rxq_info_v2
   942	 * structures. CP configures requested queues and returns a status code.
   943	 * If the number of queues specified is greater than the number of queues
   944	 * associated with the vport, an error is returned and no queues are configured.
   945	 */
   946	struct virtchnl_config_rx_queues {
   947		u16 vport_id;
   948		u16 num_qinfo;
   949		struct virtchnl_rxq_info_v2 qinfo[1];
   950	};
   951	
 > 952	VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
   953	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--2oS5YaxWCcQjTEyO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--2oS5YaxWCcQjTEyO--
