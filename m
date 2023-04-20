Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF206E99F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 18:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4161C42BA4;
	Thu, 20 Apr 2023 16:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4161C42BA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682009608;
	bh=Vvv3Qv+u0IQaIrVDMz2KDuCF4JFeTCWC+nHaAJOrcUE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y74xap2Ppymv1ixfVmIWM7B0tGnLOtplP0HdbswJQs7W9gL3/uodSKVzMXrbDdloI
	 pbdov9s9QI8NMk6uKDUf5RnowrspoTtdOoBMWc8fiNhi61pEhGkXZVVskL/EL+gD3+
	 NxcA5MojUnJ4jrQkIXkXsNUyUlQwgf8iMyf93//0nrxst8GBSNvTt9JkPKAw7M7HRk
	 2YPXJ8uuIQYPiw8GO+2V5O9PKfi9xz/ltyiDEX3QR1rVWGVaXK6P+UF9KNuqCN5lAb
	 SXnsJYwh2Ebt/jSKYQpUyP/DgB5VCULGJT7GOj4vkm4S8465u/Bs8zeX3BctFp8Qif
	 cLXj8etT4WXyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iB0cgGwaw37L; Thu, 20 Apr 2023 16:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1854B4049D;
	Thu, 20 Apr 2023 16:53:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1854B4049D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46F9C1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1930941C68
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:53:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1930941C68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZegG1SoA0GCQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 16:53:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 228EE4049D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 228EE4049D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:53:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="343266490"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="343266490"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722434012"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="722434012"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 20 Apr 2023 09:53:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 09:53:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 09:53:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 09:53:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 09:53:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CyP0yo1DMIqX8zY5LJgQ5wVb7+bPo5FQ1FjLGJrdz7QzbXOuBvV3NHJv1gcqkMmvbigc6jlyv4AadS790+JW+QKUEj4FQHdLw7qp+7bUzYtfRc/7jZgCMXKf5ecMjaLrqEaYZEMvMO+mlXt9RfK6jOhhoWgIMkmare7qfV3QQxxg4uj8J32hGukVZ6cXD1aLeECpflmYTHh0wciWk9A5TlruZBaUkKXbrWP6MPnq3d1qNr9KsBG8mUKhviVCGhQXDGomPtF+jr0rRpSvzIPgdeJYt54F88EOnPS58edis/CKU+BmVP8+WQsoBEXuAZxYgFewKauJxgOVhMUqa4oVrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixc8Qyl87WJi+e+Cex/YUxUwX/p6M7tOdo1XFcnJrYw=;
 b=XkJm8A3iX0+FKwcNptDs4pS6OOU916fVOlrDRmLhBw8QwgnUalcs6MF+yr08kl4XqLj5K48YzMbmdJYovShOThAj5y6oxB97hYNPZ0PATPpScSCgdcf+ap/VjygwlY3ZFft169qJw1x/rp7NT56S+tuG12dHU+Qsabpe0DCurDHaQlasxkO7V4jHiJkVhjZ1K/t11a7Uta/LXAXDCPYF+lyMJ9VXD7CHZCkKb2rZMzDzqyGH/i5c+Z1AMMDaD2L3oCLBOob4y1mSk333KDRWvZogRzT4DNFTiW6cPLV5X6dKyA6ya2ZgsqigsNPjwm3AFDo/v47Q8LMTHIYesCrD3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CYYPR11MB8330.namprd11.prod.outlook.com (2603:10b6:930:b8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 16:53:09 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 16:53:09 +0000
Message-ID: <16f12548-b35a-bcd4-5a80-2b7e7cecb994@intel.com>
Date: Thu, 20 Apr 2023 18:51:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-5-wojciech.drewek@intel.com>
 <4a293c46-f112-e985-f9ad-19a41dd64f01@intel.com>
 <MW4PR11MB5776C7DDDB91DD98A960AD20FD639@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <MW4PR11MB5776C7DDDB91DD98A960AD20FD639@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR2P281CA0034.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::21) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CYYPR11MB8330:EE_
