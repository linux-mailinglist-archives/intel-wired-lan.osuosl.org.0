Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18FAE11C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 07:41:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9888C8609B;
	Wed, 23 Oct 2019 05:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d5XqolAGJ7sK; Wed, 23 Oct 2019 05:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5062A86A07;
	Wed, 23 Oct 2019 05:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B43C81BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 05:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ACE01204B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 05:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ARRl9+P1yigj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2019 05:41:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from condef-07.nifty.com (condef-07.nifty.com [202.248.20.72])
 by silver.osuosl.org (Postfix) with ESMTPS id F02B92040C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 05:41:41 +0000 (UTC)
Received: from conssluserg-06.nifty.com ([10.126.8.85])by condef-07.nifty.com
 with ESMTP id x9N5MZLx030010
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 14:22:35 +0900
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x9N5MDR5013749
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 14:22:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x9N5MDR5013749
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1571808134;
 bh=4uWhQkSgKJyJpi9dgEd8rnoW9JQaybqUylXhhSC0nec=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AzcLO0MjlBC1/BEeJm9qyRkRgcPAkYv4QxMtxeUo3Re7hVadzJzlkr5g7u8mhf8wL
 I+FMIbGBt8bkCzOTcIPamlUfqvlNGvtpEsBYRyKfjRIYHYFT4wSiqZzNWOFUEnb15o
 hWUQlgxEJv3mbTl/jyR4fr/ZdqE8uH/8GN+Fhd4ko8xwKe9gfKUG2g20ZZDWqO0P1s
 /plJux5tDnUCVn4pFMz+DABNLRK0tD114Ty+lCe15mBfEA3Kb8QH9RQ4GjOb4doMG6
 DAl4aRfvENZzyWk7XJ0sBdiLQHwbQOS3gTV2ItHPoVXIXamYJsftRc+Hk8VhWOJ9zs
 8PZTF/aGNWHVA==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id w7so5647000uag.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 22:22:13 -0700 (PDT)
X-Gm-Message-State: APjAAAWOXMVhXbn35dVM4yNgqTWdvIXzwFg10ryhYYM9zSuB1ZzQeZdr
 7U3PJdocFu3ZAGo59lZMcLnShP6MIPQ4a83sFfQ=
X-Google-Smtp-Source: APXvYqxLqGkSOgIFRyd9PTxHyI25VNUcERzN0x2gYGlStMqZTJ+flp75axCjaZb/WyR7UjkEmRdgV01UzlT91dSwPgk=
X-Received: by 2002:a9f:3824:: with SMTP id p33mr4091753uad.109.1571808132530; 
 Tue, 22 Oct 2019 22:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
In-Reply-To: <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 23 Oct 2019 14:21:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
Message-ID: <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [Intel-wired-lan] [PATCH] namespace: fix namespace.pl script to
 support relative paths
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 1, 2019 at 5:49 AM Keller, Jacob E <jacob.e.keller@intel.com> wrote:
>
> > -----Original Message-----
> > From: Masahiro Yamada [mailto:yamada.masahiro@socionext.com]
> > Sent: Saturday, September 28, 2019 5:21 PM
> > To: Keller, Jacob E <jacob.e.keller@intel.com>
> > Cc: Randy Dunlap <rdunlap@infradead.org>; intel-wired-lan@lists.osuosl.org; linux-
> > kernel@vger.kernel.org; linux-kbuild <linux-kbuild@vger.kernel.org>
> > Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative paths
> >
> > On Sat, Sep 28, 2019 at 8:30 AM Keller, Jacob E
> > <jacob.e.keller@intel.com> wrote:
> > >
> > > > -----Original Message-----
> > > > From: Randy Dunlap [mailto:rdunlap@infradead.org]
> > > > Sent: Friday, September 27, 2019 4:12 PM
> > > > To: Keller, Jacob E <jacob.e.keller@intel.com>
> > > > Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-kbuild
> > <linux-
> > > > kbuild@vger.kernel.org>; Masahiro Yamada <yamada.masahiro@socionext.com>
> > > > Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative paths
> > > >
> > > >
> > > > re: https://lore.kernel.org/lkml/20190129204319.15238-1-
> > jacob.e.keller@intel.com/
> > > >
> > > > Did anything happen with this patch?
> > > >
> > > > Please send it to linux-kbuild@vger.kernel.org and
> > > > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > >
> > > > You can also add:
> > > > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > > > Tested-by: Randy Dunlap <rdunlap@infradead.org>
> > > >
> > > >
> > > > I was just about to fix this script but I decided to first see if anyone else
> > > > had already done so.  Thanks.
> > > >
> > > > --
> > > > ~Randy
> > >
> > > Done, thanks.
> > >
> > > Regards,
> > > Jake
> >
> >
> > Applied to linux/kbuild. Thanks.
> >
>
> Great, thanks!


This scripts has been 5-year broken,
and I did not see any complaint except from you.
So, I wonder how many people are using this.

Nor, do I understand how to use it.

Could you teach me a bit more about this script?



Something might be missing in my mind, but
I do not know how to use this script in a useful way.



It provides three checks.

[1] list_multiply_defined()

This warns multiple definition of functions.

The compiler would fail if it saw any multiple definition,
so the reports from this check are all false-positive.


[2] resolve_external_references()

This warns unresolved symbols.

The compiler would fail if it saw any unresolved symbol,
so the reports from this check are all false-positive, too.




[3] list_extra_externals

This warns symbols with no reference.

This potentially contains lots of false-positives.
For example, the core framework provides APIs, but if all drivers
are disabled, there is no user of those APIs.




I built the kernel with x86_64_defconfig,
and namespacecheck provides

1400 line reports for [1].
200 line reports for [2].
6800 line reports for [3].

Most of these seem false-positives.



How can I use it for the code improvement?

[3] might be still useful to find 'static' candidates,
but it would be difficult given the amount of the report.

-- 
Best Regards
Masahiro Yamada
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
