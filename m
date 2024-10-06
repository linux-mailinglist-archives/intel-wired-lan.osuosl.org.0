Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 687A7991CF3
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Oct 2024 09:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13E4D403DC;
	Sun,  6 Oct 2024 07:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dq7SscVb75Kp; Sun,  6 Oct 2024 07:16:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2024A403DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728198996;
	bh=5nJ35JJn/+IxIx1jhesZ1sUmeNto7YNVsN6ULbUDCyM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bhUb2nSfJr+p2SaQGhp11ztrmZiS1ijSoMgDDPuam3KGoHI3Mmtq8W47bGVpEQrO/
	 UmoosRAl1xwhTQQTbTKbO3yMhlDGGZsjhDHqU+B3fvWVmYgVLfVS/fKhZ03GX/C5wk
	 VSHSwdF5/tP6aHsAvhFwk9rAYHomwGIb96WiW6p9h3xwNnqxR7Bt08DHsuR1mRZtAW
	 yMQwDMYc89lSRWBP6hj1vROtuy6XcsCOFwbnrBwpow4V/ln/FI6elQYbpKdt2E1PzE
	 xDuSv726fBfDBaYv+y7eynnUn5xYoyk9ryETDdaVPxieaa4YOl+v3CCXED1qOt0KM8
	 EfIzv1LV6IBDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2024A403DE;
	Sun,  6 Oct 2024 07:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D3C31BF48C
 for <intel-wired-lan@osuosl.org>; Sun,  6 Oct 2024 07:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CA06403D8
 for <intel-wired-lan@osuosl.org>; Sun,  6 Oct 2024 07:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f2kGh9QGwqo5 for <intel-wired-lan@osuosl.org>;
 Sun,  6 Oct 2024 07:16:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A54E401B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A54E401B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A54E401B5
 for <intel-wired-lan@osuosl.org>; Sun,  6 Oct 2024 07:16:31 +0000 (UTC)
