Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB3CBDFDF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 19:32:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5896D614D6;
	Wed, 15 Oct 2025 17:32:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JVgJRsjckE-9; Wed, 15 Oct 2025 17:32:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E9A8614DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760549576;
	bh=LbC1G9qaMt9wxKK6Gipdc8ztNsXh20rL/vYg8dq3phA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p2HptCKX93xvXQ/pwew6sMTekPlEftjg/hS8GLgaAY0vqVYaFUPYc1QJcC52k5YCD
	 YYHx1+3F7mlp6l0hmK6E5mpCGBXG9xNtaNVVdjn782qerZqyG9HnqocX7T+jyQi3ke
	 T8X4VHTYgvDJclhdB6tnwo1baO7laO6ASlqGUOu6lS5qYrF+gtAsKtYSJs1ocgax6j
	 A5G6LT5coamouK11qMfQqITp5NBFiysvaMj0nOo98BHZHOIVQtHu6wLcgxrPZu3jZx
	 Uv3tgwDB4aKKuSlOsn8rCx6W1pk2IG0IlO9jiJb/VW2q/z71+2KxtLK67LGhD7GDLT
	 v+mfDevROgh/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E9A8614DA;
	Wed, 15 Oct 2025 17:32:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 909D91C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 17:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7552E40C6E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 17:32:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RW4sj9Y482Dg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 17:32:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E14640185
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E14640185
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E14640185
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 17:32:54 +0000 (UTC)
X-CSE-ConnectionGUID: 2En3roSvR+yav9maMo4XvQ==
X-CSE-MsgGUID: aMKRnMx9S6alVSAVn4FjFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73844456"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; 
 d="asc'?scan'208";a="73844456"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:32:54 -0700
