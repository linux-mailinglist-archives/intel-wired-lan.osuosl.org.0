Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E077A4640F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 16:06:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69EB683299;
	Wed, 26 Feb 2025 15:06:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f_SAI-rI232I; Wed, 26 Feb 2025 15:06:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95A4A83267
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740582399;
	bh=yt7Cq4MDofEmSlutBDOHT6V0emxKAnBalK1xrJbhzJs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C67t3V7OxwyKt6BmSxzcAJLX4sMyGO5esgqL/aJ5OjxGpXG9cKB09sPN37NeV6xXg
	 7O5ad/wKlx/28ezFUN2Trrlqmp5rMxgWx9qqXu34dI4ISiHoczZtxAg5Djh/xTGJt/
	 IMi2pw3tR/SjVbrLnd4q2GaPSXLPHKOu2yUvgqwnetz7vQqfrU98HrO8h+4QpkWcWc
	 MCbsn38Uwl0u2/T3cpTOJXCceE8puhP3R1ZbwXSyVUjKIYrXKqbzbL+skfbGi+CR9V
	 fyUtCsxul5kxggcS0lMWSpc3eBemFv8kpq5JyCHD9OP3Bd42pYtNWaKA4eW+6hxMsr
	 2dr25cvw9YwYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95A4A83267;
	Wed, 26 Feb 2025 15:06:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 81E4368
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A7EA41225
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:06:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMhsY3GO_FRA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 15:06:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6EF4C411CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EF4C411CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6EF4C411CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:06:36 +0000 (UTC)
X-CSE-ConnectionGUID: 8A6NUDU+RsWzQQATxk+gtg==
X-CSE-MsgGUID: dD2Z9ydtQDq9nSKnBoaOFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52845901"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52845901"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:06:35 -0800
X-CSE-ConnectionGUID: Rv+ZkLG1R7Sc3ih6DNXq0Q==
X-CSE-MsgGUID: SuyymWZBRMakeIAO6B5Czg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117219817"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2025 07:06:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Feb 2025 07:06:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 07:06:35 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 07:06:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eUp4enZDajnEi4nPIcP2mL8pWE2unr5qX/HoOiEJYyKiuYBNxzHPUDGtQyeNg+zUP8cr7U4l16PbDKRBoKoMRYL9ndU4gsGS343DNjs/2VYBhIhSNnA4ac2B6hyV3QeYYLsrg7lNxbz9LV+9C/cswRViEuE/yh1TawlW8iswcUuD7kpQx+2pZe8uO+9qCVtAKB5MO9a/LouftKsJ1FdHAdFgJfkK8FHQmO0VNxtjlntkuG2qbEFRokA0f3jIIV12l1+7qrCZCtbGOVgGRVJ0T3P4736Xtja6v4cisKbzh/EJjX/JW91v5SanAJ3AINjMvAQl0aekHhoWfZOIQ9l5Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yt7Cq4MDofEmSlutBDOHT6V0emxKAnBalK1xrJbhzJs=;
 b=ueQvUv1NX3+o3gCb4UYKVGwUwQlf3zlImedItZXJH6Akm9FWdwztV6zJapbHho+rzhS8EyA7YrketesEpdo3aTBMElgjxIY1Te7J7mU3uArV0SrLYq38KPttnwBf5o4V8CLm0GpwoezT+I8goJth9PZYfI/vvioy4DAU4T7L3I9TZvwBD6baGRoBvIBX6myb1bOZ+/F6sQdAhow6FWtPYVEMnWxn6WF8WLIOPQ9jd/+iyRq12uJ+/4P6p+WCCvTmletxWoemBLshb/CLG3toydt1lKkvEFBBGk8ss3l1d3jJBW9StRhXxuk3yBVxJjKgTa8/htR5A4RVRo30wVNU4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH3PR11MB7894.namprd11.prod.outlook.com (2603:10b6:610:12c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Wed, 26 Feb
 2025 15:06:26 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 15:06:26 +0000
Message-ID: <31477321-c064-4f3d-b4c9-e858d98d5694@intel.com>
Date: Wed, 26 Feb 2025 16:06:19 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, Cosmin Ratiu
 <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 <netdev@vger.kernel.org>, Konrad Knitter <konrad.knitter@intel.com>, "Jacob
 Keller" <jacob.e.keller@intel.com>, <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn
 <andrew@lunn.ch>, <linux-kernel@vger.kernel.org>, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <ybrtz77i3hbxdwau4k55xn5brsnrtyomg6u65eyqm4fh7nsnob@arqyloer2l5z>
 <87855c66-0ab4-4b40-81fa-b37149c17dca@intel.com>
 <zzyls3te4he2l5spf4wzfb53imuoemopwl774dzq5t5s22sg7l@37fk7fvgvnrr>
 <e027f9e5-ff3a-4bc1-8297-9400a4ff62a6@intel.com>
 <iiemy2zwko4iehuw6cgbipszcxonanjpumxzv4nbdvgvdgi5fx@jz3hkez3lygw>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <iiemy2zwko4iehuw6cgbipszcxonanjpumxzv4nbdvgvdgi5fx@jz3hkez3lygw>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MR1P264CA0052.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:3e::27) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH3PR11MB7894:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c3c8fd4-acb5-4e0c-471b-08dd567723c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGxiODhWc3cwckNJV2NsWVNiMVc3VHpsS1JQU1VQa1FrVkFBVUwyR25MOG1i?=
 =?utf-8?B?S0gyRDE2WnhjdVMvVXJHcjdSdjRFVUZMQkNhK05DTmoyQ2JRMnIvTVBHcFI5?=
 =?utf-8?B?UWZSRmpEOWMzUzZnREY3a003UlVLaDlHWndveGhEMWdqN2RIRGxlVXhheXVi?=
 =?utf-8?B?WDZoeWFmYStJeW9QUkFpallUMWgyc2JVVzJjbE9yeGpoU2Qrd0JwK0FQUVJa?=
 =?utf-8?B?QW04T3lKVVZtYTdYUko1eTBXWTNSb0k2aXgvNVFBaUUvSldtdXovelIvTzBE?=
 =?utf-8?B?aTBxMHllamIvT0lIcERzdjhHMFR6TXhnbnRUTisyY1VJVFgybzdhRTZmT0lV?=
 =?utf-8?B?eUxJcEptWENuZzFuRTdabkI2M0JSYXRQMW1nSC9Ba0lqN1krYVhtV2RFeHNh?=
 =?utf-8?B?dGhBZWphbS9FSDdQbFlEeVQrYkNQVDIyajNESVJUayt2NGNXV05hMWt1aytl?=
 =?utf-8?B?bE9zQTBaOUx3OE1RMVJGY0VIV1NmNk44K0psVXVmdXg4Nk15eFB0VXR3ZVZn?=
 =?utf-8?B?QW56dklrZGxYakw2TXAzZ0p6UGlIT0tHYmVYUnlLRDBUMjFNT3BsMWhLeXpM?=
 =?utf-8?B?c3UxV0xGOHdwbTFzaHhtRUp1bEhrVWRrbXJmNHRKa05EZFpJWlNidEkxSjVK?=
 =?utf-8?B?aER4Q0RUKzQ1eGtMQTI0NFIydG1Xd1pqcEhyaGVjSnNFM2poY0hScFNmR3Vi?=
 =?utf-8?B?VUlWZHdhSEc3OVJZRmU0c0ZnNGxnSnBCVkFtTHBnTEtUdkhtUTFaTFVTVkFD?=
 =?utf-8?B?Ujh4YmlKcmdCRDhjZ2dTYjcxbEVwbUtqNEZXQ0NMWUxudExZYmRqVUIzdG9n?=
 =?utf-8?B?c3g1N0Z0U2F6dVFlU1FlMGJjMTBVL1kzSlhHa3pmeFJ1ZlpQYTNSQ3RYcU9S?=
 =?utf-8?B?VGo5Ni9LNXVnVmNudE9uK1FGeW9UL2NyQmJKYWw4aXJTQXdCNkk3bm4rL0FY?=
 =?utf-8?B?VXJlL1ZWaktnL2ZjbEtIZG9CUVQyUVFBVDlFNUlsa1ZwRkI1OGplOU1CWnhX?=
 =?utf-8?B?SkZscFlUTEJqVjJOdEM2aUhydWdTa0FyN1dDOXdGWWtCL0ZrMkkvWUxrbnE4?=
 =?utf-8?B?REJlMkJLanNGd1RNQmlvSDB3dUFOYWYxWEV2N3NEL1krL0JqakVPNU4yWW9S?=
 =?utf-8?B?aXJJTmd1aGN5MU5IWk1CL3lESGlJRDFJTEZwUGU5Q3dwNDV1aWVSbXBRVWFQ?=
 =?utf-8?B?RFI3N2pPS2hqV2hoblVEMjNjV24wOGR0a0cxQVkwK25scTJ3Vld4MUtmbGRj?=
 =?utf-8?B?UCt2elpKaVYxRzBjcGdFb1dPNE9ITTNCMkp4U1U0aGYrYkxjVDBKUGdKUVl1?=
 =?utf-8?B?Wkw3cTlFOTlzc2s5WEJNUWpMZ25TcVJOR1l6K09RekhKanJ5cWpyRmNWUjYz?=
 =?utf-8?B?MVVIenFoV1E4SHlMYUMrVE94ZXJRWmhnQTJ6d3NKNCtKUXB6RE14OVY5SXVh?=
 =?utf-8?B?TjJyZVM0NW9TU1JzakN5R3ZQbjJsam5tUi9jWkRsZklmMUd0blZSbDI2UWhn?=
 =?utf-8?B?Z3VXWTNMVjhIUWRKcnZReFVqdzJZMXVpR0pscGtPWVROTWRDRUE5L09mS0Fy?=
 =?utf-8?B?aXFjNUIxeUxjR3NXTGpGMkMvNjdXSkZFekI1em1JRnRxaXdHb0VNUUxxMmZD?=
 =?utf-8?B?ZDJSS00wVGs3SjBHMVFoRFBhdkExUWVwbm44VXAzTlYwbzZkamFyMzR4UlhT?=
 =?utf-8?B?dTNpSFlha1RyK1RRbzRBbm5pQ0ZEcGxzWmtYQXZvZ1dZMzRnbVVSWmQzNUts?=
 =?utf-8?B?V05jTFZTTlNsOHlBMzU0SlJOZ0dlSnBJaE8rQjlXZEFFZXdiajZZZktCaFlz?=
 =?utf-8?B?b0JIZWZ1ZVJmeWkydU9Ldk5LcGU1aFA4R2RPUU5uK3p6M0hld1dRYzFQVmxU?=
 =?utf-8?Q?j3gj2vs748Zkg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDlubXBLTUpQVTNPM2FjM3MvdXNSdHhyVFZ1b1VWOXNqV21jOGoxd1dwY2ZS?=
 =?utf-8?B?TWg3Sm1FckFsY0dhWTlKRytuaHlEZmZ1OUkwck5VZHJSL3I3bDNOc29ObkRw?=
 =?utf-8?B?QTFpNlk3UnpUOHhuREdhMG54WUp2MW90WXFVSGduZTAzeWZ3TWVrVk9xOGV1?=
 =?utf-8?B?bkhOOWVtejVITExtNk1EcjV2Y2FUVDQrSm5tSDUwY2VMNFNKOGJhWmltV2ZR?=
 =?utf-8?B?NVIwbnowUWlydEZDWVZRUTNnVnJGSDJYUHAyQm1OMkNOWWRmRmFKdUlVanA4?=
 =?utf-8?B?dCt0WEZzRGczVHVGZjZxa2dpZnVXMXdqRDhENXJia2VHV2hVRktKNldPVVpQ?=
 =?utf-8?B?UE02NEV2QitqK3hBaDhFZWo5MDN5L2w5Y0dZUmpxYVlnZVQzMzNmZVgvaHJK?=
 =?utf-8?B?Q1RFbHNWdXp6WEZ5NUtXcE4wSkhNRFUwdVoxbmE0TFlvOWpWTmhVcFJ4d0pt?=
 =?utf-8?B?N2swUk91TXpiV1dtQUFiaUUzTVNBZ0oxeE15VnhhN3liZEFIUVl1U2lYZnFK?=
 =?utf-8?B?ZDFWTXNrYVBHQ0NVemo3VklHZTZ0SkdXWFV3L09qZHBvYXJ5K2JaS1lZVE8z?=
 =?utf-8?B?SzZHV0NOM3ZQN0dxUFpNRDNrbFdlN3o1c1R5cml1N2RsRFVhTEZlWVlkcFZq?=
 =?utf-8?B?M2kzUWVxcWRRMmNYVHNSS2xKelVvMU54NUhZYkQ5RDlEU1ZmODhseFJBTnY3?=
 =?utf-8?B?T2FFcVoyMTh3RXZ5Y3I2cXBPYmxCZlI3ZnFjZm1QMW9QR3Fxc0U5UjA5VEZD?=
 =?utf-8?B?a1NBQ1I4UkFGbjdLdW9IY09xVTZuZkxiMGRadll2TWNNTWIzVDZodVV1S2p2?=
 =?utf-8?B?cXN6NzcrUFU2K0g4UWY3M2xGMnBNcVJXb3c2UzhyL3B4QkR4RWh0Z3ZOQWZV?=
 =?utf-8?B?ZG5xSE5yeEE2TUFwNUpNL1FNd2x0ZGhQMndaOGRWMWVhak1hU3pPVW9xdk5F?=
 =?utf-8?B?VlpIN0s1bzg2TDRpeURieWJSazlzV2hmOW1ENi8zR1hXNUQvblFzWFQvM1o2?=
 =?utf-8?B?Zy83N1EvcGp4ek9LM0VrR0ZyMHRRRUR4VTdKZURUL3hwb2F2UDEvOXJaUVlW?=
 =?utf-8?B?U1M2Wm9XRWF3OEdUZHBmWE5QZldLYlg0MFEwWW52eC9xQmE5SjUyczh6SVUx?=
 =?utf-8?B?M1lMcWY5MWY2aGRnZHBLYmc3NTN3WXpFdkFxMXo5UVVKNEd0TU5pTGdNL050?=
 =?utf-8?B?Ym5tWFRhOWZLUTU3N0hPRGVBbTg0bkMrQVEwRUljQndIMXZ3ZmZCQlZZV3RO?=
 =?utf-8?B?VlV6dTd0NFh0aGZHNG5xUnQ4WmNINjVlZHdnQnFIUG1mMHY2UXdFUmMzMGNE?=
 =?utf-8?B?VjZ1UWtmNy9PVTMwTTJ5eVVpNGh4RkFDdHAvMXFpdituM0p5eXp3bGNpU0Ev?=
 =?utf-8?B?Ti9vMFlsUGFQN29NVDlDTGNBTitKL1J1UU4rM1lhV2xmejM1TGN3b2phNjFC?=
 =?utf-8?B?QUIxN0NWdjE4YzdXWVpuZHpjdXFtNEtEMkxMWERReEdxNGZxUDNEaGQzVEhO?=
 =?utf-8?B?cExNbXovaTRxbWlTYU9GYjRHZytQTnlmYlNPWHNha2F0OFd2UUl0ZmMzOUN1?=
 =?utf-8?B?Yyt0WmZIeFR6VjkvNk41ekYrWGtmQ1BYVTZhL1A5VXRYRmVER3JCUVc3aEdR?=
 =?utf-8?B?NG5ZUlRGSzFxM3c4Um1VVXBqb0kwNGRWZWhDbTI4SEZnVGlRYjU5SU04WSti?=
 =?utf-8?B?UnhCNzhmMFFmVTdXQi9iclVMd2hPaG05NFdJQk9oaXVyN3BNd2tRNkdpQ0tZ?=
 =?utf-8?B?REJFK3hOTlRoUHRETDIwOFVkU0NVUnN2cUV2U0ZoTVZoOWxBbUFia3FRTWZk?=
 =?utf-8?B?MFMvSXVLTUF2TU5qcnVIRG9ieXJvTEVpRnV0a255c0lWTXZlemRsTE9qTEMy?=
 =?utf-8?B?bTFVSE9GQW9tM0tqWnV4OHBkZlNJcS9WZTUwLy9KMUdNNjZtRXYxeW9aYUlr?=
 =?utf-8?B?V2RtRjVBVE5PZU5iSUFjMVNXU3FtbFpwWU9BREZVSzNDVHowUmVVN0ovNDRa?=
 =?utf-8?B?UDFOQ0pETnM0TWZHOXpFYWlvRmRpKy9yaXRTOEJ1aDNlSFhUT1Q3eXNkRytB?=
 =?utf-8?B?YTE2THZqVk5tU0crUWQ0Nm9zSHZXU0VMN05sTGFhOUtlbVdRWVYxUDlNci9L?=
 =?utf-8?B?eFVVdWR1cHg1OFozTit0azZxdXhxcEU3eWxKa2grSk1UNnoyd3Jha0c1Z1VD?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c3c8fd4-acb5-4e0c-471b-08dd567723c2
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 15:06:26.0091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xQ6oEDq87b5v44ixQBANfByfpR+UqOxCgru3qJ3mKTU7KFuGKYrWzvGelQxsyjJmAiAqT5+3TE4cIhoo6KCejnj3qoGD3cegsmLd30QkKMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7894
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740582396; x=1772118396;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YuACcydKKmZ4l/b4ipHIJNA8LNHVL8WmNziep64oTh0=;
 b=nn0p8RvNnRwgzyMuwYKM3SzMl9dYMNlEaZEGHvhmAp+6/VZ/fXeYMjq+
 jQzNMg8l/xDxkTmi09YSAHo4crE7sZ3JmZr32PBp4/iiEZUV14E38LBeT
 ltMq9f3ua9kz4D6NFIrtMpGQ2/h9szcRTG0U6rOsRCiwRcIgN+xG2WAue
 8wKeklVGXpkTpyrVv36G2slcoCWhrgY+qYBo9jOK05i1nzSLyb6KtU2bq
 U0tJkS6NfIJ9iHdKoXRYkAYGE2yOpX2EAHrnlhPP6rSj5E/AH+p2vQeVO
 69PGcXP7jKNu28r30kif47ZjhTxFmFRif8OM1h3CAp5qyUJQxBmC27u4S
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nn0p8RvN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

On 2/26/25 15:48, Jiri Pirko wrote:
> Tue, Feb 25, 2025 at 04:40:49PM +0100, przemyslaw.kitszel@intel.com wrote:
>> On 2/25/25 15:35, Jiri Pirko wrote:
>>> Tue, Feb 25, 2025 at 12:30:49PM +0100, przemyslaw.kitszel@intel.com wrote:
> 
> [...]
> 
>>>> output, for all PFs and VFs on given device:
>>>>
>>>> pci/0000:af:00:
>>>>    name rss size 8 unit entry size_min 0 size_max 24 size_gran 1
>>>>      resources:
>>>>        name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran 1
>>>>        name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran 1
>>>>
>>>> What is contributing to the hardness, this is not just one for all ice
>>>> PFs, but one per device, which we distinguish via pci BDF.
>>>
>>> How?
>>
>> code is in ice_adapter_index()
> 
> If you pass 2 pfs of the same device to a VM with random BDF, you get 2
> ice_adapters, correct?

Right now, yes

> 
> [...]

What I want is to keep two ice_adapters for two actual devices (SDNs)
