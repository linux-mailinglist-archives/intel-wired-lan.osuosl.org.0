Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E78B42CC2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 00:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D3FA84A57;
	Wed,  3 Sep 2025 22:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7-JElIwuMa4u; Wed,  3 Sep 2025 22:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06D9584A55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756938349;
	bh=izdSm0p4pPWGwlSPvQGAK/8Ib0HwcVrDhkSaKbTj25E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yrDjhtPM4y/WZmv+tzkKsrp6rOdS1PIwLsJqL61A3pC+JQHAg4UGZ12bIi6nN3Wap
	 pWHB5s2G/ahheveEEHM+A8SPgJ+pnl+nx1y0AzTzaT8tSMGkDQGKMCixqTeHtmV0gm
	 t1KDQcIbgdyyCEguJRzaGoI6R4irSXB2hV9FMxzTUgsxZjZUhUphIB8xRUlFAg5nZ8
	 V+TcYDaPqJYubBsyPPFVzJnDuaTK4zzxVPScWwkzvsVv2+s9pFMZZyGoXqfazKvRu7
	 WQdpEl+5x2u3kcIkHkq/J7BAu+DpLdS4oDUED1HXt2wiy6DtBNcZFqf+1GdFG/RZMp
	 TmJt3G5A3S/JA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06D9584A55;
	Wed,  3 Sep 2025 22:25:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C20D111
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 22:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90F776F494
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 22:25:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0gg0FU8nituv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 22:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5AF8861AE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AF8861AE2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AF8861AE2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 22:25:45 +0000 (UTC)
X-CSE-ConnectionGUID: Iqw/m6uYSl+SrpkmgVvA8A==
X-CSE-MsgGUID: 5iqubgoKS3G3RWASc7V7QA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59183239"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="59183239"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 15:25:45 -0700
X-CSE-ConnectionGUID: 7HAeFH/3T+KifqLNQkEtZg==
X-CSE-MsgGUID: UBR8eTXUQbyryEeH7dQvXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; 
 d="asc'?scan'208";a="171008241"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 15:25:45 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 15:25:44 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 15:25:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 15:25:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KW3jZd99FYQ0KsVt6mXqHMCcQ96hE9W8Ea/qxDw5YDHECc+GI5RJ4qAWzBdPQKbrpCeqF7XwjK09qenNrZpT7ODBg6Lj4PcHpIxSO85wHhgbKSvu+bOX0GIQY1sBMZ7wYyMOotr6VbT694emaLH69sTuisWPq1E6+Z6OM53htKqOt0Xiw2678OlBnIorGixFLb9lRaFxHqGwtvnIBzv1YuIZqMjRlUOIyJKc1Lxh+7sEpjTfSedGuybUCbIraokyIvfE1ivBlZAZm+fYwKomKQ31tVNk0Bx0oFYYd850idsNJz0O6Y8milO3Ju7QFZw5J9craHhr9isO9XZFPXa3gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izdSm0p4pPWGwlSPvQGAK/8Ib0HwcVrDhkSaKbTj25E=;
 b=RDNn4DSmcoC1IuJ0T0MdSe3VECgyyY9qvjfTrDkt9GXB7ZHBuFP72yaphO1I6I8CYx+iTmTZY4wJcfyozpm3S18h1rIR6OR9n1GdDBS1IJ/bPzF3vroiJSq8FaIajC7RXGTXnRdv8oJpAQfyfOnoeFSTQaq0XiECChn3+0z5Br+5Pa5leh6PpSNZISKAOeVDdC24Qo3nmE2hK1AhNbBw14B1XGrTwdHy9xxcBRaHF7zl7o2ku065oF35ejks1i6OFT3E+r2Umj6YiNlhHnVw3gbuZlLgZsHrWX1qo+8V2i09IOXqWfUH6eb1xXt+sXjuMY51eWr2kE4fTzgUTm6XUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN2PR11MB4693.namprd11.prod.outlook.com (2603:10b6:208:261::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Wed, 3 Sep
 2025 22:25:41 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9073.026; Wed, 3 Sep 2025
 22:25:41 +0000
Message-ID: <efb80605-187f-4b80-8ba9-8065d1b9e9d0@intel.com>
Date: Wed, 3 Sep 2025 15:25:40 -0700
User-Agent: Mozilla Thunderbird
To: <mheib@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <przemyslawx.patynowski@intel.com>, <jiri@resnulli.us>,
 <netdev@vger.kernel.org>, <horms@kernel.org>,
 <aleksandr.loktionov@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
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
In-Reply-To: <20250903214305.57724-2-mheib@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------phyG7h3Xqekty0cIMWu3TO2z"
X-ClientProxiedBy: MW4PR03CA0043.namprd03.prod.outlook.com
 (2603:10b6:303:8e::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN2PR11MB4693:EE_
X-MS-Office365-Filtering-Correlation-Id: 4325ea74-3c41-4edc-8fdc-08ddeb38d11b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0QyYTR0cG9UVVJUTG56SWJuWE9qMHFmT0JUSzJvOVNrSFJVTDJLUyswWnVC?=
 =?utf-8?B?OW9tSzFjT2R5Z1lCZk9OU2lxRWgrUkFxTmQxd1ppU2tBUUlCMS8ranN0eGMv?=
 =?utf-8?B?dHJ4RVUrNHlXajMwdW5MSjlodjdKUStJcFRQV0ZGb3JmUDRNZXUyQ0FGSFc4?=
 =?utf-8?B?SEtMcDhyV2tpSGVldzlCTU5xTGV0Rk0xYkJBYVNaWGFIdnlJeEpWV3dKT3Za?=
 =?utf-8?B?ZDR1dTFQOXpmZUZ1czY1SERCTkNsTFIreElObis4Z1JEbWxWbEozZHNrdllE?=
 =?utf-8?B?cGR2VU1xVGloaEg0elRDeVlrZ1Y1ekd2ZG9JZUtZeTk0K3ZCeG5RTWYzL0Rt?=
 =?utf-8?B?TGVoOFpHdGltOGM4eHBPeWNUNW1NcXRHYmlsS3crSE40Q3RzS09ZTnExZm4w?=
 =?utf-8?B?UGhzaFd0TFpMTHZ4Q3hURll5a3VJR0RsdTJZVkt4OWNpN1RSSEJpemcwbUJh?=
 =?utf-8?B?MHN3N04zdm05TW9nS2MyRis1ZWZuNVp2RkxNT0ZUMjl4RmNPc0JtQjRaNmYr?=
 =?utf-8?B?Q3JxSlZOd1RLb0RJc01WSmd0MFkraHpzSktZMHNTMVVZejd3amhtVUFlUER2?=
 =?utf-8?B?bXRaMWFlUnRJS3NEUVpDd3c0U084cXFnM2UyWnRGRXZDVDRod0JGazBKSFlS?=
 =?utf-8?B?QzNob0ZHNWViNk1EUlRYdG5kbnI5cFJWdkdSdkVkbUJhOUh4V1NUQTIraXVW?=
 =?utf-8?B?WHZHUHQ3OTFXbFlwNWxTR2E3LzQxS3pRU0dwU0k0Smswbm1pa3J1ckFDWVFl?=
 =?utf-8?B?NHo5WnlXMThWMGRBeEw0Ykw5RGJ0RjdEdkZuMzI4UUJ4UVN0eHlTbUZTUE1B?=
 =?utf-8?B?SW5IRnVGcmhPUGtvYlhDWHNjRFRVOEtFS1c5eVVRaWN2U2VkeENod2tEQmNT?=
 =?utf-8?B?dUtTZTZmOWJCVkxydHdrT2ZvcUY5S3BuTmhORkF3SHlQOWQ5d2d4Q09FdXJS?=
 =?utf-8?B?dkc5ZEJKUWdET0dyZ0x6ejZVOEdHa3lsWW1JWS9DTGh0MDloa3N5Umt6WW5S?=
 =?utf-8?B?ZmwzSGh3SFZEMEp3RUFRc2lMUjliS1FiNGZTQmI2WTFOVUgwaEFoQURRN3lK?=
 =?utf-8?B?aXJCazZPMmFJU1V4cGFrVThtaEVOaGQrTGZXVWM3OXorVjl3c0hQV3JLWHFZ?=
 =?utf-8?B?dTZKOTM4WktZMEMvcmJoU3VybFRNaGhFT1dKaVFBcjZMMXpHZVBUQWZ0bWpE?=
 =?utf-8?B?eEhuWEd1VGMyaGhleWpSYVBER2xlSnF6S1pGeCttUjFJYWREVVhvQXRPdWoz?=
 =?utf-8?B?T3Q1bzcwQXA1OWRZQjFvUkxoSnhCYUZDQ0s1V1BTM3FMUGs0ZWlqNHp5RTVK?=
 =?utf-8?B?dG94TWN1YUpGV2dDVkxIUGlYNUFJd0V1QlRoR3F2MUpWRVB3NkQxcXBuTHNL?=
 =?utf-8?B?UDhveWNYc081eVJKbFhEeVZCYlNpeTVZQUh5YnlCZ3dHRDlLU1lzNFhmOHZq?=
 =?utf-8?B?ZTY0a2tYbUtab2d3ZURLcWx4RVdiWG8wUGcrMCtFdXU2ZHVadEZyZ0w3RU9W?=
 =?utf-8?B?eUppazZUQ3NlUFhuMkhQeU5SUVRGVm10cGJUN0dOajhHcURmSFo0cXNxZkpL?=
 =?utf-8?B?Zi8wdFJRY3E4cWpuTXpDZzJmc3lDRk40T1ZoL0VZbmsyZ1lHNTM4dDZkcHFL?=
 =?utf-8?B?aTZmZXNpd3lOUDhUcWYwQkVBci94ZEFFTFRXK3A5aTVuVEZPNlYyZDI5ZGdr?=
 =?utf-8?B?aVR4QTJQY01uWDBidE5CT1poelZyd2dmK2gzLzJ3V05jTHl5NVkxZE9rYlpS?=
 =?utf-8?B?VHNyODVjQm1Hb2k4SVlNVHpYcFp1OWZXNDNzbi9PNEQ2NnJtZHBmV1FLNXps?=
 =?utf-8?B?SUZ3V3RPNGpGN0FNempKUHRJRzMrM3pLVGsyMW5yYVcvQnlyRC82aEg5U1Uz?=
 =?utf-8?B?M2FTMXlSOGNmaEdwa25XM3hYbUE1dWhYa2VGcEI3WHhIVlkzbG5qVzY4ZlZ3?=
 =?utf-8?Q?0JVGyqtEv7w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUJsWUxVN0xRcWYxd2k4V09FRXBRbXg5aTFNTWh5TjY4S1BaQ3ZYMlJSelBE?=
 =?utf-8?B?dDBjUEFMV2paTWQydDdiWlArMmpUdkJhR3VFbXIrb0p6bmFVSFBRWHBGNXBT?=
 =?utf-8?B?MUN5MlFTZ3BGUUpvbCtQemJFdnBUWFQ1YWpkZUpPTis1UjNaSGdBV0s0YXl4?=
 =?utf-8?B?ekkycEx0UVhzTVVuL0thUlZrQ2JxK3dpdlkxcWh5QkNMakpKVmw2RnAwcTFU?=
 =?utf-8?B?TTRGdzJvZXFiQ0MvNUVyd1doWlQ3Mk1DTCttMHBUdTF6Kyt3a3dpbzR4WDhJ?=
 =?utf-8?B?eVZrOC9SaktLRkVZaEJCUS9jSmE4eEU0a2lVNERYaVpoOENiRWFXK1ZKUnFw?=
 =?utf-8?B?dEpsUmJ5YWZyVkJtRnJPYmdtY0x3Wnlac2dkUCtHTWlDUGNaUysxTTlBaG9D?=
 =?utf-8?B?UTVMMGZDcWZ6ZzRHanBlOW1YSk1QZy9NeEk0UHJPNnNrWTJpdzd5ODQ2VE5w?=
 =?utf-8?B?a0JFNHYxY3JHNDZubW5IZjFhWkZQNE15R2t0R2gwOGVMOVJDTnl6OGFuQmNx?=
 =?utf-8?B?UUVwQ0dKRWc5RFoxVkwrTmt1cWN4NWVZamRDS3lqNFo2ajQ5enErRGF3dHdj?=
 =?utf-8?B?czkzUE5UQ1JicjV4K1JkUW8wRzdPTVNvU3lQT2VveTIrQ0pvZ1gxY0UrTG16?=
 =?utf-8?B?Q2FBdG1qcU1CbEJTTVVncFdheGtOekcxWmVPYnFPaWJyMEVQWDQ3ZUVKSGxB?=
 =?utf-8?B?b1cvT3RuUThEbEVHaDFpdm9xMjNKV3lQSHpORU1Xb013Y2RwRzQ1RG11RURR?=
 =?utf-8?B?akN4N1ZUVE9PeVRBcXVOUXlnNmRzWG9GaUEzdjNoZ0FZNUJwRXJhcGM2SVFS?=
 =?utf-8?B?cjhzc1hqcldQdWZuZ2hILy92MDVrZWFvV0hHN25ab1NUcURuaGJEbVVWeVNC?=
 =?utf-8?B?QnZ6alVHVUt4NE1HR0F6aTJ0aG9LRS9NY01abGtFNEpTWXoyMjBaOVFMTG4y?=
 =?utf-8?B?a3l1SU54TWpmSnQ3UWUzT1VxSWtLWmpHT1M4MXVvK2FzeHNUczhiTi9mTVl6?=
 =?utf-8?B?OVZZR1ZLOW00UElPM1F1TFpyN2pTaThCYnFpNG81REJjZXFSZHVzUURaUEZM?=
 =?utf-8?B?T1VnaE5VcGkxc1ZkL2dvbENFdDRsNHB3NjVXM1ZqN21BWGZOL0tvcUJVbkFi?=
 =?utf-8?B?a2svWThSbU5PYTl2UE92eWFwTFd6OEdNZHNoMUNUL3BXOWZob2tNRFpGbk0x?=
 =?utf-8?B?dlkwbmZUVnpueEZEUjF1WTNRM1JyOHZHM0lDbUpDeVBzVEZpRTYwelBkUlFX?=
 =?utf-8?B?Wm51UU5ZczFiM3UyVjd0MjZmR1cwN205OFRCaUh4NGQxeHkzRWVOY0s5K0Ri?=
 =?utf-8?B?Tzk1eWFsU29pTGhyeHlvS1hZWUY0dVJOYzQ3djFFUzliZUR5ZzBOZ3hpUDlP?=
 =?utf-8?B?OGpJanU4RFdOOUh1Nmo5dERoN2NrN3Z1cUkydzdDcDhoelh6N0UvUG5sNWN6?=
 =?utf-8?B?eDVITW5meHBhS0o1ZXprbHRWSmVQSTB6Y0VTLzhmR3NweGxFVzd3U0dOWDZB?=
 =?utf-8?B?emZZRnI1UGw3WmFnWTYyUzZxVEpicXJhRjMvb2hlTXNKSktoZXAvVEY4ZmY0?=
 =?utf-8?B?c3UyOFllbmRrblJGZHdRb1pBQXlCaXhQZEJHTDRVMm8wcGpZWGpkRXVzenhM?=
 =?utf-8?B?aWJybklSYTAySC9uK3Y5SlRBSm1qUDI4M01kRUxYenBwb3plM3lYWXROTEVQ?=
 =?utf-8?B?Q3plVmJ3bjhOSzJXNmtnTGRuN1FOTDBhTzdKVk9mblIzM2liSXk0Zm5JV2tU?=
 =?utf-8?B?QkVnOG5tUkZjNmRJMllRTUhCZHhzRkkwektQeW1icmRCOWd2aTBXRk1wN0hx?=
 =?utf-8?B?RHJwejRxYUo1Nmo1bERlcE92S0d3elcwcHVzVFRkeUJtZityS3ZWanU4bVhV?=
 =?utf-8?B?SzJqSWJTaU9QRHV3OHljQUg2WmdranlDNTErdDRYU1RYcXoxNUVuWXlkWFEr?=
 =?utf-8?B?WkpNUWJyd3dNeEJBVTcvT3hGUlhhcjNaMS9IZXkzREFodm9KZUovVFFKYWoz?=
 =?utf-8?B?WHo1end6TUk3SEZxVFVoOFZFdFhxanpxV2kxSCtLZmpOREZRdTViU3dnM3RE?=
 =?utf-8?B?WXhHOEZtVkZzck9KV0JKVW13bDhybDUrZ1puWFpsdU1sOWZ5akJhaVF1QlJP?=
 =?utf-8?B?TzJWWEprTzdvaXFvTWJEUlFITWE4RWJlbWtLQVhVVlFrMTd1MStadHZ0ZHZt?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4325ea74-3c41-4edc-8fdc-08ddeb38d11b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2025 22:25:41.6863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zj/tUIc0jt5Bv7JW+UMV2HKbbSP4W1aObtZoyJe3OggAzjAmbEfeQtHxrSIuTUd20Po2xAWLPLeSQyoaMbo4MjdVsw7I28stI+kWu5bwKdQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4693
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756938346; x=1788474346;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=Rr6rDaEhWxfzoZmta7pQJe+vSM5UGc60Fy2CBycOzzQ=;
 b=l4AkuQNop3LxVaOhUqNZfiWsITiYD6e3C86I39PDc/nzZa0ag4E+RybB
 H0NggvrsoSCDSr/uwKcXyvV9lBB0EjngGdo+wvoR8Il9AGx6+OAe9mwU7
 rvA/jqs1ctpxcHhgV2NT5fQWul2j7WLFZSdS/nvcqMYCIll//1MIT+2vs
 i8lxreXClZHp5o4F3/Hwu5zUZg0IqB3XHNN4LlhvCx7Tb/WUs6iKpnq5Y
 DwVGU++rZRbJZjmtYwCBPuA7EOgb9C11qMkjGMpffu2EDNklkR+Q5IKg/
 OXYGxyRoh4F1y1Y1kElLa/jpNR0k8cNz/DCJUvFhpdNDZmnv7DYI1/gtg
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l4AkuQNo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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

--------------phyG7h3Xqekty0cIMWu3TO2z
Content-Type: multipart/mixed; boundary="------------zKBMLRghgiy0byZsxwuoO2n8";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: mheib@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, horms@kernel.org, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <efb80605-187f-4b80-8ba9-8065d1b9e9d0@intel.com>
Subject: Re: [PATCH net-next,v3,2/2] i40e: support generic devlink param
 "max_mac_per_vf"
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
In-Reply-To: <20250903214305.57724-2-mheib@redhat.com>

--------------zKBMLRghgiy0byZsxwuoO2n8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/3/2025 2:43 PM, mheib@redhat.com wrote:
> From: Mohammad Heib <mheib@redhat.com>
>=20
> Currently the i40e driver enforces its own internally calculated per-VF=
 MAC
> filter limit, derived from the number of allocated VFs and available
> hardware resources. This limit is not configurable by the administrator=
,
> which makes it difficult to control how many MAC addresses each VF may
> use.
>=20
> This patch adds support for the new generic devlink runtime parameter
> "max_mac_per_vf" which provides administrators with a way to cap the
> number of MAC addresses a VF can use:
>=20
> - When the parameter is set to 0 (default), the driver continues to use=

>   its internally calculated limit.
>=20
> - When set to a non-zero value, the driver applies this value as a stri=
ct
>   cap for VFs, overriding the internal calculation.
>=20
> Important notes:
>=20
> - The configured value is a theoretical maximum. Hardware limits may
>   still prevent additional MAC addresses from being added, even if the
>   parameter allows it.
>=20
> - Since MAC filters are a shared hardware resource across all VFs,
>   setting a high value may cause resource contention and starve other
>   VFs.
>=20
> - This change gives administrators predictable and flexible control ove=
r
>   VF resource allocation, while still respecting hardware limitations.
>=20
> - Previous discussion about this change:
>   https://lore.kernel.org/netdev/20250805134042.2604897-2-dhill@redhat.=
com
>   https://lore.kernel.org/netdev/20250823094952.182181-1-mheib@redhat.c=
om
>=20
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> ---

This version looks good to me. With or without minor nits relating to
rate limiting and adding mac_add_max to the untrusted message:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drive=
rs/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 081a4526a2f0..6e154a8aa474 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2935,33 +2935,48 @@ static inline int i40e_check_vf_permission(stru=
ct i40e_vf *vf,
>  		if (!f)
>  			++mac_add_cnt;
>  	}
> -
> -	/* If this VF is not privileged, then we can't add more than a limite=
d
> -	 * number of addresses.
> +	/* Determine the maximum number of MAC addresses this VF may use.
> +	 *
> +	 * - For untrusted VFs: use a fixed small limit.
> +	 *
> +	 * - For trusted VFs: limit is calculated by dividing total MAC
> +	 *  filter pool across all VFs/ports.
>  	 *
> -	 * If this VF is trusted, it can use more resources than untrusted.
> -	 * However to ensure that every trusted VF has appropriate number of
> -	 * resources, divide whole pool of resources per port and then across=

> -	 * all VFs.
> +	 * - User can override this by devlink param "max_mac_per_vf".
> +	 *   If set its value is used as a strict cap for both trusted and
> +	 *   untrusted VFs.
> +	 *   Note:
> +	 *    even when overridden, this is a theoretical maximum; hardware
> +	 *    may reject additional MACs if the absolute HW limit is reached.=

>  	 */

Good. I think this is better and allows users to also increase limit for
untrusted VFs without requiring them to become fully "trusted" with the
all-or-nothing approach. Its more flexible in that regard, and avoids
the confusion of the parameter not working because a VF is untrusted.

>  	if (!vf_trusted)
>  		mac_add_max =3D I40E_VC_MAX_MAC_ADDR_PER_VF;
>  	else
>  		mac_add_max =3D I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs=
, hw->num_ports);
> =20
> +	if (pf->max_mac_per_vf > 0)
> +		mac_add_max =3D pf->max_mac_per_vf;
> +

Nice, a clean way to edit the maximum without needing too much special
casing.

>  	/* VF can replace all its filters in one step, in this case mac_add_m=
ax
>  	 * will be added as active and another mac_add_max will be in
>  	 * a to-be-removed state. Account for that.
>  	 */
>  	if ((i40e_count_active_filters(vsi) + mac_add_cnt) > mac_add_max ||
>  	    (i40e_count_all_filters(vsi) + mac_add_cnt) > 2 * mac_add_max) {
> +		if (pf->max_mac_per_vf =3D=3D mac_add_max && mac_add_max > 0) {
> +			dev_err(&pf->pdev->dev,
> +				"Cannot add more MAC addresses: VF reached its maximum allowed lim=
it (%d)\n",
> +				mac_add_max);
> +				return -EPERM;
> +		}

Good, having the specific error message will aid system administrators
in debugging.

One thought I had, which isn't a knock on your code as we did the same
before.. should these be rate limited to prevent VF spamming MAC filter
adds clogging up the dmesg buffer?

Given that we didn't do it before, I think its reasonable to not hold
this patch up for such a cleanup.

>  		if (!vf_trusted) {
>  			dev_err(&pf->pdev->dev,
>  				"Cannot add more MAC addresses, VF is not trusted, switch the VF t=
o trusted to add more functionality\n");
>  			return -EPERM;
>  		} else {

We didn't rate limit it before. I am not sure how fast the VF can
actually send messages, so I'm not sure if that change would be required.=


You could optionally also report the mac_add_max for the untrusted
message as well, but I think its fine to leave as-is in that case as well=
=2E

>  			dev_err(&pf->pdev->dev,
> -				"Cannot add more MAC addresses, trusted VF exhausted it's resource=
s\n");
> +				"Cannot add more MAC addresses: trusted VF reached its maximum all=
owed limit (%d)\n",
> +				mac_add_max);
>  			return -EPERM;
>  		}
>  	}


--------------zKBMLRghgiy0byZsxwuoO2n8--

--------------phyG7h3Xqekty0cIMWu3TO2z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLjAZAUDAAAAAAAKCRBqll0+bw8o6Odn
AQDVDvEZmDOJoPg9qQELQOwMMPXsnWJErNisfDTooQJcFQEA4KlFoiwF/exSjBatFjUNFdX/G3se
PbqT6NnUK+EuDAs=
=wy2C
-----END PGP SIGNATURE-----

--------------phyG7h3Xqekty0cIMWu3TO2z--
