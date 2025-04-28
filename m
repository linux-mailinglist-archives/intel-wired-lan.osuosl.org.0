Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C95F1A9E8A7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DA0A812A7;
	Mon, 28 Apr 2025 06:58:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qidIaSlZHu5U; Mon, 28 Apr 2025 06:58:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAAA7812C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745823488;
	bh=fFLwHVV/D8GrMxuzd7C1xzK4ipm5Ic9M2IFNrZaNqdE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E6ctNTKmctiD0it/zSRq/ZvlkKSebxeltj+35zQC2nc80edXobmpoCFxfYRL31kgJ
	 MZhI2+VezAZggACMfqyOWB77CtneXKiuKvV+EEze9PHE9hPvLUdZzj8WGJ1nkswNPZ
	 0pJIo1T/mnT8fyGiLIvqFAW1kbrolDLQ8C5ok0z55mYJaRVcNZugFoEkmWlN3LD7PT
	 vM38DE+fnqp8dfk+/IOy0HeyOODaPyccJzLhUGC4opCXRSNTj0hFBnj7G0TiqOM2qy
	 C8mYTlbJEirt0MFP+/GUz3sX/S9hoep9yc5wPbiyTEQ+F+lKPUPFBkYldbh3iCIoXc
	 46E4KjLXcShIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAAA7812C6;
	Mon, 28 Apr 2025 06:58:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 65652C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BD5C81258
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:58:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Xv3xK2_6iKZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:58:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF93D81236
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF93D81236
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF93D81236
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:58:05 +0000 (UTC)
X-CSE-ConnectionGUID: eo0fmChoTSaSnuvWuNb9GA==
X-CSE-MsgGUID: kiieilP0Rxi2tvVaMHysZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="47414947"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="47414947"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:58:01 -0700
X-CSE-ConnectionGUID: Nc1ZbyxhSrqnXyCKBKwU4g==
X-CSE-MsgGUID: rFt2Ap51SJqlnCIraUAOFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133404314"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:58:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 27 Apr 2025 23:58:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 27 Apr 2025 23:58:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 27 Apr 2025 23:58:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zLog8SlG6HySATJJNJq9OeDzYGZ//57dmgpMPCjOb4XuLYi9CCWLxqLazOu7t2tZSn9psB+bJrW8/AxvrGH1IoJh+tVxlMxdqv6T1nrvGnx+/YRXKHJphisGIM53SxeiU9cDvrEtNvFuM4vVC4J8XlrSnTYO+n2GVpG70+fcN7uI6FS9wrFsilZLw9zwITcwLfWptH9c0dg4/UIMc7PGqoHYxoH/biQVaER3I8nurk89CeW/I+ShJnDYx3Up7rbFVACwSqlDDmcoKZsZVVXs3LcvxmjtZ6bFTdIf1o0nrGyqec0Zl0/QnNEAHVQ5MXTXrxu9cJsFXgtGsDzVSRvDIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFLwHVV/D8GrMxuzd7C1xzK4ipm5Ic9M2IFNrZaNqdE=;
 b=G+gK11p5JpFlvm7jFX5ogpQ3vZ5sELrrO/DUrrcn9ihgf+n9OTqMCvUQHONPPGl3nDYPOSoPXK0xXUYZDMOmoBIndfjtoXgTCth88n7d18qBdehJ7llYsiLbSqBVlsmusQ7jRUmplYrceGpbeNHUv8z3OmNhHunMZYkFEii+1x+Av5cMk8jiJaAKjUCiXbRbO9gO2Y0Zds/KIEalWFg2M4K4eqCPQWAQ90bjvmwq1w2pE2IOlS+SlDS68/xWivkmTNqDuHjT6qDn5dAaOq7QTXfPZqVtuhwymHcpWSMD5ldZV8fHnx6wJZxNlMZ7oJFnZNQGphKhsdaKN1mC7hNIHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6280.namprd11.prod.outlook.com (2603:10b6:208:3c0::15)
 by SJ2PR11MB8513.namprd11.prod.outlook.com (2603:10b6:a03:56e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Mon, 28 Apr
 2025 06:57:56 +0000
Received: from MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::3f63:c727:6606:c089]) by MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::3f63:c727:6606:c089%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 06:57:56 +0000
Message-ID: <524a13fa-eca1-4741-aa70-265a10cf96cb@intel.com>
Date: Mon, 28 Apr 2025 09:57:50 +0300
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Chwee-Lin Choong <chwee.lin.choong@intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
 <20250428060225.1306986-3-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20250428060225.1306986-3-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0016.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::18) To MN0PR11MB6280.namprd11.prod.outlook.com
 (2603:10b6:208:3c0::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6280:EE_|SJ2PR11MB8513:EE_
X-MS-Office365-Filtering-Correlation-Id: db5aa91b-b1b7-4414-ccfd-08dd86220112
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2lTRm5wMXJEeWdKakVDZ1I4clJkSlNiRWJ3OFY3ZDVBQlNLMFBUbmcwVnpu?=
 =?utf-8?B?WHFOa2NMdGdFUkc3ZVQ3UEVLUmk2aTN3d0l0Q2hTMDVtaXZrYmF3SHFGSFNY?=
 =?utf-8?B?blhOYXhKQUFXbEdwSlI1enh5cG1PdUlOOWhxdUY3Si9mTEIxV3p2ZjdCdDNq?=
 =?utf-8?B?QW00bXpBR0dMbzJ1VFoxNjhCOUF1SllJUHlNekxIRkl4SFdrNDFsSE5iSjc5?=
 =?utf-8?B?Rmhla1pkSVJtNDIxWHVGcUppZmt6UTR4cEcrd2ZibVgrNHVFd09LelBMRlYv?=
 =?utf-8?B?Yml1ZG82UzdNakpNUk1VQ01wYnJqOXlLMk5IMUtEbURHRE16S2xRek50TmFi?=
 =?utf-8?B?SmpHSVVZbk5yaDRoMm9yMXdNZWFtS1l3dnlpZ3RjcW9PaURCeE9SSTF2bzR1?=
 =?utf-8?B?dDRHZkpsUWtUSkJpK2UxT2RQMHVSWThYY0VqMFR4cTZhRnJaNXNkcEdvb25P?=
 =?utf-8?B?ajdhOE05bGZpRnBXTlZ5WFpFdlZHWGY4RXV2cG94UW13NXZYVTNpNlJMd2JY?=
 =?utf-8?B?RlpHSHNhOU5FQ09LZ25nNEFYRjZEMzk2UHhzQzAxb1hlUHFybTRscVpFcHVy?=
 =?utf-8?B?cDc3UkpEOG0wY0dUWVIyTDNqQ0RaWmFhWTM4VlJqS0V5dzJyRU14TklUK2o1?=
 =?utf-8?B?QlZQSFg4aUwvU2t5bkxqRkpCWTNTZHpCOCtqVjZWNW40T1FsRThkc1dLY3BC?=
 =?utf-8?B?ajdzYm1jNkhSYjhuYmpDdkJ5UDFNbmlCaUtPSEw0VWJ6M2JsNnZwQWp3SzhZ?=
 =?utf-8?B?eGg2TXdxK1dEdHk3aTkvd05aa3dWZGVGelRzdTdpV2svVEgxY2NRZ0k0SVZK?=
 =?utf-8?B?MWZZakgxZmdTWlZCWC9FSzM2M05ZSEZkR0NwY1NFSFlaaCtxOHhTaHZnaDhj?=
 =?utf-8?B?QTE2TTdZRm9zUlJqRzZDWmo1Qll4RU9zK2ZhZUFmWEZvbmRLRmNaVU81UzYv?=
 =?utf-8?B?RG10ZllSdndEL2F2dzFWR0QyaTJINHhtQ0dpSTdTdm1RcWlib0E5UEJtSDRT?=
 =?utf-8?B?dG9sY1Noa0NYZUhSamt5bCsrLzFCNTlvSmhXVVBNQXJ5TVhkdkhYdy8xYjc4?=
 =?utf-8?B?ejZqOTlUV01nUXo0eFJzcmRxVWRyZWwrSlF5STY5KzQzci9NOXUyV3JpOTZy?=
 =?utf-8?B?YTRDSFBGTW1FeEVSWklzU3VEdDdTdXorL3VXUUdhRDZ6RVg0SGFYVmlMbjM2?=
 =?utf-8?B?VU5Lbms5WnB2MmlGeDJzV1JFL1VCSnRLaUhBcFMwelZ5SWpIZXdyWnpzN1pu?=
 =?utf-8?B?THJIT0xSTkRVajNzYldNZGpjd2VJblNHV0ZwSnBWK0ZtVUhGQkt3WU9GMXhp?=
 =?utf-8?B?NldoV2hyNGZCRmx3Y0U2YnhHTkJlSGhScVNXQjFlWFlvZUFPNHVrcWN0MWVk?=
 =?utf-8?B?d0t6WUNFYkEyVGNFbldFVXBLRmZWS2hVYTRPWGxFc1RiSEhZN1ZWVnFKMkd5?=
 =?utf-8?B?bmp4V3lPSlpqR2cycHd4Uk5jTnBYZkJZZTMwNEp5a2Q2SEtaaGRlUGw0OFh1?=
 =?utf-8?B?K0UwVGR4VVc5NUpRTmpmajhaaFFnbGFibTlGR1ptN0FoTXJESjFrQkgxVmV1?=
 =?utf-8?B?NzgxSHgxSGh0V0JiWkJpMXNlclpacUlyRWtOMGQvZ2pzWFdlSkxiNXNYcGtF?=
 =?utf-8?B?K0dFbElORVdrYzBLckxJdHcvMXczQ3NmOFdCOCtuaUhLb3FRYWN5Zk5zSENn?=
 =?utf-8?B?dEFURW8wOFV0NzI0RERWNkxUWUlsYVBsSlRBYkhVeFdncnFSMUVObTExK3cx?=
 =?utf-8?B?bFBYcmdLaGJGNEd0UWQ5Uzd4WnczODlNWFBwZ1U2V0xpOXlyODZJVnJ4SE9a?=
 =?utf-8?B?MVMxcFFhK1BNRlFuVmM2ZVBnVWdZUkRWMWlxaTdscysvRUdpSDkvTlJaU21y?=
 =?utf-8?B?Mk51RXFwU3luMkF4V2ErMmF3WVFGZzBDeFI5Zlo5dVFSRXVPSFp0TzlsamdN?=
 =?utf-8?Q?xDe2ahi68MM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlpqRjF1OXlubWNNMW56TjhTMUJ5MG5oeldKQ3pLRUdybldVbk5PMDlMMzlR?=
 =?utf-8?B?NWJER0VVd0tINENwSDBGbllZeUtIZC9IUTIrcjREMkRrN1Urci9wT0U5YXJH?=
 =?utf-8?B?enhreTNmLzczOUZHR3NJSGJXUkg0dkdTUWVLZ04xd3M0c0ltU0NvQ2E3allQ?=
 =?utf-8?B?RzZuSnV2eHlYTzJMbGVZemo0aE9va0FvQXY3Ti9Lb2VoekFwS2taSFpQdzB5?=
 =?utf-8?B?dDcvMHFJdmIxMFBzLzU0b0lCKzg3VUc3U3FOay9BcHdEK0pkNzl0UEFrYm4r?=
 =?utf-8?B?Q0dqTmpRaTdrV0p6VjNkZE56TnIxTWVpb1lGSmJORndUcjZMWTZUM1hoR2Ft?=
 =?utf-8?B?cmZrSjdPN1ZORXBvSTZ0STR1ZkRlNEZ6akdOMXdYb1Q2blhZK1BjWVI4ekxj?=
 =?utf-8?B?eDBvekxieGlZRVlNMnhLS2RxSFhEcnRzODlSdUxkN1I4VDNMK3hOMFhkdlNO?=
 =?utf-8?B?cTJhaWNaMDR6Z2FPR3JHK3o1UmVyd050TjFwUnVsVlU2OXdtK2hnTXZHUmtC?=
 =?utf-8?B?d0k3SDFjQkZzanZ6QW04TU1mUmI1cUc0VXJxbFdjRVdQaDU0RmtSdHhLOTg0?=
 =?utf-8?B?Vk90TVdkcXFLMmRoSmFEajZWYnNjeTlwVkJmdWMvcXg1SW1pV1phRDMwMTho?=
 =?utf-8?B?NnYyRHNjNGdDK0F6Y3pHK2J5Mm9VV1BQb3RXeVhKdVpxUVQxSTRrci9mUFli?=
 =?utf-8?B?cVhsWU5nQ0ZZRW0yZW1udFlzSXM3R0o4Q1I4YzR4K05ZdDBiYTl0cjN2SDU0?=
 =?utf-8?B?RTBLcDU3SVBreHJudXhRd2k1WFZ5T0Jnc09wclkrOHFDcEV6VXJwQmxtL25Y?=
 =?utf-8?B?MHJJanJhcU1sN05PUVRDMUJXRTVlZG5hVFB1cnYxaUdLcW5WOUVBdU85Rnd3?=
 =?utf-8?B?Y3lmUjY0QWJXYndvWGgrcEdFcTRxd0hMWmdYSlhIVGhzK29FV2FTQTlIQlM4?=
 =?utf-8?B?a1NaK2pVL2xVdjRYTU40QURjYndIYkdmbnFoYlJ1Tzdjcng1Z2NpbE9VV2F3?=
 =?utf-8?B?aEdUQzhYaTk2bjY3cDhTMy9WYVlLb2ltVk1vakJyellxNG8ydVF2NTVzNjcr?=
 =?utf-8?B?aDlrNS9KcVkzUWRJemRiOTdhSGhOUGdZczVSVkxSbVcxV2lYMDNETVV4MUQr?=
 =?utf-8?B?NFhVTzFZNTV0NmtiKzB6STk4U3JpMzFiaElPRitZQzNIWjBYdnJ2Mk5BUVVE?=
 =?utf-8?B?SW11SUtPOC9lWUlFd0xoeFU5NlYvWFdHdmpXWTRTYjZSWk9yb2Z3ckJqVFNp?=
 =?utf-8?B?T01EcTEva0N4cTd3TjE2TUFqZVRNMXZOeDNPRXpVYlN2OUJhVEUrWERvQUll?=
 =?utf-8?B?dFBPZW9mNHFUSXAwWmVldW45UHU4OGxFc1Jqd2dWcUpoaS9jMmEvY2Uyc3VS?=
 =?utf-8?B?Zy9TZ1dRc29KWXAvMlVLZGtnYjVkSDY0aWxRSkdQS29OTCtONGJndkhEQVlI?=
 =?utf-8?B?OUcweUpvVTExc3gyMWxtK0x1UE01ZDRZckxDSTYwSWJwVzNnU1M5MHBXNDNW?=
 =?utf-8?B?WTNGcVZjODM1MlppSy92MWhNNDROcm00VDMxYmVKZS9mVnJCR2JEMjVEeWFZ?=
 =?utf-8?B?dm1VcnhJRzBiVThvcUwzVGhsWXlXa01TeGRsMU04UWE2VXZ5SnJ2SmdxVzJv?=
 =?utf-8?B?eE9PTXBPNGdpMStDZGhkWHNoei9yQVNzUXZ1WXlDdjdoQXR2VDIwNHBOOVJx?=
 =?utf-8?B?VlAzZkZWTGJFY3FqRDB4UE5qY0daMlN6aFV4azhLY20weiswaVZuelhTdktK?=
 =?utf-8?B?RzNOZlB6NnFiRXhZeTZqY2tEVzZaUmYvbG5IMSszeWRWUVdlNnQvTi9WOGkz?=
 =?utf-8?B?a1h4Vk9aN0hUYmhzZmRaWG1OWjFBNnVucDlKVTlJelRaeFFMeXc2VWgrOVNU?=
 =?utf-8?B?YytUb2NvWFBHUURqZW9oSzh5eExrS3p0RnB1SGtJa0ozdWwwOTBnaGxoaHpj?=
 =?utf-8?B?ZTlOL2loV3BxZWlBYncvdWhXUGJrNGdpa2JzN3RXei9RVVVFdm55QnNTZHdH?=
 =?utf-8?B?QS9aclhHbUNlOFFydmZHcW90YmpZNzdlb1JRbit1VmtkcDNEMDE0cVhQK0RR?=
 =?utf-8?B?dGxmL1FxUDlmc0pmdVE1Z0hHeWhZWmJyaWdGdXdYem5qNFRQU2NZaGwyc3l4?=
 =?utf-8?Q?eHospA/Q3LSjTVicuCKF1G2L3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db5aa91b-b1b7-4414-ccfd-08dd86220112
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 06:57:56.3800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +YsphMvlvxbhLINn0M4ZzIouxQnP2cSDv2JtjraITT2ZzdH0iaRNmjrgGap7r2F5gEiJQU506F4DOdPFTnsWhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8513
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745823485; x=1777359485;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U3YwesuE4DQ+8q+U3uP7MHjiUQsPDWbXoHo9tnMP0Jw=;
 b=bbpsld/fus5q8Rv8JbCQ9g7XqEihSUgQv5t9zjESV2ruZA6yCtrdWFn8
 jwvXG/SEp+O5RF06dUfATNLIIbcSQI9TCKvfZF3GxAF5Kie27VCgZz6DP
 ACJiWLpVMW1CIfI80kXcJxD4rRvch542Km0cpqRntDEtKLQ4UBmDSyjDz
 xRoTm5xZfE4gYb94R0Nd2YNWU+BWtNKBkLqMYboZTm9mQVwNBx1Sc6ajO
 cCETyqL0zOUbV6i36eLgwk5jkWZ5h3cKr5yxuyTPLRX//SZJQpPPr0pkv
 KtjvpdZhGxDkwM0whAgRmffJLdEsRf6ubWGLcBiec2gCtBO5f82BHqGuS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bbpsld/f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/8] igc: add TXDCTL
 prefix to related macros
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

