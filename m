Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E9670CF2D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 May 2023 02:26:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3877C41BEB;
	Tue, 23 May 2023 00:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3877C41BEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684801573;
	bh=giqkM5ojkEB6ao/CZou8s/EKDPyFECdWCKHLNp4I4FQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TSUb3G/ASHOFdNRrmUPpvkh31+tt6KyzfE8ksEetYmusyLf0YOojjcqMoYywKtIlM
	 ef/POxzyxp3ntJ51oY30/fdWiNovRN8em4Iy1uYDhps/gAT16kL78kTFY5+hzMQAWM
	 Q6VIGyv4cASl8C4c/6HeujVCRXTCwVyhY5mH1umSsYPdrhDLyZngQLbII40qjU/6A6
	 WIKHVgrKcIW+Sc27IGfKPjecmjCqtG8JEqurByO7NREW06PXCn1nBABh4hZYverQX3
	 eVBLfVhpSpk1yvPF1ryrjtOKwiBt++kNemvrqTdnVRGQgcdioDy5FissSSeJqBHNHi
	 G/Okpno+f9wCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAdTu4UpGQMf; Tue, 23 May 2023 00:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 018A4418A8;
	Tue, 23 May 2023 00:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 018A4418A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76F781BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 00:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E75382090
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 00:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E75382090
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FS6XfENvjTXZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 May 2023 00:26:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE8AE81FEA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE8AE81FEA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 00:26:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="337670666"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="337670666"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 17:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="827885480"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="827885480"
Received: from unknown (HELO AMR-CMP1.ger.corp.intel.com) ([10.166.80.24])
 by orsmga004.jf.intel.com with ESMTP; 22 May 2023 17:26:01 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 17:22:37 -0700
Message-Id: <20230523002252.26124-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684801563; x=1716337563;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AxkJYOIhBWGbOUXROaSgIA7RoOiNpxjrZhWRBptV37k=;
 b=iAcTUCpXzgTBsEfmgbjR592Nlsm9CNfiojTrPCTbZnXJ4l9uHfBRqa/t
 SiTv+NwY+ZLuHvQIElW0q9YSzWr6yBASLWe97E53ogObA/meA22+4C8Of
 gwCdyvRgiUeo60sFpzfToTCiqnAsAFnOhBKwh98aGXwSRtZ0dfvkPLx68
 ik38rBpeVhU+E6iB0mG0KcCK6IWchGf49I217WcxB/rd47v8i4yCchfii
 dWmlx/b5VGZkB8KW5RHyi/WgxRDSJWvgyWrzOYF6LvvaA89u+qwdXCsOk
 icHBrcIw/w0NmuDLmSGZxDNNq0hKKZFSVXX0+8Q0vyCqgndr2sVf1wJvh
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iAcTUCpX
Subject: [Intel-wired-lan] [PATCH iwl-next v6 00/15] Introduce Intel IDPF
 driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org, mst@redhat.com,
 simon.horman@corigine.com, jesse.brandeburg@intel.com,
 stephen@networkplumber.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, decot@google.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series introduces the Intel Infrastructure Data Path Function
(IDPF) driver. It is used for both physical and virtual functions. Except
for some of the device operations the rest of the functionality is the
same for both PF and VF. IDPF uses virtchnl version2 opcodes and
structures defined in the virtchnl2 header file which helps the driver
to learn the capabilities and register offsets from the device
Control Plane (CP) instead of assuming the default values.

The format of the series follows the driver init flow to interface open.
To start with, probe gets called and kicks off the driver initialization
by spawning the 'vc_event_task' work queue which in turn calls the
'hard reset' function. As part of that, the mailbox is initialized which
is used to send/receive the virtchnl messages to/from the CP. Once that is
done, 'core init' kicks in which requests all the required global resources
from the CP and spawns the 'init_task' work queue to create the vports.

Based on the capability information received, the driver creates the said
number of vports (one or many) where each vport is associated to a netdev.
Also, each vport has its own resources such as queues, vectors etc.
From there, rest of the netdev_ops and data path are added.

IDPF implements both single queue which is traditional queueing model
as well as split queue model. In split queue model, it uses separate queue
for both completion descriptors and buffers which helps to implement
out-of-order completions. It also helps to implement asymmetric queues,
for example multiple RX completion queues can be processed by a single
RX buffer queue and multiple TX buffer queues can be processed by a
single TX completion queue. In single queue model, same queue is used
for both descriptor completions as well as buffer completions. It also
supports features such as generic checksum offload, generic receive
offload (hardware GRO) etc.

v5 --> v6: link [5]
 (patch 1):
 * removed miss completion capability bit and feature flag to defer this
   optional feature to a later follow-on patch
 (patch 2):
 * use typed back pointer in idpf_hw struct
 (patch 3):
 * fix incorrect mask in reset test
 (patch 4):
 * removed setting miss completion capability in 'get caps'
 (patch 7):
 * don't set miss completion in the queue context
 * removed __IDPF_Q_MISS_TAG_EN flag and capability check for miss
   completion tag
 (patch 8):
 * convert to const vport parameter in idpf_is_feature_ena()
 (patch 11): 
 * removed support for miss and reinject completion
 * fixed the check to restart the TX queue if enough buffers are
   available to avoid TX timeouts
 (patch 14):
 * removed 'tx_reinjection_timeouts' counter
 (patch 15):
 * updated the 'help' section in Kconfig file to use Infrastructure Data
   Path Function instead of Infrastructure Processing Unit

