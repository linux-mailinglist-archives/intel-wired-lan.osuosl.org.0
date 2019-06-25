Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC63055CA8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 01:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71BEB87A5E;
	Tue, 25 Jun 2019 23:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Y3dxRz9isrk; Tue, 25 Jun 2019 23:55:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A99C87A4F;
	Tue, 25 Jun 2019 23:55:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 019451BF30F
 for <intel-wired-lan@osuosl.org>; Tue, 25 Jun 2019 23:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F16C62107A
 for <intel-wired-lan@osuosl.org>; Tue, 25 Jun 2019 23:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j9KfaUGBNrhF for <intel-wired-lan@osuosl.org>;
 Tue, 25 Jun 2019 23:54:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A7CB2083F
 for <intel-wired-lan@osuosl.org>; Tue, 25 Jun 2019 23:54:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 16:54:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="313244182"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga004.jf.intel.com with ESMTP; 25 Jun 2019 16:54:31 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 25 Jun 2019 16:54:31 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.250]) with mapi id 14.03.0439.000;
 Tue, 25 Jun 2019 16:54:31 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Venkatesh Srinivas <venkateshs@google.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] e1000: Use dma_wmb() instead of
 wmb() before doorbell writes
Thread-Index: AQHVH9eV1/bpOvo/R0+uL8N5oNwnS6atHJnA
Date: Tue, 25 Jun 2019 23:54:30 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B387B@ORSMSX103.amr.corp.intel.com>
References: <20190610212750.173711-1-venkateshs@google.com>
In-Reply-To: <20190610212750.173711-1-venkateshs@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzU5MTk3OWItZjNiMS00ZGUwLTlmNzUtZTM4YTY1NDNlODRjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS2ltNk5tejRGbStpUDlLSzY3dUVHQVdCc0J0YmxLczhxc2tcL0ZPRVJpaFp2U3JVU2o4cEJ2NzdWQVZLNXdwRHEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000: Use dma_wmb() instead of wmb()
 before doorbell writes
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "vsrinivas@ops101.org" <vsrinivas@ops101.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Venkatesh Srinivas
> Sent: Monday, June 10, 2019 2:28 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: intel-wired-lan@osuosl.org; vsrinivas@ops101.org
> Subject: [Intel-wired-lan] [PATCH] e1000: Use dma_wmb() instead of wmb()
> before doorbell writes
> 
> e1000 writes to doorbells to post transmit descriptors and fill the
> receive ring. After writing descriptors to memory but before
> writing to doorbells, use dma_wmb() rather than wmb(). wmb() is more
> heavyweight than necessary for a device to see descriptor writes.
> 
> On x86, this avoids SFENCEs before doorbell writes in both the
> tx and rx paths. On ARM, this converts DSB ST -> DMB OSHST.
> 
> Tested: 82576EB / x86; QEMU (qemu emulates an 8257x)
> 
> Signed-off-by: Venkatesh Srinivas <venkateshs@google.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Tested with a handful of physical parts that I still have laying around just for this purpose, 82540EM, multiple 82541PI, 82541GI, 82543GC, multiple 82544GC, ...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
