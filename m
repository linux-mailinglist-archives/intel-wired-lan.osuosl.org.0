Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D85BB20B53D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 17:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E0D72046F;
	Fri, 26 Jun 2020 15:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-HTkQZ8LUcX; Fri, 26 Jun 2020 15:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E7291204BE;
	Fri, 26 Jun 2020 15:49:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EA971BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 15:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59119869F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 15:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtMMHDxtTW5e for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 15:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A996D8763C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 15:49:39 +0000 (UTC)
IronPort-SDR: tGA1smIm+cUlFyASuSmEKhRcqiOAVDFT3lry73IU/5dwj6ithYLpi2Iu22UdmrMaQOwIm6Pmrw
 2pboLCrHOBhw==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="145438485"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="145438485"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 08:49:37 -0700
IronPort-SDR: o3hP/vS0EqbQneKpYcOUdfAmOE7SdoF6pUZKl81Z9ONdBO8Rr+sAEASADbH8NVx349Wam3cF84
 GAXnZ0KBD94Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="276398682"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga003.jf.intel.com with ESMTP; 26 Jun 2020 08:49:37 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 08:49:37 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX158.amr.corp.intel.com (10.22.240.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 08:49:36 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.50) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 26 Jun 2020 08:49:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TmEfhzAOYeLKFjez7OVUi950Majr5LSXGGTzHFkDFJJOGVkXKw0JoZ29LyKcpFe6+Na3rtQbkOqPRVjbGn9aDy472vlQOrXkvFg5pKoAJE2WaYvKJc93mubZCTM5NW4MuNvvDVl3aKHlhIaVNh4+ib6Z8X6rPCuH/vFgm4C/zmehNUxxS8vTwAhVzIgfb7njpKd6TL7FFTWEVY3F9xZCedJP/nVTYLAd9P673NlrBAS3DaYN1rEwkEo1wDhNR31nIKHc/0trfdFxC//0yBmD1QWvBC2D+kX8WmHZEyFm0illxiCUvDSrGpRukiYXyaZiUgluQM/6rYr07RF62nU2Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUknzKwScPYG4OiQELyxy7hk1mGYMvjTBdKECH9yi+k=;
 b=BAl7vBclPP3A8PfZxKzL5h3nleAh+S11a07kOLuk5OQa74G5ycD9Pa8LQJUGPoe2nn5QIJ5S9Hfx74RsRoJ5tZyIE+oZSdRg17uT4UyCPXbNpXhufAssoKIbZlIGnZRNDw3Ey79h80HdGu+60iewm+0qWlioiIZ9SsuS1jflF+mL+2ihMgNT/khfQX3ovy306MMOAQLwYTsVNjSWw1bme2xyIxVshrBoycOZSMuwmeJRJ1n9hAnm8umBB8sH/l4r+qo7PsqjAK6gByPHIuRjwNAsi1YpSA5/5OnbiCs8qT0FTbe+N2NC4qXy7ASmTm4hsBaiUbKXSwT/P+SKA0+GsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUknzKwScPYG4OiQELyxy7hk1mGYMvjTBdKECH9yi+k=;
 b=CmBXdFvygGeYrZlf7jWg+FfylTVUGRTodotu9GhAioeeibWzOxOu0clQBzP4JI9yrCaeTx/+y3safcCz9RgnYe5HHDoh5uJZODgHOyczB5feHMawjdTtYEwAYyEL6h1FeiewR6v3z7QzR8WMs3AdAIMkysx4v880NpZC6Snc06A=
Received: from DM5PR1101MB2154.namprd11.prod.outlook.com (2603:10b6:4:4e::20)
 by DM5PR11MB1945.namprd11.prod.outlook.com (2603:10b6:3:10b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.23; Fri, 26 Jun
 2020 15:49:35 +0000
Received: from DM5PR1101MB2154.namprd11.prod.outlook.com
 ([fe80::f1a8:9702:fdc9:9fa6]) by DM5PR1101MB2154.namprd11.prod.outlook.com
 ([fe80::f1a8:9702:fdc9:9fa6%2]) with mapi id 15.20.3131.021; Fri, 26 Jun 2020
 15:49:35 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] iavf: Fix updating statistics
