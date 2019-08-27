Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1E99F36D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 21:46:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DCC2B20494;
	Tue, 27 Aug 2019 19:46:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5RF9eTVmKMQ; Tue, 27 Aug 2019 19:46:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5933421517;
	Tue, 27 Aug 2019 19:46:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D3E01BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 19:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 062FF885E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 19:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PdIOb8oUo1GQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 19:46:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0FBA4885E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 19:46:10 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id c9so8667786ybf.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 12:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ppLYsZdjt673IaBzcGr4uH4V5vcM6gItlNCPO5sXczk=;
 b=I1J66cFngq3ayhRq0+WjJAomdFG7DBpXuVNGVyKtkxzdHYPghuO94RfHfFosLvs2SG
 FDJYM5DrSd5vvMs3qcWz1WQlVVZ13ULgIATR1ZCRa2gtR8ASTnNH2iBG/uBDiibi1hb5
 q97PnvciLHLoze1S1ApUZij+p0awCBzIa6YFTI/rOothia6UIuNJCB9Wn1rByMMoPERE
 cj/PTxqksFPj7T3SprpdUKkRnmr5KkA7GkS2ciPXf/lRW9gxn+cAe6tOj5Bok8EjGlOh
 BcMuh9YACwXMEa5DIz8NklzRlzfTbtXCXMGsqogXvapVh8wUfn++p9b0Xll+EWs/HamX
 SbWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ppLYsZdjt673IaBzcGr4uH4V5vcM6gItlNCPO5sXczk=;
 b=UBNNj73g9guZsJTeBw3eWrBMiaJv6f2AB14P4lmQvSUxSOZ5FTUObp4r6ze7yhAF0x
 5OFSM/iOndEaaWMShImtjN2dACVoOEKE3zgnbSjungW6nswaHQw1zb+JTJSVoLA5r+Hl
 Wvc90aY1WN0wgHY4uRSOKUrA9yagqusaCuEdiNmZc1a8Igx/oWKpQZCzZHr6wy9PvbO5
 qbuUGIRk4dvVix8a4Hk6Ajwnzmv8/b5ilubeIptNMMvJxqTm7UQzunErQ4UL2htelQRM
 Xsz7/rB7HhgBPFIA8eQOV9X9h5bdOV1BxNTCBV1CnZJPaAO52GmQorSERdVXHS3Kr2el
 d0Ig==
X-Gm-Message-State: APjAAAU3IciBGuOH/06bav4xVmNFNUK7IyxX+OuqEldXBsOiPlUcuRpI
 PRF8NpVWvNuoDzAPBLGe2jG5iDz6DSi80jkVEYA=
X-Google-Smtp-Source: APXvYqzN7dajJDt4d1T6SoH60PikHcbv5rjZmZxyihsHrtvpfXGeSOhI3K9P7puetKwSNA2GtQkx795IzOp2eAG2eWE=
X-Received: by 2002:a25:ccd7:: with SMTP id l206mr360298ybf.165.1566935169170; 
 Tue, 27 Aug 2019 12:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190823191421.3318-1-ffleming@gmail.com>
 <c2279a78904b581924894b712403299903eacbfc.camel@intel.com>
 <877726fc009ee5ffde50e589d332db90c9695f06.camel@perches.com>
 <c40b4043424055fc4dae97771bb46c8ab15c6230.camel@intel.com>
 <b1ea77866e8736fa691cf4658a87ca2c1bf642d6.camel@perches.com>
In-Reply-To: <b1ea77866e8736fa691cf4658a87ca2c1bf642d6.camel@perches.com>
From: Forrest Fleming <ffleming@gmail.com>
Date: Tue, 27 Aug 2019 12:45:58 -0700
Message-ID: <CAE7kSDuHi3e_b0qyvXqocSVaNJrj3X7PPiawBWa68ZyrLSAZyA@mail.gmail.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [Intel-wired-lan] [PATCH] net: intel: Cleanup e1000 - add space
 between }}
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 27, 2019 at 12:07 PM Joe Perches <joe@perches.com> wrote:
>
> On Tue, 2019-08-27 at 12:02 -0700, Jeff Kirsher wrote:
> > On Mon, 2019-08-26 at 20:41 -0700, Joe Perches wrote:
> > > On Mon, 2019-08-26 at 01:03 -0700, Jeff Kirsher wrote:
> > > > On Fri, 2019-08-23 at 19:14 +0000, Forrest Fleming wrote:
> > > > > suggested by checkpatch
> > > > >
> > > > > Signed-off-by: Forrest Fleming <ffleming@gmail.com>
> > > > > ---
> > > > >  .../net/ethernet/intel/e1000/e1000_param.c    | 28 +++++++++--
> > > > > --------
> > > > >  1 file changed, 14 insertions(+), 14 deletions(-)
> > > >
> > > > While I do not see an issue with this change, I wonder how
> > > > important it is
> > > > to make such a change.  Especially since most of the hardware
> > > > supported by
> > > > this driver is not available for testing.  In addition, this is one
> > > > suggested change by checkpatch.pl that I personally do not agree
> > > > with.
> > >
> > > I think checkpatch should allow consecutive }}.
> >
> > Agreed, have you already submitted a formal patch Joe with the
> > suggested change below?
>
> No.
>
> >   If so, I will ACK it.
>
> Of course you can add an Acked-by:
>

Totally fair - I don't have strong feelings regarding the particular rule. I do
feel strongly that we should avoid violating our rules as encoded by checkpatch,
but I'm perfectly happy for the change to take the form of modifying checkpatch
to allow a perfectly sensible (and readable) construct.

I'm happy to withdraw this patch from consideration; I couldn't find anything
about there being a formal procedure for so doing, so please let me know if
there's anything more I need to do (or point me to the relevant docs).

Thanks to everyone!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
