Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB227CB9C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A4BC8569B;
	Wed, 31 Jul 2019 18:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TvJh0Schh41F; Wed, 31 Jul 2019 18:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 908C985810;
	Wed, 31 Jul 2019 18:12:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40A6B1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3D9392035C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s-ZNaiCl-hNj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 18:12:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id C69D81FEED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:12:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 11:12:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="196455644"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga004.fm.intel.com with ESMTP; 31 Jul 2019 11:12:45 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 11:12:44 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.240]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 11:12:44 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S25 07/12] ice: shorten local and add
 debug prints
Thread-Index: AQHVQxX5vXv56LqT70meCgkZA8Kw36blEN6Q
Date: Wed, 31 Jul 2019 18:12:44 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40EABD@ORSMSX104.amr.corp.intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
 <20190725095401.24590-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725095401.24590-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2I2M2E2NTgtMjMyZC00NjM0LWI3MDItN2RkNmI3MmQ4ZjkyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieDFKZHVXaG5vRUNXWU4wWVRWd0x1eGwxeUxzYWhScnNISHRnMUFWTFB1ZTFXZ0FCb2t2MmZFOWxNb2JJQWZYeSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S25 07/12] ice: shorten local and add
 debug prints
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
> Behalf Of Tony Nguyen
> Sent: Thursday, July 25, 2019 2:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S25 07/12] ice: shorten local and add debug
> prints
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Add some verbose debugging for dyndbg to help us when we are having
> issues with link and/or PHY.
> 
> While there, shorten some strings used by locals that were causing long line
> wrapping.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 63 ++++++++++++++-------
>  1 file changed, 44 insertions(+), 19 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
