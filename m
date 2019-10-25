Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14288E5509
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2019 22:20:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3CA486211;
	Fri, 25 Oct 2019 20:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TnJrTX8D43Ps; Fri, 25 Oct 2019 20:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50FE085F8D;
	Fri, 25 Oct 2019 20:20:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEAF71BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 20:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA218864D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 20:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d99ZTsk6DX1v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 20:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F194986462
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 20:20:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 13:20:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,229,1569308400"; d="scan'208";a="400221917"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga006.fm.intel.com with ESMTP; 25 Oct 2019 13:20:53 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 25 Oct 2019 13:20:52 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.88]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.79]) with mapi id 14.03.0439.000;
 Fri, 25 Oct 2019 13:20:52 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, Masahiro Yamada
 <yamada.masahiro@socionext.com>
Thread-Topic: [PATCH] namespace: fix namespace.pl script to support relative
 paths
Thread-Index: AQHVdYkISHS3XNGT0kCKyhZHN6EY9KdALBNAgAIVm4CAAmLQsIAjqUEAgACZz9CAALWTgIACLwmwgACTTID//5iEgA==
Date: Fri, 25 Oct 2019 20:20:51 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589693DABC@ORSMSX121.amr.corp.intel.com>
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB589693A38A@ORSMSX121.amr.corp.intel.com>
 <CAK7LNAQow8N9a5e_=pu7qDiuvETy1x1P5fxp20zYOZgQhXPJhg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB589693D053@ORSMSX121.amr.corp.intel.com>
 <6127ec91-ad81-f0d7-576e-22e06e677442@infradead.org>
In-Reply-To: <6127ec91-ad81-f0d7-576e-22e06e677442@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWU4ZmM3ODctNGY1Mi00MTM4LTljMjktNzE1ZDg0ZWE5Y2Y1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiajNuSXhreW1PSlhYaUxBcmh1M1JGQ0lwVEJuSzZWZXV5RUg1cUs0OER1bndVRXJsWVp1K1lWcFlCdGJkWGdBdiJ9
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Randy Dunlap <rdunlap@infradead.org>
> Sent: Friday, October 25, 2019 12:30 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Masahiro Yamada
> <yamada.masahiro@socionext.com>
> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-kbuild
> <linux-kbuild@vger.kernel.org>
> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
> paths
> 
> On 10/25/19 10:45 AM, Keller, Jacob E wrote:
> >
> >> -----Original Message-----
> >> From: Masahiro Yamada <yamada.masahiro@socionext.com>
> >> Sent: Wednesday, October 23, 2019 6:22 PM
> >> To: Keller, Jacob E <jacob.e.keller@intel.com>
> >> Cc: Randy Dunlap <rdunlap@infradead.org>; intel-wired-lan@lists.osuosl.org;
> >> linux-kernel@vger.kernel.org; linux-kbuild <linux-kbuild@vger.kernel.org>
> >> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
> >> paths
> >>
> >> If you want to detect missing 'static',
> >> have you tried 'sparse'?
> >>
> >
> > We've used that as well.
> >
> > To be fair, I agree that it covers similar functionality as other tools. I haven't
> looked directly at namespace.pl output in a while, and the fix here is multiple
> years old that took a long time to get picked up.
> >
> > If it's agreed that the tool has no value, and especially if it results in false
> indications of a problem, then maybe removing it to prevent someone from mis-
> reading its output makes sense?
> 
> If there is a satisfactory alternative, I expect that namespace.pl is old,
> unmaintained, and unneeded, and should go away.
> 
> --
> ~Randy

Given Yamada's comments and my experience, modpost and sparse are both good at detecting the issues that namespace.pl handles.

I am not sure if there's any other output that would be valuable from namespace.pl, but if not.. I don't see a reason to keep it compared to the other tools.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
