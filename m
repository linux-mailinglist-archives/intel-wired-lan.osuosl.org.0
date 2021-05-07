Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55295376D4A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 May 2021 01:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEF6F403D5;
	Fri,  7 May 2021 23:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGykWnE2ACoV; Fri,  7 May 2021 23:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD173403C3;
	Fri,  7 May 2021 23:35:49 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B9C51BF2A5
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 23:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74F57608F5
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 23:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZJZOMQHA_P-E for <intel-wired-lan@osuosl.org>;
 Fri,  7 May 2021 23:35:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B0D760885
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 23:35:42 +0000 (UTC)
IronPort-SDR: kP1KmjpIbyjk5dmB8nmXn9u2YOhLDIhtTA5WOqecbyPLPKkKlmdkcPNStrjDpgWgpWt15Y6dN5
 xCjYZNEWdEKg==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="196822466"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="196822466"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 16:35:38 -0700
IronPort-SDR: 4nsAN/zWFIQ1AcGFjDypCPTlQ80LtPocP/J7EeLO9ZR5D5ozRGOPvwJtdxwGQ/EguCOxQ7a5Nu
 a6h9UahJDgcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="390216134"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 07 May 2021 16:35:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 7 May 2021 16:35:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 7 May 2021 16:35:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 7 May 2021 16:35:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jW3QCcBAomfovJcKadsT7x46PDeEBLbrAxtBKj5gsUWcXbctKRZVZstOxiIRDXHQhXfUFXcm1WAKvkFiR5WqztblnXQUC4wd3hyHldi8UXpZg0dcSZyTLP4NI/iXjsb/Hk5n5rIzapOQS7JeW6v4s9auxqtbFxkAube4ikS6tsVU48TrkN0mXT6YnLaELE4SpwVPjMRE98w8bkpQLDPh4diFaGVJdbYpL5p2MzHx7jdQ0QzM8hToUTpk2E5209KUB+HLo5GI4rCAPnVVT8xFAyuNrltLjPC41rVKAsVHx+HjxmZne8gQi8AhlabD9yRrZ65zv5uk+VlmXtI3ERidJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ruu6IAzJAW1cXRFf307VZ7+KRZbdlhsbCSuwhY4YPmM=;
 b=LyOoKe1WdWzczsBVE6fEQA0dOYJWQs2GE8h/GApi1aryokKkh0ZJkpoNVk3/+uugSIdWH/JtQj+aw/B6F3yfdsl40QJ/BXmvz/NWiHBLwXA4ITlMglDGi+u/IjeMu7Y7+PyLgnApE05rTF/z4ArSsj61YYdu8ilTCfaDaEfdLaoENwzrFvU8ixG77ARoBtvNLI/jnAtr0iBCxEu+MkzvTvwogQrM+owGEBM4AumWmw9ojpVPYXwuxoO47FyzQNJzGeHQa0so/8CsBvFwj8k8sdd/3aHpHlPvawJRBIxMWjDvEVpcPsL0QgiT+dp+LuZuYkTboqIIepi/VoqHgYtrMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ruu6IAzJAW1cXRFf307VZ7+KRZbdlhsbCSuwhY4YPmM=;
 b=qrSIPkzSdPcAC2RPw2dU4jnCnj1ckqbr7E+6/Eli3YpLmod8O/RZSzrnlBQDSn9B9GDYdt28lPuCtbma6qRoUuCqUW3lP+wGK69afdMW8PAODi3tiEnxMzT5Ff9A0moTtDlRJHBX74vJnEiPNQcD+OZ7hlmfJoj+3/D82a7Pvmc=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5196.namprd11.prod.outlook.com (2603:10b6:806:119::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.24; Fri, 7 May
 2021 23:35:35 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4108.027; Fri, 7 May 2021
 23:35:35 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "asergeev@carbonrobotics.com" <asergeev@carbonrobotics.com>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] X710-T4L: 5Gb support for IEEE1588
