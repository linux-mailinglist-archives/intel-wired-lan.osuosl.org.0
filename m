Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E110094485E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 11:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D50740E84;
	Thu,  1 Aug 2024 09:31:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Ji5rAgZ_EDZ; Thu,  1 Aug 2024 09:31:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35F3040282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722504684;
	bh=YPo6PU4IFGFauQeqZFTXlXqMF7FbQoxP9VafDvdbkOw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cTYiijAN8Xii6Z0U2FVweD3XsLkL/V0fly1rndWwOEz3GO858kDsMZiTkon3j2/4n
	 Qsd3s6G3GHXaUwfodu2zG0XRhHguJZ+lHrMdnvbpAmV/UqXB5i2olMxUQJP1EjFV4H
	 +EuDleEihvHWnubhc49UDDfOQrhU9cAvubYsprB7njhKUVC8hhkJEVsNPO+UkTtsZ+
	 CowJ/LI7ZcmS6oDRAf8JHoYiRdxf2RblOMuTLKALZ04m4Q8BkIXbx/x0S0eyC0fD+6
	 VGGsJ6F10TgKswOLQxsazQqZZOn7HLNnXZRp2acdHF69Jqh6PO0mwCMdw3XcoVrJkx
	 pUX5t/XjVXSGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35F3040282;
	Thu,  1 Aug 2024 09:31:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 750DF1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 611F94031A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wZ2iiGYCf56R for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 09:31:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BDD2C40282
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDD2C40282
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDD2C40282
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:20 +0000 (UTC)
X-CSE-ConnectionGUID: f3+YgaEVTd+q8VPvP90DCg==
X-CSE-MsgGUID: Mu2Us/5BQSSfHMoEKeYwPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="23363359"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="23363359"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 02:31:19 -0700
X-CSE-ConnectionGUID: HMxJr4khSJSsgvSn2K0ibA==
X-CSE-MsgGUID: +hdhW9fLT6Wiro12VeXO6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="59628127"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 01 Aug 2024 02:31:16 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Aug 2024 11:31:08 +0200
Message-ID: <20240801093115.8553-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722504681; x=1754040681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6FiAgBs+c2Z8zw0V3g2iXv2BRxFN7ioMj7oOa7ictZ4=;
 b=ML1b2w2qxfAdDSB5PACLxW9jFtqLp+bFnNZSuyj57ew4LrlcbZHgbMK2
 iMD2ik8KRpxafxb9AtaqAXnm5GL0BCohgrMZrlEu9G/YbiqW8fB+d82cs
 6R2YV6dROT/VZrXRpxfzn0xPlvSTp8IIAnTeMQNu7x81mrq+S3XExkqEe
 pZ+Wmst1UdR6WOjQAN98AdLoOPiwG0Az0efb+x6x5twn/nDqrJPSUkQPa
 HNzKVKdn8IJNnzVpw/UK5ZcC5nQTwfzRCXz8ObcR30s3Pfe6fHHqQp0lC
 MJCVhNf0DOTbSok8GFaZ31kW4p7StlzXoB21QbP13asZlgMhoDs64G9Ty
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ML1b2w2q
Subject: [Intel-wired-lan] [iwl-next v2 0/7] ice: managing MSI-X in driver
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

v1 --> v2: [1]
 * change permanent MSI-X cmode parameters to driverinit
 * remove locking during devlink parameter registration (it is now
   locked for whole init/deinit part)

[1] https://lore.kernel.org/netdev/20240213073509.77622-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (7):
  ice: devlink PF MSI-X max and min parameter
  ice: remove splitting MSI-X between features
  ice: get rid of num_lan_msix field
  ice, irdma: move interrupts code to irdma
  ice: treat dyn_allowed only as suggestion
  ice: enable_rdma devlink param
  ice: simplify VF MSI-X managing

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
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 153 +---------
 include/linux/net/intel/iidc.h                |   2 +
 13 files changed, 287 insertions(+), 423 deletions(-)

-- 
2.42.0