X-MS-Office365-Filtering-Correlation-Id: fbe5014c-dc76-40c6-da49-08db41bfb85b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7oGeIo0r78t6OPeFlihjNXcLba/WcfTY5smimEGy8HLDx+cQfZ8afvvBV+/uvziPO0coEKClczCinQGweaTWW09u/R4YqdfMUGXBT6mb6+vrB5/AY5HHH6oELvVdfjytA/xE1ezmwB91mZup01xsJPD4DljTS9z9A2aCUgvN5zp/wfiwLutrFgs6p5NKoNXbr+oGN9di6TTiG+SkUZsTJS6VWpIQAV07xdUFLLr5esSWn0AJx9qycSpRCzTfFDAuHkdd2UApbVxuWXTYDwBP9g9g69EmxMnKRbS3vJustD1HPJLa7o3RNu2yMJxq1y7cyYjTVx6A1Dn9ztt9OUb7+TQvOsc5rYL6Y0ekgCCYuEIdcv9H0eomKst1Dg0g2NOUsR+eheOPCEehT8ldcrXqninEGg/04Cuu+xRUUl10NyXRXQ6omcZza+wAhvhZwwCv78T9tNTo1g1wXfCEKVwQa5VVBUe2C/cvbZlgCqlvTEL21JMPbUlbHnctAK6j8sUX2K4AEc/wYtJIXzHbwqD9ztNS9PjaGzfplPz6/VAywzPhF37JWiAiLljG9DLvGXgG6pPc3OeT7BuXEpmBF9a7S4LuDN4Vn3VR0jGaUTS/8EiT1nfXA3bxlkyRcSHY0dKmVp2cdrRjQvFfYcMoRP83jg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(346002)(136003)(396003)(376002)(451199021)(316002)(6636002)(4326008)(37006003)(66476007)(54906003)(66946007)(66556008)(478600001)(6486002)(6666004)(5660300002)(8676002)(41300700001)(8936002)(6862004)(2906002)(82960400001)(86362001)(31696002)(36756003)(2616005)(6506007)(186003)(26005)(6512007)(83380400001)(38100700002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wms2Ymo4UkVsQXY2WXlJdjhYeGRCaFI0elVicm1Ra1UzaEs4NmVwTDM1akQz?=
 =?utf-8?B?OFYwd2RVQ3gxMjhlOFFQMnU5YTlWZkt4V3NqRGNEc3Ixa1VyTzYxZWQwQUcx?=
 =?utf-8?B?NVFkenp6U0VQQ1Rsdkp4UlkzcVNxY2gzMmV0eXV3Q0hhK0lldUxUdWlQRkJZ?=
 =?utf-8?B?VlUxM1ZYRCs0MW1IUXdRa3JPN2srdTdxbUJWYUNudUp2ZUozYWpVdkY4Z3or?=
 =?utf-8?B?WkZIYlVJREJuNkhzbUhFcFRNcndlRU01dzFJbXNsTHhGMTYreERFYnJFUEtW?=
 =?utf-8?B?YnZvZXNPTFE1bzl6VXJFeVI0SjhsVjBOUE5ObkxDV1A3L0RocWRzVjl6c2Nx?=
 =?utf-8?B?WElTUCtuMUxxUWs5NTBuT25LUGhLR0hBOUdNMUZKUXpxa2hWMXJOcnZjTTY3?=
 =?utf-8?B?WkdHVVNQWC9JdjJOeU9obU9xR1I4SHR5eCtwbE5DZGNTL0tCVEwwZmhlZ09N?=
 =?utf-8?B?dGtYcFVNdEc5YXkvN0x4dlo5R2poR2dXTm9GTjFmZURXYUJoKytHdk1QOVpx?=
 =?utf-8?B?dnFqelNRMFBDQnBtS0hTSExQMElLKzV3Qy9Rd01HYVhaQzY0TkdTS1VjV0Y2?=
 =?utf-8?B?VTA2M0tqc3BESW9oQWtPNlZqZ20yVjFCVGdDZlNKSTB1K05EQTdIREsxSE5o?=
 =?utf-8?B?cXJaRWFVVklaY2t2ejVRYWlycUIvRTZHdGlXMXJ0blBUZ3orSTJxdHZKRlRh?=
 =?utf-8?B?TEhaL1N1akVWamlqSDFqb1Y2S1lvTHowc3lYNG9DaWRqK0ZzRGxwTWs5SVJh?=
 =?utf-8?B?NUNyZ0VnYzgxa0tRaUFmVC9HemJURVpKcXpxc3p0U1NwRXFFN3VHMkZlN2ln?=
 =?utf-8?B?V25aTUgwUlZnZXN6R3lvMjh5MHI3TGNQNGM3SEFLRkxnZVFrdXlzVDZ4ZXpy?=
 =?utf-8?B?RnR5cngyQXJneG1zbm5HNzYxVTFKM2FSdzV0VzFuMHVzejdmTDduZ2g4VGxW?=
 =?utf-8?B?UzV1Nlg3L1l4NkI3amhWU0VIcjZJZ3JPL2dzODNDNGV1NEdjbks1QklJTlox?=
 =?utf-8?B?a25YSkFweTNZMWJKL3JtRHVzcHdCcHFmL2JhT040WHplQVpabExLUTNKdXRL?=
 =?utf-8?B?TW5GVUN4OTFNZ2d1djJORjFubzExNkFLU3BvSWUydTgvaDdOLzE2b3lnbG1Q?=
 =?utf-8?B?SXh0WE9wNm1ESTRidi9aNTI0THV2NVZING5XL1V4OFkxVm8waHJyZmxLaGhq?=
 =?utf-8?B?T3JKT09uaEZoVXBrTkZ4WWxIeG9DV3VhTERMdy9nOG4vMFVUNkVHN2diSXhj?=
 =?utf-8?B?NFFRSFYrWVpBcFkwUzcwN1l6YlNGM0dkUkJtZUprZER0VWFOc25hQ3NsOU1R?=
 =?utf-8?B?a2hORVUxcUpxQnhoV2g2Uyt6V2FyVmtndTIyS1FrdVF6blZYaTE0K2VUWEI4?=
 =?utf-8?B?VGZCZklzbGlkanlZQllyS1V2NnhuZFBhaklST0RwQ3d0eUYyZTJoYkd1Z0xk?=
 =?utf-8?B?NFc3VGpqdW1IRzgyd2YzakV6OEtEUGtSZFRSZGlDQ28xaGZuMGU5cktYRHVr?=
 =?utf-8?B?RTJKWUJVQjdxaVpiRDR0WXd3ZlBmQ2JQQW05YWE5b1VTWjBUMlljaFJaZ1Q5?=
 =?utf-8?B?cVFObkF2eEUxa1NkVGN3ZGJPN1YwblZaTzJNaDhYaEpaandSM2h5bEdMZTJQ?=
 =?utf-8?B?cDQzaG1VdXJINFZUZDdsZXBnU1BqcVJzMEt4ckFRb2wwZE9yY2RuL1U3cVI1?=
 =?utf-8?B?UUhkN1dtVlplOEFMMndDSVNyWmxpV1Ztbk9jbTExVFJGbGNxNHFNVlpLcG9P?=
 =?utf-8?B?b2k2eDF6NCttY1lsS3R0RDlYVGR0cFhRVHJHSnhJY3ViQ0NOeE9mVG91SStx?=
 =?utf-8?B?NXFnK0E4L0FDNXFzUnZwa08vZ01yQ0c5QUVidjhBd3I0VE5Ja2RVVi9FcVRG?=
 =?utf-8?B?aXdmeEFjRWtzaXh1M2hIdXpYbVNVQmNxUTZkSmQ3dGVhMlRpbUtMODBpbTJo?=
 =?utf-8?B?MmQ3RE8vYzYwUGhXTVI5NFprZmk2dEZTVm1YZlVkTmZtN2RVQUg3Q0RkRStw?=
 =?utf-8?B?RThCczRKR09wczVsZ0tVVTVyOUViMlRYSUN5SkFScmJJR01zYTlSdldsb2p1?=
 =?utf-8?B?UXJwUVdtdXVPYzg3SndOMVB6aUx3cjROMC9EWFdac0liNXljRXBMUWJEWmZ1?=
 =?utf-8?B?d1ZTL1lWREZpc1Y3Z0hKanZLWHQ0anVEUHY1Z2wxamlTczkzVW1BRi9IWjlK?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbe5014c-dc76-40c6-da49-08db41bfb85b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 16:53:09.3460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RXuWznSb9vja15KEwSGGR3C99tLGFcKfQbCYHPylOKVAPEQURj8Vw4fjl7RK34n/tD5J6PrAnIp4o8mzbVbHTmG2yeIARz3i7Avi3dFBts4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8330
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682009601; x=1713545601;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GG9suCNIWh6W4Flxo4kXgmoMinYKDcIllOutZZN/eC4=;
 b=Pmbjd4UB3iVq5oBlBj/7VMVYaPh06P2vJWNFlqzvubijdVMB/pJhWP4G
 YRihknI3De3HA61lnn/neTcspQEBAPXvbmbACCLWwFnM42ZlVLFrmHnTJ
 tHgHeXkerPZPO6WAhGCK9GADXtrvAdzr4eQq7s4JUfZXlyNIKyEM11yBA
 HKpAPca37ERwRzd0D4MQxpuiD9JWu6raRqC1O4yaGdaeD2YUK8IniEs+0
 CQNre0QTAz8ATUxbDYTjGXyXtGQwST3MQ6g124z4pliVw+QGHsc7/GE4N
 VJSxv4EV9T5oZQoPPFtv8fTC0ir3ED0ve8OZa/WlENHDyg/mpETs+f08X
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pmbjd4UB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/12] ice: Implement basic
 eswitch bridge setup
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Thu, 20 Apr 2023 11:54:15 +0200

