Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4296CE256A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 23:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8E7388263;
	Wed, 23 Oct 2019 21:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e2c8pPQeEXWM; Wed, 23 Oct 2019 21:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E6BA988246;
	Wed, 23 Oct 2019 21:34:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB1F21BF870
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 21:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B690922795
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 21:34:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6TuUhqGgYEgg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2019 21:34:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id C3A4C2094B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 21:34:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 14:34:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,222,1569308400"; d="scan'208";a="281741938"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga001.jf.intel.com with ESMTP; 23 Oct 2019 14:34:07 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.88]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.210]) with mapi id 14.03.0439.000;
 Wed, 23 Oct 2019 14:34:07 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Randy Dunlap
 <rdunlap@infradead.org>
Thread-Topic: [PATCH] namespace: fix namespace.pl script to support relative
 paths
Thread-Index: AQHVdYkISHS3XNGT0kCKyhZHN6EY9KdALBNAgAIVm4CAAmLQsIAjqUEAgACZz9A=
Date: Wed, 23 Oct 2019 21:34:06 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589693A38A@ORSMSX121.amr.corp.intel.com>
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
In-Reply-To: <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDM0NzM2NjAtY2FkYi00M2RlLWJkMjAtMDRlNjYzZWEwNjVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSml3YTNpVGVEakpDSEJyakU2ZFhyaTBMc1F5ZHBmdWYyamJyKzZEWUYxYnRRXC9GOHlINVlWS0poeHQ5TE41aUEifQ==
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
> From: Masahiro Yamada <yamada.masahiro@socionext.com>
> Sent: Tuesday, October 22, 2019 10:22 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Randy Dunlap
> <rdunlap@infradead.org>
> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-kbuild
> <linux-kbuild@vger.kernel.org>
> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
> paths
> 
> This scripts has been 5-year broken,
> and I did not see any complaint except from you.
> So, I wonder how many people are using this.
> 
> Nor, do I understand how to use it.
> 
> Could you teach me a bit more about this script?
> 
> 
> 
> Something might be missing in my mind, but
> I do not know how to use this script in a useful way.
> 
> 
> 
> It provides three checks.
> 
> [1] list_multiply_defined()
> 
> This warns multiple definition of functions.
> 
> The compiler would fail if it saw any multiple definition,
> so the reports from this check are all false-positive.
> 
> 
> [2] resolve_external_references()
> 
> This warns unresolved symbols.
> 
> The compiler would fail if it saw any unresolved symbol,
> so the reports from this check are all false-positive, too.
> 
> 

The compiler won't necessarily fail when building modules, because the symbol might be in another loadable module.

> 
> 
> [3] list_extra_externals
> 
> This warns symbols with no reference.
> 
> This potentially contains lots of false-positives.
> For example, the core framework provides APIs, but if all drivers
> are disabled, there is no user of those APIs.
> 

We use this to help verify that driver modules do not expose symbols.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
