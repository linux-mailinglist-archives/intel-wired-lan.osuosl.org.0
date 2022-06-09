Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5B554454E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 10:04:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0625640201;
	Thu,  9 Jun 2022 08:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sk4zLvEJ2Ghx; Thu,  9 Jun 2022 08:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 019BE401F2;
	Thu,  9 Jun 2022 08:04:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81C341BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 08:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7035883490
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 08:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7kNp9_wg_zr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 08:04:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F142F8302F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 08:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654761865; x=1686297865;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O3C3pN1NF3j0+8i9Oi599/Ta0S1WFQ19YIoIxPuJyF8=;
 b=IL6pddH0MU/NzseSHryvTLQI/KEFpzrBlKjbwR97+zIa5lwcqQiSSfOv
 BkXsM0mQlUFA4604BJDsCgur1rq0PnAngKNQRHWkGrnrZpxHUO6tri0xI
 Xf4BaRPOAPUZkcguRRSS9T1x5bPzgTm2t2KmY+kyUtDTXR3zXR3WpOsjl
 qVdj/eWJWzKBxUnhWIfE8aZ5aoQpRzBnWB8E/LSwZUZhjOnoggIbSi9uL
 6i+ss9GOVjpEj8GreDQotNIC1s851ge8YgnneMGNYMTjn9bJioI+voJ7c
 oqyidVSDrn6fxJpcEcXKY8EnyMBan3iu/sfEPifJNuc2kV/yrNOC66DDt A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="277218266"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="277218266"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 01:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="710313386"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 09 Jun 2022 01:04:24 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 9 Jun 2022 01:04:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 9 Jun 2022 01:04:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 9 Jun 2022 01:04:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j0ySBouutSguLmbmmDhCNsu247LdpIyywKng0isgCB+ShJplRt0/azFJn272foXEHJF2mvcxoOfnuI1zQoAryuyYr5FXEg8ERGZ79urWKP0I/qA5DodtDtUAd6hld7xsn7pu968/QRlD+OeJjDn+pdwj4hNxyFSHWB18YkH8ZnrZyeFgrcg1KaWtRi15kzioNVvinTyZNa7Nkxw5/HnR3nZFJEp514qy9yg+DMEDY5HwtevnhzDt+B03vRfDc0UIK3fqYu0GeEmKPDAnOst6QLe8IIwDnYYomUIQWNbMqfMWsPTvJoTiSVQkwVeubctz/UE1qorSo9YYwsJ7cEJHUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O3C3pN1NF3j0+8i9Oi599/Ta0S1WFQ19YIoIxPuJyF8=;
 b=Igex0vc0ttkRwOeUMdvk9QLFQMRl9psek0CHCGvdwD8/GCbU3g/63qBxD8BsEEzzUJH8LpkUuscC2NoDyzTLIxyYUmfoAeTUSIfbSJzIPAQPqMw7qcTfvrlNfSsDMCqeRqtRup9qYjomQ6qDj+zRgPzE/Fm/Fyu7O2o4EXrAwc2hAlLneZxwlDR4PNJT+DUA+bHthw98Yw99Rc/9SgvlYWYAVPfd5wr/CLsE4ipY/Oo/S6ul+YJY2OspgtwUjwhISt9NQKcvkqMOZc1rqRVr3J6z7iMNKQB2q+w9ATMyiG4ncmM4rNwdY6b0hSXbBMwcS7tyflaUpykfnAOqRsJnvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM4PR11MB6550.namprd11.prod.outlook.com (2603:10b6:8:8f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.15; Thu, 9 Jun 2022 08:04:22 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b%4]) with mapi id 15.20.5332.012; Thu, 9 Jun 2022
 08:04:21 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] iavf: Add helper to check
 if iavf_remove() is in progress
