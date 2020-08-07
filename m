Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E52AE23E52E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Aug 2020 02:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86EDD886A7;
	Fri,  7 Aug 2020 00:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6xJvQfHo+jP; Fri,  7 Aug 2020 00:34:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DCC2886AE;
	Fri,  7 Aug 2020 00:34:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B12E41BF32C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 00:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA0F388792
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 00:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AEt9LjYOH1z2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Aug 2020 00:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B4843886D9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 00:34:22 +0000 (UTC)
IronPort-SDR: E+9VksxOJtZIx0O96uUrCcaUX6tztRi1RMqGhAQk8L8hziG3G4zdO164k34IukbQtlEe7WJSX/
 mg8bvN5+jqMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171040091"
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="171040091"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 17:34:22 -0700
IronPort-SDR: D90nrsf5GNIodqCAjZdD4EQVMJU6XqoV1jMH08olsNSskLxDjDm3fNusjAYqcVkoHU+d2yBbml
 QgVC+HMH4JOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="493867294"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 06 Aug 2020 17:34:22 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Aug 2020 17:34:21 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Aug 2020 17:34:21 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Aug 2020 17:34:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 6 Aug 2020 17:34:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OTgIeI0OYwEsON0qsHHak6tT7kRugcZlJEU7YCWa77HZ/O238ynvxhVSw639g0czdOn0K0G4Ro0Yxu/7zx8xKXQNE7U20BV//0sH0926tMGe7fYdANfQ0/khUgFHCXdUEAfd0L6KiygJbabjK5pGXPEJD5fMlR2fiZg3BCGgFd/jAoUGGKl8g/Ix0b/g1+pDZcjPwddy0juz7Gl6y4+Uq/kvvqeyESokVGcwzp8yB59mHyUdfS5hboVUDQ186MaGfPDz5iAEN3qMsMeWLOssja2VXfWn23rFrgslRt9RMGX4kKYgOLUeBvyGI2FzEbvjHXkiKMs4fIysawis3w6Y5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7FPcXve9rG43TbIqe0WfRdEoXmhSrH9X2g8s3/njncw=;
 b=S9FkOVInl7Ms1Ro7FuYwuWLWNiszdTzbs1cuesmw1xYG3JaLAr4ZhClNNjuBWBYEDSKkGkxn6H97C/SZ7FRLlJiRbPpHC1RQGAUWfX31pV06uqZetXrDJZ4/V1pBCyYDuvSFuT8r0EAwPcEfszz4V8N+3+JFqSwCSEUNXwt/DAAilFhXAezVCw24ON7w/OeCw+YkEWzWTT09YwZjKTgWC1BX89asw5JOJDoniNK62qxXi5PvMaQy/1COFmR0tvjRHTl/QRok4x6PzGPE+eLz85bftkSU9zFS+0kf6M41E/Vt6RPE/9NwORcmJDjJN6cv1woBCAIwIh5FaBILnVT70w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7FPcXve9rG43TbIqe0WfRdEoXmhSrH9X2g8s3/njncw=;
 b=XORpusgB7EsAHy9afBY8PhVaNPT0Szd6Dh5UjiuwIyfWHsCwsQ+a+dioup78qSSHzj3s6uUI+qZmr16liwdBEHQe8H6nnQ34DgNbdVXPfENlgh2rlmXXeLD4mXIGRGhAtnrKlpSLVw3fpRsUEVUmwZuNeooXLV0cp3yc6/iDK5g=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1620.namprd11.prod.outlook.com
 (2603:10b6:405:e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.15; Fri, 7 Aug
 2020 00:34:19 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::3c1b:6500:3edf:eaf0]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::3c1b:6500:3edf:eaf0%12]) with mapi id 15.20.3261.019; Fri, 7 Aug 2020
 00:34:19 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Add flow director support for
 IPv6
