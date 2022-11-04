Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A696192B2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 09:28:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF632418C0;
	Fri,  4 Nov 2022 08:28:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF632418C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667550504;
	bh=ayl2vZz+eSiRdrVfLiTCpLYt+kcfYiLFxE4k1fBc+P8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3RSfcKMVWQw6wNnd6qz0eVViklNmbDqXqqx+wLhl3s5P+s6GxrjnQVy8T6mI+v4kA
	 +sNt4clEcJ7Q192UDafiF+oRRX061kL62uzLPu+j1hNlGxofcOm9QKLdvTPx1JLyBI
	 pm5iEv+yjZxZJTw3NU1qN5Fvl5ut1dWE3Z0WFKdt6+jlsUSHWxrFBMTVeV/B7GTrNw
	 C638W6PW0HZEDDshHBjXj5RJp1Eb8C9aIuneScYYJObdLHIs1trFNyzhsAq0yC28eR
	 Gn5wSyjgyYDoRxfKa1PsWQjBWfInpxEdRqEYe9C//ezDYE40BuJC+4EVLWgkLR630r
	 48HCk5dLiPtxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id czofZsL8sXNV; Fri,  4 Nov 2022 08:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6536B418A9;
	Fri,  4 Nov 2022 08:28:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6536B418A9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5782B1BF2AB
 for <intel-wired-lan@osuosl.org>; Fri,  4 Nov 2022 08:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 360D7418AB
 for <intel-wired-lan@osuosl.org>; Fri,  4 Nov 2022 08:28:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 360D7418AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jc9zY_urI6u9 for <intel-wired-lan@osuosl.org>;
 Fri,  4 Nov 2022 08:28:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15AF5418A7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15AF5418A7
 for <intel-wired-lan@osuosl.org>; Fri,  4 Nov 2022 08:28:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="336615624"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="336615624"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 01:28:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="964265343"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="964265343"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 04 Nov 2022 01:28:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 01:28:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 01:28:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 01:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpDKVFjyfHT8CyOSJSHwdbpLRQqr8nTiwZ5npwtLnvYrcMloTPqOXtzok1/Xsgpc1XjpqA2ftDnMQJXwUdZgJwk35spreZVpTCR/NG7G5WKVTvaBIbXzQkqt8JggZmKR/E5RTIPQ3CEULJONhj6bPLQVSuGB6Tr2v3lfO77yh6V/NjOO/E5tgcJIHyV5CRQMph1CbQMG23LyxJJTAu2x3B+6y5t1KEdJ0JvgRYcrPNSBDZD/V43VDyO6TRYm3T9acjHXexB+l6xJ41V0QDM9yUksaVa24rfaNnlecrwcBoh6I+Ym4BSlInyD7WsS+msO7F6nSSABA2yFWSI5sySxXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/AB/0Wzp5mk+8YHuIkswqT1wvT784RkZmiKUxMUAdus=;
 b=Y1yxzPxpbfTT4K5rBHf/ts2ZVVSyhS+s98BYwpBSfaI3UNC1V+QbrlXskOfKz9VVZxaaN5YZO8GMbqKiCGcvZwuZt2wJu2w+CxrFtZQufdUTm37akhaL1w5cCZviI1o99eIMwDMA5+byE4b1t+Z5zXjeZY5JbX/XlM+E9Ez1ThCKJvaDyXuBcvfRKfDDhJ0XySR662V7QbOXs7faNwXHArIab+LyuzEff+xgKmR2SN8r+RhJ3a9ILhwdfJNxF/kKoziOmwTCAlHOG3Q5Ly9qV/r07eNUdDR5pAAPiksGH/6sRGtxEETy3cfeDE3eSDeDGoNw/75lAOLo4LmnpsQ+lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH8PR11MB7045.namprd11.prod.outlook.com (2603:10b6:510:217::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 08:28:01 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5%3]) with mapi id 15.20.5769.019; Fri, 4 Nov 2022
 08:28:01 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH 2/5] igc: remove I226 Qbv BaseTime restriction
Thread-Index: AQHY7BvRqOa0Niv3NE+krqtyGdslOK4ti0MAgADnRpA=
Date: Fri, 4 Nov 2022 08:28:00 +0000
Message-ID: <SJ1PR11MB61809065F99A8703B4E17D95B83B9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
 <20221030045324.25207-3-muhammad.husaini.zulkifli@intel.com>
 <f4ab8643-483b-665c-3ae0-62ed3ff97497@intel.com>
