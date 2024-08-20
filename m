Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E40B95877B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 15:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D892F80DE7;
	Tue, 20 Aug 2024 13:01:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oL3VioHQuJEQ; Tue, 20 Aug 2024 13:01:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E09F980E28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724158889;
	bh=x3sAgd+HsYhCA1HxyH7OQNBnOHQUVpfjMElgC+WqqbM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=emw2CJ2TXKc5cPDicKzqUq8iXlan33ZjCdLFN9/xJxJstjVv3OSuPywhw4Vd7FxCA
	 6G8pGeSfKEOuJ8kPQW5SI/omhGhHBVIP+aSyDEUEQDMsbnepiDmUnzvEWkw4cn3sIq
	 PvDb0+/k3AaJ258UY0k8undg47eoWMDJGoBOxGjkkZyYR2DGe1LNWoUYaTT19ub3Zq
	 DYXbNeiLlchVhwgNCotYU/GS3O0P6r0BdaAe2A2IY9R2IbSKzkJuN/MATkOamfs8fo
	 yFQQDyu+ZJpeLHHvZci2tIkv4I493uLQ7R70wHg/aUT4GXv7yU6n0CTKHwhtWOklOu
	 r9sOu+2iv9NHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E09F980E28;
	Tue, 20 Aug 2024 13:01:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A30D1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35BF5409F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:01:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZUqsMhU9kj8Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 13:01:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 24A8E409FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24A8E409FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24A8E409FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:01:26 +0000 (UTC)
X-CSE-ConnectionGUID: 0VjUc5UbS6Gh3NovJbPy+g==
X-CSE-MsgGUID: NIvH2qxbS0i62DyWsl0ILQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="47849546"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="47849546"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 06:01:15 -0700
X-CSE-ConnectionGUID: NnradvfNTeW9waAIXD0Y+g==
X-CSE-MsgGUID: vLhTKaxETFGjPkJBapKSqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="61037064"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 06:01:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 06:01:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 06:01:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 06:01:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iwLlsQEF07B1nfCrwSQnMGGwQH53Hf2uQxubfuXT9ojWtKHsYI9LsMBFOWZLyQ+9XiXpFl+4QIf1B3fYInpFSvk92gvcVJbvmgteEFUwAVmdEAjXoX8Df11WVut1fKVnuJXatNMiIQLU2rVjKHgQXmX5tdDo5zlmtXpRvm9A7fvaMehbfWNgXJDmz90E1X4WePAzlRr2rzBD37E4KGKQ/PDmtsvedy6DOvzd3/c3y/UVzLXax8EhI6XycSELHSqFwrtJfnJDW9V0Ul0+WGtGKNk1kYsoMAWfvo0TDwGaH25HoCbg5KpUKGLKsYDD56b42etFe+WokhwVYzKZwt5tgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x3sAgd+HsYhCA1HxyH7OQNBnOHQUVpfjMElgC+WqqbM=;
 b=mSD7bdkzUVtTWhlwVvuS5xWZZbYey+CMWfyaVOKFMvXes7dQS9Jc5vqhvwge9f4n9Iq5qZAfB90OBMxaxviWTtnVfvsxmbItHRGpf+IDNA+422MHxaIDi40ci3c6vtg5AcspYj8reiWGqZk0Q+7cYB0y/sXcZ3vecGwVYXJPD8k+wQmuXeTW4Ml01yUVr4fvvMBvt53zuvgvK7ok6iedcb8+pwXhnCRB3/MJMR0RlQ8g+WeFJXTJ3/fL8Fe9/kPnN1GiL4+jaBeFyBItPXJxEHkVL/muvoFrvCEWooBR50KJTmeIPpQSdwdAg5FHJPwS2QggJJWjR8CnV3zYseY9aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CH3PR11MB7346.namprd11.prod.outlook.com (2603:10b6:610:152::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Tue, 20 Aug
 2024 13:01:10 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.7897.014; Tue, 20 Aug 2024
 13:01:10 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v1 1/2] dpll: add Embedded SYNC feature for a pin
