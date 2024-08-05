Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BE9947473
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 06:56:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05A9F40297;
	Mon,  5 Aug 2024 04:56:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s5N67t2AMrBO; Mon,  5 Aug 2024 04:56:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6298C402AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722833772;
	bh=Ic8405ii76lZPMkH+OahgSmHC/rLLu+h1+i2wVlni8M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M0ej5zJdizTUnjxvenGQ85HHEISTSdup3W5BHGnkFkEMy2+GnR1AUqppI7EIEi5eE
	 wyiDbapvfu4jtMUjU7YxnDDkl7YeaEC9iv8dqdEz62dQfyFYX3+8xgz8YGHkYa+dqK
	 BskJuAF87cLePmamCrW7ol8i4IjITfYYtNHOLURER5dQMQ5muqRMAVv7lbE7i1jcGv
	 OwioveZ4Kz7xMsysBh82UUIgdffueOK5M/GtqGVzCO+C5NbWVdDIUtv94AZeco4LcJ
	 XBwmH+HCtiBCblbAU0A/T0nsMiIQrkISFTu+4cF87IxmDg5Dre3lc/JrNkJC2j+Ffk
	 9M4rjc06MLbxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6298C402AD;
	Mon,  5 Aug 2024 04:56:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5ABCD1BF346
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 04:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5371B40282
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 04:56:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HA4WX33cYonC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 04:56:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 08B864027D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08B864027D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08B864027D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 04:56:04 +0000 (UTC)
X-CSE-ConnectionGUID: YQ8YzbNGSq+XuSKk+Xwiyg==
X-CSE-MsgGUID: XLaQBc/xQ0i9XmPPGmVk2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11154"; a="32178854"
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="32178854"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2024 21:56:04 -0700
X-CSE-ConnectionGUID: uIp9IkCLTWOWDHAoPgKMGw==
X-CSE-MsgGUID: Pr6HYWGzSy+L6R1T9pTvWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="93570466"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2024 21:56:01 -0700
Date: Mon, 5 Aug 2024 06:54:23 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZrBa/7ZchA+z6Equ@mev-dev.igk.intel.com>
References: <20240801093115.8553-1-michal.swiatkowski@linux.intel.com>
 <a146a6cb-9828-4c2e-a5ca-ccd6af8af040@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a146a6cb-9828-4c2e-a5ca-ccd6af8af040@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722833765; x=1754369765;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xZighTmIriPAEYCgF4bL8Fze0gvxTtk32s++G3iAKJU=;
 b=UZWneuuTwiKCNdGhLh/TfYxwIUHueg1r1Sl2lP7/OygnQO6nRmiKaw+k
 3eI52cgaDtGnQ40Qa+Lz6KdYcxy3iC3ZlY1WCE42AcwHXa4L9Ae/yHiqx
 5PDFmRER7kYinUEdAFP6oGXu/YU+XYUSIN/wrcP9DA25VUaI0txaK7WIf
 Av88EA07djBa9gByKm66+QHQZBEFvaA8JZmR8xgl6G4tXCli/M175tW32
 8ckQJQQ8vwBMhfEqe0+EkvpjBTinEn7KeL1+Jl0dQYeCb9XDK52MYH7MT
 KOAR3zUvNzjNMD1DyyVvXBNI7RHZAXLk5K7w932wm09iNYVrhUUpuRCV1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UZWneuuT
