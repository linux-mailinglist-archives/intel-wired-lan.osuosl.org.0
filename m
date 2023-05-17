Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1D370647D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 11:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB27B429DF;
	Wed, 17 May 2023 09:46:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB27B429DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684316806;
	bh=TQbrAoo+wGRpFYGz2Lvw9YoVcoAla2tkAME3FlewjZw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ks5hI4ThOmOaTcsJpsJvVBJ/FyqgU5ddIDJ1gGlLr3xkIbvZe2TA81B5Hv2U+EyNW
	 p84xisgRQXXuDhhNJg/ATqlltOArkBcAmnc8jka7jRNd2UwprgcG7oBN0vdQQCuMEx
	 RwbIcb/8wSrfa9IMmyAlS3U2XAZDfYc4HVg2Mjgs2BK8x97yzHx/KnAUpalzV0+p7Q
	 n+ZP7ttmylB3o1vkSY3wDiAOONaKeTWNExhZgqQNbjan3mi3e9CMMTahS/Jb+NyufF
	 2Z9r7jdxFtOG2WwUXYd1MD+QW0ZR31e38dbdS8QDVK3H+a2nbu+X/TLWPYVFFVSNHD
	 VtomvWH6qEHYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKHB8RPwS64R; Wed, 17 May 2023 09:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 761604015A;
	Wed, 17 May 2023 09:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 761604015A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 780E21BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E29040B8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E29040B8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8xGtqWTBcdyp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 09:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AADBC40220
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AADBC40220
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="331330420"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="331330420"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 02:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="846046733"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="846046733"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 17 May 2023 02:46:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 02:46:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 02:46:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 02:46:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NI8+8/T8XnJVIxWkHGDcgSRYyjp1FE4h8AIPKanrwaP+45h04FxOR85TgMWcQwKN/lUy2NV9AFQuz8crS6lr9K+PlJFE4r21RAUTI8ztSquBuDHQQ2wdcsGfUB/KguxeM5HK/fhZIP90d5sA7y4QkBqXnr0S/UQVysv1QEe2FjI+B/Qgrw1+DxKDDKYdwPiea/a2tFpxutrJU6CEQ0ySLy6LO5nernhh+YMyqdgqxUYkHHHGcoiGHlll2wOF1gCDmv0VXPfuwD6+GUbi37k1Pwdd9/1hW7RyEFROJi9qCSB8PMbvQvC7CVZnm6AtQrvXdO85L0a79yHCS1pdm4FAHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SFKoO7pVieEMeKQSMBwbgAFx3ThawKP92eaiVMuzuls=;
 b=fQ/mG5fs1IbMyPbfVS/tnDrqC7pF9+Ya2+/ldse8z45nqYPDNeA9Z+FIWEgH4P4YHlgBI5QDjK6JhWZioGAEpFb6Zh6bZl/7E8YZ6YIvXDN1tx4fDQxaAZIPuQuwz4GgDwBXG7cF/mJQaeHJMH20Nt6rwLjlzZaaU+EVmFF86Uxl9tmVAcX1s2FTF1wYAO0BxtiaNNEgJBH5D4crexNUUG1iYCI7/ruEr0IwroOlbhxGeiXiDhGJwFJGvPZRC1pi1SJYrL4Q/DBwxC0AAqufvE5S5Ux0k22BIYvBA3inO/E0Yn4ZxTonWbnyP6LAY/YL1PfnGYE2A7or7nA91iKMsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Wed, 17 May
 2023 09:46:35 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace%4]) with mapi id 15.20.6363.033; Wed, 17 May 2023
 09:46:35 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v11 5/5] ice: Document
 txbalancing parameter
Thread-Index: AQHZXMA2rPFe4SEvxU+Wi1Iufq1doq9egVZA
Date: Wed, 17 May 2023 09:46:35 +0000
Message-ID: <BL0PR11MB3122DC0E0C049ADE9D3BCD54BD7E9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
 <20230322131227.244687-6-michal.wilczynski@intel.com>
