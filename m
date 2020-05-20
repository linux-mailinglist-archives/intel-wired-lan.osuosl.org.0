Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 973E21DABCA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 09:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47940876C7;
	Wed, 20 May 2020 07:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSZv94bspzyG; Wed, 20 May 2020 07:17:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93898876A6;
	Wed, 20 May 2020 07:17:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5624E1BF332
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 07:17:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 46AFC20111
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 07:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nSlXu482fSqa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 07:17:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 1CE4B20104
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 07:17:01 +0000 (UTC)
IronPort-SDR: VRFyhbFPsI55Zp1PjsuZRLrpoI9R9D9RU9jLsFhJRvpYvEk5IxbG0M7ivfBFoRvpoeqVaFIpOU
 WOoed/P89apA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 00:17:00 -0700
IronPort-SDR: 1YDTJHvhbA/ldP6JRQlElgRq58XiInTHB7HyRHM9+fhpghkhgkULlvdJNzurA2QjslBAai4AfE
 ISMIrPC8DDbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="253597730"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 May 2020 00:16:59 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jbIyI-0005Ve-D1; Wed, 20 May 2020 15:16:58 +0800
Date: Wed, 20 May 2020 15:16:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ec4d954.haGn94MnXPogrJaJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 a5618a6fc0f99e463caf0ea9259be082eb8ea2eb
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
branch HEAD: a5618a6fc0f99e463caf0ea9259be082eb8ea2eb  igc: Add Receive Error Counter

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
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2271:15: error: redefinition of 'truesize'
hppa-linux-gcc: error: missing argument to '-Wframe-larger-than='
sound/soc/sof/intel/apl.c:167:1: error: type defaults to 'int' in declaration of 'MODULE_IMPORT_NS' [-Werror=implicit-int]
sound/soc/sof/intel/cnl.c:444:1: error: type defaults to 'int' in declaration of 'MODULE_IMPORT_NS' [-Werror=implicit-int]

Error/Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allmodconfig
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
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
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- i386-allmodconfig
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
|   `-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
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
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
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
|   |-- drivers-net-ethernet-intel-iecm-iecm_virtchnl.c:warning:no-previous-prototype-for-iecm_recv_event_msg
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- parisc-allmodconfig
|   |-- hppa-linux-gcc:error:missing-argument-to-Wframe-larger-than
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- powerpc-allmodconfig
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
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- powerpc-allyesconfig
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
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- powerpc-defconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- riscv-allmodconfig
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- s390-allmodconfig
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- sparc-allmodconfig
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
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
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- sparc64-allmodconfig
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|   |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|   `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
|-- x86_64-allyesconfig
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
`-- xtensa-allmodconfig
    |-- sound-soc-sof-intel-apl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS
    `-- sound-soc-sof-intel-cnl.c:error:type-defaults-to-int-in-declaration-of-MODULE_IMPORT_NS

elapsed time: 569m

configs tested: 86
configs skipped: 1

arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
sparc                            allyesconfig
m68k                             allyesconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
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
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20200519
x86_64               randconfig-a005-20200519
x86_64               randconfig-a004-20200519
x86_64               randconfig-a006-20200519
x86_64               randconfig-a002-20200519
x86_64               randconfig-a001-20200519
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
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
