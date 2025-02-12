Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C35B1A331A7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 22:37:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 441F0424F1;
	Wed, 12 Feb 2025 21:36:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6dz6-meGMCF1; Wed, 12 Feb 2025 21:36:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26BFF424F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739396191;
	bh=sKwY+E528fk5X5TvKgCnfS7PmSAqxspbO/du1lHJjFk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0mndmvrWzpLvGSatndlRzIIjWShrwh4gYuGV/jstr+6ZIECaWvlLegQzZoZdYT4Tv
	 nBHgml8oyHBBV34Pyw/aupBT5Ufdt6Xq0o30OBS3obxnTgc06ZDvb5wHmJRiCDtHSb
	 MHTHO9uZVyAUYeWzrBqAEXSg8k3GpMrMZUOKtNFaqJf7yBbWwe0JE47qKwUPxSFV9a
	 +0yQGnr6h4c+s19DaBhoZRSaji+roqaLVB+QNZRNLyM4FayMuKfNHz5uXk6kU1hueu
	 HHPTDlj7EF6LS/GSFyG8rJK6UtgyKVwGeqQlhkXlKf0Bbgvfx3ma2/hGTz2NRfj1rv
	 7rgDFNS3FMAiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26BFF424F4;
	Wed, 12 Feb 2025 21:36:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B62F194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 21:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8915F60FCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 21:36:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 44YFqr-mNP3r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 21:36:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2BCA56073C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BCA56073C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BCA56073C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 21:36:26 +0000 (UTC)
X-CSE-ConnectionGUID: ZR5dW+roRHa3qtYiz57X7g==
X-CSE-MsgGUID: s2+PFMNCQ5O4HKn+6gbsPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="57608267"
X-IronPort-AV: E=Sophos;i="6.13,281,1732608000"; d="scan'208";a="57608267"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 13:36:26 -0800
X-CSE-ConnectionGUID: G2K7wqfJRkKCGcktcs9JtA==
X-CSE-MsgGUID: p0uhmByUR5CHNrtcq0RIJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112797714"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 13:36:25 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 12 Feb 2025 13:36:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 13:36:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 13:36:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f8qCT8fRWLrwXcqvL7pgcUZ+NEYk1Yh9uVx2D9u5klmsjxMekMx0TyS3KH4wxCgEDquCiO6gXkmnJcXrybToek4+7cYZ0mKwnn2AplTH/CDOzA49hV7hD46EH0O3JpLZNqJg9EqhCs/tujSwu2Swv3MmhUB9oV4+Kbt+PKXtWC2q0yLAZWMnOJV9oHvlXCxZdY4rpNIfCKPo5fDmaLcn9GHRf5Q1GTycRuJcL0TPN7ZwzloXPG8LWR1liVY+ZhtUVDeumY7mRA++v1pM3glfzaVoUZMB1k5SPImO1d+1uYCcKQTRCmTj5ka4hwV87TU2ao6jjbs+b3ZLbD4pZ1RsRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sKwY+E528fk5X5TvKgCnfS7PmSAqxspbO/du1lHJjFk=;
 b=lTW5mX9E+9y3O5Gex6nT7FGBFq51x1CUYOizJ09pYnfQAD7EvY0/RTllTpNC+l6jbDF5rMNEyw5V0LnZwszzDf7ujYkeKScJJtJlyz1vn0fsKsn2OvLLB4k7wozVor3rtpo53i5W50wmnYwV+c6OhNPs2sdgXfnyb0z1oV1ajO8Bd2rFgoFF0xAFa8euKaqFgXpdrmgVeRoL0/jA2JzqAnnnL6n7jheqEkdlgRGwibCmucBen6pIx/qbgqXvmMAMi+hB6c2ExaRzH1lNfQIW0ITZ9LZDeRgkOLVhWNIiYw2uxsxfdOvFrr32vMvcCcTb2vNHxRDE8IB0KSmIyUegng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.20; Wed, 12 Feb
 2025 21:36:21 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.8445.013; Wed, 12 Feb 2025
 21:36:21 +0000