Thread-Index: AQHWSkGnW+mosVQvMk2vCjeHaxCo3KjrDhfw
Date: Fri, 26 Jun 2020 15:49:35 +0000
Message-ID: <DM5PR1101MB2154C72E8B46F2C577B81F018C930@DM5PR1101MB2154.namprd11.prod.outlook.com>
References: <20200624160422.58874-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200624160422.58874-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9fa8c3b-323e-4284-fe03-08d819e886b0
x-ms-traffictypediagnostic: DM5PR11MB1945:
x-microsoft-antispam-prvs: <DM5PR11MB19450F8439DCA422B16DCC128C930@DM5PR11MB1945.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0446F0FCE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ajwPSQqZKaPWxDwhmEUdV80SGhfEsAVE9SzgN4Qlfuw/u+TmKmLI8kIqgnGQlYhBaHlAkBNxc/5ZaFGtP8Lomh6Oe6FEordPhIE2aqDFedQ8NIfTvnw6P87hE0djRsbYWS99yIGBP7W9SKL8PaOezwYrmoRrNa/MA4LP4MAu1BJvSU+diOyLEBfNlFTvSx9idp91PKXSTk4fmRKhqeFVnuM/+S6wXZdgU3I3Xr8nWxcBZ6KYMVlsBDNRT08ovby1e+Czudt6v2YMoKVQvabzQimjDAxkwrhAcskS9AFZbzbI127UxQpeLyIg5r2qtiXQfSMFZi0h85chzwnPdH7EjQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2154.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(366004)(39860400002)(136003)(66946007)(71200400001)(26005)(2906002)(66446008)(66476007)(66556008)(64756008)(33656002)(316002)(186003)(6506007)(7696005)(53546011)(4744005)(83380400001)(86362001)(55016002)(76116006)(9686003)(8936002)(8676002)(5660300002)(52536014)(478600001)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: PNP94W5frrvyrYqBtlouF1PgStOmfFMa4zcT8QQRmbD9NAoj7lLeLCuwuxeWjqADXBv5E5CIrK5R6oYM8akHRN2KWStZ+NeBeYB29UJgbpIKKPnJKtnmuiyZWJ3B23TvkR5/WIzFu/5bK5dKrrOt8o5JR5+qLYzNj4kC4ajXDZpSiBSzyUThh8truVJNPdTy02SFHrTKUu2BRFR4GZmsT2ujGhvsxJt+WaE28YSJ/DNMblELxpxssJVUpNObUQPM1PwAdws0rdiOW2STifmziZoocSK++Vmd6zb4n3/Oa5D9BGSTFpbFK8uYgpf9b20rSDJskzutqzDtNUj7QyaIpjZHv9n8LADB7sU3vwsFOXPtVQAM5g9JjCpNtbVTo66+dI2KM3eqpCQG83qmbuH+rsCF1nAzuBEBK9MAn1SA7S4EnTzNIi4NMnnKaEFTsCQCE4fvfeIqnBr8RycPROJIYmu9Arerff0PLeu+U6A6UJ3licJazMCCZBvNqhyVJJqb
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9fa8c3b-323e-4284-fe03-08d819e886b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2020 15:49:35.4928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CAV/eFPlka9Neb9YNGc24Ly3u8EFBoOvCk6jefqp1G3ZHk4BoNcxR6EtmuUdHxFUp3Rz5AAF5xVcmfq9/5Yse/jD+6/gueufrSC7K6xnd50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1945
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] iavf: Fix updating statistics
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, June 24, 2020 9:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] iavf: Fix updating statistics
> 
> Commit bac8486116b0 ("iavf: Refactor the watchdog state machine")
> inverted the logic for when to update statistics. Statistics should be updated
> when no other commands are pending, instead they were only requested
> when a command was processed. iavf_request_stats() would see a pending
> request and not request statistics to be updated. This caused statistics to
> never be updated; fix the logic.
> 
> Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
