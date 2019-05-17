Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B83542203B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2019 00:25:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8AD2E2284A;
	Fri, 17 May 2019 22:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJnnB3Od6HJ2; Fri, 17 May 2019 22:25:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C833228AE;
	Fri, 17 May 2019 22:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5DE61BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D857A86B08
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xzODziMpgb7Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 22:25:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DFDA86AF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:25:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 15:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,481,1549958400"; d="scan'208";a="172954640"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2019 15:24:59 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 17 May 2019 15:24:59 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.163]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 15:24:59 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S5 iavf 02/11] iavf: use signed
 variable
Thread-Index: AQHVCnu7SKX5Rb5T3E+a/ZAKWJ1a7qZv6bIg
Date: Fri, 17 May 2019 22:24:58 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DB709@ORSMSX104.amr.corp.intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
 <20190514173709.62431-2-alice.michael@intel.com>
In-Reply-To: <20190514173709.62431-2-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjc5NGJkZmItNGM4Ni00MmZhLWE5MWMtZTkzM2RjMjVmZTVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNHo3V1huZUpaMG9BMHEzaVVFWTJaKzhuQUttazlCNk5KQ1hRSm1YYWZOMkFlUkxPWTFSTUpQc1wvRVdSMmpoVHMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 iavf 02/11] iavf: use signed
 variable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Alice Michael
> Sent: Tuesday, May 14, 2019 10:37 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S5 iavf 02/11] iavf: use signed variable
> 
> From: Mitch Williams <mitch.a.williams@intel.com>
> 
> The counter variable in iavf_clean_tx_irq starts out negative and climbs to 0.
> So allocating it as u16 is actually a really bad idea that just happens to work
> because the value underflows and overflows consistently on most
> architectures.
> 
> Replace the u16 with an int so signed math works as expected.
> 
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
