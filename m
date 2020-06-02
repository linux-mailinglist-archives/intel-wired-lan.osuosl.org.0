Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A3E1EB5D1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jun 2020 08:30:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A00FC84408;
	Tue,  2 Jun 2020 06:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5drcPU6xRQ_h; Tue,  2 Jun 2020 06:30:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F56E86031;
	Tue,  2 Jun 2020 06:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F08C1BF344
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 06:29:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 07C4F87117
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 06:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZxBa6i6lTYH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2020 06:29:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E637586B0E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 06:29:50 +0000 (UTC)
IronPort-SDR: X6x/K0wvc/TFTVl+Zj/sYcLpbfhz4opK/NfcwPBaZMVVqPrukTFmw3Xpfsyw8pXkvBcVFI4ztf
 CDWGHg9Nqk8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 23:29:50 -0700
IronPort-SDR: GzexBz1SxFKkKneKaCZq2JKHtIoLOlNL6T0u6Yhw7Z/FyMQeqYamzzsXYcqlqZbLoH9qB8FcVP
 0AIAGJ/P4wHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,463,1583222400"; d="scan'208";a="444570756"
Received: from lkp-server01.sh.intel.com (HELO 886b752aa57b) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 01 Jun 2020 23:29:48 -0700
Received: from kbuild by 886b752aa57b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jg0Ql-00001h-UV; Tue, 02 Jun 2020 06:29:47 +0000
Date: Tue, 02 Jun 2020 14:28:58 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ed5f1aa.5IbTK9kDUKFsMT+G%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 64b7702c1b131b127b686528c58d41f40eabd92a
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 64b7702c1b131b127b686528c58d41f40eabd92a  i40e: Remove scheduling while atomic possibility

Error/Warning in current branch:

cc1: warning: drivers/net/ethernet/intel/idpf/../include: No such file or directory [-Wmissing-include-dirs]
drivers/net/ethernet/intel/idpf/idpf_dev.h:7:10: fatal error: iecm.h: No such file or directory
drivers/net/ethernet/intel/iecm/iecm_lib.c:104:6: warning: no previous prototype for 'iecm_get_mb_vec_id' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_lib.c:122:5: warning: no previous prototype for 'iecm_mb_intr_init' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_lib.c:140:6: warning: no previous prototype for 'iecm_intr_distribute' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_lib.c:417:5: warning: no previous prototype for 'iecm_vport_rel' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_lib.c:49:13: warning: no previous prototype for 'iecm_mb_intr_clean' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_lib.c:63:6: warning: no previous prototype for 'iecm_mb_irq_enable' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_lib.c:748:6: warning: no previous prototype for 'iecm_deinit_task' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_lib.c:77:5: warning: no previous prototype for 'iecm_mb_intr_req_irq' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:115:6: warning: no previous prototype for 'iecm_tx_desc_rel' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:136:6: warning: no previous prototype for 'iecm_tx_desc_rel_all' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:2510:28: error: 'last_offset' undeclared (first use in this function); did you mean 'page_offset'?
drivers/net/ethernet/intel/iecm/iecm_txrx.c:312:6: warning: no previous prototype for 'iecm_rx_buf_rel_all' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:341:6: warning: no previous prototype for 'iecm_rx_desc_rel' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:3565:5: warning: no previous prototype for 'iecm_vport_splitq_napi_poll' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:3603:6: warning: no previous prototype for 'iecm_vport_intr_map_vector_to_qs' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:3715:5: warning: no previous prototype for 'iecm_vport_intr_alloc' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:371:6: warning: no previous prototype for 'iecm_rx_desc_rel_all' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:486:6: warning: no previous prototype for 'iecm_rx_hdr_buf_hw_alloc' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_txrx.c:84:6: warning: no previous prototype for 'iecm_tx_buf_rel_all' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_virtchnl.c:12:6: warning: no previous prototype for 'iecm_recv_event_msg' [-Wmissing-prototypes]
drivers/net/ethernet/intel/iecm/iecm_virtchnl.c:61:1: warning: no previous prototype for 'iecm_mb_clean' [-Wmissing-prototypes]
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2269:15: error: redefinition of 'truesize'
hppa-linux-gcc: error: missing argument to '-Wframe-larger-than='
include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant

Error/Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:last_offset-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- arc-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:last_offset-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- arm-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   `-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|-- arm-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   `-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|-- arm64-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- arm64-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- i386-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- i386-debian-10.3
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- ia64-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:last_offset-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:last_offset-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-randconfig-r001-20200602
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- mips-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- mips-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- parisc-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- hppa-linux-gcc:error:missing-argument-to-Wframe-larger-than
|-- parisc-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- hppa-linux-gcc:error:missing-argument-to-Wframe-larger-than
|-- powerpc-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   `-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|-- powerpc-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   `-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|-- powerpc-defconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- riscv-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- riscv-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- s390-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- s390-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|-- sparc-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:last_offset-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- sparc64-allmodconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:last_offset-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- sparc64-allyesconfig
|   |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
|   |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:last_offset-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
`-- xtensa-allyesconfig
    |-- cc1:warning:drivers-net-ethernet-intel-idpf-..-include:No-such-file-or-directory
    |-- drivers-net-ethernet-intel-idpf-idpf_dev.h:fatal-error:iecm.h:No-such-file-or-directory
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_deinit_task
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_get_mb_vec_id
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_intr_distribute
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_clean
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_init
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_intr_req_irq
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_mb_irq_enable
    |-- drivers-net-ethernet-intel-iecm-iecm_lib.c:warning:no-previous-prototype-for-iecm_vport_rel
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_buf_rel_all
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_desc_rel_all
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_rx_hdr_buf_hw_alloc
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_buf_rel_all
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_tx_desc_rel_all
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_alloc
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_intr_map_vector_to_qs
    |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:warning:no-previous-prototype-for-iecm_vport_splitq_napi_poll
    |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_mb_clean
    `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg

elapsed time: 526m

configs tested: 79
configs skipped: 1

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
