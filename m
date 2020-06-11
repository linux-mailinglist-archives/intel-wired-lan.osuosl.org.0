Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 426101F621F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 09:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0CD287912;
	Thu, 11 Jun 2020 07:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g4jj0B9V0Fml; Thu, 11 Jun 2020 07:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6BD28790A;
	Thu, 11 Jun 2020 07:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCA7B1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 07:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC568885D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 07:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Js4Mj+aGSXH0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2020 07:21:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C925488530
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 07:21:35 +0000 (UTC)
IronPort-SDR: Mg66PTcTthJDPUpXgyNo3h3JjRR6H4Y/hSF6GZcr2IHJkJzoRY12k1WuvLOsXfV/EdTmE4l2lq
 j5rEkV+Yct6A==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 00:21:34 -0700
IronPort-SDR: Fr1MG9w4Us5Q9sgNTTO93gnKka8abC6h5VtTEzycLXuVXuzgpzZkIj5VA5DcItDVTP5EtE2yJp
 ad5kiqJNna1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; 
 d="gz'50?scan'50,208,50";a="296496934"
Received: from lkp-server01.sh.intel.com (HELO b6eec31c25be) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jun 2020 00:21:30 -0700
Received: from kbuild by b6eec31c25be with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jjHWk-00008I-1V; Thu, 11 Jun 2020 07:21:30 +0000
Date: Thu, 11 Jun 2020 15:21:11 +0800
From: kernel test robot <lkp@intel.com>
To: Alice Michael <alice.michael@intel.com>
Message-ID: <202006111507.xEY4Qu64%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 11/55]
 include/linux/avf/virtchnl.h:872:30: error: enumerator value for
 'virtchnl_static_assert_virtchnl_vport' is not an integer constant
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
Cc: kbuild-all@lists.01.org, Pavan Kumar Linga <Pavan.Kumar.Linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   94e8b9f389d896ead02e9633104231fc864da9b0
commit: 2498cdba2cbf1af8fa4ff479b981e2e2240e2a46 [11/55] virtchnl: Extend AVF ops
config: arm-randconfig-r004-20200611 (attached as .config)
compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 2498cdba2cbf1af8fa4ff479b981e2e2240e2a46
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