X-CSE-ConnectionGUID: 0IPIh1j6SeK9dLcBp8xSuQ==
X-CSE-MsgGUID: iV9w0ksHT+WrjyLwnsSM4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; 
 d="asc'?scan'208";a="182179672"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:32:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:32:51 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:32:51 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:32:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=obsXxiKPhi07uxGcYfcBkZXSox4gidnTgZqmjq8DTwDkfpL1dRfq7BcrNvwWhNco1g/wUlJ39ZeCkcoPuaOrPN3XbxNnuAnUJppVDz6GBQeF8wf+c3yF2J+Zird+o7kUzEUbIwi9RjZlGfeCc03mAD4duDor3cJec0zV1O3N/x03qVLC794W1NvXUYhJHWeJy3m8YBB2LHmcHm2+l5twQnyx+wg4/VcUk0uerSdMHW5OH/bYSap6a3rG7L9DxArQor1oSepnzPcWBO5Pp+JABC6hOx+QF0HQjrxJk7RhjH7ZBCnBnhwNKy0MbCJ10w6ocquxb9S+71dFv4M3kU0yIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LbC1G9qaMt9wxKK6Gipdc8ztNsXh20rL/vYg8dq3phA=;
 b=HAw8AUvkeLlqwDzrSpXyj/N0QpitqqcoFM0GB8ExahyEaWoag6Tf/8INyo5DiY7OfszVT+7t4XEMKbrASrvBaFNMLO7Iw+wa8ABEy+5PLhg6NyalB6NLoJ4b3c8dbEUVP0wtowqbaJzRjfuXxvrDg+t4sI/2Butzzq6tpg1Yg6C2nF88mrxA/1Wiqj2+NRQFmyB3GQA2kbsdz5wGNrgZDx5+jtnW97BHfHV3em6Isc1DB5FL+OunAFbNzaWTqgt9cN+Siy9CznzEjbBek+49P5hWOWyQElf8/KX3HqBkSYydCKoqi57tiLqUFsiqHPD7cKrCpo4yiKBHMa05O5oXDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6900.namprd11.prod.outlook.com (2603:10b6:806:2a8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 17:32:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 17:32:48 +0000
Message-ID: <0c8c5f34-c5cb-4a81-98fc-e3b957a2a8e9@intel.com>
Date: Wed, 15 Oct 2025 10:32:47 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Guenter
 Roeck" <linux@roeck-us.net>
References: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
 <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
 <aO8wDmPWWEV6+tkZ@mev-dev.igk.intel.com>
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
In-Reply-To: <aO8wDmPWWEV6+tkZ@mev-dev.igk.intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------J57rpQimf1BuD4eDM7r0s00O"
X-ClientProxiedBy: MW4PR03CA0131.namprd03.prod.outlook.com
 (2603:10b6:303:8c::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB6900:EE_
X-MS-Office365-Filtering-Correlation-Id: f7efd78f-81ec-41c2-fdc0-08de0c10dc1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWlVYjg3R3ZDY3I0VGVLMkNLdUVwTjMvdnRTeW41MDk1N1ZYODBOeE9sVC92?=
 =?utf-8?B?Q3pBMUphTTZubkN4bnJNSzg3SURWY3FvTTA1aWtERjAyK2dsY3d1dmxMSWFO?=
 =?utf-8?B?dEc2emFWZEo1UG1FeVhYS0d3eFJzK05hNlRnWG1yaFMxTG5tdnRVVGxSZUZM?=
 =?utf-8?B?ZzViSUVjdHhvb2lPaXpYNFlkVnBQRytYSGFKVG5haHVLSCtkcG1NK3doTUEx?=
 =?utf-8?B?OGk3ZjBRUkhtcnJzQTVTZStHVFRPK1dDdjJGNzRpaWE5UDJmWmhQVkVMdEVZ?=
 =?utf-8?B?d2ZSa1l2dUZxdU43dWFSZnpMbWFhbG1aVDU4VmZya1BLYk16QmRucnA2amlr?=
 =?utf-8?B?MGtJcHRqa2RKTHlsRU9hMElPR1dmUEIzU0VoSEtRaGplSjl0RHhIZThtTFds?=
 =?utf-8?B?R1RiTVJvSkJ3ZEp2Y1FQTWZJQ1l3NkoxcDM1d0EwMDRwcDl3WlpZSFJqc3hG?=
 =?utf-8?B?dnh1UU12UTdIZWVYWHZhWkF6bzV3eUc0VlRuS01QQk1xVndkelkzZTM4RUdO?=
 =?utf-8?B?a01BZFJLY2RLQmhFRGdFS3ZENFNEV3NCWVJTN2ZiWWJ5dncyK2o1VjFVNFlU?=
 =?utf-8?B?cTJXaGYwL0tHOFFxSnprbnlVUDFGejdhdWFrdHpiMk81OTFQZjE2b2RUN2Nk?=
 =?utf-8?B?NGZTVkRvaEdZa090anNIbnNYSDZBNUpjdjI1OVR4SENrWDhSbVd3UVc2bEJF?=
 =?utf-8?B?UDBZUWZncU5Fd3hXNlRFVzJEdS9CWDBTR01ETHNoYWFrd1lGcU01dXR1eGJS?=
 =?utf-8?B?UENGK1dycWtIYWJzQ3RPUVBEUGpyMVlRYmNFSFA0dXB2K1ZhNTJIVkc4UkU3?=
 =?utf-8?B?M3RNY3ZyWGpQRHc0c0VZUUFRSHFaWTJyMytjd1RIdVhkQlBkWmJYUk96Q0x2?=
 =?utf-8?B?WXVqMUFCbWFJWGh4cnFmZmxwZC9TYzg0NDFMTEpRU3lDV2ZuZzc2UVQrYUFX?=
 =?utf-8?B?L1dsZEhNbXQ4Z2xiVkpvTWpDRUw4R3RpZFFwNzM5ajRtdU16aGVSVFphS2V0?=
 =?utf-8?B?aHVrZzEyRnlGdlErR2JSYVJ6b1FuRzR1OGFBb1ZEdWRmNWkwSUIya2pUNXJp?=
 =?utf-8?B?NDgrbVVkUmlxOGpIY0taNXRYWkp3d3BYdGxONmdWcTVqa0J1ekFXL2Q2SmZI?=
 =?utf-8?B?TktkTUJVd0RJQlpZRDNkaVhqK3dKUWk5NXhKaFFEelBVT3huODRnd1krMk1y?=
 =?utf-8?B?K0E5TUN1Sk84U0ZpQWZlUnhtUVI5OXVPMXk2QzhENzF1WXNOZHpXcFlyaVdP?=
 =?utf-8?B?ZFZHbkVrclc1bU5sM3VqcUdzUkdDdHNsTEZtZDBmSG1WbDNQZ3dwcVozdllY?=
 =?utf-8?B?VC9EUy9ib28xdlJyQldRZUJFVzMvQzlrZ0Y1T1FlVWtwVVplRXVGbGNtaDdP?=
 =?utf-8?B?ckJlTmVuM2JqRy9BdlE4RE9GbUd6TFk4U1JvY0RZN2RYamxiRi8vNUhkdjg1?=
 =?utf-8?B?UmJ1K0NmN1h5Y2IzbFhsdnEwU3pFdE50NU44UEt1Y002YzhCQTdDUm9waU9R?=
 =?utf-8?B?MDNKZmNQOE54eUs3K0w1MUlCNlRiWUE0OWhuZXRBN1UyZ1hWbFJNVWVxRGVr?=
 =?utf-8?B?eHNlQTFzd0ZkZERjOHE4ajBoM09oWHNiRkkyaW1UQUk3VC8zb1ExRHVyWjEv?=
 =?utf-8?B?MVNqYlRzRDczbDNJaU05M0ZLQUlvb2dUUzFxeWxTcVlpeWk4b3lXbHV0cms5?=
 =?utf-8?B?SjZISlNZcHZ2YjVJUGt6K08wb28vaDBQb2pwWHdIUU0xajUwU0xQaDVjaGZq?=
 =?utf-8?B?RlV5ZTd5UWdDRDhWc0dBa3I1Q3kwbTRmTC9QekdNSmJLUUJZNjdUdU5aeVJq?=
 =?utf-8?B?OVI0Q012RE5KMDBTNS9kbXRJT0ZSVzdtL3Y1MzdYQXdXaWJXQ3V0MHpQY21i?=
 =?utf-8?B?ejRFVVh6enY1eTBvdHc4RTlMVjJnMGovNHozQXBFSWoxV1NSSzZCOWRMM3Rl?=
 =?utf-8?Q?rlj0goODY51LwkI+Sm97gIwl8j4PuYF9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjMraDQ1aUJ4NnBXRVUrZmdzNEtpRW85dmdxd1N1YTVmbFozUWFyOTA1RnE2?=
 =?utf-8?B?Q3pJRXp1SXJsWU1wc1hNS1Q2elZQTzN0QVdHYTdwSjF6L0JtQ05PMmdJZktt?=
 =?utf-8?B?VmNaY0NZMk4ycU1KcWV5YURMT2Jkb0VOL3JLMlhlQ29QaktyMkRJMkIvVER2?=
 =?utf-8?B?em9GeVgycnZ0NkhCNXh0a0E1RkxLTUdmbldEVEMrWkRLekw2Yks4cGx2eTU4?=
 =?utf-8?B?b1RrWnk2MnNrTHR2RGFMVGRUZi9GV1ZiMG9TaklJbjhwZzhPMzk2R1dGdnMz?=
 =?utf-8?B?UTh1ZjdTMyt6NnJyUTY1OXVuT0tHcWE0Z1Q5REJXMWgwRGtYOEtDOUJUR21K?=
 =?utf-8?B?SWtTOURUVjFNVTBPbE9GMnNSM3B5VkppekJtZ1p2WFpkci9Id0ZYOXAyRWRy?=
 =?utf-8?B?dmlITjE4ZHNrSFh5cG1SeEM0cVJUZlNrWXNpVG84OVlVNVVUSUw3RVdOcDFm?=
 =?utf-8?B?aHdEWWZSanZEa1ZiYVBEcC9pQVFYb0pTalZhYWQzYnB5a21leWFONW80TVNG?=
 =?utf-8?B?WFVKVXdoSXlMUHJKNWl4S1QzVnR3dFFIaE9KQ3RxQUlTWndtQW1hUHFxOTIr?=
 =?utf-8?B?cTI0ZjJSc2NYajcwbFF2K1VranZEaldRMzlQeUU0YiszWWtrU21KZzA0UFZk?=
 =?utf-8?B?SDY0dFZhYk13U3o4bHVERGRuSzcvQzZLYThCSHBaaE52dndMMXNVeS9YWHFV?=
 =?utf-8?B?SDJrS3Y5cVpjVG1HdVFRbFEyK1ErVUNOdHRrYkJaWkVBRkE1czRKUk0zdlJC?=
 =?utf-8?B?eUJJalhQTXhNZVNqaGN0SXBIQ05NTDE4RmI5TUZqZ3FqdElhL296L2xvYnhr?=
 =?utf-8?B?bm9aM1N6eEl6N3ZHRVlnN2c4ajNTYjFkODJGU0NkdjlYTUVQWDdVa0JpbENF?=
 =?utf-8?B?Ym5PNVFxTzFkYzVHOERrNXlyY0xQOUNRdWlkSW9RcTBZbGNpeUV2Sm0zMWR2?=
 =?utf-8?B?Qk9STnBGR0dSOUNnYlAzenNtOFBwZjdmcGdjV1I2R1ZzanlHQWM0QnVmS0dO?=
 =?utf-8?B?SjlUSzVMcHJyb3Blc3Q5VS9sK1gxNHI5MmdoRjQ0Sm5IQzZ1S2lkQ0Z3Vm1p?=
 =?utf-8?B?WUpMTmFPUXllOFNVWEpKRm5GanMxZWxDczRIZUlDaHFZeHF1UWg0Sk9JL2lu?=
 =?utf-8?B?VGQya0Y1ZVZJNXBuRGxpOVVGVU1zSlNnb0NvMkNCTnNWVHBTdzJBYjZHK2hp?=
 =?utf-8?B?Z1ROUUQrc0F4RVM0dEdwajMxQVNVTC9MWjRLZGN0VHRGT0ZvUUFKQS9MeVZN?=
 =?utf-8?B?SVppSHRUeXkxNk9MWjVhVVdJR0p5TFVPTnBRNW9HczdyazhmQWJGR2hVUzFV?=
 =?utf-8?B?UEZJaDRwNE9uOVVTVWRLUHZLUW1hZUp1N1UwWjYwSk56Ymoza0k5eExEcGV0?=
 =?utf-8?B?UjFPeVFKUnBsZys5ZnEzVkVTR2Q1cWxsRlYzVno2NmdFdThxWXN3aWZkVlFJ?=
 =?utf-8?B?S2tZUElIYWE4d0VCYkhyamQ0SUZCNm1qQUVNdHdHbHZwcVNQazlOUDZXOXl2?=
 =?utf-8?B?aFBtblUvMlpoSEFhOG5UTDllSHFhbmtHS2J4VEVkbVBCN2RyK3dFTWRrbHpK?=
 =?utf-8?B?M1VJaTl0ajBFZXg0RFR4QW1oSzlrTVMvcExkS3FTakVFMmN4SlpWWjR6RTB5?=
 =?utf-8?B?SjZBTXFqOXZTWUlDV29pRW03NFZSOU4rR0dyT0RFNVFyZE1Eem04UDBlQmsv?=
 =?utf-8?B?dXdnc0xjRmFTc0RYeFdmbkVndUUrUTVlSXRmcndybTltU2x5WTFLMTVES1Q2?=
 =?utf-8?B?Ui9MWjhxQ01NMW9uNmV3VjFEelNJUXBVQ3A1NVR1aXliN0RjdFFYQ1p5Sk9u?=
 =?utf-8?B?VC9yR3ZkMjJlNEYxUkQrS0MyRnIwZWh0TmpHRG8zVVRIUHUvY3pzbUpxSnFM?=
 =?utf-8?B?aUU0K05iczFGMWxMMU1kWlBPRHQxdkxMc3MxR01kTkdYYW9lUjFYcXFFNlEy?=
 =?utf-8?B?V2ZhdWNVOFUzMkM4OFFBWEMzK0cwY21sU1pGdjNYdlMySjhOb2pwTnhmT1RP?=
 =?utf-8?B?TWMrc0tvcUliZmo0T1JPaDRzQ05Zd3g1T3hSemZBcHB0N3dsMi9janhxSFNH?=
 =?utf-8?B?OGJoWlhRbHdPNktSUjF3Qlh5OHlJVmJxL2VMbkRtRkVJaEVQRk1nekhCSWlx?=
 =?utf-8?B?Uml2dkZuTVZZV0l1OTFUNkpaSnlPcTdubXNhaHJObGVOSStPSkc0Ymh1M0Vp?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7efd78f-81ec-41c2-fdc0-08de0c10dc1b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:32:48.6620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GonmnM+m6c1dqq0B9gfZA03Ohs7QOM8sLyp1LSxv1jVvL4+4wC+nVPullVJvAEV/J1fyoo6xtFxCPXdphpfHzT2cbJJXvEe63OzgLjkDF1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6900
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760549575; x=1792085575;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=RNc310HNyL9kVBWZkpsE7KGMyG40l7DKySSCJ0UCIjk=;
 b=hX2olTDIyV4gXXSdafUlLNM2n/RyA7ZvGdmz9ICFVe67pmJ6tmaUP0Yr
 3APsR3QVoFAFV+Jit3Z7qjhKFgFEvw4sK3C4JG61w601sw9IKJgxvZiRh
 4+MlYIACTrJKmRWgIywxVFhuHnplvsmUqUjgB+JI5IvbsKy1v3vlmH1M0
 KPsUYL+ryvsRwfbUPq36APuK/KBjAtoDGUrIZIdBCNM9OhIsjakf9fx+T
 oI136+HB3Udq0xvYugeVaSAnPv65DyISGb2zIbwsXshZXt+gt5iZXwPyU
 Le9Dkkchq5aiMf7mIJ9NzYCjnc/alMHIVIGmvo57SKYx8hkK8Lh5GgKbw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hX2olTDI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
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

--------------J57rpQimf1BuD4eDM7r0s00O
Content-Type: multipart/mixed; boundary="------------smF9G07sdYrvZ0u3pwMDJcba";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>
Message-ID: <0c8c5f34-c5cb-4a81-98fc-e3b957a2a8e9@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
References: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
 <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
 <aO8wDmPWWEV6+tkZ@mev-dev.igk.intel.com>
In-Reply-To: <aO8wDmPWWEV6+tkZ@mev-dev.igk.intel.com>

--------------smF9G07sdYrvZ0u3pwMDJcba
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/14/2025 10:24 PM, Michal Swiatkowski wrote:
> On Tue, Oct 14, 2025 at 04:41:43PM -0700, Jacob Keller wrote:
>>
>>
>> On 10/14/2025 7:11 AM, Michal Swiatkowski wrote:
>>> Building the ixgbe without CONFIG_DEBUG_FS leads to a build error. Fi=
x
>>> that by guarding fwlog code.
>>>
>>> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
>>> Reported-by: Guenter Roeck <linux@roeck-us.net>
>>> Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb17=
6058@roeck-us.net/
>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com=
>
>>> ---
>>
>> Hm. It probably is best to make this optional and not require debugfs
>> via kconfig.
>=20
> Make sense
>=20
>>
>>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 ++
>>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h | 8 ++++++++
>>>  2 files changed, 10 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/=
net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> index c2f8189a0738..c5d76222df18 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> @@ -3921,6 +3921,7 @@ static int ixgbe_read_pba_string_e610(struct ix=
gbe_hw *hw, u8 *pba_num,
>>>  	return err;
>>>  }
>>> =20
>>> +#ifdef CONFIG_DEBUG_FS
>>>  static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, =
void *buf,
>>>  			    u16 size)
>>>  {
>>> @@ -3952,6 +3953,7 @@ void ixgbe_fwlog_deinit(struct ixgbe_hw *hw)
>>> =20
>>>  	libie_fwlog_deinit(&hw->fwlog);
>>>  }
>>> +#endif /* CONFIG_DEBUG_FS */
>>> =20
>>
>> What does the fwlog module from libie do? Seems likely that it won't
>> compile without CONFIG_DEBUG_FS either...
>=20
> Right, it shouldn't, because there is a dependency on fs/debugfs.
> It is building on my env, but maybe I don't have it fully cleaned.
> I wonder, because in ice there wasn't a check (or select) for
> CONFIG_DEBUG_FS for fwlog code.
>=20
> Looks like LIBIE_FWLOG should select DEBUG_FS, right?
> I will send v2 with that, if it is fine.
>=20
> Thanks
>=20
My only worry is that could lead to ice selecting LIBIE_FWLOG which then
selects DEBUG_FS which then means we implicitly require DEBUG_FS regardle=
ss.

I don't quite remember the semantics of select and whether that would
let you build a kernel without DEBUG_FS.. I think some systems would
like to be able to disable DEBUG_FS as a way of limiting scope of
available interfaces exposed by the kernel.

Thanks,
Jake

--------------smF9G07sdYrvZ0u3pwMDJcba--

--------------J57rpQimf1BuD4eDM7r0s00O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaO/avwUDAAAAAAAKCRBqll0+bw8o6NZJ
AP9UNT3BNk0Hhb+B0mSZLGcPuD99mmab277kNqLA8URpsgD7B3fTvE4+0Cvuyjnt8MVEQkTTX5A5
7wdrNl8PXnLJoA0=
=U+ki
-----END PGP SIGNATURE-----

--------------J57rpQimf1BuD4eDM7r0s00O--