In-Reply-To: <f4ab8643-483b-665c-3ae0-62ed3ff97497@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH8PR11MB7045:EE_
x-ms-office365-filtering-correlation-id: 1e016b22-a981-49b3-d314-08dabe3e7c5a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z34bPkP1RcMXY7C+OU/VEXNoKJ2n2WLSDExgR6+TPY5O+FC3NAgSnNgwqdWw2QYf2Urji8NfK+jVN8/njdO4Q1/6yluAsHVJuJZXivAtvtUoeBegBTyEFwc0U1m77l8CP1noWuEGXvJ0s3X2EVKTgK1U5qP1qiTeb5WJ94U1+9SQrEP7r3SIvqF84Ht2VnnqoiVSoZe+YQU9ouieY8qhkNYSwGAU2xbiOXdAy8cWjSAc861nma3BP89ac+T7TZECbK92BdqsKHLLppSVyd4PJ7U3luQMbr3x3bHY5mFnKAJ2ZaWPgjh9cc1hpXUdu9OJ2J57UQ632O8NVDGkvkS7sShs2CJ2QMVCjGPGVjFzBv5KKng9TF04+8JxAR/YOljCK7IzfW+VN+IAyjvK+hEXjDQx6HCWAKh0w/2g60s4a+wDkm1JKoiImrVaG5OGpJ7JjodKkL0i5W28pDsgBd6ej3Ynzuj0gfScvKfYSufS5r1/My6NhHzsNkkHZWcMQ67fdtgeFqYuRljdCIXPjRta7P4DWvnl7djoSU/457SfW1Brm0tUf6grNu4AbkQBPXD63ZdkSd8ZBwGuKAJyGEi0jygMZaOEMZLp66kaLCSEvZ6R5cIM1qOHr2oJkUZKY8kwOJRc0c14dGMoBMaPqsiw//MRtVNehXPusmYBuHX21o5nC7CHHs4m6CX9h6pF5U45eJW6lKa0NQxwLjS/eK/eosqcrzPVL9SdrPOLf+7SOEfbpZnCLEf80V6uuOE0jA8mwxqTHK4YsATKKFS+nj+1gQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199015)(86362001)(33656002)(38070700005)(122000001)(82960400001)(38100700002)(2906002)(83380400001)(9686003)(186003)(53546011)(6506007)(7696005)(26005)(64756008)(8676002)(4326008)(41300700001)(66556008)(110136005)(54906003)(316002)(66476007)(66446008)(76116006)(478600001)(55016003)(52536014)(8936002)(71200400001)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YkQ5bE9DVXZUb0c1TzAzOEg0L0tpYWgyVVQ1MStUa3FuMmFHeGpCMnF4Q1kx?=
 =?utf-8?B?c0V4YTVjdUFkbDhTQlNzZDZVd09VbmlWWndCVDRuUXpwdjNEVGNkTDNhNFd2?=
 =?utf-8?B?SlV5SDhNd2Q2TzJSbU4yZHRMT2FkU0I0Ym1hTmY0TEh4TnBkVHFkRlVyMkFu?=
 =?utf-8?B?bVI1YUdtNWRyMEFsWlV4WGRPVGNPbExtbkNjWjYwQXViLzkrQUhLVVh4YmtZ?=
 =?utf-8?B?UVh0UExWdHQzTjZXVFJTZEl4RHpzYWlzSHNFOFZ2ZmVvQXB5VGcyaVR3VkhI?=
 =?utf-8?B?VlA2WjVjbm9YNmhNNTE5MUY0UWkwU3dBRTZSeUUyTVhGSDFJd0gvS0pHUnlr?=
 =?utf-8?B?RFdSR0w3cE91YTdGZ29MbTIrcG5sS0UwUEllL0EwOHAwNWYrcmZ2enl4K05y?=
 =?utf-8?B?bXJlN2M3SzNaWFpwWHZ5d0g4NXdXR1pRa3g5OHo5U1N4dEt3RGYzL1Q3U3JI?=
 =?utf-8?B?bWVNR0hidFE2NUh1eWFia3lnR21OamRtdWxOYWZDRGRyemExNXpUNmZubjM0?=
 =?utf-8?B?Y2hXTVhLVXhGKzVOdVlna1plRGJQcnN1am8xN0VzR01Mc2ZERzJsLzJJZDJu?=
 =?utf-8?B?aUVSRG9RaXRNY2hOOFlkNnVicG4rSmNqRXNWdHRYT2pMeEJKN3A1OXR5NGRQ?=
 =?utf-8?B?Wk9JSXlvakFYMmIxY0RFVVcvS05qR3BBV09yYU5MdjhrY3daMVZBTUZNb29B?=
 =?utf-8?B?SEp4cVRzSGZ5bXRQc2sxdDhROVBrbUprOU5mWkUrdHdRQndoQnl5dHIwUHJj?=
 =?utf-8?B?WEpOVUJSeDR4SUpTcmRDSFZ5Y0JHcDNEdzl4aUlHUTlxdGh1ajJkU3hEaDEr?=
 =?utf-8?B?M1pUZ29EWHhzWU9uRUJoUStOOVFTc1Nnd1l0K0h1ZWtxa3FndC9pamN5bUt3?=
 =?utf-8?B?aWZjdzNpQVhYNlF2L2V0VHdiK2tnQ2VpYXZ3b09WNzRFajBFQmZ2Vm50ZnRC?=
 =?utf-8?B?a0wrT3V2UG11aFVGb1hIeXFQOTFJS2FwSWpKaEYwR0RTRzd0SlBBWTJrSnlN?=
 =?utf-8?B?Q2htamFzRUs3RmZ5Um9QTmhsTlVoOFhPajM2eXhvRHErRyt5RGkxRCsvbktM?=
 =?utf-8?B?MWx5b2Jhc0E2b2FNUTlDbGlQcjFLbWVPNGVDNWtCZ0VITTJjQk5KMUJwbXlF?=
 =?utf-8?B?UFZBbUd0Y2FheEZRNEQycFFKUllsRXNjTVZzTjJ1cU02VWYyUGlQREFJaGlP?=
 =?utf-8?B?Uk5oWXAyaFAyRDllMUZCVmdyRm5sR1JqWjM1b3hyVlNpQVk0QjFaNW1RM3VK?=
 =?utf-8?B?OEYrdVRHbDhXUGhUYkc4aXJYd1JGcktxdTdPT2daY3Rsak5zUFcrSDJpSXBJ?=
 =?utf-8?B?TDBhOWZCbzYzbkZoVDgvNnhrT3M0T3NRY0JnVUFFd0lJblFpQUZNRmwyeGZR?=
 =?utf-8?B?a0EvV3E1WEFFS0djTElGUEZZVUQwSzFqbHVKdnM2REdma0lxbkVHRW4zUXZW?=
 =?utf-8?B?OTU5UDdROHdmd25UbE9GMVlaamZTQlNSM3ZIanJDU0lXTHNZUGdtRzg5VWIy?=
 =?utf-8?B?dEZBUms5cnJhQVRNMnN1QnRCMTJkVllDZi9NUVIrRWlTd1cycGw1VzNrdG9S?=
 =?utf-8?B?aEhFWE9VZDU0S2dQWm14QlpFMG9yTTB6dFZRc3BIOUJkM243TkZkM1J1MVVh?=
 =?utf-8?B?Ymw1T1lBWWQySXRzQVY2UDIvVzBUNFZ5T1VkYjVqN0FDSDZONzNLQlZ5WDg5?=
 =?utf-8?B?RitXbms5N3MyRUJEWUxkdU40SlQxZDNYa000UWRuQmNLbkR6ejRHZGVtc3lk?=
 =?utf-8?B?dDcrZ3dVZWVIVmpHY2NYSVVhMWVXRnh2MEJHRWpmczdzY1ZobFZ2THZna01D?=
 =?utf-8?B?aitUNUs1UUkraW1qeW5IQkt4MytIVE9iTkJoM1lELzF4NXRGRVh5aFNEUFFW?=
 =?utf-8?B?Y3BLTWl6ZWQ2Y3JkZkhEcG44aDZNZlR5V0l0ZGtocjljSjdVdjRjK1BEK1di?=
 =?utf-8?B?QlNSdHZhWFduNDd2K3VWallha09BMkNiN0p3TmZPVEZpYWd6eFluRXJZMVpN?=
 =?utf-8?B?NVRxKzllektnbWF5SExMTlV3cXNLNDFodkllUm5lc082WVczQ1NsN0wxaHN6?=
 =?utf-8?B?eUgwS0d5RE9yb2ZZZTU5eVRKdHdBNDJPeEdOWm1YNUN0NnRrUXZ1cWVOVXNk?=
 =?utf-8?B?RWNYWklscWhJTkRTR3kyd1lQQWhNdVFvZXM0SlVuOHRueFIxVGhHbGhhN0R1?=
 =?utf-8?Q?kdW7pnooFk0MlSfOZhiT8wc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e016b22-a981-49b3-d314-08dabe3e7c5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2022 08:28:00.9767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f3PaTIIhlS5B1RqnxCG2Hv6xdg9SBZNe77JB9QwnE2uUPpKLMMPSwClMt4cXrYK5p4oNm4HBR5XR128BOhAIzNWh8mlyY/KZUJkCnsPIxA8YxeeCFoXvFBk8FI8cGhrb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7045
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667550497; x=1699086497;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/AB/0Wzp5mk+8YHuIkswqT1wvT784RkZmiKUxMUAdus=;
 b=kgbLp6ZlNgx27keM4gZgLKQCgIaPfsjz2YlEONoRpAyMUF5pdZ/iTwMm
 2wqJATgSCaHhhb/afiCUeOs/Jc7WUSX2qVLWd9C5RYhRv9m7LP580tDE4
 elyJNNsR4bhcOUv3KtMLebSiMC7fktp8IglZFEddxlmCZ759IDGCn7N7O
 b+1nXE7jX3p3KEPM3oHjrRUKVWpHNbVJxurvESqk/JIXgFYUZ+Sxs0n0K
 b6ht9F8QYRG16gqf4HKj4xVyATzHqWE+sDXHxyZkuaH5hquA2rRykYq4u
 gZN4+eyd/EbRmyYZWbrzvnEDIBeU9RXfkrIUvdnlEdlTl8COy5jYi1b/6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kgbLp6Zl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/5] igc: remove I226 Qbv BaseTime
 restriction
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

