Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2D73E40D3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Aug 2021 09:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80FC26066B;
	Mon,  9 Aug 2021 07:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nvVinWaLcFl0; Mon,  9 Aug 2021 07:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E930360630;
	Mon,  9 Aug 2021 07:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9201BF40D
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 07:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5756D400F2
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 07:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOjp-KYos36n for <intel-wired-lan@osuosl.org>;
 Mon,  9 Aug 2021 07:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9237F400BE
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 07:30:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="201814737"
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="201814737"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 00:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="505081602"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 09 Aug 2021 00:29:54 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 9 Aug 2021 00:29:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 9 Aug 2021 00:29:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 9 Aug 2021 00:29:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQTPTluEMSoQRu8SKmDwdj2GiFb2km0cgrw3iKVoc3MHlz8U02KCw53SKilseiAYkOCMWX7/REclGr7hWmpFhVGiG3I3i5lUw4t9qTyDHPuJc6qNi/elwYauaYCDMz2fSNJl8LECjAYzsIcbPVoHsipdTcMeDWCb87PdqxStcx3ziWkphtWWiM8dpJFMYeIPnOI9vyVu0vt05fm68PCSpDq7kxcShaWldcsqxlGZpjefoT1yQ0XzzA+rlSUWQ5F0mRaKskVNmy66k1UHpcre+8oxw3aOC49vLDNWTqh4HygrS9RINRieeHHTnRRl9jpRGW+AF0mmYn7uzhE62Kl3Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FBOafJ36UDMjHqE83CcFICcS7b4aQN2lzRHj2S8/wd4=;
 b=jHxVyrwDsrrONfszOTkxF6QeAyaaCN8GIGP1A63HhRK/qC/BePY3UWOLY3K7QdrqRch+42qSngRLu/bSOroIMstA0dT5awGb2OvBSFNP049qsyVo6O6ZMeXtN5jmiQ2AV+bgqTG/25Z0B1gK6u3gCsuBcDMtLzqJFU/s3hNhmQdG0rr/kNy1BxrnusOouBL/Vw4SLOpGs+4r9aS2378/zKogR2gTGWupo1gXB5kGJSVVJPnK4Nw7C88ni7ZCbpMsE03Qv0Nacyb7cf0WpDodhZX2VXPX+Bed/sCV6DEqjGsgqKEAYuvh7VeHROZBBbZWrXL/W06VY5yYkS2jCyjKDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FBOafJ36UDMjHqE83CcFICcS7b4aQN2lzRHj2S8/wd4=;
 b=lrB83pKwNw0tYxGqe52v5+lV8vFHOG8QkRYM2od/5W5YZoYRbuboaTOmK4/ixg79FegUd5fculM014L6dnK00DtlLev4L6d1DKLjNJaI41vlSfNxkCzqjlEc5Pbw3NbW0mWGFUAnXVIYbtevV9F/NTlYL0yC4fYuipJCilBcdy0=
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by MN2PR11MB3904.namprd11.prod.outlook.com (2603:10b6:208:13c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.19; Mon, 9 Aug
 2021 07:29:47 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::e525:2182:4820:4082]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::e525:2182:4820:4082%7]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 07:29:46 +0000
From: "Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support for
 CBS offloading
Thread-Index: AQHXiTu8m/4GpN4a6U+II6scyeGucqtjauoAgAdgIAA=
Date: Mon, 9 Aug 2021 07:29:46 +0000
Message-ID: <BL1PR11MB5399BFAC524AF9A26A4EA06E9DF69@BL1PR11MB5399.namprd11.prod.outlook.com>
References: <1628086752-20213-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1628086752-20213-4-git-send-email-aravindhan.gunasekaran@intel.com>
 <64f7fe7b-feca-dae2-adc3-96b8ac1fbc70@molgen.mpg.de>
