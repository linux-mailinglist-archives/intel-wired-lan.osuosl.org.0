Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE93703D33
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 21:03:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17674418C2;
	Mon, 15 May 2023 19:03:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17674418C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684177414;
	bh=eC6lxxWLu8MHvg6hJmxwZT0co8+l+oOGAKEwBQ/3vfM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=beT9b4rFAaGjUaR3g2Vq1POXAbN87nGCsnb9nApJ/PrHfOxmHw+P5wEUcBO33NOIG
	 uNka7pWzMKB9xMRZS/tmmdrUdyA7ozzm+pu5pHAScLjGzhDFWRLpgJLxaAONqbDTqI
	 hw3VEs1hGWqaiLsCCaQ7/nZ9mMHkLSd/r72ScmtDhoKi8h7UAQfyWyl82cxn6YtHFq
	 Onjuq5ubgXXj+0yv/AAxphvOQ9d89m+vfozRFCSV6oo/f7muondXmEQxJ0CWB4UTpf
	 E9N6z/8dWyB0K/x7DTcp9ftP9AnW+LGQpFG6J8jQTIqepPS0m6eSDJAOfHcBk4fSpg
	 WzUDIzbmFKwCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P9yWfDxDZ5nW; Mon, 15 May 2023 19:03:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F6D6415F8;
	Mon, 15 May 2023 19:03:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F6D6415F8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64C461BF4E5
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 19:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A00260B21
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 19:03:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A00260B21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CwjQ8inA01_Z for <intel-wired-lan@osuosl.org>;
 Mon, 15 May 2023 19:03:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB53C605C9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB53C605C9
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 19:03:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="354450553"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="354450553"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 12:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="766074863"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="766074863"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by fmsmga008.fm.intel.com with ESMTP; 15 May 2023 12:03:22 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 15 May 2023 21:03:11 +0200
Message-Id: <20230515190319.808985-1-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684177406; x=1715713406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vT7CYSKsAkJfckRs6Q+2GoeK9sPvoI1a2zZKXSAvc6Y=;
 b=VZQx2WgL4o38kluHs4v1TPjIXdoL4Lxs7cTOPKPPz7V84ANlD/TEywlW
 sLDmUpOLvx925gP1Ao/zrPEh+zbc/yERt1ORWE1CLqWS3CCs9KZgX5+IC
 3WkhIp2YeriAQxj7WbbFj1qGyADamCz/0XgeEy+E+WGFtA0ypTxA6wpdb
 0cSHgAhFnmJTfqE0/hKKoIufuYKN+i1jxX0N59AZ0Jsx6tcoQCJjH8blx
 cMzHUvtpuG6lxfdB8sSkxIXiC3oUFFbAYpJOOzH8Yww2tnH6fZyxOw5xf
 sshblgvvBwTOA0hrSUNvOVGS2d8PcUqBUYZ0DSeR7Q7ci87OCHYo787Zf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VZQx2WgL
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/8] ice: support dynamic
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
v4 -> v5:
- ice: add dynamic interrupt allocation
  - prevent q_vector leak in case vf ctrl VSI error
- ice: refactor VF control VSI interrupt handling
  - simplify ice_vsi_setup_vector_base and account for num_avail_sw_msix

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
 drivers/net/ethernet/intel/ice/ice_base.c    |  50 ++-
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
 16 files changed, 569 insertions(+), 620 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
