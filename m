Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF4F2142AD
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jul 2020 04:43:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE0F588418;
	Sat,  4 Jul 2020 02:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7-lkpE41AiT; Sat,  4 Jul 2020 02:43:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69D428841E;
	Sat,  4 Jul 2020 02:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 032F91BF484
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 02:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC8B989531
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 02:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CVi0hdm5wfhR for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jul 2020 02:43:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9726E89529
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 02:43:03 +0000 (UTC)
IronPort-SDR: Fg+9/39tWg+7B4/V0Jpaufx1hl9VWeqX0nSTAXwWfJR8G/j6j3+oKJyran0Uz0e4nBfu8m5HWu
 f+BEZEWywGzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9671"; a="148736575"
X-IronPort-AV: E=Sophos;i="5.75,310,1589266800"; 
 d="gz'50?scan'50,208,50";a="148736575"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 19:43:01 -0700
IronPort-SDR: KVzlV1TsYIjcnvS6o+fP6RmPvQOSrNixj2b7ZAvFD+EUViFVSmOfahuj9JckWzJ1xAlKv8TPZQ
 MLN2tqlthiCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,310,1589266800"; 
 d="gz'50?scan'50,208,50";a="482155695"
Received: from lkp-server01.sh.intel.com (HELO 6dc8ab148a5d) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jul 2020 19:42:58 -0700
Received: from kbuild by 6dc8ab148a5d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jrY8n-0000Wd-Fv; Sat, 04 Jul 2020 02:42:57 +0000
Date: Sat, 4 Jul 2020 10:42:06 +0800
From: kernel test robot <lkp@intel.com>
To: Alice Michael <alice.michael@intel.com>
Message-ID: <202007041003.QP4jV9mn%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 5/29]
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


--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   bc53e6ea5a86d2f31ef4e45e3cc88037231e0b63
commit: a585701e53b10222cb26bb37f757d09a4bc11f9f [5/29] virtchnl: Extend AVF ops
config: i386-randconfig-r004-20200701 (attached as .config)
compiler: gcc-4.9 (Ubuntu 4.9.3-13ubuntu2) 4.9.3
reproduce (this is a W=1 build):
        git checkout a585701e53b10222cb26bb37f757d09a4bc11f9f
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9:0,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:11:
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
>> include/linux/avf/virtchnl.h:809:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
    ^
>> include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:891:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
    ^
>> include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:907:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
    ^
>> include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:937:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
    ^
>> include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:952:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
    ^
>> include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
    ^
>> include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
   In file included from drivers/net/ethernet/intel/i40e/i40e_trace.h:209:0,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:21:
   include/trace/define_trace.h:95:43: fatal error: ./i40e_trace.h: No such file or directory
    #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
                                              ^
   compilation terminated.
--
   In file included from drivers/net/ethernet/intel/i40e/i40e_prototype.h:9:0,
                    from drivers/net/ethernet/intel/i40e/i40e.h:40,
                    from drivers/net/ethernet/intel/i40e/i40e_ethtool.c:6:
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
>> include/linux/avf/virtchnl.h:809:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
    ^
>> include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:891:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
    ^
>> include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:907:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
    ^
>> include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:937:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
    ^
>> include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:952:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
    ^
>> include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
    ^
>> include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
--
   In file included from drivers/net/ethernet/intel/iavf/iavf.h:38:0,
                    from drivers/net/ethernet/intel/iavf/iavf_main.c:4:
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
>> include/linux/avf/virtchnl.h:809:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
    ^
>> include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_get_capabilities);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:891:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
    ^
>> include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_txq_info_v2);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:907:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
    ^
>> include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_config_tx_queues);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:937:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
    ^
>> include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_rxq_info_v2);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:952:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
    ^
>> include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_config_rx_queues);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
>> include/linux/avf/virtchnl.h:175:36: warning: division by zero [-Wdiv-by-zero]
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                       ^
   include/linux/avf/virtchnl.h:1090:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
    ^
>> include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
    VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_rss_hash);
                                  ^
   include/linux/avf/virtchnl.h:175:53: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
                                                        ^
   In file included from drivers/net/ethernet/intel/iavf/iavf_trace.h:209:0,
                    from drivers/net/ethernet/intel/iavf/iavf_main.c:12:
   include/trace/define_trace.h:95:43: fatal error: ./iavf_trace.h: No such file or directory
    #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
                                              ^
   compilation terminated.

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

--Kj7319i9nmIyA2yE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICA3k/14AAy5jb25maWcAlDxLc9w20vf8iinnkhzi1ctab32lAwiCHOyQBA2AoxldWIo8
dlRrS149duN//3UDBAmA4Dibg6Ppbrwb/QZ//unnFXl9efx6+3J/d/vly/fV58PD4en25fBx
9en+y+H/VrlYNUKvWM71WyCu7h9e//zb/fn7y9W7t+/fnvz2dHe22hyeHg5fVvTx4dP951do
ff/48NPPP1HRFLzsKe23TCouml6znb568/nu7reLt/9Y/dL9/vrw8rqCv9+e/3Z6/mp+nv1q
AW+89lz1JaVX3x2onPq8ujj5x8m5Q1T5CD87vzgx/439VKQpR/SJ1/2aqJ6oui+FFtMgXH7o
r4XcTJCs41Wuec16TbKK9UpIPWH1WjKS97wpBPwDJAqbwj78vCrNpn5ZPR9eXr9NO8MbrnvW
bHsiYeq85vrq/AzI3cxE3XIYRjOlV/fPq4fHF+xhXKugpHLLefMmBe5J56/IzL9XpNIe/Zps
Wb9hsmFVX97wdiL3MRlgztKo6qYmaczuZqmFWEJcAGLcAG9W/vpjvJnbMQKc4TH87uZ4a5HY
/WDGAyxnBekqbc7V22EHXgulG1Kzqze/PDw+HH59Mw2lrkmbGETt1Za3HuMPAPw/1dUEb4Xi
u77+0LGOpaGzJtdE03UftaBSKNXXrBZy3xOtCV1PyE6ximfTb9KBUIgOkkjo1CBwPFJVEfkE
NRcD7tjq+fX35+/PL4ev08UoWcMkp+YKtlJk3gx9lFqL6zSGFQWjmuOEiqKv7VWM6FrW5Lwx
9zzdSc1LSTTeLm+NMgeUggPrJVPQQ7opXfsXCSG5qAlvQpjidYqoX3MmcSP3885rxdMTHhCz
cYIFES2BIWD/QUZoIdNUuC65NQvva5GzcIqFkJTlg7CD7fN4syVSsWF2I2f7Pecs68pChZft
8PBx9fgp4oRJZgu6UaKDMS3D5sIb0TCbT2Iu3vdU4y2peE406yuidE/3tErwlBHt2xnjOrTp
j21Zo9VRZJ9JQXIKAx0nq+GoSf7PLklXC9V3LU7Z3RV9//Xw9Jy6LusbYGbJRc6pv/WNQAzP
K5YUbwadxKx5uUY2MBsi0+c1m80odCRjdauh+4b5s3Hwrai6RhO5Tw49UCVkoWtPBTR3e0Lb
7m/69vlfqxeYzuoWpvb8cvvyvLq9u3sEY+L+4fO0S5rTTQ8NekJNH5Z5x5GRQQ0DTOjkDBVd
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

--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--Kj7319i9nmIyA2yE--