Thanks for you review. Replied inline

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, 4 November, 2022 2:26 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: Gomes, Vinicius <vinicius.gomes@intel.com>;
> tee.min.tan@linux.intel.com
> Subject: Re: [PATCH 2/5] igc: remove I226 Qbv BaseTime restriction
> 
> On 10/29/2022 9:53 PM, Muhammad Husaini Zulkifli wrote:
> > Remove the Qbv BaseTime restriction for I226 so that the BaseTime can
> > be scheduled to the future time. A new register bit of Tx Qav Control
> > (Bit-7: FutScdDis) was introduced to allow I226 scheduling future time
> > as Qbv BaseTime and not having the Tx hang timeout issue.
> >
> > Besides, according to datasheet section 7.5.2.9.3.3, FutScdDis bit has
> > to be configured first before the cycle time and base time.
> >
> > Indeed the FutScdDis bit is only active on re-configuration, thus we
> > have to set the BASET_L to zero and then only set it to the desired value.
> >
> > Please also note that the Qbv configuration flow is moved around based
> > on the Qbv programming guideline that is documented in the latest
> datasheet.
> >
> > Co-Developed-by : Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> Nit: no space after the -by i.e. 'Co-Developed-by:'
> However, if this doesn't need a revision outside of this, I'll fix it up myself.
> 
> > Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> 
> <snip>
> 
> > @@ -240,21 +232,43 @@ static int igc_tsn_enable_offload(struct
> igc_adapter *adapter)
> >   		wr32(IGC_TXQCTL(i), txqctl);
> >   	}
> >
> > +	tqavctrl = rd32(IGC_TQAVCTRL);
> > +	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
> > +IGC_TQAVCTRL_ENHANCED_QAV;
> > +
> > +	cycle = adapter->cycle_time;
> > +	base_time = adapter->base_time;
> > +
> >   	nsec = rd32(IGC_SYSTIML);
> >   	sec = rd32(IGC_SYSTIMH);
> >
> >   	systim = ktime_set(sec, nsec);
> > -
> >   	if (ktime_compare(systim, base_time) > 0) {
> > -		s64 n;
> > +		s64 n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
> >
> > -		n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
> >   		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
> > +	} else {
> > +		/* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
> > +		 * has to be configured before the cycle time and base time.
> > +		 */
> > +		if (igc_is_device_id_i226(hw))
> > +			tqavctrl |= IGC_TQAVCTRL_FUTSCDDIS;
> >   	}
> >
> > -	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
> > +	wr32(IGC_TQAVCTRL, tqavctrl);
> > +
> > +	wr32(IGC_QBVCYCLET_S, cycle);
> > +	wr32(IGC_QBVCYCLET, cycle);
> >
> > +	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
> >   	wr32(IGC_BASET_H, baset_h);
> > +
> > +	/* In i226, Future base time is only supported when FutScdDis bit
> > +	 * is enabled and only active for re-configuration.
> > +	 * In this case, initialize the base time with zero to create
> > +	 * "re-configuration" scenario then only set the desired base time.
> > +	 */
> > +	if (tqavctrl & IGC_TQAVCTRL_FUTSCDDIS)
> > +		wr32(IGC_BASET_L, 0);
> >   	wr32(IGC_BASET_L, baset_l);
> 
> Do you need to flush the registers?

Yes. TQAVCTRL[7] (FutScdDis) is only active on re-configuration instead of
first time configuration. The BASET_L must be set to zero in order to make the 
initial configuration effective before the FutScdDis bit to actually function to
allow for the configuration of the Future base time. This has been confirmed by
Hardware Team.

> 
> >   	return 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