In-Reply-To: <64f7fe7b-feca-dae2-adc3-96b8ac1fbc70@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: daa91a8d-0c10-42d0-0346-08d95b0776eb
x-ms-traffictypediagnostic: MN2PR11MB3904:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3904D601FC5A87606B2326829DF69@MN2PR11MB3904.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YjkLqZZkK0cYKQfVXMpx7q0n5T2jhpwbknJOVSyGc+Q3rgaY/QBZW2Mrn+5K3oiFFOHhM/7NTXNGj7KiRAmX9hRod40b+0uH3mfRfYUOpsQ8Bne+KpPk2eDVc9itdmgq8L4vLuVDHn3W3IwPUXSmGzFuu2eE5TrA1ny8FpzFVxFQYDQLodB0EK5asXeSSqNl1X5RaLSqAK6QTU98k+lZ+4usH75ICvADOmxjLfNeH1IfZ5WHJKlH/zptS4jVyeHCDsWQ8TRULoymuypO9KoHaHMmF6toH3z31rg+rncWAeNzv795DWKqnUmbRkmGBmUEhQvYdpmb+GcX0AHewj1yXzmzKw1E85VWYUA0n3mdMzY3zezspyOUw7RNvG70XCk3RDU+K/oDIM1k1dAi0LUn/qR3p+Fx46vuHYPDENAfUTM9Bc9aFe7C0Rfa1rwnWtmQISMgExO6O9W0ZGifUmt8b3kKpDJmt+6x/1mt4pdm8df5p8ztLcE3RFSN4wbWEDJX5AfHVZn45/qe3Oil35OrlcGI1TrL917nJVdNOfBlJKnpG7llG6judkpmmgsBdRhjxjfMf0WCnoHdFIsLvHc38fDghN1vNTxA8QkfnuitJOLSmHAAcvnxK8gozhSxfro125UgpBAI9TdXrBfXxAYhULyrqwaV2F2H8qvotKkM2lUhgLT+y81jSNUneKP2dNyP6/dmIdhoNTSxM2zz1+eH3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(8936002)(38100700002)(8676002)(2906002)(83380400001)(66946007)(76116006)(38070700005)(66476007)(66556008)(64756008)(66446008)(316002)(54906003)(33656002)(122000001)(7696005)(53546011)(6506007)(107886003)(52536014)(5660300002)(86362001)(4326008)(30864003)(186003)(26005)(6916009)(9686003)(55016002)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGJRdGZEaHV1ckZJQUM2QVhFWG9hSHdSOVVLdit5NTgwV09wT05LdUFvbElO?=
 =?utf-8?B?R0Y3a1pnaURaeGtjTUtIbmJ1MVBYUi9pMnpwK2VoMzhNbUpJdGxBUE1xMlY1?=
 =?utf-8?B?Qy95ZVFoL0NVbnNYQTh0Qk1CaHViSTcwZGNPd1pXQzJWbWFHZjdxbitEOGQy?=
 =?utf-8?B?ZUFZbVQ2SWY1c2ZveE5naktrSXB5TC94NjBnOGpuQ21EeU1WQ2JPby9jcXpk?=
 =?utf-8?B?dzJSRE14UHFrWHNsR2Jxbi9IaUxwbzNCdm44QzZmQUZ3RjJSRmdiNXdqc3FZ?=
 =?utf-8?B?cmpMVW5GcU4xRVl0N2MxSzBPZFgyeG0ybDA4VzhNczRRS3JrRXpHS0haZHNU?=
 =?utf-8?B?N0Q1d2x2S1phMGp0QTBKNGV1RVZJcytnM3M1RjNIME1LdUxHalA4WklEMWtv?=
 =?utf-8?B?aytWbXRFcmg0WDBDM2pzZHgxWDdjQSs1NnIxaFZpVm5hdEZYazFUd1JoZTJy?=
 =?utf-8?B?TGs3c3JrU0dEV1VtdWlGSjFkSVFVR3BuQW0vS3NNdkk4V0FBbCtLVjErNS83?=
 =?utf-8?B?OSt6cE1wM0RxOXdyNEFkVEJVb0UxUU5KY0ptOG9ZdWd4ZmtGaUhkMWtQTEFu?=
 =?utf-8?B?RXRxSmw1MU15ZlBZcmdpbFFidm5rdkI3bTU0S3JXcUUrMmlVUTJvSVRSckp2?=
 =?utf-8?B?bTZPM1kvaEtVUkhvZkgrQ3ZGVW50ZXgzd2laL3VkVUdCcjhjWFZCUlNadUtk?=
 =?utf-8?B?eDl1am92Z3RkbWpYK2IrSWo2RzFVbmFVdVBYWGhISHg1Nk4wcW0vY1Npd2or?=
 =?utf-8?B?YnpnRmRORUZYSzc3VXpQTFZmMEJUZE54Vm13VzFTeGY3NERDaTJQa3h3Nno2?=
 =?utf-8?B?aVFaTWRIQnBscVJDUHVQYnlLUXk5THJlMkZIRW5LTjRCMVpUbzQxSFR2VmtG?=
 =?utf-8?B?TTlEcHB2YjdiZCtPVjZjWjhTL1k4RGtqVDRGYmtLOVh4SlNpMUVLam9FN1ZL?=
 =?utf-8?B?MnZpTzhCUWg3b0w4b3QxTkFnMFZPWHkvc0NhN2UvRmMreEg4TzVxVGN3djgz?=
 =?utf-8?B?cDBzbFkyWlA2aFZuV1ovMkFZYUdZTCtVSDdleTRGZk1rdUFNcU1zRkRlbCtJ?=
 =?utf-8?B?aGh5ZzZMRHo3WlROZEJFcUxodTczRkdYZUlHZS9FajdQRkM0bHdkamthbTF3?=
 =?utf-8?B?M3FKMDR6S2hsb0x5TGVobUJ2bEZKZng5WEhSUDYzeUUyT00rcWxoSHdCdGtP?=
 =?utf-8?B?T1Y1N0Y5ZXFob3d4SGZ5STBtV0d5WmNJK0wwNTc1TjVkZ2I0M3lMY2pvRUxB?=
 =?utf-8?B?WHFvK1ovb1FyRm1uWnBoMDNrMFptbXlxQWVSdEJVZ1d0UTIvc0lPMlVCWW1M?=
 =?utf-8?B?aWE2RW9zcVNGelRYZmFoL2xyRUpBNnl1NlVXTk1QL0xXWk83ZEdJd1plendK?=
 =?utf-8?B?bERKcEpqMWJUOURaVUxsYU5BTFBwLzdWdjVueHlGRW5EWlNzaTZVUDZqK3k1?=
 =?utf-8?B?bVdweHZGU3lEMkR3RmNydnNId2g0eXlzdkc2OGpPWTA2VTBkYW8yMVUzcTNU?=
 =?utf-8?B?b0treEJvdlNjSEtXanpaU1RlME15RHNUNjljdEhVTmpEd1ZnWnFWWFV1Tjlw?=
 =?utf-8?B?YkxzeU4rMWZUY3dGUEh2ZldjMkREQytjQUhqTUtjRDZSMDA5cWY0QkloV1NM?=
 =?utf-8?B?VmU1cVExVjZVSGFrYThSWTJHVlRkbDRPS2NlZ0JjL2JnaU5lT2JjK0J1cDlP?=
 =?utf-8?B?MHV3MVV5WWRrWUtYWHhXWUh1QXlEcHBjLytWSG50V204YkxzTERJRlBhcFBt?=
 =?utf-8?Q?ToFfxTOyevpViAfaDXSLSYu+gwZ5mN6UXHPEJY+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daa91a8d-0c10-42d0-0346-08d95b0776eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 07:29:46.6552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UGDeI77D25SWmk9IxqJoXuCCf1+odghzxUr7rZXNdLS9Q++B5xL0UOpPX0k89vJbCEc1Ft1/6jdjzgY38YC19alBoC8C+vO/ySz/HNzQmCIrmh1fUVPYB988EUqFBYJB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3904
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for CBS offloading
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Chenniyappan,
 Velmurugan" <velmurugan.chenniyappan@intel.com>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