Thread-Index: AQHWa/cvLHueDzeFY0y9RSmXuiEYMKkrzPVg
Date: Fri, 7 Aug 2020 00:34:19 +0000
Message-ID: <BN6PR1101MB21458907F339A9DFBB7383758C490@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200806133631.10940-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20200806133631.10940-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb179e22-4cf4-4210-8e60-08d83a699fa4
x-ms-traffictypediagnostic: BN6PR11MB1620:
x-microsoft-antispam-prvs: <BN6PR11MB16200BE012720B208EF5143B8C490@BN6PR11MB1620.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PUfEnx0gf47B/HrX8qw6PvQwl+nkGjhilphEIf4VUOwCneXP6YO8QD4en2iSnR4+X/V7EFcalOl93pm/uxFCJR6lhKdOUwoOBvyEcr+pRBfSHysTuyW81ASZF2QInLoAhgsyltxbPCnu7ipBlyw5xCx8Q9wQogMyHlavQzBcEG3yTmWeCAG37ARG4GTLCt9N5tTmKMMlCw0ICF7Rkvu1bCwXIsTDVqZqQEvu3fOycnJk/CC1NxEOLiEXH1WCZGZDrwaKQJ5JjDYuO1aRZKJB9/7Xh/SOgna+1G+hBIWZCd26midCHP/96e+a/eG1BawdwFEYRxdTOV9yr7LUxG4HIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(346002)(366004)(76116006)(9686003)(8936002)(5660300002)(66946007)(7696005)(52536014)(86362001)(55016002)(8676002)(6916009)(478600001)(64756008)(6506007)(66556008)(66476007)(33656002)(26005)(316002)(53546011)(186003)(66446008)(83380400001)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: J5RGZhM6A+jw02ByI0cnSfoU9CmVaxb0vOHGyr4UdwyV1uq2LtL/6gLqsHiByaVWEBkSUXJK/ISCcCYbM7lYLU/RjYEgH7Xfrp4Iwh2TRQ+jJxtG+xXp7bCzVdDvw2xQS1lg9Pfoy9uhV0IxPzR0dInPM8q9ietNdHiVeRc0CXe6DxHKTbMUF3dy7P3VxnWQtoODDds9JuUZ3Lr3FoYLgMkJl3+eSUjpc2cuMRXlgmrQrzrvRUMnZOG9HknHy1HeA1NZYUC434jLy+3jV7xKmdKp5t190Z8Ptr+OW+fVCuDbSelw1wT/z8NuLrt5w8TYNwO1viUuvsEFxFuioLI4WXZN+xsKRmJchhAlHONYavb/E9AXBaAw5XC8HzTlsZGCVoBFJ3qH5satNTP6Zh2UNB/LDa4fyPulpNHgNiYDNbkQEepfhLUOiR7y3NkTjtJPmLaU8ERoRtrEe+awIudgRLhkbsEQHIcEcTJu4Y3edgiSMMCBup+dYfdppvaRzhElLeXDUNO3ZoVXT9wlfQGyoV+C0lySv2F1Hg3l4voEaanN5dvqlBe+SJNJJUqySYFl1uLPsZ/Y/dVX3CFSV7bCRrOPAzRyNbi9kkyyH3tTdMxtst48EJs8qJBuIi/KixUtIT08dIn6IvUt61f6BWIx0A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb179e22-4cf4-4210-8e60-08d83a699fa4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2020 00:34:19.5644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q5gPRzUh4Ykys0ZVzBDv/0jaBBhDJH/dQMwuE5bmvhI43Xt1ViOdK9r5cSjaYLehVVAndJrPnZODeDvs+bSrrHHH4BFW3S6+VUTcBHC9jEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1620
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add flow director support for
 IPv6
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
> Arkadiusz Kubalewski
> Sent: Thursday, August 6, 2020 6:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Add flow director support for IPv6
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Flow director for IPv6 is not supported.
> Implementation of support for IPv6 flow director. Added handlers for
> addition of TCP6, UDP6, SCTP6, IPv6. Refactored legacy code to make it more
> generic. Added packet templates for TCP6, UDP6, SCTP6, IPv6.
> Added handling of IPv6 source and destination addres for flow director.
> Improved argument passing for source and destination port in TCP6, UDP6
> and SCTP6. Added handling of ethtool -n for IPv6, TCP6, UDP6, SCTP6. Used
> correct bit flag regarding FLEXOFF field of flow director data descriptor.
> Without this patch, there would be no support for flow director on IPv6,
> TCP6, UDP6, SCTP6.
> 
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   9 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 210 +++++++++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  79 +++-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 371 +++++++++++++-----
>  4 files changed, 550 insertions(+), 119 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