Thread-Index: AQHYew08KY5YQ9IukEemkQe3Aa8U3a1GHsGAgACaIQA=
Date: Thu, 9 Jun 2022 08:04:21 +0000
Message-ID: <DM6PR11MB273109F1E71282AD447DCA67F0A79@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220608075358.2983111-1-jedrzej.jagielski@intel.com>
 <65fc54d7-b7f9-8782-a7dc-44b949e9f185@intel.com>
In-Reply-To: <65fc54d7-b7f9-8782-a7dc-44b949e9f185@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb55bbda-400f-4ed4-0eca-08da49eea966
x-ms-traffictypediagnostic: DM4PR11MB6550:EE_
x-microsoft-antispam-prvs: <DM4PR11MB6550FB9A8C6A8D2B50AFF4B8F0A79@DM4PR11MB6550.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dc/ki+ZHgRgNzfm/9W9UtGeNHclC5zqKrikw0PHaRSIcYxHqgAwgRI6StRc53ICvaQhO6WBWGlQz9YrxbKuIybslriLBCgg/rBK2ia+u+2eCGpEfpV5PyleDrVrqESCdS6oAEHGZ8YQnVhldRU1205h9WiPeeFUS0FMF3DEXv/+kQFwOSmuantREPkLuGBfwbDcZPoj6VgfzuQW100frn4OZRIeDkmmZuYmjdP7r1+hcqGYVcPxbxEidi6C7m1PLAEJ9vmxnZwAZib4xXxSTDupTA4D1QBU/ZRAYt5fF/CT2vejd5VoBtFa6KRyzixJ12PXRPdERLrN0LLrkmPiobkQETORV2mQcnrwLkWvS0yKWF2lruIAWF+TT8p9Z7nLm9G8bHPfCuXG6nB5iKcfcPCIlVsSF/pERRCMcRHlBJ4nUmtAldck+mE197P+oBI6lwe8vimIrTh20q7SEOf2fWTiGqavXj2g9tSasX5KJknSvlA3kifVzH0e/MWf5+sKzg+p/1mT/znCv/C43E8hDz3D3dGSG5V6pnQefbMchVjG4h+43ALJaPeJBtlQrMjw6m1RorjM6qTEE/kvokpUg6d3pti4RY7Sq2TTUpaVrw3F2gZno51DqYdItxUsapVK+MkGeyvu3pR4z/l2/6wVRNoAEG6Je9FHAosxYdLsBlKOuWo4A+JN9fn1pzipSEQNhGt2n4tndYQifOV3Mw9drr1VktCpGrZO2guFrAQaQNMy12055HX5Go1cyPDAhPG7NpoCLyQCCI4R06Fi9OcGDGzFqRMpkju/79OXarZGFAmo4wPQbnLPRsEt1k1UINWQsuzVXyA0TAYIy4bXO1Yle4w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(66476007)(107886003)(52536014)(86362001)(316002)(7696005)(6506007)(508600001)(71200400001)(76116006)(26005)(45080400002)(9686003)(66556008)(64756008)(122000001)(186003)(33656002)(66946007)(4326008)(110136005)(82960400001)(2906002)(8936002)(38100700002)(55016003)(66446008)(5660300002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0RXWGQyclBHZERRejdoNDZNYXgzNGdxNlpXcjN2Q2I2eG56WHc5TGlXSnRz?=
 =?utf-8?B?L3NxeHRKd05zb3dnR2ltNjVTc1ZWbVV5NStUS3orQzdwbDdPNzhPcmRCY0pF?=
 =?utf-8?B?SjRrUVMzQlNiYklrOFEzVFpLbFBYK2JDRm9kM1lzV0orYWc0K3pMbFRidjIr?=
 =?utf-8?B?Y3NDbXhVRTJBVnNGMnBhWXhtUWt0SU10bTBxUEQrSWRNSFpSR0dweVpmV25x?=
 =?utf-8?B?dmVFOE55ZVNaTDRNcXR0aGZZa0pmOGdzNUFESGY3bWlkUDl3dUpNYlg1OG9D?=
 =?utf-8?B?RFh4Mjk5VUg2NUlxZmtRZVlsY3Zpam1PSFl5cW8vNkVGeW1aWlFYQ2gxRWx2?=
 =?utf-8?B?V2dCbFd4ZUxqczZIYXVzelAxekx1aXVuajNzWHc0R3hMWk0wUU94QjhZRi9M?=
 =?utf-8?B?UnJCM0FFSlphOVZOcG9zbGYwK3VHV3RuYlNJVW1ISGlCSDhhYkxVSW1JVit6?=
 =?utf-8?B?UURpSFF6dTNOMS9zYjBQSHlDN2Z2QzNsNmlOZm92OEV4ZFNFN0JITXArUVpr?=
 =?utf-8?B?amZwclBCQ28wVU9YS3FCWEVwS1lONGdRbGZCbzJudGRGcXhnRjR1ako0MEhu?=
 =?utf-8?B?ZGJMbXRSclk0cVRBdnFldnRaOUdkcW1LMGF6dVVjMmRTWDk2ejZIdWFIUXN1?=
 =?utf-8?B?NkJMVGdrM3RQNGtGZjkxck8yVG44M1ZIcWVGVDFQZ3NZWWtRTFpjY21qQkxp?=
 =?utf-8?B?c0F6bnVHTWJTWUpUZkpQZ3hDUDZ5UW9KNks4YWJ6ZGJGRjBKMUpFR0tYWStN?=
 =?utf-8?B?d2RjK3FqaE01U3lOQ0VLOVNjZUNRSmwrd296VGNJN0VOU0U0bkE0OHVsR0tW?=
 =?utf-8?B?T0JJMjhSUWsvNnUyNkpxaXd2bkNoRzhyKzUwd2hVRnZHS29ZRU5JYU01bVdO?=
 =?utf-8?B?SlBmTFdOSUZzZHBMYURTbFN1QTlEamdRcCtpMkIwUE1hZWxMWFhEWUhIWFJ1?=
 =?utf-8?B?ZGR5Y2pLaEVWOFg4MU5EamRES3dRelFIUjQ3MkU4K1gvM0FabHZlZE84QXVi?=
 =?utf-8?B?VVBKV1dRdEVwR2hvSmRPZ2c0aWpYUENlSkN2SmRHeVo3WUphMHFYajJ4WjRR?=
 =?utf-8?B?MHFPdjdKSUFwOHJseEFEdzJsZWlwZEdqd2djQXpLUXl6cjNGT0xucEx2eE13?=
 =?utf-8?B?Rm9ZbFFEM2xJbWRSbFhyODcvNFNIamJGQ3JJeTNlRUtOR25qTFdPNXB4aU5G?=
 =?utf-8?B?cm41dm9EYThzSTFpOW5Kd2pKUjZrV2xmd3Vqcnh4ZE1ucTZZYUl1em1HQU5J?=
 =?utf-8?B?OGlOdzVzQXJLTzAxNGMyTEo1Z0dwQSttVzJ6Z2R3RC9BN0JVU29oVnI0L0lw?=
 =?utf-8?B?VUk5bWw4eUdsUkptSEJVejMyaWs3amU4MERhSjUwZDVqN29kaUZEZTNRQkl3?=
 =?utf-8?B?Z01NcjVFT2Q0NXRicDRXc1pnMU15RGlIdnZWdnlGWm1oYjJ2WEt5QnV4SFcy?=
 =?utf-8?B?ckZqUTF4dERhSFZjeFJsc3dOcVlrVVNFTlRyeEpZRWVtNU8wUVNrUU56MFdy?=
 =?utf-8?B?eUxON0VPUmNnUGs3OHV4dHBBTVcrNU9FUEppVWh0Y0ZWZVVLaFR1RitES25m?=
 =?utf-8?B?VWhNc1I4K1FpM05hY1VidkhQbFRYcVlNVXI1Kzh6QjRrRTFLMm9Mbjk3aCsy?=
 =?utf-8?B?Q2w4bUErV05aNVUvYWZEYjBUOWVNaCtBS3pTS2NpL3VTUkkzN2VjSlkxcm12?=
 =?utf-8?B?bVlGbVVpTUwxT3RKdXNxU1R4Q2ZERDEzVE5lTW1icWdrUWpyWTQ3UFhQSzJh?=
 =?utf-8?B?L0lFWFlFMlRDL1B0bDNINkVqaTdoWHdxUmtnNWtPK0ViTlZQMTNNQ3ZYdjg2?=
 =?utf-8?B?QUU2eWFuNERIcFRqUmxHS3RYdnhwWXVPeE9wWHRsczJQeVFmWDhrSm9naXZr?=
 =?utf-8?B?cGJBUUhrSFhQUnZkMWJsRncrd25raFA0L3pFaDZrZkZXVHNxRkt6a1RnZTYx?=
 =?utf-8?B?M08vV3BNMlIvMzdjUHBNdDZMMm0wRzdISHIzKzVOQ2ZyeWtwdkdXRE1saXJL?=
 =?utf-8?B?UWhudFZhR1ZuL3hyZWVUKzlsSDVOQ2Z1cHRBcDRndmZUSWlERHJDQ24rRU5y?=
 =?utf-8?B?b1FSQkVIQ3RpcURxa3dyaFczZWhRQ3pLK09OWUpjWUtvRzRybm5OWm5YOFVK?=
 =?utf-8?B?MDhwTDFhd2tqandwbjVDTFk1TldGckdrOENuZ2hoNVV1ZDlPWUVwTUozcHg2?=
 =?utf-8?B?VmttOEJZRzFrcmRkUHcwUUZUR2UzazBaV0ltM3lEU0ZtWEhKNCt2MURvSWls?=
 =?utf-8?B?aGVYMjJ2OTJzbEl0Nmd5Ri9oOWZzclYrM3dqMlRxVWR0L0Z0WnhRNkh0anVm?=
 =?utf-8?B?bDIrYzBpa3c0eUNZR3djbmkvMWZFY3QxS0IvaUpHcExHOFhIZCszVTZnVW1G?=
 =?utf-8?Q?NGTtIv8mc2ygGDAM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb55bbda-400f-4ed4-0eca-08da49eea966
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2022 08:04:21.8959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uRorY6cdRGh1vVJKuuXw9abN04Hzwn663iy/Nd+VU4K4tjJNYFo/7IZ2e4nR04INsjNfXoyS7vFzTOFNdDATFII7QnwJDfDiFMQzhHNqOe4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6550
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Add helper to check
 if iavf_remove() is in progress
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>On 6/8/2022 12:53 AM, Jedrzej Jagielski wrote:
>> From: Brett Creeley <brett.creeley@intel.com>
>> 
>> Currently the driver checks if the __IAVF_IN_REMOVE_TASK bit is set in
>> the adapter's crit_section bitmap. This is fine, but if the
>> implementation were to ever change, i.e. a mutex was introduced all of
>> the callers of test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)
>> would have to change. Fix this by introducing the
>> iavf_is_remove_in_progress() helper function.
>
>If you want this to match what you sent in the original series [1], 
>please wait until the net patch [2] is applied before sending this. This 
>will allow you to change the __iavf_setup_tc() call as well.

Sure, I will send amended version after mentioned patch will
be applied to tree.

>
>> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>
>[1] 
>https://lore.kernel.org/intel-wired-lan/DM6PR11MB27315C25DD0EA44B086A5501F0DC9@DM6PR11MB2731.namprd11.prod.outlook.com/T/#mae4f93d5c5fcc6c3ef13f9e1af1938558f1e975f
>[2] 
>https://lore.kernel.org/intel-wired-lan/20220608095337.2986633-1-jedrzej.jagielski@intel.com/T/#u
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
