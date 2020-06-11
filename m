Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5881F61DF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 08:45:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63F0D894F1;
	Thu, 11 Jun 2020 06:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IETmrt2UUrHa; Thu, 11 Jun 2020 06:45:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E24E68949F;
	Thu, 11 Jun 2020 06:45:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCEB81BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 06:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD8E386F72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 06:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id npSAv9202ZvO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2020 06:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 84F6B86F66
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 06:45:27 +0000 (UTC)
IronPort-SDR: bAUD3XK8Lt3cWdTsbXMkL2MNTjEN2CbKjceWotjJZM9uMlkx12wG2RoAinDmGRsyjJFXXvl2+g
 2vl5eC40Yjmw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 23:45:26 -0700
IronPort-SDR: 4XT85LxUlrvmWdSPUoYN3bQSf12DLD8dHVx483vY3ZKZe3H/Uu2eGGkDkVYwWbiF7+eLxNqkGd
 Wr4mdyIddO+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,498,1583222400"; 
 d="gz'50?scan'50,208,50";a="306864459"
Received: from lkp-server01.sh.intel.com (HELO b6eec31c25be) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2020 23:45:22 -0700
Received: from kbuild by b6eec31c25be with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jjGxl-00007l-Ek; Thu, 11 Jun 2020 06:45:21 +0000
Date: Thu, 11 Jun 2020 14:45:00 +0800
From: kernel test robot <lkp@intel.com>
To: Alice Michael <alice.michael@intel.com>
Message-ID: <202006111456.UnLZL3jq%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 11/55]
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


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   94e8b9f389d896ead02e9633104231fc864da9b0
commit: 2498cdba2cbf1af8fa4ff479b981e2e2240e2a46 [11/55] virtchnl: Extend AVF ops
config: i386-debian-10.3 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
reproduce (this is a W=1 build):
        git checkout 2498cdba2cbf1af8fa4ff479b981e2e2240e2a46
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

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--sm4nu43k4a2Rpi4c--