X-CSE-ConnectionGUID: 2leaPuX9TPGxKqjDqDQx8w==
X-CSE-MsgGUID: E9LIIW1UTwSBdv9oqrClnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11216"; a="27256424"
X-IronPort-AV: E=Sophos;i="6.11,182,1725346800"; d="scan'208";a="27256424"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2024 00:16:25 -0700
X-CSE-ConnectionGUID: b7iEmeM6TNmVquOEOdPaiQ==
X-CSE-MsgGUID: tohfw0yDS76/gIF+FpYZMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,182,1725346800"; d="scan'208";a="75115657"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2024 00:16:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 6 Oct 2024 00:16:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 6 Oct 2024 00:16:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 6 Oct 2024 00:16:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 6 Oct 2024 00:16:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=agLQdE1aArmUhYhga1Zjw/1F8QcmRlca1U66YGMqlm5aUezmMoX9/VacP6Q+/jA4aeFNR0Y4DqY8zqZGiRZInl+9hyyYdPheMnb7MO8KAp14PPn/UthwHAXLxij9z7lCWiQpaUA1MLpvlLRifFuXxpkCfsrACP8iikXbRq1Yc+VnC2vzcOEhJWaGaP9pqFn1kCNTw/RJ3wM/sS+fL8+U8aQIoyO7G6oE5usbRHdnyy+ZdrCCIzsdWfMb08ST8oCY3RmdjyR7L1BGAwjKtCNMZeehRF/M4EOpypjsrrANwRSeoshaGMXin3gKarg12dVqD1ZHDmVqIGXuW0M3F17Lxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5nJ35JJn/+IxIx1jhesZ1sUmeNto7YNVsN6ULbUDCyM=;
 b=fj4lLvIQ3zV9oD6okZ2Pq+ShJ5GFUr9TqwwqD6pTIhrm7HQjpow36m2JM9gXol8pl2hVrxGeajc13RS85Sg/Y3y63Jv/bNBQ2Dj6B7HAldaaKycAYe9DBGAUVKX839xKUUTOjr+ixBE/vkSshDSXEtMbdM6fSAw9jfBwb8gtxJUqtG3/P6UlkR+NJWJ7MyVJhH/6VoqR36YW7RRXe6qBwW+EEACHU+Hpfin9JJ3CYosd7CC93FR6im4iAg2rD6qbiA5mTNZcI8mrUyfV+NnEmJOwWiiHzpBnpMqXcW5poQUV1WlxcA30jIh0g3GWYrAl9t5H88PllDvtGdzEnUYvHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by IA1PR11MB7871.namprd11.prod.outlook.com (2603:10b6:208:3f5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.19; Sun, 6 Oct
 2024 07:16:20 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8026.019; Sun, 6 Oct 2024
 07:16:19 +0000
Message-ID: <87b04c73-27c9-4216-8622-f40d48e8cab0@intel.com>
Date: Sun, 6 Oct 2024 10:16:19 +0300
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <DU2PR02MB102848776E2F746BE7DAE62BCB0712@DU2PR02MB10284.eurprd02.prod.outlook.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <DU2PR02MB102848776E2F746BE7DAE62BCB0712@DU2PR02MB10284.eurprd02.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|IA1PR11MB7871:EE_
X-MS-Office365-Filtering-Correlation-Id: 5af6bc6f-0392-44a6-735b-08dce5d6c675
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmYvY2dFbGxEWmkwUm9RYVJlOE55V2NrUEhGU2hqTWxkRkx4Q1FsYXZFYzVD?=
 =?utf-8?B?TU5vcnV5ZUlUcnFHSzR5R0ZPSEU4b25tK3g1QW96bURtRTZ5WDdjQ3JuZXFp?=
 =?utf-8?B?Z3ppZ0wrTHlqQlpzZ0V6RjFyVGdsbUNzdFJ2RFRINWFWdnd5eWZjNGNpeE1i?=
 =?utf-8?B?QlFpTncxSG1WcmRwcElKNG51eTZJZDN5b3V1eWt5eUxvdnlZK0hTWUt4dkgz?=
 =?utf-8?B?a1hxYy9vRnpyUVlGS2VUOHFONS9oTDNYQkEyeFFHVS9tMnlnS3FUUEVleitP?=
 =?utf-8?B?TE1rTmtNcGJzb0ZrVXZRUStqQWJ0OTlydkVrajlzT1lyTUhrOFRsRFBSM05O?=
 =?utf-8?B?L3VwMnJpcnJLcStadWlVZ0JydWlkRkI4SUxlVUlpdG55WlNPQjk5SEphcWNE?=
 =?utf-8?B?M2ZFeEQ0NlNKR0tjbUdXQW1hNnNsRWNyMSs0bE5nVGt0QmJiR1gxdEQ5bTN3?=
 =?utf-8?B?QnhKejVvSkw4YlpKYVlEYWMxN01oL1JFQ3JuZ1pUWTBWNUsvT2hGbE5BL1Fj?=
 =?utf-8?B?dWRNQVRYMWpRckpibWxieWx1aDFDeUFDcmxxZVJrZW11TUtDTUc1OTBOOVB6?=
 =?utf-8?B?c1I0YmFGb3RaUW1VWmw2VUFOaVNZQUYyK3p3R0MxNU9JRTl6alMxY1J1bk5L?=
 =?utf-8?B?dFlZa1BKM3I2YVdmTisydEF3SlBTUm0zWGJLSFUzNGZSakFmMjltKzduYUtH?=
 =?utf-8?B?OUpNYllra3F4QTAzeFF0ZHo1SXRuL01vamFMOHlLU09hemRjV2JtQWMrTFpo?=
 =?utf-8?B?SVdwUjJxWTF4ZWs4bUxjUkdGK2N6dGRITVJ2bTRIa25JTWoyRHlDVlZkanFs?=
 =?utf-8?B?VDB4Q1MxaExlTWFrd2x6SGlmMDFYdWdPVWl2eUcrWVhwNmVyWW1hWGc1MS9o?=
 =?utf-8?B?T2lCTzgyazJrREVZR25nTVI1aUhPRWlMQ0VLanhpSXU3TXZtcmF5Q1dVcWho?=
 =?utf-8?B?Ykx4K09GNHNjTHdYSEF3UVdHVkVybXhOV2M2YS9NTVJ4SjZzSUtJWkxubm0x?=
 =?utf-8?B?dzd3b3dpTFUxOW0xRVhqUE5PQldFVWp4dlI5Z0gyWFhtditCdGFOZEhscXRS?=
 =?utf-8?B?dTl1cXluSVV4NGhYTDJ5L2lpYVVnR2VOTEJob09vYnlMNXFER2gzZE43Snl3?=
 =?utf-8?B?aWFoREdjbER5WnNHeERuektsSE9ZTTdVSWxHcW92dzE3UzZVMG1XNE5yN3o2?=
 =?utf-8?B?eFNMOTgzay94Rm05V0NzYXl0ZlByU2tFYzA2cWxyd1d5MHNhOEF5M0JweWhh?=
 =?utf-8?B?Y2NCdXUzNHltTWFDUzRQY0wrVVpxRVhqSVN5bFBMS1NDWDNWVW9QREZzYjRP?=
 =?utf-8?B?UXgzWHRpaGdLZE8zS2JaYTgwL1ltb2VDOFg4OTNORkNidmFvVmNhcTN0MHpi?=
 =?utf-8?B?OFpZTTM1QVBNbjllME1qNXNuQUFkUkJjK2l1SExVeGFJZEtFYTd1Y0ovaEhr?=
 =?utf-8?B?QUg0YThBcWhudlNQMzZmbXd0ZVVhMXBaQlNJUitnNFZMOTc3ZFBsUWJZd1Ns?=
 =?utf-8?B?Tm5iK3o5aGxRRUw1YU5qMmlMNU5WbUxWeFlKVVZkdmFPanpoWFduTXI4VU54?=
 =?utf-8?B?cXBUS3ZzNllMNXRYZHlXRE9kcHpITjNvcWdtbTB1dk5TSk5vVGVZWXp6MFJE?=
 =?utf-8?Q?Tutup6weFwMPOe9oqxMkl5gAqfgylEhs0PO2J5HLxXnU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aElhYXV0VDZ5ZnZLaWFUeVh3Vm11L1BiR1JaL1RLZEprTmdQTjR2bGZvcG4y?=
 =?utf-8?B?YzNVNGhydWZMS1VsQStRMXpidUFKaVRWN3ZXMkF3eGNYT1BGcVFQNjZNVlY2?=
 =?utf-8?B?RzJMVnV1cUFxaGZpamdsdzV2am9rL29JeEpBRHk3a2RZWDFrV29VcmNGelRH?=
 =?utf-8?B?dmlEZXY3SVhPSm5VS2RRclBTYUNYOHN5YXphVWpYS2ZZT1A4c01BRDlRdDcr?=
 =?utf-8?B?bDFtNmlOc0YxK3Z3YVRHRWtsOUtCRm1NN0c5UWc2NWpHS3dTeWJyOEltTk02?=
 =?utf-8?B?TXhnN1FuL3FrVHVNQXY1eWcvemlDS3ZNUmhjUTFTUm8vV3lYTHAwMWlRbUxX?=
 =?utf-8?B?a3M2KzZEWnM4bitEWmdZMmo4aUFieHVMVzNqWmJtWWczWUJublNRQndnck9u?=
 =?utf-8?B?VUVtdWpYZllmZE80Z0hIS3krQzFXWVc2ano0QjBSWHgyZVB4TkpzalNNYURI?=
 =?utf-8?B?eU9WMVFHOU5IQ3lWNW1lanJaTmdwbjIydThkeXNHMzN2REZWQktGSXV6d0JL?=
 =?utf-8?B?eW92RFJidXdNRE5GaGFVRytnVkUvZzlVWFVwZU9kNnJpV0FicExRdS9BcWcy?=
 =?utf-8?B?OG91RjNiR0ZRYlRBeHZIMGNra1ZvdFhZYytGV2ZLYWQ1NmQ1K0xuaWg3NFpK?=
 =?utf-8?B?K09FeW0xVG9DS2V1MjA0MC9NclhvZTBxUmRxYlBmY0hTQWQ0VytvdDBFY0Zi?=
 =?utf-8?B?ajU3aysxOTNqeWMwYUVGTUsrYnpUeTJVb3VFZU5jdFhYUDkxczV0RnRWbW5T?=
 =?utf-8?B?eVlkaCswck5vb3JDYkNxaUZyUEpTODZnbTZNd2FCZHBuUWVieExaN3BWSmlj?=
 =?utf-8?B?UHdDVlhML280YXpvQkE3WlZ4Tk05eDd3WWRXSFI3dWc3SlVqN09FemRhZWNr?=
 =?utf-8?B?aURDRFJZNkEwSmFJSEJUdHRiaXQ2WTV0b1AvRlljeERpVWJFTStjOGJQRnpl?=
 =?utf-8?B?WXJtYTQ2aW9JZUZaL3UrdzJ2NDlBL0xmYkNOZnc3SmVuc3FTSGJ5RTU4NXM5?=
 =?utf-8?B?R0hobGZ3ZW1QZHlnbHJoYmtqK1NlQUFSTy9BdnMzcE44ckFQeWo0ekVYckYz?=
 =?utf-8?B?RlJJT0tUbjEyalViYjFYQXJsbE1KVXRiTSswOU9EcXZuYWhla0p4TWk0c0hC?=
 =?utf-8?B?T0VvOGh5NjhqcHhZL1dTZ2IxdVU4ZmtOY05oNkdEZ0lzZExld1IxRlZKRG4r?=
 =?utf-8?B?UWJQTDJqYXdRaEpaT0ZxRmlKYWVTTUpaK0JTbStweW1LalluV3JPbVkwelRC?=
 =?utf-8?B?dk9IQUtZZkx6UFVESHBsOEVLV3IzWGZKSHNGbURxNmFyTHJZQTcxMzREV0sw?=
 =?utf-8?B?YzR5bGF1UURtVEwzVlhOQmRWMCt0MXgreGhBYUphU0JreTZsYlhRVmduSmJR?=
 =?utf-8?B?R3ZaR1hzSnA1UmsrNWdZa0xFdlhvd2FoWkFNRStyZXhOUHVBajc5UVFRdXBM?=
 =?utf-8?B?V0FyZlo5d2U5UWlKUTFkYUphZlphTkRySFNwb3BRQUdwUUx1dkRxYU5KMDhB?=
 =?utf-8?B?MWRBUVRVcTV4bEc4b096TkEwTm85dlBGQkQ2NE5kOHExWk9hK2lraHBkR21T?=
 =?utf-8?B?MHg0RmpUV1EvNHNSRWRJMndCek92UnVleFk0eDJ0ZHpldXMvbmljM3FjUkw3?=
 =?utf-8?B?Rlc5NWNmWTBCcUNrOG5tUXVYaERrMWxWZlk3UTd6SlNPUTVJZmc2TzcvZmQv?=
 =?utf-8?B?TzVYbDVGaDRoQ1QzL2ozWmpMSFlUaGFUMHp2OFZpSGZFNzNVbTdGSzk0dmxw?=
 =?utf-8?B?SHRTV2NPMWszZTk4QWo5Z0JudmxwVFlNRlEvVVZGZ09BdkNYWWJiZDVFN0ZZ?=
 =?utf-8?B?dTFNTXE0Nkl5YzBJd1NDOFdRMHBqNkVuaHR2Z2RsMG5oeTVrMHJMNVNOWkhD?=
 =?utf-8?B?cE5UbTFGNkhCVTUxT3RNYU45RkUySmxmeHJKSDRNa3NlWVBlakhNUlhOZk55?=
 =?utf-8?B?ejdZWlJhR3ZvMDJNMXVPazQwWkljTmFCWmVieGc3M1RnOVNCMm9HZFFydTdt?=
 =?utf-8?B?cUFPTGR1VUVpME1HZGhSMUxaNDY1bTUwN2FsTlcwNWRmeWlQRGNjdFUzVXFE?=
 =?utf-8?B?OGdYeXh4d2FmckJEdTlhVnRhOVZwYXBBWGJSNVFzelpaeWNFS2FsUEFIdWQ0?=
 =?utf-8?B?Ym9rN0IxT3lCbmlmZ2hlT3pFcTRhRDhFKzVpd1hhQ0htT2Z0alVrK3Mycklm?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5af6bc6f-0392-44a6-735b-08dce5d6c675
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2024 07:16:19.7595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vyPE0ixejF1hdAICDdrBj94+nWQUXv6AFLdsitZLd7RqKxDhUsUg4GqNU/HcmoCCP3259ziitYAZ9SJY7laRbLWnDWI2Cb3FbOvmxnFVN+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7871
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728198992; x=1759734992;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9HUhAj4oqebrL5sv0f0ZSQsZPW2u5RHJhNF2QSnDn4A=;
 b=H3L6Kffut9hBdmsLCEpvYCSla8S6jo0zMqVsCBCoxiaCjawdKt1Q0M/z
 npa/jLIAizQ1t6Blwd49hPr5noJVrEKpiyPNLCRpB92ahjX6bFIoMFX6/
 pWkxtGnB0vVmFeH+Y9PG4/N/gmwsijjPonQO8cTB4JZg9k3eQ+cnbra+J
 hnJpU1RucdEqc014HNjS9G/S8p4JjT0LQn60jl/cj8OZEBLUru93IGflZ
 9/9+qbGVlG8KlX58ZYVNxIgNw9ggHE+o+puNiV6/Twz5DE1FRJJWvEaGv
 d/jWz+A2ICAtJrBdOE8mWMwTe7C8YVcVKzcqT+DRhhxMVo5eWtiCk7gaH
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H3L6Kffu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] e1000e preventing sleep and causing repeated
 desktop hangs
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/4/2024 1:31 PM, Yonatan Avhar wrote:
> [1.] One line summary of the problem:
> When suspending my Lenovo ThinkPad P14s Gen 5 (Intel) with the latest 
> Fedora 40 kernel, the system fails to suspend, then begins to 
> hang/stutter every few seconds.
> 
> [2.] Full description of the problem/report:
> I recently switched to a brand new Lenovo ThinkPad P14s Gen 5 and 
> installed Fedora KDE 40 on it, and quickly started to encounter small 
> (it feels like the whole desktop locks up for ~0.5s, but I don't know 
> how to measure it) hangs every few seconds.
> 
> After more troubleshooting, I found that the hangs only begin after I 
> try to suspend the system. When I try to suspend the system, the screen 
> goes black, but the system fails to suspend. The screen then turns back 
> on, and the hangs begin. (See the attached logs for details)
> 
> Another thing I discovered while troubleshooting, the failure and 
> subsequent hangs do not occur when the Ethernet link is up, or when 
> using the older 6.8.5 kernel (I also attached logs when using it, 
> suspending, and waking up manually).
> 
> During each hang, the system monitor shows that a single core is pinned 
> to 100% utilization, I attached a screenshot showing the graphs from the 
> Plasma System Monitor which show this behavior. Additionally, I used 
> `btop` to check which process was responsible for the high CPU usage, 
> the processes that I found were "kworker/X:X-mm_percpu_wq", 
> "kworker/X:X-events", and "kworker/X:X-events_freezable_pwr_efficient". 
> A short recording of |btop| can be seen in the attached asciinema 
> recording btop.cast or at https://asciinema.org/a/qsMM9XRnIq0VjmVaqWQ2iyTuQ
> 
> I noticed errors from e1000e in the journal that seem to be the cause of 
> the issue, and don't show up when using the 6.8.5 kernel or when I 
> `rmmod e1000e` before suspending. They can be seen in 
> log-6.10.11-200.fc40.x86_64-justsleep.txt:3012 and in 
> log-6.10.11-200.fc40.x86_64-with-driver-reset.txt:3012.
> 
> The exact model number is "Lenovo ThinkPad P14s Gen 5 21G2001VUS", exact 
> specs from Lenovo are here: 
> https://psref.lenovo.com/Detail/ThinkPad_P14s_Gen_5_Intel?M=21G2001VUS
> 
> [4.] Kernel information
> 
> [4.1.] Kernel version (from /proc/version): Linux version 
> 6.10.11-200.fc40.x86_64 (mockbuild@3ca6e723992940d59a04517d5d4c6213) 
> (gcc (GCC) 14.2.1 20240912 (Red Hat 14.2.1-3), GNU ld version 
> 2.41-37.fc40) #1 SMP PREEMPT_DYNAMIC Wed Sep 18 21:09:58 UTC 2024
> 
> [4.2.] Kernel .config file:
> See attached files config-6.8.5-301.fc40.x86_64 and 
> config-6.10.11-200.fc40.x86_64
> 
> [5.] Most recent kernel version which did not have the bug: 
> 6.8.5-301.fc40.x86_64. I did not test using kernels in between them, 
> simply because these are the kernel the Fedora Linux repos offer.
> 
> [7.] A small shell script or example program which triggers the
>       problem (if possible)
> I don't have a script that triggers the problem. Instructions to 
> reproduce the problem are as follows:
> 1. Boot the system and log in
> 2. Once the desktop loads (I also tried switching to a TTY)
> 3. Run `systemctl suspend`
> 4. The screen goes black, but the system fails to suspend. The screen 
> then turns back on, and the hangs begin.
> 
> [8.] Environment
> [8.1.] Software:
>      If some fields are empty or look unusual you may have an old version.
>      Compare to the current minimal requirements in Documentation/Changes.
> 
>      Linux Yonatan-P14s 6.10.11-200.fc40.x86_64 #1 SMP PREEMPT_DYNAMIC 
> Wed Sep 18 21:09:58 UTC 2024 x86_64 GNU/Linux
> 
>      GNU C                     14
>      GNU Make                  4.4.1
>      Binutils                  2.41
>      Util-linux                2.40.1
>      Mount                     2.40.1
>      Module-init-tools         31
>      E2fsprogs                 1.47.0
>      Jfsutils                  1.1.15
>      Xfsprogs                  6.5.0
>      Quota-tools               4.09
>      PPP                       2.5.0
>      Nfs-utils                 2.7.1
>      Bison                     3.8.2
>      Flex                      2.6.4
>      Linux C++ Library         6.0.33
>      Dynamic linker (ldd)      2.39
>      Procps                    4.0.4
>      Net-tools                 2.10
>      Kbd                       2.6.4
>      Console-tools             2.6.4
>      Sh-utils                  9.4
>      Udev                      255
>      Modules Loaded            ac97_bus acpi_pad acpi_tad 
> acpi_thermal_rel binfmt_misc bluetooth bnep btbcm btintel btmtk btrtl 
> btusb cec cfg80211 coretemp crc32c_intel crc32_pclmul crct10dif_pclmul 
> drm_buddy drm_display_helper drm_exec drm_gpuvm drm_suballoc_helper 
> drm_ttm_helper e1000e fat firmware_attributes_class fuse 
> ghash_clmulni_intel gpu_sched hid_multitouch i2c_algo_bit i2c_dev 
> i2c_hid i2c_hid_acpi i2c_i801 i2c_smbus i915 idma64 igen6_edac 
> int3400_thermal int3403_thermal int340x_thermal_zone intel_cstate 
> intel_hid intel_pmc_bxt intel_pmc_core intel_powerclamp 
> intel_rapl_common intel_rapl_msr intel_uncore intel_uncore_frequency 
> intel_uncore_frequency_common intel_vpu intel_vsec ip6_tables ip_set 
> ip_tables iTCO_vendor_support iTCO_wdt iwlmvm iwlwifi joydev kvm 
> kvm_intel libarc4 loop mac80211 mc mei mei_gsc_proxy mei_me mtd 
> nf_conntrack nf_conntrack_broadcast nf_conntrack_netbios_ns 
> nf_defrag_ipv4 nf_defrag_ipv6 nf_nat nfnetlink nf_reject_ipv4 
> nf_reject_ipv6 nf_tables nft_chain_nat nft_ct nft_fib nft_fib_inet 
> nft_fib_ipv4 nft_fib_ipv6 nft_reject nft_reject_inet nvidia nvidia_drm 
> nvidia_modeset nvidia_uvm nvme nvme_auth nvme_core pcspkr 
> pinctrl_meteorlake platform_profile pmt_class pmt_telemetry 
> polyval_clmulni polyval_generic processor_thermal_device 
> processor_thermal_device_pci processor_thermal_mbox 
> processor_thermal_power_floor processor_thermal_rapl 
> processor_thermal_rfim processor_thermal_wt_hint 
> processor_thermal_wt_req qrtr rapl rfcomm rfkill serio_raw sha1_ssse3 
> sha256_ssse3 sha512_ssse3 snd snd_compress snd_ctl_led snd_hda_codec 
> snd_hda_codec_generic snd_hda_codec_hdmi snd_hda_codec_realtek 
> snd_hda_core snd_hda_ext_core snd_hda_intel snd_hda_scodec_component 
> snd_hrtimer snd_hwdep snd_intel_dspcfg snd_intel_sdw_acpi snd_pcm 
> snd_pcm_dmaengine snd_seq snd_seq_device snd_seq_dummy snd_soc_acpi 
> snd_soc_acpi_intel_match snd_soc_core snd_soc_dmic snd_soc_hdac_hda 
> snd_soc_hdac_hdmi snd_soc_intel_hda_dsp_common snd_soc_skl_hda_dsp 
> snd_sof snd_sof_intel_hda snd_sof_intel_hda_common 
> snd_sof_intel_hda_generic snd_sof_intel_hda_mlink snd_sof_pci 
> snd_sof_pci_intel_mtl snd_sof_probes snd_sof_utils snd_sof_xtensa_dsp 
> snd_timer soundcore soundwire_bus soundwire_cadence 
> soundwire_generic_allocation soundwire_intel sparse_keymap spi_intel 
> spi_intel_pci spi_nor sunrpc think_lmi thinkpad_acpi thunderbolt ttm 
> typec typec_ucsi ucsi_acpi uinput uvc uvcvideo vfat video 
> videobuf2_common videobuf2_memops videobuf2_v4l2 videobuf2_vmalloc 
> videodev wmi wmi_bmof x86_pkg_temp_thermal xe zram
> 
> Processor information, module information, loaded driver and hardware 
> information, and PCI information are attached as files. Note that SCSI 
> info is not included since the laptop does not have any SCSI devices.
> 
> [X.] Other notes, patches, fixes, workarounds:
> My current workaround for this is to add the following script to 
> /etc/systemd/system-sleep/:
> 
>      #!/bin/sh
> 
>      case $1/$2 in
>        pre/*)
>          echo "Unloading Intel e1000e driver"
>          rmmod e1000e
>          ;;
>        post/*)
>          echo "Loading Intel e1000e driver"
>          modprobe e1000e
>          ;;
>      esac
> 
> I would be happy to provide any additional information or test any 
> changes, since this seems to be specific to this laptop model and not a 
> universal issue. Unfortunately I only have access to this one unit, so I 
> can't check multiple machines with the same configuration.
> 
> Thanks in advance
> Yonatan Avhar

Hi Yonatan,

Thank you for the great analysis.

Recently, we submitted a few patches that should take care of this kind 
of errors.

I see that you are currently working on a custom Fedora kernel, but, 
since we submitted a few patches to the upstream kernel that should fix 
these kind of issues, I would like to ask you to reproduce this bug with 
kernel 6.12-rc1, where the commit 0a6ad4d9e169 (e1000e: avoid failing 
the system during pm_suspend).

If the issue still persists, please try to apply:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20241001170848.1191876-1-vitaly.lifshits@intel.com/
