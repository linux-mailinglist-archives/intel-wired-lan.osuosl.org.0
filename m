Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E42F20D588
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 21:29:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA4C18764D;
	Mon, 29 Jun 2020 19:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1UkH_NcV4wNr; Mon, 29 Jun 2020 19:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B7C78766D;
	Mon, 29 Jun 2020 19:29:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D6301BF355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 19:29:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 58B7F87514
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 19:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPjQBFeDG1DV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 19:29:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 58F558751B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 19:29:17 +0000 (UTC)
IronPort-SDR: J7IJHz/7+lIdzqlUuj43c8OmJFLDPphqYcy69QENjnCef4e19ekI7A3CJUBUzZiQ5OiutPBOGj
 bSqsd1a9txNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="211123529"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; 
 d="gz'50?scan'50,208,50";a="211123529"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 12:29:16 -0700
IronPort-SDR: EjitC1ld5M7TbWLbIW4h4tXFw8kElDliuRu9mZExn7n7X1S1F3dUX3TyIn+RXyRtAwpRL+wfFB
 4l0o/oD9OO0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; 
 d="gz'50?scan'50,208,50";a="320725189"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jun 2020 12:29:12 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jpzSp-00019U-IF; Mon, 29 Jun 2020 19:29:11 +0000
Date: Tue, 30 Jun 2020 03:28:27 +0800
From: kernel test robot <lkp@intel.com>
To: Alice Michael <alice.michael@intel.com>
Message-ID: <202006300326.XPbMLfWI%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 7/53]
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


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   b072950db9f903b6ce6b5cf02a173ca59f6b7035
commit: 2fc824f0a9d08fdb69d61115f8f9d196ff6bd1c7 [7/53] virtchnl: Extend AVF ops
config: i386-debian-10.3 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
reproduce (this is a W=1 build):
        git checkout 2fc824f0a9d08fdb69d61115f8f9d196ff6bd1c7
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:4:
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
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         |                               ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
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
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
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
--
   In file included from drivers/net/ethernet/intel/iavf/iavf.h:38,
                    from drivers/net/ethernet/intel/iavf/iavf_main.c:4:
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
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         |                               ^~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     175 |  { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                     ^
   In file included from drivers/net/ethernet/intel/iavf/iavf_trace.h:209,
                    from drivers/net/ethernet/intel/iavf/iavf_main.c:12:
   include/trace/define_trace.h:95:42: fatal error: ./iavf_trace.h: No such file or directory
      95 | #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
         |                                          ^
   compilation terminated.
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
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    1090 | VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
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
..

vim +/virtchnl_static_assert_virtchnl_get_capabilities +809 include/linux/avf/virtchnl.h

   808	
 > 809	VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
   810	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--Nq2Wo0NMKNjxTN9z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--Nq2Wo0NMKNjxTN9z--
