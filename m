Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E53E8CB437
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2024 21:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DBDB4071C;
	Tue, 21 May 2024 19:27:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r3BgP6_CK6oW; Tue, 21 May 2024 19:27:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2AF240703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716319641;
	bh=VaTA5zNGYBwvesk7Sc3Ob7Y7PceZjT+cZrVhC1WPPhI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0A13f+TfCDz3tPXiknewtJMe4LDIldZFfsF7JX0ba9An3ZgER8Nlk1SjUwhtwbBy0
	 LPBwD93+H3FZg+qg825tgxWpOvgz8NN+DWzbVPx79+EFMNy8HfLF2AZZVaLjJ2YqHV
	 of4Hk2VlQhGLgQUG5R81uKgEChebwDi/j/qIXUKRsX/rQG0BGEG25ElBiuoztkpnko
	 r3KfbwpcuRzO+9SAxM+V6j0Y30kLbna9vWHS3vzPaNAhNQZCj1u3R7rs1anf7tK/+P
	 XH4DTqFnbLuPRXQgGJueDjZ5HYc3UJL83t+O0wBYL9mWEIxWBGqifH8HyzUGjkvjOd
	 xB6PD4ypQ2Adg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2AF240703;
	Tue, 21 May 2024 19:27:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC0DF1BF592
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 19:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B42BC82060
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 19:27:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CKS8RCFh6q76 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2024 19:27:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2AA78204F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2AA78204F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2AA78204F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 19:27:16 +0000 (UTC)
X-CSE-ConnectionGUID: fqjW/lECQLOVTLKUym/M3Q==
X-CSE-MsgGUID: TK6/GSThT9q5QS1ketfv0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="11636169"
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="11636169"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 12:27:16 -0700
X-CSE-ConnectionGUID: KxjoQGLwRyKZzmSYjQViFg==
X-CSE-MsgGUID: 126d9wcCRQWfC/cWMsL6fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="64262240"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 May 2024 12:27:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 12:27:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 12:27:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 21 May 2024 12:27:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 21 May 2024 12:27:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TgoeASLhFKUW9OtL8Pxv7KeTR57p4OOxu1g4ZL0r7x3BArZrfOZ49nDT9LdGcJY5VgjPJNDpXAMyaon+Lncw34hB8TTNXAk0jtIRgIyVtJOXHEl5ZLJyxne7A9leD83zrpdt1a8ZlWZG3/mhWFEVVmnp5YT+UeqNjE1xPVq41+JBxLUR0UopS5QG9EqU/mGTXHTSWh52DOKEjbjXpuA2kXHZOoG3aK4VHGDQw2BMzqgNKmo4ilOAQDy0+HBilp325wR3G2d8Vm5gLHgiPb/i4RZy8Fi+5gTr/LNyHpe6qapruV9pmwzan8EsDLvTLZJJ7PblFWwebmxBIrYiuVvFJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VaTA5zNGYBwvesk7Sc3Ob7Y7PceZjT+cZrVhC1WPPhI=;
 b=J5HSjYkCbVRuH4B/X/80rNzZ2Yz3Fk8JCUyHJYAA/lfzHZSr1GFCu8UlarKRmTGj3e5fY9LgyUqKCQdbfkvUzP7EgmDhbZ+CCby3/0Oo/0MSMytxh0LIZrIziyYVICR+JBxMhdCUooGLHtuxvf5LyIiWFQhKAJK2vvZp5cwkKoorUg1T34X6fZ56CCwMPj1jOuQKQnYgygLejGsD4tkfvUxTt8Qes4R31fxZyW9cVlDKp/h5YWWBcrqW++EeU7fVwxAJcufX0Yz4ZzGW5KhsDCk2uCWeKwU7edjDQLTtPErM4Hrzb8Gd2R5MM6OV/pHYpDs8Lb96SdcJGvzzUXBNDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB8356.namprd11.prod.outlook.com (2603:10b6:208:486::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.33; Tue, 21 May
 2024 19:27:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 19:27:13 +0000
Message-ID: <edc0bfa4-7aa5-46b6-929a-7bfe8009b0a7@intel.com>
Date: Tue, 21 May 2024 12:27:11 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240520-iwl-net-2024-05-16-fix-css-hdr-len-v1-1-7607a0752b07@intel.com>
 <04eb421b-fe87-494c-927c-0436bdc68c75@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <04eb421b-fe87-494c-927c-0436bdc68c75@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0115.namprd03.prod.outlook.com
 (2603:10b6:303:b7::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA0PR11MB8356:EE_
X-MS-Office365-Filtering-Correlation-Id: b512979e-40c5-47f0-e0c5-08dc79cc0476
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qy9nOUNKTm1kanZ2SUxXSjV0TGVtK2tJSEhKZW5YSmZVUVlGcGhWMlpVQzc0?=
 =?utf-8?B?RmpNRWFYZmlBN3hWdWE5MlRQQUpJL2FlRDVpZWdrN3ExVXRzbEVjcjhPQzhN?=
 =?utf-8?B?ZzRaN2NqQ05JMVo3SVMrcTl1KzFlR1BUOUd1dGlyTDhpdnEzbDlpdEMzaHR3?=
 =?utf-8?B?dEZYT2tNUS9MRGZyWWJPYjBhSUdRY1JhWFdhSXcwdDlxL2prTDJHZUp3Wk15?=
 =?utf-8?B?TGNQcDdGN2dtVGtweFVNY3pYOVdYdm53WjRKRXpORnZ1Z2tiRFp0SDNqaitH?=
 =?utf-8?B?Vllsb2tDRGd6R1htc0J6emJBZ2pjeFlNOG5XdmpUamYxOGpkazAvZlYxZHhj?=
 =?utf-8?B?c2dUcGMwT3JGOW9ZTGM4UEVrbnFZcnN5U3cxL3dwRHQvZ1pnWkVSeEVjOFQy?=
 =?utf-8?B?VnFCM1JLSnlNK0ozTnhwMG5OTmZBazRSR0F6MWRRald3MkhhQUQwMFUxc0l4?=
 =?utf-8?B?ZUNQdFRyTWRDbDFoTHJzS1NLeDE4cEh2QlZqSmFyZmZoajg0WHM2WjNmY1oy?=
 =?utf-8?B?YU5UcFhWZzRtQlNRRG9xdUVQV1poQmZTTEVkUHdEcEVFUVdXZ0Q5cUJTV25h?=
 =?utf-8?B?clIwRktoQ2VyQUwyUmlLang2UGE4ZmJkcHQwcHQwZUhVMDgzcGFFMUtYdmNY?=
 =?utf-8?B?U2UrbmtSQmdnVTQrOGVPZTlVUE93QkQ4ZDBsMktZM0M0WmJaeExERUtmVDZ4?=
 =?utf-8?B?N1lRV2d6bXplSkx3YUZaZmR5UkRvWG55NzI0cURxUXV5T1BvaDNhMDFnNTd6?=
 =?utf-8?B?MWVWU0JGZjl2ZVd0SXJ6SzlOTzRoM0pFdHdZRk9rWjUzL0kxdENiVDdZcWF3?=
 =?utf-8?B?RFdWUnBOREx1UEdycUJFaW42SzRCamo1VUlEZnFTNWtlUkJzdGhvSXlYM0I1?=
 =?utf-8?B?RkVvNWJSSVZpNytuelN0bjEzQlpORW0rV1FaTHNhWWxWNEcvRHZBQUJDRUky?=
 =?utf-8?B?NnpOTVNkMUxwYVQ3aHAzWUxSb0pBRXl5Z2haQWhTTEdNNlV0UEFQaHVKc2NV?=
 =?utf-8?B?RGNZU3ZNbEhrVW9GOXZob3hqT3ZrRlRvN3JCdDZXZnJLR1cramc5T2ZlUHV4?=
 =?utf-8?B?dUZNdHlLWlVQQjNNLzZHdkt2RDJzbzNvbEtCbGhaenB0Q1NSNEc0azIvZkZ2?=
 =?utf-8?B?aEJxYTRBdU1iM3RJWTZWdHowMHIvc0xrMURwWnFYV2poRjhSdVF2YkdsWCtY?=
 =?utf-8?B?NVVvNzBzb2FMa0xUNzFuSUdEbWNwUThiWS9CUlZPNCtCZFlrMUtINGJ0Um4x?=
 =?utf-8?B?UVNMMHc5TExCdEVOdTZmcWJYb1UzOUgzWEp3SlNxZkNKSGhmdGxURU1qSkg4?=
 =?utf-8?B?aG9nQUcvMnBtbTZ6bDN6UGVQWkE0a2VQcTBMZ0lYTysvQVJqYWtlWldrUHIx?=
 =?utf-8?B?VFllelllczdBWE1oc1JPamZLZnBmUE5uaHhDMnVRNkY4ZDhWeTFoOXNxZU9X?=
 =?utf-8?B?cnM5ekFnQlRmVWNFQjU4aEg0dldHUmdRRzFSa0xwN1BEcUlMZUlzT0RFZkhY?=
 =?utf-8?B?SWVkUjBZKzJHRFFlWmxPV2pNUDdLeXE3UG5vckJQRDlQWXlSSFpYY0hwMmVL?=
 =?utf-8?B?TDJDNzUyTk1ZQ2lLRjlDZXorOTlNNmxUK0QxVmhEUC95clArUVkyVldDa2NK?=
 =?utf-8?B?U01FcXVvRU9Cd1pGZGUyQmwvKy9RczZJUVZHRzB0K3U3UHhicGJQSmM1cHgx?=
 =?utf-8?B?aXROdi9jZi9Ldzc2S042UDc1TTdOdmpyam05bjNxMzhZN253KzJ0OHh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmxzVG9FWFVoVy9wbnFaY29ZT0kxUThDZjNXcUp5NjNuc2d0eWJzUWxaRkZi?=
 =?utf-8?B?bDRJcVlIT1pmMlF0WFk3eWRoMmdTUjZpZkRTOUovTTNORDhteUdWZlNqYjhl?=
 =?utf-8?B?aU5qMlpMZ3ZyZTVPckxndk9PWjQyNE84VVVUWDRNRitvOE9CNldKWkRMT05s?=
 =?utf-8?B?dEx3bkVjcWZVbVBOczNkYUtkY2F6L3Vvd3pqS1U1RGcwNVFWRFZkQ0ZWL1J2?=
 =?utf-8?B?T1lkcDI2UzRmK0p2VGRFeC9rT3d2REdMZ2x0OFlRQm9jS2xxdmFMdURQMEI0?=
 =?utf-8?B?c2VIei9RYTlEd2QvMmdpaFZXM3hIOEpJbUpOTlJ1YUI4Vm9yVjRLLzA2ZDFx?=
 =?utf-8?B?dXUwYzFVamM5WktBem1saUo2NHRSNkFYbWdZN2VPTG1FNitQaU1aL3RyWGIr?=
 =?utf-8?B?b0ZYMkx0cEd0djN1dmpGN3FpaXBHSDlsWUhBTE84RmM0czVWOUFmdit1M2w4?=
 =?utf-8?B?L1hFTDdxMWRQblQwMXhCMkd3YU9FelZIMGp5OVFtRENOWnYxREd0Tmo4alNN?=
 =?utf-8?B?eUFxMWZTNm02OFlZcDF3NUJHY2JsUk02NFN6akJodUZlZ3dQRzlxOGN3Sjdm?=
 =?utf-8?B?MGQvU1VLOWtOcGxZM3pvZCs2MUZJS2hUYzNCcGY0L1RtbDdpZWxlZDdjaDc3?=
 =?utf-8?B?RVhUajdHMHYwenE5Y1JYQmRuN0V0R0U0RS9LUE9CcmJEeWhNOFFodFZsVS9z?=
 =?utf-8?B?M0xBUXp2OVRYN0lNb29UWWN5R2lXVXJGV1lNdHYzWnNNVCtINWtMcHZJNGdP?=
 =?utf-8?B?WVByZll1ZllhYnZqQnd6eHl2SnRNeEhydTYybW45cW9SbWdPQTV1Rkp5c2pY?=
 =?utf-8?B?WHRlcTBhS1hxS0NVb2lhSG53V2FoeWo0TGRQMmNCVjNFc2loNGRUVFBwNEJK?=
 =?utf-8?B?R2dueWk1VEpQcFAvTEFoWkRGN0REV3RFNzY5NzBiT0VlaXpGRW4zYU9ZL3BY?=
 =?utf-8?B?SGpIUk52dUE5a2U5enpaQmZ0WHRNeWplTVdhQWNyVVg0cWVNN3pPWklGMHN2?=
 =?utf-8?B?UWhKV0s3VEZzRXVFNEZaUER4UWJuNFJIWjFFek5NU0J5ajdrVXZiQ2pJZ1VT?=
 =?utf-8?B?MG52S2xVeEtMekxvU3Awc3ZwVmRRYTM0S0tVWHBhZWlxUG51U1cvRmdTR0VO?=
 =?utf-8?B?VUp6YmtOVkQyK04xSlc1SWVZQm0yZzJUZUtYRk5IaWVLTVE0REpTQVc0US9j?=
 =?utf-8?B?cHpvbGhKNlU2ZHRhNTYwUVBVVHVVa3dVK2s1NUpuMXdvMnRWcnYyMVpYVC84?=
 =?utf-8?B?cVB0SWdmcnB2alV5d010ODZqdEQyc2o4d29veUFOYi9XQ0w2UC9aSXIxaFNx?=
 =?utf-8?B?S1NlYXJuZ29qY1JXL3F3dFd6QTFyTXZBQXYzK2prSTd3aldZWG0remhLOTJQ?=
 =?utf-8?B?VXhScGRxS1cvMHdXampYNE0yc0hLeUFGY0x3R3NPSkUrQ3hpaEtQcmtPQXFv?=
 =?utf-8?B?RmRtWk95TkZwSTVBQ1RoMGlPd0NOQlMvdWZpRy8va3hmQlBkSVV6ODc1RHFz?=
 =?utf-8?B?VjdNNm5Va2JpN1picEhKRmFlaER5ZGpXdGcvU2Y2VU1pZEp0bk5najdWWWlI?=
 =?utf-8?B?OGpKVlRqZ1k0L3F4UzlBUDZVQytYQ3JvdytWYmJMT2Vob1BuM3hPcGJPY3k1?=
 =?utf-8?B?VlRkREprUU9PeXBYRUtrRTY3QlV4Q0tZcTIrQWtyVXF5M3UwTlRwKzlyRzNJ?=
 =?utf-8?B?emVFU0VYMWh4T2NRVDhpOHpuSWtFWWVvM1NtcXdrQkdtM3dmNW5nVDR6d0NH?=
 =?utf-8?B?UkhXeEpmdVZEK041UmtBdjVaWGNSbno0a1ZRRVdvd01FZUlTeGIvdzVwUnY1?=
 =?utf-8?B?VklEb0tiWWlMVzJKRVBFRjI0RVBiNVN2bHhIaHZ2c3ZFTjdxNGVvNXdvaHNa?=
 =?utf-8?B?emFWNWNsWmFiWGRoSDZKaHgyb29DanZCOGxnQ1dSQ09KcHZITUVsUjNKbWZ4?=
 =?utf-8?B?YWhjcDIralZacmpyVEU1eCtsYmYxaGJ6RTk4QWF6b1loSjFoZ3hPbGxqM0l4?=
 =?utf-8?B?bjh3ZXU5bWpEaDZqTjJBR285ZTE2RCtLLy9IOHN6T0MxZjRYMjVLZlJuZzhs?=
 =?utf-8?B?NVlLUGp3TU5uSkFNdTR2bHFMMmtWMVdrU1g0K0ZzVXhrZ1VXS2pwNnpWNjFU?=
 =?utf-8?B?WnVhU1dNdlVKVzEzN21zdkNiYzZ1S3VIOTBPelhHa3JxbzhybUhXZzZJdjh4?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b512979e-40c5-47f0-e0c5-08dc79cc0476
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 19:27:13.5757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z58Mzz3wRpYNvjCdvICl1kKbiV+Tc0MIyPXYxwN+eNQgwlpAqGmLuGyuG70etBul3NCWcrFVEySRIZwFRZACsecxaWefZTLwaFpqBUqWZKw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716319637; x=1747855637;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tj/qSkQhWySBjimtC2RCpHGH05XwB7p3/7NxW6peMjc=;
 b=gYd6W+1xJdH3umdu4J/r466leqfmjyUgU6wIT1qFTuKopnuXNFjmVCcw
 e+nte50Rz6+P8oT7d/WcQIE8fdR/YUlE6KEB8kjUkOJ0xVw/SG5CpXdF4
 InSjApTPcmAYOUmJNEoaVuwseaZ8gOd41ELtodn84MNb+E9re+dT4eci4
 uTnIr0MsSgJ7mtxaQoHBE7JnGJDCZ6RlFZPoOuwSV0aFggerZGzTqxdCU
 SP30w6Vmn/rIHaCCASVJrd4BeVNMX/Os5gB7bQSgIPWM2yfb1aYAqq3iA
 eX4qhtpmGJ/9HIcjaoGV8fK4u0RoVU4+GDzOQaoF/XrRyc4Qmso7RjHB8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gYd6W+1x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix reads from NVM
 Shadow RAM on E830 and E825-C devices
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/20/2024 10:55 PM, Paul Menzel wrote:
> Dear Jacob, dear Paul,
> 
> 
> Thank you for the patch.
> 
> Am 20.05.24 um 23:39 schrieb Jacob Keller:
>> The ice driver reads data from the Shadow RAM portion of the NVM during
>> initialization, including data used to identify the NVM image and device,
>> such as the ETRACK ID used to populate devlink dev info fw.bundle.
>>
>> Currently it is using a fixed offset defined by ICE_CSS_HEADER_LENGTH to
>> compute the appropriate offset. This worked fine for E810 and E822 devices
>> which both have CSS header length of 330 words.
>>
>> Other devices, including both E825-C and E830 devices have different sizes
>> for their CSS header. The use of a hard coded value results in the driver
>> reading from the wrong block in the NVM when attempting to access the
>> Shadow RAM copy. This results in the driver reporting the fw.bundle as 0x0
>> in both the devlink dev info and ethtool -i output.
>>
>> The first E830 support was introduced by commit ba20ecb1d1bb ("ice: Hook up
>> 4 E830 devices by adding their IDs") and the first E825-C support was
>> introducted by commit f64e18944233 ("ice: introduce new E825C devices
> 
> introduced
> 
>> family")
>>
>> The NVM actually contains the CSS header length embedded in it. Remove the
>> hard coded value and replace it with logic to read the length from the NVM
>> directly. This is more resilient against all existing and future hardware,
>> vs looking up the expected values from a table. It ensures the driver will
>> read from the appropriate place when determining the ETRACK ID value used
>> for populating the fw.bundle_id and for reporting in ethtool -i.
>>
>> The CSS header length for both the active and inactive flash bank is stored
>> in the ice_bank_info structure to avoid unnecessary duplicate work when
>> accessing multiple words of the Shadow RAM. Both banks are read in the
>> unlikely event that the header length is different for the NVM in the
>> inactive bank, rather than being different only by the overall device
>> family.
>>
>> Fixes: ba20ecb1d1bb ("ice: Hook up 4 E830 devices by adding their IDs")
>> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_nvm.c  | 88 ++++++++++++++++++++++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_type.h | 14 +++--
>>   2 files changed, 93 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> index 84eab92dc03c..5968011e8c7e 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> @@ -374,11 +374,25 @@ ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u1
>>    *
>>    * Read the specified word from the copy of the Shadow RAM found in the
>>    * specified NVM module.
>> + *
>> + * Note that the Shadow RAM copy is always located after the CSS header, and
>> + * is aligned to 64-byte (32-word) offsets.
>>    */
>>   static int
>>   ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
>>   {
>> -	return ice_read_nvm_module(hw, bank, ICE_NVM_SR_COPY_WORD_OFFSET + offset, data);
>> +	u32 sr_copy;
>> +
>> +	switch (bank) {
>> +	case ICE_ACTIVE_FLASH_BANK:
>> +		sr_copy = roundup(hw->flash.banks.active_css_hdr_len, 32);
>> +		break;
>> +	case ICE_INACTIVE_FLASH_BANK:
>> +		sr_copy = roundup(hw->flash.banks.inactive_css_hdr_len, 32);
>> +		break;
>> +	}
>> +
>> +	return ice_read_nvm_module(hw, bank, sr_copy + offset, data);
>>   }
>>   
>>   /**
>> @@ -1009,6 +1023,72 @@ static int ice_determine_active_flash_banks(struct ice_hw *hw)
>>   	return 0;
>>   }
>>   
>> +/**
>> + * ice_get_nvm_css_hdr_len - Read the CSS header length from the NVM CSS header
>> + * @hw: pointer to the HW struct
>> + * @bank: whether to read from the active or inactive flash bank
>> + * @hdr_len: storage for header length in words
>> + *
>> + * Read the CSS header length from the NVM CSS header and add the Authentication
>> + * header size, and then convert to words.
>> + *
>> + * Return: zero on success, or a negative error code on failure.
>> + */
>> +static int
>> +ice_get_nvm_css_hdr_len(struct ice_hw *hw, enum ice_bank_select bank,
>> +			u32 *hdr_len)
>> +{
>> +	u16 hdr_len_l, hdr_len_h;
>> +	u32 hdr_len_dword;
>> +	int status;
>> +
>> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_L,
>> +				     &hdr_len_l);
>> +	if (status)
>> +		return status;
>> +
>> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_H,
>> +				     &hdr_len_h);
>> +	if (status)
>> +		return status;
>> +
>> +	/* CSS header length is in DWORD, so convert to words and add
>> +	 * authentication header size
>> +	 */
>> +	hdr_len_dword = hdr_len_h << 16 | hdr_len_l;
>> +	*hdr_len = (hdr_len_dword * 2) + ICE_NVM_AUTH_HEADER_LEN;
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * ice_determine_css_hdr_len - Discover CSS header length for the device
>> + * @hw: pointer to the HW struct
>> + *
>> + * Determine the size of the CSS header at the start of the NVM module. This
>> + * is useful for locating the Shadow RAM copy in the NVM, as the Shadow RAM is
>> + * always located just after the CSS header.
>> + *
>> + * Return: zero on success, or a negative error code on failure.
>> + */
>> +static int ice_determine_css_hdr_len(struct ice_hw *hw)
>> +{
>> +	struct ice_bank_info *banks = &hw->flash.banks;
>> +	int status;
>> +
>> +	status = ice_get_nvm_css_hdr_len(hw, ICE_ACTIVE_FLASH_BANK,
>> +					 &banks->active_css_hdr_len);
>> +	if (status)
>> +		return status;
>> +
>> +	status = ice_get_nvm_css_hdr_len(hw, ICE_INACTIVE_FLASH_BANK,
>> +					 &banks->inactive_css_hdr_len);
>> +	if (status)
>> +		return status;
>> +
>> +	return 0;
>> +}
>> +
>>   /**
>>    * ice_init_nvm - initializes NVM setting
>>    * @hw: pointer to the HW struct
>> @@ -1055,6 +1135,12 @@ int ice_init_nvm(struct ice_hw *hw)
>>   		return status;
>>   	}
>>   
>> +	status = ice_determine_css_hdr_len(hw);
>> +	if (status) {
>> +		ice_debug(hw, ICE_DBG_NVM, "Failed to determine Shadow RAM copy offsets.\n");
> 
> As this is a new failure path, should the user be warned about this, if 
> it cannot be determined, and NVM possibly be broken?
> 
> 
> Kind regards,
> 
> Paul


Possibly. I'm also trying to avoid spamming the log with failure
messages which are more useful for developers who can enable them vs end
users who may not understand.
