Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C533C9E94
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jul 2021 14:26:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 424AD40651;
	Thu, 15 Jul 2021 12:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7pmO1RBBwlR; Thu, 15 Jul 2021 12:26:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13F2540632;
	Thu, 15 Jul 2021 12:26:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 289801BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 12:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15AC842280
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 12:26:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AbwIe4lsZSeT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jul 2021 12:26:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF9A042264
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 12:26:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210347446"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="210347446"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 05:26:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="655725162"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jul 2021 05:26:40 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 15 Jul 2021 05:26:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 15 Jul 2021 05:26:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 15 Jul 2021 05:26:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0dPXo24HnE7yIxh6IXEzIvgkLqY4bqLdOVD7YOsAxy9Y8+I2pAS5KmQSJL69G4JS0XJV2lHSfziY+I8eQ9QzYoCQJF6Xp/C9f2YMq5mM2Ti77HwzfE4n4he6/7d50M4OfdkFWO3ZJeB099R/JLTwRGn6F1mC7I19RtVXoG2pmZzci7ttGymz+9ACQHYtezhGJufuwqqRN94ePAbtfzKqAUSMwhOM686QHTKUCMYfjAdf/OZVtmL/8fRwkac8D16c3hGFfzU4ySsdo8nUTUyW9nUWhsm9ZZvn2MtuQjJV6q4ZyQh1gMvCk6/4pes9dtYqKGsM5KOhuc1JCzNXn87lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0VJZA7v6Fnie4Uzy/WJk1jVpxET705y36exAyvqmoc0=;
 b=BDNu7JmE0yRkx2da+B5Tkdlkyhl6bMChBA2TlPmNZs0597omOFck4aW+/i0/puZwNjA46ZGjv0S280De3JijgK9g6+M81caD8lU3nYGI1C4bx8x+yyWNZPV5mugjfz8TWDlrTH0JVyUAf0OtioSytMK2InU982VCC3HjxzXhX5a1WeNjwaskPzf1afsZhkRFLro7leweV2i7CT4+nEdlYhEgHq8XTLb07zAcFNcc5RybM/mWL7IrCqiL65TvAKSnr43xn5lU73W1wSMty5cmWoI95GXZaW8UEKvEryXDJIkTmE8+KH/9Fz29PdkMVQM+O4s2Xlwq2sJRMXlRJCBXLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0VJZA7v6Fnie4Uzy/WJk1jVpxET705y36exAyvqmoc0=;
 b=LjkeGPAIOwlgQgVbSe9+N35Pl40e1shW3TiWv/RJ5yZ/+tnGhoNaHS2hmierK5sOhW2G7eUkDOJdCekvl6DqbLGAQ7Ybic7OiLAYlyOLDO6VUsEvg4RAju3PQXFzcSNEbF9q7k8+LylUv8nEZq28mVcstFLcQl525uBPGP83fNA=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by CO1PR11MB4929.namprd11.prod.outlook.com (2603:10b6:303:6d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Thu, 15 Jul
 2021 12:26:37 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74%4]) with mapi id 15.20.4331.024; Thu, 15 Jul 2021
 12:26:37 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20210715070342.2948195-1-sasha.neftin@intel.com>
 <1f8b5f30-3f46-79eb-6b22-2b2e3da7a7bf@molgen.mpg.de>
 <e83e4b2b-a648-cc2a-57c4-9ad56169f2f6@intel.com>
 <6fe5418f-65cf-c296-e3b2-818d2dd89186@molgen.mpg.de>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <4dca8a7b-fc3d-0486-eff6-11e7a5d82271@intel.com>
Date: Thu, 15 Jul 2021 15:26:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <6fe5418f-65cf-c296-e3b2-818d2dd89186@molgen.mpg.de>
Content-Language: en-US
X-ClientProxiedBy: MR1P264CA0028.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:2f::15) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.168] (84.108.64.141) by
 MR1P264CA0028.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:2f::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Thu, 15 Jul 2021 12:26:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 02fa7365-01f3-4b05-e156-08d9478bca3f