On 28/04/2025 9:02, Faizal Rahim wrote:
> Rename macros to include the TXDCTL_ prefix for consistency and clarity.
> This aligns naming with the register they configure and improves code
> readability.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 6 +++---
>   drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
>   2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index e9d180eac015..bc37cc8deefb 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -487,10 +487,10 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
>    */
>   #define IGC_RX_PTHRESH			8
>   #define IGC_RX_HTHRESH			8
> -#define IGC_TX_PTHRESH			8
> -#define IGC_TX_HTHRESH			1
> +#define IGC_TXDCTL_PTHRESH		8
> +#define IGC_TXDCTL_HTHRESH		1
>   #define IGC_RX_WTHRESH			4
> -#define IGC_TX_WTHRESH			16
> +#define IGC_TXDCTL_WTHRESH		16
>   
>   /* Additional Transmit Descriptor Control definitions */
>   /* Ena specific Tx Queue */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 27575a1e1777..725c8f0b9f3d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -749,9 +749,9 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
>   	wr32(IGC_TDH(reg_idx), 0);
>   	writel(0, ring->tail);
>   
> -	txdctl |= IGC_TX_PTHRESH;
> -	txdctl |= IGC_TX_HTHRESH << 8;
> -	txdctl |= IGC_TX_WTHRESH << 16;
> +	txdctl |= IGC_TXDCTL_PTHRESH;
> +	txdctl |= IGC_TXDCTL_HTHRESH << 8;
> +	txdctl |= IGC_TXDCTL_WTHRESH << 16;
>   
>   	txdctl |= IGC_TXDCTL_QUEUE_ENABLE;
>   	wr32(IGC_TXDCTL(reg_idx), txdctl);

If you do this, I think you should apply the same change to the RXDCTL 
macros that are right next to the TXDCTL ones. Otherwise you are trading 
one inconsistency for another. :)
