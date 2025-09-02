Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC8DB402A6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 15:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99D5C84302;
	Tue,  2 Sep 2025 13:20:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NqTtMj1R41Qm; Tue,  2 Sep 2025 13:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFB8184307
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756819258;
	bh=A8ywMG+vj2+Nie2O3B5bBvubPJkHrcVQ/laO9gX5VFM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O0Gc7GXB7KGnXo/eSJOFIeRmr18Vqbl9rVFrUCq7Kw9gjgQ9CuZd4L9pBB6ZdqxKU
	 RnVX2IWeLK7u3nwv5p0hZbiXd+PPaw8QeBlm/B14zZv70/i2lKnA+JC2xbWO0thdLw
	 mX949ijtj4FaFHtc3IOjJzy754Ref7gUz7g8ZNQsZCn3s2bfBjNSzx81N+Ruh1YDbu
	 JgDw+7JTbcUx9Ox4aSqVXc9uFeYEXLxwx84d9qMtLF0x8wujBoWqBRRS6f1ve0dDdn
	 Uf4Rf541A5GGRHZUX4E7j3aJpNUG9nH7vmSQkE/J2VaE8hLCumKl4vfpG3VElF+hZv
	 Frbk0f6iK/Fcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFB8184307;
	Tue,  2 Sep 2025 13:20:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B0D98D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 13:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1FE2417FA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 13:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CE4raA6zEu1o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 13:20:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFA914132C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFA914132C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFA914132C
 for <intel-wired-lan@osuosl.org>; Tue,  2 Sep 2025 13:20:55 +0000 (UTC)
X-CSE-ConnectionGUID: Oj+7I/70SYunZzYaSM8VZQ==
X-CSE-MsgGUID: Idp/Ux4RTbiBe1TQ/UHO1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58792089"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="58792089"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:20:55 -0700
X-CSE-ConnectionGUID: 0Jlck0iHTWWkqQz9YRPCig==
X-CSE-MsgGUID: vE0M5GZ/S0WOY3ECbkQrhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="202224000"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:20:54 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 06:20:54 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 06:20:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 06:20:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iS3wQiMGBBXV6Euf5SM0wK4Eqe6t9KdmSOmFkmqXQP4JYE1jcY9BRebPP7zP1Cp6qk4wxmNRg9LsBFVX4IFxD3E5DuCLyyUhTbXbmAFDjVLalFxJyqdFp+RRwVdwat2CSp5Xb62yulML2QkgAcsMTH3tsCoKe43hmVSWeY5MIc+UaVRjKD0Qn+WX+PkiV3UF3e19u0OsE2W/N7weGGgTgoHTjsIa7jTMXsWrnEbLsicfbpBEZWDm+iV+DOPnTWEKKrCYsWNADQ3FEd32jacaiuvI/MaExWW6PY/ksRbjHEqkwXSdE2Je0n8p78FG4K9rQRPz6E9GvWNA8/p1rZVQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A8ywMG+vj2+Nie2O3B5bBvubPJkHrcVQ/laO9gX5VFM=;
 b=CNVp9sqeqGkGwoSAYn7/ZxOkxkXiLqKa09/WDN7/Nzk65Du3GuV42/0JJaGkV03hDMiQibZ6Wx0Ppgyzi45f5Azp2yrPX8v7UzYn1+lMVg7le9VVqoH1uAX5V4bRhVf3u3yt8CVWMv7ndJFxJQu+YIv8h9Ksxc6BQvTOUsXYBkSB5AnDcpq5LJU0bJVGQ1iVxiDPymqhT+cBwQBxuTCa1yHW23p6p45Pg0qErNeN0mD3WZyf7wM4g8dY3C9mCqd7x8NhfeeXuu6HhrUKuOTLBmNFa6SAziL/dr9A5nHR/EnOiMggqec5WV4a6PI7amciBoQpb6ulpIoMUnKkYDJQvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SJ0PR11MB4990.namprd11.prod.outlook.com (2603:10b6:a03:2d8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 13:20:51 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%4]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 13:20:51 +0000