[5] https://lore.kernel.org/netdev/20230513225710.3898-1-emil.s.tantilov@intel.com/

v4 --> v5: link [4]
 (patch 4):
 * improved error handling in the init path
 (patch 5):
 * added check for adapter->vports before de-allocating vport resources in
   the service task
 * added check for adapter->netdevs and removed redundant msleep in idpf_remove()
 * corrected s/simulatenously/simultaneously/ in comment
 (patch 10):
 * removed inline from idpf_tx_splitq_bump_ntu()
 * renamed s/parms/params/ to be consistent with rest of naming in code
 (patch 12):
 * corrected s/specifcally/specifically/ in comment
 (patch 13):
 * removed inline from idpf_rx_singleq_extract_base_fields() and
   idpf_rx_singleq_extract_flex_fields()
 (patch 14):
 * removed "port-" prefix from some stats
 * fixed setting adaptive coalescing
 (patch 15):
 * added toctree entry
 * fixed formatting, table of contents, notes and some wording in the docs

[4] https://lore.kernel.org/netdev/20230508194326.482-1-emil.s.tantilov@intel.com/

v3 --> v4: link [3]
 (patch 1):
 * cleanups in virtchnl2 including redundant error codes, naming and
   whitespace
 (patch 3):
 * removed "__" prefix from names of adapter and vport flags, converted
   comments to kernel-doc style
 * renamed error code variable names in controlq to be more consistent
   with rest of the code
 * removed Control Plane specific opcodes and changed "peer" type comments
   to CP
 * replaced managed dma calls with their non-managed equivalent
 (patch 4):
 * added additional info to some error messages on init to aid in debug
 * removed unnecessary zero-init before loop and zeroing memcpy after
   kzalloc()
 * corrected wording of comment in idpf_wait_for_event() s/wake up/woken/
 * replaced managed dma calls with their non-managed equivalent

[3] https://lore.kernel.org/netdev/20230427020917.12029-1-emil.s.tantilov@intel.com/

v2 --> v3: link [2]
 * converted virtchnl2 defines to enums
 * fixed comment style in virtchnl2 to follow kernel-doc format
 * removed empty lines between end of structs and size check macro
   checkpatch will mark these instances as CHECK
 * cleaned up unused Rx descriptor structs and related bits in virtchnl2
 * converted Rx descriptor bit offsets into bitmasks to better align with
   the use of GENMASK and FIELD_GET
 * added device ids to pci_tbl from the start
 * consolidated common probe and remove functions into idpf_probe() and
   idpf_remove() respectively
 * removed needless adapter NULL checks
 * removed devm_kzalloc() in favor of kzalloc(), including kfree in
   error and exit code path
 * replaced instances of kcalloc() calls where either size parameter was
   1 with kzalloc(), reported by smatch
 * used kmemdup() in some instances reported by coccicheck
 * added explicit error code and comment explaining the condition for
   the exit to address warning by smatch
 * moved build support to the last patch

[2] https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.kumar.linga@intel.com/

v1 --> v2: link [1]
 * removed the OASIS reference in the commit message to make it clear
   that this is an Intel vendor specific driver
 * fixed misspells
 * used comment starter "/**" for struct and definition headers in
   virtchnl header files
 * removed AVF reference
 * renamed APF reference to IDPF
 * added a comment to explain the reason for 'no flex field' at the end of
   virtchnl2_get_ptype_info struct
 * removed 'key[1]' in virtchnl2_rss_key struct as it is not used
 * set VIRTCHNL2_RXDID_2_FLEX_SQ_NIC to VIRTCHNL2_RXDID_2_FLEX_SPLITQ
   instead of assigning the same value
 * cleanup unnecessary NULL assignment to the rx_buf skb pointer since
   it is not used in splitq model
 * added comments to clarify the generation bit usage in splitq model
 * introduced 'reuse_bias' in the page_info structure and make use of it
   in the hot path
 * fixed RCT format in idpf_rx_construct_skb
 * report SPEED_UNKNOWN and DUPLEX_UNKNOWN when the link is down
 * fixed -Wframe-larger-than warning reported by lkp bot in
   idpf_vport_queue_ids_init
 * updated the documentation in idpf.rst to fix LKP bot warning

[1] https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/

Alan Brady (4):
  idpf: configure resources for TX queues
  idpf: configure resources for RX queues
  idpf: add RX splitq napi poll support
  idpf: add ethtool callbacks

Joshua Hay (5):
  idpf: add controlq init and reset checks
  idpf: add splitq start_xmit
  idpf: add TX splitq napi poll support
  idpf: add singleq start_xmit and napi poll
  idpf: configure SRIOV and add other ndo_ops

Pavan Kumar Linga (5):
  virtchnl: add virtchnl version 2 ops
  idpf: add core init and interrupt request
  idpf: add create vport and netdev configuration
  idpf: continue expanding init task
  idpf: initialize interrupts and enable vport

Phani Burra (1):
  idpf: add module register and probe functionality

 .../device_drivers/ethernet/index.rst         |    1 +
 .../device_drivers/ethernet/intel/idpf.rst    |  160 +
 drivers/net/ethernet/intel/Kconfig            |   10 +
 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   18 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  751 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  641 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  131 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  169 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  165 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1331 +++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  124 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  293 ++
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  128 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2354 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  269 +
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1251 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4604 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  844 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  164 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3825 ++++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1289 +++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  448 ++
 26 files changed, 19176 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/idpf.rst
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ethtool.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2.h
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
