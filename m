Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C268AE5288
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2019 19:45:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55D7F87A9C;
	Fri, 25 Oct 2019 17:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P5KVSLKr3XN6; Fri, 25 Oct 2019 17:45:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D56E387B65;
	Fri, 25 Oct 2019 17:45:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D0E0E1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 17:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA5E686D6F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 17:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R+q8gYGTb17J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 17:45:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7FCE686B48
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 17:45:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 10:45:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,229,1569308400"; d="scan'208";a="198086417"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga007.fm.intel.com with ESMTP; 25 Oct 2019 10:45:47 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 25 Oct 2019 10:45:44 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.88]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.148]) with mapi id 14.03.0439.000;
 Fri, 25 Oct 2019 10:45:44 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Thread-Topic: [PATCH] namespace: fix namespace.pl script to support relative
 paths
Thread-Index: AQHVdYkISHS3XNGT0kCKyhZHN6EY9KdALBNAgAIVm4CAAmLQsIAjqUEAgACZz9CAALWTgIACLwmw
Date: Fri, 25 Oct 2019 17:45:43 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589693D053@ORSMSX121.amr.corp.intel.com>
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB589693A38A@ORSMSX121.amr.corp.intel.com>
 <CAK7LNAQow8N9a5e_=pu7qDiuvETy1x1P5fxp20zYOZgQhXPJhg@mail.gmail.com>
In-Reply-To: <CAK7LNAQow8N9a5e_=pu7qDiuvETy1x1P5fxp20zYOZgQhXPJhg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmZmNDVjMTgtNDA3ZC00NzM1LThlZmQtNThmM2Q3Yjc4NTdjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWFV0eGJtcWZwbFY4QVdIR1djN2VydkordFhyaHNuTUN4elpiOWFpZWxib1pQN25GSDNMM2R5MVFiWXZrOWlMNSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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


> -----Original Message-----
> From: Masahiro Yamada <yamada.masahiro@socionext.com>
> Sent: Wednesday, October 23, 2019 6:22 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Randy Dunlap <rdunlap@infradead.org>; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org; linux-kbuild <linux-kbuild@vger.kernel.org>
> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
> paths
> 
> On Thu, Oct 24, 2019 at 6:34 AM Keller, Jacob E
> <jacob.e.keller@intel.com> wrote:
> >
> > > -----Original Message-----
> > > From: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > Sent: Tuesday, October 22, 2019 10:22 PM
> > > To: Keller, Jacob E <jacob.e.keller@intel.com>; Randy Dunlap
> > > <rdunlap@infradead.org>
> > > Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-
> kbuild
> > > <linux-kbuild@vger.kernel.org>
> > > Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
> > > paths
> > >
> > > This scripts has been 5-year broken,
> > > and I did not see any complaint except from you.
> > > So, I wonder how many people are using this.
> > >
> > > Nor, do I understand how to use it.
> > >
> > > Could you teach me a bit more about this script?
> > >
> > >
> > >
> > > Something might be missing in my mind, but
> > > I do not know how to use this script in a useful way.
> > >
> > >
> > >
> > > It provides three checks.
> > >
> > > [1] list_multiply_defined()
> > >
> > > This warns multiple definition of functions.
> > >
> > > The compiler would fail if it saw any multiple definition,
> > > so the reports from this check are all false-positive.
> > >
> > >
> > > [2] resolve_external_references()
> > >
> > > This warns unresolved symbols.
> > >
> > > The compiler would fail if it saw any unresolved symbol,
> > > so the reports from this check are all false-positive, too.
> > >
> > >
> >
> > The compiler won't necessarily fail when building modules, because the symbol
> might be in another loadable module.
> 
> Right, but this is already checked by modpost, isn't it?
> 
> 
> 
> > >
> > >
> > > [3] list_extra_externals
> > >
> > > This warns symbols with no reference.
> > >
> > > This potentially contains lots of false-positives.
> > > For example, the core framework provides APIs, but if all drivers
> > > are disabled, there is no user of those APIs.
> > >
> >
> > We use this to help verify that driver modules do not expose symbols.
> 
> Ah, the output is quite large, so
> you search for only modules in your interest. Right?
> 

We run it on only one module at a time, yes.

> 
> If you want to detect missing 'static',
> have you tried 'sparse'?
> 

We've used that as well. 

To be fair, I agree that it covers similar functionality as other tools. I haven't looked directly at namespace.pl output in a while, and the fix here is multiple years old that took a long time to get picked up.

If it's agreed that the tool has no value, and especially if it results in false indications of a problem, then maybe removing it to prevent someone from mis-reading its output makes sense?

Thanks,
Jake

> 
> 
> > Thanks,
> > Jake
> 
> 
> 
> --
> Best Regards
> Masahiro Yamada
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
