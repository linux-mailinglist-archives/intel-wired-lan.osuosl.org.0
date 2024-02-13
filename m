Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6D48529DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:30:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 827B260AF6;
	Tue, 13 Feb 2024 07:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUKZ7Aio1wvh; Tue, 13 Feb 2024 07:30:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5778960AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809456;
	bh=WdbQZgmiJsnmbfIMsyoKhAsSoN0yQJIKSinp2A5FZ2g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CwLQlsnHn2ZpOA2iHlTyG6Wrb3DQxCftxDXqbq7SAYPiu/7hip4mJIdTUIC7RX6O8
	 g5ZlMQLhqgnrJMbWu9fTM6RDR+StTVo9q6x9oS3lwtun/tWgLIMmnFBRtmXdAVrx4S
	 zzfWRmncxyiv5MmMA8pkPz0BlfWdI9lvLWWon3rcCzudGtLYO7DAfP0V+bbAuhieWy
	 7lVfRba7NJ1yqXW1B3IdB9JHhEZYEZbdRgq6Matozc9wCnrAeVTa8NkbEo6BZUYCLY
	 vwSlX86JV3bHcfV2PAInPvlPvIRWNzOcDwgM3UE2S7i5v67HNGP2XW0Ab9nebr1ZDU
	 u/bjdTka5hrSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5778960AF1;
	Tue, 13 Feb 2024 07:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19E101BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0545E8208B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wjr4Y-kn1teL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:30:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 23D0C82089
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23D0C82089
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23D0C82089
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:30:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19219845"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="19219845"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:30:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="2797523"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 12 Feb 2024 23:30:49 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:35:02 +0100
Message-ID: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809453; x=1739345453;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UT7AqtOeHiy16/k+wZnb/rch6zN8Plk2+nqOMcpTwUQ=;
 b=LxXazEZxTdjb6R8fSGQTMI9b/cvMn39QgVdMdPLmX1yjwKGkY+MLj3sU
 qoaLrpQvAmxwXh5u02RPfU8JHTqR7Se9VbMy6uz5XEm/uWrNAl9+uOqZ4
 mccjalM3b/8gfAj2/1tIAkXD3/bhL4xREfbBZsdI3euBFh6u+0SyLe7ob
 k11iWKdNeoqCU/m4hD+BeGIRcietbOHc7OtsBL9uMXtE8mdag43KdqL9Y
 YbJeDO6Ggcl73xoNr+I2CZFVdXzi8Je8KPRXhkwMhZX5V/hLSWO5kcNXI
 8HZ/Yj1Cd6h5cUVYBd8hLb1qK2VvP6BlMKG8UdqZluYUKO0XzkbHbXrIO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LxXazEZx
Subject: [Intel-wired-lan] [iwl-next v1 0/7] ice: managing MSI-X in driver
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
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
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
RDMA: 128 - 73 = 55
flow director: turned off not enough MSI-X

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

Maybe flow director should have higher priority than RDMA? It needs only
1 MSI-X, so it seems more logic to lower RDMA by one then maxing MSI-X
on RDMA and turning off flow director (as default).

After this changes we have a static base vector for SRIOV (SIOV probably
in the feature). Last patch from this series is simplifying managing VF
MSI-X code based on static vector.

Now changing queues using ethtool is also changing MSI-X. If there is
enough MSI-X it is always one to one. When there is not enough there
will be more queues than MSI-X. There is a lack of ability to set how
many queues should be used per MSI-X. Maybe we should introduce another
ethtool param for it? Sth like queues_per_vector?

There is also a lack of ability to change RDMA queues / MSI-X. This
patchset moves managing RDMA MSI-X to irdma driver, but there is no
mechanism to change default MSI-X amount. Maybe devlink param for that
will work? We can think of storing this kind of param in NVM.

Michal Swiatkowski (7):
  ice: devlink PF MSI-X max and min parameter
  ice: remove splitting MSI-X between features
  ice: get rid of num_lan_msix field
  ice, irdma: move interrupts code to irdma
  ice: treat dyn_allowed only as suggestion
  ice: enable_rdma devlink param
  ice: simplify VF MSI-X managing

 drivers/infiniband/hw/irdma/hw.c             |   2 -
 drivers/infiniband/hw/irdma/main.c           |  46 +++-
 drivers/infiniband/hw/irdma/main.h           |   3 +
 drivers/net/ethernet/intel/ice/ice.h         |  21 +-
 drivers/net/ethernet/intel/ice/ice_base.c    |  10 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c | 114 +++++++-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   8 +-
 drivers/net/ethernet/intel/ice/ice_idc.c     |  64 +----
 drivers/net/ethernet/intel/ice/ice_irq.c     | 271 ++++++-------------
 drivers/net/ethernet/intel/ice/ice_irq.h     |  13 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  36 ++-
 drivers/net/ethernet/intel/ice/ice_main.c    |  18 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c   | 153 +----------
 include/linux/net/intel/iidc.h               |   2 +
 14 files changed, 327 insertions(+), 434 deletions(-)

-- 
2.42.0

