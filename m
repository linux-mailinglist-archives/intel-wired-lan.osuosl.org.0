Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9902E473F9E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 10:37:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1576F4051F;
	Tue, 14 Dec 2021 09:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SMu8IwhAc3nd; Tue, 14 Dec 2021 09:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D276640467;
	Tue, 14 Dec 2021 09:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF04F1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC4D240277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="g8fpMJ7F";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="mTwTlT3l"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NkXRvWM6xNDP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 09:37:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EF11408A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639474633; x=1671010633;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VNYMKz6cHowNvfgBfeJiMCA4z3R7W1k85CSfP+6LnUs=;
 b=g8fpMJ7FFYMpos/zVtzcUSeCDcfHRCo0csNF69HCN0fgEk1nBBXwNBEY
 jsgLcISdU3akgWqi3CHaltjiRGF20zH79thmHnkCqk1/653Aos30Khi/B
 wJ2kwgcnnjFWkY81zhv+gUB5pwG/nXUnIc5mTiNsJ1hR4lbgyLxCH/4ND
 5biGivK63gPnZcYhv2DdcTh9YO6tWazCVpEeg7klymDu0Lujt7SWYjzQr
 N6ycD2hOy2HyHTXvJjSt6kKnN5Cx4u8mKW/V3tjG2Iyz9NY6CnSMXAEj6
 m/kdDYhxtqxiG21aiTKatmwiVVpbzwClZHm9zbnQ4I/rnZEi8UATMRjIl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="299720977"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="299720977"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:37:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="463733835"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 14 Dec 2021 01:37:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 14 Dec 2021 01:37:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 14 Dec 2021 01:37:12 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 14 Dec 2021 01:37:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1EARhp0EYJ6bcovs19Sql1/zIeybv7GpRTu/F5ltH/DXjP2qFKemlyA4SpRBeMtIjoetQgYus5iqFdfM5bUyBX/AOCOB23RKyDDvPZu6IU03bexSy8Gaw4D8abT9gfGHvtP3ClXym+SmaD+qo4yvmD34QHF8v+P/4FgGIo/yoCUDqwFi4DZkZjyrd1av9Cg9mqja2N01lACHR2Dl0dZQX3sz37EFdOQuGLj+opOV7j8Rxww5WL/14FMtUOc1jnI3rBKHTERdAQJpr85OJfCtBSvT3lOgRK12LidYr8BsZdiaso/+WGAmbisnYyHdRPztnkREkSWzyvfrvfAYsEuBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ms4nF1ghUg2qosgJKFFobPbCnwq4NfR25m8VxfBEsU0=;
 b=gdgg+J/2w+i0peCTXwII8SmYtdRlUC7gMg7ByUJOznbpZ+2os9v+ksx5NxyF6pGUoGqxyjxbALEMV1CKLF3I4Lp3YL0n5WgZOrVm4k/C39KutfjbkAjSmRkP0jBvKmlJF0qDpy012KW2dOF6tAGlBIjqBEifOhkdP7paSubBHf2pPyLDSdwpbvkDUYR01bNq8jR7YhKkJGeTM2ZvvcUGS/LEOVcs/YpiTWaWI6Z40ugFYlZTkX+qYK9InQNNz44B27ir/QeGsiHdy2sJHtRnYnui46yuyQpus9G5zwqpRRBX0gDN+u/mIImXgOFrCMhVr8fe4nGkCvHsNNvITKzJFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ms4nF1ghUg2qosgJKFFobPbCnwq4NfR25m8VxfBEsU0=;
 b=mTwTlT3l9CmmRyREfB/iVdo7bWT6e39kIzlmIsW18hd4y+ivyiTGItPQ/sqBQq+NQbhJ+NZlSzSCssL4hDwY3th+phz+ETspSly8ZJaHlR9kqsA2nnaRcs90sDetQhqYqzD8Paz224DQwN3OxCgNTyFuRJlfpK5iAwIqzd9WqCQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3509.namprd11.prod.outlook.com (2603:10b6:a03:8e::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 14 Dec
 2021 09:37:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.015; Tue, 14 Dec 2021
 09:37:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next] ice: Don't put stale
 timestamps in the skb
