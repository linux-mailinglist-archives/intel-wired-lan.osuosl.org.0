Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C67E24149C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 03:42:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E627487C0C;
	Tue, 11 Aug 2020 01:41:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UsajoiU61Cnt; Tue, 11 Aug 2020 01:41:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DE5787C2C;
	Tue, 11 Aug 2020 01:41:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E57861BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 01:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E0BE387C0C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 01:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a4J6PKH2aAwf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 01:41:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A5C087BFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 01:41:53 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id c16so9249048ils.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 18:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bdz7KqaxG4gBr7XJwGlEh5PYVnA8IJA0bb/kRLqRQ7A=;
 b=UWjDcf9GTfr3XpuryqGBA7p1r1PT89RrzHpZmlzGFIYf6/uTtpUJQz6F+KJzkJFbX5
 3IK0jTRrzVhiu0Ycwtnv44UnXrS6ptO+g7bPPSl9sLwM+hpyHBE1Ve+em/SFafJfO0GO
 JpUxRrFkuXtoK4mvyR/RyhVBr8Z7AueORC4d0XEX9SNEJ6rfCj4MfFgI4BY6oJniXslI
 8HFQ+uHWi2kHnTlFDqpJzqEEVUtJyMMNzLGjAIvu9Zf778fWl3i6Rh5yVVPEXIv/Lwve
 Jlguvc1KvjZq9BpjldoPtQXm5bsEpilV+BsZW5M/brnv/8835stAAquBZPjS2k2wzBpx
 iHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bdz7KqaxG4gBr7XJwGlEh5PYVnA8IJA0bb/kRLqRQ7A=;
 b=EM0jXFN4qFJlt7/kvUfRwGwUi9TpXgzWYKWx6gbg60s4fEXE6O3BPDgXCsQlEnQy7L
 FCDl99JQZ7Vg4gjrffxCahmNmV2H87RI5d9bcI/2/KyimoOEZkA8LppJj4Y3dTBhwE0W
 x4XXCwk7ZR9iiKol41D/RNKN/qhqMUCU9n1qV6isOPu7dO6wiCFK4l57w8cDfSST88wx
 A450Uky14euUGRsdxhpzPZFbYNyAd1CyiE7FIE7Gq+zMGzfi+9wTzl3Cx4SDIL3cvLGM
 1kQyXzcLh3oRu1TZZoCcOnjlHwWPvQaGFm4zpsTZCzcNa8ICVjq7Sy8RpW4VT1mF2AUR
 PXXA==
X-Gm-Message-State: AOAM5311qCktsxSj8Vd1iEhKKBQzbS4TmXpWAh+rsJfpDrAfjCrtjjCV
 g0TvllwXgSr4E+CxcSFBOoTzttgBBzbtRzTzEHpLTsed5Pg=
X-Google-Smtp-Source: ABdhPJxvw+DlEoA4pCUAWQijI2CWD7CdUc3NfRY503gFihVcNA8HoE8wtlersFBbwUTyB6ffXJ8iREk6S56+BxDidPA=
X-Received: by 2002:a92:1a4c:: with SMTP id z12mr10828973ill.95.1597110112463; 
 Mon, 10 Aug 2020 18:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-3-andre.guedes@intel.com>
 <CAKgT0UdvyU+xkESA5HaqS2acbXQMJDUGdchRM2J6QExEcjiSkQ@mail.gmail.com>
 <159710652891.38166.5470520112400402456@gwclark-mobl2.amr.corp.intel.com>
In-Reply-To: <159710652891.38166.5470520112400402456@gwclark-mobl2.amr.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 10 Aug 2020 18:41:41 -0700
Message-ID: <CAKgT0UfujXBhZX8WeM_YrtZyCxZpP10zfARH6x4HdmjLbaFJvw@mail.gmail.com>
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

On Mon, Aug 10, 2020 at 5:42 PM Andre Guedes <andre.guedes@intel.com> wrote:
>
> Quoting Alexander Duyck (2020-08-10 15:56:31)
> > > @@ -1869,6 +1866,7 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
> > >                  * because each write-back erases this info.
> > >                  */
> > >                 rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
> > > +               rx_desc->read.hdr_addr = 0;
> > >
> > >                 rx_desc++;
> > >                 bi++;
> >
> > If you are going to do this it would be better to replace the line
> > that is setting the length to zero instead of just adding this line.
> > That way you can avoid having to rewrite it. I only had bothered with
> > clearing the length field as it was a 32b field, however if you are
> > wanting to flush the full 64b then I would recommend doing it there
> > rather than here.
>
> Just to make sure I'm on the same page, do you mean to move this line to
> patch 2/3, right?

No, I hadn't had a chance to take a look at patch 2 yet. I think patch
2 is ill advised as the patch is currently broken, and even if done
correctly you don't get any benefit out of it that I can see. From
what I can tell this patch was likely covering up some of the errors
introduced in patch 2. Now that I see this in conjunction with patch 2
I would say you should probably just drop patch 2 and this one as well
since they aren't adding any real value other than removing a
redundant write which was just there to keep this mostly in sync with
how we did it for ixgbe.

The reason the driver path was coded the way it is in order to get
away from having to clear the entire descriptor after processing it
and to avoid having to explicitly track next_to_use and next_to_clean.
Instead we leave the descriptor as mostly read-only until we
reallocate the buffer and give it back to the device. All we have to
do is clear the length field of the next_to_use descriptor when we are
done allocating so that we do not overrun the descriptors when
cleaning. It makes it much easier to debug when the descriptors are
left in place as long as possible since we can then come back and look
at the memory and generally I have found performance is improved as we
are not having to dirty cachelines prematurely.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
