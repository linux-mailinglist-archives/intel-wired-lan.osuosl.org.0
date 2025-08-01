Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E326FB1896F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 01:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BB02413FB;
	Fri,  1 Aug 2025 23:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GgPqW39FKS3y; Fri,  1 Aug 2025 23:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A70CF41402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754090913;
	bh=+tTXi1bOyrVCEXGI9QPLzk+aDJ6LNYniUcly3TH+t+g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jSbIVoprTa0CRMi7t6D3N1O/wxEuXsc4VQ/hKvoUr76daGFeL0TYB85q4RYkIztGG
	 Owf0aRT9guLp6h0jNDnPlEg1JWvzh2xig2rPcJA+kOrPIk3RQEej4Z9w/P4uBFKFDx
	 MMOOvYhraDC53z7hU2AdHgiVPJp2lWIBCbU30BgZCR22wEhnCYsLJq78VT6uj7EaXn
	 +bd5riH8fNXdjZoM13mXZxpKDHhYaHJWXAXja8QSaDJZ1VtuqHWkubnAXVvvyT8+Ae
	 dvAVXI/kKAUzitHDjAWEj2RhqBKWMRH2yHrMUb5wiAC83C8N0nibcrtLWKAaO8kSvX
	 EJ5GV5ZESUweg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A70CF41402;
	Fri,  1 Aug 2025 23:28:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D32B0C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9519848A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:28:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WIL5P941lBgq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 23:28:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF0EF84529
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF0EF84529
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF0EF84529
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:28:30 +0000 (UTC)
X-CSE-ConnectionGUID: 0VAn1q0STJy3xWl3PWFZPw==
X-CSE-MsgGUID: ADWs2zk5QvGXJLOVSko1DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56527513"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; 
 d="asc'?scan'208";a="56527513"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 16:28:30 -0700
X-CSE-ConnectionGUID: pBnbq9rdQWyd3BVIvQpXGQ==
X-CSE-MsgGUID: yAulqvAASKCub5FzHLB3pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; 
 d="asc'?scan'208";a="163605003"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 16:28:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 16:28:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 16:28:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 1 Aug 2025 16:28:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ythlE3734bz4zviomdYZP8Sldy12BteU9haFPlxRe5NHsHFZYRmFRuQjLeDDCYZisMVpvWMWD8hdJ2102iRcAvHgAqXHf45mdETmoS09y9cvzf0rF7BSz48qq7WS8YzeQNTVsZ/q0BKPxYFNORwv/xDFbe50/Jtiks9S7rPT0Uxzmva53uvnoznA6IQIWapUSQf2ImYpb7yD0w4mjsa7oYDpsD+QlskPwMxeghARIWP+A4jroyBT2GXdWziiFsHCLnadXnCFMMHGGrHh4ihKSaWZkgUdH1foapp2U2lU1w86dMndDnrT/H6qp0q5orRf9qzlARgYj8CNDa7H1snQyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+tTXi1bOyrVCEXGI9QPLzk+aDJ6LNYniUcly3TH+t+g=;
 b=sO7NJAraO35xBVdQrQYcIlNRaZiRwXrQu4ESbzWV1roYI050UtLU96dtbVsmO8wZYjshX4C4I239aY9c5mPjwYZwGhqakIu4V+qQ2bgQ5KGQ1xIDbKzd+X2tjTfI58b5uRyHB1BDDBvvb7919su0J2rAw80F/8XH8G860F+QU5cg3N/0XfgRSZUbDx47OiiNjV3quhvB4o7vxkQJgSQw8q0Kns/ODIyXeZ0WPEK6atX0NZ/WRFNrBnJw3rLCloBEV0RR0QLhGonh383B7FlEqWy3d4CqOFk7Xf1Et7hJ53j+tfV3SnlBwqhEnraEMIo5Ud+XMnWn0Lna25lMBtmV0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ5PPF75B6D7B42.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::835) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.25; Fri, 1 Aug
 2025 23:28:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8989.015; Fri, 1 Aug 2025
 23:28:25 +0000
Message-ID: <3f6fbb95-2ee1-4571-913b-6dc6c3197032@intel.com>
Date: Fri, 1 Aug 2025 16:28:24 -0700
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <dhowells@redhat.com>, <David.Kaplan@amd.com>, <jiri@resnulli.us>,
 <przemyslaw.kitszel@intel.com>