X-MS-TrafficTypeDiagnostic: CO1PR11MB4929:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR11MB4929ED06C30D97551A0D57FC97129@CO1PR11MB4929.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JZkQd2s1WnT1qvY7iEHnTzaqX5qmHA5vOaezwwEYh+Gft6dd7vce7tpF/dEl71o+Mwh1VaPTawJqxxz+10avH41prDif81vVujewIfdX5FpOpWO7fGCnBEtK23OIchs1vbuMIfNj59Y1AABWFFnd19tpyPRam8h1oEwe+jiaplfeo9SmLhazRsYHJkqhuUk5c8zDssnAmSe4Gv/lvSNaA4pgV6pSSSajpmw8kINoN0xX9jSp7Pzdk3KFnD4nWLp0EpPzEf84CkAYdZZhQgZMZ4Hs4jzuUsRCEzJ0cQyXvFgCf9prxrUHpk6ooedvaYosJr1qMkDhDTyXfWlLuxdohSkA/JYV/dS7mKfuTky6zkkw423IOk/LL4NTLu5IBA75wDX4HbKAMtSN8v+SbgYG+afNUqVUeCXQgTjnMM2XVD4MdEaF/Shj0Lp6LHY3WrcZUQpDQJIzi4gHm7EaBil97v4DAbQsDuN4Txn1Y5Vup4IeVDlqJWYMV7wGGWB5G6gWmqsCDVQRhpw+vTWuKFwMbspKMv0drVwFObCqCy46sNXBEsFsUjX4+OyyCFvC0k9GGgKn+fHuPbxuNkpN2XTFuLQXNQtcGhl7JMllh7/RA8ZiYLJLSeJ3Gg0+yrbzqbr4jjk2YXu9U/XZPFNPQMwTkWgKYPB05Oait+OgZQsN3uR9BwTSiuDQbEeMCxWWJYMwDGPmmEEAygK1uwEtheX6Axui3BClTbYaQafTWXlmh4aZ2g4OHT3UYI7gSi53Udu020IY1KQsLb1UJVRNzgDNuAQBdaPHpNvwkO1imhBivZB0LJxvNBuID9sbpTbqcP0Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2616005)(966005)(956004)(4326008)(31686004)(38100700002)(44832011)(8676002)(478600001)(6486002)(8936002)(66556008)(86362001)(36756003)(53546011)(6666004)(26005)(186003)(316002)(31696002)(54906003)(5660300002)(16576012)(2906002)(107886003)(83380400001)(6916009)(66946007)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVRZV05GMDdIVDNud01XRUFMMlMzbi95WGJBc2VpZzFqUGZYY09FVi9PRVpj?=
 =?utf-8?B?Y1R6VG40TE1WSmQ0SGxJOWJCbDZVbW8wdWFnN2luU1ZXbzFMc3VzaVRYU3dZ?=
 =?utf-8?B?TFYrNlpJQWViTDJDQWQrZkkwTlFROXN2cXJoUy9sSnZJRkVFM3hiMnNmSmUr?=
 =?utf-8?B?ZjQzV25DeW1aa2syc25IaVhmWk9qTjBucWtuM0NCVVE1V2wyZkQzNElQVnM0?=
 =?utf-8?B?eTZNZzc5TjRkem5vSXJtOGNjZ0JVNmIvZUlPZDc0eElRakw1NzhIanA5Q0V0?=
 =?utf-8?B?Rk9NWmUvaldTaGtVQXc5MjgvaGt4SHNsSCtIemxzSzQ3YTI4dEF4VTlnVHlE?=
 =?utf-8?B?czZyQUluR3Vzc05Kc2xxZWpOWWxJZzNzcmVZRzl4cFdLZ0Y0OHBIMXhZS3Rr?=
 =?utf-8?B?eHoxbThOSUtLeWtqSnJlbjZGSUEvbDVBSGdEb1FReDEybzFMN2tRTTYyUjZj?=
 =?utf-8?B?aE02WE5NQk1PV2Q3V2thY3BGU0dHWXFpTXRwd0MrWXZMb1NlTklDTlNZc2xJ?=
 =?utf-8?B?RXc4RnhpQU9UakJzTmNBQzBKb2lTRVc0ZDQ1NWRab1Vwd2kyMUdDSWJUZXlr?=
 =?utf-8?B?QlZwd0lIQWdZeGU3VHcyd2NhZ0N4N3N6UGhlWHUvazJUN3E1RUdsOXh6RE5P?=
 =?utf-8?B?N0dVNGVlM3pHRlhMdVNvSzJ1OWFCSnB3Z0Q2NXNoZ2FTWU5heWIzTzVHM0Jy?=
 =?utf-8?B?ZE5LMDV5a1YzdFZKeTh5dnJwRDhLakpkWkd0V2doQjBqeGtEbTFqMDdvdDRT?=
 =?utf-8?B?dlp1aGhjNjlnMXBjL3hhT3VXc2Z1b1I0T0dBZGQ3M2N6QjFqbnhoT0tJbXlY?=
 =?utf-8?B?R2NhYzVnY2hhNjhKd08wdVBUbDJiMVgrUXZ1VDBqNDYvU3UzQU0zc0I0SWJS?=
 =?utf-8?B?U3dpUnpFeDZRYkhTRi9wRDUzdysvbjBOOVdhMVlSb0xRdzllcENNOGtjc2VJ?=
 =?utf-8?B?Y0RuZ3UvcDFZYjJEQ2FWaEFwb3poV0lsS2pnT2kzeEZsUnE4RlpJL01QWFcr?=
 =?utf-8?B?dFVmVXMyRFVrUXhsRk1TeXgxeU4yWG56T3Z1ak05Q3pYOWN1NTQwV05MYk1p?=
 =?utf-8?B?L3NLNzZxaUgvOU00K2tRQ1pwa0gzS1cycFJFRTYrS2xNV09QL2xWYnZ1bjVR?=
 =?utf-8?B?OWZGZmtzWGZRMmg5YndDREVFcFFhQmR6Y0hEaVZ3RU51bGFPelpSS0ZGcmR2?=
 =?utf-8?B?bFRkUGhhUUN0QmIyYjFQNEthZ0c0NUg0NnF0anBrRlUvZ2xjbWMySzc2YXI3?=
 =?utf-8?B?NzRGSWNoWURHeVJzZXVJbDdTWkFMdlArTGVFU2pqdVZrcHNGUGFkVmMxaVIz?=
 =?utf-8?B?UDRQZTJxNE8xZnVvZ2JpKzZyaTYwTWRsTHU3Z3NoTjdraHpVdHR5NVJ2UFFo?=
 =?utf-8?B?cTRicWJFemxDZkppZHhUdjRhRkxuZ2RrVjJTbjVkYmtyWlBVdTZZS2xDTDNG?=
 =?utf-8?B?eGdzbWFDaHN3T295WmR5dXErcmpBVGdrbFFHNHFBL29QRG5hbzdJa1BQQjdi?=
 =?utf-8?B?Tk5xdXdWU0NoU0V2MGtVN2R6L0pjNHNPeXRkZ1hHR1llMXZmdjlQNmpxdE9Q?=
 =?utf-8?B?eHFicUsrTmZNdk5YM1piRE05eDBCNGFhSWpRd1pUemNtY0QrWmpma0JEemJC?=
 =?utf-8?B?L0FPZEJVSEcvcit3R2Z2cTNhWUQ5cDAzd1d3SnBCMFpyWWlrS3M5b3hYUUM2?=
 =?utf-8?B?Um5DS05jMTNnRU9ZS1BRMStzcGdBcTFSWmloTmNLb1NjYjJkRmdyTVRGNUx4?=
 =?utf-8?Q?crUjxgLe+kmHZHg9oNBOpo1Jgte7IBbd6VTu5Si?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02fa7365-01f3-4b05-e156-08d9478bca3f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 12:26:37.0001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lqB8YOQ2mC3r8ufuvtfB/Losld8T+3Xr6uVOqyvhcMNiOoe74ERP4ywx/26i0COSaQoXEmUedW3Bg2nznYFqyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4929
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Do not take care about
 recovery NVM checksum
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
Cc: michael.edri@intel.com, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Tsai,
 Rex" <rex.tsai@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8xNS8yMDIxIDE0OjQ4LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IEFtIDE1LjA3LjIxIHVtIDA5OjU0IHNjaHJpZWIgU2FzaGEgTmVmdGluOgo+PiBPbiA3LzE1
