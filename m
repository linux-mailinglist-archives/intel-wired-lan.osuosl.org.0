Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E1646BD87
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 15:23:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E22F41C0F;
	Tue,  7 Dec 2021 14:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHz-q5f81jJq; Tue,  7 Dec 2021 14:23:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 391D3409B5;
	Tue,  7 Dec 2021 14:23:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B21C1BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49BCE60E76
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ETXcIssU-9B for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 14:23:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB677606E2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:23:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="237525857"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="237525857"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 06:23:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="461274823"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2021 06:23:25 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 06:23:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 06:23:25 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 06:23:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lf1TEBbJVbobtDCHrWkCJuFYhuxHujjJZpfw/XmV7KfFaoEKmlCaMEB0s/L8dUBX8WWZBevmPtteL3Zmxz1DmQzJmplqMAv35WyL3zSuY71Vh2d5EUHsTAaOz8LIcPvSXr1ZjgxNSqMGuNB7Dwh38huUgL9e+8SJimveFOYwG1zTHtBBH6wWz15Nhi1KHmLZjxJHoSG+KYi8wx2pahbPOodJp3aQbsICnmfpRGoTIaPtlvUXYxes1s3X+Sfq56gx/o5fVrXwV0qYY9mdTKkQQxLnMwD9u8Fd+yEDKLqHD8YwVnFMlpo9ayQPkW0dUSeyAUbYs04Cj4IDV6gC8RPpvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vS+2oEyR8bcpowEHWrcmLjxsxpzvG6UQr9v5p5K8dg4=;
 b=KPDSJMvQeGU/OPZp82BsfslG/0juocj4uUcdWtA8aDLdXHpY4o4I4Lv+Ir2sTSQon+7JXj0LmxwPVx4cVPiLWV+kcFFR/gjh5I+x/XxjoqrGlJZEink+MGBKiyvWGztj2GPyYHKiJorUostNQErKx8LtEyCYHwh/Y4dya7GuM/kjZDcMiNVUWJvHpntBv+Tk1VQjQmznD2oGIGW/xW8aabhB61i5j/gIJ+ykoXpLqSxfR37lIxo7/GWhJLHcBSw2CrPZKs4BEr5kjOZ8dGKbnlj3Nbe+BF7BJnLgDqTQUkqy1GV2J82vLZAUngtMaxOald2S/CHBkWSQk6E08eC2Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vS+2oEyR8bcpowEHWrcmLjxsxpzvG6UQr9v5p5K8dg4=;
 b=RuR7/PLbjlRSYJIRqdI1ShIPZV1G6p/dJq/b2/ETEUEKycalFe94vmQDRsMucxIg5/DclrYdBlfFB5Tiii67ucpPo11TFMYfqzbtT4lfVdvbwPXJJZ5AGK14dSEa561ipxvFYETP26J71dk5P96xXVPSYQtG19ehjvlxqaiQsZw=
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by MN2PR11MB3870.namprd11.prod.outlook.com (2603:10b6:208:152::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 7 Dec
 2021 14:23:17 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::691f:ee71:89a8:e83f]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::691f:ee71:89a8:e83f%9]) with mapi id 15.20.4734.024; Tue, 7 Dec 2021
 14:23:17 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix for displaying
 message regarding NVM version
Thread-Index: AQHX624Oz5Gt6YuY4Um4ekY4iga9x6wnBoMAgAAOO3A=
Date: Tue, 7 Dec 2021 14:23:17 +0000
Message-ID: <BL1PR11MB52886124AEE0A8C9E6679731876E9@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20211207132525.26458-1-mateusz.palczewski@intel.com>
 <8e8f07cb-899a-b184-78ed-323d3b436b11@molgen.mpg.de>
