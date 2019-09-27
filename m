Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9FBC0E4B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Sep 2019 01:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E3DCD2288E;
	Fri, 27 Sep 2019 23:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P5npn2GN-tIU; Fri, 27 Sep 2019 23:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5DE7222888;
	Fri, 27 Sep 2019 23:23:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92CCD1BF294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 23:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 850C88543A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 23:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9SuOBWZ3FeG5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2019 23:23:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DCBF88461B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 23:23:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 16:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="189606803"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2019 16:23:57 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 27 Sep 2019 16:23:56 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.190]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.46]) with mapi id 14.03.0439.000;
 Fri, 27 Sep 2019 16:23:56 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [PATCH] namespace: fix namespace.pl script to support relative
 paths
Thread-Index: AQHVdYkISHS3XNGT0kCKyhZHN6EY9KdAKfGw
Date: Fri, 27 Sep 2019 23:23:56 +0000
Message-ID: <02874ECE860811409154E81DA85FBB58968DBE40@ORSMSX121.amr.corp.intel.com>
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
In-Reply-To: <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWFmNGVmZTQtNGE1OC00YTJmLThjMDctYTY0OTAyMzM4NTkzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicmZ0WVFia2tFQWhBeXJURjRicjBjR2p4M05OUWFNdWI4ODBrWmpzS0RTWlwvVzNLTHIyZXlXd1FRMHo3ckpCOFYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Randy Dunlap [mailto:rdunlap@infradead.org]
> Sent: Friday, September 27, 2019 4:12 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-kbuild <linux-
> kbuild@vger.kernel.org>; Masahiro Yamada <yamada.masahiro@socionext.com>
> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative paths
> 
> 
> re: https://lore.kernel.org/lkml/20190129204319.15238-1-jacob.e.keller@intel.com/
> 
> Did anything happen with this patch?
> 

I haven't heard anything or seen it get applied.

> Please send it to linux-kbuild@vger.kernel.org and
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> 

Sure, I can forward it.

> You can also add:
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Tested-by: Randy Dunlap <rdunlap@infradead.org>
> 
> 
> I was just about to fix this script but I decided to first see if anyone else
> had already done so.  Thanks.
> 

Thanks for the review/notice here.

> --
> ~Randy

-Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
