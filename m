Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2C4C2652
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2019 21:46:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92E2B8685B;
	Mon, 30 Sep 2019 19:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AzB-xt4L-8pY; Mon, 30 Sep 2019 19:46:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D22FB86745;
	Mon, 30 Sep 2019 19:46:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EC2B1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2019 19:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 26A8085F08
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2019 19:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jy-hMxEY2zUN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2019 19:46:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6A9428671E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2019 19:46:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 12:46:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="390945133"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga005.fm.intel.com with ESMTP; 30 Sep 2019 12:46:53 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.190]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.5]) with mapi id 14.03.0439.000;
 Mon, 30 Sep 2019 12:46:53 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Thread-Topic: [PATCH] namespace: fix namespace.pl script to support relative
 paths
Thread-Index: AQHVdYkISHS3XNGT0kCKyhZHN6EY9KdALBNAgAIVm4CAAmLQsA==
Date: Mon, 30 Sep 2019 19:46:52 +0000
Message-ID: <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
In-Reply-To: <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTc4YzZmZTMtY2JlMi00YTI0LTg1ZTUtNTE5N2VjYTBkYTU1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNHJQcTI5eXdvXC9oa0J6MUFsYzNpQkpsZ0l0UFRBa3o2cGxMWkRjMHo2RmEweGZranYxRVBrUUFCMnErNjBTUUkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
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
> From: Masahiro Yamada [mailto:yamada.masahiro@socionext.com]
> Sent: Saturday, September 28, 2019 5:21 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Randy Dunlap <rdunlap@infradead.org>; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org; linux-kbuild <linux-kbuild@vger.kernel.org>
> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative paths
> 
> On Sat, Sep 28, 2019 at 8:30 AM Keller, Jacob E
> <jacob.e.keller@intel.com> wrote:
> >
> > > -----Original Message-----
> > > From: Randy Dunlap [mailto:rdunlap@infradead.org]
> > > Sent: Friday, September 27, 2019 4:12 PM
> > > To: Keller, Jacob E <jacob.e.keller@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-kbuild
> <linux-
> > > kbuild@vger.kernel.org>; Masahiro Yamada <yamada.masahiro@socionext.com>
> > > Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative paths
> > >
> > >
> > > re: https://lore.kernel.org/lkml/20190129204319.15238-1-
> jacob.e.keller@intel.com/
> > >
> > > Did anything happen with this patch?
> > >
> > > Please send it to linux-kbuild@vger.kernel.org and
> > > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > >
> > > You can also add:
> > > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > > Tested-by: Randy Dunlap <rdunlap@infradead.org>
> > >
> > >
> > > I was just about to fix this script but I decided to first see if anyone else
> > > had already done so.  Thanks.
> > >
> > > --
> > > ~Randy
> >
> > Done, thanks.
> >
> > Regards,
> > Jake
> 
> 
> Applied to linux/kbuild. Thanks.
> 

Great, thanks!

> --
> Best Regards
> Masahiro Yamada
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