In-Reply-To: <8e8f07cb-899a-b184-78ed-323d3b436b11@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 448f3eb2-ed94-4366-1e11-08d9b98d1d18
x-ms-traffictypediagnostic: MN2PR11MB3870:EE_
x-microsoft-antispam-prvs: <MN2PR11MB38701E5D5D30A78A74BFDF0A876E9@MN2PR11MB3870.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fPsdDVsqf7lRQmky1aoEOxr65cLBDcpVLNTPtoBkyt+6/G3QRM5HQU13h1vLFAYwEWuA4UU5bDZL1k8pe7jh3dUHJ82vM9bDYIjn3+Gr7BqTBV/QE/Y886Sa0owirWAFye7afXTF0NQc4t5p4/YqPo1S0TpaCFI3jF3v1USspM7s1b9oM+W9DlQ7iS1gopS1G7yS/JbfR7BEaSVKdIdqiCkie3wXOZA5lHuoagpGHFYJdp+B0pxeSoMDxV9nBIwiWFLdhsqX4RUSEcL1t0pu2fqd2BPTR5rKCrs+cf5G3dARb0DdQIcr+wQbq6IyCkKuAPvRJqeerRcIA78YvzbUju/OvOCJsbYLUERC7ISGlOcSQ5PDXSVkLgVAqt129c1JCnJn0Yzeg3Ew37KsUtqd1pV4Dh1TMb0DaBVEevW1OBTi0BidcZBcX/IneQdPNrPwWcrM9vfeRiNaCI1XqSS67DORtgnIXGeaV2d2WXa+T8ULaog3uVe6kal5Roh1cxfbPF31yJPuh3D0Lb01G7jhOeGd3NzW2YtO0cF8cV1Onda0IiW/l4WoT/s2/Q0YSH/Jix8OhaGlipbuqd+En+Tl8Z5QgXU6wHl816NauGFkPG/mjxlcKB5rhiunXZoDr/7w4x9iGDk+UKolgvwH1KiVbTEmpQEgEeSOv74Vj+3goiK38bYi9Q9mvuPW2zBfjeeR2RwmYkbXhe5re1+L+dyZZg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(52536014)(33656002)(38100700002)(122000001)(7696005)(83380400001)(66446008)(64756008)(76116006)(66476007)(6506007)(82960400001)(8676002)(55016003)(6916009)(9686003)(508600001)(66556008)(5660300002)(316002)(71200400001)(2906002)(38070700005)(8936002)(26005)(15650500001)(86362001)(4326008)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlUrcERXVXA4TEpTM3hzUVZ1TDJydzgyWVFyZHZoUm5DRjhXVlJHYlA3R2Vw?=
 =?utf-8?B?dGhQNXRIQmxxV0hpNU9Wa3RrYWVIaGliTnVIellMVHl1ZHE0c0pHYXcxcTk4?=
 =?utf-8?B?VjVhS2x1OWNjWWdpN3F0L3U5ckVmR1RUSFA5RTFLTjEzWkdDZUw3R1ZBbmJF?=
 =?utf-8?B?alNpaDhhelZOMlhneDZvbHc5aHFxZUpYTEVteTMrcFhCZlRORmVVdzlqeWZq?=
 =?utf-8?B?MFBjNnppc2FGMXIxTFJzc0lCNVN6MFFkc05OaWUzaEVtN2N3V09WZzRwZ1Iv?=
 =?utf-8?B?SUJGOGxlUld1ZEt0YVpJREZJRUlCZ1pLcUZ3NHBkK3RWNjk5eGtRdlZEQVEr?=
 =?utf-8?B?UTY3MHpJTjJCUkNKUytTSThkVlhRYURwN0ZHKytpRFlEeFRLTjJXQjdGQ1dY?=
 =?utf-8?B?bXRSU3JTL2tZTjlmdmJicTF5WXd5czRnb014Y1d1eGU3NTZWdGU1Z0lEeldP?=
 =?utf-8?B?ME82SlhuVVJvNkFGSW5LUkpIYVRHeTF1VVFXTjlWQWZRemZUaHZQQ2Z6WnZi?=
 =?utf-8?B?Z3k2MmJiRGtGdkwvUDhCaEI1RTlSb2dQVmVRUFhhYVBTRkxpNlZmMlZGUUVX?=
 =?utf-8?B?WnJIV0lQWGs3UGhvUSt3a0FCSXhTcXd3Zjl1WUJVZWtCK0xTem1BWVlreVVF?=
 =?utf-8?B?VG1YUmI5L1lTdmM2Sk9zVWY0NnJ1c0tOcUlrN2MxbTFtV3VkS2hqajUrK3Mz?=
 =?utf-8?B?SHdyMVYxcUtBcVBXRXZER0tONVhiRTZhSnJyUWxLSjRGVXFXNm5JYS95VTRh?=
 =?utf-8?B?cGRYMk82RjdrZVJuQlY3K1lnM3phR20xaFdwRTFmRkJuL1VDOFd4cU1CWlEv?=
 =?utf-8?B?V0U3Kzg3SmFLTC9FMWVudDBsMWo1YUVTT1d2RGdUaVdsRkZoUnhUNnRWalQ5?=
 =?utf-8?B?TXdjeGtad1ZzUzFZWm1mb0N2YnlpQ1dvVGtac2VFSUFVako2cGFNR1kyR3A3?=
 =?utf-8?B?aUZ0d0JwejZyc1paKzBHUWt6SW4rNm1KNEpsQmRjQ3B2SWNtTjlZak84ZU9Q?=
 =?utf-8?B?R3JYMTBNMDBiaDVWWHJtalg3RlNpK2dWekEvb1l6a0g0MENuUjVKZ3hCbmU5?=
 =?utf-8?B?SGNnVnRGaU10WXluWldxcG9FQTlKd0JpRUVJeEZzYkxjejU0aXdtY1cwL0Uy?=
 =?utf-8?B?aVpyVEVYQXYwWHdXcXZxeFNsQjdZUit3U0xIZ3JyTHMvSlYvdFlmUFBSWjRD?=
 =?utf-8?B?L1cxM1FIL21RZDZ6emE5T09ub280RHB4TkQwditOK2ZCMlF0OXJYRU5HVEhU?=
 =?utf-8?B?eWhCdmZBYi9aK282ZlE2MUNlUzl1MURWMCtUMWF0Y3BKcW9pc2ZpM0VQK29w?=
 =?utf-8?B?QkhWaVUxeS9HMUU0UXdmSzRCSUx4R3FNeElOT2VYRmhmU3lGSE1FU2hEWjJK?=
 =?utf-8?B?UjFEQVZ5dXkxRTgva0tvTTVLYi8zemZjUHREOTBFRVJMWXpaVjZMTmdHUmtF?=
 =?utf-8?B?cVpqajB3dUpLNExTWTlZcXJpQytLb0YxR1kwbGFIcHA0dG9IZXNhd2ZCUEJF?=
 =?utf-8?B?c3lFZFBlQkxPemR1bXU4M2lWNS9XazR3RExGQ3pJa05FcWR1TW1CNllPQ01T?=
 =?utf-8?B?dU9nUTg1VnhJTG9jVUFKWFRNREdSQlZnZUFPNmVNY0RBT3JWZUdJU2p3VkFM?=
 =?utf-8?B?ekNNcWlIVm5ZSmtqYjV3Rm80RFdWN3JTWkYvWVNSSjk1cGJkQXRyUm5JdDly?=
 =?utf-8?B?NXhNVW9ETUloODE3S0tNREQ1QTl6eCtmQkpOTG52RlZpQndrOXpwZXlJR08v?=
 =?utf-8?B?WHRJUTg5QVVGcThKdktieTIvMjlzWVFzVUNJR0hpSVdXYUlTN1ZLNHh5VHJo?=
 =?utf-8?B?RTJ5eTVTL3dRL2prSWNoQ3NmVTFxZWF6TWZ4WG5aeDRybGpreTdVLzFCQ1hJ?=
 =?utf-8?B?VFJrdXplWTNKc0N4T2VMbC9XUGY3OHVXQ3NHZnc2alppeEFadzAxd3AzRDhs?=
 =?utf-8?B?VzJnQWpKb3RvKzhNODNmdWZibkcxTWpGMzhONTVCMzVCY0grQXYzZDRLL2t0?=
 =?utf-8?B?VVd3c0lucDhiNU53UTJwWVpCM1RvNWRoNUprL2J3RlEydXlnKzhzMXJvU1Rw?=
 =?utf-8?B?Y1k0Mk5meCt1a240SWtURWdjZGlMYmdNcGx0NXdsb1E5aXE3RVZRRXNwb3p0?=
 =?utf-8?B?VktmT3dDalNmSXViRlREKzd6ZEJyM2F5VERBS3BUVTcvNDFEUzVseFJOa3ln?=
 =?utf-8?B?QnpjSkYvYStaLzA0dDQwcXNWNGRYV0JPM3cwMGZtbFhabXBoNEMycW50eFdz?=
 =?utf-8?B?RHdEYTRxQ3NQaFdpbi85VmpNaUpBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 448f3eb2-ed94-4366-1e11-08d9b98d1d18
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 14:23:17.8476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C0yKOpTIrE5W9jvliAZDaSdzKOQCxkV/bB8vRQ/oLiilLYtyFSg9CybkBly1T5eLYbkrA6A1lqamDfzUr6o/wlprFcpN++Zpkd8x51CK5kY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3870
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix for displaying
 message regarding NVM version
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXVsLA0KDQo+RGVhciBNYXRldXN6LA0KPg0KPg0KPkFtIDA3LjEyLjIxIHVtIDE0OjI1
IHNjaHJpZWIgTWF0ZXVzeiBQYWxjemV3c2tpOg0KPj4gV2hlbiBsb2FkaW5nIHRoZSBpNDBlIGRy
aXZlciwgaXQgcHJpbnRzIGEgbWVzc2FnZSBsaWtlOiAnVGhlIGRyaXZlciBmb3IgdGhlDQo+PiBk
ZXZpY2UgZGV0ZWN0ZWQgYSBuZXdlciB2ZXJzaW9uIG9mIHRoZSBOVk0gaW1hZ2UgdjEueCB0aGFu
IGV4cGVjdGVkIHYxLnkuDQo+PiBQbGVhc2UgaW5zdGFsbCB0aGUgbW9zdCByZWNlbnQgdmVyc2lv
biBvZiB0aGUgbmV0d29yayBkcml2ZXIuJyBUaGlzIGlzDQo+PiBtaXNsZWFkaW5nIGFzIHRoZSBk
cml2ZXIgaXMgd29ya2luZyBhcyBleHBlY3RlZC4NCj4+IA0KPj4gRml4IHRoYXQgYnkgcmVtb3Zp
bmcgdGhlIHNlY29uZCBwYXJ0IG9mIG1lc3NhZ2UgYW5kIGNoYW5naW5nIGl0IGZyb20NCj4+IGRl
dl9pbmZvIHRvIGRldl9kZ2IuDQo+PiANCj4+IEZpeGVzOiA0ZmIyOWJkZGIgKCJpNDBlOiBUaGUg
ZHJpdmVyIG5vdyBwcmludHMgdGhlIEFQSSB2ZXJzaW9uIGluIGVycm9yIG1lc3NhZ2UiKQ0KPj4g
U2lnbmVkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3c2tpIDxtYXRldXN6LnBhbGN6ZXdza2lAaW50
ZWwuY29tPg0KPj4gLS0tDQo+PiAgIHYzOiBDaGFuZ2VkIHRoZSBwYXRjaCBhZnRlciBjb21tdW5p
dHkgcmV2aWV3DQo+PiAgIHYyOiBGaXhlZCB0aGUgZml4ZXMgdGFnIHRvIGJlIDEyIGRpZ2l0cyBs
b25nDQo+PiAtLS0NCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21h
aW4uYyB8IDQgKystLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPj4gDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMNCj4+IGluZGV4IDQ2NjRkMDcuLmMwNzc0NmIgMTAwNjQ0DQo+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+PiBAQCAtMTU0NjksOCArMTU0
NjksOCBAQCBzdGF0aWMgaW50IGk0MGVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0
IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpDQo+PiAgIA0KPj4gICAJaWYgKGh3LT5hcS5hcGlf
bWFqX3ZlciA9PSBJNDBFX0ZXX0FQSV9WRVJTSU9OX01BSk9SICYmDQo+PiAgIAkgICAgaHctPmFx
LmFwaV9taW5fdmVyID4gSTQwRV9GV19NSU5PUl9WRVJTSU9OKGh3KSkNCj4+IC0JCWRldl9pbmZv
KCZwZGV2LT5kZXYsDQo+PiAtCQkJICJUaGUgZHJpdmVyIGZvciB0aGUgZGV2aWNlIGRldGVjdGVk
IGEgbmV3ZXIgdmVyc2lvbiBvZiB0aGUgTlZNIGltYWdlIHYldS4ldSB0aGFuIGV4cGVjdGVkIHYl
dS4ldS4gUGxlYXNlIGluc3RhbGwgdGhlIG1vc3QgcmVjZW50IHZlcnNpb24gb2YgdGhlIG5ldHdv
cmsgZHJpdmVyLlxuIiwNCj4+ICsJCWRldl9kYmcoJnBkZXYtPmRldiwNCj4+ICsJCQkiVGhlIGRy
aXZlciBmb3IgdGhlIGRldmljZSBkZXRlY3RlZCBhIG5ld2VyIHZlcnNpb24gb2YgdGhlIE5WTSBp
bWFnZSB2JXUuJXUgdGhhbiBleHBlY3RlZCB2JXUuJXUuXG4iLA0KPj4gICAJCQkgaHctPmFxLmFw
aV9tYWpfdmVyLA0KPj4gICAJCQkgaHctPmFxLmFwaV9taW5fdmVyLA0KPj4gICAJCQkgSTQwRV9G
V19BUElfVkVSU0lPTl9NQUpPUiwNCj4+IA0KPg0KPkl04oCZcyBhIGRlYnVnIG1lc3NhZ2Ugbm93
LCBzbyBvbmx5IGEgZmV3IHBlb3BsZSBhcmUgZ29pbmcgdG8gbm90aWNlLCBidXQgDQo+YSBub3Rl
IG9uIHdoYXQgdG8gZG8gdG8gZ2V0IHJpZCBvZiB0aGUgbWVzc2FnZSwgd291bGQgYmUgc3RpbGwg
YmUgbmljZS4NCj4NCj4+IFRvIGRpc2FibGUgdGhpcyBpbmZvcm1hdGlvbmFsIG1lc3NhZ2UsIHVw
ZGF0ZSB0byBhIG5ld2VyIGRyaXZlciB2ZXJzaW9uLg0KPg0KSSBiZWxpZXZlIHRoYXQsIHNpbmNl
IHRoZSBkcml2ZXIgaXMgd29ya2luZyBjb3JyZWN0bHksIHdlIHNob3VsZG4ndCByZXF1ZXN0IGFu
eSBhY3Rpb24gZnJvbSB0aGUgdXNlcg0KYnV0IGp1c3QgdG8gaW5mb3JtIGFib3V0IGEgTlZNIGJl
aW5nIG5ld2VyIHZlcnNpb24gdGhhdCBleHBlY3RlZC4gDQo+DQo+S2luZCByZWdhcmRzLA0KPg0K
PlBhdWwNCg0KUmVnYXJkcywNCk1hdGV1c3oNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
