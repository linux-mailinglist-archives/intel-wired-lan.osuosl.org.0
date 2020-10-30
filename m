Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AA82A0FF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Oct 2020 22:05:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75D61842DD;
	Fri, 30 Oct 2020 21:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzX2iePrUisP; Fri, 30 Oct 2020 21:05:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E87F784420;
	Fri, 30 Oct 2020 21:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB03F1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A46398758D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uaeOua49h-Ks for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Oct 2020 21:05:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1992287323
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:05:45 +0000 (UTC)
IronPort-SDR: 0wzd2h3TSeMGlXlzZxMWLTJdFQXg4JyWLGSOxS/aY+pMHsCGJGY+/voE4I9YBv/V0PDUMWSTPq
 T/qnyU2YnFJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="147951330"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="147951330"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 14:05:44 -0700
IronPort-SDR: DWpjCGH5v3gmHh3gQF+g8Tz3a9VPeretRp259Lr3zHtEtImVuDSfxKhXEFjVZPtuoJ6ONcrnsV
 7997WPRrIOkg==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="351402193"
Received: from jesantos-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.106.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 14:05:44 -0700
MIME-Version: 1.0
In-Reply-To: <160401600277.13680.18047091279684955908@sjaggi-mobl.amr.corp.intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
 <20201028201943.93147-8-andre.guedes@intel.com>
 <20201029141346.GC890@ranger.igk.intel.com>
 <160401600277.13680.18047091279684955908@sjaggi-mobl.amr.corp.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 30 Oct 2020 14:05:43 -0700
Message-ID: <160409194362.46328.3373216075562216324@jesantos-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v2 07/10] igc: Add initial XDP support
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Andre Guedes (2020-10-29 17:00:02)
> Quoting Maciej Fijalkowski (2020-10-29 07:13:46)
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> > > new file mode 100644
> > > index 000000000000..faec0bedc550
> > > --- /dev/null
> > > +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> 
> [...]
> 
> > > +struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> > > +                              struct xdp_buff *xdp)
> > 
> > I would suggest to either have it in igc_main.c or in the header so that
> > compiler could take the decision whether to inline it or not. For control
> > plane related functions it's fine to have them in the separate file.
> 
> Do you also mean to move all other xdp functions currently defined in igc_xdp.c
> that are called from igc_xdp_run_prog()?
> 
>         igc_xdp_xmit_back()
>         igc_xdp_get_tx_ring()
>         igc_xdp_init_tx_descriptor()
>         igc_xdp_init_tx_buffer()

FYI, in the v3 I just posted, I moved those functions to igc_main.c as well
since it makes more sense.

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