Thread-Index: AQHa6YWetxpyQwER/kmdLN5gT7vM5rIf5OqAgBA6X6A=
Date: Tue, 20 Aug 2024 13:01:10 +0000
Message-ID: <DM6PR11MB46574D49F2601C4E3538FB779B8D2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
 <20240808112013.166621-2-arkadiusz.kubalewski@intel.com>
 <20240809211549.28d651d7@kernel.org>
In-Reply-To: <20240809211549.28d651d7@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CH3PR11MB7346:EE_
x-ms-office365-filtering-correlation-id: ba66a5f5-2baa-4c57-1474-08dcc11829c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/RIH7sHMaF7oiJ1qSiYmSf6kUtHJ6c/lyzOkDcyR53TU1ICOdeO6im/n+QtM?=
 =?us-ascii?Q?ln7DbkeNnX3Bb4TfipAlq3mVq798CtPJLFQDbO/CdrVGPLTyN+ZOJVNbwYqR?=
 =?us-ascii?Q?FFSDynEuEWyCpmglK+k4qq5ZuReVm22bSrxMOWqbnHrjtm2xV2vWLthp5squ?=
 =?us-ascii?Q?3ZkYX5pzLHnm/PU7lBt4VhF6vJBgmJ0ShSz2xrdfT4UJl1Loowh5YAXp4ucD?=
 =?us-ascii?Q?tpwiwNi7f/HR013esKEWUXIYzsFV8IKB5KWyZu4XkQcwa0sBF7aR6B9GVKGG?=
 =?us-ascii?Q?zrEUtnjTuTVmWYE4QsYj7GmZuAybseDwDKSHKcyf2GoXXfHGhVQ0kdbSp840?=
 =?us-ascii?Q?Du30xu5EAmXK3WOGNGMbZ31JB8pKbiGjTMvBqVr93y59rB+8F1EKTzhWjhfW?=
 =?us-ascii?Q?zTbWTmJaeF6H5Se15ttDKVmrVsSkufMBqJh/CmDBO8UywIGg37DY22ZIanPy?=
 =?us-ascii?Q?tDJt1M5zbUIKlz9beIQIvuJN0Z+r1UwVimgoZJ+o9XwVlkUNQzOXxqAuZGTg?=
 =?us-ascii?Q?8lXP9ZQdOq7JCN2ilLT+CTU3L/ggpyF8P5RLyChwpxPMbAb+H9nNGW4Y0MlW?=
 =?us-ascii?Q?Np8QVNeqHmJfc7BK3jpinyhR1IrmoQMn0LGNjnz9G8HTPbabD0agYJZDXTsH?=
 =?us-ascii?Q?sunrpX4mmhgZnGl6AWLUdnmSXy5EWewXdgnm3h37WZYVtzyp+ZhBwfQZE3kw?=
 =?us-ascii?Q?U4l1pGpXZKWx7yFRFE6dlMkRZQB1d+dpl99KymBnMeDaTNgWjZ7LXcG/j9DP?=
 =?us-ascii?Q?3w82US8fJQ4IuAq9OST7wAJiXrZYss/TFdS/mOi3UaHU4MbQxuiEAjOm8VbL?=
 =?us-ascii?Q?jwMPkeYPAapqCgxyZUVdbVJNE62i7DPu25bPeFa/L//cozbEBvIx5QYehn2w?=
 =?us-ascii?Q?p5DxaKow3OjV36Z0Yh4cFSbPliZvm1GI7113wX2ndXUuQDfkQfSW0unS4DmB?=
 =?us-ascii?Q?chvL4xuJdhCg2i2kJrsASCqfESP5euuqqCfWDxMIzTHGCGzq7zutlXt3eErl?=
 =?us-ascii?Q?ZwSjuXJxEHm7+i5CqlI0oy6jVTe+uYCmAmcrqZ+rcDRR8A075iUUmgEF6BKg?=
 =?us-ascii?Q?kk1RLAM01iZneRbgBxLgpFL4vyyU7pkepX7xhgRhVt7ArDBFTUd75cKz0Co7?=
 =?us-ascii?Q?qe2wvKZm7Rf65ADbd0JfTDvMpkxaQYutbtTzEexzp3wnKFBajHz9pIZXYa46?=
 =?us-ascii?Q?/NTzeqe/LfT2SYyHugu8Ltg7l9XAO+h+SmXId9R1ZgDIxIWXOi/KBDyNjypP?=
 =?us-ascii?Q?J3QIonyV/JWj0AUNvus/BZ2p/6nUeFut4mfv3ljx4GBpXe3QPRYG8SIo/5H/?=
 =?us-ascii?Q?3NNpjTeHXv/Va/ibRS4JLQa1scwy0q+vtYGeVRh02q86pyBLdieCT14dlyS7?=
 =?us-ascii?Q?LX1qH5NIUxAzuIBZ/qAFHe5wzEZ69mrMJcTry0QPyD/XaR5giQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?STtKaCHQ45yYDs2OgZhTDNl4JZ1fz2ewDWh0aO8dr6mFMMlN0pa4rXJXSAvY?=
 =?us-ascii?Q?I75hpSggrwDy3fs8obiYjsYFHMNuAQclPkMxnenuaqWdoPtLc7iDNWlyCuhB?=
 =?us-ascii?Q?S+Fu/4s4mkMvlyOvu0IYmdHM4w3hzRVusNR7n8oSLbN73AZhxK7uTkFey2Xs?=
 =?us-ascii?Q?ub4Y8lsJ43h4Vq1yFgjrEdxOmhY2h/VNzXKJaxKya0lCKd2ADPu5fHm3rdJK?=
 =?us-ascii?Q?W4ZJiu64t3DtIr1Rle+68np4M5cyVKVMTHqo/DGg9pWae58O1B8WSQeRm1Hp?=
 =?us-ascii?Q?S0IoiRYu/xcUyCjPyJ3DU+q+5GQAKkXVe8C9ssLK8yNgyHQNqfeSDhJe4DE+?=
 =?us-ascii?Q?3NrWQ/mS6hDhOCHUKXh6bvsbk8XZGqm3hHPSdGF9tK2YqCpYV0pWAxeyHN6G?=
 =?us-ascii?Q?dZwv+tNWG5vOH8mOFEHj+lBQO0io1japvfXb8UgVDatalwrXQI1qcxNemK71?=
 =?us-ascii?Q?nz5ilc2L1LXT8NM0aCLLlp0Lr9ysgX/SE/+tuGtpFOhWt0nGrdt5jCGagI4P?=
 =?us-ascii?Q?ens7GsCTQYox1prgaXQSn2WrFTO4c0UvR43AEWl/mhlzMBpWG9frM/j3u5mN?=
 =?us-ascii?Q?58opdFPuaAQId0q7tJuoDBpT677omUTo5yKx2Qmcq2j9oVxXNEABnXjGDT0m?=
 =?us-ascii?Q?1TNkvJkjyvEAznmMi05eMp7+e9LOF5/YpnCjF7vyiI1MnxHLfCvqc3oM5zAq?=
 =?us-ascii?Q?th6YFT8KQmUq7ZrJRv1DlaiC3kqoVs/mAMU/9SNX9Lf5RAcB2bmiJM45neZN?=
 =?us-ascii?Q?ZE6A3tv0CpQcOnj58HnV5WfqXAqoHlkqqsW1bJNQUroq514LwcLFQnut12Nt?=
 =?us-ascii?Q?SQ2AdKKq7OzLjj61a2XpDiM6zL5AVJLX1WQCUv9dB72XGdQaZYzBh4rn21gN?=
 =?us-ascii?Q?FiZPhBwrRa6QmVZBNHsBEen861lrWV3rinKRxCzTGqEfg0YnCYYPqaamFKuI?=
 =?us-ascii?Q?2v1HvrVS3uFoNmLm/UTlVThBCtJ63qghbzpEgCFbn0LXKx41neoBDAjPNR0e?=
 =?us-ascii?Q?6zQ3Qw983sG27wxGidrMilzqQ7l9iz4aTZILI2J9xP9sNqr3kRFBh6u7lSIe?=
 =?us-ascii?Q?GWEuWLSBHxAwIih8BXPYbg+sjXafmhfFMlKlm5W2nqLlWSEmP1zxZgZVeBPb?=
 =?us-ascii?Q?i0N9voY+jI+LX/bUCfq/apu+wejCGI3bpLYp9KKGHFz9xoLBQV2rdHY93bcq?=
 =?us-ascii?Q?v/dX5YGUgWJ6AbFsfuVvOBc1ClsrMy55Jcbrg9KP9YuapE8/Ji9JlZwbGjDc?=
 =?us-ascii?Q?s6hQv/fZul1hAyAPFq9yQmel54Evsrkp3Zn4lH3sU+NNruzgUYlendX3N0FG?=
 =?us-ascii?Q?LY0ITiwXpsT1lk6Ds4DqFQclX1+/TyqMh9p0CiW+9F7d3ZHXEYVnixvCcuKa?=
 =?us-ascii?Q?cwdA5j8flnN/9SE5BnSNMryQ91QzXxO1E7PIiZVgEpaQJfbjTa0EbvLKk/c7?=
 =?us-ascii?Q?e9ZV5W6zlka/vQszFV6aHaWV1rUboajoo7FI4fTbYr43ZEUgY79pguR+l1G0?=
 =?us-ascii?Q?julcNdD8sjnM3OT/SGqUexDmFNNc1LR/83XZziNIBzNEz2uUmfC3tkij73Cw?=
 =?us-ascii?Q?mGaCTafBMIVh2Qgod70A5m42T84ZVFU9NGVttWBhdXJiD2tICA2ogTd4J2C0?=
 =?us-ascii?Q?1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba66a5f5-2baa-4c57-1474-08dcc11829c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2024 13:01:10.3680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tf+0K7dDmq+6exnuGrbQlQMrb1YgjvvgVaQ1y+xBi/+RxqYnstzuSer81h9WBkbVWImguwIgQOdLCqT1IPZ+6p4LSu4IzF8ZLN/KBgDoOSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7346
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724158886; x=1755694886;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e7Zoij0BorlPByRkXnCAREGS6YC4WaVeYhTsfWKbbLo=;
 b=kl7HlhMfAUrMXg1dBLV7uo3bqam4qGJu5dAuFubx6DsVcjBHimw7dftV
 3f7Xj6jTFGtlQytJSBiLiJb2KlyywWFKdLdF8nG23G57I2trdpan6I0vW
 Uo3CzLj1RsC26CzVqFgALmKVT4i759Qs2kz9JguA7KwhZn+z3cfpFpITc
 41SwZQ2eC52BPrJyz3VEpFxIhF9O+whnaExQvY1awUnsD1mDs4G5zGJIL
 Rlw3+1vquwFURlWS51E5otAORdltOSgmXV1aPxmbX2U0ZhqoQaIFw4uj1
 9AsmdQz8F2K6LvxDOIISc2PbAQ489k6cpA89l9qJN5ERH9hqBjXJXOr9+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kl7HlhMf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] dpll: add Embedded
 SYNC feature for a pin
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Saturday, August 10, 2024 6:16 AM
>
>On Thu,  8 Aug 2024 13:20:12 +0200 Arkadiusz Kubalewski wrote:
>> +Device may provide ability to use Embedded SYNC feature. It allows
>> +to embed additional SYNC signal into the base frequency of a pin - a on=
e
>> +special pulse of base frequency signal every time SYNC signal pulse
>> +happens. The user can configure the frequency of Embedded SYNC.
>> +The Embedded SYNC capability is always related to a given base frequenc=
y
>> +and HW capabilities. The user is provided a range of embedded sync
>> +frequencies supported, depending on current base frequency configured f=
or
>> +the pin.
>
>Interesting, noob question perhaps, is the signal somehow well
>known or the implementation is vendor specific so both ends have
>to be from the same vendor? May be worth calling that out, either way.

Unfortunately, I don't have good answer for your question. I went over docs
from 4 vendors of Network Synchronizer Integrated Circuits and only one
supported it.

I also haven't heard anything about standardized way for this, but I believ=
e it
is hard to call it vendor specific solution - IMHO there is nothing fancy t=
hat
would make it hard for different vendors to implement/use. The "special"
pulse-ratio and embedded sync frequency seems to be all the info needed to
configure both ends.

Thank you!
Arkadiusz