In-Reply-To: <20230322131227.244687-6-michal.wilczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS0PR11MB7191:EE_
x-ms-office365-filtering-correlation-id: 2d579744-755a-4e81-1772-08db56bb9aa7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kDN90DX2r03JBBxHofUaqRYlV3uUcnQowlncbM6d88zZfJ1Ig7O80AM35mXqgV0fM0IctWWYci21IfSFvSawxoXrBPf55mUgSpaAjtsGRrHMRDFNcg6mbMF98MrhNtWS1HglDkccz+mX+vMe+ci14cXYiXQwZAAxQSkJ5wKQXv45YFj7YUZRTEdyZn511pWzXS0aO7uBA11hhvpkqo4C1E87ibux74iiHEilZFZ9Kl6TnRxcq0SsY/DhsjqiOaQ1oD/7uSfv+AwiGg5aVmYC93N03lqBBcMH0XvSBzipZ4UneXeOh7+f17vTd+ZQTezy4HQ0bfy06KCVTAZrCuv6q1tpvabZoJzKrT65SIwSQ9yJgp3umXsBnXnqTIxxQFN9bcZZQbADh1p7N2Xq6tuk4k4XLSA4nox5g9r9KM3xdnWkfb/MARiWCUSWC2+dzHUV/SU+0Q/Z/xASHekAv4elyWznz3KY/mm52/QTx72E7iYcnPZtj9DqIDn0PzUv+o5Szt3aCc40uppSVdqRAshUfF1G7IYkJqMdoLbJdW8zJJf06aZFG+TwagO438bdT8SbY+ZX5qY1ChFnxSljF9gRrMI6bC357yYD2xhSklaCK4swXit5HobM2mvrYbmWFkhY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(396003)(366004)(346002)(451199021)(83380400001)(478600001)(7696005)(110136005)(71200400001)(53546011)(9686003)(6506007)(26005)(186003)(2906002)(4744005)(8936002)(8676002)(5660300002)(52536014)(122000001)(33656002)(41300700001)(82960400001)(38100700002)(66446008)(66476007)(66556008)(66946007)(64756008)(76116006)(316002)(86362001)(55016003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?laR+5J9nRz7TeBD771TTDBsI1CZH87Qax+uT3psIWGRLh9lrmH3XxwoCdiqW?=
 =?us-ascii?Q?7Ezkxj9e9e4AB4jINCZrDAexBg2MgY1+QURQNsY7sUK9kK1ox46nL08rJudo?=
 =?us-ascii?Q?ixhMVNuetxSpBnupQp6LciuboMC6A+0bTl95idotPhibqI1ZYhO3Hrrma9WF?=
 =?us-ascii?Q?AwCgDNA45oAM1+K/voLgmfXY+cmwtaao7dN1nbODlgBM+QDiTVY4xVainl3B?=
 =?us-ascii?Q?zk8m3tLmqZ3bo22GFRpMcR+dOOI5zZJrGL5EEM1uZERzmRyY4Rikic0NZxGp?=
 =?us-ascii?Q?v+zLkBSMKoKa/dyQID9Y51HNmUvM1gi9JEGxr+hO1Lu4knmYkZhyxBnhlEZq?=
 =?us-ascii?Q?Bj/ZPN1u+3V/ZqV4VgJWVdr+QKUw1qR9YevZtVOB050Fe/T+LapRKe7BOwMA?=
 =?us-ascii?Q?uuZ8AxLRCKzMf28GAa8BpZyi39tqQFtO+Ngwh2pLFQdRzJQvqOzqhldzxzjI?=
 =?us-ascii?Q?7rwo0PUX1vRDz+jzdw3oTurlsu1hwaw4DXd93S7kQtWmSbJiokky3nfL+34p?=
 =?us-ascii?Q?VAnGiuB9mm4tJ7adiyVvpcwSkEcanOOXwc7YN4+igmej7XAINVfMadkmmlpX?=
 =?us-ascii?Q?juyuDkHRLWp97zDru9+sB5g1DM/jjTkQIW0zmhszyK7pwHJpjykQgl233eFd?=
 =?us-ascii?Q?JItCJiRQPVbAwCTpbCp0SXFoGJkyLtHNtpRNoSzKrLyXbqV7OuCBq4YAISVb?=
 =?us-ascii?Q?2SEkoRCVBvwA4ZbQHUuB4PYPSjo5rMOoE+2rOGkJ6Oq3SbSaqH+khYsTcZxM?=
 =?us-ascii?Q?RYeVIhEoHkXw2wr+MxMl6lhHyhSANw38cWAyjdCHCFWnP+6ASdFxLRAhWR8S?=
 =?us-ascii?Q?egv5I8R0u6JOUkX97tNHeRcOM8nvLGnjo5Xksk5AyCkkwub/bv3eFNWGfGJ0?=
 =?us-ascii?Q?Gnud58Ub+fHoPmXOzCE2QRkMLScV7ntsCxUb04qjbmV6XQhJkbLGvA2FB1zL?=
 =?us-ascii?Q?+R5xSV8Jb1ko0VEQc7A+DCYENRlZwb+++EPxj7X6P5CSE00qcCxM8Pq3OD3t?=
 =?us-ascii?Q?fkeaH32RxE9IMIUnkLc2e4YLZ1F8rNu5zVDyXny/sMVoGSdJT1PE1+p6hE3I?=
 =?us-ascii?Q?h9jbr3GRtAWSV7f/LcNYdHVUv8zXoUSXlEeI4c4PvOz0ewANq+eXhWlRiJOj?=
 =?us-ascii?Q?6lq/bhvjprWCEjLYguE+cCimBa0HxDTRA+yBCD7sM8NEGNKEQi+u1QOFFt4H?=
 =?us-ascii?Q?0Fi1bEEQzUtDS0Q9TT1oH/LwsFkIsxskSf4P2R90fW7jkfi6cuhqR5nIWGc4?=
 =?us-ascii?Q?fgerMETB3SDIFHVc4zLrgJzLxBuPkZUM9Q6nPRMvONED4R5aWontDmcISV8l?=
 =?us-ascii?Q?/36mGYZbvFGTc6YDAk8x1CazSzqtZjtTmY8TmcGnt1CLYHXqdxnZ3wvLblbZ?=
 =?us-ascii?Q?mURdI4qj91FEqsjbd49U1cFnftJ8ydmfWG0Nu0BtmwWJy8l+779Ge2Uc6tZb?=
 =?us-ascii?Q?wKcYoefO2aAfahYjodeI5YNo3pP1LjHRqU0oGOC0lJfPXb7efkje5zVnVuVZ?=
 =?us-ascii?Q?skNaokjxKIo74Wv4UgOtH/iqBvyHAVPHbSvJT8Mpeg2DWZZdUGEMa5NbP5YV?=
 =?us-ascii?Q?o5e360SO7SITUcEfptFfawys09N7hGpZESZbQF2xQjpESr5gDffz4SVAz4Us?=
 =?us-ascii?Q?Yg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d579744-755a-4e81-1772-08db56bb9aa7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2023 09:46:35.5972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GC4gsOqdYR1VpebzqLm0hMoBmsifDsg1hmkAg9VFpn3bqG1bNV5ZtuKSV4SdzhjS50AyhJytDpZaDTh2fNDUqfrQ1If55hMXfIoNh2XABJ1OMs0T9VAP41zb/02PN8d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684316798; x=1715852798;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SFKoO7pVieEMeKQSMBwbgAFx3ThawKP92eaiVMuzuls=;
 b=ZISlzYBC7GhcbERo1CX3uRstdg8rPtGJHlSa8Hc/rTUsI4O0wdi3jeCI
 QpoW5s2OepBALMI09dLgA/EUKVq4PWgVsUiBTnIhsrPrYL2MEwifGXDcu
 xHJSRgP/NzzYnhclhaaNqgn3fbBOsXnHfjSamSuFxOmsteLuREiUtLQkP
 q/AMYIfhUOFhb2M2ZE5puQp2VkX9y6I7mmqjJTAe4o9EARvBBHcu0A26H
 tue1GzXMZFtX0t43nzhP5vEK/WugNBTXFXBcmpiZ2vxKExHvd109oo6of
 1j8VewtYnAb0gW6em9pJjq1qTfI4dtcVWtaYP0CAow9OZoByYneDdUGWC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZISlzYBC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 5/5] ice: Document
 txbalancing parameter
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Wilczynski, Michal
> Sent: Wednesday, March 22, 2023 6:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v11 5/5] ice: Document txbalancing parameter
>
> New driver specific parameter 'txbalancing' was introduced.
> Describe parameter in the documentation.
>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
> Documentation/networking/devlink/ice.rst | 20 ++++++++++++++++++++
> 1 file changed, 20 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