|                                                 ^
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:32: warning: division by zero [-Wdiv-by-zero]
299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
|                                ^
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:304:34: note: in expansion of macro 'I40E_CHECK_STRUCT_LEN'
304 | #define I40E_CHECK_CMD_LENGTH(X) I40E_CHECK_STRUCT_LEN(16, X)
|                                  ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1775:1: note: in expansion of macro 'I40E_CHECK_CMD_LENGTH'
1775 | I40E_CHECK_CMD_LENGTH(i40e_aqc_get_link_status);
| ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1775:23: error: enumerator value for 'i40e_static_assert_i40e_aqc_get_link_status' is not an integer constant
1775 | I40E_CHECK_CMD_LENGTH(i40e_aqc_get_link_status);
|                       ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:49: note: in definition of macro 'I40E_CHECK_STRUCT_LEN'
299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
|                                                 ^
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1775:1: note: in expansion of macro 'I40E_CHECK_CMD_LENGTH'
1775 | I40E_CHECK_CMD_LENGTH(i40e_aqc_get_link_status);
| ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:32: warning: division by zero [-Wdiv-by-zero]
299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
|                                ^
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1914:1: note: in expansion of macro 'I40E_CHECK_STRUCT_LEN'
1914 | I40E_CHECK_STRUCT_LEN(0x6, i40e_aqc_nvm_config_data_feature);
| ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1914:28: error: enumerator value for 'i40e_static_assert_i40e_aqc_nvm_config_data_feature' is not an integer constant
1914 | I40E_CHECK_STRUCT_LEN(0x6, i40e_aqc_nvm_config_data_feature);
|                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:299:49: note: in definition of macro 'I40E_CHECK_STRUCT_LEN'
299 |  { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
|                                                 ^
In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
from drivers/net/ethernet/intel/i40e/i40e.h:40,
from drivers/net/ethernet/intel/i40e/i40e_main.c:10:
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
include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
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
include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
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
include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
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
include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
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
include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
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
include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
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
In file included from drivers/net/ethernet/intel/ice/ice.h:36,
from drivers/net/ethernet/intel/ice/ice_main.c:8:
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
include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
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
include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
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
include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
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
include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
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
include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
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
include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
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

vim +/virtchnl_static_assert_virtchnl_vport +872 include/linux/avf/virtchnl.h

   871	
 > 872	VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
   873	
   874	/* Tx queue config info */
   875	struct virtchnl_txq_info_v2 {
   876	        u16 queue_id;
   877	        /* single or split */
   878	        enum virtchnl_queue_model model;
   879	        /* tx or tx_completion */
   880	        enum virtchnl_queue_type type;
   881	        /* queue or flow based */
   882	        enum virtchnl_txq_sched_mode sched_mode;
   883	        /* base or native */
   884	        enum virtchnl_desc_profile desc_profile;
   885	        u16 ring_len;
   886	        u64 dma_ring_addr;
   887	        /* valid only if queue model is split and type is tx */
   888	        u16 tx_compl_queue_id;
   889	};
   890	
   891	VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
   892	
   893	/* VIRTCHNL_OP_CONFIG_TX_QUEUES
   894	 * PF sends this message to set up parameters for one or more TX queues.
   895	 * This message contains an array of num_qinfo instances of virtchnl_txq_info_v2
   896	 * structures. CP configures requested queues and returns a status code. If
   897	 * num_qinfo specified is greater than the number of queues associated with the
   898	 * vport, an error is returned and no queues are configured.
   899	 */
   900	struct virtchnl_config_tx_queues {
   901	        u16 vport_id;
   902	        u16 num_qinfo;
   903	        u32 rsvd;
   904	        struct virtchnl_txq_info_v2 qinfo[1];
   905	};
   906	
   907	VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
   908	
   909	/* Rx queue config info */
   910	struct virtchnl_rxq_info_v2 {
   911	        u16 queue_id;
   912	        /* single or split */
   913	        enum virtchnl_queue_model model;
   914	        /* rx or rx buffer */
   915	        enum virtchnl_queue_type type;
   916	        /* base or native */
   917	        enum virtchnl_desc_profile desc_profile;
   918	        /* rsc, header-split, immediate write back */
   919	        u16 queue_flags;
   920	        /* 16 or 32 byte */
   921	        enum virtchnl_rxq_desc_size desc_size;
   922	        u16 ring_len;
   923	        u16 hdr_buffer_size;
   924	        u32 data_buffer_size;
   925	        u32 max_pkt_size;
   926	        u64 dma_ring_addr;
   927	        u64 dma_head_wb_addr;
   928	        u16 rsc_low_watermark;
   929	        u8 buffer_notif_stride;
   930	        enum virtchnl_rx_hsplit rx_split_pos;
   931	        /* valid only if queue model is split and type is rx buffer*/
   932	        u16 rx_bufq1_id;
   933	        /* valid only if queue model is split and type is rx buffer*/
   934	        u16 rx_bufq2_id;
   935	};
   936	
   937	VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
   938	
   939	/* VIRTCHNL_OP_CONFIG_RX_QUEUES
   940	 * PF sends this message to set up parameters for one or more RX queues.
   941	 * This message contains an array of num_qinfo instances of virtchnl_rxq_info_v2
   942	 * structures. CP configures requested queues and returns a status code.
   943	 * If the number of queues specified is greater than the number of queues
   944	 * associated with the vport, an error is returned and no queues are configured.
   945	 */
   946	struct virtchnl_config_rx_queues {
   947	        u16 vport_id;
   948	        u16 num_qinfo;
   949	        struct virtchnl_rxq_info_v2 qinfo[1];
   950	};
   951	
   952	VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
   953	
   954	/* VIRTCHNL_OP_ADD_QUEUES
   955	 * PF sends this message to request additional TX/RX queues beyond the ones
   956	 * that were assigned via CREATE_VPORT request. virtchnl_add_queues structure is
   957	 * used to specify the number of each type of queues.
   958	 * CP responds with the same structure with the actual number of queues assigned
   959	 * followed by num_chunks of virtchnl_queue_chunk structures.
   960	 */
   961	struct virtchnl_add_queues {
   962	        u16 vport_id;
   963	        u16 num_tx_q;
   964	        u16 num_tx_complq;
   965	        u16 num_rx_q;
   966	        u16 num_rx_bufq;
   967	        struct virtchnl_queue_chunks chunks;
   968	};
   969	
   970	VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_add_queues);
   971	
   972	/* VIRTCHNL_OP_ENABLE_QUEUES
   973	 * VIRTCHNL_OP_DISABLE_QUEUES
   974	 * VIRTCHNL_OP_DEL_QUEUES
   975	 * PF sends these messages to enable, disable or delete queues specified in
   976	 * chunks. PF sends virtchnl_del_ena_dis_queues struct to specify the queues
   977	 * to be enabled/disabled/deleted. Also applicable to single queue RX or
   978	 * TX. CP performs requested action and returns status.
   979	 */
   980	struct virtchnl_del_ena_dis_queues {
   981	        u16 vport_id;
   982	        struct virtchnl_queue_chunks chunks;
   983	};
   984	
   985	VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_del_ena_dis_queues);
   986	
   987	/* Virtchannel interrupt throttling rate index */
   988	enum virtchnl_itr_idx {
   989	       VIRTCHNL_ITR_IDX_0      = 0,
   990	       VIRTCHNL_ITR_IDX_1      = 1,
   991	       VIRTCHNL_ITR_IDX_NO_ITR = 3,
   992	};
   993	
   994	/* Queue to vector mapping */
   995	struct virtchnl_queue_vector {
   996	        u16 queue_id;
   997	        u16 vector_id;
   998	        enum virtchnl_itr_idx itr_idx;
   999	        enum virtchnl_queue_type queue_type;
  1000	};
  1001	
  1002	VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_vector);
  1003	
  1004	/* VIRTCHNL_OP_MAP_QUEUE_VECTOR
  1005	 * VIRTCHNL_OP_UNMAP_QUEUE_VECTOR
  1006	 * PF sends this message to map or unmap queues to vectors and ITR index
  1007	 * registers. External data buffer contains virtchnl_queue_vector_maps structure
  1008	 * that contains num_maps of virtchnl_queue_vector structures.
  1009	 * CP maps the requested queue vector maps after validating the queue and vector
  1010	 * ids and returns a status code.
  1011	 */
  1012	struct virtchnl_queue_vector_maps {
  1013	       u16 vport_id;
  1014	       u16 num_maps;
  1015	       struct virtchnl_queue_vector qv_maps[1];
  1016	};
  1017	
  1018	VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_queue_vector_maps);
  1019	
  1020	/* Structure to specify a chunk of contiguous interrupt vectors */
  1021	 struct virtchnl_vector_chunk {
  1022	        u16 start_vector_id;
  1023	        u16 num_vectors;
  1024	};
  1025	
  1026	VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl_vector_chunk);
  1027	
  1028	/* Structure to specify several chunks of contiguous interrupt vectors */
  1029	struct virtchnl_vector_chunks {
  1030	        u16 num_vector_chunks;
  1031	        struct virtchnl_vector_chunk num_vchunk[1];
  1032	};
  1033	
