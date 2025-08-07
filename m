Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65642B1DCBB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 19:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B5FE402AD;
	Thu,  7 Aug 2025 17:56:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L58FQMx7dnBJ; Thu,  7 Aug 2025 17:56:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50743402A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754589378;
	bh=6EfgI5tK+2niE7QfKJNMU9PyPCZWtWFuBVssKZEHLl4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aWlxOV//8WsaPrcQHlizoN0oBQtm07ltqglpWHMFxObi6K/Ukm8AwsxMdxBdt272z
	 uR6278kpVYsvr7+y6mKTZGknfqEc4eWqxYjbMT0s2i9esE0Lp4ja9UO5jBNUhB9+zr
	 fW2SrnqgbeNwnIg33Rbhl9kFUQxEInqqqkbVjJFv8AqWXIzxVzquAjgkpO4Jr1AmUh
	 dh7XwXWerBM0AuFEn9CwVVXUijIOYRfP2BYPwq0WVhgNwoG7imRk992lVcRbPZHNoS
	 ElWEYbU9m6dxFJUaavdX0Ug9ZFNpqhJCc2SDi2O6yFce6QGXVLXJp1hi1d5sUI0dus
	 mOVe9OhpdPreQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50743402A7;
	Thu,  7 Aug 2025 17:56:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 40A144C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32BEF402AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:56:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ed6I6ZyT623H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 17:56:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5143440214
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5143440214
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5143440214
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:56:14 +0000 (UTC)
X-CSE-ConnectionGUID: lB0gR8nKTXqPWD1aqkokgg==
X-CSE-MsgGUID: AmHiFIufQcmliywDGh3+xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56141703"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; 
 d="asc'?scan'208";a="56141703"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:56:14 -0700
