Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6062F9E139E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 07:58:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ECD640217;
	Tue,  3 Dec 2024 06:58:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3FWpTpfZe5GJ; Tue,  3 Dec 2024 06:58:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 145A740710
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733209107;
	bh=hwJX2Y/YFwuAvvbuVVY1iLnmJzckUekHgcYXofOjAps=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=k7V1p/QEDZoB4Sh1YwBeyKPDR0M1zRnCGMt5PVyeCSYPPsf5y1t9rTlJRnEgVK0zT
	 eb5WDYp1YL5a6rbfprfK4i7dMtBmTJ9J8ogCwZEie/jRPe9d3IuKTApiQnIJJuTzqx
	 bYJy+DCAiy0RPJYMgrAPLuv2ASVlkPkbdphi4EsrasgqyAdh8/rjsBnv+I22Lzu7+b
	 /DRepBF876Kjbjq4Zq3HK1qqZwhGhFTHtkzYJSWYO772zX1m1M8fSxzgVIyXL0O32T
	 9Nq/e2NojsbG1LxG5GDJfijGhf/M5WctV+8tBs2GoiiDWHbSYPyODHqlhLrJ9ZAu00
	 XUthzLVzM1Ruw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 145A740710;
	Tue,  3 Dec 2024 06:58:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E2262365
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68A73405C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id st69qOekxB4Q for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 06:58:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7CE13403AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CE13403AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7CE13403AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:23 +0000 (UTC)
X-CSE-ConnectionGUID: 2BYp5hcUQFGpMoSoAP4SCw==
X-CSE-MsgGUID: MviX2qBmT8qMmvQkB2z9bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33330459"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33330459"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:58:22 -0800
X-CSE-ConnectionGUID: nN48hy6oTzqhGx52p6NnBg==
X-CSE-MsgGUID: 3YNjMIcoRkuG+RfntT9pkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93673670"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa010.fm.intel.com with ESMTP; 02 Dec 2024 22:58:18 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Dec 2024 07:58:08 +0100
Message-ID: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733209103; x=1764745103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m7WjI6nwHce7B+Dt0tXOtDlBdaAbIGqHWDR7PhiBjjo=;
 b=RUtz5e4fjgvPDftecE3z+upmJrytv4C1DdpZX65GtL84tr2Pwc67hj5N
 VXO3Qju3NlnnrTZrLxG+cUeCECsr2QFxoxVXOTA45LHs5B+l1NQ0w//Ev
 eP+oa97mHPRNGNu+3z406N0F/kGtfStflZy3t5zQmAFHGgCGwxuJIr6Wr
 hvYxrzWI7EcLzGlDHwOcCHlKen8RyImq0uzH4xvlkEHfo9avU6uJjphvR
 itYBi7WBjx6auwDpyFSckzGR4u2EnT6lxIMcHzPsqs/LJjAfmleurkVZZ
 w03shybjKb3IElxIgi0lv/lg0bqGwicEz+d3pIH/UFsOhWkrb+IdxqvXa
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RUtz5e4f
Subject: [Intel-wired-lan] [iwl-next v9 0/9] ice: managing MSI-X in driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: himasekharx.reddy.pucha@intel.com, pmenzel@molgen.mpg.de,
 wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 rafal.romanowski@intel.com, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, horms@kernel.org, David.Laight@ACULAB.COM,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

It is another try to allow user to manage amount of MSI-X used for each
feature in ice. First was via devlink resources API, it wasn't accepted
in upstream. Also static MSI-X allocation using devlink resources isn't
really user friendly.

This try is using more dynamic way. "Dynamic" across whole kernel when
platform supports it and "dynamic" across the driver when not.

To achieve that reuse global devlink parameter pf_msix_max and
pf_msix_min. It fits how ice hardware counts MSI-X. In case of ice amount
of MSI-X reported on PCI is a whole MSI-X for the card (with MSI-X for
VFs also). Having pf_msix_max allow user to statically set how many
MSI-X he wants on PF and how many should be reserved for VFs.

pf_msix_min is used to set minimum number of MSI-X with which ice driver
should probe correctly.

Meaning of this field in case of dynamic vs static allocation:
- on system with dynamic MSI-X allocation support
 * alloc pf_msix_min as static, rest will be allocated dynamically
- on system without dynamic MSI-X allocation support
 * try alloc pf_msix_max as static, minimum acceptable result is
 pf_msix_min

As Jesse and Piotr suggested pf_msix_max and pf_msix_min can (an
probably should) be stored in NVM. This patchset isn't implementing
that.

Dynamic (kernel or driver) way means that splitting MSI-X across the
RDMA and eth in case there is a MSI-X shortage isn't correct. Can work
when dynamic is only on driver site, but can't when dynamic is on kernel
site.

Let's remove this code and move to MSI-X allocation feature by feature.
If there is no more MSI-X for a feature, a feature is working with less
MSI-X or it is turned off.

