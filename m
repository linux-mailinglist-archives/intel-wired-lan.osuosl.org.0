Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8594423B2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:04:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E59C400DB;
	Mon,  1 Nov 2021 23:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nfg7lzTThaDQ; Mon,  1 Nov 2021 23:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E02E4026B;
	Mon,  1 Nov 2021 23:04:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9574D1BF354
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90514401C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZGHcg74mwPH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:04:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECB44401F7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:04:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211900640"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211900640"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="727667748"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2021 16:04:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:04:23 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:04:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:04:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:04:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4BhwYvoUkpEvHOkUNAf5t9k1HGwNQRvKC4WGORRq0F55RthzodhMd7VfYpkw1WHUzVf5sZD23RgmK1s27s1SYyKY8rASW3kFR5CqIVIh7Cs2ce2N+Kk8XhnlQFwyr+DtpI915BfjtvCQ1Jjb+Ny9HoQBWV7XypGRWE3bqJQvVT6rHMkoDeZdRzknC+cgIR8ektXQJNF9FXyBvQYuwSsFun/6fM5H/bn5lqyQUvTcoWcpHAcke7s09rEgABermI4g7XCvrRzi5jz8MXtcUNQ6qjFBxiMtlSwhboTjYKrImVR8qdT4D5dWjaaU7Gh0EesPREmmJCTPr2d8kNuwX2x2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CqOb6YCzJKzeRqgPa76KDl8Fahz39qsH5ex6+43n8sM=;
 b=QliOfOI/+x2KgxCZYXoqOC0JAypUb1nqJ+Lwxt5W5fddGuxuzz1rid64MdTgQbyFA87epE9cb/f31g/ZNoK0i0Myymq0f1DrtxESlAc3dsLyC2F31n0N3fRdPkpzcmlxnZ1CkRrjo7zV9doMvtkUz8ZO08o5Zst7U3nQKgTWmJ92x1LHsniZ8txLJKJ5XmUYRT9WRuBuYekdLssXaZEcT5/4irQbcqPN1WR4VCZSEPzzrybSqx9k8Cpn8EKBlPpvC8tOdwCDRIthYkR1H/N0GReGlXhcIiLaA7PewWTadDFaSU6+5/iRk0HxVoL88gCGlBIValwcLGNj4oOV6gsMPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqOb6YCzJKzeRqgPa76KDl8Fahz39qsH5ex6+43n8sM=;
 b=Y5lSV5u/YZ6TfsQGZ05cIMsQsWBbvhu5msluBYLFIndZbweu36564sL7kxqiNt988z8RqlXGEKwk8U1KUOnQSScylul8/3r+IUz8RhRKrwsKdPAeMfEDMm3c6IsqCbFmVpL3Uew3s1/9pGcIV6nalxfGhKN9RYqWFhE0mi34Vbc=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL1PR11MB5528.namprd11.prod.outlook.com (2603:10b6:208:314::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Mon, 1 Nov
 2021 23:04:22 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:04:22 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 2/8] iavf: free q_vectors before
 queues in iavf_disable_vf
Thread-Index: AQHXWWNsROVpm9GlAkSaJP4DWApqSqvwNsdw
Date: Mon, 1 Nov 2021 23:04:22 +0000
Message-ID: <MN2PR11MB42246E149C8CD9F53BF0AF78828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
 <20210604164900.33156-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bef1083e-2ac9-425d-434a-08d99d8bf15e
