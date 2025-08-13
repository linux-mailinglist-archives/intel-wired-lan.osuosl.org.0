Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 934CAB24511
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 11:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E63740F89;
	Wed, 13 Aug 2025 09:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6DDTnabwYCal; Wed, 13 Aug 2025 09:14:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5688B40FAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755076464;
	bh=hmfwVY0qDjlOTXoA3FkCZQZlwNQjTrtNY+ic03uZzvM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=65FI2J16WdOYDJkkGrSLRH13g0EdkS6BzHvUKlkQJrHNpb+NriQEo8BjJyil5jzTo
	 NsRFj9+X0bse8qhNLbOezwTa+54VfZrX0xxsomM2LHfG0Ud0BOs6+Qpgp3GaudEVIP
	 kq11DIiKx3Q9XkDSU3Ql8ZAgvHmBt78V5llHhVrbr+SmWlkdJxcE2/9ElLY1aKFGfz
	 nVmYThrSXJ+0kQSM2rZv8IBownWkqwJt75sDJTK7P+T1T7ttYhTEoYPxVWmEQApsV2
	 FVp5hKR2TFYxJL7AOFYf7ZG8sUY+QU2iNLH3fedE8PlLKaAUHN7w/kwNjdXWPSwVXz
	 PcN2jJMyUc3Sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5688B40FAF;
	Wed, 13 Aug 2025 09:14:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CFF7938
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 09:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6332040137
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 09:14:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pDzpb6C_3T89 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 09:14:21 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Aug 2025 09:14:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 37CDE40134
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37CDE40134
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37CDE40134
 for <intel-wired-lan@osuosl.org>; Wed, 13 Aug 2025 09:14:21 +0000 (UTC)
X-CSE-ConnectionGUID: h9LGhZlzQRybXhkd1qyB1Q==
X-CSE-MsgGUID: nDFXYPVOTwa1lxn1457c2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="74942899"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="74942899"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 02:07:13 -0700
X-CSE-ConnectionGUID: LowTEMMqQvWcULnGRbl0gw==
X-CSE-MsgGUID: oG+sduE9RZC1uVEMeEyiPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="170628384"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 02:07:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 02:07:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 02:07:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 13 Aug 2025 02:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wZAcK+00IEIrllr95ixm7d/QhUMmoub+6IaTM+vb/TxKBYrNsKBYF86XYAkg9qk6Jx4EsPO7I6L72RTjNj0b1oHNVLZeE1TGxDIaC4C1YVaQnLkjmQ0k0kpzx4BME+QaSBdEdU5brgI4eIZ6+rJ74ZjmWB+BQmKKqmELh2HbeJ/mnuhn1/wX5JROzWdRjvGWKK/Ky6dhXj9fjmxE3ZMGb+VBAmuWzEUkxQ3n4RnF0DlPQjbTkbrPvngz932h0FjUsN4X7r3QC3Xno806oeYLyWBvXGfyCrwW0b6S9EGrK1jg11UodsoHH4uqTAM5DXwIB44HKkjx7plgRHnhLoyT1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmfwVY0qDjlOTXoA3FkCZQZlwNQjTrtNY+ic03uZzvM=;
 b=V1L0pfmEd3NWd2KmD7JIiJ5pqkrMFzLlRt2Zb+VoUtRo0ouhSBKoXeBso09qOeTkRLHAmlSohHoBTNS4x1MoJJGMGQx5eKiOiyxJPnaYAFl4UWuG1rg6D4PDsfF5bGvBEml3eIJGEZ0UJXwJ18yfxhUBcWmAsGSJ7nLsDhcd8eaaW9l2Uw3Kx2ePwbco4ulOdkhE0MmdwHkhPKhcvMtednFxz4yURm6NPbMlGF6FKeNzIRutdLpP5N3yLL7fVyRR0YRKbdDXbcMgRyMIdmmrTxy1NTvf7dbHNX0AjKxvtybg43HqaswVTdQmyRdWSx+IEHhW4OupjLzKfSCiESeYEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by IA4PR11MB9083.namprd11.prod.outlook.com
 (2603:10b6:208:569::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Wed, 13 Aug
 2025 09:07:10 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e%5]) with mapi id 15.20.8989.017; Wed, 13 Aug 2025
 09:07:10 +0000
