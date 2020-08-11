Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80364241FCC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 20:38:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 213BD22FC6;
	Tue, 11 Aug 2020 18:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eR4DEUsXEMEW; Tue, 11 Aug 2020 18:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 856EC22E94;
	Tue, 11 Aug 2020 18:38:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 922601BF36C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8959D882AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYcTgafl1WoP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 18:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB1B287EE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:38:32 +0000 (UTC)
IronPort-SDR: faKr4B29ZpWHsW1NU+wjpXzDE9MX/lGvCabcqq4ndGups7PO6nHWQyBjvEtsNBgkabgKvNRmVq
 ulaFwNrSdlTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="151234019"
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="151234019"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 11:38:32 -0700
IronPort-SDR: JytFRowH1x9WE2LwjSHBsZfa+zBePOgwedMWtA5oHLFqkYKbgfN2y9QZCs0RZBtwj/En4xkvBu
 I3nl9bSPVI8A==
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="469534824"
Received: from astreet-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.213.188.45])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 11:38:31 -0700
MIME-Version: 1.0
In-Reply-To: <CAKgT0UfDs1VUo3zkgC_5m=ZTD_gTWaVEm5GuCqjxhw99agjjkg@mail.gmail.com>
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-3-andre.guedes@intel.com>
 <CAKgT0UdvyU+xkESA5HaqS2acbXQMJDUGdchRM2J6QExEcjiSkQ@mail.gmail.com>
 <159710652891.38166.5470520112400402456@gwclark-mobl2.amr.corp.intel.com>
 <CAKgT0UfujXBhZX8WeM_YrtZyCxZpP10zfARH6x4HdmjLbaFJvw@mail.gmail.com>
 <159716520324.40621.12578308745578598418@awandler-mobl.amr.corp.intel.com>
 <CAKgT0UfDs1VUo3zkgC_5m=ZTD_gTWaVEm5GuCqjxhw99agjjkg@mail.gmail.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com
Date: Tue, 11 Aug 2020 11:38:30 -0700
Message-ID: <159717111018.50137.11060973058927014942@astreet-mobl1.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igc: Fix SRRCTL register setup
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Alexander Duyck (2020-08-11 11:04:52)
> On Tue, Aug 11, 2020 at 10:00 AM Andre Guedes <andre.guedes@intel.com> wrote:
> >
> > Quoting Alexander Duyck (2020-08-10 18:41:41)
> > > On Mon, Aug 10, 2020 at 5:42 PM Andre Guedes <andre.guedes@intel.com> wrote:
> > > >
> > > > Quoting Alexander Duyck (2020-08-10 15:56:31)
> > > > > > @@ -1869,6 +1866,7 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
> > > > > >                  * because each write-back erases this info.
> > > > > >                  */
> > > > > >                 rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
> > > > > > +               rx_desc->read.hdr_addr = 0;
> > > > > >
> > > > > >                 rx_desc++;
> > > > > >                 bi++;
> > > > >
> > > > > If you are going to do this it would be better to replace the line
> > > > > that is setting the length to zero instead of just adding this line.
> > > > > That way you can avoid having to rewrite it. I only had bothered with
> > > > > clearing the length field as it was a 32b field, however if you are
> > > > > wanting to flush the full 64b then I would recommend doing it there
> > > > > rather than here.
> > > >
> > > > Just to make sure I'm on the same page, do you mean to move this line to
> > > > patch 2/3, right?
> > >
> > > No, I hadn't had a chance to take a look at patch 2 yet. I think patch
> > > 2 is ill advised as the patch is currently broken, and even if done
> > > correctly you don't get any benefit out of it that I can see. From
> > > what I can tell this patch was likely covering up some of the errors
> > > introduced in patch 2. Now that I see this in conjunction with patch 2
> > > I would say you should probably just drop patch 2 and this one as well
> > > since they aren't adding any real value other than removing a
> > > redundant write which was just there to keep this mostly in sync with
> > > how we did it for ixgbe.
> >
> > What about not setting BSIZEHEADER bits since 'one buffer descriptor' option
> > is used in SRRCTL?
> 
> Does it cause some sort of problem to be populating it? If not I would
> say leave it. It isn't too different from just populating the field
> with 0 and should have no effect since the field is unused when in one
> buffer mode.

No problem that I'm aware of. When I first came across that code I found it a
bit misleading since no header buffer is actually allocated by the driver. That
was the only motivation for this patch.

So Jeff/Tony please disregard patches 2 and 3 from this series. Let's move forward with
patch 1 only.

Thanks for the review, Alexander.

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