x-ms-traffictypediagnostic: BL1PR11MB5528:
x-microsoft-antispam-prvs: <BL1PR11MB5528B2ACA8866A3BBADC8829828A9@BL1PR11MB5528.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VDeplnWsOAJ8Lw1OWv+I9k7rYMKjKqPE3AydfAUDN1zVw93mWpmV4e1ecG5woPPRsg3tcYeGy5VceqUt1PtVF2pC9PBifxlQKkSCoXESPwN9X9lZeunrIgBvE9is8mtq+zRbNZUjof5l4kaVLyLcZqccWq+TRP+O4kSBXsMQzfj2Z6Ft2VHb58zfLwrgjnUIbNhQck1eA3iD1RCQaZIktOGIE0JKfRYUvKz4e6tqwlpI5Tlum3jPas+rFUBd5FbQ599GnpUpbgoT862pPEY+KFIjAhcnF+YmPR4si9jnWe0aZZissUi+Tz0v+NcD6DrjRqHJLDExRIg4pvgVS4rB/Kq3u5d7ChSisb0BGc0DMqmmcPeeOMs5m1PNLCJrEbHbKyMETG5bpD0TgCGSdWUOc6a/9dU+jkrrgGGJf9DYR7VqBWYMZR6KrCFRaYQg8eEHWG+O7joJtOgoKoNbzOyGVPMnJyyOaVvdw/E0jZefGJyf7EVTQHdza13ZpNcRAVDdpbW6+GpWjI5kXQFbVfx97hCbwRqNdywcJLnOK6l/TkIG24SyRUkoMUu9Lbnx0PG4amqjWqG10KA1Qvibj8w6c9GqcAEFenXShojEuHSRqcv1kyz3HZ/Ih+hDO1ecl+zH3dAdV61uGqagdSupwuDfPQ+fXuyPOrW0E0DXWa1t/tE2QWcVOC+HPteqyAVy692qsSx/ZdGJDAFSGXn5bjyCqw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(2906002)(38070700005)(26005)(122000001)(8936002)(508600001)(186003)(83380400001)(4744005)(71200400001)(8676002)(52536014)(7696005)(64756008)(33656002)(316002)(76116006)(82960400001)(55016002)(110136005)(66556008)(66476007)(66946007)(86362001)(6506007)(5660300002)(66446008)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ErjvqCANAOVY/K4sE/d7sYH2vgsZc6nULFEygSm8px8DiHQSSKb8XP+tgcjH?=
 =?us-ascii?Q?pTJnLLpJfXHboZiDH0pLrGpoLF0XZzF5SLekdURQL9DG6AXG7SxbwdSsQynQ?=
 =?us-ascii?Q?ELzNiRNNxV9YjmxipiREWooShlQcAKMpLOk3u2sXacGg4NB5DxvnXAfP0IFN?=
 =?us-ascii?Q?Bme6wUkzksFHtrexXVNgam5Th4ffQKdIYb+pDjD79xkvMTDKLZsk735See6B?=
 =?us-ascii?Q?LL7p0n2TBIql7fBEQhiFALE0oBGMNx7JRmvu1sQzgHVM4EUejfOcHrOBzMxl?=
 =?us-ascii?Q?5AGmRfMOcnvi5bmz74XIoK5/cWYBvaKYfnlABTaL3dNpOZG07gHYW92MCdgT?=
 =?us-ascii?Q?WqLcr7azZI+Rf6+qjYgZRuk3RaAgnEGLG4HKN3lnzcLsQTPBRHGFEVlX/ZL3?=
 =?us-ascii?Q?X0DIAn0Qqw0SMvNRHHdI92XCtGYJaSWHs1ev1a1oGH4bDfegERTkxgULlCla?=
 =?us-ascii?Q?Lf8vur5RGQcWniGD85J7NSQv+nhnlp+9MzNDUzQIrnz+EckWDfIz7F52zzi3?=
 =?us-ascii?Q?PnJCrvfighihcfAOvQtbY0kxRUrYtgK49LTNADWYfWMoi4LUcR6nkfRZRfc6?=
 =?us-ascii?Q?OJmqPXKUUVm+MK6Dg32aGPQV85yotkA4IODfOhG6tUCSHCeSU1rSmLb01NAE?=
 =?us-ascii?Q?Z2Wh3WqGKLDYjPwlN56YOGHUkroCXRFJLvGhOdpiKYZViYNRfXyZkuiYuETz?=
 =?us-ascii?Q?11BToO8L1R6clrz9nIX9zZiszRLRbwrRtXhPz0BVB+3ErSOKEW5ky9U4JNdX?=
 =?us-ascii?Q?5lrmuHEvvmZGHA9xqFz2r+RAjEbO8d62eUqm1tuhclgjsXSOwNPmaZDA3vrI?=
 =?us-ascii?Q?YDx7ZG9i49n5k3bSTnnEjI5WvnFjzPgHNprENLrwV0I0CxU14aUaKGTJSGdm?=
 =?us-ascii?Q?vHAInI01fEVgoLmlcTbimk2NM3BkSB5anQwKLlqzb3lQvoQbsHQRZv8yWj6t?=
 =?us-ascii?Q?m/MuN2S67MYdRzyfC4nCJF/yCEUyLXroVWfoy6uZ+/8eUlY5sNQRd5SmPmCy?=
 =?us-ascii?Q?/aAVJaYr94RCqla1Ze5WRrfoP+FpBP1yI3ReKDb3oKpw2d5SBkOJNKRQW+gt?=
 =?us-ascii?Q?AU2lvzT5eZRqrYJfVz2Advsv/iDBd0DD0OaA0J60RY3dMDSS3+g8qKxKx5Ta?=
 =?us-ascii?Q?ourPX1R64FMTvB7RCoxIPXY5Nu6KyIQ5ciFBtSvKWtnkRj3mGoIiqxWsnCtO?=
 =?us-ascii?Q?1IzqQKxN0vsRqt8kjK/bp2VVyA1xFG6O9TuFsPfguX6e6zg7a3MB8JoLlEsr?=
 =?us-ascii?Q?s/udnF5E7vUYtN1vXTK67aVSuH1+mfAArCsQyNNr+iQjHNl1COTjC+zFZdrR?=
 =?us-ascii?Q?I4LeqgFGwhVWBhQ+D2MCURNVrN8h3aXnviwdoDrdjih/WQWp5Wkc1UL9SPkq?=
 =?us-ascii?Q?cC3S3lO4e0lrBVvYZbJ9PM3xdryoR24VO3ImADYdfXnxP7W9oKPXifxTzQjX?=
 =?us-ascii?Q?m3cUzHMW+mZpKtZrHUuQ3EkKkWDozyPC7Ph9DX2rff1hgyD77wQPOhOpjPnd?=
 =?us-ascii?Q?BmTPW+fUfsif6p246U7HZKvpfle9LsqzHqoCDbk42X1jWJKFp/PDXzfoCUdN?=
 =?us-ascii?Q?29LM7pMFyc4JjM3WX0mW6z3JmPz+5AcfhvJDc/kupXY8VwdLnu8qgGlgK+By?=
 =?us-ascii?Q?mnl+HV7xjFjoBHuvhFKcdgdhLOHQH4LM/hv8OkSKxl5HV340CR0wFQ9tTKL+?=
 =?us-ascii?Q?RsEaxw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef1083e-2ac9-425d-434a-08d99d8bf15e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:04:22.3798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2uwmLdtuTTI0AZrwJvmsIkI4YlSLTyUAV6lJcTQ5mFr4uDh2C+oFaL5ClKE3zb1N7wCpMKW9itsgVtiffrKjqf5CuiIi22LIk1S5hxx4Ipc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5528
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 2/8] iavf: free q_vectors before
 queues in iavf_disable_vf
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
> Nguyen, Anthony L
> Sent: Friday, June 4, 2021 9:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 2/8] iavf: free q_vectors before
> queues in iavf_disable_vf
> 
> From: Nicholas Nunley <nicholas.d.nunley@intel.com>
> 
> iavf_free_queues() clears adapter->num_active_queues, which
> iavf_free_q_vectors() relies on, so swap the order of these two function calls
> in iavf_disable_vf(). This resolves a panic encountered when the interface is
> disabled and then later brought up again after PF communication is restored.
> 
> Fixes: 65c7006f234c ("i40evf: assign num_active_queues inside
> i40evf_alloc_queues")
> Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