Message-ID: <a2828574-8b78-47a8-9ca3-a531f234a4c9@intel.com>
Date: Wed, 12 Feb 2025 13:36:18 -0800
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Mateusz Pacuszka
 <mateuszx.pacuszka@intel.com>
References: <20250208132251.1989365-1-larysa.zaremba@intel.com>
 <20250208132251.1989365-6-larysa.zaremba@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250208132251.1989365-6-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0134.namprd04.prod.outlook.com
 (2603:10b6:303:84::19) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: 8da64a80-2397-4483-052d-08dd4bad4ad2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0JMTTFMU0p4ak11cU9iRUgrS2RQTFRYbTJ3OFJhSHlVUkdwNUtDbnZjR0xY?=
 =?utf-8?B?NUtmU3FINUcvbnBwS0twSXYwSEw5SEwrdjZjN2RORzl0aU56bkVXM2psSzlO?=
 =?utf-8?B?cTIrb3F6YW1GMUN1VDYrV1YvV29mcUh5L282UXF6dUViVWFwSFdhNWd0SGc4?=
 =?utf-8?B?UHRnQzVONGJBMXhlMEM4bmRzekdvTkVNTW5nL1hYb1h3MS9QL21wRnBVQllF?=
 =?utf-8?B?cEpzdW9rWnEyNmxwRFlnUVg2YlRBQ3dsa1NBOWZ0ckJwZ0MzL2VnU0trTGhL?=
 =?utf-8?B?TlJGQXJ2dlMxRmd1amNJM1o4dzFYUjFxM1BnWEJKL2RtV1F3Z1cwRFNaVEVQ?=
 =?utf-8?B?K3JKZDV1d25pQXkxaEkvM2hBZGVaLzhHKy9XSDVXOXFwMnNLbm5NMjNKQjds?=
 =?utf-8?B?dTRCM3R4MXRIN20rQVNGV0NIQS9uczltOGVJSk5EREFXdnl0cHdNTWpaenFl?=
 =?utf-8?B?WXk4UkpUOUJ5S0VqUjVSK3h1OEpzTnpLZHU5UDdMcVRXaDN6cWkxQXZXNTJH?=
 =?utf-8?B?RDBEWW50OXFYTU5kbW9WSVFJSnpoYjAybXhDWjIyaWw4ZWhRSkFJc0FjRnYz?=
 =?utf-8?B?REw4dHNhbWZyRDUzTTJzMTBTUU1NUklIWFJHeW5OWEZZSDc2VnFneGVXam5C?=
 =?utf-8?B?bmswNVhDN0doTVY3eTNuWTFJb0kwdVZtTXF3RTFOLy9vMnJyMUlrTytUZEpD?=
 =?utf-8?B?MGRkWnVnTjVNMXU1cjRReFNNVUZERFltRzUvN2FaeHk4R1FaWWRtM1dySGU5?=
 =?utf-8?B?cndFK1ZFWHEybHIvQ2ozWC9pcDNkOHMwb2Jjc2hiRElYNDJRcUYra2VqV1or?=
 =?utf-8?B?Y3A4dkZxK01RdzhwQmw5NGJXMzBNVUNYbVdPSXZEOVBzempRVTRGcVMxaS9j?=
 =?utf-8?B?K0VjTWQ4cldLMnAwaU1SWWxKdEYySC8yQ2NuUGVMTHlBV1BXZ2d0ckVhZ1NB?=
 =?utf-8?B?YjdSNWFTTG80aFk5bnNWUXNXMzljRmkxVnQxcW04V1NZanFyeHFvdWpWaW1o?=
 =?utf-8?B?UXJpUHArckRuKzhjUGtuVG1QMHBaUkk3L0ovZ2NXdnJjdGlITzloNHpKcndJ?=
 =?utf-8?B?TjFFenNRUFRqaG1TTlpOYUVheXNRYnVOUzExRHlYMThSbGpYMkN0RnhONnJs?=
 =?utf-8?B?WWdLNitYQWhWMWVnZzIwQ2UyNTEybGF2TGd2cVFEc3QvMjdNM1JxRmprSnhl?=
 =?utf-8?B?clIwcWJqTldFbnFaWVA0SHkzMXdUNTNQRkJpV0NxQmlvQ2MwUWxtS2NpNmla?=
 =?utf-8?B?RWlPZXcyQy96bTJaYkdWZ2JMU2srcVhWdVN2NW5ZbjhRRDZRZlllZG5obXFQ?=
 =?utf-8?B?UHR3N29ZMjl6NEhjYW1LNWMwOVNKbllodkdqQnpvZTUzdk80WFFMWmVFbmw0?=
 =?utf-8?B?Z3dHZTVXMzh6d3lwUGlTZGRjb0QzSmNaOUwwNnhBdTF4dXpwOTJENWlmRk11?=
 =?utf-8?B?aU5JMk1TcXFwckUyR2tTejVoaGZkU0VDZ3dlUWFWbzV4SmtzcG5xa0VxWldY?=
 =?utf-8?B?bWxSWEpyY2o1TklYQ1MzWTl1LzB4bG9OZkY1Sm1kODhJVW9EYXAyZUIva1Js?=
 =?utf-8?B?VXlSQ0pqclhzMVBlbEo1djJURDlod1l4L3pXSDhlbkk4Z1BqNEZrUEJwb1BY?=
 =?utf-8?B?bXBkeGlsNzFUL1UzUk9kb0dsc0dpSmJWUEZ2dzAwVmloWlVBY1lkK09aSVhp?=
 =?utf-8?B?aXJqSFBHblVEbmNjZ296SHVVUXF6clNqSzNzalZqMWNZNHVhaTRPSGdoaGxa?=
 =?utf-8?B?Z0p1Qi84ZXZwZW52dSthb3N3aWJtWDY0aXN4VElSY2NVZjdQbmJzeThsclEy?=
 =?utf-8?B?UDRIQ3lVOW91YWFDbVRaNkFBMmFOaFJoV3FKVFdyZzJDbStOMTRzaHd5VUV3?=
 =?utf-8?Q?B8h4QZPJipZLe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R08zV2VkTXNSRkN4VnFiVHpOSTdFeDdabVB2Wm1ZaXhpaGMwcEZTT3hPOUxp?=
 =?utf-8?B?eThjaUZvaXVBSDVEd0hqNGJ2eUo2USt2OEtnOUtzb0VWV2NsdnJEV3RscEVE?=
 =?utf-8?B?TmF4TXo1U3NscGJ0eTY2clRDOWw4Q1FaclVXNDNRZm9xR3BiR3Ztc0xaV09D?=
 =?utf-8?B?aEtMcmxtNlZJT01OYzlUYmJYN2tLakV6NXd6amViTXYwYWlrZWlzek51UGtI?=
 =?utf-8?B?dTNZOFp6cWszVkFNYXJpTEhaMzBWRE9IS0p2S3VrUTFmV0l2dUlGTGp4SjV0?=
 =?utf-8?B?YmRqVE8vUzc1MzlxK0UxYWtWeFIzTnE3S3Voc2FlV05YRUsvaEh4S1NBeDlU?=
 =?utf-8?B?Z3gyMi9BdTU4Y3FPNmFhblVuaERhVUNOcG54QmxYNnY1Z2x3R0JpQjdkRkp2?=
 =?utf-8?B?ZTFiclJ6WDJRNHNNbVNjbDF3aWo0TVRSV0lid29DdGN6bDdPQkZWTTc3a2xk?=
 =?utf-8?B?SldEdTJzVEY2UWdrc1hLNDN1Q01tdm9rS3QvN0hqcUNhMjhEanlaUVVsdTM4?=
 =?utf-8?B?UWNkemtHRzByWENLQnY1aGxLNno2L3pDMVdOcDJCRi81R1hoOTdtU0x1T1Rt?=
 =?utf-8?B?MS9FRWFlenRyQVZ1ZWpPUjFyaytVWjJpQStMdjhxYm54a1V6MEpZOFhidWZV?=
 =?utf-8?B?SklWUDFTalRVWkxHZDlnd1J0STRTdGloQkhtSFJGMzJSUG83aGxFdzhsdkkr?=
 =?utf-8?B?UVFvdlBpMjZrVkczemxQcmVha0RGSEdiM2JYUnIwQmp4aGhVRGYwdjFpUlpF?=
 =?utf-8?B?YmdWSzZHSUp3TDhubGEzT1QyRzlSNVZUb2NabWc0T1piQU0wSVVxMWpUNkVG?=
 =?utf-8?B?aE04SUM0QTFaMFY3aDlQb2ZzRzJ5a2lUVDFrdEJtMXFMRkowWGo3UFRRMEdX?=
 =?utf-8?B?SmRBTzFFTWxsODdNWVlHaXAvUmJBQmxLQVM3V2FTQ2sxRWozWWUxdG5SbHl5?=
 =?utf-8?B?cnJJSWRkOEJlMXoyMTVXWE90dk5FLzNNV21UdUx0TklUM25TUml1d1RxUkgr?=
 =?utf-8?B?OFZNdGZZYllTNUsvYVFCU3ZQUm9oZnRvQUVkNitlOW1JSEdPTnhXdCtxQWxC?=
 =?utf-8?B?ekFvR3JGUXZ0N2hBYzR1NjlWQTkvWmF4OTVGTnQ0UkEyOVlNRjR0YUZkZzUv?=
 =?utf-8?B?M0NwTXZEQzh4ZUR3RGdaWkcrOEI1U0RqVTFkOURqb2xTVisyb3FDRnQ0SGRn?=
 =?utf-8?B?bjFBTkM2dnVBejFtUTNoVExwR0dDZldpWFdNRnRGRklnZktYQTZNdmR1aGYr?=
 =?utf-8?B?dXdKL2ZaQ3d5bE8xVnJ3RXVzSXRHNS90SXNZbnFqTDZGSlp6SU5QM2ZTWUpV?=
 =?utf-8?B?OHYxdnFDZ1RueDRqdldydHgzbXVUQWU2QmpvZGNxcjhkMHJmMXppWHliR3ZR?=
 =?utf-8?B?T0dBSjhWbnVNOTQ1NU04N2xVY3FjY00rcjk3dE1VT0J4MU8za29sU21ERzJD?=
 =?utf-8?B?US8rTVUyNnQ2WnY2RElNbWMzTTlOaTBzbE43V05NK0tYWVpRVVRVdWo4SUZW?=
 =?utf-8?B?bE5maS9CSDBqNk4wMk4rT0tzVTV4b0NoV2Y0SlFneVdPVFBvQmtOcG9JT05X?=
 =?utf-8?B?KzJ4UnUwaTV5bWpRaExzZC9SZFluZnY1ZjF3N0I5aGhRTzBlSTN1SzhHaTVv?=
 =?utf-8?B?eHdNTkFNVFAvNmlFaU5MVlc2ZUsvUXRlMnBSVVJuV0o4M0dqN1M2WGIyWGJI?=
 =?utf-8?B?R3AxQzMzUWdMNDVpZlJtNHdYdlJJYVkvRTJRZFE0dmd2cVZQZnl5NzMwYjVX?=
 =?utf-8?B?TUdyU1ROZHNjR3VYVkhhejA1NkYxZ2JWUzcwVmxVYkhNSnJZTU9ybUxXdlJF?=
 =?utf-8?B?NnVPTHlNd215TUZ4eDgxVS9zNTM5UDFCSm1oVjczWlFBZzJpZmlWWWFWcE1k?=
 =?utf-8?B?Qy94ckJtcVNXWndPNkhpNGw5dXFJTlR4TDljY3FNcVBiS204aGEzU3M2S05B?=
 =?utf-8?B?K1EwaTNTdTVLVVIvRFdVRDhyL2ZmT01yTzgvcFFIOEJadG5IaWxtZmZKV1VP?=
 =?utf-8?B?TURHa0JldW5OVEpmMElSTnNhMFByTEhzNFFtSzU4eVFBcGZxZGZVbEVMUmhu?=
 =?utf-8?B?M3hyWmxEOENKYjZwaVJsUlNDZ1JEMGIvWXdjMU80eWVrbytUMzdIOVo4dDIr?=
 =?utf-8?B?U01Ebi9rVFlVb1V5SllnN0tZY2UzcWlaQTBDN3hHQ0xYeCtqRGFKb2RvUW1z?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da64a80-2397-4483-052d-08dd4bad4ad2
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 21:36:21.4121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HSLhJHaVZBUl8Hh8P270HI1aO+B2xMJBWzj6iRIb+/74Lj/ygW1sHRlq5WPBdm2mIyu62aqG15o7xHaWLMW7SvboE6d3yvzU7YN5LhzvQcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739396187; x=1770932187;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2sEJFLT4jjhbd/+EVImBIQguhRGXBVnVluIV8UMlB/g=;
 b=Yt4r2X1dFAmVsIbi8ePnsUVcHAWg3g8aHMyCowOPP5vMJd+CbVEuum8E
 Yb3w7vinY4ueuNz+O+41JskNOe7feCrJnu+pFSx+R3YP4wwdi+2zYBZMo
 0o6qXiHdVZWfNfZCP8zWxFa1M2BIH6qbGGbbM4s/pUZQJgluR+uzmie0x
 uX/cifvE8xiRrvCV4eLBF+Cq7NXzFz4PHiLQslvyfrH0UinsGGUI4xAIL
 pclN3PMID5rYeDDIiX8RD0NNq8Uc6nL5NSKGGC2Q0HO6o7zCz4iyyLIlz
 9vStIcebJjdSurrHudZ0UDX6BCP5jCTONiHnd6DTlpXOBUv9vTAsx4xBj
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yt4r2X1d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/6] ice: support egress
 drop rules on PF
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