References: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
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
In-Reply-To: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------57JYZYutBkRxHhwQZ7bkghn0"
X-ClientProxiedBy: MW4PR04CA0093.namprd04.prod.outlook.com
 (2603:10b6:303:83::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ5PPF75B6D7B42:EE_
X-MS-Office365-Filtering-Correlation-Id: 5dfc2614-f75e-408c-b327-08ddd1531d02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T254WDBoNmF6MC8rQmYzSURIazB5NFhlMmJJMVdCS09aUmE5NDYrc3Y0d1VE?=
 =?utf-8?B?czc3Q3NSWHVFdlRiVHduZyt5VWZsMXFUWkNXd3Naa3VnYXRFSko5V1JFSkYx?=
 =?utf-8?B?Y0ZVWDZEWmQ4Vjl2VE9Kak9Td003cnRrK0RNMWMzVUk4NlRJc2lGRjc2Tmxk?=
 =?utf-8?B?STlsbVhyTmpRQjBKZHBES0JSUTlPcU1zWTR4dDdmUGgyUCs1QkVFRjlPZkN4?=
 =?utf-8?B?akh2d0NSTXNxcHk3SmpvQmxqR3VMU2dpUjdjcy9lZTE0T0pIZDVXajFkNXk0?=
 =?utf-8?B?Sm1mN0VjZzZpeVBrREpSalRjeXp2NTNQOURGbHVoNXhjZnE0ZnFNdzZ1R05J?=
 =?utf-8?B?aTNwVHNsTUpBV2xNTXF3RHpTc3ZXR0lxd2M5RVQvbFcxRkdydXg2djlTb3hD?=
 =?utf-8?B?TnpHR1ZvOEppcU9uV1E3OVQ4RnVPRjNnWjVLelpGSXh4MVh6MlRVOG0weWU3?=
 =?utf-8?B?SC9rSGlpY0g2ODZ6Ymg5Vm1wcjlBTnQySXhyL2k1Z2JkeXBta0pQVDlxZnZm?=
 =?utf-8?B?UXhGVVo5OTM4ZFlDMDlyWWpWbGhDdlF0L1IreGFKdXY1UzNzcmxPSVFuN1M2?=
 =?utf-8?B?UXY4YmtKQi9PRTdMZzMzSHQvM2w1WFIvcmJMUTBMT3ZaOFhtdkp2a0s5QlIx?=
 =?utf-8?B?d0xHdFFoaEdOcVNZSm85bUZsSVJKK0I0Uk5FUzRPVEFuNXpUNVdaS1pBTXJa?=
 =?utf-8?B?V1RodUNzZEdMU3lCWjhZcGdpY2k4U2Myb2Z5aDNPb0NyZjNKVUxIS2YxdkFL?=
 =?utf-8?B?VFNQRVBEbTNEOGlmdmRYY1ZDQ1ozVkUwcTdBZU5qMDdSNzlJenordlVucWUr?=
 =?utf-8?B?YUI2WCtNR2M5akN4bW5QZzU0NTZzTmwremhBNGJINFk4c2czcmFkSzVXS1JH?=
 =?utf-8?B?bmcwM2dBdWlpZkJjMlprVzRvb3dnOFJaczJMRk15dHFRNVFhZHZWUjdyRnZ2?=
 =?utf-8?B?UlROeG9JM2pqWHRXV3dEOXJ5QlNsdzk4TlVzOGFNUnlyUzYvYVdiYXZXclJV?=
 =?utf-8?B?Wnp1cWdKQjNCYm9ZaElzWEdmUVhpZFpHSFVGU0E1WDNEUkRmcmxwMFl3Vmg2?=
 =?utf-8?B?aTExZ3F6ZnZjbVpwSW1OdHRFVmdObTU1bXJDL21CTzk3SGFNaWJ1Q1RhT2xE?=
 =?utf-8?B?Z0hLUkhaSVhaN2p0VUt2TjI0NmJuNlgxT29yZUQwSSs0THhuL215aWNhQ1Qy?=
 =?utf-8?B?K1Y2RE1ZcjVYWm1aS3pLc1JRcld1NllmbDRtcXlMNFY2eDB1WmZhUlJzTk1i?=
 =?utf-8?B?LzJRQmFiSHB0bFV2RmM0SldEcURtZVkrUGVHRzBNQ3hDWnAydnVvVmNDQkVD?=
 =?utf-8?B?M1p1ZkpzZVl2QkNYc243QllvZncvT2pPRzR6Zk5JbERGWFA4SEFYZlByOVlL?=
 =?utf-8?B?aFJENW5CeW9hdzY1bXJicEs2aWVIVm9YR0VBcGJVVTJaV2JJeElSMHQvQ1Zp?=
 =?utf-8?B?dUtGNTRrWVk1bkt6bnFYcllRNWpLbmpxU3hLSzNXNGhtQU9Oc09rRDlyZDA3?=
 =?utf-8?B?MHN5Q2hlc0k4RU9WaGZFeUxZVmNUTDlkcHVKYnNJcThiNGp0bzgxeS9tS2dO?=
 =?utf-8?B?czNBS3lGdEV0TlJ4TzN0Wmc4enl2cFpFbUcwbzd4V3p4TEFzUUtTQjdiSExY?=
 =?utf-8?B?N0J0bXRwQnpCTTZLMUZ2Ty9TY2E0a09vRXVFQkRGc25TdmpFSGlPbC9KSW9T?=
 =?utf-8?B?a0FZWlZ3Ym4yRHhHSGFydmh4Qk9tS1oyai9WQnJzZytKRDlUUDJXcFdzMGpj?=
 =?utf-8?B?SDlSTnNtUytFVjJYMm9CNDAxbDkrVTYzTVJFVmQwSW5aZ29jYjFldGwwYzFo?=
 =?utf-8?B?OHlaRE8vOE5haG9qQi9LV3VlQ1ZjUGxsOHl5YTZsV1FiZExxUFBWZlAvL0xZ?=
 =?utf-8?B?SlFXN0cvazVlN0psdWVRWlgxQjV0RVFIaHJvSlUwM2ZmNjhnSmlVRm5WcXNU?=
 =?utf-8?Q?pDY6TiIoNs8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0M3cUt3U3hMdWROZmFXOUtkejdMbVRwUUQrV0VJN1RoMm5lYVZVVWczSi91?=
 =?utf-8?B?NEwzejRsRmVzWTR4MkJqcTlCMm5PSFZheWNsZzVUMkdGaFh5SFh4TlMwT3Zo?=
 =?utf-8?B?Vmp3WFoyaEJBeEh0OEZOZ3QrbnhhTzloSk9CY2JvdVhRWDNmRjlLc3I4MkVp?=
 =?utf-8?B?WUI2Z3FZOW1KSG01SkF1V3psellmc1Q2OW9VRUs1c0IzTHdKbjBjTGVOalBH?=
 =?utf-8?B?eldBSXByOFdBUjRCNjhPdnRLdUdrU2x3NHdpSU1mWmMzOGFxcDYzZjd2QVgv?=
 =?utf-8?B?cnNuMy85Q1ZQZ3VtVEZSQ1hSN1hDT2ZYWFNaNkN2M1g4b3B1cXdPTEVLOWoz?=
 =?utf-8?B?MlQrdkpTUTc4ejRVbm51NWFkUXVHcWxOSFZjRXVTRVZ0RW9iWVZxQmtYVUo1?=
 =?utf-8?B?ZGRyaGx1SnMxWGRuNmVGd0xOVHNQdTMwV1NIQ1JJQStxZ08xMjhVZWJKUFhl?=
 =?utf-8?B?VkhNRFlIVzIzamN6ZzByVW9yYzBOMXhsSFMwanorUjVhdmpjdG5lNzRvMVpt?=
 =?utf-8?B?SCsrWG1zSVNsdXlDNFZqc0hkWnVuRGpHLy8zcGdSSnNjZ0RQeTY1SXNyelFk?=
 =?utf-8?B?M2ViRkF1UkI2MTZ4T2crN2djbm5xYXZaVjFWKzF2Vlo3RFo0dGpuOWl4d3VV?=
 =?utf-8?B?OEtDbVpjeEl3dTcwNEZOOFdLc1ZnVU9rTmJsTER3MmdqZUs3YndVTko2cHhK?=
 =?utf-8?B?WFo1WktWSlM1YWRwQUNKQU1DUTlqZzJyeU9TeHRMemhCRW1reWVFRzRKbHZz?=
 =?utf-8?B?U3VvV0pkMDdoRUtMQldYKzBEdVlaZ2xXZzNjQmd3b1l3SzFJblErQy9KNm84?=
 =?utf-8?B?Ti9MQy96MC9iOHlyTUZ0REtTdTNJbGNzKzhyQXhUam9YL1RGNkhvOFloVlZo?=
 =?utf-8?B?S2ZoZWExNkI2cUNkMWYzV0U1S1BQWWhvWm92VE9Rd0ZaL0daVGo0M0tJVVZu?=
 =?utf-8?B?YmxnVFBDV2x0eHlvTUNrMGtOUU1vV1p3amxhMitkQWlhUXBVZTZodmdBcEti?=
 =?utf-8?B?RGpISzlJYzBnZkV5YjBxdUY1ajVyK2h6cjBxdnA5bCtTUWJiSXZBaEIwRUY1?=
 =?utf-8?B?ZmFhL1dQNWRwZHBndE5tdFNZZ3BpQjE1WFlMTVdZd1c0eGwvTkVtaE9CaHBy?=
 =?utf-8?B?ZE1SaUIvRFdLY3JSUkFFRnA0OFN3RnR0SVZOdURsRU96bGsycmRmQ3lLSUNU?=
 =?utf-8?B?WlgvMi8wbVN2cGVMeUgrSE44bnpsbEdRWG1oNk1mY3lUSXc5N3YzeWc4Tzd2?=
 =?utf-8?B?aHBUZU9rdjl5SnFSaGhPVjYyd3lGbVR0ZGREY0VSdjdTaEozOXh3aERWdTlX?=
 =?utf-8?B?d1pHb0gzOWpNVGpGVm83U2lmTktid29DdFU0bDdLWVA4ZXVzdzNZU3NnSEd6?=
 =?utf-8?B?KzJNckl0L3VGUVc0OVJZaGptR055WnhTRGdZVHFJaGhWMWc3M3VHTmNpV0g3?=
 =?utf-8?B?bTdYaUhxSlZIZkZWcEE2UmhzNmI1Qi8zZ0ltTTFObGRTZGx5aVJGbkFtSVRn?=
 =?utf-8?B?WFh2Qjl6amlvUFZUNEMxV0lQT2c5NVhUQ0lvSVU1TXFqSk1ZM2RqOWhuV21u?=
 =?utf-8?B?QmlwaXZ3WHVZRUlFUXFqV0R2WnBJY0hrNFl3bjJBVm02Qmxub1k1eUFRREs2?=
 =?utf-8?B?RTRoeE41NFp3TmVBYkZTZWQvTGt1bmk0bXdrYStEVHYwU1VBVnNYTWh1Qjl3?=
 =?utf-8?B?OWphQjZhZUlFTEs2V3puRGtMVno5aGZodEVEcHZhRE5KSEZhaHVCalVseFNW?=
 =?utf-8?B?QXJEK0NMNVlnOEFweGY5d3Q5Z1VzRk9rUzNCeUZPem43a0NPcGF6YXRRM1hy?=
 =?utf-8?B?dm82T24rMHplWnpnQUloMXBnS2xsZVNNQ2VhRDAvRU9lU3h0bzFQMS8xZFVm?=
 =?utf-8?B?VXlMTTV5QmIzSk5qWjVuOUV6eTVOZTN2aGNsQWh5WUhLT3JpU0RhbWtQb3pR?=
 =?utf-8?B?S3NIZkVNMDFuY0lIa1JHejRlSEh6ajVMNkxaK1c5Y1RTZE5yWTRGYTFUMGRs?=
 =?utf-8?B?WFZrTm1UTHQrVGlBWElyUmh1UXBsSUxxN29wSWp4RkNEdVZ2TThwZ0RIQWdG?=
 =?utf-8?B?RWVZZ1FzWmVtZ0cwaDcxK1JPL0Zva0lUOElGSnBXUzhveEN4alB6aU1kdFZ1?=
 =?utf-8?B?OXZ6T29tS3l5dEpCTU1FY2VuTWhPQVNUdWxNVkJCTThGdThGeVdsb0FwSXhk?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dfc2614-f75e-408c-b327-08ddd1531d02
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 23:28:25.7100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O0J1QNXvxhz9fz8vBX8mqb5/Wsu3bUGBjUPMORL9BqylIQGwN0LkYBEDDVlNa3SuKW6S/5DJ1Ax/Ta0PA9nO7uoQo57MKX/2I9nR8LDz66g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF75B6D7B42
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754090911; x=1785626911;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=wMyzxPiJgyusecLMnj8JbVA+DsnMrddbSToD6QvBPxI=;
 b=JL4DVE5LA2ZP/FxvpLzNv2m3gMSjzYkIwUwpoqMhmuMWI/DQu0kVoxzY
 aEMlVeFYhjUkFpSPikjVFWMHJgzJATnSG+PxGvmwgY31rBGgwaz57u42E
 pLHHyPr6YRuvOws9yVLDNj27DeJmjEwiVA0hluOPjczBX2qyadDpZch8S
 HOwNrGQsRhdnMDuOwyDo82c45KkTGcjziJCjk9ikuckOHWhFjDZAFB+JR
 +k2WwD4v0D32rgJjJ6rhK1ItPkwL38t5zmnad+c227LJtJ7Ok9L7P8V0K
 FD6Xcdwi2wT+IjT1XZVQkdJ8bp84dvGce1y0h2YgjSwEXBWmpJYelyHu8
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JL4DVE5L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] devlink: allow driver
 to freely name interfaces
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

