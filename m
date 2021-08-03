Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 561493DF3C8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 19:18:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B19A0607E2;
	Tue,  3 Aug 2021 17:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMIrWWUsR73b; Tue,  3 Aug 2021 17:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E88A606AF;
	Tue,  3 Aug 2021 17:18:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5551E1BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 17:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 506FA83984
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 17:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JoTuKeGs7hbI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 17:18:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51EA18397F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 17:18:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="274794114"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="274794114"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 10:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="636676219"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 03 Aug 2021 10:18:11 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 10:18:11 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 10:18:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 3 Aug 2021 10:18:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 10:18:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LrRbV1c7edZ7EUKtdTb3/IAwcymkDO4VlGeYLNoX9Czts8fSpw40dRct1gcx1Es12XA8dRE9QtJ6Js3m6XlFI5OhFBXggrobkmX+ftIN++alNiVMl34R1PHt9yrYsOtlBxXzxzfZl+nJ+Wl3nCZKazqCTx88R+TBfoFpeOVK2SZxF7udoVFcZcNqJkE5bBJOtHlYXUU9zu8MvJmWN03Exdq7iVH3nWYvhURN8n1E7NLUTfuQtst8Q6BLjyr58aMA7AWBRTSur+WK+vqVQY4iHPmt5ci4hoObIEOUdf8hl/CeL1rGs3QMRvZGIZpXVwRzcQ4rnAtzGOhROHrdbfUM/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/JlK5UV/XCvDwNnuDRM6Z+Idxzoq5SoResqNmxvOKOQ=;
 b=heaAXZFJJINnqFwxEbJMQP8GKZTnz7IT/JVst7/abD4vFAEtT4lQteSoUAayua9XEKZJH1Jt3un61lfVbpKXLbPquiW4OaSWQQjVlb5wOv6KCD7vmOg/zyhpIWU6lkUfPRJ32ZJT6rHJEf1P/+bc3UJ0C6f5Jm0FJiZkUSFqZ8V1Vf3ERc70sbmk2oR+giRJY/yCkL157y9JNCgwSi3cFXsBTSVwbqoyoilPIdbktUaTAS3vZkOahJVQbpkJX3A713ZMGmPujHibsXWepbPe8Hmb+vQlNCUkIWbtDX/gS4XlWFaOa1tfvLa2mMeKIN+BCTHxvcfhf0SeK3AxSSn2Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/JlK5UV/XCvDwNnuDRM6Z+Idxzoq5SoResqNmxvOKOQ=;
 b=QeqGRXbyIepTlt+EyT83z68+U1bTaxQ0Tkp994x0d8id3W/GqVflCkv18nA5DoOBaVE9uFnv/zzT8uIm0viBLfkhUw97gUTPMWJchUK9/aBvNesme6C6LbeVHAoOryDCH+0mpkyLG1RFCFhJNWSlL6Issc+OoC2bL4Igsm5i8ZU=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4604.namprd11.prod.outlook.com (2603:10b6:303:2f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Tue, 3 Aug
 2021 17:18:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 17:18:06 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
 dependencies
Thread-Index: AQHXh68Y1owt0G/CUEakzTAdq+RvtqtgbT+AgAAzuICAADaFgIAAgzoAgACWAgCAAAU1AIAADOyAgAAEIGA=
Date: Tue, 3 Aug 2021 17:18:06 +0000
Message-ID: <CO1PR11MB50892EAF3C871F6934B85852D6F09@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
 <20210803155556.GD32663@hoboy.vegasvil.org>
 <20210803161434.GE32663@hoboy.vegasvil.org>
 <CAK8P3a2Wt9gnO4Ts_4Jw1+qpBj8HQc50jU2szjmR8MmZL9wrgQ@mail.gmail.com>
In-Reply-To: <CAK8P3a2Wt9gnO4Ts_4Jw1+qpBj8HQc50jU2szjmR8MmZL9wrgQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 156ebfbd-2388-4046-5abf-08d956a2a8d5
x-ms-traffictypediagnostic: MW3PR11MB4604:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4604F67AAEE16412C8EB25C6D6F09@MW3PR11MB4604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uRnfSCCTMf7EXvbs/1ecDLnuV69jmrPua7+XwVLn3g59MClVw3yvlQTYHu0QCOc2kQDqLD2rogS4mBMLQmmJRV7DoRs2GOpSTRCt1crvlgtxGFd7JhVWyPbMMpZM/CmvhP8/I/frEVp4rFr3rtOEZStd13uJLNAxLZR5jhChqkAtHZdYK7XURruXot9CM1tHPDKQ7q9LxRhYACBPv9YF48CBJ+gVBFrzybVTwLbWh0ZSk+KzZ0RZgNPA/2l+LHOnyLMHY5pz/4j8YU60AO50HOzth4SeCBQeZ8tsuudY/bahGnjnPcD4pkWsWCQ4lQk0tdLfskSznCcSdWR9+Uv3qxDzYF8brMzXUwMzqXPwD4DmEd2iq1Y3zfCpV47ccT0ikv0bxFxxaTGBY83vsWXeRJbtPaqkn4pEb8H5Ix/j20aM014w58O8mV99k2q6zpNt+kpUikYC6Gdpzschdib/Biou1tu5wLZNA8swMD+m4GmtAAXwsaqUp+6WrM3kVTLoR1h10Cl/sXxBTEsBsoM1Pmdgx4nFRz6LKlMdWp7hVaWZ3FudluHEgfXRJLIkM1M8UX0/PcWma4zhu+n0djI6Z/X9l/rdy6g/jcg98r+08cBk3I7v8jcc5xx5F97ybaG9IymzKPZtcG25f1hgZIHBDdta2osXVheXNWnW7t3wNzUYlmWtYrpjM9EQxEdwlPkcO9nM/Ebp5r62cD1oueJ8jg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(376002)(136003)(346002)(39860400002)(54906003)(55016002)(5660300002)(38070700005)(7416002)(33656002)(316002)(110136005)(86362001)(38100700002)(71200400001)(8676002)(122000001)(83380400001)(478600001)(53546011)(26005)(52536014)(186003)(9686003)(7696005)(76116006)(6506007)(2906002)(4326008)(66446008)(64756008)(66556008)(8936002)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVpBbkJkTEs5NGVHN0hZTGU0QytSYzJvRE9PcjRuK25XMW04ZkNNZmNiNGN5?=
 =?utf-8?B?ZWxJYnR2R3ZKUmhCUkoySldHT1kwdnpyci84bS9vUkJZa1NNQ0JQZVdPZzhL?=
 =?utf-8?B?SngrL3lpQ2hheDlibjloTWc0aUkrOVVRanJOQ0grMW1Hb0hKY2M4UjFxR2Yv?=
 =?utf-8?B?NngwZUtMQmlQUmIrYzEvVnJhQWRrNjZOQlVFZ3FVQjJjZVNKRWJBdGRvd3hI?=
 =?utf-8?B?KzF4UVVqNHJMZVlPNFBBdUF4OERRUVdOa3l4WEtCMWQ3SWZtTXlMcVNHMllE?=
 =?utf-8?B?cjVPTlJlUXhQYnRxQjJ2VTUwK3drY3ExeWhWYnhuRXRWdmRrK2pLNXArakhN?=
 =?utf-8?B?NEhZbXlpd1VEUitLM2RaOE5QUzdVRTRkaWJYREVYclR4VW9xWGVmelIyd2Nj?=
 =?utf-8?B?MlZNRFlVNFZsS3FWWnZnd0s5UkZZMVh4dGNPVktNQy9ieDZFSC9xRGVacjVk?=
 =?utf-8?B?VTNnMUk4K1pRZ3Z0bjlLQk1yUXE4Z1cwbkFMUWtKamVwM1hNUGJtUEMxdjhM?=
 =?utf-8?B?M0JXWngrUWM5ZUJ0UnN5LzN6TmY1Uk05S3Nrc3hJVHZHdlNoTS8zdTQ1SWM5?=
 =?utf-8?B?clRwOWxlS3Fwa0lmc0t0U3dGWitFaWpsaEFHL0FhTVBMMWVwOWozczFNM3R1?=
 =?utf-8?B?a216TG53TjFYVnFlTHZGcTQ0dGVKeU5ZdFlCbDFEUjhLd283TFd0VFNWNEhq?=
 =?utf-8?B?bVNCVWJEeW1PSDJBVEo2ajNQVkZzVUZkMTlIK0hTbEc4NDR0aWZSOVkvbFZN?=
 =?utf-8?B?NmdZNjMwTnVQL24xUW0zN0F0RHZHNUJHOUpGMnNWQ2Zjd1c0cUdsZHFjd2pY?=
 =?utf-8?B?elQxWUpuczkzUWNMVTlDNE90Ujc3MUFLc0VKcUs2Zmt2TkxzQnAvYktaV2NC?=
 =?utf-8?B?a3ZySGUwYmNGQWJLT0YxVWNCRUdZd3VGdjhlV0VqTGN0U3kwRHRwQSsyZTho?=
 =?utf-8?B?eFVTb040anVhMmwyZVJVaVJ4akF4c2g5TVhGRUNDV0o5YVd6bjgrM245bDVm?=
 =?utf-8?B?YkRJUzR1Z0UwQVlSZjEwdVNnaFVnSWRRSEtCVE1WZFpLZ0ViQWZoWGllSUN2?=
 =?utf-8?B?eUsxTzZHZXkrcXNXU2Z0TzhEd1NYdnAvbEFFSlJDQVF5dG5sNlBqYzFCUmlO?=
 =?utf-8?B?ZXZMWGI5bDMxSzV2NndGUjJLajY2Q1ZRWGs2dmQ2b3JSczlMMkczbzZVdmht?=
 =?utf-8?B?dGZjdzF5eWVRS0lSRTVBd0U2dTMramZ5QXMwdDlmU015M0JQWElEd1lNNXRt?=
 =?utf-8?B?Qlg4U0hzaXlDb3B6ZytnbWRGZHVvUXBNalYyVmtoWk1Wc1VSWHhSeUo1Z2dh?=
 =?utf-8?B?VVVvZ2E2NjZac3FsRnpVOUVzNHpwdVdyaVVJTUVXeEhFbnlycnNCVkZXbDJp?=
 =?utf-8?B?Q2RDeUszTUcrLzdUSG41aUR5N1RBUHF6Wm1XWTlJeThUekJlZUdmckt5WmRY?=
 =?utf-8?B?ZjhNQ1IwOU1vQWNrbW5TQkxWSlNxaHk0Zlh2KzlIMkthRlRsdWtza3htQmxF?=
 =?utf-8?B?VzBoK1N6bUZDdEhuK3RlTFpZekp5Nm1iYzFWVE1kdkNaeHZzeUNYd3VHSEZV?=
 =?utf-8?B?VUswalJXOHAxdXFwYThFUGEyandwcm5yYmpzR2VLalBjVE5hR0wxNTVmYVhr?=
 =?utf-8?B?VU1UQUtud29UZnMrUU8zUkg4V2g4cHFxRi9sb2w2RnhpNjlxbWQ0NGVOcDZy?=
 =?utf-8?B?ZUx2ek05TGwvV1NrMjNGYUo2a1FHcEUrMWpRVlBFZXBGcXhuN2NGa3hXWXFx?=
 =?utf-8?Q?VJx0nKGQjq0h2wMrCkqDoqEsrmAVGXJZojAN5ha?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 156ebfbd-2388-4046-5abf-08d956a2a8d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 17:18:06.5845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kk+h7YYMoQ+z4sRPYAO1Ey+7Q8AORgtzihd6j8/kO0GKxpee64YslBUzY/0LgNcPuO1hDu1MVsByQzysDtoPetWHdjLgRCAnxxKLp2npnC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jakub
 Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: Tuesday, August 03, 2021 10:01 AM
> To: Richard Cochran <richardcochran@gmail.com>
> Cc: Nicolas Pitre <nico@fluxnic.net>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Jakub
> Kicinski <kuba@kernel.org>; Arnd Bergmann <arnd@arndb.de>; Kurt
> Kanzenbach <kurt@linutronix.de>; Saleem, Shiraz <shiraz.saleem@intel.com>;
> Ertman, David M <david.m.ertman@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
> dependencies
> 
> On Tue, Aug 3, 2021 at 6:14 PM Richard Cochran <richardcochran@gmail.com>
> wrote:
> > On Tue, Aug 03, 2021 at 08:55:56AM -0700, Richard Cochran wrote:
> > > On Tue, Aug 03, 2021 at 08:59:02AM +0200, Arnd Bergmann wrote:
> > > > It may well be a lost cause, but a build fix is not the time to nail down
> > > > that decision. The fix I proposed (with the added
> MAY_USE_PTP_1588_CLOCK
> > > > symbol) is only two extra lines and leaves everything else working for the
> > > > moment.
> > >
> > > Well, then we'll have TWO ugly and incomprehensible Kconfig hacks,
> > > imply and MAY_USE.
> 
> I'm all in favor of removing imply elsewhere as well, but that needs much
> broader consensus than removing it from PTP_1588_CLOCK.
> 
> It has already crept into cryto/ and sound/soc/codecs/, and at least in
> the latter case it does seem to even make sense, so they are less
> likely to remove it.
> 
> > > Can't we fix this once and for all?
> > >
> > > Seriously, "imply" has been nothing but a major PITA since day one,
> > > and all to save 22 kb.  I can't think of another subsystem which
> > > tolerates so much pain for so little gain.
> >
> > Here is what I want to have, in accordance with the KISS principle:
> >
> > config PTP_1588_CLOCK
> >         bool "PTP clock support"
> >         select NET
> >         select POSIX_TIMERS
> >         select PPS
> >         select NET_PTP_CLASSIFY
> >
> > # driver variant 1:
> >
> > config ACME_MAC
> >         select PTP_1588_CLOCK
> >
> > # driver variant 2:
> >
> > config ACME_MAC
> >
> > config ACME_MAC_PTP
> >         depends on ACME_MAC
> >         select PTP_1588_CLOCK
> >
> > Hm?
> 
> Selecting a subsystem (NET, POSIX_TIMES, PPS, NET_PTP_CLASSIFY)
> from a device driver is the nightmare that 'imply' was meant to solve (but did
> not): this causes dependency loops, and unintended behavior where you
> end up accidentally enabling a lot more drivers than you actually need
> (when other symbols depend on the selected ones, and default to y).
> 
> If you turn all those 'select' lines into 'depends on', this will work, but it's
> not actually much different from what I'm suggesting. Maybe we can do it
> in two steps: first fix the build failure by replacing all the 'imply'
> statements
> with the correct dependencies, and then you send a patch on top that
> turns PPS and PTP_1588_CLOCK into bool options.
> 
>      Arnd

There is an alternative solution to fixing the imply keyword:

Make the drivers use it properly by *actually* conditionally enabling the feature only when IS_REACHABLE, i.e. fix ice so that it uses IS_REACHABLE instead of IS_ENABLED, and so that its stub implementation in ice_ptp.h actually just silently does nothing but returns 0 to tell the rest of the driver things are fine.

This would make it work correctly for users who want tinification, *and* it would make there be no strong dependency between anything, while still allowing optionally defaulting to yes.

That being said, I don't think saving 22kb is worth the chance to get things wrong (as we've seen).

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