There is a regression here. With MSI-X splitting user can run RDMA and
eth even on system with not enough MSI-X. Now only eth will work. RDMA
can be turned on by changing number of PF queues (lowering) and reprobe
RDMA driver.

Example:
72 CPU number, eth, RDMA and flow director (1 MSI-X), 1 MSI-X for OICR
on PF, and 1 more for RDMA. Card is using 1 + 72 + 1 + 72 + 1 = 147.

We set pf_msix_min = 2, pf_msix_max = 128

OICR: 1
eth: 72
flow director: 1
RDMA: 128 - 74 = 54

We can change number of queues on pf to 36 and do devlink reinit

OICR: 1
eth: 36
RDMA: 73
flow director: 1

We can also (implemented in "ice: enable_rdma devlink param") turned
RDMA off.

OICR: 1
eth: 72
RDMA: 0 (turned off)
flow director: 1

After this changes we have a static base vector for SRIOV (SIOV probably
in the feature). Last patch from this series is simplifying managing VF
MSI-X code based on static vector.

Now changing queues using ethtool is also changing MSI-X. If there is
enough MSI-X it is always one to one. When there is not enough there
will be more queues than MSI-X. There is a lack of ability to set how
many queues should be used per MSI-X. Maybe we should introduce another
ethtool param for it? Sth like queues_per_vector?

v8 --> v9: [8]
 * add tested-by tags
 * v8 was send incorrect, fix it here

v7 --> v8: [7]
 * fix unrolling in devlink parameters register function (patch 2)

v6 --> v7: [6]
 * use vu32 for devlink MSI-X parameters instead of u16 (patch 2)
 * < instead of <= for MSI-X min parameter validation (patch 2)
 * use u32 for MSI-X values (patch 2, 8)

v5 --> v6: [5]
 * set default MSI-X max value based on needs instead of const define
   (patch 3)

v4 --> v5: [4]
 * count combined queues in ethtool for case the vectors aren't mapped
   1:1 to queues (patch 1)
 * change min_t to min where the casting isn't needed (and can hide
   problems) (patch 4)
 * load msix_max and msix_min value after devlink reload; it accidentally
   wasn't added after removing loading in probe path to mitigate error
   from devl_para_driverinit...() (patch 2)
 * add documentation in develink/ice for new parameters (patch 2)

v3 --> v4: [3]
 * drop unnecessary text in devlink validation comments
 * assume that devl_param_driverinit...() shouldn't return error in
   normal execution path

v2 --> v3: [2]
 * move flow director init before RDMA init
 * fix unrolling RDMA MSI-X allocation
 * add comment in commit message about lowering control RDMA MSI-X
   amount

v1 --> v2: [1]
 * change permanent MSI-X cmode parameters to driverinit
 * remove locking during devlink parameter registration (it is now
   locked for whole init/deinit part)

[8] https://lore.kernel.org/netdev/20241114122009.97416-1-michal.swiatkowski@linux.intel.com/
[7] https://lore.kernel.org/netdev/20241104121337.129287-1-michal.swiatkowski@linux.intel.com/
[6] https://lore.kernel.org/netdev/20241028100341.16631-1-michal.swiatkowski@linux.intel.com/
[5] https://lore.kernel.org/netdev/20241024121230.5861-1-michal.swiatkowski@linux.intel.com/T/#t
[4] https://lore.kernel.org/netdev/20240930120402.3468-1-michal.swiatkowski@linux.intel.com/
[3] https://lore.kernel.org/netdev/20240808072016.10321-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20240801093115.8553-1-michal.swiatkowski@linux.intel.com/
[1] https://lore.kernel.org/netdev/20240213073509.77622-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (9):
  ice: count combined queues using Rx/Tx count
  ice: devlink PF MSI-X max and min parameter
  ice: remove splitting MSI-X between features
  ice: get rid of num_lan_msix field
  ice, irdma: move interrupts code to irdma
  ice: treat dyn_allowed only as suggestion
  ice: enable_rdma devlink param
  ice: simplify VF MSI-X managing
  ice: init flow director before RDMA

 Documentation/networking/devlink/ice.rst      |  11 +
 drivers/infiniband/hw/irdma/main.h            |   3 +
 drivers/net/ethernet/intel/ice/ice.h          |  21 +-
 drivers/net/ethernet/intel/ice/ice_irq.h      |  13 +-
 include/linux/net/intel/iidc.h                |   2 +
 drivers/infiniband/hw/irdma/hw.c              |   2 -
 drivers/infiniband/hw/irdma/main.c            |  46 ++-
 .../net/ethernet/intel/ice/devlink/devlink.c  | 109 +++++++
 drivers/net/ethernet/intel/ice/ice_base.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   9 +-
 drivers/net/ethernet/intel/ice/ice_idc.c      |  64 +---
 drivers/net/ethernet/intel/ice/ice_irq.c      | 275 ++++++------------
 drivers/net/ethernet/intel/ice/ice_lib.c      |  35 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 154 +---------
 15 files changed, 336 insertions(+), 424 deletions(-)

-- 
2.42.0

