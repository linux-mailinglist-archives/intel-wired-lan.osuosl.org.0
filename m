Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB009DFCFB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 10:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6C55606B1;
	Mon,  2 Dec 2024 09:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Qq13bOOHmyB; Mon,  2 Dec 2024 09:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA35A606BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733131420;
	bh=Cdi8rhYIwMm8PF59kizQq8tInhB3V/BNo1IFV9a8VvI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4k64+jPSGdkISJarfJCMM/mSw+D02LfaKhO1Rgu77FQ/AzMUIo5Tz+cly07l4qRS4
	 ODlGc8munnmDY0G07EH7vj2yrgPzKOZO/NfQ2oFtvRN878KKU+lBZHUs+miZTBOKQq
	 R6gZ81GzuxAhljXHElPg1MqbB7vxk0cBjiTRl+ldTT19KXdtX/QvHxBXNMVHzrzIDe
	 rSbM7CfWHNG64tBqnBoj9E0hUo6ezLf47HfVSrPqZp0o0hySR6vTXM239f4dUAbqyr
	 Po/4ayvFcT4ewWuMM028sfdntKTJehFFfliM7b7niQdL4NM5EHuHO6xeMuARp4pk1O
	 vFku1MIdyg3oQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA35A606BB;
	Mon,  2 Dec 2024 09:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 72E871DAA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 09:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 501A9403B7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 09:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGVF8OigKuz0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2024 09:23:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32C1D40190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32C1D40190
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32C1D40190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 09:23:38 +0000 (UTC)
X-CSE-ConnectionGUID: S4DDHttaSgC335AN7T4k5w==
X-CSE-MsgGUID: XjD+pplbTaijxVfVtcWJ1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="32646286"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="32646286"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:23:38 -0800
X-CSE-ConnectionGUID: a04rlHaSTQG6GTQUq5g/1w==
X-CSE-MsgGUID: aq0mliP9T8yRyf34HiyLRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="130533262"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:23:33 -0800
Date: Mon, 2 Dec 2024 10:20:41 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <Z0176Qex/kdZ3JI8@mev-dev.igk.intel.com>
References: <20241114122009.97416-1-michal.swiatkowski@linux.intel.com>
 <062b57cf-7f5d-412f-9288-685c4c600d53@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <062b57cf-7f5d-412f-9288-685c4c600d53@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733131418; x=1764667418;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I7RkWtt4z3d0ENZ+j2JKgjUG/MCG0Gqa1MJKSgg1BKg=;
 b=JTPur2DvAT17xOdQajT6jsKlLOTtYDrXWUOeB899UIlGQ9KVyqfRQWA2
 HWeLdaz6zxf+6910qGpVcbYY2lS0kv91ZiSHh5OgKrxsdJ/wAL9xHoZ+B
 KCSaGk46M6D0D7LQGEeCBFDa4UD8egwoTsnS9ZuMuo6mEqpIHItI4wbtt
 MfmjYMoLqxHn0Kw1kb9pZjXF2WbL9jFDtjyx5JV33aZ/yxD30XYwJ/S3x
 wiksOh5GEYongh0JfqPfNA4ntcdAawNlteaDP9P6JGog6Alk9r8OqA0ay
 0wsiwCfyTmN3DN93AFT9ALos15T386tAUtvAX+RpYhV3nrZylOl3OXltt
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JTPur2Dv
Subject: Re: [Intel-wired-lan] [iwl-next v8 0/9] ice: managing MSI-X in
 driver
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
 netdev@vger.kernel.org, rafal.romanowski@intel.com, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, horms@kernel.org, David.Laight@aculab.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 18, 2024 at 03:13:32PM -0800, Tony Nguyen wrote:
> 
> 
> On 11/14/2024 4:18 AM, Michal Swiatkowski wrote:
> 
> ...
> 
> > Note: previous patchset is on dev-queue. I will be unavailable some
> > time, so sending fixed next version basing it on Tony main.
> > 
> > Michal Swiatkowski (8):
> >    ice: devlink PF MSI-X max and min parameter
> >    ice: remove splitting MSI-X between features
> >    ice: get rid of num_lan_msix field
> >    ice, irdma: move interrupts code to irdma
> >    ice: treat dyn_allowed only as suggestion
> >    ice: enable_rdma devlink param
> >    ice: simplify VF MSI-X managing
> >    ice: init flow director before RDMA
> 
> It looks like something happened with your series/send. It's marked 0/9,
> however, there are 8 patches here. Patch 1 in the previous version [1] is
> not here and patch 8 is on the thread twice (as an 8/8 and a 9/9).
> Also, it doesn't apply either with or without the previous patch 1.
> 
> [1] https://lore.kernel.org/intel-wired-lan/20241104121337.129287-1-michal.swiatkowski@linux.intel.com/
> 

Sorry for that, I were in hurry :( .

Will send fixed v9, I can remove base-commit now as the previous
patchset isn't on next-queue.

Thanks

> > 
> >   Documentation/networking/devlink/ice.rst      |  11 +
> >   drivers/infiniband/hw/irdma/hw.c              |   2 -
> >   drivers/infiniband/hw/irdma/main.c            |  46 ++-
> >   drivers/infiniband/hw/irdma/main.h            |   3 +
> >   .../net/ethernet/intel/ice/devlink/devlink.c  | 109 +++++++
> >   drivers/net/ethernet/intel/ice/ice.h          |  21 +-
> >   drivers/net/ethernet/intel/ice/ice_base.c     |  10 +-
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c  |   6 +-
> >   drivers/net/ethernet/intel/ice/ice_idc.c      |  64 +---
> >   drivers/net/ethernet/intel/ice/ice_irq.c      | 275 ++++++------------
> >   drivers/net/ethernet/intel/ice/ice_irq.h      |  13 +-
> >   drivers/net/ethernet/intel/ice/ice_lib.c      |  35 ++-
> >   drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
> >   drivers/net/ethernet/intel/ice/ice_sriov.c    | 154 +---------
> >   include/linux/net/intel/iidc.h                |   2 +
> >   15 files changed, 335 insertions(+), 422 deletions(-)
> > 
> > 
> > base-commit: 31a1f8752f7df7e3d8122054fbef02a9a8bff38f
> 