> 1034	VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vector_chunks);
  1035	
  1036	/* VIRTCHNL_OP_ALLOC_VECTORS
  1037	 * PF sends this message to request additional interrupt vectors beyond the
  1038	 * ones that were assigned via GET_CAPS request. virtchnl_alloc_vectors
  1039	 * structure is used to specify the number of vectors requested. CP responds
  1040	 * with the same structure with the actual number of vectors assigned followed
  1041	 * by virtchnl_vector_chunks structure identifying the vector ids.
  1042	 */
  1043	struct virtchnl_alloc_vectors {
  1044	        u16 num_vectors;
  1045	        struct virtchnl_vector_chunks vchunks;
  1046	};
  1047	
> 1048	VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_alloc_vectors);
  1049	
  1050	/* VIRTCHNL_OP_DEALLOC_VECTORS
  1051	 * PF sends this message to release the vectors.
  1052	 * PF sends virtchnl_vector_chunks struct to specify the vectors it is giving
  1053	 * away. CP performs requested action and returns status.
  1054	 */
  1055	
  1056	/* VIRTCHNL_OP_GET_RSS_LUT
  1057	 * VIRTCHNL_OP_SET_RSS_LUT
  1058	 * PF sends this message to get or set RSS lookup table. Only supported if
  1059	 * both PF and CP drivers set the VIRTCHNL_CAP_RSS bit during configuration
  1060	 * negotiation. Uses the virtchnl_rss_lut_v2 structure
  1061	 */
  1062	struct virtchnl_rss_lut_v2 {
  1063	        u16 vport_id;
  1064	        u16 lut_entries;
  1065	        u16 lut[1]; /* RSS lookup table */
  1066	};
  1067	
> 1068	VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut_v2);
  1069	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--bg08WKrSYDhXBjb5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
EgIA

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--bg08WKrSYDhXBjb5--
