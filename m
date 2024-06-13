Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B630D906A47
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 12:44:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F30FD401E2;
	Thu, 13 Jun 2024 10:44:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1Xh_AWcoVMd; Thu, 13 Jun 2024 10:44:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75F02401E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718275495;
	bh=UGnG9fs+5Dj1nXPYEsxiVrKhz2rGf7255yeRYNhWH4k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CtcKsuDafFxj+2hi0gihyf0B08gWYRKTwAAk6514Vy7DlIOZrrLcD5LHrmfyn1j0Z
	 Ic9UvmOiV79GD31lx9crB8pytDjFa46hv5s7jVwJltQj3dQV2t/xvgNe1+S8rWLyX8
	 IaAV4CtsEJKfd7Pfd/R8lr6d993uNd5/2VmV0N+lOpxgOjomO4Yv0fziWu02mRq53R
	 ibtHd8ivzPZrsSYp5lVW43wPqvTQ74/DCXro3JkcKiaiixn+ZH7f0prKfKWjonfkuw
	 YSpHVDNGAYOqAh19rRyPVqk1ShBM41eZxVrJtx4uFR9bkLweoFEPToIOoZbs4YtnFE
	 Zz5CmBX63Sj8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75F02401E3;
	Thu, 13 Jun 2024 10:44:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 118F91BF354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F2B0760B18
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:44:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Is-p6zgo2Od for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 10:44:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DF55A606B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF55A606B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF55A606B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:44:51 +0000 (UTC)
X-CSE-ConnectionGUID: I8w5r9xdTBm6yAl16yW1bA==
X-CSE-MsgGUID: COfIxd3VTIepZ6Lb4fXHPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15253612"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="15253612"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 03:44:39 -0700
X-CSE-ConnectionGUID: 3AIb/08wQGuRINu2Tx0Bsg==
X-CSE-MsgGUID: NQSyQSXvRP6wVH2j3hS64g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="40033467"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 03:44:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 03:44:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 03:44:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 03:44:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 03:44:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DyKlibhudbOVG6VVF3cjOSOq6QYRJsu1k17zUSwrIpeyIxfObrPcHLp5sKY3qq9OojKhIoZee5krYADcl+9rP8RH0yTbbXj5sXMJrbnSTuruHrCVOSQAqylWQpq84w4ejjUecrkLeQbcc2IYcQbB19mE0Qxpw1SRep/ngzOeo6Kf+juUjzBuW0jW1ry4C8IhIEpc4PxB42aoophz619vcIWTkE4dHa2fqLsUJi7rGTRpapREHRYxG/P0RAG6Sb8+Q6ZndQSbKO4nywjA1U4Ip6CtqJXxxfJI82WXvvlFdMrgWL/rorI8u+TQd5gFzxcl9/o3X0YGDRaUGmrZ75g0RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UGnG9fs+5Dj1nXPYEsxiVrKhz2rGf7255yeRYNhWH4k=;
 b=lpRw0wROAEsSNlA0sNHyfCt1OptmHU8e24OM3v2cNEmvlQ2d/Nn3Gx+M36L8psJYxYv2LJRRPj35dnyddWzDuzs7r6ctOi0T7kYhb0xixP/TrNgR/N9bYzH1LOxJkz1pO2RnxU/D78fd64Zto6tsar9ptRVwMctyaBTizmYSilCj9+ErwAX91UY/T/k4OslryBPQmYBHPpL0r8h43E4GFFCULDZDk8lNYxFjGWkuS192tJqurtxSrp0WZBhGOT372Vrrl5FvIJHv1Yq5JVvSGLul49Gf4kgZ1/ifh8+ZUnN2NfoT5x8j1be9sAqUrFi7ZgAmwiVPGk3efCQ2+RGzbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH0PR11MB5282.namprd11.prod.outlook.com (2603:10b6:610:bd::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.21; Thu, 13 Jun
 2024 10:44:35 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7677.019; Thu, 13 Jun 2024
 10:44:35 +0000
Message-ID: <514caa65-5794-4f1f-9f8f-d11029460c5f@intel.com>
Date: Thu, 13 Jun 2024 12:44:28 +0200
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>, Jakub Kicinski <kuba@kernel.org>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
 <20240611193837.4ffb2401@kernel.org>
 <ZmlGppe04yuGHvPx@lzaremba-mobl.ger.corp.intel.com>
 <20240612140935.54981c49@kernel.org>
 <ZmqztPo6UDIC6gKx@lzaremba-mobl.ger.corp.intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <ZmqztPo6UDIC6gKx@lzaremba-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0253.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH0PR11MB5282:EE_
X-MS-Office365-Filtering-Correlation-Id: 97ad158f-0ba5-4970-a297-08dc8b95d125
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|376008|1800799018|366010|7416008;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wm9Ma1JrdjRmeGJ1YXRLZnhETWQxRDV5QzdRUlFVZzlKNk5FbUZtYk4zQm9a?=
 =?utf-8?B?eEJHbVl3c250U0tTMXhwV0dOWllNendwdlhIdkxjOWxoTXRjWkhSa0d3S0dS?=
 =?utf-8?B?UGtPb0RLZU5sRVRuYmYwa1llZWU3MHV6UUNPaHIyTXNKTklHMFJaOWFvRFUr?=
 =?utf-8?B?Njc5RXAyV2lzUkllZms0UURsOXZGMEdUVFlSU1dUd1VxOXlqN1ZjazFPU0Vt?=
 =?utf-8?B?ZmRyS0lwdnpRREN2MnhWY1dUR0pvK1dRWm9YbmtrVXZiK0Nja25aa2ltMXht?=
 =?utf-8?B?Y3lOZk1PUklxNytBNTZBRkFaYmc3WHBTUElVbXR2QTExVlByUFVVUnB4ZjYy?=
 =?utf-8?B?NXdzVDF6dk1NVFBCUlc5MCt0b3hKTk4xQzRuUUFScjA4Q0IwY3R2Mmt2c3M5?=
 =?utf-8?B?c1d4Vzk5dkl5SWg3T1Z6Ri9FQ09FZGtQWUFodlo0a2VqZWttbnFEQmRWVCsr?=
 =?utf-8?B?YUh3Z3RZM1M4VXk0K1ozN3dXSndFZlZLc1hMTDBQQUxTaXg5MGR2ZVFzS1I0?=
 =?utf-8?B?TTUxR2JhbUczMU16ZXBsck9RUGRpMDAzZGFrOElNcUxrNm8xNW9paVZJWTht?=
 =?utf-8?B?cWlxd1ljOERnd3RSOWViUXpvK0liZ1Qza2tjT0hwNEJldkJYZGcyeHhHVUNi?=
 =?utf-8?B?NEl6azByd0tDUTkrR25aYkg4U3lzSXcvTUV3MSt3NmU1ZlE0bkluWE5lRHg4?=
 =?utf-8?B?djRteWVDUDg4UkZlQ2FYaGl4QytXeWVIbU44U1VTSHl1ZjVZWllqdFVhU2NF?=
 =?utf-8?B?SUhVTTRmSXRDck85WjVFWml5bzVBTnlESXhKTXRtam0yQzJ4MDU5UWU4SVBu?=
 =?utf-8?B?MFlpYWpuYk9TdmNZM2lZTlBvOHUwNXdnSWEyTHhxTnVFdnpDRXdBL3hIY2Rz?=
 =?utf-8?B?dWgrMGorM09LTG1mTmxGby9EekFjcE92ais3RzlZU1NLQldGUkRkMGxWajVX?=
 =?utf-8?B?VXBLMkhHaTdKaEZqSlVGM0JBbkNCUWxCaG5iOGxGN0ZmUVJDN2dmS2ZYdS9h?=
 =?utf-8?B?T2NmK1F0L0U4cHRDVTNUaXQraDdIckViZVVUREVuMGc2V1ZUUU5EMGViRy9P?=
 =?utf-8?B?aVVhNXI0UmppcTNMcnkvcnA5OVNXK1cvbkJBbUNZOUxZNU5xWDQzU3B5MWx1?=
 =?utf-8?B?S0x1elhSa2Y3YVRzdk8zVDJPVFNnTlh6Ukh6bTNtR2puYVE4MVNjZXFrcHk2?=
 =?utf-8?B?ZVozWE9IY2dlazRXWE4zd2VKemRxOEozcXNpbGJhNEdOVDJBMTBpeVJrYlhw?=
 =?utf-8?B?WHZZMzJmWTZHY2VoZklHRmR2amNmRE41NjRiWkNRMjlqbk01MGRWdFpNMlRY?=
 =?utf-8?B?N1g0ZXJBRVhLUDMxNVphSWl3U2s0bU5SdkNPc0g2SU1wbTRuUytEY2M4V2t2?=
 =?utf-8?B?Y2ZPV29yNjFTYTRDS09PV1NPeDhRemorVzRSTlB6WnI3K2o2TWFVdjlIVXM1?=
 =?utf-8?B?d2hGSVZtaWZPNytmcVZGRWh2aGdQa2Rnam9HTlJqelNFdGg1c0JpUW9YK3Rs?=
 =?utf-8?B?S0Q2SThCV053Q3VQMUcwNFQ4QkpzU3J2V1pJTFIzWlFDUzFjZnEvMXZ2MFE2?=
 =?utf-8?B?amc3dnJyZ3VUZE9Mbm1Gc0dja0ZaUmc0K0k3NnpkbnQ3L3RLY1p6QTBuSFRW?=
 =?utf-8?B?eWJLUGRZVGRPdUVkWWNFc1JqeCszK2pSREI3VzJpb0NHa0xRSFhQK0NxcVRI?=
 =?utf-8?B?VU93U2g2bC9Db01CYTdheTg4cHpKbVZVR0VFUU9SeE0xWGxuZzJHSVNUMFAz?=
 =?utf-8?Q?gVclvPvvCB+JsfOChcgAAAlrfdS3FHYNU9nY4cB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(1800799018)(366010)(7416008); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXpoWXg3Rkt4R3RaSmhlRXRqb2hXRlNyM3hnSHVneEF0WXNjWmJGZnRUSjM3?=
 =?utf-8?B?V1cxTS9jdGwzY0N4aDMwNHRaY3V5UHA0QXE1Nk05R0dEOER0M3BXR2g3bjYr?=
 =?utf-8?B?b1FndS9aMEdmTUE1QUZndVBNL2w4bFhOSXFBL3M2SThoYVVzZHk0NEEwbmRW?=
 =?utf-8?B?WDhveVI5dURiUTJnTDdlMUZCLzFVMm5TVWxpWkJxRTRoYTdBTWUwT1ZaMUh6?=
 =?utf-8?B?WHJ0Q1VoNFJoWE5KVzIzYjFJU3ZjVzM5dkdvemx6MGtmMnZOQUkxWlFmQzlS?=
 =?utf-8?B?djh0K3djOTJaVDFnR0ZYSVVUWVh2UjJKelhkZWFNMEV3WDk2VGYvZG5YdlBL?=
 =?utf-8?B?dHVVTFBLNmJyVkN6NkVmYnpyaXpJZlZrZFJjRUdYVTJHU0YvZUdWRzc2Yk9T?=
 =?utf-8?B?MThvK2hydzRmYXRxYWF0OEJxRVpYeTVHUXJWYXp2cjRXQnlGYWdqUWRVOFVi?=
 =?utf-8?B?NFZOQWMrN0dVM1JSTS9VR1FrL0tZUjUxV1JRRkpIbjlDdWF0UnUzNTl1bjBY?=
 =?utf-8?B?RzRLN1d3bnlCQnBVVmVyMkE4S3J1OHV3WmxUdFNDM2M0V0tvYUlDL2pTcHRH?=
 =?utf-8?B?QWZRSWVOZHkyT3FaRE1RNWpxNzlLVCt5V0FLYjczVTV4WWRQcy9PZVU1SjFH?=
 =?utf-8?B?NHVpZXhGZjR3cDhmVmNrVHVqS0QvSklFdEVRNDJ3d1A1K2tRQWl3TmdBTExD?=
 =?utf-8?B?TEVrM09qSVRWZi9KbVV3TGFpTG05UjZITGgzZTJMaVJyVjB4cW5rRzgzK2o2?=
 =?utf-8?B?WkMvcUMrZSsyUGVxcXpLMEFhL1Ntemp2emxRTjJQSUlrV2ZBZXEyQmR2YTNQ?=
 =?utf-8?B?Y2thNlBPWXlQOUNlOXVoZ0h0MldPdkVZOWpVRWFtcXJUblg3aEkzUi84VUdC?=
 =?utf-8?B?Q0RIdHVGdDcvWlg1ZUg5aDRET0Z6WG5iZ1R4L1FZdXo5elUrNkpWeXZZZFRU?=
 =?utf-8?B?K0tVQnpNaFZjODlWcWVMSkZsRlJIclBFQVhweTJhS0FKVThrK0VhTXNYWWZN?=
 =?utf-8?B?WEkrRDNwYWJQdXoxcGwwejl5YWtmWW5XV1Axam14QnpNN056OGN3OVozUFpq?=
 =?utf-8?B?U3BjR1hlK0F3eGJja1M4OGNsT2x1WlhSem5RMjdPSmtsSlBpbUdZcHZpekU2?=
 =?utf-8?B?QjdtSGJmWkkzZTZ5RnhIOTVLSE9kMGh1NXJoaWRCRW9udXJlNkZtZ1JzQkM5?=
 =?utf-8?B?MFVWOTdlbjhOeHVxdHc3MGV0NzFIcmJabjVXZWg2TUpIc29icWJkTnEyTndn?=
 =?utf-8?B?UGJuNkU0UWdtZEMzblQ5S3FvTXpOUy9ZQ1RoSWFMTFZPUmlsZFIrVW1kQVVZ?=
 =?utf-8?B?bmtqOFFWNjExOVU4cW9FdmI4QUp5VVJRTWltUWRYQkppaVpzUGd6STdmeFFI?=
 =?utf-8?B?ZUJrV2lUVUR6N1lRcCtaOXZJZXZtS2hnaUlzQWpyT1FUY2dhbzZQaSs3TTBw?=
 =?utf-8?B?QXBhK2NyelJtR1EyS3Vubm8rU0o4Tk5TdHR3aTR2ZkhXaFMrSGhma0JVdWZN?=
 =?utf-8?B?SHZTYWs4VjVqUVJhMjYrZVpEWXJ4YkpOdTYvVW9QUGpNdE9KbU5wbmQ5ejBp?=
 =?utf-8?B?U3NjV0Y1bWtzcUpUY2JRNEFQb1BWcUErcldyakVPOWJjczY3MlZTOHZBT3JZ?=
 =?utf-8?B?anNIazNkSTRQaWdnUTNQcTk5N0VhYjJ3cTk0NkR6bFQ2cU1GNWJhcXd6ZTUx?=
 =?utf-8?B?SVNzMnc1RExSSktENXJSRjRZYkg5ZFNmSEJ1b0tWL0VNR20ybmROa3ZHYm1w?=
 =?utf-8?B?OUEzSmVVMUFJK08zM1lYdDBmU3dhZHJuODZNN1VyRHJEV3F4UkNVdWFkUVN1?=
 =?utf-8?B?TmtTZHNTei9iZDBGRklGMURrUVRrNTVFRDhFMnQ1R2JKK0ErSzY4dHBhNm5r?=
 =?utf-8?B?MDBVNzV6L2lwdFVmUDcvdS9Wd29teVJWdnk1QkJHQkVPNVUzaVZ5NktNaHA5?=
 =?utf-8?B?d0cyZVZTTjI2TDZLY1FVV25OYU45eFE3U00wQUtYR00xTy9JSE9yaG5wRUts?=
 =?utf-8?B?NHI5a1BZUFM1QUsxMnk5OExJU0JYYUZPTjR5QnBJTG82OU1MaWhCUGlTMlBy?=
 =?utf-8?B?bmJOcnZyZnZOUWVVSytBYXl5TkxucW5qR3JZOElKQ1I4VWg2ZDNqN1VmbFlN?=
 =?utf-8?B?UEFRTEdmZi9MRmVhS3p6SHJGVlB0UXZ3MURMM09na0E2ODRIVzFYV1hFZldi?=
 =?utf-8?Q?z4htdZPeXrykSZf06g0j40g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97ad158f-0ba5-4970-a297-08dc8b95d125
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 10:44:35.5887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FguWNVrvTBSivj34+R/jusV8Cw0w6Kp4gvoPQmQ5UIyGev0eAqWFlAazrqu4NoHAxU4cpuKSpvhipY2C1WNCvShsbHime7m2OXbTsFWCrC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5282
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718275492; x=1749811492;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Es0WubLex21Ry0RDpfG9frwKNak64iSuSr72vabtOCI=;
 b=HlQpx9M7XeZfYBUB8N7PGCVQ2qp/UURh4frSXOtkZp7ikcYJl+OrBFIi
 cuRASVZ1JpE0iGAabyEguxO3wHHJ9QDoyrwKrtFIlQoM2n7HCBP/k9g92
 4kf8oduCAh0/SXHgYn9FvKNJyl5rwizoM5l2NUxZcd7ROST7CR1LKK7Jy
 2IS3pqd82LybuBFyxu2v+1EGDuNeWK1nuOqD9BxEQ3b/4xYDOzJzATiog
 vjxv5fTHCS2NUKhoEbTRSZDanFbBP+YsvbilS2ENY48nnBWA1V1V50SDB
 i+J+UL8Wqlg1ML+SIQLR2KeUo4CPsF9I+G2srrHgV1G/xa8Rki2Zdi2bH
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HlQpx9M7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix synchronization
 between .ndo_bpf() and reset
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal
 Kubiak <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/13/24 10:54, Larysa Zaremba wrote:
> On Wed, Jun 12, 2024 at 02:09:35PM -0700, Jakub Kicinski wrote:
>> On Wed, 12 Jun 2024 08:56:38 +0200 Larysa Zaremba wrote:
>>> On Tue, Jun 11, 2024 at 07:38:37PM -0700, Jakub Kicinski wrote:
>>>> On Mon, 10 Jun 2024 17:37:12 +0200 Larysa Zaremba wrote:
>>>>> Fix the problems that are triggered by tx_timeout and ice_xdp() calls,
>>>>> including both pool and program operations.
>>>>
>>>> Is there really no way for ice to fix the locking? :(
>>>> The busy loops and trylocks() are not great, and seem like duct tape.
>>>
>>> The locking mechanisms I use here do not look pretty, but if I am not missing
>>> anything, the synchronization they provide must be robust.
>>
>> Robust as in they may be correct here, but you lose lockdep and all
>> other infra normal mutex would give you.
>>
> 
> I know, but __netif_queue_set_napi() requires rtnl_lock() inside the potential
> critical section and creates a deadlock this way. However, after reading
> patches that introduce this function, I think it is called too early in the
> configuration. Seems like it should be called somewhere right after
> netif_set_real_num_rx/_tx_queues(), much later in the configuration where we
> already hold the rtnl_lock(). In such way, ice_vsi_rebuild() could be protected
> with an internal mutex. WDYT?
> 
>>> A prettier way of protecting the same critical sections would be replacing
>>> ICE_CFG_BUSY around ice_vsi_rebuild() with rtnl_lock(), this would eliminate
>>> locking code from .ndo_bpf() altogether, ice_rebuild_pending() logic will have
>>> to stay.
>>>
>>> At some point I have decided to avoid using rtnl_lock(), if I do not have to. I
>>> think this is a goal worth pursuing?
>>
>> Is the reset for failure recovery, rather than reconfiguration?
>> If so netif_device_detach() is generally the best way of avoiding
>> getting called (I think I mentioned it to someone @intal recently).

for the reference, it was to Dawid here:
https://lore.kernel.org/netdev/20240610194756.5be5be90@kernel.org/

> 
> AFAIK, netif_device_detach() does not affect .ndo_bpf() calls. We were trying
> such approach with idpf and it does work for ethtool, but not for XDP.