> -----Original Message-----
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: Wednesday, August 4, 2021 8:11 PM
> To: Gunasekaran, Aravindhan <aravindhan.gunasekaran@intel.com>
> Cc: Chenniyappan, Velmurugan <velmurugan.chenniyappan@intel.com>;
> Chilakala, Mallikarjuna <mallikarjuna.chilakala@intel.com>; intel-wired-
> lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support for
> CBS offloading
> 
> Dear Aravindhan,
> 
> 
> Am 04.08.21 um 16:19 schrieb aravindhan.gunasekaran@intel.com:
> > From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> >
> > Implemented support for CBS Qdisc hardware offload mode in the driver.
> > There are two sets of CBS HW logic in i225 controller and this patch
> > supports enabling them in the top two priority TX queues.
> >
> > In-order for CBS algorithm to work as intended and provide BW
> > reservation CBS should be enabled in highest priority queue first.
> > If we enable CBS on any of low priority queues, the traffic in high
> > priority queue does not allow low priority queue to be selected for
> > transmission and bandwidth reservation is not guaranteed.
> 
> Nit: Please re-flow for 75 characters per line.
> 
> Please mention IEEE802.1Qav (CBS) in the commit message, the datasheet
> name and revision you used for the implementation (I see it in one of the
> comments), and maybe how to configure it.

