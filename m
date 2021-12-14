Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 165F1473F9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 10:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EBB9813D2;
	Tue, 14 Dec 2021 09:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bhJyPgFnKdJ7; Tue, 14 Dec 2021 09:35:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D39B813D1;
	Tue, 14 Dec 2021 09:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA8E21BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 976BE60B8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="WqEJv9jL";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="c5B8fGNh"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdNrY6SEuIV1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 09:35:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0703560777
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639474512; x=1671010512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=20q3JjqtLPBDf3FXNc0WGVajisMdWXK6MYq3XWg64gA=;
 b=WqEJv9jLbRK4l8ys6HDlaRHQpHvTwMf2Kuh8GBDQY8ah2AvcfILeeRiX
 v0zWzHR6dXjvRctndg4gbh0PdJCJJ/kIvKnDVCo8juECSc6sGzuUVNxsU
 qSG39HuQ+2OZZtlHco8N3tJkneOfijFEREBUvZTRn816kbRVdU4VQocUl
 hh1qEmAqfjdMVmeaXm9SIuZg0YJg0Ntd0VNKlo0JbkhFWFI+LWBUkC6gR
 wyvTq9JBtFjw1tidAqMQ3n5RG5ydPfjN0VjF8kQkuIFkpnm5zUa2HkZX0
 eiX852BakRR/PJtDCYGtYdPD/cbd6ERydTq1sXkITIKzE1YSRgV8MoCfP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238886752"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="238886752"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:35:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="518162787"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 14 Dec 2021 01:35:11 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 14 Dec 2021 01:35:11 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 14 Dec 2021 01:35:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 14 Dec 2021 01:35:10 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 14 Dec 2021 01:35:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JH/b4ok86PXVrM7rQ6OQw64Nq7SryItnXZSbeuFAH3QDXLB9aHwUH6ACBLPxvYhdieVi/rG8GhIN7djvySoSCMjnzBN+TeDwiSgUnnbpz6t/vd9IWHd8JQzzamkRm2f1s8RbYhEwZx6n1cEdHJox1S8S62ByB7imR/UIDuAd7pAKlhJDpOoTt0mxwx+F+9CjcQGPyTLtq3Xq/USHJmc2M7hbAIzowccwPDmB9uO+LtpQdezrPK/jLFYmAd/vNaagWIoa9DW3vgXPD7ZCyN+XT3q0Y4WDB7tpJc3Tud1sRm6nqj6ZUalENmBjY/aSLSDi1UZxqCHURS+XnKvTGP7LAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yrj5biEBzJJ7QzTX7FPRGKISGD/GutRGIDs2wVZevg4=;
 b=FVVatMmNmz2iY8rxncSYiKgFrVIbF9Ewtf5q7PGuMtb24bo866YwQoL9vJ4Gf0H7Sx9RcdOIKn+HQjH2sbT4sFAARWoD1MtJYtALhPxLTexGx6NIObe/3z3+5FJju7BKhUfqfDpe13RBeTjdn5pJ/B06BiDwBWIveIOir1sSopOcyo7E3EMNu4Wd9jSa5C2QjW98bqNQak2x2tpSA/0F81zwTZ8nFfMD5WpJF7WbXspJIt6uysXx3yNsjwx/VV7Ibo7N04mSk2uY2UtlDzHgVH3A5nnUSjwGSVanX09dBnRTbG2+LytVP9YENXp6eVdpuaJAneO6p44bI8oplSGeAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yrj5biEBzJJ7QzTX7FPRGKISGD/GutRGIDs2wVZevg4=;
 b=c5B8fGNh429popvKxvI38AurDBSAVxl4mQwKPzdIL7o2amBdNky/bWf8De0xtMuAx8llaF7w1naJ6UxCVSp3BhvFM25ewSO9nj7S01+OtPVjHuxAK6de/0i7jbg9V/j9ued14Hw76hXRpSQVqZOrQq0tTfuM2Sg0PyBK1/d2h5Y=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3509.namprd11.prod.outlook.com (2603:10b6:a03:8e::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 14 Dec
 2021 09:35:09 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.015; Tue, 14 Dec 2021
 09:35:09 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next] ice: Use div64_u64 instead
 of div_u64 in adjfine
