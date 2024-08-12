Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB5F94ECE2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 14:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39BF5405E3;
	Mon, 12 Aug 2024 12:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 95pkzgFXT1m4; Mon, 12 Aug 2024 12:23:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C90D405D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723465418;
	bh=fh8+8YVzmPv74XgWHA7rb1TffZGMxala39AoS7khLmE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tOiOQJRUu3QH9BRVQhYQqjijUZXgETynLExapWu7CEyj2E9Fo2J6EnJP2B2FrjVXX
	 +HMdGIaEVNHk/yMUbcNs8JJ+xIWRBScnV5r5IWh/S0l9YSUAxm2Z0iqMPYJN8QhCnp
	 mey0bEQ0SiHghl8K/+5hr3hoV4xjrf9GtpEQ/ZR0Ej7t+MkWmfQ34tJzrzhxTUAojp
	 qTCU0SjrNYKp/jZPccanQGk7mYSnZIGoB/r4DyyEF74MiAV6M5qIPomsF30ZHIq8Iq
	 Gd7oVCqk4DYeSbEvOkwlq9SJJIiFIHHOTmKHQpIqCnv0x/GN55SV5KIGQ1SGtwx62O
	 eifrWQCl9pP/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C90D405D3;
	Mon, 12 Aug 2024 12:23:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FBC01BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 12:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B40B40557
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 12:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u3Z-i6KqkIAS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 12:23:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2CCDF4011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CCDF4011A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CCDF4011A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 12:23:34 +0000 (UTC)
X-CSE-ConnectionGUID: mZuYn0FwTnqE+uUyu9buPA==
X-CSE-MsgGUID: 5iMzkjR0RE2YTdhVU88hOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21717690"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="21717690"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 05:23:33 -0700
X-CSE-ConnectionGUID: HEB4qCKdRhatG63wmJVkNg==
X-CSE-MsgGUID: WjQFsNPrQXeRLPJKNQmncw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="57895554"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 05:23:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 05:23:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 05:23:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 05:23:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GItfyE6M5wZxxSVPy+3E1+3ph2y5Qa8h/e36j28EdgnS/Tqpidt+tci6y6qnLfHqSpqTksW6L4yt5l9oYaNRDqjot+lMUI+Iltng7KneMlMiARXgY4YlD+Vqi32L6KojAPsqgU9SZRRFtw+6+g/QEMe4UNXuQVIr2y9ce8oERoSY1ZmFqRTYVy3xtXg/PMlJN5i8kq/SxWNJvmW7qM9FS6XGdmOSR6abdttFijrIV/CNR6ZRvvTcsiGjHLifSy97xdIvCAZ07yBSY1fAfdAEvtroU1hQ+eq6Bag57vj2N8JDloNKSXQJDRBToR9xEJH36gzCv29ObyNwSnC+4GDJbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fh8+8YVzmPv74XgWHA7rb1TffZGMxala39AoS7khLmE=;
 b=ApUVCmC9bFmXJFNy2p0k6h2/qeGb5GY69jGk3AHQwADJowenHMoUUuKtQkmWiKoEhOhPLb8jtb3fYA3I227XVEXH0cn4YrSmU57OHqTKtf258PcHAM7DKUG4WZ2CEHELQSjNND0muTKHqKW0A3G2AsYtuSk02eMoEW4dNsBgyiyFsR07S5bgbiDegqm1DNLFVxk2ATO7UXaiXDjIH7a4lAL7PutpiVDwMMoMLQLdBG4Uk2zIwsv20+H7ISCfalyDQVfKCnrpnPlZUxCEAfOpyNx7AmVtrSqeYfNBQLmnB9UbzU/bH0+zZf2sB7ohGC4eHZzzPbOap9X+R1S5cRBG9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.28; Mon, 12 Aug
 2024 12:23:24 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.031; Mon, 12 Aug 2024
 12:23:24 +0000
