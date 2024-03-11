Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E37D887800D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 13:34:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F4C040656;
	Mon, 11 Mar 2024 12:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5GtpdP3ifXiI; Mon, 11 Mar 2024 12:34:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6C38405F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710160459;
	bh=AreOawfPX7acK4QT6BKAz2O1rth/DUSUsPfhQ4joiBI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CRYx5AlnTrSjuiG6z0TaJu92XH6pdLfGxUoSP7sS4glBVh7ayZ7WT8qF8oPIjAHsI
	 +EAxg0hgMk6oV6TzmXiib47poNYHuq07pjo9ibpX3JVFAYgJ82/XDjazUkceIRhcC3
	 YtddGP28aNFhvwCywFlLw0HA8Pv8ZUiHmHw1OKgNs+ZDmIcUbXGmHjfk7Ulng41BM3
	 zX37ynSutNufB/KIXjnyesexYo7w3bJON/6OWbYNDkwkhNsBWXkYdvkleYnautX2DG
	 ynRaN3+VosNsnd/xRjuSzsvO42u0JpxP/pz1HbXPfl1pyJGIVT8GxzFQm0kHVWpoB7
	 iLM1uFXIVECOw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6C38405F5;
	Mon, 11 Mar 2024 12:34:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 906661BF282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 12:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B613405BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 12:34:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I-dRVBSAh4LC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 12:34:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CEABE4058F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEABE4058F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEABE4058F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 12:34:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="15457268"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="15457268"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 05:34:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="11037022"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 05:34:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 05:34:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 05:34:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 05:34:12 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 05:34:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iHr30pg/4fptWsG5ooJrGNuEPsgVF5Jb4LWvwKskjyFrg9yDajM1t6bYvD/WVB1K48jZmKBOr+k5jg8GoZpsx/ETuCpuQLX4loPbSnXxMPQtyOUhA7ry6hsOjmqzhck28+lNupaVT2UHHtU2kOXn8e3Yl2jfmg2qbJj2Xpyj6kffxs98wBjTnz6YCgna33jmNls+A95dO5tgdxLzQFrCVpyuegtdVL3J8tIjO7AWGLw6gIigIRkDM5KZsrLVNp35ZjKCiPIXF7CcApHn8Z58APdcdGECjTuzqbuwHZzJhB2uikRsqeKYUGcaoZIybgagj9MhfUr8Ywav7vPNYkXEgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AreOawfPX7acK4QT6BKAz2O1rth/DUSUsPfhQ4joiBI=;
 b=PVJ47EKydIINs6B5ozbAnZ0UgeFEu1njtnZeJFZvBIchOOPMZPfaZv1CRlKeoy8PHg90pPJZ50TbSS+7MDHof2ppoWTkwietrdLIaFqZRyOkNplq3DyZaS3oPdQQRuEtp9ZFx274ohMAk2POBMAM3i7hIFvajUlEXQg7B2zgkPaebVznoxW9OfwNVzjoaxmJoXd6hVVTGvK/DZJCNhwGy46ohLRqCI9bvOgcPrh6aDNhDTcwbqKNHOBRLwWeK1J+wC6SooLlVIvt7Gda8NNOZ25DxU3opD+LdhZOOiPnbjMj6xZZBBX61ahuiiCiR4l7JCLUy5bUPmFCWiXl3bEMcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB7317.namprd11.prod.outlook.com (2603:10b6:208:427::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.15; Mon, 11 Mar
 2024 12:34:09 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Mon, 11 Mar 2024
 12:34:09 +0000
Message-ID: <b03abadc-eb9a-4025-afed-a4eb7c4a5e2c@intel.com>
Date: Mon, 11 Mar 2024 13:34:03 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>
References: <20240311112503.19768-1-aleksandr.loktionov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240311112503.19768-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0357.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::18) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB7317:EE_
X-MS-Office365-Filtering-Correlation-Id: f281937d-cbc1-4727-27ba-08dc41c78c44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vY5Qz7FsgBa3Rp91FEQBXFdhQNLOu12oDNJj3TR3YPANJWCXUDwv15BM2jNGIh4Fvrt2NnfMT1kXRm/2b0znt5C98p848BZi9a6wALt1WidvNDQnsmtX5ydYweE+u00kPN62mxOz7Mm9eU8Cuon+mHkm1YmQDWN3BJvg8BDL75mnKYKIU32Hc+6vchz/vIDDTLfgIrVNH78P7rzbNGendEW+MhXh9KDEKX8GVnNpdH/HgeDuy7J/nLKwvjCenAx9sc80HdzQJWSMxJWUej5cpXkmm3g2qVmMflPFhh2loU2WXDoU2PfnEwUqkaZic8/FXvKA0WxxDmwu5HKaLQ5O6RuPHSDyJ2hs+pHX3Ab2fmwQMNKXx8a8kHi9yj4qjCIweYwRtZlu/h/l6qXOyDhF2K2id9n8xR/1jZUFR56QPgPukDqaFPLjVawBjM0M+bIMiZgDRsZp37eoe0sO5c7zd61J7kWSmv/n9bBUIHXlBBmWdHg4AN/C0ydZkYUb94MuZ0yyMhik8CLN91i6DAVpp5Uqbu0oUX8Uu3mQiU9w8FubgBVBzDK9mGC+aKW2jfHFENw4sxbOIO6ZtyuLm8zbujcuJ9FIxABATueUXMS+gF5HrSarJViKPw7xeWU6PG4sYAuwO/ab4SpwKTPMJh9EQMtbpEuG58DsD1b20o4lymo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlFLNnRIbmM5dG5xYXRHZTFqK014ZVNCdUxjbmpKOE1GMklsa0ROZjRHdUxT?=
 =?utf-8?B?b2pVbExqVGt4MytLMEtuL3c4SWRSVnRidnlDTWNrSFBZYmZVNHRtcDIxc0k3?=
 =?utf-8?B?dlhRZUl4eDQ1dzVqaEwzYVpIaElYTXpBSWlqTmdzK09lWTFtay8yZERSVTJK?=
 =?utf-8?B?SkRMUVRiOXZDVGNFRzJVck1GNEQ1TVFObkkzSjQyMjF3anFEU1g1Ni8xQ2Rn?=
 =?utf-8?B?Y1lVQUY5MENDd1FHTmx1NHFZYWhURU1lbmRubHRNRG9PYnRjN3FZWTNBSWJK?=
 =?utf-8?B?M0xqaU9JV0dxQWw3bW9BMkRJVDBtMWxWQ3R4R1VmbXUzTExaT3BJaHVZcGI4?=
 =?utf-8?B?T2ZvNHVhK1pyOTJzemJBcW83NjBXTEdkcVVtenVZYmxwenF0NnpxeXNhalBh?=
 =?utf-8?B?RFE5eXpZenFPemlpTWNnM0dHT2ZMYjhSeGI4RkVYMzhWY1ZhWUtndWZYMEI2?=
 =?utf-8?B?OGtMTjBKczhXeXpVZFNQbmtnVHpXUkI3MDJySXprZmtkT1hzTGV3TjhBL1Zv?=
 =?utf-8?B?MThobnJOMnZaemZRd3lhaElQMUJHZGVCUXd5THdjNWJ6TE1heWJ4K0F5T3ky?=
 =?utf-8?B?V3owY21KNnB0ZEF5MTVwanM3akdqVi9qSFc4MnpwMlh5bkZ5NnFMV3JRRFZv?=
 =?utf-8?B?aVZXMUVZTEV3eHpPa0lZMzVZcXhETEZ3QmtIdllMWmxZWkVUd2FxU3Z1L0pJ?=
 =?utf-8?B?V2dUYm8rYWhTS2J6ZDJVSENHZlhTTzFkQkFVZjY4SFMxQ3pUNE1Ba0JZNVRj?=
 =?utf-8?B?K1hZdTUvNXlCdCtGeGQ3WVZERWVSSW8zMW1ISkRaeWpDa09HVE1TRlFmTUNI?=
 =?utf-8?B?aW9RTGRPTUNnZU5ZQ050aTRDZVcvRnhHbmdrdmFtaWM3RHRGQVA1NjlHcTcv?=
 =?utf-8?B?ZzcyY2d2UlRnbzdBK0ExMlNQcmtWbUJRZVh5Uk14MlBOZkE2b1o5aVY0TnZp?=
 =?utf-8?B?bXlxOStwUm92MHh1VmNFV0xjeEw5N2xnOGZBQml6MkZEVG5POWxaNjZtWUw5?=
 =?utf-8?B?TkxKeGlEeXJJUXBkY0dHTjdId2dtYmhoTGh4K2tyL3RpYkNtUkFLV0NNQjc2?=
 =?utf-8?B?VjVCM3dWd3ZvVTVtWERxYWRTVllXTFNtd1orWlVhV1hJSDFJaGVGQW90dlB1?=
 =?utf-8?B?SnQ1Um55UWVoeTczT1RnWUVrYkdCSHVmUjZrTVJVdUl5dHBBdkpDMFg0SUd3?=
 =?utf-8?B?dGNNbjhHNmwvQm5BYlcyY2dMb0E0eDVTYjd0ek03Q01YL1ZSZU12Vjc5QjI0?=
 =?utf-8?B?RzZnYmZwZ0JKaVRMN0tEVS9POVFHbUZIYWZmUXE0RVFXb2dlL1Nidm1uaEI5?=
 =?utf-8?B?ZXF2ZXNBVDhCRDdvNEhBVU12U0Z3NmdYS21ZY1g1WisrNXUvSkpCdlIrbnZR?=
 =?utf-8?B?dmY4SjBrRm9FRGNhMlYwUGtjdHV5citLWDJYbkRGUjVDMVVWWTRENmRNZFpK?=
 =?utf-8?B?bk9OMGY1Y3JvYVY0MXZMazd6M2N3czRzQzA3bWFzamFrQWh5d2dYOG9Ua2dZ?=
 =?utf-8?B?MkQzUTAxaDRIS1Y4L2IzNW9NMStWT1V1TWdRamJ0akN4Z09MZGhhcHRIcUh3?=
 =?utf-8?B?VkQ4MGJSNXNXWHdBTnlPMFdjZU9EOEhpL01xTEtKaEdiZzJZeGxRWEwwZklR?=
 =?utf-8?B?ZHRxT2llQ0k1R3B6MEJ0OWI5SDdjd252aEtuc1d4eW9LTEh0L1pFSEg0cUtN?=
 =?utf-8?B?U0lLdTVNV3o3aGRUc3ErNGdBemI2OW5tRFVvaFY2MGRiaHVsM2dsSkM1OXFG?=
 =?utf-8?B?aVM2VUxFb1hlY2hlcm1PbEhncll0M25kaWJLcCtxTnVVY01kc2kyY29FKytJ?=
 =?utf-8?B?VW5VQVczYmQzM2xYdWI3R2RHT1VjQU5xbXFVTUNHMEU4OU0rbU5uemhoK3ky?=
 =?utf-8?B?YTN2NmYxNkZuM2g5QXNJNmxKZVdvK2FEVkZ2b0tyU2lmeE11SmNmRm9WSnVs?=
 =?utf-8?B?WUpDVE56YUtvMWIwb0g1OGJ0eTdtbTFEMEpua0F4dlVMcUpEeERib1oxRndT?=
 =?utf-8?B?SWZyRStZMlFNYzJFdU9Ob2JkeFMvaU9ERFpMdWlzS1RxZjdkSkU3L2Q1aW1m?=
 =?utf-8?B?bVlUQlgxNytSNUdpMUphTDBPS0RkNGJ3dmdyQlhsYWY4bEVaU0tLY1RDbU9P?=
 =?utf-8?B?NzlqckFkTE0rdnQ4STV3ZTdqR3FLcFE2TlBwNUppTDF5TCtpZDdTTk5Vcjda?=
 =?utf-8?Q?wjivQ33LGQBniL6Ybt38yGs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f281937d-cbc1-4727-27ba-08dc41c78c44
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 12:34:09.7263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6z6GJMgZ/21RwJr7VPSVp2nN4QHVttTS6uiiHjLSJvsfa1K9/fRDJ9FWmI5D6bRPm9vc0BsBwq3sfEh0uiU1thnDxJid67C8aLgSNHs4rm8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7317
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710160455; x=1741696455;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kACbUsodCTMMCVFAv2bhWC4+IDwbsdt1wNP6PDbVO+0=;
 b=EghdMQMVvAESFrJxLzIo+SGqGsDArWOqzaQc8eCkwUA3STpcbLS3hn2Y
 qB/S8tg+PtzcbSRKF2XCrnJ77VmFVxp3ehCbCqPZK1GXtkqq6/ekR//Ep
 MSSecP0cghbaR5Z6HCpgFR2AVJKb43scv/XBKgMu0SLZoZZ7cV7Xll9H4
 yEHSCuXpg+8FcN9m5InPJzVL+8/k7Y5ms6leIhcPSS3UZ2LjOU6UcG8D+
 hUAk/1/FWJfndg5GcUgcbk4t7mrTxxHML4beA9CCTW6VWAtvfAsAf4KGc
 7FAqRS2Gn6nrZS3Hti6BTQ1mFomMYOdz3J6SyDmA3bMPtNWhuxHNckBv2
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EghdMQMV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix vf may be used
 uninitialized in this function warning
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/11/24 12:25, Aleksandr Loktionov wrote:
> To fix the regression introduced by 52424f974bc5 commit, wchich causes
> servers hang in very hard to reproduce conditions with resets races.
> 
> Remove redundant "v" variable and iterate via single VF pointer across
> whole function instead to guarantee VF pointer validity.
> 
> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 34 +++++++++----------
>   1 file changed, 16 insertions(+), 18 deletions(-)
> 

