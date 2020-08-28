Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BDC2551E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Aug 2020 02:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6A20204F6;
	Fri, 28 Aug 2020 00:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kq7FF3tKF48p; Fri, 28 Aug 2020 00:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84886204F9;
	Fri, 28 Aug 2020 00:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 473DA1BF34C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Aug 2020 00:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3874286B5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Aug 2020 00:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqCifBVctG5d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Aug 2020 00:23:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CE46986B4E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Aug 2020 00:22:59 +0000 (UTC)
IronPort-SDR: CYoFzkNE7CRIcNjep7ykCodmKIqJ6M2K+B0lgY2Gr8wRf+Rf7XkxoCpfZqq1slDjGbDUVr52KU
 3/tGhx/LQTqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="144259987"
X-IronPort-AV: E=Sophos;i="5.76,361,1592895600"; 
 d="gz'50?scan'50,208,50";a="144259987"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 17:22:58 -0700
IronPort-SDR: bxYNGa7ZRp2fsnTE79qmOWYqssYdQnRao/TSYu9XwnukLOuEhj/sme8EHDj6QhExLkvTM8nqYT
 82IfTX4ca4eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,361,1592895600"; 
 d="gz'50?scan'50,208,50";a="295952025"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 27 Aug 2020 17:22:54 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kBSAQ-0002OA-2g; Fri, 28 Aug 2020 00:22:54 +0000
Date: Fri, 28 Aug 2020 08:22:08 +0800
From: kernel test robot <lkp@intel.com>
To: Alice Michael <alice.michael@intel.com>
Message-ID: <202008280803.pfkoeyUu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 5/52]
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


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   7462e213901cada023e34bcc0757b61aa2bf01b5
commit: 9f058bbab30f6e899bbbbccc76ce62851ee0abca [5/52] virtchnl: Extend AVF ops
config: arm-randconfig-r012-20200827 (attached as .config)
compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 9f058bbab30f6e899bbbbccc76ce62851ee0abca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

         |                                                 ^
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:32: warning: division by zero [-Wdiv-by-zero]
     299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                ^
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1503:1: note: in expansion of macro 'I40E_CHECK_STRUCT_LEN'
    1503 | I40E_CHECK_STRUCT_LEN(0x22, i40e_aqc_configure_partition_bw_data);
         | ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1503:29: error: enumerator value for 'i40e_static_assert_i40e_aqc_configure_partition_bw_data' is not an integer constant
    1503 | I40E_CHECK_STRUCT_LEN(0x22, i40e_aqc_configure_partition_bw_data);
         |                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:49: note: in definition of macro 'I40E_CHECK_STRUCT_LEN'
     299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                 ^
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:32: warning: division by zero [-Wdiv-by-zero]
     299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                ^
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:304:34: note: in expansion of macro 'I40E_CHECK_STRUCT_LEN'
     304 | #define I40E_CHECK_CMD_LENGTH(X) I40E_CHECK_STRUCT_LEN(16, X)
         |                                  ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1764:1: note: in expansion of macro 'I40E_CHECK_CMD_LENGTH'
    1764 | I40E_CHECK_CMD_LENGTH(i40e_aqc_get_link_status);
         | ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1764:23: error: enumerator value for 'i40e_static_assert_i40e_aqc_get_link_status' is not an integer constant
    1764 | I40E_CHECK_CMD_LENGTH(i40e_aqc_get_link_status);
         |                       ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:49: note: in definition of macro 'I40E_CHECK_STRUCT_LEN'
     299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                 ^
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1764:1: note: in expansion of macro 'I40E_CHECK_CMD_LENGTH'
    1764 | I40E_CHECK_CMD_LENGTH(i40e_aqc_get_link_status);
         | ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:32: warning: division by zero [-Wdiv-by-zero]
     299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                ^
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1903:1: note: in expansion of macro 'I40E_CHECK_STRUCT_LEN'
    1903 | I40E_CHECK_STRUCT_LEN(0x6, i40e_aqc_nvm_config_data_feature);
         | ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1903:28: error: enumerator value for 'i40e_static_assert_i40e_aqc_nvm_config_data_feature' is not an integer constant
    1903 | I40E_CHECK_STRUCT_LEN(0x6, i40e_aqc_nvm_config_data_feature);
         |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:49: note: in definition of macro 'I40E_CHECK_STRUCT_LEN'
     299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                 ^
   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:11:
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:403:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     403 | VIRTCHNL_CHECK_STRUCT_LEN(14, virtchnl_irq_map_info);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:403:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_irq_map_info' is not an integer constant
     403 | VIRTCHNL_CHECK_STRUCT_LEN(14, virtchnl_irq_map_info);
         |                               ^~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:469:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     469 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vlan_filter_list);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:469:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_vlan_filter_list' is not an integer constant
     469 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vlan_filter_list);
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:525:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     525 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:525:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_key' is not an integer constant
     525 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
         |                              ^~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:534:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     534 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:534:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_lut' is not an integer constant
     534 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
         |                              ^~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
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
   include/linux/avf/virtchnl.h:872:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     872 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:872:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_vport' is not an integer constant
     872 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
         |                              ^~~~~~~~~~~~~~
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
   include/linux/avf/virtchnl.h:1034:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1034 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vector_chunks);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1034:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_vector_chunks' is not an integer constant
    1034 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vector_chunks);
         |                              ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1048:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1048 | VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_alloc_vectors);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1048:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_alloc_vectors' is not an integer constant
    1048 | VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_alloc_vectors);
         |                              ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1068:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1068 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1068:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_lut_v2' is not an integer constant
    1068 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut_v2);
         |                              ^~~~~~~~~~~~~~~~~~~
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
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1103:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1103 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_sriov_vfs_info);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1103:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_sriov_vfs_info' is not an integer constant
    1103 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_sriov_vfs_info);
         |                              ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
