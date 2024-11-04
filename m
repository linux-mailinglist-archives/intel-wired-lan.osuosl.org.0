Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CC79BB44E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:13:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6436940401;
	Mon,  4 Nov 2024 12:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yo_yaE4hnR9U; Mon,  4 Nov 2024 12:13:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C01A404A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730722426;
	bh=34TlPRA/89aHGoxVcy8IW3IEu/Nk+88bZN4MchJN0Og=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fHkTMHN1z10xoEKTFyvHQOd2jTsU92/fDdofdkoxID1V/llncXDUlKg9BuVPCQQs2
	 scqgTq3gPKO22eOLDD5/i06y6RBdbScHzlFb0Fq4B/EhblhY22oLn6GVtO+gaBqsun
	 lUBThbggOcR/UEoQ9zaxMPnqZ+Pj1MuLTu5ye3zcNUFqFr0N4KnyWAeXPisFceHF0c
	 GyLoaFj9pxhep6WIHhK9wGPJSEbvYydNT12dcQS8mGCSJBx9SZ0uKtECYiglu5Npdv
	 aHqciiXkS4To939keEDgE73flylJlPFC7nR9/dokCea8VCeNGLhlDsSWyuweZXhx2o
	 eV+x6Ti3DF1dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C01A404A8;
	Mon,  4 Nov 2024 12:13:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AE26723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B23540425
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dn1P0GUEScsH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:13:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B96EB40401
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B96EB40401
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B96EB40401
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:13:42 +0000 (UTC)
X-CSE-ConnectionGUID: oFogaxw5SBqJkCfNUOcAuA==
X-CSE-MsgGUID: oGTL+gFbRcSMY8nrlAF7UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="29843651"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="29843651"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:13:42 -0800
X-CSE-ConnectionGUID: oyDCYbIeSFW3/oxJVuyhFA==
X-CSE-MsgGUID: JaKOdBq/QMqV5na1sMcsLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83525753"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 04 Nov 2024 04:13:38 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2024 13:13:28 +0100
Message-ID: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730722423; x=1762258423;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RRr76WmKyGUVdIz4I0PDU/3yIiEp1D6bi8SQrTq4vOY=;
 b=CnjuehXpTD3kLHJ+bxHrpi4ZCuzNGGC99HzMkUuIOCUHHcgQn+E9+U4P
 vvC/aTR0CoO7TIbrFk9r3FX5HCBnQwHKALaWczuqSk/IfPgSEVgLOqENM
 1js52v1izhp7v5U7kBr2v/cbmT7VtOTMHT73q0M62BPzwqODa7oQauD3Z
 XEUk1jecrvP0G0ntDK5QO5pzNTyU5yWtMR0e+b8C5ce/KFzg/JywTFshE
 wdwesknA/3bEWqaT6AHsRoEt5cRrh8HRxgVhrv3v8nXRAX8LjyEN1iMtR
 rGmylwASXaW3FR7W01ri0eMOZjd1pJ+NamXYjxk1ap+zNuD38W4hwkwul
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CnjuehXp
Subject: [Intel-wired-lan] [iwl-next v7 0/9] ice: managing MSI-X in driver
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 horms@kernel.org, David.Laight@ACULAB.COM, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
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
 drivers/infiniband/hw/irdma/hw.c              |   2 -
 drivers/infiniband/hw/irdma/main.c            |  46 ++-
 drivers/infiniband/hw/irdma/main.h            |   3 +
 .../net/ethernet/intel/ice/devlink/devlink.c  | 102 ++++++-
 drivers/net/ethernet/intel/ice/ice.h          |  21 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   9 +-
 drivers/net/ethernet/intel/ice/ice_idc.c      |  64 +---
 drivers/net/ethernet/intel/ice/ice_irq.c      | 275 ++++++------------
 drivers/net/ethernet/intel/ice/ice_irq.h      |  13 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  35 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 154 +---------
 include/linux/net/intel/iidc.h                |   2 +
 15 files changed, 328 insertions(+), 425 deletions(-)

-- 
2.42.0