Thread-Index: AQHXQwhgeXv/GPMMD0+aX8umJt3N/6rYSL8AgAA4XoCAACwrAA==
Date: Fri, 7 May 2021 23:35:34 +0000
Message-ID: <681c1aecdf283d8b70fb2ece8a1f0b17a55f5d93.camel@intel.com>
References: <CAAE-T7+Q__0ONDwzm89uufc6WKrmiCsUPvW_ARhVzaRwv93JFA@mail.gmail.com>
 <20210507103544.000047ed@intel.com>
 <CAAE-T7KPQ73PX0LkPPQPeb9Eaun33GbN9AWcyJ18jUXcGMUS3w@mail.gmail.com>
In-Reply-To: <CAAE-T7KPQ73PX0LkPPQPeb9Eaun33GbN9AWcyJ18jUXcGMUS3w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: carbonrobotics.com; dkim=none (message not signed)
 header.d=none;carbonrobotics.com; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca8a0684-e558-402a-55de-08d911b0cffb
x-ms-traffictypediagnostic: SA2PR11MB5196:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB51963800FD0990613BA6FA7FC6579@SA2PR11MB5196.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pfO0TNIDOKrjX3+yA60mtgKFIpTzAb5ODWoVWS+3JvFFpj0Bv7joK4aFNSH6ktjiZe8YsHLXbzrGSFG6q/+6dC+QWVNlE5lOD4LU9T/AOtulLW8sUWUFm+Xs8HMb20Jy76M7+RotmwTVlna56zMoxfSdzvJCpn5X0ZoUIyrBHaxefih/EfU988hwndOXBmVF3mKNHSy4bAceFdA8sJq/yn9b2TtkMXTDgiIEa/igQz56EZctAM7V8IeprRdiwnKQ91wnqC5UJcmFV/z7ChxWF6sEwjMZSzgNpntFHTxdfXbs8vHmxrYsfkidM7tEP56AfuPUjZvhitOCAAe22DzNKjqIM0h0zqzicY0epalzVrtizDrPXbA67WdzLOWhbK114UbDsjIKCaIVrN7eI7RDqJ97BVyHNOWTCniLfS6DDWpXaXtCZ0TNMVj0XgA3J2UEnXsE/CSDHG+Y/iCNTk8u+ZCANN3Piy2ZXsJACuwRdijmEUOVLK0nGWuOuoE5Jdcgv+yJSCXhvim0nZiWFKLoLlHKiirOEXaj3RW6F69Ag2LdQUF7eWoow6krtbDAZvxj0sOC9Jo4yb7Y8qlxwVY7K947yvecYK/TUlCFYSJ9LVfb/eonyGhN6JJxOABE4ayFovsxbPEysetB+hsznJ/AFddQnsoezIASuTlQ919SUejjxvjmO65SVTQqUpy9If1bgPpvvIPTwAtvOTmnHgQt5ya1j6ifc7lz/mvE1xMH9OA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(110136005)(6636002)(86362001)(36756003)(2906002)(26005)(8676002)(8936002)(478600001)(71200400001)(186003)(76116006)(91956017)(66476007)(66556008)(64756008)(66446008)(83380400001)(6512007)(6486002)(122000001)(66946007)(5660300002)(966005)(4326008)(2616005)(6506007)(53546011)(38100700002)(316002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?NFgzbTFUZlc3SUVuMVR0aTF5WlEwZVowa2R1RFNsdFpXVlh1Skw1azZXQnRK?=
 =?utf-8?B?VldSK0p2M0tzR0hKUGFqRmtXV3JOWkJwZFg5alhhN2E4bnhsYklYaHh3MUJU?=
 =?utf-8?B?VTNNQWYvL1pHd0pJaFplQ1NMdnpWZ296RWtyNTIvZmhlZUczYndLc0w3NlJj?=
 =?utf-8?B?M3ZoVkRFUzkrMEh5bFhlSnJhUnBrMXpyTSthWkQ5eVFRQlB0ZWlZdlVCZjJZ?=
 =?utf-8?B?YTlGckRMMWFwMWtPaExuY1o5TnFndG9jbjFBYVc5OG5SdWNkN21XNDNvMmk1?=
 =?utf-8?B?Wk9OM2JQRHIvclFtZWlrQWxaREN3R2g2bDVaK2NMVDluUGlLVXJ5R3NKTUZH?=
 =?utf-8?B?NDdhb2JpWFNSSWljbmZMRFFFWGFFZ2VFdnd2MEEyY0gwaDhhS2VSb1RTWERX?=
 =?utf-8?B?M1JmL0lEUmdEcWt6cXh2MUtGVEV5cFhvMHEzazUrUUFLU2JUVytNZnpqcmp3?=
 =?utf-8?B?OE1PRDRRL3U1aG9BVEh5NFRvUzhwY2tlM1VsM0wrcmprQzNJVHk5WnZ2YmNn?=
 =?utf-8?B?aTVCczVxQ2RYTWxrVWU0aU1aK081dWMwVjByNnZla2t6U01yYnRNSFdKeXNS?=
 =?utf-8?B?TlVxQU5URDU4bnJHV1pOTGJmVWhVM2F1eXh1ZVN5b2duT25xM1hCbWNRYWFo?=
 =?utf-8?B?S0Y0WlBiMmR1S3ZPc3JweXZlNmZNY216aUhuazg0SHM2RXAvaHFFL3BCVWFC?=
 =?utf-8?B?cnNIVVJ4eDVhZWlKdW9jV2dUcUQyS0JHMVk3ZDJSaVhCcCtXc1Q0UzRHMjBS?=
 =?utf-8?B?b2ROdlRGY3pORGpET3NrKzJ3aEVNZDBNRGxSOHo4VDhkREpoaUh1eWpPSkpn?=
 =?utf-8?B?MFVya2d2R1V2aERSQ3NOMGpvWEsvaGpOb0w4SjA4cWlZdjA3V3NoWUZpQVZZ?=
 =?utf-8?B?M1UzWkF3SjJibzI4MFptZnRPY1RPUGYxOEN2L0VFZXRWUmtxWU5lWjlrNnRs?=
 =?utf-8?B?eG1ldWRnVDVvMjZtaHFxWXZ3bDkvUGd0aDJQV1QwelhlTjdGNkVvbjdMWFIx?=
 =?utf-8?B?ZnBVNjFYK0dxRlAyUnl2dFArSEtuMXVQOElOQ3hFSkxLN0x4QkgrY3Z1Nms1?=
 =?utf-8?B?U2hSK1FpcUJHK2tXQVdPdExDbEF6QmJKRDRNWHZkNVpzZVlGaTJDbVdkNzE0?=
 =?utf-8?B?T3pZQ0xwZkswcytZd05vdXE4aXVlSnZTWExGNW8wUUJlWHFpR2IzUmd2M1RO?=
 =?utf-8?B?emNMVkMrQ21ucEJORm9aWTN6TFd5dVFLWHk0NW44U2UwTjc0TWdPb0E0ZWN2?=
 =?utf-8?B?dWxDSWs5U054L3QxMXVpYWFYZ25lMGZoejlaTmZLSnlyeGRMTmg3c09tZFAr?=
 =?utf-8?B?anZERnFueVl4QldWWTJwdVJJMWhRRmowaGFITW5SMEtPT3Nnb2ErZjFaQW1o?=
 =?utf-8?B?ZTkvcWVjS3VsOUpCa0tucVFuNGdpd0hxd1lLTU44MmtmUjUyejRucDcvSXky?=
 =?utf-8?B?TW9JdFJ1S0tZTE93RVAzTFJqR1Q4UWZ3SzFhcUo2VXY3b3RSR005S1FKbkJ3?=
 =?utf-8?B?UVJUVEhxamN6VVFGVDNXQlFlRGM3bzlLQld1TVBzM1ZiaUVUcFBWY3ArMWlP?=
 =?utf-8?B?ckg3dFU4c2RFQnFuNVFVQmNuQXpnZTNzTGU0aU43YmtueHJ4OXZQaVQ1c3Jn?=
 =?utf-8?B?OHFsQkZvaUZLYy9rQjJXTlhNTVFrdDN1Mys0eER6TGJlWUV3S3JBZjkzSWZk?=
 =?utf-8?B?dnpHOG15MjJsWlpTMVQ2VFZacmJsc1JnL01DR3JRSEdmVjRheS9yRVovOUh0?=
 =?utf-8?B?VGsvVWpkWXM4ZG45K1VCZU9Da2VHT1VudTZKSTBaMlRRZVBHdTRtMlR4QzJs?=
 =?utf-8?B?a2pPanp2QlR4MStTQUF3QT09?=
Content-ID: <DD4B522929B58C4E95DBEB50A63EAA63@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca8a0684-e558-402a-55de-08d911b0cffb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2021 23:35:34.9678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LRPRphMvCz71/KHcivm9aTrk3XwTbh7DNH85hHlgDZx9wiT+uq6gylpwm25z3ALPiV20KK9FeBmKXD+JYcVgwE3aYhXsxb6b2hGuDo/7nA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] X710-T4L: 5Gb support for IEEE1588
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-05-07 at 13:57 -0700, Alex Sergeev wrote:
> Thanks for quick response and the fix!
> 
> Would it be backported to standalone drivers, or previous kernel
> versions (e.g. 5.4), too?