--
   In file included from drivers/net/ethernet/intel/iavf/iavf.h:38,
                    from drivers/net/ethernet/intel/iavf/iavf_main.c:4:
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:403:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     403 | VIRTCHNL_CHECK_STRUCT_LEN(14, virtchnl_irq_map_info);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:403:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_irq_map_info' is not an integer constant
     403 | VIRTCHNL_CHECK_STRUCT_LEN(14, virtchnl_irq_map_info);
         |                               ^~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:469:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     469 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vlan_filter_list);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:469:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_vlan_filter_list' is not an integer constant
     469 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vlan_filter_list);
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:525:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     525 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:525:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_key' is not an integer constant
     525 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
         |                              ^~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:534:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     534 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:534:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_lut' is not an integer constant
     534 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
         |                              ^~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
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
   include/linux/avf/virtchnl.h:872:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     872 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:872:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_vport' is not an integer constant
     872 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
         |                              ^~~~~~~~~~~~~~
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
   include/linux/avf/virtchnl.h:1034:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1034 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vector_chunks);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1034:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_vector_chunks' is not an integer constant
    1034 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vector_chunks);
         |                              ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1048:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1048 | VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_alloc_vectors);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1048:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_alloc_vectors' is not an integer constant
    1048 | VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_alloc_vectors);
         |                              ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1068:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1068 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut_v2);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1068:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_lut_v2' is not an integer constant
    1068 | VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut_v2);
         |                              ^~~~~~~~~~~~~~~~~~~
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
   include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                    ^
   include/linux/avf/virtchnl.h:1103:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1103 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_sriov_vfs_info);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/avf/virtchnl.h:1103:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_sriov_vfs_info' is not an integer constant
    1103 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_sriov_vfs_info);
         |                              ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
..

# https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/?id=9f058bbab30f6e899bbbbccc76ce62851ee0abca
git remote add jkirsher-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git
git fetch --no-tags jkirsher-next-queue dev-queue
git checkout 9f058bbab30f6e899bbbbccc76ce62851ee0abca
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
 > 872	VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
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

--mYCpIKhGyMATD0i+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
f1fwAQA=

--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--mYCpIKhGyMATD0i+--