Thread-Index: AQHX2uKY9M6Q2tjGNU2ptB+y1svn86wx5mFw
Date: Tue, 14 Dec 2021 09:37:10 +0000
Message-ID: <BYAPR11MB3367FA6D070426952E18543BFC759@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211116120714.310539-1-karol.kolacinski@intel.com>
In-Reply-To: <20211116120714.310539-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1ec78a2-b60b-4a1d-dd0f-08d9bee54d60
x-ms-traffictypediagnostic: BYAPR11MB3509:EE_
x-microsoft-antispam-prvs: <BYAPR11MB350951B5EE822521E821EC19FC759@BYAPR11MB3509.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o+gS8Ugk0t2hywTmq9d6hQIETdRf732Td2pAsCLggaq2QsAzVUFfjHEGMn9X4Qi8pRET3e3HwaTdpWrVCXJr5Toce+4UdiyRuTEhxjP5xocbEMmuDL5qD5suIGeOJ95Ku/I2YtDzzZ7eNA1e7n/9WroQWbQcWbDbdUFGvmxf1ALKNzSddtaAlyE7gxcqIY1NgcQhTAg8fI0ahZMftxn6XIHRgm1BZA/U/8kozYkXRdrfVabojmukcrmjpJihsm9SCCgyyJqCTOILq8mKUAAia/Sx7FGlkakmUX9KPhglF+AAGrPmx98AmjXEezLXG5N+4b8n2SSNfZd8JI4hF2M4+c+vKS5raJmR4fNHMngPdI0fJtfhpiFmdJmhlJy+hsQmzKa/WLU3VM3l0uhSBPLXoZ/opNBls+Mrve+A4A3RfiCWdewMwpZWEKNggbPaMdq2w1esjBFdxXwv2+/1Qh1gbe6YPs6WQ1LFcVW1XOIRuXzHuGPVDEIRoN3NICc79tC1vk+nBstNd6/1MZk0xOwcgxiRQI3S+lyg0Su59GcYsVvo37VQ6ZJ49wc55dstw/SyeDAqHVVgnte5hkxxpvhyRwe2CusbAMrbjjIEIY298kv4cIwOd0cip9VVPfItsMxO/PxarIk8TwHXUQMElgDGtiIDan0ESHnw+1t/A3TkSHM/PQ4iQkRENIIKatKKab/IG+sCU6Lv+3Hj6HyE5NZynw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(9686003)(186003)(66946007)(71200400001)(33656002)(38070700005)(82960400001)(52536014)(76116006)(86362001)(110136005)(107886003)(5660300002)(7696005)(38100700002)(122000001)(64756008)(66446008)(8676002)(8936002)(2906002)(26005)(53546011)(4744005)(66476007)(316002)(6506007)(66556008)(508600001)(4326008)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m7FbDE6Jxa7R8Me5OYKh46kNBcxgpwOL6Ak1TsV3x2Me1i1kNDfsp4LPJeHA?=
 =?us-ascii?Q?s0bTCM1r4ixyYDPWcDuzRkYhgMNOJ91J63jhgykDgBLXfD63tns9tVkX4pke?=
 =?us-ascii?Q?qPbJ/6BL8/YGxeAnY/KDnbN1/OU03gARSNLSJUrFVsDTYJ09SH3E66E9O+YB?=
 =?us-ascii?Q?b6pxTxEY95LIB1xvcjLMkkNsodZRU5KsHTkU5Nj8l1fFNGDrCFc5w3u+iaBj?=
 =?us-ascii?Q?EfKQdUe7nT6tWN6BlQ2d+QDVWIgLZlecTgfwO+D9104wclG4yaocSzB6jsAr?=
 =?us-ascii?Q?dIrEo1Vy8o7v2z3gNcFAb/QeyJ3+GKChZ0f7mJ0TrmkJVZyWAI+Anw5RsY77?=
 =?us-ascii?Q?+zp/R8FCwJh6nQ9ZQD2nS0eVNgByaVm49S8vUyTKcwcZ+66/BEIhZvgpnTCR?=
 =?us-ascii?Q?A3oPNbOkgOvGBPlFMYcaMOCwnsC7mWPv61yaJUS4Rkd9E/e0RaQBeLmkve8P?=
 =?us-ascii?Q?ibNaJPL9pg7jZEn/7r3ek29oNYnB/VDbg9xoVCKPQzF7IPSjLyui8dc4i5RB?=
 =?us-ascii?Q?OpoQWz3YKyizzHUGawjTdpqtzZmIlKbSGpnaP+ede71te0z0Er2YG9blp7u9?=
 =?us-ascii?Q?Eb3qbrOtfpOqx0oPcqQWha6eFViIofKX3e8qGb6L123Kbci2a098pVPtOuMh?=
 =?us-ascii?Q?0YYpXbzMmrqSTslnRWcs518USvI49LdYkXBStSa1YQhTlaziub2j7f8z8WKA?=
 =?us-ascii?Q?/59mfmOMjANs+yZcqHu4PdyJGLSIndOtjzJBYqa/rVoH3Qe/e5gzEZVU2rBZ?=
 =?us-ascii?Q?jRn+fox10A4Oz+QRq4A0EqWgN7EdwxASpfiSua40byPJMxjLIv5G4NMAwhsr?=
 =?us-ascii?Q?Ti8lc9zLF8rh8scI4TtVP0uzwZ0Bsl03PtHQ1IYt4Oixn+gdLtxIZUliTl9W?=
 =?us-ascii?Q?OW5HcdjD2+7GGAC8UTgjdDnsuv9kk7frYqNjBNOjKQSUcCpsHhnIKs9ix+x8?=
 =?us-ascii?Q?VFnQGBq+qBqgErsgvxZA1s64MHcMqpFTgy7aPXZeJwb22QJDx/vu2DFQzSRS?=
 =?us-ascii?Q?2lVQfDlNwnXFkOaqPWb+gFdO8gnAAWq8vfo/OP9i+cC1YTRDx7bjDYQbSGHv?=
 =?us-ascii?Q?pRbW1UQbbjv1URlHtaOwtCBnyRDi3DgJLDSnbMuASDlPu8kvJ1uH1ASt6Bmt?=
 =?us-ascii?Q?WuHEWinItmC4jKcgi0BsKWoy9Z9wxq5d/+lHwKcvgVGqXWdkqC43Ip5PLnRu?=
 =?us-ascii?Q?PZSPAVIQviRx6X8eyRihMDWEbfCp2g5HBmCMVllXoU2PR3Ydn1sU1jiJgZa4?=
 =?us-ascii?Q?b0UD8CLnj+M82ayZbF6BWP08FptY1ev22re0ZeLzWwzUUqz4kXbWyfjVgK/J?=
 =?us-ascii?Q?zCae0UpJY8/K1ulCidFBCliJGFSvegeoGb0vweG96HBNnZksgc4Rin8cpKhk?=
 =?us-ascii?Q?9eMBUo3tWa/bI6rTvzws0ubXtgvli4rDlgZCT64EjrLbBENUfKK40smwtlLJ?=
 =?us-ascii?Q?UXDfXrH/iQmABc61XI4H4RUo33ONsB0jdgj/a4Dseby4Tjstzz5+vyA/TUnX?=
 =?us-ascii?Q?S0au7P0Ylse6a4xlk6VtkHtIYQ3WH1RY5YmwckvqqBlgpDexv2u8IURmOzID?=
 =?us-ascii?Q?RGX1Q3EWO/Rdj66wGHVT+756W3pRuigYGyeNcR/wncL9QYHyrKrj72oP5wSW?=
 =?us-ascii?Q?oQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ec78a2-b60b-4a1d-dd0f-08d9bee54d60
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 09:37:10.3992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6hiH/DzF2ZlTxeROorLzJdL5yX6m0Jld6QHGQ7u5jvqHtFr1h/Q8+1tt2gEJRy8uOOGQW6ObUhFko7EWsVfMiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3509
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next] ice: Don't put stale
 timestamps in the skb
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol
> Kolacinski
> Sent: Tuesday, November 16, 2021 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-next] ice: Don't put stale timestamps in
> the skb
> 
> The driver has to check if it does not accidentally put the timestamp in the SKB
> before previous timestamp gets overwritten.
> Timestamp values in the PHY are read only and do not get cleared except at
> hardware reset or when a new timestamp value is captured.
> The cached_tstamp field is used to detect the case where a new timestamp has
> not yet been captured, ensuring that we avoid sending stale timestamp data to
> the stack.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++-------
> drivers/net/ethernet/intel/ice/ice_ptp.h |  6 ++++++
>  2 files changed, 10 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