Message-ID: <d5f07574-0b4e-4931-88e7-fc5513492fac@intel.com>
Date: Wed, 13 Aug 2025 12:07:06 +0300
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Mikael Wessel <post@mikaelkw.online>, <intel-wired-lan@osuosl.org>
References: <20250807040505.1716056-1-vitaly.lifshits@intel.com>
 <1f9bb468-4a82-4b08-8730-87a4f0bd3ce2@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <1f9bb468-4a82-4b08-8730-87a4f0bd3ce2@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::20) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|IA4PR11MB9083:EE_
X-MS-Office365-Filtering-Correlation-Id: 0245939d-14a5-47c9-a28c-08ddda48c904
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OW5iMmI1d3MxZEVHRmp4OSs5SWhVQTZMYS92WWFOZ2hyTDBSZERoRWNJWkpu?=
 =?utf-8?B?UzhGUVBsT3lFWEZHeDRCc00vbUVmMTA5ajJtMjl1Q05mNlV6Vks3SlIxWDQ5?=
 =?utf-8?B?Vm9wYWFuaU9MKzAzbGdGTzBaS25pYk5na1E2bFBOTkZCY2FpdGRMMFFVS2lm?=
 =?utf-8?B?T1c4VlNlTUVFdG16ckNVeTBHcytXcHhnMk1XS24wclExYUFHaTAzZVdoWEl2?=
 =?utf-8?B?eFcyb1FleUdxSUJZYkY4RW5DdEx4eEtXbHdrWkZ4RGxhRzRTejhWcEZMZVdw?=
 =?utf-8?B?WGNaUHhKYnpVZ0lidXNSSGpNckJ6ZnBkbzRRZE1ZRU8ralIrRUtGaEpYYW5m?=
 =?utf-8?B?a1J1eEo3R0czN0VROU1YejhKZzBFNnJyU3VpUGR3VGtjelpjVXlQY0ZSTlB3?=
 =?utf-8?B?aVhPbzVXSis3TmIzVnZ1eVVjM2xlQ1VUN3BiMXdCbjZrbVN0TlREamNrYjZm?=
 =?utf-8?B?VzUvKzUzc2QrQzJLd0VBYkl2dGFYblZOUHRmcHJ0WmUzZm9aRlJDRG9xZE1r?=
 =?utf-8?B?WGxMeXByVWNXWktTd0ZvR092Q256UW1rdVpFSHI0TUtQNTFheTBsZGpmdU41?=
 =?utf-8?B?bkJPQ0pSWTJuYmZ4OUN0R0wyc29tbTVTd1NmWXpqY3NWSXQ2dlFtMEhkS1cx?=
 =?utf-8?B?NTZMRlBRZml6UVRFN2lGT2tqRnpOWGJUdnRkaFhqV29GM3ZwQmdFdXVhK0pM?=
 =?utf-8?B?cDRJcUdrMU85ZWRZWXhDQXo2ZGdjY2g3a3A1SStYaGlDRzRzMnVZTnZUbWVZ?=
 =?utf-8?B?VDE1YmZSREd0WnltR28zNFdzbUVlN3I3bE5GTmtRa3Rqc0s3V2Q0Nkd5d0Vk?=
 =?utf-8?B?Vjd5SklidVg0Z2RER1FlVHpLeVJhb1VJeFkrQ1ZqTWxDeHY1UHcyNkIzeCtE?=
 =?utf-8?B?UTlPL1J6ZHZIQ1NGSkNWK1pzdGd5RGtlc0Z4WXB6MGlicHlXN01mTnRRZ2ZV?=
 =?utf-8?B?cFJHdElzV2pDVHNUbEZONFpMc2h1QURRMUsvc3R6WFQ5d3pnV1lzYmlQZjA2?=
 =?utf-8?B?azI5ZFpmM012RHcxR1d1Q0h4WFhESXIrQnNFcGIzNDhzRGRMcDAyNFNrZkdQ?=
 =?utf-8?B?eXJkYmx3aVBUeEFqdmpQSWh4eHJVK295VzNoaFFURXVsVmQxVU50SFJJUWhl?=
 =?utf-8?B?R29ZY25vQlgyaFZnTHVMM0dkUE1yRjl0MmYzVnhKMFVqcldqMjBoeCtxWDll?=
 =?utf-8?B?U1hTcWNQdkQwWnV1WGRReW1vUU1Feno3RkFMcUJoRW9Bc0MvRHRta00weFBz?=
 =?utf-8?B?SnFwRkI0UTNwTXNVdmFvOUVsbDJtWkNXUHdGR2I0RW9zb1BpZ2NoNXBUZ01V?=
 =?utf-8?B?dkI0VXBMZXhUUlFLYmREM0N2clQyMUs4NFVFZjNOTDVpMTk2bU9JY3FFU05O?=
 =?utf-8?B?QnFhbDFaMHRCZTdPcXFaeTdHdEprZnMxL3RjdHVweXFUY2dTTW1tNU00blRT?=
 =?utf-8?B?c2lVcEZZTWVTU2tPdXpaZUd4SjBXUm51SndwUmE4V2dzem9xdkhVRkZpZEZw?=
 =?utf-8?B?bEpaNUMrVURtNWVKUHFZZnZZMlJ4UWQ0WHI4Tmt6dnpQQTI5UU8rcktGaXkw?=
 =?utf-8?B?YUhpMlM2TlRveXZhN3NEa3d6ZkY0bnhKRklGb3BNcExKVm9UeVlRUHBOV2Zn?=
 =?utf-8?B?NjQwRlpYKytCaVdLU1YzRUJReVB0SE84c2hXWG55OTVJV0MrMkpucVMwTmpR?=
 =?utf-8?B?RGdFalM0RGZzc1NhSzBLK1h1eHl4Z0E5bnY1WGUza3ZyQW9DMVJSdktXT2Fu?=
 =?utf-8?B?KzdmU2hWVzJrVEt2eWxPNEM4V29mczhmNjgvYlArRjBSTkpOam5xS2hKdUJY?=
 =?utf-8?B?VTR6a3Y3dEF2UHdIbnhOM0hCeUUzOGk1NHFiTkxLS3h2VGxtSjhFaVRJVzBh?=
 =?utf-8?B?dThWSTc0WlRBeDJnRzgyekN0dW8yRmJuVmoxMnNrOXZKK2JZeGZpUHp0TmpM?=
 =?utf-8?Q?Cbj7GlsZ7S4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnhOUHlLV3NIblBMQ3hORnJwTmJ0bUt2SmpTaEVvSGFUaTFvOVdPYXIvMUFG?=
 =?utf-8?B?WEFmRWlQNUk2YlVsMkJQUm0zK0tjRXgwclBLZVVhdUJoMTR5SXdvekE5anc2?=
 =?utf-8?B?Y2g1NkZJekN0RGVZQnVYMWZaUUV4YkZIZmlkdndMRk9sS0tUZ0FyaGhIejFD?=
 =?utf-8?B?L2NDVVJRak5KOExrdkt5bEw1eU1HdXFaZlVJK3VxbjEvZ3FrUlJmYWYwMHZi?=
 =?utf-8?B?QnlyalI0QmlkZlo0UmV4M1phakRmWndQa24xeFBGWm82d1VyRE1pMVUvUzRS?=
 =?utf-8?B?Q2cyQmNLRGw0bk54b3N5WVh3QWhDcEo1SGJqVGF2QzFTbVFLSUxrbkpzVHB4?=
 =?utf-8?B?WEFoMGlwTmJKakVOdklFVEtIcWE0TytpQ1FZbXpDMjV5VW9CS25CTkNMclp3?=
 =?utf-8?B?ZFN1QnlhQzdSWVZJbGdzWVYvZHZRdmd1VFB1bzROU2NRRFBGY0FBVUlIV0FX?=
 =?utf-8?B?WG56bmc2c2dBc1hqMkVkNEZTd2tEbjhUSGdpUmV4TGZ5alB4WHhMa2JOOTJR?=
 =?utf-8?B?Umt1SWRURllYbWltc0JkcGs4RVJSSzF4RGFSTFcrWmJ6TFJXMUJ2R0VWMGlG?=
 =?utf-8?B?WmZhTzRQOFJaNTNzOHR0VzFJVk9sOXJJVTM1RzBuTUZER0pydVB4SFR5UXpv?=
 =?utf-8?B?ZkFPQ0NmQllKdjhEdlZaK2tMY0tERTV0eEUvVHNJcEdYbUFZRnIrN3JzWDhL?=
 =?utf-8?B?dmF1WjJtaHdpcG4wZGVXL0NWK21JRzNKSEpaOUJlZ0IyRXFVR01UU3Boc0Vs?=
 =?utf-8?B?Y0xXNGNYekVYSzFkRmxpbGhiNUNkL0haTjNXSTUvZXI2bFFyRHBubVpEbkht?=
 =?utf-8?B?c2dQVDZxUnZxTzhKWXZ3TGM1dHdJR2xyLy94N1JReno3N2dOSVVXaDF0M1A3?=
 =?utf-8?B?Zlh3cTZnY042TmlpWEhrYTZIckhFcnNCTXlEMEZGWjYyNkFjbDNhSFhrSTZ3?=
 =?utf-8?B?a2ZQMGdNQklVWHVtbGd1QUZFeDQvZVRIRTA3UGVWa2ZJWm1KbE9rNEZoNHNn?=
 =?utf-8?B?ekpZc0tBc0oxeXVsZVg3T0U0dy9IUFFMb2Z0VnVwTzJMQ2hOYW02NXczNnZ2?=
 =?utf-8?B?bU9GellpVWpRSGJOMFNoRnZUSjBRN3JFN0JXZWFLSjB6Sk1JeDhHd3N1ZzFk?=
 =?utf-8?B?NTRzcURKYlIwWDdOaHI2QkU4K0pWbnZ5bGlUaWNyOVIvb2RpcGZpazdaVi9O?=
 =?utf-8?B?dkl5Vk1BMFM1RWpFUFppNDVVV04raTJwUW44Wm5oMFIrTVhsWkRYMWV1Rm1j?=
 =?utf-8?B?TEswTHQ2eFRaQXl4VS8yS29nYVNvbHhDM0dmNUNJWWFydDY1RTZORGtQckl1?=
 =?utf-8?B?cklsdVB0NkFtNDV1L2g1YWZCcTRjSHYrQ1p6VlB4YlRWNXVNcmkxck1RTzFp?=
 =?utf-8?B?WlNNeGNtVDZhVE1yYUlLYkRWUHFUVWpLRzdWdjhtcTFHYkNmajJHTHdoczF2?=
 =?utf-8?B?UWtzRDY2MlJmeW9WMnJ0Q0N5azN3aDBCOWtuNlNKb3FCRGhSdk5JSEdMVWo2?=
 =?utf-8?B?ZHFpOXU2L1gyUEhaZmhnOXpYVmwyZGh4QVdOTXNiZ3p0anhPNVd5L2x1bWNx?=
 =?utf-8?B?OGJvb1VzUnA0aFV3TTJKM2lnekkvRmhqaFFkTUpNNVpiZWlXZFBxWGJCVEFr?=
 =?utf-8?B?MUIxNEQ2UXlQbFZWcE8zQmkvdi9vRkhyaWtvZTg1ZVdMQnphSkJUMzJSK0pI?=
 =?utf-8?B?ZDZhamJ0WGc4bzFOTSs0eTQ3QTljTWR0NFpqSE12cGN6TzRoYi9YKzNoRElH?=
 =?utf-8?B?SVpuUUI0Y09GSEVqaUhISitMalo3U3lVdmxGYUd2L2ROREZib1RrOHBxdUpj?=
 =?utf-8?B?WnFlY3NsM25OOVVWUUNxTFpkMUdEak94ZElDMFViNHFJQ3JSdVE4SXgyd3Jo?=
 =?utf-8?B?UFlCU0dMYTZmekhtUDA3dkVIN2FmUTJoc2JlWFdMRkhoY2RVbkJPN1BmQTlk?=
 =?utf-8?B?RTB3OFhqK0Q0SkVYWUZ2Q3lBUHJCY0Jmc2svaDN1a004dUtDTEI2NHFBR25q?=
 =?utf-8?B?TGJIWmZ1VXRlYU4rOFpMVnJMZldROEtMbURnYk1hYlRsVzhiN2dQSW0wYXdk?=
 =?utf-8?B?a1d4cXhXTW82WHBFakFnUUlYN2M5ZWZ0R0xlRS9Ga2ozdG9yQVNqNStqaHVu?=
 =?utf-8?Q?Hc9w7nwy3HND2GTT5QkxiKCbm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0245939d-14a5-47c9-a28c-08ddda48c904
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 09:07:10.4092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NjIXC6Kl7rMlHNt/B4mva/r3DUJ9buDk/gf+2Gd5GWSGMJKJ7fjL7trb0cFHKb5dgX9woGsTrcSq06/zHCmw3egCfjAWJo3W5p6M4EzwArY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755076461; x=1786612461;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TepwTOM7t5JsQvaCWZdYafZDJY4EYr1/kvWsE24at4o=;
 b=bH+0x3zIueqxPwBIKtSFR5CLoq8+KMBcxU3Vq1COLU8NagTUaVVPUshZ
 w7hPG0MCPiR2lPcB0Y5pRfbO6h3vBXYNy+lVVI6Q2xOPOmPVqOo8fVy2Q
 GQCvsiAbr4rieCGcP2rLA7SW1UsqJGKNNK1crICeFVEC2JwfUsAEZF5Em
 k6wC8rnne7TCueYcAWv5Z5BFPtWtR+o0xtCbebg10qjyHBi8wXOcbE1a/
 a2ravrZ6bl/YfCWuhAk/qv4xs98Kzy7BIhvol5vg9oN3tbcuYE2tmJu6f
 gV4XstPzI+EfxAML6kaiTDKaGhz2jKysCSq9osqZ3VM8pbA2tvtYrDrPy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bH+0x3zI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix heap
 overflow in e1000_set_eeprom
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



