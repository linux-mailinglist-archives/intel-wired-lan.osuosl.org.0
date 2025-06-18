Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC50ADF2AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 18:29:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E8E840A84;
	Wed, 18 Jun 2025 16:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I6Of83HAxGaq; Wed, 18 Jun 2025 16:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA58540A85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750264188;
	bh=KYclRk96W8Z6YxpKXdKSfGzS+UZqrnnomEl60wIgEfE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QzKiqammNj5/09UiwW5atgfLmlSpb5OkbSFVzWE2oMIiVIqHYIL0m3kmAun86GaSr
	 zkn+RAXK7E05k3LGdiTqz10QaFfskjepY/4MPc+WDtaSJEdSWQJ4kt/nL3778Me+v7
	 cjMBcNns3oXYXqZ5WZKhwlCN1dWGCFufx3303A6HWUoKCbMPdBMnz8OTGPl7G6XuXq
	 7VFm2YbJafn6gpzyBEESCmBA4pyovcfkEzdPeKYrC4FUsa2SJ/lHLENdepfThrjKvb
	 z5yW7//RSI+UG/GhDr48Y+mh2wTPiO32f6bvnUByrh6oj9k/L2yj5LXiIbUHYL6OJY
	 mRHn1hfj4UlxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA58540A85;
	Wed, 18 Jun 2025 16:29:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 15F1E151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 16:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1249D40A82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 16:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AoApGxBiwvpI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 16:29:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 62B4440A7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62B4440A7F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62B4440A7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 16:29:46 +0000 (UTC)
X-CSE-ConnectionGUID: AAOrVxVXSqyKcriTDeYB+g==
X-CSE-MsgGUID: r+il3jvtQfyZeK6qiyUomg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="51719797"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="51719797"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 09:29:45 -0700
X-CSE-ConnectionGUID: H40ILIZPTH+31t7fPsls2g==
X-CSE-MsgGUID: n5AAFaSmSVeOwG8xE4omGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="153784575"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 09:29:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 09:29:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 09:29:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 09:29:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ghSDLPciDTTn8WflHwNhmHOhOOVyfsTmSGpshFwg8RRXdSAq6V30Etf+Otew07q2w/NvZ260iSIih0/bFvZmBfbpLS5qiCc565hQIzj8aZTDKdKURJL+1G5CapVeC3FnYZxr0243u2nb/UsBwoNWJ6Er3F/Iw23qvCsKESAGjxxqrqlkoUKDcsAOOdgGKrt55Hz+XklnzqrIfkHgphqLnVGxBa0M1W0bUIzBZTDDO2P1OzEnf+ju6718wC/CtiUDU7+wXhUFt4fLOHHzpvXIZNSZVmuSKsWi9tFNfynHwKIFDjtxraZDtCF3CaUihmp5fYZ71Ep7vzAye0bH/YgKVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KYclRk96W8Z6YxpKXdKSfGzS+UZqrnnomEl60wIgEfE=;
 b=f0S1STLZqpzFetInHGMPxRJ+GdMYCKyE+RVqUf5GWuibshmMKR9iWm+d4rmnneNf0STrXbeeo+8Tt3TpkdBnnB4W1265x3OF0F01whxbMb7VqHKc+NBh8gCS6PBunpecHKGxthyCorjPYpic90khqWZiWwze7HLPLn8mPF7z1lVCJeJqRVOyDYjY+VR+kWynY4BjmzRO+5obj1pC5L4j7AbV2tFpLndkh3YnPI9kEapd6qQ/CO0jFGB/vgjVgjdoN5BAdjg/GRHq6bueGK5QmMVY9/wq9fdxIATy0UlBSiacGTw5iHNblMzSXfJ4im8zaVIrwflJKyUfJ9Ku3M6eXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8726.namprd11.prod.outlook.com (2603:10b6:408:21a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 16:29:41 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%3]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 16:29:41 +0000