Message-ID: <b411a8ff-f5d4-41f5-bd2b-0c0ec89086e7@intel.com>
Date: Tue, 2 Sep 2025 16:20:46 +0300
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, <intel-wired-lan@osuosl.org>
CC: Mikael Wessel <post@mikaelkw.online>
References: <20250817092547.2976677-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250817092547.2976677-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::13) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SJ0PR11MB4990:EE_
X-MS-Office365-Filtering-Correlation-Id: 95b0c5ca-f6db-4933-5b63-08ddea23898b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SFFaT3lZYzdQdGwwYjZGOWFtMzFyOVIzaDJvUnhRMURIRHZ5U0Uxd3FTTlZG?=
 =?utf-8?B?VSt6TTRkYlNPT1FpdWJwdzVFN1pnS3Z6ZFdIVU1YT2FJWEZQaUl2Y3UreVFW?=
 =?utf-8?B?MjBJVE9VdHFadUVSTENwYTZIM0J3ejQ0eXFMRE5lYkJCWnpPVGpjVTArRGZ4?=
 =?utf-8?B?RkM0ck1yc3YzRmdtb09aVHgwSE1DTUlrZmFSQjFueDdLdUY1OGptbjhLWlJY?=
 =?utf-8?B?aGJDMlpuVTJhdXpuUlZVKzEwNWsxRUxWM2Y2OXBwN0dNbzltTHFheGRYZmZ4?=
 =?utf-8?B?SE9MVTZoR3llWTFhV2JNS3RTdDVRNWxxeVNSeHNRZHZiZlVFOTN4Z1JjL2Jq?=
 =?utf-8?B?UjFZcjVkdnIvV1ppdTZHTDV3VzY3bVlDa2Zuc0tGMHVCQ0RWQjE3aUpCc3Fh?=
 =?utf-8?B?R2xId1ZLZTlLNmhMbGlUSEkyKzlqSnFwWTZmUThiKzdUSTlLdGFRNTN1cE53?=
 =?utf-8?B?Rk9MdmtmaWZkekVBMHRLTVVJcXFPSS95K2xrWmUvSmhLSlpuTkhVUEFtUExJ?=
 =?utf-8?B?ZDhUYTBtNmdXM09SazFyaGpPUk8rWDNBZUwvbE5jdU9YMHBLNTRCd0ppV05C?=
 =?utf-8?B?MkY3UmNsMXJNZFpKS2NJYjZxVW85YU90YkJTSHFoZmhBU1d5M1Z6TXNxdnda?=
 =?utf-8?B?WTdiTmw1cDNBNzVqUXR6RVFxVlBKaFZ4VGo4OEx2dVYzT1c3MHRneXhQMXJT?=
 =?utf-8?B?MGl5YzZWd0Iwdm9lNXJZOEZJTC9tLytNb1VVRTJUZzc3TmVHenorSGZlcXlz?=
 =?utf-8?B?WGNxZFh0VUNhSjA3Q1dQTEgwYkxPbWozYmo2YVdDQ1R5b0hyempTSDYxOS9W?=
 =?utf-8?B?c0Y5NGFxVERFZGM0SVg4eGpTZFc2bWdNOGVjeFMvYkdhemp2OGxpempLZlNw?=
 =?utf-8?B?WDJMaW56MzFWWmpIY242MlVZSU10ZmwzSUFmdmdHdlVGRFpnR1Z4eVl5ZFRO?=
 =?utf-8?B?Um1ZeFMvSUxxVVJRbE9zVEoyeDB3MUNMUURERWtPN2g2RDJHYnMwRHcwK3do?=
 =?utf-8?B?aTJmOGFkNGN4NnkrT0QxMTVBZHFZSks2ZCtVams3YjBhaGtpMGZzazR6ZS9M?=
 =?utf-8?B?SVBDTFJjam45RG5ZN08vV1dGWHRZNzY1eDVDWmpMaHpabjhVUTF2WEVwMGhX?=
 =?utf-8?B?MHFkb2VPUk5ObXFxZ2xQTzZBeFBSQ242RmxIWmlFbEdYNmExUktQSWRuNTdq?=
 =?utf-8?B?T1J5NXg4R01BWWV0QXZVRVYyc3FaRGNmRDZ0SHZiallJOWNPUW5JME90SUJZ?=
 =?utf-8?B?VzFveGF5M3I1bmVDN1c0QzBxU1hNVUM4T3pGOU0yUnFXRDQwL05pVHdDTGMw?=
 =?utf-8?B?YmlUdTRPdGM2MStzd3FCMzBoYmRBeExxSGNxK1hqdlFOekZJekZpV1NtTnRv?=
 =?utf-8?B?SER3K1NOYVdlaUVWOTJxeDdRWDl1R1R6QTYwRHoyeTh5cFFpZXA1M3RZUXFZ?=
 =?utf-8?B?SmJ1eHhWNHNic2Y0M3pKZ01wd1dLZTcvOW1SbmxsbDJFZ2U5MlJYQmZhcjIw?=
 =?utf-8?B?OFlwdlBFeXY3ckswWXU0UTFROGxvUTMvWk52SGJnL28wMzY5dE9vaHdDUm1z?=
 =?utf-8?B?S2RIZFA5NnVZOXJCaXlXOXJzUStkWnAzajVJQUg5OE5DMGtMWkVKcysvUThQ?=
 =?utf-8?B?cjlIanBnZEs5bVIxclMvKzcwd3VPZUxNNi9XdStha1NHMGdjM2l5YkdlYVhT?=
 =?utf-8?B?bElseW1zTW1KaGJna3lrNElTQ2pXWkVpcE9SNVJib1poQURHRmRFQjYzaU5z?=
 =?utf-8?B?RHdUVjhNbXVTNEYxTlR4ZHc2RHNTT1JIUTE1aU1KUkVXT05OcUc5RWZJYnp3?=
 =?utf-8?B?ejluQThQaEc4S1BJTExmdEJzK3FkTGUvc1NTcjdJVmxRcHllaFR4Rmxqa1Nl?=
 =?utf-8?B?U3VvSVdpNGtWRkEwaTlkN2NaVUs4VStjeWJ5S0xWL0ljR1F4TEl5TlBCQXdu?=
 =?utf-8?Q?OGOsoiUbU7E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUgydkJMR0xGV2hMaDJZNnV3OFd1M3lUeHM0c1Q2b2Y5Q2UzWnI1WjZrVjJP?=
 =?utf-8?B?eEVaeVVwczJGRVVaR1BFQ1dtalRSRFlhZVFIT2MxMld0cEZJbkYrTGVKVzEz?=
 =?utf-8?B?VzVZTzJITTI2c2NnV3lnak9HNmZSMGFzZWR4RTNVdUVEKzJBdEJMWGgzbTBa?=
 =?utf-8?B?dlVlekI3cE10dkovT2RGL2ZQQys4R1NxbndSb08zdW0zSklObjBGSkhXVjhw?=
 =?utf-8?B?dG9zMUpCWVVVbklZMGhOeEwwYXNRa1RDNkJmTGxLUVlpVjBGaENVYlVUTzEy?=
 =?utf-8?B?aWpLdlgyZGVRN3MwaWo1b2VzK1cwSHJMQlJ4WGJZUXAzYVYwUUFRRHM4eG9J?=
 =?utf-8?B?Lyt1N3EwVW0yazhWZFZOME5VOSt5Q3R6WktibnZMSEVrOVdmMS91aHBFSWw2?=
 =?utf-8?B?MDRubXF6dlE3TmZHbE9pK1dEQ2JqZ1ozeUxWRHJSNUJtM1RWenBzek1iQU5j?=
 =?utf-8?B?Y2xDYkFYWWJjVVRhTytEUEhOemNhYXFQQTBjNVAxK1h2dzBQVVNXNlVvdHov?=
 =?utf-8?B?OWcrcEZUSXVUL3BxYWFaN2NGdENMWGlyUXkwVTBxU0xHYUIrenNtc2gydTdv?=
 =?utf-8?B?NGlGaXNvQm9vQ3dLZHRhWmJwS1RLTWpBL2RMOXBhU0MrQndiaFFaVFBrZlVZ?=
 =?utf-8?B?QlhKeFZXTG8zclNwQk9mcWJ4d1FOWU5wdlVLM3JxdVFSTk8wWXE1NFRUZFBX?=
 =?utf-8?B?VXd2bFQ1ck9rMzJCejdZY1FOaGlSVUY4QVhKR2FVcnRXSjJzVG5RZkZhNHQz?=
 =?utf-8?B?VlFhci9tOXJPTlZKTnJ5Z1RIc0hZQjRJUlQ1bWFETU16dmRBTHord3RPdVlL?=
 =?utf-8?B?b2N1bVlqblp5Z3lERW5yWjcxS1AxYjNZekhjY0tDQnJ2MW1lV3JndlYxMktt?=
 =?utf-8?B?amQ1MDVWcFhSZmdUcktGU0h1cklndERMR2I5SGJRa2ZDZ2ZtdkhwS3FndXl4?=
 =?utf-8?B?d3ZvQTFYeCtrcENIVHptaXFtS3d4OTA1MXFKbkxQUytXZk1lTG5LNUhRQ1A4?=
 =?utf-8?B?Y2pZSm13MnpVTlZMTHpmejRTb3hNZTRHSmp4azk3YTVRYXcrWmRqU2dHL0hh?=
 =?utf-8?B?SDVub0dNZjE4SUlKS2NtbWpHQ0duNWhMU0s2YUJTTCtqWisxVkNuRW91RjVw?=
 =?utf-8?B?eHlvdzNiQThaVzdIek1kRmROYkZFd1hGdXUxMlRrZEQ3Vyt5MWUvOXVrb1Vt?=
 =?utf-8?B?NHZST3lXOFBVbXNUVUlzb3A2QVlGS3FpWkVxS21iMkRnNmtVL2RYbkRXU0s3?=
 =?utf-8?B?Y3cxbll1UWwwa2NBNWVzRUdTYVJuS3dtR2dxWW5iOEJWN0gzQldtTU82czlM?=
 =?utf-8?B?RU9TVGdVbVFBTmpSS3N3S1Uzb2w3cGpEWk9FVFhnTWgvNDRFYzhHOUEzaXNZ?=
 =?utf-8?B?Y1NrbmNOS2hOakpHRzJQcmY4ZXFnOWJ2TlZmVUw2ZzhZcUN0QWd6Z1Zhb1RI?=
 =?utf-8?B?bmFKOTkxcUppUEZJSkhQL3hEdUFCSzlIRlhNVWUrQkdMR0lVZlNDVXdCYzFE?=
 =?utf-8?B?eU9KcVp4S3pPZU1COFcrRjJBVHFqZ3hSY0tuKys5VmRTM0NuaWhDUnVYZlBF?=
 =?utf-8?B?YUI3RElrTy81Wis0OG0vc0ZtS05sb2VTdStVY0p5TlVoWk05RGxxbkVVYlN4?=
 =?utf-8?B?VytacHJTQW5WdHI3SXdpWFluNjZBVnFpTFhXYUZFcGR2ald5MUtVUlRYZ0Rj?=
 =?utf-8?B?RFdkd2lIMnFpcjI2cmlmY2pqRnM2SGsxRnVUVENvVGF6dXlSa3RKeFdINW8z?=
 =?utf-8?B?MkFDcUllelJJYnRjME9MSktMWkN3Um9ucG5WbC9oajdQSU1rVkM2bkhrU1Aw?=
 =?utf-8?B?ZEhHdTJhVFZnRUNCRFNsMGdxclNILy9ZSGtlSU5JUU5FOTB0ME5MVUpaZm9a?=
 =?utf-8?B?blFjejVrR1k5THNCaW80VC9kMTdlQjV0TVNjSUxjelJiSVlnT1dOeFJYUjRX?=
 =?utf-8?B?ZS9zWWlaTzl5dGtFMGJWQ3Ewa1d6MnZvUnZ1eEkwb1dCVzhhL1FQRDdVbFlY?=
 =?utf-8?B?Q0lDWkgxRDA3NmR3STRwdnVHdDhRcjlGTzMzK2R2UklTTmlmbGFJSy9oOUlu?=
 =?utf-8?B?d2dTSWFEcGVTWXRCaUxma3JGMUc2NjlXb3B5VCs0bk5WSWJpUjlXa24wUjhq?=
 =?utf-8?B?K3NBTEtVclRBa3p5RTQrRmkyblhsbHBSaGVYWHpxeERPcDkzT3NMaFQ3R2pt?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b0c5ca-f6db-4933-5b63-08ddea23898b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2025 13:20:51.4435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3fnlOLOsD9208S2DGKZD7bmfrfFd2eCPSs6of1ShDe5u9uuJp7g7aW+0vN5cD6hAn1s6OKWcGl7kI34MCZAK7CaogUo7ePecq0xeP/9cU0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4990
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819256; x=1788355256;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F4wxpZyVC3ucn7WedHxkPVT1YmKnYqqsNAeQ1JBcbfs=;
 b=fEvcSDlxhEYbiXE97VJHd9XCpXsQSGsHy1GKYj8r9aYD3thmTXC4oQPn
 d30U0f8HfbD2qI4yIcLY+rGqosUEmJsd0YDIbzuDV4fvQT1TKbEtLuJK1
 QHcq1wpxoCrSFaLg6lmueQfu0eQp7V9T9y0mU2G6TKlQESz5/F6FHHwL9
 45xDNx//YkwJZW5WNckSRhfUYhrTuHfkv9LlroqeeF9iKhEOrvCKPETmG
 9mE5gSiw+5BHi+S6ZG512kcfkncl2+X4wCQgHwLLvek7Y9G8pKqXVCtEu
 C57yfCIaNR1cxhTC+ietCAJdzMm7IhpA4tVeUgdWMEDy1xufySMenWD9B
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fEvcSDlx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/1] e1000e: fix heap
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

On 17/08/2025 12:25, Vitaly Lifshits wrote:
> Fix a possible heap overflow in e1000_set_eeprom function by adding
> input validation for the requested length of the change in the EEPROM.
> In addition, change the variable type from int to size_t for better
> code practices and rearrange declarations to RCT.
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Co-developed-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v3: Change error code to EFBIG
> v3: Change max_len and total_len to size_t
> v2: Use check_add_overflow for boundary checking
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
