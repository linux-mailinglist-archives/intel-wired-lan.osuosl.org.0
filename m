Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3D5E27AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2019 03:22:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69BE18688F;
	Thu, 24 Oct 2019 01:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRUcZmgXn9v1; Thu, 24 Oct 2019 01:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 414B886895;
	Thu, 24 Oct 2019 01:22:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4FC51BF23C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2019 01:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B83FA877D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2019 01:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uUtufgl9Lsw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2019 01:22:41 +0000 (UTC)
X-Greylist: delayed 20:00:13 by SQLgrey-1.7.6
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com
 [210.131.2.82])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03B5184F5A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2019 01:22:40 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x9O1MYIU007225
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2019 10:22:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x9O1MYIU007225
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1571880155;
 bh=geAUxe+Ff9Y2Jv7XM1GA4xSYAZEDzRqLo9nk9PiEblg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ND4C0SqyypQgqpzJySSk3TaOLT3sWlq17sOGO7IUnc+0e0Hdw5dzIbGmcB4x5Zs4p
 ps8pZOcbGBbk+8nrVvPJ/OOMZK5wPZsLwdexKCPtQIW6qYm6SH/BQlT3pN4DSGox7A
 +cBl03GEjhnpJbL1nF10qdRSGsAOs4AlHYp2TIkC0X66j3z6SlKB1wyQeSwhw1Rw0l
 63GH3gjCrgQ1Qr6+f/zcvBvjlYQ4ldx3EgS1qZughv7mu5vLGot1cSGZIveZ3eLkU6
 AYWchtL+3V4p4Mv9PzgeP9el3MlmhSNHtNJthRtstjyxOv4LoG4rMa9ZYQ51x12U+l
 EpdPhrvqtjuDw==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id l13so6641897uap.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 18:22:34 -0700 (PDT)
X-Gm-Message-State: APjAAAVetTWH1EqZE/b7tLrwGgi/empBSbRgYJHhh9phv8zXQe/W766c
 T2YSV/tTKCuWFYhFRiu3YuJossBOu7A8vUQF7eA=
X-Google-Smtp-Source: APXvYqy9MnE6a8zlXdK8RgZ13zxQkZtNSf6lCRsUJYZynPIbxfNruMIbpkSGbKOEW//zNOd27Yv03EgJOvtVF4h1hiQ=
X-Received: by 2002:a9f:3e81:: with SMTP id x1mr7429935uai.121.1571880153351; 
 Wed, 23 Oct 2019 18:22:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB589693A38A@ORSMSX121.amr.corp.intel.com>
In-Reply-To: <02874ECE860811409154E81DA85FBB589693A38A@ORSMSX121.amr.corp.intel.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 24 Oct 2019 10:21:57 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQow8N9a5e_=pu7qDiuvETy1x1P5fxp20zYOZgQhXPJhg@mail.gmail.com>
Message-ID: <CAK7LNAQow8N9a5e_=pu7qDiuvETy1x1P5fxp20zYOZgQhXPJhg@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
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
Cc: Randy Dunlap <rdunlap@infradead.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 24, 2019 at 6:34 AM Keller, Jacob E
<jacob.e.keller@intel.com> wrote:
>
> > -----Original Message-----
> > From: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Sent: Tuesday, October 22, 2019 10:22 PM
> > To: Keller, Jacob E <jacob.e.keller@intel.com>; Randy Dunlap
> > <rdunlap@infradead.org>
> > Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-kbuild
> > <linux-kbuild@vger.kernel.org>
> > Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
> > paths
> >
> > This scripts has been 5-year broken,
> > and I did not see any complaint except from you.
> > So, I wonder how many people are using this.
> >
> > Nor, do I understand how to use it.
> >
> > Could you teach me a bit more about this script?
> >
> >
> >
> > Something might be missing in my mind, but
> > I do not know how to use this script in a useful way.
> >
> >
> >
> > It provides three checks.
> >
> > [1] list_multiply_defined()
> >
> > This warns multiple definition of functions.
> >
> > The compiler would fail if it saw any multiple definition,
> > so the reports from this check are all false-positive.
> >
> >
> > [2] resolve_external_references()
> >
> > This warns unresolved symbols.
> >
> > The compiler would fail if it saw any unresolved symbol,
> > so the reports from this check are all false-positive, too.
> >
> >
>
> The compiler won't necessarily fail when building modules, because the symbol might be in another loadable module.

Right, but this is already checked by modpost, isn't it?



> >
> >
> > [3] list_extra_externals
> >
> > This warns symbols with no reference.
> >
> > This potentially contains lots of false-positives.
> > For example, the core framework provides APIs, but if all drivers
> > are disabled, there is no user of those APIs.
> >
>
> We use this to help verify that driver modules do not expose symbols.

Ah, the output is quite large, so
you search for only modules in your interest. Right?


If you want to detect missing 'static',
have you tried 'sparse'?



> Thanks,
> Jake



-- 
Best Regards
Masahiro Yamada
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