On 8/7/2025 9:20 AM, Paul Menzel wrote:
> Dear Vitaly, dear Mikael,
> 
> 
> Thank you for the patch.
> 
> Am 07.08.25 um 06:05 schrieb Vitaly Lifshits:
>> Fix a possible heap overflow in e1000_set_eeprom function by adding
>> input validation for the requested length of the change in the EEPROM.
> 
> Do you have a reproducer for this issue?

This patch was originally created by Mikael Wessel. Since the requested 
changes weren’t addressed for several months, I decided to take over and 
submit an updated version. Therefore, I’m not aware of a specific 
reproducer or report for the issue.

You can refer to the original submission here:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250527085612.11354-2-post@mikaelkw.online/

> 
>> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver 
>> (currently for ICH9 devices only)")
>> Co-developed-by: Mikael Wessel <post@mikaelkw.online>
>> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>> v2: Use check_add_overflow for boundary checking
>> ---
>>   drivers/net/ethernet/intel/e1000e/ethtool.c | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/ 
>> net/ethernet/intel/e1000e/ethtool.c
>> index 9364bc2b4eb1..2bfbc7fd9559 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
>> @@ -550,6 +550,7 @@ static int e1000_set_eeprom(struct net_device 
>> *netdev,
>>       struct e1000_adapter *adapter = netdev_priv(netdev);
>>       struct e1000_hw *hw = &adapter->hw;
>>       u16 *eeprom_buff;
>> +    u32 total_len;
> 
> Use `unsigned int`? Although the type of `max_len` is signed for 
> whatever reason.

Yes, I agree—it seems incorrect. I’ll change both total_len and max_len 
to size_t in v3.

> 
>>       void *ptr;
>>       int max_len;
>>       int first_word;
>> @@ -569,6 +570,10 @@ static int e1000_set_eeprom(struct net_device 
>> *netdev,
>>       max_len = hw->nvm.word_size * 2;
>> +    if (check_add_overflow(eeprom->offset, eeprom->len, &total_len) ||
>> +        total_len > max_len)
>> +        return -EINVAL;
>> +
> 
> A few places in the Linux kernel also add `unlikely` in front of it. 
> Would that make sense here?

I don’t think adding unlikely is appropriate in this case. This function 
is called infrequently, so the optimization would be negligible. Also, 
since the input comes from userspace, any value could be passed in, 
making it hard to classify as “unlikely.”

> 
> Also, how is the error case logged?

I chose not to log the error to maintain consistency with the rest of 
the function, which doesn’t log similar errors.

> 
>>       first_word = eeprom->offset >> 1;
>>       last_word = (eeprom->offset + eeprom->len - 1) >> 1;
>>       eeprom_buff = kmalloc(max_len, GFP_KERNEL);
> 
> 
> Kind regards,
> 
> Paul


Thank you for the review.