When the patch is sent to netdev, I will add stable so that it will be
backported to applicable stable kernels.

Thanks,
Tony

> Thanks,
> Alex Sergeev
> 
> 
> On Fri, May 7, 2021 at 10:35 AM Jesse Brandeburg <
> jesse.brandeburg@intel.com> wrote:
> > Alex Sergeev wrote:
> > 
> > > Hello,
> > > 
> > > I got forwarded here by folks at e1000-devel@.
> > > 
> > > We have tried to use PTP with X710-T4L and 5Gb link, and
> > encountered
> > > clockcheck problem in phc2sys:
> > > 
> > > Apr 30 22:57:36 budtb phc2sys[5940]: [50.569] clockcheck: clock
> > jumped
> > > forward or running faster than expected!
> > > 
> > > After further code examination, it turned out that 5Gb case is
> > not handled
> > > in i40e_ptp.c
> > > 
> > > Here's the naive version of the patch that fixed the problem for
> > us:
> > > 
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > index f1f6fc3744e9..5747b652ee9e 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > @@ -12,12 +12,13 @@
> > >   *
> > >   * Much like the 82599, the update period is dependent upon the
> > link speed:
> > >   * At 40Gb link or no link, the period is 1.6ns.
> > > - * At 10Gb link, the period is multiplied by 2. (3.2ns)
> > > + * At 5Gb or 10Gb link, the period is multiplied by 2. (3.2ns)
> > >   * At 1Gb link, the period is multiplied by 20. (32ns)
> > >   * 1588 functionality is not supported at 100Mbps.
> > >   */
> > >  #define I40E_PTP_40GB_INCVAL 0x0199999999ULL
> > >  #define I40E_PTP_10GB_INCVAL_MULT 2
> > > +#define I40E_PTP_5GB_INCVAL_MULT    2
> > >  #define I40E_PTP_1GB_INCVAL_MULT 20
> > > 
> > >  #define I40E_PRTTSYN_CTL1_TSYNTYPE_V1
> > >  BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
> > > @@ -465,6 +466,9 @@ void i40e_ptp_set_increment(struct i40e_pf
> > *pf)
> > >   case I40E_LINK_SPEED_10GB:
> > >       mult = I40E_PTP_10GB_INCVAL_MULT;
> > >       break;
> > > + case I40E_LINK_SPEED_5GB:
> > > +     mult = I40E_PTP_5GB_INCVAL_MULT;
> > > +     break;
> > >   case I40E_LINK_SPEED_1GB:
> > >       mult = I40E_PTP_1GB_INCVAL_MULT;
> > >       break;
> > > 
> > > What's the process to get it applied upstream?
> > 
> > Hi Alex, that's totally a bug, I've filed an internal bug and we'll
> > be
> > providing a patch for this problem shortly.
> > 
> > We'll be sure to credit you for the work to find the bug and
> > proposal
> > for the fix!
> > 
> > If you wish to have the patch be authored by you, you're welcome to
> > resend to this list with a correctly formatted git patch from
> > git-format-patch and git-send-email. If you do nothing, we'll just
> > take
> > care of it. :-)
> > 
> > Thanks for the report and the fix!
> > Jesse
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