Subject: Re: [Intel-wired-lan] [iwl-next v2 0/7] ice: managing MSI-X in
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 02, 2024 at 02:41:54PM +0200, Przemek Kitszel wrote:
> On 8/1/24 11:31, Michal Swiatkowski wrote:
> > Hi,
> > 
> > It is another try to allow user to manage amount of MSI-X used for each
> > feature in ice. First was via devlink resources API, it wasn't accepted
> > in upstream. Also static MSI-X allocation using devlink resources isn't
> > really user friendly.
> > 
> > This try is using more dynamic way. "Dynamic" across whole kernel when
> > platform supports it and "dynamic" across the driver when not.
> > 
> > To achieve that reuse global devlink parameter pf_msix_max and
> > pf_msix_min. It fits how ice hardware counts MSI-X. In case of ice amount
> > of MSI-X reported on PCI is a whole MSI-X for the card (with MSI-X for
> > VFs also). Having pf_msix_max allow user to statically set how many
> > MSI-X he wants on PF and how many should be reserved for VFs.
> > 
> > pf_msix_min is used to set minimum number of MSI-X with which ice driver
> > should probe correctly.
> > 
> > Meaning of this field in case of dynamic vs static allocation:
> > - on system with dynamic MSI-X allocation support
> >   * alloc pf_msix_min as static, rest will be allocated dynamically
> > - on system without dynamic MSI-X allocation support
> >   * try alloc pf_msix_max as static, minimum acceptable result is
> >   pf_msix_min
> > 
> > As Jesse and Piotr suggested pf_msix_max and pf_msix_min can (an
> > probably should) be stored in NVM. This patchset isn't implementing
> > that.
> > 
> > Dynamic (kernel or driver) way means that splitting MSI-X across the
> > RDMA and eth in case there is a MSI-X shortage isn't correct. Can work
> > when dynamic is only on driver site, but can't when dynamic is on kernel
> > site.
> > 
> > Let's remove this code and move to MSI-X allocation feature by feature.
> > If there is no more MSI-X for a feature, a feature is working with less
> > MSI-X or it is turned off.
> > 
> > There is a regression here. With MSI-X splitting user can run RDMA and
> > eth even on system with not enough MSI-X. Now only eth will work. RDMA
> > can be turned on by changing number of PF queues (lowering) and reprobe
> > RDMA driver.
> > 
> > Example:
> > 72 CPU number, eth, RDMA and flow director (1 MSI-X), 1 MSI-X for OICR
> > on PF, and 1 more for RDMA. Card is using 1 + 72 + 1 + 72 + 1 = 147.
> > 
> > We set pf_msix_min = 2, pf_msix_max = 128
> > 
> > OICR: 1
> > eth: 72
> > RDMA: 128 - 73 = 55
> > flow director: turned off not enough MSI-X
> > 
> > We can change number of queues on pf to 36 and do devlink reinit
> > 
> > OICR: 1
> > eth: 36
> > RDMA: 73
> > flow director: 1
> > 
> > We can also (implemented in "ice: enable_rdma devlink param") turned
> > RDMA off.
> > 
> > OICR: 1
> > eth: 72
> > RDMA: 0 (turned off)
> > flow director: 1
> > 
> > Maybe flow director should have higher priority than RDMA? It needs only
> > 1 MSI-X, so it seems more logic to lower RDMA by one then maxing MSI-X
> > on RDMA and turning off flow director (as default).
> 
> sounds better, less surprising, with only RDMA being affected by this
> series as "regression"
> 

Sounds reasonable

> > 
> > After this changes we have a static base vector for SRIOV (SIOV probably
> > in the feature). Last patch from this series is simplifying managing VF
> > MSI-X code based on static vector.
> > 
> > Now changing queues using ethtool is also changing MSI-X. If there is
> > enough MSI-X it is always one to one. When there is not enough there
> > will be more queues than MSI-X. There is a lack of ability to set how
> > many queues should be used per MSI-X. Maybe we should introduce another
> > ethtool param for it? Sth like queues_per_vector?
> 
> Our 1:1 mapping was too rigid solution (but performant), I like MSI-Xes
> being kept as a detail and [setting of them] decoupled from being
> mandatory on [at least some] flows. Tuning the mapping could be useful,
> esp in heterotelic scenarios (like keeping XDP stuff separate). Could be
> left for the future.
> 
> What happens when user decreases number of MSI-X, queues will just get
> remapped to other?
>

Yes, queue will be remapped

> > 
> > v1 --> v2: [1]
> >   * change permanent MSI-X cmode parameters to driverinit
> >   * remove locking during devlink parameter registration (it is now
> >     locked for whole init/deinit part)
> > 
> > [1] https://lore.kernel.org/netdev/20240213073509.77622-1-michal.swiatkowski@linux.intel.com/
> > 
> > Michal Swiatkowski (7):
> >    ice: devlink PF MSI-X max and min parameter
> >    ice: remove splitting MSI-X between features
> >    ice: get rid of num_lan_msix field
> >    ice, irdma: move interrupts code to irdma
> >    ice: treat dyn_allowed only as suggestion
> >    ice: enable_rdma devlink param
> >    ice: simplify VF MSI-X managing
> > 
> >   drivers/infiniband/hw/irdma/hw.c              |   2 -
> >   drivers/infiniband/hw/irdma/main.c            |  46 ++-
> >   drivers/infiniband/hw/irdma/main.h            |   3 +
> >   .../net/ethernet/intel/ice/devlink/devlink.c  |  75 ++++-
> >   drivers/net/ethernet/intel/ice/ice.h          |  21 +-
> >   drivers/net/ethernet/intel/ice/ice_base.c     |  10 +-
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c  |   8 +-
> >   drivers/net/ethernet/intel/ice/ice_idc.c      |  64 +---
> >   drivers/net/ethernet/intel/ice/ice_irq.c      | 277 ++++++------------
> >   drivers/net/ethernet/intel/ice/ice_irq.h      |  13 +-
> >   drivers/net/ethernet/intel/ice/ice_lib.c      |  36 ++-
> >   drivers/net/ethernet/intel/ice/ice_sriov.c    | 153 +---------
> >   include/linux/net/intel/iidc.h                |   2 +
> >   13 files changed, 287 insertions(+), 423 deletions(-)
> > 
> 
