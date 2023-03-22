Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D2F6C5088
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:25:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA7C980F7E;
	Wed, 22 Mar 2023 16:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA7C980F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679502351;
	bh=allH0e2YPD803PONVFyS2saqZgZab70fXqS1z+lEq3A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SueWx+MpUqv8kSH+T62B4guV8VOh815CRHeqx+1mUwhGlBzdSL8+JJT6O8Shok3qD
	 YgMAlLL8D4PO43pQ6X0961Ym7kY41+7IKTraiisvjPZckcyunaq+yGCZ2WFl3GyrKH
	 cvXvkH5DT46U28L2xS6B6gp/jbF7cb2BaQnPuwqLA0QMSu4GbYcMkO736AAgjPxxrY
	 Al6viCi99oGlc+JvNG2TZfovca/AokKG8dNNMjn5Eg9bz9UbKlIiGgI3U7ds9XkFu7
	 /ba23HDfPpLqUfIYfGPpfVjfsSvScKTi64AGqOxLO7x0ZtvceZW0Lk8Mz5kcMvXWIo
	 ooHuittHVQJvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6EfnKI0qTN6C; Wed, 22 Mar 2023 16:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82BD780C13;
	Wed, 22 Mar 2023 16:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82BD780C13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 375171BF955
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CB7441D7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CB7441D7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFG8LRFnJ7Tj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:25:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2C7A41D83
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2C7A41D83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="404151265"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="404151265"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 09:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="825462707"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="825462707"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2023 09:25:28 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 17:25:22 +0100
Message-Id: <20230322162530.3317238-1-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679502331; x=1711038331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RP5Qs7W9H3ow0Nm3gOyqfSConsnZ70o3u1Ce8vNRzRk=;
 b=P5PtHisu4WxlwxB7gmb7wWIOCtHz12kB9OyVwPzX077qqsuDKchgcJ7H
 zJfD0B4xCpczngwKrj4dLGnToUjlK0aov0cMP3UEI0Vy6lt3Kfx8Np4TK
 0gQOkrESkOVI7mMoAnXr046FtiGkjVyL4XEBBNwuULCvCkQpPwZridh5v
 p8Yi/X5mUFr47AHhgRmHGJOT77CHVSyU/9hPk4kvnYSQvH8yrTIGkk73m
 p4bX7Z0FKlx0mQeZFBr0pPegDXRs6c6eyxNt7gm2O6oLpL2ocy+GovOl4
 EGKk0m6phBl2l2mALiUlbDFNkUnO01L+gjusXZKrex0BTM5QA5Z0tlyp2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P5PtHisu
Subject: [Intel-wired-lan] [PATCH net-next v2 0/8] ice: support dynamic
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
 jesse.brandeburg@intel.com, shiraz.saleem@intel.com
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
 drivers/net/ethernet/intel/ice/ice_base.c    |  36 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_idc.c     |  54 ++-
 drivers/net/ethernet/intel/ice/ice_irq.c     | 377 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_irq.h     |  25 ++
 drivers/net/ethernet/intel/ice/ice_lib.c     | 321 ++--------------
 drivers/net/ethernet/intel/ice/ice_lib.h     |   7 +-
 drivers/net/ethernet/intel/ice/ice_main.c    | 268 ++-----------
 drivers/net/ethernet/intel/ice/ice_ptp.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  43 +--
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   5 +-
 14 files changed, 553 insertions(+), 617 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