--------------57JYZYutBkRxHhwQZ7bkghn0
Content-Type: multipart/mixed; boundary="------------qHRYFPJKu0QDDAyov2ezIRIH";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, dhowells@redhat.com,
 David.Kaplan@amd.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com
Message-ID: <3f6fbb95-2ee1-4571-913b-6dc6c3197032@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] devlink: allow driver to
 freely name interfaces
References: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>

--------------qHRYFPJKu0QDDAyov2ezIRIH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/7/2025 1:58 AM, Jedrzej Jagielski wrote:
> Currently when adding devlink port it is prohibited to let
> a driver name an interface on its own. In some scenarios
> it would not be preferable to provide such limitation,
> eg some compatibility purposes.
>=20
> Add flag skip_phys_port_name_get to devlink_port_attrs struct
> which indicates if devlink should not alter name of interface.
>=20

I feel like this somewhat lacks context in the commit message. The
renaming is really the result of a policy provided by most distributions
which uses the physical port name to determine its interface name, right?=


The fact that without the devlink support, this would be skipped, and
adding devlink support made it change is not *exactly* the kernel's
fault, but.. I think it does make sense to have the option for older
drivers so they can add devlink support without triggering this
behavioral change.

While I might prefer more detail in the commit message, with or without
that:
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>


> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: add skip_phys_port_name_get flag to skip changing if name
> ---
>  include/net/devlink.h | 7 ++++++-
>  net/devlink/port.c    | 3 +++
>  2 files changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/net/devlink.h b/include/net/devlink.h
> index 0091f23a40f7..414ae25de897 100644
> --- a/include/net/devlink.h
> +++ b/include/net/devlink.h
> @@ -78,6 +78,7 @@ struct devlink_port_pci_sf_attrs {
>   * @flavour: flavour of the port
>   * @split: indicates if this is split port
>   * @splittable: indicates if the port can be split.
> + * @skip_phys_port_name_get: if set devlink doesn't alter interface na=
me
>   * @lanes: maximum number of lanes the port supports. 0 value is not p=
assed to netlink.
>   * @switch_id: if the port is part of switch, this is buffer with ID, =
otherwise this is NULL
>   * @phys: physical port attributes
> @@ -87,7 +88,11 @@ struct devlink_port_pci_sf_attrs {
>   */
>  struct devlink_port_attrs {
>  	u8 split:1,
> -	   splittable:1;
> +	   splittable:1,
> +	   skip_phys_port_name_get:1; /* This is for compatibility only,
> +				       * newly added driver/port instance
> +				       * should never set this.
> +				       */
>  	u32 lanes;
>  	enum devlink_port_flavour flavour;
>  	struct netdev_phys_item_id switch_id;
> diff --git a/net/devlink/port.c b/net/devlink/port.c
> index 939081a0e615..bf52c8a57992 100644
> --- a/net/devlink/port.c
> +++ b/net/devlink/port.c
> @@ -1522,6 +1522,9 @@ static int __devlink_port_phys_port_name_get(stru=
ct devlink_port *devlink_port,
>  	if (!devlink_port->attrs_set)
>  		return -EOPNOTSUPP;
> =20
> +	if (devlink_port->attrs.skip_phys_port_name_get)
> +		return 0;
> +
>  	switch (attrs->flavour) {
>  	case DEVLINK_PORT_FLAVOUR_PHYSICAL:
>  		if (devlink_port->linecard)


--------------qHRYFPJKu0QDDAyov2ezIRIH--

--------------57JYZYutBkRxHhwQZ7bkghn0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaI1NmAUDAAAAAAAKCRBqll0+bw8o6Oa3
AP9m3tgCoyKrE0LGHa8Tdk3wRKNv6wHvv/2VxiJ/QvaWXAEAka6c4B1/0dxU9Dv4wWvhTrd1BNH9
uycnHofjQnFPbgA=
=sjB9
-----END PGP SIGNATURE-----

--------------57JYZYutBkRxHhwQZ7bkghn0--
