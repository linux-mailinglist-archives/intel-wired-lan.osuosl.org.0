Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF81F171F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jun 2020 13:01:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D53887A12;
	Mon,  8 Jun 2020 11:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gxPyfD80QXQc; Mon,  8 Jun 2020 11:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8935C87E93;
	Mon,  8 Jun 2020 11:00:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CC331BF403
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 11:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 28F8287E41
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 11:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rjc2fVbZ79+e for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 11:00:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D098687A12
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 11:00:54 +0000 (UTC)
IronPort-SDR: De2Gk+ivw71pZnQq73ITh+lU1GyWbDkRMVSFonY7y0Iq44uzENT99RNnKQd333+FKjwCcv6oUn
 kbWihKJBTatQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 04:00:53 -0700
IronPort-SDR: n5VyFWu/Iazfk45ofF5nuw96fLjnGzP2spk6kbFx/w1ao6fPkMHRId07Rl+fmw6pm1eTrKkmyV
 98qfYuF5rKIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; 
 d="gz'50?scan'50,208,50";a="349132555"
Received: from lkp-server01.sh.intel.com (HELO 3b764b36c89c) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 08 Jun 2020 04:00:49 -0700
Received: from kbuild by 3b764b36c89c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jiFWK-0000jA-V3; Mon, 08 Jun 2020 11:00:48 +0000
Date: Mon, 8 Jun 2020 18:59:43 +0800
From: kernel test robot <lkp@intel.com>
To: Alice Michael <alice.michael@intel.com>
Message-ID: <202006081836.BJreTfrK%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 11/44]
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
Cc: kbuild-all@lists.01.org, Pavan Kumar Linga <Pavan.Kumar.Linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   bb74886dd020cb7d62869fc4a57c50b8bda718ad
commit: 9328f52bc07407d123ec6f50da83d1a80c3c87a2 [11/44] virtchnl: Extend AVF ops
config: i386-debian-10.3 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
reproduce (this is a W=1 build):
        git checkout 9328f52bc07407d123ec6f50da83d1a80c3c87a2
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
from drivers/net/ethernet/intel/i40e/i40e.h:40,
from drivers/net/ethernet/intel/i40e/i40e_main.c:10:
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
In file included from drivers/net/ethernet/intel/ice/ice.h:36,
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
drivers/net/ethernet/intel/ice/ice_flex_pipe.c:2922:9: note: in expansion of macro 'ICE_FLOW_ENTRY_HNDL'
2922 |         ICE_FLOW_ENTRY_HNDL(e));
|         ^~~~~~~~~~~~~~~~~~~
--
In file included from drivers/net/ethernet/intel/ice/ice.h:36,
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
from drivers/net/ethernet/intel/i40e/i40e_main.c:10:
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
from drivers/net/ethernet/intel/i40e/i40e_main.c:20:
include/trace/define_trace.h:95:42: fatal error: ./i40e_trace.h: No such file or directory
95 | #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
|                                          ^
compilation terminated.
..

vim +/virtchnl_static_assert_virtchnl_get_capabilities +809 include/linux/avf/virtchnl.h

   808	
 > 809	VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
   810	
   811	/* structure to specify a chunk of contiguous queues */
   812	struct virtchnl_queue_chunk {
   813	        enum virtchnl_queue_type type;
   814	        u16 start_queue_id;
   815	        u16 num_queues;
   816	};
   817	
   818	VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
   819	
   820	/* structure to specify several chunks of contiguous queues */
   821	struct virtchnl_queue_chunks {
   822	        u16 num_chunks;
   823	        u16 rsvd;
   824	        struct virtchnl_queue_chunk chunks[1];
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
   838	        enum virtchnl_vport_type vport_type;
   839	        /* single or split */
   840	        enum virtchnl_queue_model txq_model;
   841	        /* single or split */
   842	        enum virtchnl_queue_model rxq_model;
   843	        u16 num_tx_q;
   844	        /* valid only if txq_model is split Q */
   845	        u16 num_tx_complq;
   846	        u16 num_rx_q;
   847	        /* valid only if rxq_model is split Q */
   848	        u16 num_rx_bufq;
   849	        u16 vport_id;
   850	        u16 max_mtu;
   851	        u8 default_mac_addr[ETH_ALEN];
   852	        enum virtchnl_rss_algorithm rss_algorithm;
   853	        u16 rss_key_size;
   854	        u16 rss_lut_size;
   855	        u16 qset_handle;
   856	        struct virtchnl_queue_chunks chunks;
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
   869	        u16 vport_id;
   870	};
   871	
   872	VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_vport);
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
   901	        u16 vport_id;
   902	        u16 num_qinfo;
   903	        u32 rsvd;
   904	        struct virtchnl_txq_info_v2 qinfo[1];
   905	};
   906	
 > 907	VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
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
   947	        u16 vport_id;
   948	        u16 num_qinfo;
   949	        struct virtchnl_rxq_info_v2 qinfo[1];
   950	};
   951	
 > 952	VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
   953	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--HcAYCG3uE/tztfnV--
