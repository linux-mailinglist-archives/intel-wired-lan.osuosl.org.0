Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0686994B794
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 09:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9919680C2E;
	Thu,  8 Aug 2024 07:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eFS8Ly2KIxY7; Thu,  8 Aug 2024 07:20:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 249FA80C39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723101625;
	bh=RM6lEIjHfe5ZS8uSckEqrvimh0oADc2piS7sPHEF33o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qBQcpbzaGeYgIgwd0zs5tO8iDLt1fh0wQjy7ENjnm3E0Iw5Z60/LQMawRtMPV6H5d
	 zY+qVcs9+t90pTeeEaxIHwxghHitkURJ2o2fwAzpWKLOIOwK00tZgJINmRWAkfuNyh
	 ZTJyeMxNsbd7JhXiS/GSA4PxpL0mb8DPIiAfIGTm2GDJbyAgN0CyTOzKBYocB1o3wL
	 wsfJXQIJ4O/O46u1BW5pz+80sBdiu8B6Q2qbs+CGPV4+to/lBENAprybLL8vVAZdUn
	 uOgNywmyhoJHIvr0ZjLiGuuQQcdW3QyUdk+9RQhqSMAevPsxCSkkyAurYIZMPkIQT0
	 LckJOc604koig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 249FA80C39;
	Thu,  8 Aug 2024 07:20:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10B401BF369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F199060813
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZrRRO5b-h2x for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 07:20:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CD8760772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CD8760772
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CD8760772
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:21 +0000 (UTC)
X-CSE-ConnectionGUID: ISPeyUpcTfCSXPk9xYH2fQ==
X-CSE-MsgGUID: kU8BRJ1zQomcENlgnBxaUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21361331"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21361331"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 00:20:20 -0700
X-CSE-ConnectionGUID: y5eLWebsQo61yWS54BzIXA==
X-CSE-MsgGUID: uQPVRAMbSD+oThlZNIEIvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57073442"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 08 Aug 2024 00:20:16 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 09:20:08 +0200
Message-ID: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723101621; x=1754637621;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/yOZ3DOVKOtwhMiUpKwWKn2ZvszerITM6D+FkdQMifI=;
 b=mx0LZ/c3en5IvC4xuTtH4HqFggSP39rT6YMpDlyoEPHYXR2xNNFJbBi9
 lR7JKfb+A9TWmBd8+CA2wKI/WxSKTibvMwfqZ52cXxL5Mw8GfVFwJmlej
 nW8VkdvOalYal22Uxaly4nbI+b90EqV/mYwcHm5rAcgqeqq7NDxlkCMyy
 aGEFmIOWyiowTFvi1OnRcWhPOX3olg+j0zmdwVnxdFvmDjCRhCf4XZhdW
 X4OMnyq90DShbZ/5e0OrNaA3aEiDCmJZIkTOOQ8I5gDgxA4dI1nrDBaV3
 dDg4pG/e6k/GvP6gcXvvy78PieVGy/LqNIqp0XWckH2Sak5RbY5srBxGG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mx0LZ/c3
Subject: [Intel-wired-lan] [iwl-next v3 0/8] ice: managing MSI-X in driver
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
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

v2 --> v3: [2]
 * move flow director init before RDMA init
 * fix unrolling RDMA MSI-X allocation
 * add comment in commit message about lowering control RDMA MSI-X
   amount

v1 --> v2: [1]
 * change permanent MSI-X cmode parameters to driverinit
 * remove locking during devlink parameter registration (it is now
   locked for whole init/deinit part)

[2] https://lore.kernel.org/netdev/20240801093115.8553-1-michal.swiatkowski@linux.intel.com/
[1] https://lore.kernel.org/netdev/20240213073509.77622-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (8):
  ice: devlink PF MSI-X max and min parameter
  ice: remove splitting MSI-X between features
  ice: get rid of num_lan_msix field
  ice, irdma: move interrupts code to irdma
  ice: treat dyn_allowed only as suggestion
  ice: enable_rdma devlink param
  ice: simplify VF MSI-X managing
  ice: init flow director before RDMA

 drivers/infiniband/hw/irdma/hw.c              |   2 -
 drivers/infiniband/hw/irdma/main.c            |  46 ++-
 drivers/infiniband/hw/irdma/main.h            |   3 +
 .../net/ethernet/intel/ice/devlink/devlink.c  |  75 ++++-
 drivers/net/ethernet/intel/ice/ice.h          |  21 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   8 +-
 drivers/net/ethernet/intel/ice/ice_idc.c      |  64 +---
 drivers/net/ethernet/intel/ice/ice_irq.c      | 277 ++++++------------
 drivers/net/ethernet/intel/ice/ice_irq.h      |  13 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  36 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 153 +---------
 include/linux/net/intel/iidc.h                |   2 +
 14 files changed, 291 insertions(+), 425 deletions(-)

-- 
2.42.0

