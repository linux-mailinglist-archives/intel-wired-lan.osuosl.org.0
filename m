Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1026C3178
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 13:21:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1ADE881F91;
	Tue, 21 Mar 2023 12:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1ADE881F91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679401305;
	bh=4hysjObtQP/yErtw2Y1kqkzJLAyYV8fRVIRhjzEFWvQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ichHKpu480mQT9TibxVvqKLYZNrG2I9nVoWZXd4Cu7k5XeojMsyPDWjJF8CwZyaZy
	 5izxrbxCbYAqKqNqtFyj8PWTuu0qmDYgAP8PCTHkwzyRJuOO/z2KBErGQONaGMSoF5
	 dqXo4UQPKWoLd7IF4f9bAoa1+Dhh7KvrdlQvkAqiKYrOLz8PJV+FWW5SYb7DjaJp34
	 9VgMelCoQ3DbX7kizMZt+03QeEFCGMKKh68B6msL6aUs1JbtYmJfY5SSZi13V25JNT
	 J7ZeqQTLW+kxPrKD6B+LJUZ/aFTpjY5Rc4RMgkpKo/XyDVzMlYMzOPxuiCVfbips4y
	 qjcbZJMIyX4dA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gb4Tc8JrGFzn; Tue, 21 Mar 2023 12:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0332981F68;
	Tue, 21 Mar 2023 12:21:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0332981F68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFEE81BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6B0461050
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6B0461050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y_yECKLf3s6E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 12:21:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0481860FFE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0481860FFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318578019"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="318578019"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 05:21:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855673492"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="855673492"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by orsmga005.jf.intel.com with ESMTP; 21 Mar 2023 05:21:35 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Mar 2023 13:21:30 +0100
Message-Id: <20230321122138.3151670-1-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679401299; x=1710937299;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M8N94bXaEv23jea28iPDiG6dnSncuFdQHegm+BzgfGo=;
 b=fJZdkeHeQp6WASZNOtkCjY8gPsztWWrohYaE6AHaAsjdgOvJwxCmISB6
 2fHRZEf0URWA92cWKjyCpLpAZ+lReN58666qMNur/ru84mOYI9TupQ/Rk
 Kci4srs4uKX7OY4DI5NZ0pNuCYh29Pwvj0gYdyqXS4DJhbwvszgIP18qJ
 XXp6F+fmdILKmfMfcvpyE5CVwiMna6o76+loP8xNt0uhuUIi6fYlRih5d
 79HtHx0PE0SEbXTjfQHELp7JML/xf3vBD/m4vgD3DJd5m+lAd9/uKOkap
 0Fuj2iouOA+Ds13xsJGJjxAHLRxQYtivXpirb5ZLKp4d5w7Y6cNO/dmnx
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fJZdkeHe
Subject: [Intel-wired-lan] [PATCH net-next v1 0/8] ice: support dynamic
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
 drivers/net/ethernet/intel/ice/ice_lib.c     | 288 +-------------
 drivers/net/ethernet/intel/ice/ice_lib.h     |   5 -
 drivers/net/ethernet/intel/ice/ice_main.c    | 268 ++-----------
 drivers/net/ethernet/intel/ice/ice_ptp.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  43 +--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  33 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h  |   3 +
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   5 +-
 16 files changed, 554 insertions(+), 617 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
