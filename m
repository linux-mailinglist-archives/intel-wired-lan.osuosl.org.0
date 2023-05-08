Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3AF6FB066
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 14:43:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B251883C0B;
	Mon,  8 May 2023 12:43:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B251883C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683549819;
	bh=sFSsUB2+VNIx9flqwbrq1vwd1y5r81sSCNKV6KsJOiM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vDDPKuaSmlA0+xpnYjyCCORVyDKszll9JtvBsUfyMnFmq2ozn5ve+2WUgc9hzUfCP
	 LV0R8MO76ULR32aiT1v/8ZWoNEK4Wdiv02GqNgTOXcWfN+LZJt49sr8eRBSG9HEREg
	 ydRWpCuTgl2gMVl24iwB2eisLqgQqpWrcbHFL5hFFebHLFv+t3xJcB4SOQJ6EzWuAK
	 0y3foyl2xTgQoZmtKwnnGChLftUvuj5PQG0YLqTsFW+/A4jrrW0Vhvhuq7KNOLzNdx
	 jGciFH2Q4wQUkM20zLB4D74XsjzMznwYIAEvhMqh2thTB4kBe/e6GOAC6xpEFaV50a
	 Pa/EtfujehsuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwbNsUzU-y-n; Mon,  8 May 2023 12:43:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 923F98141B;
	Mon,  8 May 2023 12:43:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 923F98141B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1E81BF364
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E97041D7C
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E97041D7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PIHKDFjLRWAu for <intel-wired-lan@osuosl.org>;
 Mon,  8 May 2023 12:43:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ACA440289
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0ACA440289
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="349665067"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="349665067"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:43:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="676047858"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="676047858"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by orsmga006.jf.intel.com with ESMTP; 08 May 2023 05:43:23 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 May 2023 14:43:13 +0200
Message-Id: <20230508124321.2927867-1-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683549807; x=1715085807;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=genUvGslq8O9Ufc9ajFGJBrpIC8lDTI4RYuNmnnyQiQ=;
 b=VZNdWWnU21+VdXPGIByHDtXWquNMK5Hn7AnPdIQsYDoDtmlJx/IicVKx
 Sh5EP/Atas7wtHYF4tmSjn2vMpNhwVLKH7IIdppfTfYC5an6kkNoff+Oq
 nQPxWo6BSaBuS1AwZ2UO5ak57KcwIIgxZSoF8cAPexERWwfAC7gm1+SHs
 DdBXlpsKJR6UaVrgV3FtzJnDWSVsw4X++ctN1wKhO8+ghiRMBO3D5F2/l
 DDslnvSk5tmboXmALlaOWpxZxpMwhd5MILu7BXL9ch+yl9wK4OiRrZmIY
 MRX9V7yEziOK3c6YZrkXAscYaf5iP48gk7oBRi7Y2Q0rn0ZREP9Ks3nwS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VZNdWWnU
Subject: [Intel-wired-lan] [PATCH net-next v4 0/8] ice: support dynamic
 interrupt allocation
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, simon.horman@corigine.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset reimplements MSIX interrupt allocation logic to allow dynamic
interrupt allocation after MSIX has been initially enabled. This allows
current and future features to allocate and free interrupts as needed and
will help to drastically decrease number of initially preallocated
interrupts (even down to the API hard limit of 1). Although this patchset
does not change behavior in terms of actual number of allocated interrupts
during probe, it will be subject to change.

First few patches prepares to introduce dynamic allocation by moving
interrupt allocation code to separate file and update allocation API used
in the driver to the currently preferred one.

Due to the current contract between ice and irdma driver which is directly
accessing msix entries allocated by ice driver, even after moving away from
older pci_enable_msix_range function, still keep msix_entries array for
irdma use.

Next patches refactors and removes redundant code from SRIOV related logic
as it also make it easier to move away from static allocation scheme.

Last patches actually enables dynamic allocation of MSIX interrupts. First,
introduce functions to allocate and free interrupts individually. This sets
ground for the rest of the changes even if that patch still allocates the
interrupts from the preallocated pool. Since this patch starts to keep
interrupt details in ice_q_vector structure we can get rid of functions
that calculates base vector number and register offset for the interrupt
as it is equal to the interrupt index. Only keep separate register offset
functions for the VF VSIs.

Next, replace homegrown interrupt tracker with much simpler xarray based
approach. As new API always allocate interrupts one by one, also track
interrupts in the same manner.

Lastly, extend the interrupt tracker to deal both with preallocated and
dynamically allocated vectors and use pci_msix_alloc_irq_at and
pci_msix_free_irq functions. Since not all architecture supports dynamic
allocation, check it before trying to allocate a new interrupt.

As previously mentioned, this patchset does not change number of initially
allocated interrupts during init phase but now it can and will likely be
changed.

Patch 1-3 -> move code around and use newer API
Patch 4-5 -> refactor and remove redundant SRIOV code
Patch 6   -> allocate every interrupt individually
Patch 7   -> replace homegrown interrupt tracker with xarray
Patch 8   -> allow dynamic interrupt allocation

Change history:
v1 -> v2:
- ice: refactor VF control VSI interrupt handling
  - move ice_get_vf_ctrl_vsi to ice_lib.c (ice_vf_lib.c depends on
    CONFIG_PCI_IOV)
v2 -> v3:
- ice: refactor VF control VSI interrupt handling
  - revert v2 change and add no-op function in case of CONFIG_PCI_IOV=n
- ice: add dynamic interrupt allocation
  - fix commit message
v3 -> v4:
- ice: add individual interrupt allocation
  - don't use devm alloc/free for q_vectors
- ice: track interrupt vectors with xarray
  - just return NULL instead of goto if interrupt allocation failed
- ice: add dynamic interrupt allocation
  - exit if released irq entry was not found in the tracker

Piotr Raczynski (8):
  ice: move interrupt related code to separate file
  ice: use pci_irq_vector helper function
  ice: use preferred MSIX allocation api
  ice: refactor VF control VSI interrupt handling
  ice: remove redundant SRIOV code
  ice: add individual interrupt allocation
  ice: track interrupt vectors with xarray
  ice: add dynamic interrupt allocation

 drivers/net/ethernet/intel/ice/Makefile      |   1 +
 drivers/net/ethernet/intel/ice/ice.h         |  24 +-
 drivers/net/ethernet/intel/ice/ice_arfs.c    |   5 +-
 drivers/net/ethernet/intel/ice/ice_base.c    |  41 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_idc.c     |  54 ++-
 drivers/net/ethernet/intel/ice/ice_irq.c     | 378 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_irq.h     |  25 ++
 drivers/net/ethernet/intel/ice/ice_lib.c     | 288 +-------------
 drivers/net/ethernet/intel/ice/ice_lib.h     |   5 -
 drivers/net/ethernet/intel/ice/ice_main.c    | 268 ++-----------
 drivers/net/ethernet/intel/ice/ice_ptp.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  43 +--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  32 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h  |   7 +
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   5 +-
 16 files changed, 560 insertions(+), 620 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