X-CSE-ConnectionGUID: NAhAcRBvQoOFkYa449GPVQ==
X-CSE-MsgGUID: bLANc/ILTd+hGrS4cst/FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; 
 d="asc'?scan'208";a="202289889"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:56:14 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 10:56:13 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 10:56:13 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.78) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 10:56:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qVWV2qfJzRww2uARSWVVo9hFOdYbdwf7wWo7RQxaAIa4QBh6tD/GYBmujkJzg2NgcbBnT7NaANnVoA4TOr9qV7bfTu483VUwSSGvHUCW5fSuj9GBaG8M694Hz8lc8e/3doPcVGLARoj6PQa3CGMtepZEoFFoqOB6SjpjTbF0OqlLh2qSaup+VzpjoY+PEGAJx+7se4xnNYsCXsnMEFaM5Ge2feoFfk16/XUUDwwv8uqqXGMxabj4duaFrtq2JnEf9OWgQoY44K4gYYUUdk1c3sYUdPo6L6FPWFLyYUgxbyd+Bm1nl+aaj9ql9TzHlaFGSpbxaxeZ+HWnhexowb9D9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6EfgI5tK+2niE7QfKJNMU9PyPCZWtWFuBVssKZEHLl4=;
 b=NLOmLlaET9w5Aw8OA7RbHlEjpxf3vpucbikGw2vq1BSa/+jYu30tyAYXA6lb+sVhB7e9Ohl1ukdQt8cI/ya4E2yGjckLWPvffxwNUXB8j1JV+3B/cBdPxL4i+s0FwO2hflCKrIChgMSbHX56M9y6hacuPHZQSVfU5+D2bbu1EYzc5cWHSswf5jhMtpIaL2p8wfW2db7K+s93agPOgLmoDz5mKNDffT0yQzot83e2cHIRNKnxZMU38RWmaJ7Ku7ps0gUX7hfN+NFMpJi9x0gwuqepIWOB1v+iZ/JlT+LhjREKC2MpOB33C6f5026TCG1PKVC5AvTZStFWIZuy+wOt3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB7294.namprd11.prod.outlook.com (2603:10b6:208:429::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 17:56:11 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 17:56:11 +0000
Message-ID: <a59d0242-b89e-4789-8269-43ee3534b843@intel.com>
Date: Thu, 7 Aug 2025 10:56:09 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------V0J34TFF1NwycsNiNgRjXGZK"
X-ClientProxiedBy: MW4PR03CA0308.namprd03.prod.outlook.com
 (2603:10b6:303:dd::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB7294:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c5a0c3f-f91f-44b7-f852-08ddd5dbb18c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a25PMERDMDZPWlM4dTQ5cmFqaWpocE9lVmxKU1E2eXc4d3RyS3NOWk5KU3VD?=
 =?utf-8?B?L0d5azluL3hxaUJPeVNTMkRoTjVYcnNYUUpIcjRmcU9ydlByTFRwUm1lNHBT?=
 =?utf-8?B?L0c1cGMxQ2pwVmdTVVE2TnZPS0JNUG82eXh5d2ZEdmFhODNvaTlzemRaY0o4?=
 =?utf-8?B?UG5nblAvd2ltRGs4eHptdVY3SFFVM0NaR0N3UXc2ZnRzcC9jU20vbjhvVVph?=
 =?utf-8?B?L3laMEZWTFlNV011cjQyWGhNSWFneW9GS1dRajlsdEdtZVRlUS9hb2NOQmRk?=
 =?utf-8?B?WThSWC9tRVFBMlNvaWVsajhmL08wclZSNTdMTlJDaU5VY2F6Q1Zic0IzanZq?=
 =?utf-8?B?d0VaZVNOdEluWmZ5anR6YVBEQlBtSkMzRi9DRHF5OWRHMWQwdUJSRjRLVTl6?=
 =?utf-8?B?ZlFRc2N6ZHBQR0Q2dmpKeUVlZ3JiWkxVT25wM00wNUl5UzRwUGpuNzJWZm56?=
 =?utf-8?B?WE1hN1pnTkN3NkN4b081LzdXM2xRbEpveDhtbkxmSTF5amo1RnlwT25mVFdD?=
 =?utf-8?B?ZVF3c1E2bjg4WFVQZFFMckNQWmpOczJEbFdWN1VwT29IUTJJYm1UM0JzWERj?=
 =?utf-8?B?Y1JSbWg1VzVUaWRuSGVIdW1vSlZ0MGIwWGxZc2M1cTNvbDdKNGtna3praTFn?=
 =?utf-8?B?UVRVcnN6MktmUGdtL1pQbFA3dGMzSXFWTjU4Z05WU1IxTDBhc0k4S1d6QkFH?=
 =?utf-8?B?cTNuLzV0Y2xVdVZWaDRQZEZZSE9Sc29ySDZpeGo5ZG1KdHdvK21lelNaWlBG?=
 =?utf-8?B?a0NiOEdDdkxkMXNaZ3BQbUpxT3hoeUlFbHRKSG41aUpLd2twZU1Kdnl0d2JS?=
 =?utf-8?B?eGk2ZVJhLzFKd2NTcjF1QlVSSkJjUmhIYXBxZFlza3h3cEg1VVc0SzJaVXpz?=
 =?utf-8?B?QzJ1M1FnR0hPQi9CS2lmcVRPRWZyWjIyM3FHNXQyYkl5bGtMWmZQYzRRNDRY?=
 =?utf-8?B?RWI0STczMU10MXJGTjJadDZxTlozVkloZEZBWVZBakhNWi9rNnBKdWg4ZzE3?=
 =?utf-8?B?d0VlOWttM0c3L2NZRzQ5aFJGaXBiUXpMbmhwSktIbkduV1ZDVnVxM0VyRTR4?=
 =?utf-8?B?SW8xQnV4MjdFOUFqYzFiRCtCS2JMdnpmbkF1Z1ZMYzZJZDVBa1BNWk5taFZG?=
 =?utf-8?B?VE5SYUFpNjRkaDFUSC9MZzhyY1JBTzV1bEFjYW85TjFzSkVsQUN4Q0ZNaVhI?=
 =?utf-8?B?UVNNWVdHRVd6cFQ0Nm1tU3VwR2MrVC83ckw0MThMTk9CVHF1YmN4L280QXla?=
 =?utf-8?B?bXVIOEhlSmE5ZWJuMWZOMGNVOUZaaElvRkxQTngxckRjS2Nlb2tmY0lYL0wr?=
 =?utf-8?B?TVZ1S1d4bm4xNkd4Um1CdGVNOU5KcFJyNHFVWkJOSTltSU5DL3BQWDAyYUx4?=
 =?utf-8?B?MzFNVEZaS3FRTnNrZVBSNnBSZ256S1l6Szh5a2Z2aERaUFNaTmd5QVB2MDRL?=
 =?utf-8?B?OW92U0JsSWxyREtyRlBmNVBibU9CYm5zSXhnZFdBZytPdmpqcFBBdUMwOGNp?=
 =?utf-8?B?dWtySkRKREVwQmpBQUFUbXh2cGtmUkZkRDVtUXpwVkF4UzdxT09uWE4rTFNr?=
 =?utf-8?B?RURBV0NJNnA2dG01NTRpcHRqeGhrTFlDSnd2eWxKSWY3VlRNN21pRmRFV1N0?=
 =?utf-8?B?eU54SFlya0RUcHp2cmN5MkxpRUNjWnNrZE9IZmk1aXhvTFZwUnAwdFViQnA5?=
 =?utf-8?B?YXBPa1hKUXlUeUVUQ0hha2RnRGhwd2ljcnFQQXRjSzdkb0tmRXVKSWxkVGc4?=
 =?utf-8?B?R3llRkRJTEpRSXBxVC9Cd2dLVlphOVlSZ2tkMUJrMUdVOXhJQnVyVVRtNmJS?=
 =?utf-8?B?TWZVTEsvN1hEd3hTbFd2ZGdHSUJhYVFtWHIvbnJqMitpdDUzbWJWWHVWZEZE?=
 =?utf-8?B?ZG1lZG90MWlhd2F3TWd4azhQV25PL1VXcHppV2JSTjdocUxOTW5iM1c1TVd2?=
 =?utf-8?Q?In7BbwkBsLQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmtBQUtUSWhKUDh4aFVpRU1yUFpnN0RCNmVCSGVPVWhmbXhDaFdUcHpGQjV5?=
 =?utf-8?B?Yy9nVGhYQzJyU21sNFdqcmdndHJoWWZnODVJRmJndXBkckRlSUlHZ3JLWGtE?=
 =?utf-8?B?U0lHT0cxVVh4aW5xYXpLZXpxOHJHS2hZeFFYOTdGYnBMWUxyR01GbWFNTk13?=
 =?utf-8?B?N0VNUlc0QU93amVMK2FURjdFbXgrK1hrSi9kY1B2c0l1VUpWZUtBRTQ1NVNY?=
 =?utf-8?B?ekVIQmc2RzE5eFJza1plRVJGNG9CZ0tiZVM1UCsreWxiOVAwM3NTNmtPYWhD?=
 =?utf-8?B?VWlwaWI2NVVmOVZjTlhPS2RzZ3NuYlVUaTkzRkRaVHMzVWtPQVgrZnJUREFJ?=
 =?utf-8?B?cUxzN3FvQVN3cEJiUXVRZ0F2WFpJQzdQWnk5enpnamRkRE55dG1jYWdhWXB6?=
 =?utf-8?B?dEc0b3ppa2htUnNGeXprVFo1SmxvUTlZeGkyZVhVWWpXdGxVZkw4QkNFTUdk?=
 =?utf-8?B?VVdYOHMxM0ZvNUhpZHp2MWp6bURLTTdXNUxyUkxwN3BVQ2ZtWVhRMXdlaUEw?=
 =?utf-8?B?UXVGeGFjODVTQlF2aEw2MTVmNnhGSXZObS81SkM5RDlzWDNHSmRVU0JFaFlT?=
 =?utf-8?B?OXJpanFOd1VzWU0yeGVLRVQ0NFc4ME94dVI3T2ZWNy9iRyt2dHkrVmNNZXda?=
 =?utf-8?B?VlpBeDgzditJeUxYV1BKaWQ2dE5Cdmo2L1QxZzZoZDlwbjNxci9DUEl0Yzkv?=
 =?utf-8?B?bTVab1VrSlFPVmcwNGtFTlBXQVhMYlQ5NU8yaFQ3SEdvYjFEdTNsMEJDWDNB?=
 =?utf-8?B?U0Z1V1ZJN0lFOFh1QnJXU0s5anR0OGxHVTFQRXRLcUt2S1JvMitQZU8xUUpo?=
 =?utf-8?B?cmR0ZzNnSzlvVENiQmxtUlRuTm5YYnFnWjJHMHdGbUR1YnZYek9TQ3VJYVRI?=
 =?utf-8?B?MUx1YlhLUUN0VFBvVXcvRVk3S1Fja1BTcnpUMlpScFd2bm5CZ3dnQ083dWhQ?=
 =?utf-8?B?RUVkbVhzV3h6S0wvNUdOYSt0Qm52bkVDU2tTNVpLbVBSYWVkVHU2blBlNG5M?=
 =?utf-8?B?QWxtczJRRmpqQUxMS0w4WENtVTBRVE85UGM4VjhVUlF1MU5lREQ2TU5CdGZs?=
 =?utf-8?B?U0tBSjdJZzNPd1dGcWFyaENVTHQ0cncyc0RPYWl4ZmJXbUF5VHMyb0VDa2Y2?=
 =?utf-8?B?YmhzZVJMTlM5YVU1bkMwakFjRG56Rmtsa1hZVlUzOUM4bE1GOUhBaFpldldz?=
 =?utf-8?B?UkJ1QUdzMkhRcVk1SkhXTldQeU9ib2lSUDErTDdXVytGb09RSDRoeE5sb2dY?=
 =?utf-8?B?RGtIdE5NNjBSdjYxV2IxNE9pL0YxekEvYUpIMlc0MmhTSEkvWGx4S2oxU2pG?=
 =?utf-8?B?QWkxYkxxVisyN0MvNmwrV1B3RVVNb0xGNE1yOUFMMEFjUTFSZVYzcXhteUlI?=
 =?utf-8?B?Q0xCVjY4NkZ2VVh4aVVIZEZzYjg1V2t2WFB2Mk5MdXRmSVZ5YXBib3pnYkMv?=
 =?utf-8?B?V0krcG1MN21Zb0pzMDI2Q21oVDR0NVNVeTZhMFUrMzM5andRamxQTFdPeFFI?=
 =?utf-8?B?N1h4VXNXN3U3NTJHSlM2dEVLeGQyNlZ5N1NWS3BKb0ZTQkxYcFJZVkVFZmRS?=
 =?utf-8?B?ODhFaVRCOVQ3Nm9qaE4zLzhBdm5NM0NxSGN5QmdwVW1pUzVYMnF1N3VoVEl2?=
 =?utf-8?B?a0tTcHlaU0FSU0kzNXRHNVkzbUVncFkza2kvN2h3SWZjVDdOZE9rR1hMaldt?=
 =?utf-8?B?SUZaOEFsMURYOUt5R0lkQWxsMHhhQUZjZU5FbXJEZGpON0J1UWtWc1NkNVZj?=
 =?utf-8?B?RkZxaCtOREtYS0pCcjkwL2NvQjQ4aEN3aVQyeXEzUXp4UzZlOGRxTDFUbnZo?=
 =?utf-8?B?VWJ0bW1idFhsZG5tMmdtOHVveHNMMmdNNm5NcS9ndmtBUmkwa3AwZHNxcWFE?=
 =?utf-8?B?bnhVS0IrNUsxQmd3QjdGRTJzMnpCUHNSSHBjMmVnMndtRUNOVzBydUZVV292?=
 =?utf-8?B?QkwxMlJoQS91VllDK3RjRUdybGxsYVJlMm5vbW1KclNGZU5FUS9wc3NkRUk3?=
 =?utf-8?B?THRzR1BqV3d0ZnBKVEpOZSs3dTZ3RHh3ZW16aWJPd3o1bG5Gd202M2dsaElP?=
 =?utf-8?B?eGppcTZSNnl0dkJMUW9NT0pGTVY1MW1zSnpuZCtCQWNNelVmSUY3TEtMUVc0?=
 =?utf-8?B?b3Q2Ym5yM2tWWWtvQUJuaXlkQVZwazRrNDlLT3htQVZvdmtoNnFiOTJBcmV5?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c5a0c3f-f91f-44b7-f852-08ddd5dbb18c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 17:56:11.1579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OdkX6vc/xylE0vB8FfbMhitqND1TOMTPw1RjOJ4qwJoy3eSLmtVBzcWucaQJcyGUdJonIBaTIpylHXcClvUl/ntFcEHH1Mkv2+OsGGvwg0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754589375; x=1786125375;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=+PYRkHwt23M27fNOxskgAK4Y4PfX0QQF0G1h/gM3zPk=;
 b=ZFZNpLpRYR9VXvKHe26+JfmqTao87o7WFHwe1UBL6l2RpAoS8i1mK8vL
 o8NMnB05+JQ9m4JsiY8RrQe+zC7TgGDKocaBZCwmmT5dS95uiJ6Y8OUZT
 /1unkZX2ZPNuI5z7atmkzDk8xF462rBLLWwZ32Jefxq+5UUAy15eRQ4TH
 nmXMKDrbWpUc8YhIbqtBg1Uh9uOz8hD4EhZN4e73p9ZN7tOga4JwJ3Ntu
 6TabVKf44Q+GonLl0symgHTM8dwtUXGjjaD/wLKqH9OkllgFLScdtIGFA
 qx33uwPH8wnk/I+0BpxgVbWGE+rRQbH4M1Xt38fLlQqdhLsM0RkzmHCsQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZFZNpLpR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
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

--------------V0J34TFF1NwycsNiNgRjXGZK
Content-Type: multipart/mixed; boundary="------------jofBe6nMuKgELBdZLE6eACvl";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Message-ID: <a59d0242-b89e-4789-8269-43ee3534b843@intel.com>
Subject: Re: [PATCH iwl-net 1/2] ice: fix NULL access of tx->in_use in
 ice_ptp_ts_irq
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>

--------------jofBe6nMuKgELBdZLE6eACvl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/7/2025 10:35 AM, Jacob Keller wrote:
> The E810 device has support for a "low latency" firmware interface to
> access and read the Tx timestamps. This interface does not use the stan=
dard
> Tx timestamp logic, due to the latency overhead of proxying sideband
> command requests over the firmware AdminQ.
>=20
> The logic still makes use of the Tx timestamp tracking structure,
> ice_ptp_tx, as it uses the same "ready" bitmap to track which Tx
> timestamps.
>=20
> Unfortunately, the ice_ptp_ts_irq() function does not check if the trac=
ker
> is initialized before its first access. This results in NULL dereferenc=
e or
> use-after-free bugs similar to the following:
>=20
> [245977.278756] BUG: kernel NULL pointer dereference, address: 00000000=
00000000
> [245977.278774] RIP: 0010:_find_first_bit+0x19/0x40
> [245977.278796] Call Trace:
> [245977.278809]  ? ice_misc_intr+0x364/0x380 [ice]
>=20
> This can occur if a Tx timestamp interrupt races with the driver reset
> logic.
>=20
> Fix this by only checking the in_use bitmap (and other fields) if the
> tracker is marked as initialized. The reset flow will clear the init fi=
eld
> under lock before it tears the tracker down, thus preventing any
> use-after-free or NULL access.
>=20
> Fixes: f9472aaabd1f ("ice: Process TSYN IRQ in a separate function")

Prior to f9472aaabd1f this same code was in ice_main.c, which means that
strictly speaking, the bug exists in 82e71b226e0e ("ice: Enable SW
interrupt from FW for LL TS"). This fix only applies to v6.15, but we
will want to fix the stable tree for v6.12, since the original bug has
existed since v6.12

I guess after this merges, I will need to make a stable request with the
targeted fix for the v6.12 kernel separately.

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/eth=
ernet/intel/ice/ice_ptp.c
> index e358eb1d719f..fb0f6365a6d6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2701,16 +2701,19 @@ irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
>  		 */
>  		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
>  			struct ice_ptp_tx *tx =3D &pf->ptp.port.tx;
> -			u8 idx;
> +			u8 idx, last;
> =20
>  			if (!ice_pf_state_is_nominal(pf))
>  				return IRQ_HANDLED;
> =20
>  			spin_lock(&tx->lock);
> -			idx =3D find_next_bit_wrap(tx->in_use, tx->len,
> -						 tx->last_ll_ts_idx_read + 1);
> -			if (idx !=3D tx->len)
> -				ice_ptp_req_tx_single_tstamp(tx, idx);
> +			if (tx->init) {
> +				last =3D tx->last_ll_ts_idx_read + 1;
> +				idx =3D find_next_bit_wrap(tx->in_use, tx->len,
> +							 last);
> +				if (idx !=3D tx->len)
> +					ice_ptp_req_tx_single_tstamp(tx, idx);
> +			}
>  			spin_unlock(&tx->lock);
> =20
>  			return IRQ_HANDLED;
>=20


--------------jofBe6nMuKgELBdZLE6eACvl--

--------------V0J34TFF1NwycsNiNgRjXGZK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaJTougUDAAAAAAAKCRBqll0+bw8o6IjH
AP9a/rUVwfmafftffa4NHdARknRnBFcs9HpMpumsgfvNJAEAqx5CJoaaiFnxDeZwI8QrEsPEjJuu
ZHgq1FgvsmQ2yg8=
=U0sN
-----END PGP SIGNATURE-----

--------------V0J34TFF1NwycsNiNgRjXGZK--