> Thanks for review Olek!
> 
> Most of the comments sound reasonable to me (and I will include them) with some exceptions.

Anytime, it's always a pleasure to review your team's code :p

>>> +static struct ice_esw_br_port *
>>> +ice_eswitch_br_port_init(struct ice_esw_br *bridge)
>>> +{
>>> +	struct ice_esw_br_port *br_port;
>>> +
>>> +	br_port = kzalloc(sizeof(*br_port), GFP_KERNEL);
>>> +	if (!br_port)
>>> +		return ERR_PTR(-ENOMEM);
>>> +
>>> +	br_port->bridge = bridge;
>>
>> Since you always pass @bridge from the call site either way, does it
>> make sense to do that or you could just assign -> bridge on the call
>> sites after a successful allocation?
> 
> I could do that but I prefer to keep it this way.
> We have two types of ports and this function is generic, It setups
> things common for both types, including bridge ref.
> Are you ok with it? 

Yes, sure. I noticed after sending that keeping this function as it is
will be more consistent with another one, which is pretty similar. So
I'm taking my words back :D

[...]

>>> +struct ice_esw_br {
>>> +	struct ice_esw_br_offloads *br_offloads;
>>> +	int ifindex;
>>> +
>>> +	struct xarray ports;
>>
>> (not sure about this one, but potentially there can be a hole between
>>  those two)
> 
> Move ifindex at the end?

I think the compilers will align this struct to 8 bytes. I'd try moving
it to the end, but I think it will just convert hole into padding at the
end. Then there's no difference and it can stay where it is now.
Holes can be filled any time when we're adding new fields, so not a big
problem.

> 
>>
>>> +};
>>> +
>>> +struct ice_esw_br_offloads {
>>> +	struct ice_pf *pf;
>>> +	struct ice_esw_br *bridge;
>>> +	struct notifier_block netdev_nb;
>>> +};
>>> +
>>> +#define ice_nb_to_br_offloads(nb, nb_name) \
>>> +	container_of(nb, \
>>> +		     struct ice_esw_br_offloads, \
>>> +		     nb_name)
>>
>> Hmm, you use it only once and only with `netdev_nb` field. Do you plan
>> to add more call sites of this macro? Otherwise you could embed the
>> second argument into the macro itself (mentioned `netdev_nb`) or even
>> just open-code the whole macro in the sole call site.
> 
> I the next patch it is used with different nb_name (switchdev_nb)

I noticed that, but only after reviewing the next patch, so sorry, this
one is closed :D

> 
>>
>>> +
>>> +void
>>> +ice_eswitch_br_offloads_deinit(struct ice_pf *pf);
>>> +int
>>> +ice_eswitch_br_offloads_init(struct ice_pf *pf);
>>> +
>>> +#endif /* _ICE_ESWITCH_BR_H_ */
>> [...]
>>
>> Thanks,
>> Olek

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