LzIwMjEgMTA6MTUsIFBhdWwgTWVuemVsIHdyb3RlOgo+IAo+Pj4gQW0gMTUuMDcuMjEgdW0gMDk6
MDMgc2NocmllYiBTYXNoYSBOZWZ0aW46Cj4+Pgo+Pj4gUGxlYXNlIGRlc2NyaWJlIHRoZSBwcm9i
bGVtIGZpcnN0IChsb2NrdXApIChtYXliZSBieSBzdW1tYXJpemluZyB0aGUgCj4+PiBidWcgcmVw
b3J0KS4KPj4+Cj4+Pj4gQWNjb3JkaW5nIHRvIHRoZSBIVyBEZSwgaW50ZWdyYXRlZCBHYkUgc2V0
cyB0byByZWFkLW9ubHkgYWZ0ZXIKPj4+Cj4+PiBQbGVhc2UgdXNlICpkZXZlbG9wZXJzKi4KPj4g
SSBtZWFudDogaGFyZHdhcmUgZGVzaWduCj4gCj4gSGFoLiBUaGFuayB5b3UgZm9yIHRoZSBjbGFy
aWZpY2F0aW9uLiBJdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSB1c2VkIHRoYXQgaW4gCj4gdGhlIHYy
LgpubyBwcm9ibGVtCj4gCj4+Pj4gcHJvZ3JhbW1pbmcgYSB1bmlxdWUgTUFDIGFkZHJlc3MuIFRo
ZSBkcml2ZXIgc2hvdWxkIG5vdCB0YWtlIGNhcmUgb2YKPj4+Cj4+PiBFeGN1c2UgbXkgaWdub3Jh
bmNlLCB3aG8gaXMgcHJvZ3JhbW1pbmcgdGhlIE1BQyBhZGRyZXNzPyBPUyB2ZW5kb3JzIAo+Pj4g
YW5kIFBDIHZlbmRvcnMKPj4+Cj4+Pj4gTlZNIGNoZWNrc3VtIHVwZGF0aW5nIHN0YXJ0aW5nIGZy
b20gVGlnZXIgTGFrZS4KPj4+Cj4+PiBXaG8gaXMgdXBkYXRpbmcgdGhlIGNoZWNrc3VtPyBQbGVh
c2UgcmVmZXJlbmNlIHNvbWUgZGF0YXNoZWV0IG5hbWUsIAo+Pj4gcmV2aXNpb24gYW5kIHNlY3Rp
b24uCj4+IE9TIHZlbmRvcnMgYW5kIFBDIHZlbmRvcnMKPj4gSXQgaXMgZGVzY3JpYmVkIGluIElu
dGVsIFJDUiAxMzA4MjY1ODExIC0gSSBkbyBub3Qga25vdyBpZiBwdWJsaXNoZWQgCj4+IGV4dGVy
bmFsbHkuIEkndmUgY2MnZCBvdXIgZnJvbnQgY3VzdG9tZXIgZXhwZXJ0IChSZXgpIC0gcGxlYXNl
LCBhc2sgCj4+IGhpbSBpZiBpdCBwdWJsaXNoZWQuCj4gCj4gRXZlbiBpZiBub3QgcHVibGlzaGVk
LCBwbGVhc2Ugc3RpbGwgcmVmZXJlbmNlIGl0LiAoVGhvdWdoIHB1YmxpYyAKPiBkYXRhc2hlZXRz
IGJ5IGRlZmF1bHQgd291bGQgYmUgbmljZS4pCj4gCmRlZmluaXRlbHkKPj4+PiBCdWd6aWxsYTog
aHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTM2NjcKPj4+PiBT
dWdnZXN0ZWQtYnk6IERpbWEgUnVpbnNraXkgPGRpbWEucnVpbnNraXlAaW50ZWwuY29tPgo+Pj4+
IFN1Z2dlc3RlZC1ieTogVml0YWx5IExpZnNoaXRzIDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29t
Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNv
bT4KPj4+PiAtLS0KPj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jIHwgMjEgCj4+Pj4gKysrKysrKysrKysrKy0tLS0tLS0tCj4+Pj4gwqAgMSBmaWxlIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyAKPj4+PiBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+PiBpbmRleCA5
YmFlNDkzMmExMWQuLmUyNzNlMTRhMzQxOSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+Pj4+IEBAIC00MTQwLDE0ICs0MTQwLDE5IEBA
IHN0YXRpYyBzMzIgCj4+Pj4gZTEwMDBfdmFsaWRhdGVfbnZtX2NoZWNrc3VtX2ljaDhsYW4oc3Ry
dWN0IGUxMDAwX2h3ICpodykKPj4+PiDCoMKgwqDCoMKgIGlmIChyZXRfdmFsKQo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0X3ZhbDsKPj4+PiAtwqDCoMKgIGlmICghKGRhdGEgJiB2
YWxpZF9jc3VtX21hc2spKSB7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGRhdGEgfD0gdmFsaWRfY3N1
bV9tYXNrOwo+Pj4+IC3CoMKgwqDCoMKgwqDCoCByZXRfdmFsID0gZTEwMDBfd3JpdGVfbnZtKGh3
LCB3b3JkLCAxLCAmZGF0YSk7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXRfdmFsKQo+Pj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXRfdmFsOwo+Pj4+IC3CoMKgwqDCoMKg
wqDCoCByZXRfdmFsID0gZTEwMDBlX3VwZGF0ZV9udm1fY2hlY2tzdW0oaHcpOwo+Pj4+IC3CoMKg
wqDCoMKgwqDCoCBpZiAocmV0X3ZhbCkKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm4gcmV0X3ZhbDsKPj4+PiArwqDCoMKgIGlmICghKGRhdGEgJiB2YWxpZF9jc3VtX21hc2spKQo+
Pj4+ICvCoMKgwqDCoMKgwqDCoCBlX2RiZygiTlZNIENoZWNrc3VtIEludmFsaWRcbiIpOwo+Pj4K
Pj4+IEnigJlkIHNwZWxsIGl0OiBOVk0gY2hlY2tzdW0gaW52YWxpZAo+Pj4KPj4+IFNob3VsZG7i
gJl0IHRoaXMgYmUgYXQgbGVhc3QgYSB3YXJuaW5nPyBJdOKAmWQgYmUgZ29vZCB0byBlbGFib3Jh
dGUgZm9yIAo+Pj4gdXNlcnMgc2VlaW5nIHRoaXMgbWVzc2FnZS4gU29tZXRoaW5nIGxpa2U6IFlv
dXIgZGV2aWNlIG1pZ2h0IG5vdCAKPj4+IHdvcmsuIFBsZWFzZSBjaGVjayB5b3VyIGZpcm13YXJl
IG9yIGNvbnRhY3QgdGhlIGRldmVsb3BlcnMuCj4+IHRvIGJlIGNvbnNpc3RlbnQgdXNlZCBzYW1l
IHdhcm5pbmcgZm9ybWF0IGFzIGluIG52bS5jOiAoIk5WTSBDaGVja3N1bSAKPj4gSW52YWxpZFxu
Iik7Cj4gCj4gRm9yIGNvbnNpc3RlbmN5LCBpcyBpdCBwb3NzaWJsZSB0byBmYWN0b3IgdGhlIE5W
TSBzdHVmZiBvdXQgaW50byBgbnZtLmNgPwo+IAo+IEFsc28sIHRoZSBtZXNzYWdlIHNob3VsZCBj
b250YWluLCB0aGF0IHRoZSBtYW51ZmFjdHVyZXIgaXMgYXQgZmF1bHQgYW5kIAo+IHNob3VsZCBi
ZSBjb250YWN0ZWQuCj4gCj4+Pj4gKwo+Pj4+ICvCoMKgwqAgaWYgKGh3LT5tYWMudHlwZSA8IGUx
MDAwX3BjaF9jbnApIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCEoZGF0YSAmIHZhbGlkX2Nz
dW1fbWFzaykpIHsKPj4+Cj4+PiBBcyBpdOKAmXMgdGhlIHNhbWUgY2hlY2sgYXMgYWJvdmUsIEni
gJlkIG1vdmUgdGhpcyB3aG9sZSBibG9jayBpbnRvIHRoZSAKPj4+IGlmIGNvbmRpdGlvbiBhYm92
ZS4KPj4gRm9yIG9sZCBkZXZpY2VzIHdpbGwgcGVyZm9ybWVkIGNoZWNrc3VtIHJlY292ZXJ5Lgo+
PiBOVk0gY2hlY2tzdW0gdmFsaWRhdGUgd2lsbCBiZSBwcm9jZXNzZWQgZm9yIGFsbC4KPiAKPiBJ
IG1lYW50Ogo+IApHb29kIGlkZWEsIHN1cmUuCj4gYGBgCj4gaWYgKCEoZGF0YSAmIHZhbGlkX2Nz
dW1fbWFzaykpIHsKPiAgwqDCoMKgwqBlX2RiZygiTlZNIENoZWNrc3VtIEludmFsaWRcbiIpOwo+
IAo+ICDCoMKgwqDCoGlmIChody0+bWFjLnR5cGUgPCBlMTAwMF9wY2hfY25wKSB7Cj4gIMKgwqDC
oMKgwqDCoMKgIGRhdGEgfD0gdmFsaWRfY3N1bV9tYXNrOwo+ICDCoMKgwqDCoMKgwqDCoCBb4oCm
XQo+ICDCoMKgwqDCoH0KPiB9Cj4gcmV0dXJuIGUxMDAwZV92YWxpZGF0ZV9udm1fY2hlY2tzdW1f
Z2VuZXJpYyhodyk7Cj4gYGBgCj4gCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGF0YSB8
PSB2YWxpZF9jc3VtX21hc2s7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9
IGUxMDAwX3dyaXRlX252bShodywgd29yZCwgMSwgJmRhdGEpOwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlmIChyZXRfdmFsKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIHJldF92YWw7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9
IGUxMDAwZV91cGRhdGVfbnZtX2NoZWNrc3VtKGh3KTsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpZiAocmV0X3ZhbCkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiByZXRfdmFsOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gwqDCoMKgwqDCoCB9Cj4+
Pj4gwqDCoMKgwqDCoCByZXR1cm4gZTEwMDBlX3ZhbGlkYXRlX252bV9jaGVja3N1bV9nZW5lcmlj
KGh3KTsKPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApJJ2xsIHByb2Nlc3MgdjIuClNh
c2hhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