On 2/8/2025 5:22 AM, Larysa Zaremba wrote:

...

> @@ -8393,20 +8395,42 @@ ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
>   }
>   
>   /**
> - * ice_setup_tc_block_cb - callback handler registered for TC block
> + * ice_setup_tc_block_cb_ingress - callback handler for ingress TC block
>    * @type: TC SETUP type
>    * @type_data: TC flower offload data that contains user input
>    * @cb_priv: netdev private data
>    */
>   static int
> -ice_setup_tc_block_cb(enum tc_setup_type type, void *type_data, void *cb_priv)
> +ice_setup_tc_block_cb_ingress(enum tc_setup_type type, void *type_data,
> +			      void *cb_priv)

Could you fix the kdocs on the ones that you modify? Most of them are 
missing the Return:

>   {
>   	struct ice_netdev_priv *np = cb_priv;
>   
>   	switch (type) {
>   	case TC_SETUP_CLSFLOWER:
>   		return ice_setup_tc_cls_flower(np, np->vsi->netdev,
> -					       type_data);
> +					       type_data, true);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +/**
> + * ice_setup_tc_block_cb_egress - callback handler for egress TC block
> + * @type: TC SETUP type
> + * @type_data: TC flower offload data that contains user input
> + * @cb_priv: netdev private data
> + */
> +static int
> +ice_setup_tc_block_cb_egress(enum tc_setup_type type, void *type_data,
> +			     void *cb_priv)

And correct the ones that you're adding.

I believe there's issues of this or the previous in patches 2-5.

Thanks,
Tony

> +{
> +	struct ice_netdev_priv *np = cb_priv;
> +
> +	switch (type) {
> +	case TC_SETUP_CLSFLOWER:
> +		return ice_setup_tc_cls_flower(np, np->vsi->netdev,
> +					       type_data, false);
>   	default:
>   		return -EOPNOTSUPP;
>   	}