Message-ID: <1c5768a8-7d19-4101-ab62-dadd1ed8eb60@intel.com>
Date: Mon, 12 Aug 2024 14:23:17 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-7-mateusz.polchlopek@intel.com>
 <390393c3-b4ee-473a-8055-813130876e71@intel.com>
 <ed34373b-1afe-487c-bb35-3a62e4cfe4f9@intel.com>
 <e562774d-162a-4b42-b286-28a1feb77b62@intel.com>
 <7495a81b-0367-4883-9e6b-e4487ef378be@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <7495a81b-0367-4883-9e6b-e4487ef378be@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BE1P281CA0362.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:82::8) To LV8PR11MB8722.namprd11.prod.outlook.com
 (2603:10b6:408:207::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH0PR11MB8086:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a6c63a7-8035-4475-df16-08dcbac98f42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R2VEeFRXM2JHVzlIZGZvS0lRYTJwUnRqVnFkdnUvaC94OUZuL2pqaDZiT3p3?=
 =?utf-8?B?NjBwQ202bk9RRk5HWXZwaHZiajJGZ3RrTlFmejRJamE5Q1RQQVVZZzQraEo5?=
 =?utf-8?B?YnhxTE9sc2JQTmxYMW1iTURWUE1lT0djYjA5Z0pEVFpPeURvalNtRkllS1lC?=
 =?utf-8?B?T3ZXK2xOQWRtak9aUUNsN0dKSkV5dXRhNEpiZ1FZQUJ5SngrVUxtN1VKaDZ5?=
 =?utf-8?B?TXZXZUpkT2xMWU5OOHB2enREVGszK1FFNkNvWVJGQ2dhOWJZa2tBMS9CTVFu?=
 =?utf-8?B?TGR1YnF1ZTlvaVB5M05DK1NRNEJ6VUlGTGhQQUJaSjFib0hHd3hDYXJzRkE2?=
 =?utf-8?B?WlFYczhpdkRYR2tVN3VwdDVEa1dUQ3c1UDR4YWhKZTBiSVlURUl1L1NYQTk2?=
 =?utf-8?B?aW0zOUp6SzViT0dtRkxrMW1yWTRKYTg3cDk2a1NYRkoyak1MbUEzcGU0Y3VR?=
 =?utf-8?B?Z2tRV0JyTFNRSVpGUmtuN2p2d1RHTGU0d2Q5WGFKdkIwWWNlMFlQN2d5SFhC?=
 =?utf-8?B?WkZIU2V6MkllK2d2UlZKaDZQS1Z6WHI2VEczeVRBUTJNSWlrWENheXArcGZT?=
 =?utf-8?B?V2JuUHdILzN4dm4wc1FzazZMNTllUkhiZjliZ2xUOUhEYTQzRmRldjZXQmZ0?=
 =?utf-8?B?eEFNVnplakVuR2dWdUtUQnFBcWY1ZUp4ZXF1ZDBZelQvTythMGJVZ01xTExx?=
 =?utf-8?B?Nkx2Nnd4NE5RT3V1bzNONTFWVFpOeExuZnBmcGNHaS8zY3cxLzA5UmRXZEQx?=
 =?utf-8?B?ZE1RRzZERWcxQURnbkZWS3kwL2k0aVZITVN0bnRhMmk0cDg5d2w5bzFyckdS?=
 =?utf-8?B?TTR3VTh6djBNL1V3QzJNeUdsVzhiWjZlczFiVzRkbmNSSkxBaGpvL3BPSW1V?=
 =?utf-8?B?c0JYWThiU0NhK2hzSGZuTmFtSUlCK2FLamtyMzRoQVhRV3hyUHp4UXFTa1Nu?=
 =?utf-8?B?cWcvcjlvT0svZXZKT05zQldSV1c5Tm9FVWRtaFBLZE8xQXFIUm5UUUdvYjFt?=
 =?utf-8?B?WUw5ZDJmbXhVVDkvYWZkU3puNW1raWdPaE9NUHNqdTFYQTgva0FybnlsSVpW?=
 =?utf-8?B?cmxNWnROeW0vcjc1TEhYTk51NjBPNTN3b3FmdWV0OEJQVVhSdzhEVlJid0Qz?=
 =?utf-8?B?Sml6ZkZjOTFzOGxzK3AvUW1UMjhvbTVvTDRJdXd1bmRwa2FRR0hxcm95S1J0?=
 =?utf-8?B?WEVEaVJVUXdldUFEcmUvcHNoV3Y5cXVpUzQ5WTFxTkRURm1kUE81ZjAraGJu?=
 =?utf-8?B?M3kxa3NIT2dEWFY3eE11L2wyN3pDcTlkck02UElaeVBxZVFJL1VvaUVHRGhi?=
 =?utf-8?B?ZE5hU21QZll6cDRiTmc1S3d1Y1duVVo0NUN5RXBibU15NzR2RExjMC9lR0Zx?=
 =?utf-8?B?NWI3RkhnYnZHVEF5U29rVVhhZVlFTmZ6YzFYRlBldmhVN1BWNitHK1pjWkUy?=
 =?utf-8?B?cTRwVXovOU9OZEdiRGZOSlFqR0tObXJGdW9JRnZRVzY3dlF0Q3RnUENuU09G?=
 =?utf-8?B?NkNnTDNMWTRZSVhNVkx5VGtpZ3hEZ2lUQTZrZmVGYUhqMUVSaU1rWks3WXVO?=
 =?utf-8?B?bllFSzh0bGEzYjRqYm01TGkrWHF0QzhTU0wzNVB1aVVUMXU3d1JLMEN6c1VJ?=
 =?utf-8?B?Z01HYWdFQzRFbjJlUEN0bjVScnNPSklPeVFWYVZ5aHFqYjZkTllSdThZaU5U?=
 =?utf-8?B?OUJ4Mm85S3FqcXBVRTd3Tm5VN3lOWTU3bklhVjdIdy9MakwwSG1JejB1Y05H?=
 =?utf-8?B?UVVBQTdQdmsxS2VJWERZeVdsUERvOTdWNkhmS1NmSUM0RmkwUFdlb0VSUi9J?=
 =?utf-8?B?VGpuNGMwR21ZZkx1bVo4dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0VScVNaSVVQZFZvcEFiUEY2MkZodi9DS2R4VEYyajhPb2xPZTl6NFA2MjdT?=
 =?utf-8?B?YkZrM1Y5bW1mcmV0anNuN0tybHlUOUpMTE13cm5ETkhYTlhFQk1GR0xPUklW?=
 =?utf-8?B?SGhJeEgweE52cWp0cnQrcjYxNjMrR1lCWnBIVS9YWUVaZHd6WlFRWW9FeFB4?=
 =?utf-8?B?N1A2cW1pVVhuUFhzT0VSTWN4cnpTZGVPbWdZYm5mRW1HcXFkOFRkVUpjSkZ0?=
 =?utf-8?B?MDA4bWRVSlNYVEFCclA2NEhDb3pKR2hKdy9GQzdjcVFYbFhSRUhXcjRoTkdH?=
 =?utf-8?B?a3hJM1RpbklvNE5FNUZoR095bXViczM1M25GbFM2R042ZEhqMHJKeHVPQ0NN?=
 =?utf-8?B?Wlo0N1FoODVOZVBFWm9IVjN0UXQvbjFKV2tyeE40VXlBaGNIb3hjN3ZCM1Rz?=
 =?utf-8?B?VmIwd3BnQkV1NjlXU3lxWFczM1p4aDNHdHNTSmxDdERaSS9pUWFBeHBvMEJu?=
 =?utf-8?B?c1BnMU5UMzRzSmJDRjJGeUhVNUdJUDdJVGxGTkZubDNtMFlabUxSd2U3M2po?=
 =?utf-8?B?Sk44UUVsQUtIOGt5cGlldGtBVVgzMEtncm9URVFEb1R5d2pNbXpLYzRpTG53?=
 =?utf-8?B?czZxT0N5Mlg4c1VBV0xIZkpOOFUxc20vY3ZGL0lGRnlSNmVod3hOZ2ZNOGNt?=
 =?utf-8?B?L0RVVk5QTzN0WktkNy9XdElkSkdkWEg3L2l0TGlFaUhHc3lPbjBNWGk2cTN4?=
 =?utf-8?B?ZHFhWjRjdGJOK3hscFo5aEI2RldWNGd1N0FxYzFkMlIvYjM2UER4aFYzUXY1?=
 =?utf-8?B?OTRjVUFDdDN3cFZicVpmbjNsT1lXNVdUSEVYOVpPRmVZR1FaWi9lakU3bTl2?=
 =?utf-8?B?elYxWXJjazV4aE9DT250aENQVTY3ZzdUMXYwSXUvWldiVGk4bkVZSWNpTDBp?=
 =?utf-8?B?cm5XcGNMSFBlb1ViQ3IyNXNRV0JmQVFuZHFGcEdFRmI0Nk5pd3ZQVTNQWXBi?=
 =?utf-8?B?bElIK2U5V1JBUHZaVGNkd3dSTmI5L0tXQ1ZjaGRhR1U1VTVQeWc2MVFqNW44?=
 =?utf-8?B?M1lDbFFpTXFqOTFDWXRWVjdzdFRabVd4UEJXbHVBT0k2dC9qUXpRdEV3bU0z?=
 =?utf-8?B?eTN1eFhKU1hrb0tVUVN1cEtCVkUrWk0vOTdYay84N2pGTTMvak80SU1DWlRS?=
 =?utf-8?B?bkVNNndadWswU3d1bkZlRm84T2hmTlV2dTl6bUc1bVdpZm5JcnhHRnBHTjN1?=
 =?utf-8?B?VlFQK005N0pCOTV4UXZha2NQTGluSG5wOTllSnpkQk02Q25JcURtYzZ6UGtW?=
 =?utf-8?B?VDlKMFNGZDc3UEd4VkdhZHh2NkJyU3dMbzNtRWdQTkFvNzlKa01NZldZK2Yy?=
 =?utf-8?B?ZWJ2MnBiSlIwdDhpUFZ5NmE1VlpwMW1xQ0xhUUZkUm1iS1V6dm0vWmp5UHZu?=
 =?utf-8?B?ZGlPT29GdEpZMm0zeUZjVmRlclZVeVBzZ051bGQvWFJDelJ5T3ZyOEJ0R2JT?=
 =?utf-8?B?eG96Q0pwc05GRmltZnRVd3B3Q1NYeU5xSm9rNktVMTUyWWNKUkd4NTMwVk9i?=
 =?utf-8?B?TWZzNk4yd2NPaUs1M2IwazcrMFpSa213Q0hNblVrZWYzdWUyRHdkY29WRUxh?=
 =?utf-8?B?VHlNSXBxUlBlSlFscFZ3QlVRckdmclk1QlQ2WjU2enAvdis4S1B1YUlJc1lL?=
 =?utf-8?B?eFE4R1NzSnh1dHVza1VkWnVMbVJicll6TE1EaFZIaGZNNXpnR1V2SWtpdFI3?=
 =?utf-8?B?emcvSW5SQ3VXdmNQVVVHTGpNYUthVEExTGhROCtIOGlKSjJDbmU2WXdiRzFV?=
 =?utf-8?B?SWZSOE1QUVlzOFN4bkdiSkk0bytWbU5ReUlVbHIzOHllMG12MDlZRkpkL05q?=
 =?utf-8?B?dC9CalVhYTBwbm9KNDFFckg2UW1iSFZBWmRxTjU0ZDF5cXZHWUp5QmlwcHdK?=
 =?utf-8?B?alkybnpYanNJekNQdjBzREdLbUJkdTFhNVF0NE1XOHdyZ3hlRC9JZUtSLzlo?=
 =?utf-8?B?NG92MWxaWEkzRW5wSkRVaUJjQkkxRmNub0VJN1UxNm5kYTZnRFpLUWhmUTVs?=
 =?utf-8?B?Rjc2NUJGdVV5d1UxRlZwbzhOYjVGVG9BRkV4UjYxK2xjc1pBVXl1NkVjdWRk?=
 =?utf-8?B?YmZKdkRITDZaZldxRzdSMHJIZmhyM3dWYnlOTlFEdlpaOVFyOFl5bldFWnky?=
 =?utf-8?B?SVI2RDBMUUJyMHoxejlrSEg0QStWTE9UQ3F3Q0pWajVURkJTdFNSemhTaS85?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a6c63a7-8035-4475-df16-08dcbac98f42
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8722.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 12:23:24.6622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VkaiyV0sQx7uZQI+B/uJZS8xDvMQPppXMGPKvOWIgo+IpBs8Z433XeMZV9kOseiplQKQq4PxZxHtdrJ4l+5AcZTsw31H75BhVyzy2CgRKBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8086
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723465415; x=1755001415;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e83Rh/5th3Izv4RxRz8egti4HbHoN+EWgkVhmLADihg=;
 b=QV0j75OzhYj7sCQtvZju4sdJ4Z5K82MnmBQXLBWygpFZm1GaLogpsYJD
 nu/WxT+/hglYRJC52ddWVNEkvmK2ArGcwVc0iNp37JR/WhKkwuqX+AiAi
 4mmEATqhWohGXriP98pOk3LgIKz8+HOOHh8jnw3yFZTgIccEjIxP6Iwb4
 reaiZrxpYaMk3bZASOP01CmsVTsnrnFklhpKLmQ83uzK9RcXvq2sNTNE6
 PA8ovFqF21FTgxGfKo7TsGgmAL10eAcbKK8d3QX27mHTdbr7lIxbu60vX
 nQHOiyQfsKbsszBERedfujX4J/cFVB6qFGSDhVOR0glVdlD84iAx5CTFN
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QV0j75Oz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 06/14] iavf: add initial
 framework for registering PTP clock
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, Sai
 Krishna <saikrishnag@marvell.com>, Ahmed
 Zaki <ahmed.zaki@intel.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Mon, 12 Aug 2024 12:01:34 +0200

