Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D04C2CB70
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 16:28:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2D88401EB;
	Mon,  3 Nov 2025 15:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j4fXP12YjL1v; Mon,  3 Nov 2025 15:28:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25551401E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762183709;
	bh=/P38Y3oBbEn8Ao0Nmb3o+4Cd4W3oa4AhMf+yCLeJCFU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uiLxr0OMl4NuCn6j6h06dbgRXCslt0Ywoq5wwyqRYOJlt0sQZJ6dHvVEKMC4laefH
	 aGA1bEwUvNmbZ0viC2XlIk8Ls8TeKC64yExabJOMY0hLzrnC5zuUijts+aVMdCT6/I
	 tkbIZoI+Uv9xNoSmmGY3nGWVPaiJzVKJ0HpBkxNej2wLqrqcPhF+DmTyOx5AqwRjv8
	 nSq9aC77W302OKBPVjegLoIcICXiedy3xQUOD2/MoE9dOShO9jNsN10vv4Q75fQDLt
	 2/UlAQCe4x/CeQ6LKb1MXEc2Keg4wh7Ny5A6C9ivS6jZUDHgo3rXOAeuiK4cihYRBX
	 F6nqR+FruJwvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25551401E8;
	Mon,  3 Nov 2025 15:28:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C671F278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC60C401E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Pixc3o2w4mJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 15:28:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A3AFE401E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3AFE401E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3AFE401E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:25 +0000 (UTC)
X-CSE-ConnectionGUID: vdcEnUmXSjiIBDxzRRoi8g==
X-CSE-MsgGUID: IGmOo+r4RHuf77K/ur51jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64412304"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64412304"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:25 -0800
X-CSE-ConnectionGUID: WreMck2YTyOD8CfIUkN3rQ==
X-CSE-MsgGUID: T+jfxq5gQ5epm3shwCgIFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="217532269"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:25 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:24 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 07:28:24 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gKXaKr0ELsDXY9XHnFUYR5AwleYWSUbaop+Kkr+GQyRV+QyVbcfGHnYAWQ41Ntu+vwhMs7zJ642gTsUs208TnrR5T3cIL+7JC29QDC2YRDK/jogQrlKiC6j8PjHselnkIiZ5Q6R1CTyubAXfZeobpxxlcWu0pDQCeQXcX3GMFStMnKBw9+UFW76xtwOGzPe1klVWKeYAPJEY+DpCyYF4JFtMvz/TdBRDh9jo5/MylTXx3rkRPf1ZxBIlxJ1Hz0kiMY8RUgCbhRdTMkUEQqGDPbI141y/oiN2Y3omOmNJJjgFvfjAW8RHJFl/Io68J4idfvfmTledDco2m+aclta6lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/P38Y3oBbEn8Ao0Nmb3o+4Cd4W3oa4AhMf+yCLeJCFU=;
 b=VobmhuPxyRjnQ04BD6jBf5W+5kok088A1m+sJzANFM+d5SJYjAxm8h5BC6qrkVfB5qIMvoD6ftjCSGJPxEYAI9UC6/ZVtaycPpxbjsW8QZu6qRgV4e75IkKkHLCUKRb1sT5pTyeYTXUoGWW04wImj2P+fMafG/Ne8M0Lb3d/3xTHpVFmPBgCDR4TEFzv6qxjCuPSS3I1cPBixUPKvkyrJqeyVniUy+W8f3i+7e0AaCkTb9zNt8871MHaooHG1x6Vyvfwck1OHJRkbLOL8Rery+ePj118fEd6E9fOdwUvsRxwoKxCm3qoLVPrKwPx6GjvoOIZyNkXGau7BcDPVjddkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 15:28:20 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 15:28:20 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 06/10] idpf: add rss_data
 field to RSS function parameters