Thread-Index: AQHX0YNVLB+WxUILmEqgwrUEUvOcd6wx+I6g
Date: Tue, 14 Dec 2021 09:35:08 +0000
Message-ID: <BYAPR11MB3367DB0689D13B4F5570FF02FC759@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211104135211.21315-1-karol.kolacinski@intel.com>
In-Reply-To: <20211104135211.21315-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1dab5be-f1f3-4167-411f-08d9bee50500
x-ms-traffictypediagnostic: BYAPR11MB3509:EE_
x-microsoft-antispam-prvs: <BYAPR11MB350919F17F051C25B7F6AC54FC759@BYAPR11MB3509.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X7eyf6lfmL+rtDWFQpem0qzkrkUFA8sCNJs5FiW/+9d4etg4OJbtNtypHWvRhJ4RE5dImQOBvvhhrzfgKvYmHmgpI6EVv9v+Zp1TTHuzFEiVK0wdTRrLkBNNFIz6r1W7R5dXIMAShZuQeR71cR7AOFrI62q/LuWcB8eG0QNWZC1AAYkhjb3qCe/CZZIzJTkerOa6WfFG3CeZ75LsqfvgZnZ6LlLX0Xd0kL64qW+l6BIIjGR9EjoE5O69Ni7G2pyvQXW9Lhc4ILAvRLFyiPmOCMV0LNQs3FHyDWG0Gkpg1CS/v/0CtzuU75hnrGxUNd/nHcVEmHfkWs+pJQ6YWtdtvd7v7jPKIoshIseI+so835uZHrC4+hzM6dWstadza32EFu32+cfwHUuhxDBpuCGoLZTy9P27NkuvNF2Jftb+CTiPrX0zIRsyopfo1CeQk2nihFB+9ca3GVGMQ0O7ih3T5+Ts7y05e6OuDyIOt40SjluT4XhAzhjwtyKYRJQR2eKnhCvcEB8BM+JgOjTENhF1yelU1uJQ7EJ1eBpdv4yAN2mgHkRpMA+htvYtHyWZmsEZHwlkjfHor19HD0MnFLutUfM1PuqwolyMDpZQNcD6gi9BI59kyJG2cGLdGBLh3g3cuzpvZtJIIVU/9PKBVGhH5NANLTkveIPr1h4ZfLWGwFEJoGixh1GiOClKf7aASynbAJRiV98GGqTwwkWp+W7DPw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(9686003)(186003)(66946007)(71200400001)(33656002)(38070700005)(82960400001)(52536014)(76116006)(86362001)(110136005)(107886003)(5660300002)(7696005)(38100700002)(122000001)(64756008)(66446008)(8676002)(8936002)(2906002)(26005)(53546011)(4744005)(66476007)(316002)(6506007)(66556008)(508600001)(4326008)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?woN/+BLH+r5+sWkM37ercfah1KlZqS9Fl49pMeiuoEM9Mopcp7U17Oagtnlt?=
 =?us-ascii?Q?DTXPzNSKmxz8NBIv688YJrvx1U61cQs/jYnNInpo+yxhbzZ8NvOAip+2aeQ9?=
 =?us-ascii?Q?j1Ql2E76Nj6B+5k7D2asdEh31UVHU+ewCMaYG/PFo0qiShdiQ6MkfymJlS65?=
 =?us-ascii?Q?4matc8qWSM0rbv24grLFiZAusQEGiWQltKJ8AzbCsqWeINmY/mDcmYSJeThb?=
 =?us-ascii?Q?MLg/ZiosGQexs8aCPQejtZ4c7DzAC1Y74TCQ6a7nq3u9vYxFl6OVOna8VdGX?=
 =?us-ascii?Q?8gspEbGL7/TI86nz5GiNCAEIQY61yLe+0soWHtChlRBqSEnZR2WG1aKOFzl6?=
 =?us-ascii?Q?w5WNlepJcS00kgUwVGAcmKkklRamW4j2xsVLRAcYxxMQto/CGWJPygLvxCuH?=
 =?us-ascii?Q?3VRjNfwCVSKbA0p0SKjf3uzOLEg/qkzsBHa4hB6WIVDmlWd2rg1qmncj07C2?=
 =?us-ascii?Q?eU4ykjqgoRUx9xZ97eZt43w9VY8Q6TmucnjAHjYz3HTzmAZngZwVeqC4fCsW?=
 =?us-ascii?Q?Z5o3IpMEGpXpqQhPWG1eeYaLsSsSkdapUk1PiCc6tX1tu3HguP+9fhZR2BqU?=
 =?us-ascii?Q?p/GGEzPP0GnusFPGXiGZ3W5/UMAxrmLJRvoFeNC6oec4JXVS++B7vhphMoo7?=
 =?us-ascii?Q?XFuNll0yr/1v1UHyS7DuXI90z7Kwib6SG6dGQ7jDAd4HdCnBaJgGQQrf/VAc?=
 =?us-ascii?Q?uwHHconJ9ZuloEYzCTo3VWuAs5Hi7LaWhWL+wFm/yL74G4rXjDz49rFvK1q3?=
 =?us-ascii?Q?ULGMgqfCQo8SDLK9FlLJ1fbPGxxBJ2cH5bFPraDleFdOixhJ1OcWSDJ7yl3J?=
 =?us-ascii?Q?SqLNBijr1+zZP3DV0dcaZ+1uqAiveMdeqV2XfGkjuzc+xg8U3DyTWXvsa6vu?=
 =?us-ascii?Q?wmiDU3gElEhOcG8SGKLvxncriJPQO9lPgGvkEMF2nzQ4qTuD9xthmwEYBJ+T?=
 =?us-ascii?Q?61gZmDLXst62LRIkOPcoeeqKI4fzn7sxqFmLuWcqsXpleJi3HHKwKsl5X/eq?=
 =?us-ascii?Q?g3UFyGB8P8bMz7fpr1u2hFr81cOc3X3d76qQGCWQv/pQ9IBq/TBNnjWl+ijL?=
 =?us-ascii?Q?y11iny8stB9foq6CPDztr1XIUVvBet92Vq7xNcNxKcmdURiRo5pbXQ5l1ldo?=
 =?us-ascii?Q?Vig2yMueRhD0STUTrgoU1m2B604pT3cnTcsgiY9J1mGF4KwCoCRuhczqtRpb?=
 =?us-ascii?Q?AM+4vvAZmZGetQ9AoLGozmi612kzSLYvUp9ye4Apdj96HwPgL0Q9OU/B72Hp?=
 =?us-ascii?Q?Tm6JGcZ3/hVs/jSQ8ur7jFL+ruJRDyoWU2AFzdu7ZLBqplv4zCifYM5yXJDE?=
 =?us-ascii?Q?IN+9rjpJLNZQvan224igGcB8FsS5XzFgDq4Yqym53dIUA4kTAopfYnPHVctP?=
 =?us-ascii?Q?Gj7LuiQbfPYDrONVHXrWBedZJRdWgzg6vaHgUZCWOGmciBWajwamWdiye0OU?=
 =?us-ascii?Q?1/K/veN0JNqKPP2n1pfUITdK443oVFfD9thkza++pZ/3iJ8J3x2nf2xubP9U?=
 =?us-ascii?Q?X7uXUeoSq3ILCOuZJpf9VCdE83CePCeWd2OQtNadcLj9IsejRIP23DTce31S?=
 =?us-ascii?Q?5NoAMoYEQZyyJiDmEprS7aSfJ10v0C6iU+htLn78dwXR4rrXg8+899EvYd4Z?=
 =?us-ascii?Q?hg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1dab5be-f1f3-4167-411f-08d9bee50500
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 09:35:08.9233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C0mC8htO2d5UosYy4yHjPvqT8X3CdLRLHUF5uWjfV9RDQp+G8Nr+y/4FymvU8mOt0dRUXthOysxSKLpXK7t+sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3509
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next] ice: Use div64_u64 instead
 of div_u64 in adjfine
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
> Sent: Thursday, November 4, 2021 7:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-next] ice: Use div64_u64 instead of
> div_u64 in adjfine
> 
> Change the division in ice_ptp_adjfine from div_u64 to div64_u64.
> div_u64 is used when the divisor is 32 bit but in this case incval is
> 64 bit and it caused incorrect calculations and incval adjustments.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