Agreed. Will Upload v3 fixing this.

> 
> Should Linux log a message, if support is detected and used?

Currently, any unsupported params are requested, driver reports error.
If no error, offload generally will be successful. igc_tsn_offload_apply
schedules a reset task and return immediately and then tsn offload
(cbs register configurations along with other TSN features) happens in
reset task. That's reason for no log in igc_tsn_enable_cbs.

> 
> 
> Kind regards,
> 
> Paul
> 
> 
> > Signed-off-by: Aravindhan Gunasekaran
> > <aravindhan.gunasekaran@intel.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc.h         |  11 ++-
> >   drivers/net/ethernet/intel/igc/igc_defines.h |   8 +++
> >   drivers/net/ethernet/intel/igc/igc_main.c    |  71 ++++++++++++++++++
> >   drivers/net/ethernet/intel/igc/igc_regs.h    |   3 +
> >   drivers/net/ethernet/intel/igc/igc_tsn.c     | 103
> +++++++++++++++++++++++++++
> >   5 files changed, 195 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h
> > b/drivers/net/ethernet/intel/igc/igc.h
> > index 58488ba..a125aaf 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -98,6 +98,13 @@ struct igc_ring {
> >   	u32 start_time;
> >   	u32 end_time;
> >
> > +	/* CBS parameters */
> > +	bool cbs_enable;                /* indicates if CBS is enabled */
> > +	s32 idleslope;                  /* idleSlope in kbps */
> > +	s32 sendslope;                  /* sendSlope in kbps */
> > +	s32 hicredit;                   /* hiCredit in bytes */
> > +	s32 locredit;                   /* loCredit in bytes */
> > +
> >   	/* everything past this point are written often */
> >   	u16 next_to_clean;
> >   	u16 next_to_use;
> > @@ -289,8 +296,10 @@ extern char igc_driver_name[];
> >   #define IGC_FLAG_VLAN_PROMISC		BIT(15)
> >   #define IGC_FLAG_RX_LEGACY		BIT(16)
> >   #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
> > +#define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
> >
> > -#define IGC_FLAG_TSN_ANY_ENABLED
> 	IGC_FLAG_TSN_QBV_ENABLED
> > +#define IGC_FLAG_TSN_ANY_ENABLED \
> > +	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
> >
> >   #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
> >   #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
> > diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> > b/drivers/net/ethernet/intel/igc/igc_defines.h
> > index 1361086..244edbc 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> > +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> > @@ -518,6 +518,14 @@
> >   #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
> >   #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
> >   #define IGC_TXQCTL_STRICT_END		0x00000004
> > +#define IGC_TXQCTL_QAV_SEL_MASK		0x000000C0
> > +#define IGC_TXQCTL_QAV_SEL_CBS0		0x00000080
> > +#define IGC_TXQCTL_QAV_SEL_CBS1		0x000000C0
> > +
> > +#define IGC_TQAVCC_IDLESLOPE_MASK	0xFFFF
> > +#define IGC_TQAVCC_KEEP_CREDITS		BIT(30)
> > +
> > +#define IGC_MAX_SR_QUEUES		2
> >
> >   /* Receive Checksum Control */
> >   #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable
> */
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 3eb4f9e..ea12633 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -5905,6 +5905,74 @@ static int igc_tsn_enable_qbv_scheduling(struct
> igc_adapter *adapter,
> >   	return igc_tsn_offload_apply(adapter);
> >   }
> >
> > +static int igc_save_cbs_params(struct igc_adapter *adapter, int queue,
> > +			       bool enable, int idleslope, int sendslope,
> > +			       int hicredit, int locredit) {
> > +	bool cbs_status[IGC_MAX_SR_QUEUES] = { false };
> > +	struct net_device *netdev = adapter->netdev;
> > +	struct igc_ring *ring;
> > +	int i;
> > +
> > +	/* i225 has two sets of credit-based shaper logic.
> > +	 * Supporting it only on the top two priority queues
> > +	 */
> > +	if (queue < 0 || queue > 1)
> > +		return -EINVAL;
> > +
> > +	ring = adapter->tx_ring[queue];
> > +
> > +	for (i = 0; i < IGC_MAX_SR_QUEUES; i++)
> > +		if (adapter->tx_ring[i])
> > +			cbs_status[i] = adapter->tx_ring[i]->cbs_enable;
> > +
> > +	/* CBS should be enabled on the highest priority queue first inorder
> > +	 * for the CBS algorithm to operate as intended.
> > +	 */
> > +	if (enable) {
> > +		if (queue == 1 && !cbs_status[0]) {
> > +			netdev_err(netdev,
> > +				   "Enabling CBS on queue1 before
> queue0\n");
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		if (queue == 0 && cbs_status[1]) {
> > +			netdev_err(netdev,
> > +				   "Disabling CBS on queue0 before
> queue1\n");
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	ring->cbs_enable = enable;
> > +	ring->idleslope = idleslope;
> > +	ring->sendslope = sendslope;
> > +	ring->hicredit = hicredit;
> > +	ring->locredit = locredit;
> > +
> > +	return 0;
> > +}
> > +
> > +static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
> > +			      struct tc_cbs_qopt_offload *qopt) {
> > +	struct igc_hw *hw = &adapter->hw;
> > +	int err;
> > +
> > +	if (hw->mac.type != igc_i225)
> > +		return -EOPNOTSUPP;
> > +
> > +	if (qopt->queue < 0 || qopt->queue > 1)
> > +		return -EINVAL;
> > +
> > +	err = igc_save_cbs_params(adapter, qopt->queue, qopt->enable,
> > +				  qopt->idleslope, qopt->sendslope,
> > +				  qopt->hicredit, qopt->locredit);
> > +	if (err)
> > +		return err;
> > +
> > +	return igc_tsn_offload_apply(adapter); }
> > +
> >   static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
> >   			void *type_data)
> >   {
> > @@ -5917,6 +5985,9 @@ static int igc_setup_tc(struct net_device *dev,
> enum tc_setup_type type,
> >   	case TC_SETUP_QDISC_ETF:
> >   		return igc_tsn_enable_launchtime(adapter, type_data);
> >
> > +	case TC_SETUP_QDISC_CBS:
> > +		return igc_tsn_enable_cbs(adapter, type_data);
> > +
> >   	default:
> >   		return -EOPNOTSUPP;
> >   	}
> > diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
> > b/drivers/net/ethernet/intel/igc/igc_regs.h
> > index 828c350..f90a644 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> > +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> > @@ -236,6 +236,9 @@
> >   #define IGC_ENDQT(_n)		(0x3334 + 0x4 * (_n))
> >   #define IGC_DTXMXPKTSZ		0x355C
> >
> > +#define IGC_TQAVCC(_n)		(0x3004 + ((_n) * 0x40))
> > +#define IGC_TQAVHC(_n)		(0x300C + ((_n) * 0x40))
> > +
> >   /* System Time Registers */
> >   #define IGC_SYSTIML	0x0B600  /* System time register Low - RO */
> >   #define IGC_SYSTIMH	0x0B604  /* System time register High - RO */
> > diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > index 2935d57..0fce22d 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > @@ -18,6 +18,20 @@ static bool is_any_launchtime(struct igc_adapter
> *adapter)
> >   	return false;
> >   }
> >
> > +static bool is_cbs_enabled(struct igc_adapter *adapter) {
> > +	int i;
> > +
> > +	for (i = 0; i < adapter->num_tx_queues; i++) {
> > +		struct igc_ring *ring = adapter->tx_ring[i];
> > +
> > +		if (ring->cbs_enable)
> > +			return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >   static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
> >   {
> >   	unsigned int new_flags = adapter->flags &
> > ~IGC_FLAG_TSN_ANY_ENABLED; @@ -28,6 +42,9 @@ static unsigned int
> igc_tsn_new_flags(struct igc_adapter *adapter)
> >   	if (is_any_launchtime(adapter))
> >   		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
> >
> > +	if (is_cbs_enabled(adapter))
> > +		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
> > +
> >   	return new_flags;
> >   }
> >
> > @@ -87,6 +104,8 @@ static int igc_tsn_enable_offload(struct igc_adapter
> *adapter)
> >   	for (i = 0; i < adapter->num_tx_queues; i++) {
> >   		struct igc_ring *ring = adapter->tx_ring[i];
> >   		u32 txqctl = 0;
> > +		u16 cbs_value;
> > +		u32 tqavcc;
> >
> >   		wr32(IGC_STQT(i), ring->start_time);
> >   		wr32(IGC_ENDQT(i), ring->end_time); @@ -104,6 +123,90
> @@ static
> > int igc_tsn_enable_offload(struct igc_adapter *adapter)
> >   		if (ring->launchtime_enable)
> >   			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
> >
> > +		/* Skip configuring CBS for Q2 and Q3 */
> > +		if (i > 1)
> > +			goto skip_cbs;
> > +
> > +		if (ring->cbs_enable) {
> > +			if (i == 0)
> > +				txqctl |= IGC_TXQCTL_QAV_SEL_CBS0;
> > +			else
> > +				txqctl |= IGC_TXQCTL_QAV_SEL_CBS1;
> > +
> > +			/* According to i225 datasheet section 7.5.2.7, we
> > +			 * should set the 'idleSlope' field from TQAVCC
> > +			 * register following the equation:
> > +			 *
> > +			 * value = link-speed   0x7736 * BW * 0.2
> > +			 *         ---------- *  -----------------         (E1)
> > +			 *          100Mbps            2.5
> > +			 *
> > +			 * Note that 'link-speed' is in Mbps.
> > +			 *
> > +			 * 'BW' is the percentage bandwidth out of full
> > +			 * link speed which can be found with the
> > +			 * following equation. Note that idleSlope here
> > +			 * is the parameter from this function
> > +			 * which is in kbps.
> > +			 *
> > +			 *     BW =     idleSlope
> > +			 *          -----------------                      (E2)
> > +			 *          link-speed * 1000
> > +			 *
> > +			 * That said, we can come up with a generic
> > +			 * equation to calculate the value we should set
> > +			 * it TQAVCC register by replacing 'BW' in E1 by E2.
> > +			 * The resulting equation is:
> > +			 *
> > +			 * value = link-speed * 0x7736 * idleSlope * 0.2
> > +			 *         -------------------------------------   (E3)
> > +			 *             100 * 2.5 * link-speed * 1000
> > +			 *
> > +			 * 'link-speed' is present in both sides of the
> > +			 * fraction so it is canceled out. The final
> > +			 * equation is the following:
> > +			 *
> > +			 *     value = idleSlope * 61036
> > +			 *             -----------------                   (E4)
> > +			 *                  2500000
> > +			 *
> > +			 * NOTE: For i225, given the above, we can see
> > +			 *       that idleslope is represented in
> > +			 *       40.959433 kbps units by the value at
> > +			 *       the TQAVCC register (2.5Gbps / 61036),
> > +			 *       which reduces the granularity for
> > +			 *       idleslope increments.
> > +			 *
> > +			 * In i225 controller, the sendSlope and loCredit
> > +			 * parameters from CBS are not configurable
> > +			 * by software so we don't do any
> > +			 * 'controller configuration' in respect to
> > +			 * these parameters.
> > +			 */
> > +			cbs_value = DIV_ROUND_UP_ULL(ring->idleslope
> > +						     * 61036ULL, 2500000);
> > +
> > +			tqavcc = rd32(IGC_TQAVCC(i));
> > +			tqavcc &= ~IGC_TQAVCC_IDLESLOPE_MASK;
> > +			tqavcc |= cbs_value | IGC_TQAVCC_KEEP_CREDITS;
> > +			wr32(IGC_TQAVCC(i), tqavcc);
> > +
> > +			wr32(IGC_TQAVHC(i),
> > +			     0x80000000 + ring->hicredit * 0x7735);
> > +		} else {
> > +			/* Disable any CBS for the queue */
> > +			txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);
> > +
> > +			/* Set idleSlope to zero. */
> > +			tqavcc = rd32(IGC_TQAVCC(i));
> > +			tqavcc &= ~(IGC_TQAVCC_IDLESLOPE_MASK |
> > +				    IGC_TQAVCC_KEEP_CREDITS);
> > +			wr32(IGC_TQAVCC(i), tqavcc);
> > +
> > +			/* Set hiCredit to zero. */
> > +			wr32(IGC_TQAVHC(i), 0);
> > +		}
> > +skip_cbs:
> >   		wr32(IGC_TXQCTL(i), txqctl);
> >   	}
> >
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
