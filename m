Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C40241F83
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 20:05:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AB0A222CB0;
	Tue, 11 Aug 2020 18:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a9EzTGvHmMAw; Tue, 11 Aug 2020 18:05:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79BF622DC7;
	Tue, 11 Aug 2020 18:05:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A3551BF36C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05A6A22D55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deKDPUuFyM4D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 18:05:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E05F22CB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:05:04 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id t4so11555754iln.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 11:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eTwYMr3hhqRfmNz/C5cT5HdKgTycOzLoU1Gtq+qfRDg=;
 b=lRqbiEx5dAwVHaored4M8Sg1uaWK8kJj9sihGlwJXPJHdwskmB5EbxDOb5j+ulX2kp
 L+KgyJrXIOrzL3P4Zru0ljTF5ibWHhxeUe6QI8wCi+zivAnlpqa8leTj7lCHXxYlf3Tw
 7kJnY5/R7ZN2xGp02Y6ATLl0vsxOdiJTrn8eV0gz99jTwjJH5B/Fcsadk1jANNhw39Hn
 riuyokabYhEMOOdg1Xq/CAP5ZtNARyLAUDg3KLPti8IMWaz++n5NC2wtgHVSTJddyZg9
 NT7JICq0JLsoBoSBfkE4zY+YrsYWaTLNXLxJHwy4VJ34bg40t46fSdlGTE16VZxGNDoM
 +taA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eTwYMr3hhqRfmNz/C5cT5HdKgTycOzLoU1Gtq+qfRDg=;
 b=pVZUMmhFZb6GEzlhbKCO+tDivYqdlHyUCXtFk4HcfPi7hgEAfLROl4OpP6GMV5Ya/7
 wp0gsqOKPXxYh/Kvh6dJiGbjZZsWCi1QLbhlZ3I8PUcD+qvI5PqB/ipLWlMxYzIS5u2a
 hM58xSTQj/Jc2E7uKcqy/qc9MJSWa6602DbtXaYquEXS1/bfbuPytJh2KBTMsncyXCqc
 mcfZTdb1YQ+p1fECIKoqree/88O2b4pmdtuqRylT2GH4RT7XiitZczeNioK+NJ22GwGo
 M2l9dZySwppl3eIkZrdsqvrKZ1/DJ5LaoKDplKZaqu6pZ2S3P1IRK2i1RV0x/5PJgvTu
 H+Hw==
X-Gm-Message-State: AOAM532E8GKZL0qtFmEumPiaDGVcMrGGisOTzZu9H9CPj4ccVumeQ70W
 4ftIe6JxwIUT3A5erHpjp1Nalt/cRtc9nJm0nnWqMgka
X-Google-Smtp-Source: ABdhPJx8j0KNJU9v1eDUUVfhNxMWuYISBgSrNOwLyiODAfIoo/ylTDXHkQ2gW/+15VwziWgPX9lSvu78o0Ve/ELe2iQ=
X-Received: by 2002:a92:d646:: with SMTP id x6mr2001309ilp.237.1597169103475; 
 Tue, 11 Aug 2020 11:05:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-3-andre.guedes@intel.com>
 <CAKgT0UdvyU+xkESA5HaqS2acbXQMJDUGdchRM2J6QExEcjiSkQ@mail.gmail.com>
 <159710652891.38166.5470520112400402456@gwclark-mobl2.amr.corp.intel.com>
 <CAKgT0UfujXBhZX8WeM_YrtZyCxZpP10zfARH6x4HdmjLbaFJvw@mail.gmail.com>
 <159716520324.40621.12578308745578598418@awandler-mobl.amr.corp.intel.com>
In-Reply-To: <159716520324.40621.12578308745578598418@awandler-mobl.amr.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 11 Aug 2020 11:04:52 -0700
Message-ID: <CAKgT0UfDs1VUo3zkgC_5m=ZTD_gTWaVEm5GuCqjxhw99agjjkg@mail.gmail.com>
To: Andre Guedes <andre.guedes@intel.com>
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

On Tue, Aug 11, 2020 at 10:00 AM Andre Guedes <andre.guedes@intel.com> wrote:
>
> Quoting Alexander Duyck (2020-08-10 18:41:41)
> > On Mon, Aug 10, 2020 at 5:42 PM Andre Guedes <andre.guedes@intel.com> wrote:
> > >
> > > Quoting Alexander Duyck (2020-08-10 15:56:31)
> > > > > @@ -1869,6 +1866,7 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
> > > > >                  * because each write-back erases this info.
> > > > >                  */
> > > > >                 rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
> > > > > +               rx_desc->read.hdr_addr = 0;
> > > > >
> > > > >                 rx_desc++;
> > > > >                 bi++;
> > > >
> > > > If you are going to do this it would be better to replace the line
> > > > that is setting the length to zero instead of just adding this line.
> > > > That way you can avoid having to rewrite it. I only had bothered with
> > > > clearing the length field as it was a 32b field, however if you are
> > > > wanting to flush the full 64b then I would recommend doing it there
> > > > rather than here.
> > >
> > > Just to make sure I'm on the same page, do you mean to move this line to
> > > patch 2/3, right?
> >
> > No, I hadn't had a chance to take a look at patch 2 yet. I think patch
> > 2 is ill advised as the patch is currently broken, and even if done
> > correctly you don't get any benefit out of it that I can see. From
> > what I can tell this patch was likely covering up some of the errors
> > introduced in patch 2. Now that I see this in conjunction with patch 2
> > I would say you should probably just drop patch 2 and this one as well
> > since they aren't adding any real value other than removing a
> > redundant write which was just there to keep this mostly in sync with
> > how we did it for ixgbe.
>
> What about not setting BSIZEHEADER bits since 'one buffer descriptor' option
> is used in SRRCTL?

Does it cause some sort of problem to be populating it? If not I would
say leave it. It isn't too different from just populating the field
with 0 and should have no effect since the field is unused when in one
buffer mode.

> > The reason the driver path was coded the way it is in order to get
> > away from having to clear the entire descriptor after processing it
> > and to avoid having to explicitly track next_to_use and next_to_clean.
> > Instead we leave the descriptor as mostly read-only until we
> > reallocate the buffer and give it back to the device. All we have to
> > do is clear the length field of the next_to_use descriptor when we are
> > done allocating so that we do not overrun the descriptors when
> > cleaning. It makes it much easier to debug when the descriptors are
> > left in place as long as possible since we can then come back and look
> > at the memory and generally I have found performance is improved as we
> > are not having to dirty cachelines prematurely.
>
> Thanks for the context.
>
> - Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
