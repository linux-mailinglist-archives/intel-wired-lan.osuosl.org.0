Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700B14A97EE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 11:37:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA1B640488;
	Fri,  4 Feb 2022 10:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ygskt7RAPR5H; Fri,  4 Feb 2022 10:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 867544020B;
	Fri,  4 Feb 2022 10:37:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9A151BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2440830C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7vQKNGZYphR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 10:37:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A8198308A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643971071; x=1675507071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xwnggs8jmdSubFfET+FTILy3teHANK5bw9aCUgJQMag=;
 b=R3Rkq2ljYdSvG7oOkkKJjOVNmlMMocu2IdPtSf9cMHyZJu/0pQuNgece
 BE1EwBC3yKPXeC9EpQSKVe2kMpNCWgOm7NIa1tTbdIpzl3ZSEQBkAlBao
 sszQ3L3SxS66Rm7aTNq2dXp8/bNldmubxHUDEURNzHGWHiKAq3ukHsLmH
 bdhhR0NuOp5CzxRMx+lyUzq+/Zlv0TyyUMfWvlnkjT+3dycL9Oq7GJCqD
 27itTsUUutAwmpl8lG4C/xPuuySK30JoEQh54X6RdG+V9m9f9QuqHPzDU
 SvcTmuHi7brCoxgpujpWCRN7uwWcpjckiTLseGNDd3WT048o6e6BkYhOE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248108805"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="248108805"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 02:37:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="769926874"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 04 Feb 2022 02:37:48 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 214Abl7C029880; Fri, 4 Feb 2022 10:37:47 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri,  4 Feb 2022 11:35:48 +0100
Message-Id: <20220204103548.79282-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB51868C7F24F8C0EE3F243C2E8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-20-alan.brady@intel.com>
 <20220128200819.31570-1-alexandr.lobakin@intel.com>
 <CO1PR11MB51868C7F24F8C0EE3F243C2E8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 19/19] idpf: introduce idpf
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>, Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 3 Feb 2022 04:07:10 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 12:08 PM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim,
> > Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 19/19] idpf: introduce idpf
> > driver
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:10:09 -0800
> > 
> > > This adds the idpf driver which uses the iecm module to provide common
> > > functionality. Device specific behavior and registers are defined here
> > > and handed off to iecm which takes over the rest of the flow.
> > 
> > Ok I missed that before, so I say it now.
> > Multi-function networking devices (Ethernet, SFs, VF representors, RDMA,
> > storage offload etc.) nowadays kinda *must* be based on top of auxiliary
> > bus. Otherwise, maintaining of hundreds a direct call with recursive
> > dependencies between modules and stuff will become a burden.
> > All of the mentioned functionality will be added to the driver(s), that's a
> > fact, and as these are new drivers, it's way better to start off the right way
> > now than to bug your mind on how to refactor this later.
> > 
> 
> I suspect a refactor now will actually be more painful than later for other reasons and I believe we have other motivations for not using aux bus in this. It is however worth considering but we need some time to discuss. Will reply with something firm after some internal discussion.

The earlier the easier, it's always more difficult to remodel stuff
later than during the initial preparation. It then will start absorb
changes from both the community and a pool of Intel employees,
iecm/idpf maintainers will have to support the accepted in-tree
driver along with the internal dev tree, and nothing from those
eases any core changes.
I heard the phrase "we have a motivation" several times, but nobody
explained it to me yet (thus I'm kindly asking for this once again),
so I speak only from the development and feature-richness
perspective.

> 
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  .../device_drivers/ethernet/intel/idpf.rst    |  47 ++++++
> > >  drivers/net/ethernet/intel/Kconfig            |  16 ++
> > >  drivers/net/ethernet/intel/Makefile           |   1 +
> > >  drivers/net/ethernet/intel/idpf/Makefile      |  15 ++
> > >  drivers/net/ethernet/intel/idpf/idpf_dev.h    |  17 +++
> > >  drivers/net/ethernet/intel/idpf/idpf_devids.h |  10 ++
> > >  drivers/net/ethernet/intel/idpf/idpf_main.c   | 140
> > ++++++++++++++++++
> > >  drivers/net/ethernet/intel/idpf/idpf_reg.c    | 130 ++++++++++++++++
> > >  .../ethernet/intel/include/iecm_lan_pf_regs.h | 131 ++++++++++++++++
> > >  9 files changed, 507 insertions(+)
> > >  create mode 100644
> > > Documentation/networking/device_drivers/ethernet/intel/idpf.rst
> > >  create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
> > >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.h
> > >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
> > >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
> > >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_reg.c
> > >  create mode 100644
> > > drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
> > >

--- 8< ---

> > > --
> > > 2.33.0
> > 
> > Thanks,
> > Al

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