Message-ID: <eaed1854-ec73-43e1-b5c9-5a2be8268ffc@intel.com>
Date: Wed, 18 Jun 2025 18:29:36 +0200
User-Agent: Mozilla Thunderbird
To: Colin Ian King <colin.i.king@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250618135408.1784120-1-colin.i.king@gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250618135408.1784120-1-colin.i.king@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P194CA0004.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:10:553::35) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8726:EE_
X-MS-Office365-Filtering-Correlation-Id: 007bcf10-bca4-4858-05d3-08ddae85535a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXlCc3RLSlYvc3FrMkNxZmJycjlBRnBLZzAzN1Ria1BBSmpFdVFSN2p5MXhy?=
 =?utf-8?B?ZzJjK0F4SHdCUEVjc0VmK2VxeU1Jd3V0REg4Zms1RUsrN0JSN2RHYm5xc284?=
 =?utf-8?B?dXYyUFRmaWZjWGVOSWZuNkRGWU1QR0h6cGRyaTBUSUhmdjIzaU55QUI3cVBw?=
 =?utf-8?B?YWs5bE5DZ1pRY3g2Vlp1bHd5NUZnT29lVk1jUkFnT1dZWTlWRGFGRDNoREd1?=
 =?utf-8?B?WlY0WHdqM2lwOHNLNzh0V3B3Ykt6VnlSSXZydEJOcWxvTXd5bVhlZU0ySHpK?=
 =?utf-8?B?UFBGdE15WG9Bdnk1a2F6TW96ZUpGbHVUclFnWUV4OFJPZy9ldExMZG1oVkVG?=
 =?utf-8?B?dncyd1I3dHh1UmtNVFFtaVN5Z25XVGczL0V2Z2lISGRrRjkrNjJpcG5GeS9E?=
 =?utf-8?B?RldCM25PUjBGcGZlNE5WL3JSTUdNK1crZkhnb1RJc0pxRmtSaDV3VkJ0UWU0?=
 =?utf-8?B?K1gyZzNQVSt3elZqMElYendjSnRQNm5lZy9vRjcxb1JXa0s4WHQ5NEZNdDZ1?=
 =?utf-8?B?d1VRRzRUVU1YbkE5Y1RmMG1pVjQ5elBSZWdxMWtDZ2hKWVR6RHdOR2FnY3dq?=
 =?utf-8?B?eDZRV0U5b3F5ZjNSQ1dCSTBjU0pGUE1rL3FlSUFTQjdGNUtCL1BFeGErL0lu?=
 =?utf-8?B?Y2JDeVhnOEpwTDVVck5tMVdsQUc5UVQxRWtpN0k2VWx5SUdyMEJhMmxvM040?=
 =?utf-8?B?NWpqZGFTZk5yUUtTdkxIL1d1OG1WZXZVQVBJUkJLTFVMUmRrUEtwMUtsTURE?=
 =?utf-8?B?WUhCcUxLc0VFMUpTNG12OHpPLzhtV3JTektFRGxOMGNHUVRlb3BsNWNEblZ6?=
 =?utf-8?B?aVp2YUY5Z3pIS3Y4eE5CTmQrN1Rta3Y2aCtnb0IxSVZtUGdhaEhnWXcxWHFo?=
 =?utf-8?B?U0RDeC8zOGs4QldpSTJqckNRMXo5Y21ZVlRWMFZvSFFmVjZwZkp0NzFIeCsw?=
 =?utf-8?B?cmJoRVFSdFhMVVBMalAxTndieWsrekU3cTdCaU94aW9KOWYxUmU2c0FPdldy?=
 =?utf-8?B?UGlvRGZCSXhlbVJJRW53bjlHSW9SODhqQzk5RGJkT0hLOHdBRmVtYW5hd3VF?=
 =?utf-8?B?TUE2OVFZb3dENjRPa2Roa3d6bFpDWHVoY0hKTjYyQ2MrMzBmMnladnBDNTQy?=
 =?utf-8?B?RUZ5QjJUUzI5WjVscXZJNVBEVkRCaDBhM1ByZ3hMT0VHQ2cyVWNpdVFMTUhw?=
 =?utf-8?B?Tm4zdmlwRkpESy91R1pSU28vaFVaTWRoUnRTQUhmSFdpeHhMc0toZ0RsQkFv?=
 =?utf-8?B?ZEczZHc5OWZ4WWMxZSt3UWI0dmN0TVFJbHJ2cGs4SWZKOXFJTHdXcW8rbVJ5?=
 =?utf-8?B?c01yQTJPc0JTd2RUbXJsRnFzeEtoMnZjUll2d1JpVVNhKzhTUmtDTWd5bzlR?=
 =?utf-8?B?eHd6bXAzdi9sb3VkVTQ2bzRNNnNxanY2bExvVGRSU2FtTGUxN1BZbllFUThz?=
 =?utf-8?B?bkRVOU93N29GNVJNVnoxRkhIU1NKTCt1SHo3Z0VrcjFqeHlXTnZOZWt1S0tH?=
 =?utf-8?B?YnFZdW5qbHF4QThLbk5UbEh6OXhVV2ZDUjJYcVdmL0pMaXg3S1B1Q2EyaUt2?=
 =?utf-8?B?WU1ERmFzVURmQ3RmUjNjcEQvckN6SUdBRXJjUzljYzF1bWNIQ1VOMU9sTERu?=
 =?utf-8?B?ZnZXQm9WWC83UnJxQmVsTEpsNE11SmlzaWw5My82SlRCTWZBUUJvbVhoaGJR?=
 =?utf-8?B?VHFnZmllcnltd3ltQWpmTG4wa25SK1dKQjc0L3ZHZkdRSE9vV1pkbndIZXlq?=
 =?utf-8?B?UVBuRG9RT3ZUNW9qMFpvajkxTk9rUXE0dnJxT01OcjFSYVBiRUNDNThXaVEz?=
 =?utf-8?B?MkIxUVlaMXNIUDVwbFdvZzM1RDVxcHVhQjVzY01qOHl3aEVXMnhGcjdaTE1V?=
 =?utf-8?B?Zk9ub01WSFFQQTZabFM2VTFtcW9IbHdPVFNHbEtueHNJdG42cXZWVzU5TDBu?=
 =?utf-8?Q?aa45+TT/p1U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2dFSmR2eHJNY1R1RCtFZVZKNWpnYUtwenh2dW9yUEpwaC9mWUFQTy9DaG5x?=
 =?utf-8?B?UUJxMFJZSzFLWkV6MGF0c1ZLR3hvbXJWTDJMK21iTWFaTmxXQ0xIM0FiSjRN?=
 =?utf-8?B?djVXTG8xb0R1N2JmR3Y5ckp2WVlDZzJHMVZrTUpJQlFlN3NEb3BETmhQV3lq?=
 =?utf-8?B?ZWZhYzZjN0sxQk84NzN0dVd4clBiNkFzaWhYc1E0cWhHZTE4Qno2L2ZETE8x?=
 =?utf-8?B?UkxwU2hTS2toM2VCZjZ1TlhyS2JjcUs2Qk9qT056ODNVbXkrNis3Q2MwaU9O?=
 =?utf-8?B?SXB6Q0ZIVWE4RjJSUXpxQVNSUmF3TUJUcUYvS29temxDWm9XTjc2ZXAzRkR5?=
 =?utf-8?B?WFc4TmZ5NnZBaXRuaTVva1llVW4vVmM1TXRWM0NQZElqWTZsS3FjK0pFZUhJ?=
 =?utf-8?B?ZWVKc01lV0ZIZ3RTMTFacUxqVklvTU9CdUpSaXc3OElCeDlDQzlubFBuTUNm?=
 =?utf-8?B?WEJ5bWZGWUFFY0I4OGlLVjJPNm9zUFFXbzRtdGxsNGIxVVVmUE9Gd1lwYlh3?=
 =?utf-8?B?THlvN29NaVVXK0NCdm1SZHd5V2YyUzZZRlo5bHk3ajY4NHhBTE9GYUxsckVt?=
 =?utf-8?B?OHgzeXdNa0l4ckQxaXJvbVFJdHJWWmJXN3krVll5RHNIZ2VzOGk4WU5JQnRa?=
 =?utf-8?B?RE5MN1FrQ2tkLzIyZDRMWFVDenJkMkNzMEJMNC8ycTFSY3Z0OG81eXNIanB6?=
 =?utf-8?B?RVFMKzBWdVJEbzI1cEhQRHNFMnRvL0pzczlCcG5DS09saTZHZWVCWmtaYlFG?=
 =?utf-8?B?dzA3M0hUdzFXYjFZMHhyZFBuR05nbmlkUjhzSkRFZjJaeHE5OUpZYTFzY01a?=
 =?utf-8?B?N2YrTDJQSTVwTi84U2lySlMxcUZWVDFWUXZ4Vk5MUGoranY3bzJ0QWFhNEFB?=
 =?utf-8?B?eTB4QXBPZWpjenRKMndYeWRmRUNwMFhjMjN3YnlzakhCUXZSWHZCWmwwNTBs?=
 =?utf-8?B?NFo1WWxnSzlUTWF6NWwzeTA1RGdHNG4vWU5QNjU1UnpXRG14KzFlbzI2OUpn?=
 =?utf-8?B?MVcvUkFqVGc4dnFuaEpUR0w3MkJxT281ZzNQQ0J6MUo4VERjTDVTbUFVdVBY?=
 =?utf-8?B?dnF5NEV3bUw1ZHF6SmQyQi9HbXFzd2dBd3RuNTZRU25nWlAvVjNKVmdOYWZo?=
 =?utf-8?B?cExUcitDOGVINDR2eTNxUGpFS3ZydWR4bE9YNHM2VHdPNXlIVmtHYk5VV3lS?=
 =?utf-8?B?eGZGdDZ0OUV4Mm5WR3pZSkY3VU5pcmNVR2M4ZGhNM09IcUlsT29VZTdHWEEw?=
 =?utf-8?B?UlVNWjN5TzFKZHd2My9vcFl1WURSRzRkSG5zYldlYlVxV1lHUU9JRElidWsv?=
 =?utf-8?B?VVFtMzVGa0lpTlhoWHg4Ti8xdUdZbVZCV0J4R2V3U3N6aWk0aUk0cC9qNVZp?=
 =?utf-8?B?c2N5L1F4S3hZNDdlMmFkcnNwVVY2UWUvSE5oMWZMaG93aU9mK3lZRlFuMFlZ?=
 =?utf-8?B?V1piajI5ZGVaOEh4cFhHNUxqR1lTR2Q4TXc2Y2FlcU4wRGFIQnUvSXJwSjZW?=
 =?utf-8?B?LzJ5bXNaSFd0N2o1UlN3T0taZVJGM1h1UnJ3dXVzQ1dzdkY4eVdScVd5enBB?=
 =?utf-8?B?akxkbWE0YVNYSDV6MWRLdTltdmx3M01QYmNJN3pPSStBazhZNEpNbDF0ZWxQ?=
 =?utf-8?B?ODJOZzZHZkU0NEhRTy9naUYySnpKc0RjQ0dVVEpwNG5XaHNjK3JtUklwaHlr?=
 =?utf-8?B?WFl5SWY1emRJMU51M1MrRkcyb3YwYkNDbGlRcnJDbkhFL29UanN5bUQ0ZjNY?=
 =?utf-8?B?eVJnL0tHTTY1WGpJSk5PVExxb0dhazUvYmpJdThlTGR4NUx6NHNwYnhBOTln?=
 =?utf-8?B?cVZ2UFZRbTBVVlk1YThlRGJNNWRKZ1R5M0tHWERBVmI1Mmg5cGR4NDBHM0p2?=
 =?utf-8?B?WjdwaDduUEllcCt4MHkxTm9aM2l1ejhIQXFUY0pnekc0ZXZqN09PTytsNVNh?=
 =?utf-8?B?dzk5OXlNdDdSejJYQWhvRkY3aVVkL1lqOUc0UWNCSkdnemIxSDhCM2UrZmRC?=
 =?utf-8?B?MUV3UWc0QkVOWE0vRmx4OVhleWFMQVVwNmZuVlRTYTFlTzZIU2kwMjVSM0tl?=
 =?utf-8?B?UUFock1NU0xJWXV2NXJVTDBCeG5aUEtNVGVtdXl2ZUtLKzc0bkNUaGlPSU9H?=
 =?utf-8?B?QWVxL1NVY0hSd0FQSWs2QkpleFp2NHFqeTdoN3BZNmV4YmlwMms2QjI0UlhE?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 007bcf10-bca4-4858-05d3-08ddae85535a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 16:29:41.3396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +f5gbe2W4WNKJnHfhpAX5kUMrQ/IlysDc6vFYLPwT12JSEUqBa+prK3sQCgQH9OdzTbyYXLRHZv3NT+M4T7WkJri+LCvHAHuMOol6AyWPM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750264186; x=1781800186;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1opF8qMWcPBUUUBGsQbwNTZCr22dlcyVh1pjw2r6p30=;
 b=LolPXpn/BL9p94+7LfVuCMzFJi7Tp6UJAcjCeuSxolm/CVkK8uYEFYcU
 7PaRYb+V7lKqX8OfJSJ3awU/VobMfWEJ+H4KikwQgL6+b9qTDnAgCVLzO
 I0+KXWH1cZympoFC6HBTdyVRfoCkk3LyVzxjkRG+K0n4yAiAYTnjqswEr
 1YZPNv+T1DJ3Gnyx4B7FPWNtmAwU1jk73Q/emXiWGzlBgStNugzAjXNLA
 eRvAR3TeTZQ+aEBQ5/E+digep+Esufgz7dx+TlXfWp50VyiWiZZgnnS48
 /M+FhIcsnVzfr6pUCInowvnxnu0ACIlucUdEPkLd0mZu0Xudk7qJnm911
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LolPXpn/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Make the const read-only array
 supported_sizes static
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

From: Colin Ian King <colin.i.king@gmail.com>
Date: Wed, 18 Jun 2025 14:54:08 +0100

> Don't populate the const read-only array supported_sizes on the
> stack at run time, instead make it static.
> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

> ---
>  drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index b23b9ca451a7..8a110145bfee 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -431,7 +431,7 @@ static u8 igc_fpe_get_frag_size_mult(const struct igc_fpe_t *fpe)
>  
>  u32 igc_fpe_get_supported_frag_size(u32 frag_size)
>  {
> -	const u32 supported_sizes[] = {64, 128, 192, 256};
> +	static const u32 supported_sizes[] = { 64, 128, 192, 256 };
>  
>  	/* Find the smallest supported size that is >= frag_size */
>  	for (int i = 0; i < ARRAY_SIZE(supported_sizes); i++) {

Thanks,
Olek