Thread-Index: AQHcQuFRtN5S5P/TwUqPGrisAF92rrThJiJg
Date: Mon, 3 Nov 2025 15:28:19 +0000
Message-ID: <SJ1PR11MB6297DB1EF88352BFD9AB73AD9BC7A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-7-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-7-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY5PR11MB6211:EE_
x-ms-office365-filtering-correlation-id: abae53b8-1aec-4e62-b898-08de1aed9e60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1OdIzPf+edvIJWbRFn4i1vhAxZlCdhvpDIazjmnydI6CS/lEk1De8QrSU2Wi?=
 =?us-ascii?Q?Oj/Lbt+Ri/eWbylg/BrxKFm6+zIBn7UYcP7rJgdJ1v5nGMgqPAVDDTlI0wVk?=
 =?us-ascii?Q?RwcjtD39VBkZuOSc5WnighQsWiHo2g12D0i5ofQUcYip1uLwK1bOVa3SQlT7?=
 =?us-ascii?Q?0p1FkpSl3YC84SCNxiPVKIauyJPmgU6T1d8ZhQtqYIw0ILONmwg6ClNwdxqY?=
 =?us-ascii?Q?cMOd3a1atZXvC31ebpIdBwwZ1IlSO3dB2Ot66yTk9RSJV5qsK8Le9ru6d93I?=
 =?us-ascii?Q?E6CHuhq31yIFxDMiMc59dojtaA9sjcLRvXrJDdBWbqa0k4SjZuT+EIPeT9CC?=
 =?us-ascii?Q?QhWR+gRdgK64uBil1ZXb4A4C89be/IBW5UAje/rxiBI+H4r50Lank6tI72pJ?=
 =?us-ascii?Q?dysirpdixZhGcVlFjkpYqEVHKv1Fhi/4LKPfTomu0c7g0ggOPY7nsBdKoYgd?=
 =?us-ascii?Q?o0c5MYSv997EXBdKJ5G9lfR2JBbBZXo+zZoSpNJIC0BT9r1v24Pd8z2cJtTQ?=
 =?us-ascii?Q?J0voAnnPgtXMVkrj/6qrIr80xOTUkc1zDmQgjSuT4gHVBk5iX/YnBoYVHgPG?=
 =?us-ascii?Q?SWL8t1MLCq5m6bI5vfaUWa3FFL7VfbrlQJVn54gbpjNjpXnDnGquT+cgL0v9?=
 =?us-ascii?Q?NzcGba3ngoocdb7wkqQ9D3QneucM72B4Yqy1V92rnkjGVjT/ATp4Fppetgap?=
 =?us-ascii?Q?tcrwfmRDdJn8r3S58p/vg2MIiH7Ty9zAErVavXZthPL6U8mzb+Ppmg+vrUUu?=
 =?us-ascii?Q?7s4YDz/N4mAKR3vASrEvt4TxWBMwarD/BRJqHyb5uy8hofxvHUPMNyGvR069?=
 =?us-ascii?Q?dPPPepF9f2vy4Yk8aVEdfjcdPeqqveDGkT9208S+Yri6lmhJm689KPuirTkT?=
 =?us-ascii?Q?tYGYY2TY24EgWt/2e+UUzWSa0r8OYJk6EQ140o567hUVBiwqGeeNgkMW59tR?=
 =?us-ascii?Q?w+LDR0yiWUyLUDth3OBUvLfnpeAHPCpJCPoHHr0To6nYYWDYNu+CB1bbC8qc?=
 =?us-ascii?Q?fbyoCr4YNphBLD32kL5JVwweD1ToHSU3XDF8K/PLkQNd9GmxGgwmOjnY/2Sw?=
 =?us-ascii?Q?eh6f2Fan9rk9+A326skWqXautBB24NHPvKPbKDvIMLOL02JUtPTKbgEI4YOR?=
 =?us-ascii?Q?Gpdrro4Pl0Ikvmb/EYOEsNETgFbbdxuV6xIfPZ7I355Ss+u9JJIJM/cxPrtX?=
 =?us-ascii?Q?yE/zG/e7bFRRkAc7Ay9YOIUHdWkkrqU8pxsyjTwDT91ykW7QQLi4mCXiwMNC?=
 =?us-ascii?Q?kmUwhg3gIoF7SyqjLi6GFr9jadH11oNZI0eeusZ8tfuBNXdyRIr9QVdrakRa?=
 =?us-ascii?Q?sgO+2jCffNMyij2yj4gSZlVqOD/DiWiv2KOtV/TSP/XGFvYTbqmkM5bIDUDb?=
 =?us-ascii?Q?BUlnu8+0e+0xmHwpP97kaLgu9T9CXeqxWsP5CDLTQJSouSEnabBtwSpakqRS?=
 =?us-ascii?Q?9E8IMOKNonfQTwPEmPMYEaRQlKvW72H/M6wWZhesa9CLuhId2Rw2+IQMf60C?=
 =?us-ascii?Q?70VK6B2LMH/jGivrAMYGdZJw/8VvKZf+pBU0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?s08YfkcGit/ztwBae8d+9HIl9WO3oCeibBQv0HMbHXCv6Pymf13uzqyGFgki?=
 =?us-ascii?Q?N3cmHD35NRxlUiOz2fvIbgDjNBFdcpkCUSdWG06797nvUnlr7qTevEt011oM?=
 =?us-ascii?Q?Kb/XDiqND/GHB/FwbZOhawXbxeJf/jhgrhp0zMOWiyJiAfDYEMcwAv13S0zc?=
 =?us-ascii?Q?exb3Uh2mPuuHoFsO6hyhgCuX/A+Qkp6jWfVmJSixg/nCW2QUzTBAbj1OcrwH?=
 =?us-ascii?Q?WoadHCAbJJiU8bb6LDkpya3NWnN/w4cS2NPdxs9vVnEGwUddjIorZNJIhd03?=
 =?us-ascii?Q?Go/o+lpga1wbnFstH9zzgE28NkK8nj2f6ABZP8Ip00r6NKNEsqCljf4BFaV9?=
 =?us-ascii?Q?cTCgVb/QRRZE+EKquTyRYJt4qNqQNhJ577IpwLJd2HtniWDZftjYU15aRKEu?=
 =?us-ascii?Q?n6+cjOD5BXCe5ZFnwZZdEXk0Mk6+pxfvSuv6KFd0OIFjD19ruyNkJKBa9IUc?=
 =?us-ascii?Q?5W/Vadj8TuV/cfuIkVIwEyEE4rdc2ZxfqKWgZgJ+Km/qGheKTbcbXYsXwVfk?=
 =?us-ascii?Q?GCuhuA1GuGHQpK/WXqp8ynCXKA9u5XULxrZyt6yR5AN52VUmNSEOXRLq1yh6?=
 =?us-ascii?Q?nQYJChJYgzP0L0BPF1r6DI3E1rBiN3jcGrIQb8mmnC7XFXsbmn14pyTJwjiq?=
 =?us-ascii?Q?kBawHuWyS75TFa07ZVftF8TfkWL37/UJD9uoJwFcV3cxxF+otKXyN8LA8OcD?=
 =?us-ascii?Q?t/BNKXUI58LH64r3DonOGf/A0YcIsBTcekpJ+XmaxcfJpiPq3EZlFJySSnDD?=
 =?us-ascii?Q?7Zbs04LQoH5I1IuWlLLrTxf044Y4yvsihBTY/8CZBWimHikHZu4Zw4Lnr/O4?=
 =?us-ascii?Q?nBPddOXby8BYBc8PYn0kR2OArfFW5mw9qkr9MIcwZ6IVtxzPW+xzNhaLp5T0?=
 =?us-ascii?Q?qlkIGhOqzToZEFRrQmOQAD20V77R/4veuobFV69NQzuOXF65FulsTIgmixy2?=
 =?us-ascii?Q?28jDzsukJ9e8bvJnS9qk/EkPq0nDf948mzIFgaRzp22BRtBjZT1CAwZzIWKM?=
 =?us-ascii?Q?nAsAwvGXL2Z0Ib9Udzd74+dQHg477IkpZNncZXOmoejLQabCo7P557XxHxao?=
 =?us-ascii?Q?k9Zlvmi2LaxIl2SpoV5lVDxThFDzqFetxQdMfx+low8D0Lthm2e4t5yE5rp7?=
 =?us-ascii?Q?LKBVFS+Z3CLfyVxaMU9BAm245WJUy0mLD+g7MbOX1ll18NHwh3qlGzi+4ugY?=
 =?us-ascii?Q?OkMNW0VgmeG9RfJKhX/rSUUxagG51aId0fzFTbRxVjzI23CWdPriR3YUqNAl?=
 =?us-ascii?Q?3nu5eIX0jZNZl76Jz+xFEvtYSt3Uj8HrdkDPW2W1S0Eftg13B7piMyO0IRUH?=
 =?us-ascii?Q?77NGKyVQxeEtQYuX4HmbQdNsaeeSyhoFoFLamJSD8nXcvoGIxr/ihAGgWHh5?=
 =?us-ascii?Q?p2SB44sLc90kB4umves0tRJMCLwpvYJxuyrEoMkanRQmWrNBe2NVNPaOciZb?=
 =?us-ascii?Q?I/DTknrQTnW3HXp8Ide8yaQg+fSVpQ4OErn81SepBm6rVXwF6Und3RCkdSgz?=
 =?us-ascii?Q?ro2yrKSgouBJIKguo5Z6300E7kvF3puMbU+Mhq9taHwsH0MhF4mVHfhJXgW8?=
 =?us-ascii?Q?Z4AM3tqg7qO3PARN5MJpdheAjJ3jKhgCTsfXarOU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abae53b8-1aec-4e62-b898-08de1aed9e60
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 15:28:19.9759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TFxuM7hybdRE7mng9udg1GYHnvAtPBBzh4nbN8dBkx/XRh5f434xB3Tr+AdKobIh16VXU3McLUuyAp9P+dnLHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6211
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762183706; x=1793719706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/P38Y3oBbEn8Ao0Nmb3o+4Cd4W3oa4AhMf+yCLeJCFU=;
 b=RVwv8TS+iGKczlCOfnT10Low811bK10BOw/l63GfKYINDNthOgO/3Xnq
 dIxXCpoXkkxmvtapLM617vDT/wyGlXAeFJiNB+QsSK0xpuV8JixFYTajg
 VNFFk3e/2Y8Z/Ir77CCs6r3FkIKKQrDE/XbObjgTt/7AwH3WNP4+0snPc
 v+oMbVQzxD7lOzN3MajoY/veCMy/2tjtAUeEynGOjYmp5znaDFJW7C73R
 gQ8B6f4it1QEX0mE2yDYa3lZt4QKLukD5ES4PAQQqm+IW2nSB/nvo5uBk
 qf7rE+OPlY7Qk1Iq1Hw/hw994SomE7OK0tql7ehT3j1P7fldoNWgjHZIZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RVwv8TS+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 06/10] idpf: add rss_data
 field to RSS function parameters
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Tuesday, October 21, 2025 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 06/10] idpf: add rss_data f=
ield to
> RSS function parameters
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Retrieve rss_data field of vport just once and pass it to RSS related fun=
ctions
> instead of retrieving it in each function.
>=20
> While at it, update s/rss/RSS in the RSS function doc comments.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>