> 
> 
> On 8/8/2024 2:24 PM, Alexander Lobakin wrote:
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Date: Thu, 8 Aug 2024 13:04:29 +0200
>>
>>>
>>>
>>> On 7/30/2024 3:40 PM, Alexander Lobakin wrote:
>>>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> Date: Tue, 30 Jul 2024 05:15:01 -0400
>>
>> [...]
>>
>>>>> +bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap)
>>>>> +{
>>>>> +    if (!PTP_ALLOWED(adapter))
>>>>> +        return false;
>>>>> +
>>>>> +    /* Only return true if every bit in cap is set in hw_caps.caps */
>>>>> +    return (adapter->ptp.hw_caps.caps & cap) == cap;
>>>>
>>>> Aren't these parenthesis redundant?
>>>>
>>>
>>> I think they are not. They wrap bit operation and also I checked it
>>> with checkpatch script and it doesn't complain about reduntant
>>> parenthesis.
>>
>> If the object code doesn't change when compiling without them, there are
>> no compiler complains etc, then they are :D checkpatch doesn't always
>> catch things, but I don't remember whether the compiler won't complain
>> or change the object code / logic. Could you please check?
>>
>> Thanks,
>> Olek
> 
> Okay, good point. I checked that and they are not redundant. If I remove
> them then compiler complains and object code changes so - parenthesis
> stay with us :D

Nice, thanks for checking! It's always better and faster to just check
and make sure.

> 
> thanks

Olek
