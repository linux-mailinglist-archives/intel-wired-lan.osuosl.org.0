Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F293701AA0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 May 2023 00:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38E1D42D1A;
	Sat, 13 May 2023 22:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38E1D42D1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684018652;
	bh=zB6CSh408FcAeJ3+XNKMc+yKyxxhw7pNiLfPEUgclgM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=q66ymXRks9NZGo+sw46Q3/YLFc0SHyVzkBTA7IPxCgUEGGtuRP9rOIAQ96ODiCel5
	 mMIevdutlqfq6CHknIAWONL2vbntL47SW+dqMS1kDeqC/JZVDxz+b9uvGjnyLcWCtX
	 pFif89TfY2kvlZXa3zbYROzU6CW7Pr+cZzEZkkyouezu3SJeEHPfytDZg4n3AeFBpd
	 Im3SgWI/oCEOinf4Cxu8tr0yCfGei8fXY2AayfTVwEnWb3GmTq5uOjByJC0Zm0lSor
	 SAzd0Xq7lqoYcs0ZxOoxviZfIdg0hHaTfu3OdAguVY9ghqudUbWc/RbInHZpI1lc/d
	 KI+jm3j18ywtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BezoGiEZ0B7J; Sat, 13 May 2023 22:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D773D42A32;
	Sat, 13 May 2023 22:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D773D42A32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63CF71BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 22:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CFEF42D00
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 22:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CFEF42D00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7h8EkBq15C_C for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 May 2023 22:57:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A83D42A32
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A83D42A32
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 22:57:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="348487513"
X-IronPort-AV: E=Sophos;i="5.99,273,1677571200"; d="scan'208";a="348487513"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2023 15:57:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="770171462"
X-IronPort-AV: E=Sophos;i="5.99,273,1677571200"; d="scan'208";a="770171462"
Received: from estantil-desk.jf.intel.com ([10.166.241.20])
 by fmsmga004.fm.intel.com with ESMTP; 13 May 2023 15:57:20 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 13 May 2023 15:56:55 -0700
Message-Id: <20230513225710.3898-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684018642; x=1715554642;
 h=from:to:cc:subject:date:message-id;
 bh=hF+srNrD1FbAnGAvR7LXZR7+xjqbDHWIFHuuy7RGb+w=;
 b=cXJYdmJOGAx35qImnsKIBvVz3y/Hg4rfGejSKmAz2b7g/tgJ+7aW42FQ
 sW0vTrFZcDVXQ2cmiB7Xnm0vG6OJkLC5CBkv9ZICReD0777IydTP/GLZ2
 +Hn9MPeRdohtKXyBnxHcvEU3bXMKdx+fyHA4YhTTLgg8lqSUCvM2oC6br
 CvypSCK61++IRwszewk8JPuNhZxoQ8DndUr6Jc+fmXL6QJr9M5+2QhYlp
 F3ivkmZckkCP/eTbAZZM1Z5OVlb34d4Ytm8RmHqF3SU6WdSB0CwRucO3H
 r0C7zTyRacLxHC944eXvGzofECEwK2zH+jsn8rQr7VmoAsHDaaDlTzX7P
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cXJYdmJO
Subject: [Intel-wired-lan] [PATCH iwl-next v5 00/15] Introduce Intel IDPF
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
MIME-Version: 1.0
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
 drivers/net/ethernet/intel/idpf/idpf.h        |  752 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  641 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  131 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  169 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  165 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1332 +++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  124 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  293 +
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  128 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2354 ++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  269 +
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1251 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4854 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  854 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  164 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3827 +++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1301 +++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  448 ++
 26 files changed, 19452 insertions(+)
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
2.17.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