While reading carefully I could tell that you are indeed only changing
int v; &vf = pf->vf[v]; into pointer, and the scope is limited to just
one function, and commit message makes it clear what the error was.

With that:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>



> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index b34c717..f7c4654 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1628,105 +1628,103 @@ bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr)
>   {
>   	struct i40e_hw *hw = &pf->hw;
>   	struct i40e_vf *vf;
> -	int i, v;
>   	u32 reg;
> +	int i;
>   
>   	/* If we don't have any VFs, then there is nothing to reset */
>   	if (!pf->num_alloc_vfs)
>   		return false;
>   
>   	/* If VFs have been disabled, there is no need to reset */
>   	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
>   		return false;
>   
>   	/* Begin reset on all VFs at once */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> -		vf = &pf->vf[v];
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {
>   		/* If VF is being reset no need to trigger reset again */
>   		if (!test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
> -			i40e_trigger_vf_reset(&pf->vf[v], flr);
> +			i40e_trigger_vf_reset(vf, flr);
>   	}
>   
>   	/* HW requires some time to make sure it can flush the FIFO for a VF
>   	 * when it resets it. Poll the VPGEN_VFRSTAT register for each VF in
>   	 * sequence to make sure that it has completed. We'll keep track of
>   	 * the VFs using a simple iterator that increments once that VF has
>   	 * finished resetting.
>   	 */
> -	for (i = 0, v = 0; i < 10 && v < pf->num_alloc_vfs; i++) {
> +	for (i = 0, vf = &pf->vf[0]; i < 10 && vf < &pf->vf[pf->num_alloc_vfs]; ++i) {
>   		usleep_range(10000, 20000);
>   
>   		/* Check each VF in sequence, beginning with the VF to fail
>   		 * the previous check.
>   		 */
> -		while (v < pf->num_alloc_vfs) {
> -			vf = &pf->vf[v];
> +		while (vf < &pf->vf[pf->num_alloc_vfs]) {
>   			if (!test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states)) {
>   				reg = rd32(hw, I40E_VPGEN_VFRSTAT(vf->vf_id));
>   				if (!(reg & I40E_VPGEN_VFRSTAT_VFRD_MASK))
>   					break;
>   			}
>   
>   			/* If the current VF has finished resetting, move on
>   			 * to the next VF in sequence.
>   			 */
> -			v++;
> +			++vf;
>   		}
>   	}
>   
>   	if (flr)
>   		usleep_range(10000, 20000);
>   
>   	/* Display a warning if at least one VF didn't manage to reset in
>   	 * time, but continue on with the operation.
>   	 */
> -	if (v < pf->num_alloc_vfs)
> +	if (vf < &pf->vf[pf->num_alloc_vfs])
>   		dev_err(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
> -			pf->vf[v].vf_id);
> +			vf->vf_id);
>   	usleep_range(10000, 20000);
>   
>   	/* Begin disabling all the rings associated with VFs, but do not wait
>   	 * between each VF.
>   	 */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {
>   		/* On initial reset, we don't have any queues to disable */
> -		if (pf->vf[v].lan_vsi_idx == 0)
> +		if (vf->lan_vsi_idx == 0)
>   			continue;
>   
>   		/* If VF is reset in another thread just continue */
>   		if (test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
>   			continue;
>   
> -		i40e_vsi_stop_rings_no_wait(pf->vsi[pf->vf[v].lan_vsi_idx]);
> +		i40e_vsi_stop_rings_no_wait(pf->vsi[vf->lan_vsi_idx]);
>   	}
>   
>   	/* Now that we've notified HW to disable all of the VF rings, wait
>   	 * until they finish.
>   	 */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {
>   		/* On initial reset, we don't have any queues to disable */
> -		if (pf->vf[v].lan_vsi_idx == 0)
> +		if (vf->lan_vsi_idx == 0)
>   			continue;
>   
>   		/* If VF is reset in another thread just continue */
>   		if (test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
>   			continue;
>   
> -		i40e_vsi_wait_queues_disabled(pf->vsi[pf->vf[v].lan_vsi_idx]);
> +		i40e_vsi_wait_queues_disabled(pf->vsi[vf->lan_vsi_idx]);
>   	}
>   
>   	/* Hw may need up to 50ms to finish disabling the RX queues. We
>   	 * minimize the wait by delaying only once for all VFs.
>   	 */
>   	mdelay(50);
>   
>   	/* Finish the reset on each VF */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {
>   		/* If VF is reset in another thread just continue */
>   		if (test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
>   			continue;
>   
> -		i40e_cleanup_reset_vf(&pf->vf[v]);
> +		i40e_cleanup_reset_vf(vf);
>   	}
>   
>   	i40e_flush(hw);

