Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDA6CB7484
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 23:18:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4CD06071F;
	Thu, 11 Dec 2025 22:18:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nNQ5lPJdSCX0; Thu, 11 Dec 2025 22:18:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C39E660754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765491497;
	bh=te6vvK5pYCJ8QGRpWOsSpFOCvIqtxrffGcWX7Tl/whU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yn6hnPOQ3KPWB1h/EWyt2blvyJJhycGD97N1Nd3rETXHfyRN3yd6t7mENqEN2ivoa
	 mq/9J2lEbqUtQ8ZjMNzMHIjbYV5883Y5+2sYdItwVcG+AOnU55R6TLTu7rCkhHkio7
	 xj1hMf+WlDcH23keW9cEbw8H04IiXp9IEn8um588pHg58qYh+Qv26gPdXncpMewN1t
	 Q2Wan5tdfggQgOHT2EnEJMagvYPM4FM+SQFQcN9VnSf0+rDn6qXbht+bTn5pxk/69m
	 dxs2sPPhHIv7c4A8JyPlxRHuTLqn7fnl6eeJ1g1vJlViACmUkTGdeL5GyrfHk64PFT
	 sHWjri4cazPZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C39E660754;
	Thu, 11 Dec 2025 22:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 728A42C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 22:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A3AC410C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 22:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AQqU5KE_WVmi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 22:18:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A7D30410C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7D30410C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A7D30410C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 22:18:15 +0000 (UTC)
X-CSE-ConnectionGUID: FLOuqe8pRymMtQLWZ4UBrw==
X-CSE-MsgGUID: Ie9mVfYlT3+m0NOJqoOEuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="78105410"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; 
 d="asc'?scan'208";a="78105410"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 14:17:57 -0800
X-CSE-ConnectionGUID: 35AR3RJGS/ySO9kSubgkjg==
X-CSE-MsgGUID: CEKYiDFNQgWFBhFc59aDPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; 
 d="asc'?scan'208";a="196815869"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 14:17:56 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 14:17:56 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 14:17:56 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 14:17:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1vG43QCfl75Yq1WvWQKS3cx7w2YZ2+ecCFHu+tKxqsrvLLhN/j+0e7ormqaqlCbrcxZwKdEjWYLDn4ZDl6u4M/nnZOw9zIkrOgIcZzhJGI5Y7kdRkIyxgf8iyi82awglT7aw8a1tO6YGXW4bjn3rZgwmzeI0xl5ZWfzqXhRlu9CaSxkOBHoGAh1bsgwyPAH3ttasB8nzqqL1F0+2LYVaErORcyrnKqXRQ3b6MLffapwQzJLIDcd6aMxnAYan9Cf2zq1RDn9JYyc9eGANLssjSAKweWdc6bzpMPeIFqFXN5zk/v3z0ix5xbdXA7qQI1ch2+QN2QoO51e6tiW41UCug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=te6vvK5pYCJ8QGRpWOsSpFOCvIqtxrffGcWX7Tl/whU=;
 b=n+i2HKm0oURCLEUmN4Txcz3EUkkYjMzULVLLp+SY80iEZSDDDL+7qKw2H1fqEmh8a0V9P6osowJiBK+G4Ma6wwNm+9BxgomwoRSCtXI7eRIE1otSX7LgD4zAgUKFfhPwVi3PbTROmOwX8reOPtB9Nar2aK3CJWENOhWZu5A1LZZwnb/OBxf93nsAa5Z/9S43u4qbwSu7FfeL+987p3MjEk/HCasSzkHYwuTfXwTEQNcNqKp4iehL3T1NuOO4WasgRkm39SHAHLUFxbdzhwKpFDmuDnL7C3jM9SXdthNIILpjlYg31MuDiW+jX0pNEcIJN7tiuSs1LkbassELyLyOGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Thu, 11 Dec
 2025 22:17:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 22:17:53 +0000
Message-ID: <0dac6185-83e3-4963-b38b-48681affb929@intel.com>
Date: Thu, 11 Dec 2025 14:17:52 -0800
User-Agent: Mozilla Thunderbird
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>, Netdev
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <sdn@hetzner-cloud.de>
References: <672ab222-db78-4cad-821b-19256a7a4078@hetzner-cloud.de>
 <67a5ef2a-83bc-4b35-9eac-5b9297dfeb2d@intel.com>
 <2aca9aff-1d96-43fd-8125-290e7600915e@hetzner-cloud.de>
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
In-Reply-To: <2aca9aff-1d96-43fd-8125-290e7600915e@hetzner-cloud.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HyxiiTRQYgxJzAXybIdRgj2J"
X-ClientProxiedBy: MW4P223CA0002.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH0PR11MB5265:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a754660-71df-42b2-b40e-08de390320ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aW9KalZoTllKOUpvbmo5bVRFWlg0LzczWmk5N3JBa0kyNGRSazhOQWlCU3FG?=
 =?utf-8?B?Ukd2R1ZCYStuS0xVOFluVkJwanJSczJOUVJ6a1V3TExpZXBxaVlKOENKMG0y?=
 =?utf-8?B?eXdGaDR4M1hJU3pxQnBuTzlaSzl6VmJnS25YYnc2VnJtbCtEMWhEU0lPNDNl?=
 =?utf-8?B?WHo3bWlncjZyUDllc3Zlb2JicExPNGJIQlRZKzl5NllCd1pvdElPcTFHQkVT?=
 =?utf-8?B?aExOT1h2c0hvTXBLbEpLa1V4M2NJeXgydHI3aHg2L2J2ZUtOTjZWanFJUEE3?=
 =?utf-8?B?SUMwYlZlb3h2WjZoRDQ5ZmJKZDh3dkVZaytNaHR0NVo5cHMyZURaUm94L28y?=
 =?utf-8?B?S3NBUTVpaFBqdTJlSUJUbWg3bFMrSnVjOU5zQTJlOXVwQnVZRVVsMi8rOUpw?=
 =?utf-8?B?TW1jVkhmc0IzS1k5bndoR0lHek0wc2hCRUdINGdSclc0c2hHOTR3YU1uWFlS?=
 =?utf-8?B?ZTNlUlJvR2laY3M0cEZEcDJjSkIzZmxVdzNITW8xN0R6SG1pUFNzOTNJTlZ1?=
 =?utf-8?B?dm1COGZKV3VKNEN2a1lmYVZ2UXpUQmpkMGdZSDBmYmppZHZ1VEpjQ0NRb3Nj?=
 =?utf-8?B?WTg0U2ozMExtWlpNTVVLb0ZEU2xOWEkwOUJnWTA5TTZLRW52Zml6M05iRnhu?=
 =?utf-8?B?L2lCclJ0YkVSbjNyS055NmNxUU9pZkVOcW04QnA4Q2RLdjJpZ0UrUGptczB1?=
 =?utf-8?B?dStFNkRjNFdWSUZKNVk4OEJ6c01ZZlVWZ0lpWFQyRklEZy84M1ZLMmdLQW8v?=
 =?utf-8?B?K2xiVTFSdk5qankzakhyb3JLeUErS0FKKzJ3NkMxb3BvSE5YUG9KUHo0djZq?=
 =?utf-8?B?eDl5UEdhdFJjcVhCMVRBaWZHUm1TMllBZUVDYUtLOFEzZXJYSElxeVBqY3I1?=
 =?utf-8?B?TFZ1OWZ4SG92Q2ZCK0tYanhFbG5uek5GaXdjMHlBcDFiZXowZS9kY2VGMjA0?=
 =?utf-8?B?dXE4SzVDV1I4WnBPYUdaWnpkY2EycmtQdVB0OVZNZEtLRkhtbkgyanBaczU3?=
 =?utf-8?B?UzZjQisyR2I1M0YrTlNBVnZ1NEJrT2xxRDJvanV3K2dqbjRmUGZxaU9JVklw?=
 =?utf-8?B?MlZzZzJKa3NyMEExcXQ2Q25WcEE5YUZnMzZyN1EyUmJqRWJxYkRUQm5BMEhI?=
 =?utf-8?B?UjIxb2tjUXpzb29pVWxWZGp2a2RJd2Y1Ui9PWmxNRWhsTkNVSEhmd25JSGl3?=
 =?utf-8?B?bEVwcTFKK0F1Y29iVjM0TWU2ZHZIYmtFSDc5ZmVGcWg2TkszWElZaC90Z0FG?=
 =?utf-8?B?dmNJUm14c1N2TXg1NkdySk43eGZleE95NDhpK2lRRms5R2ZrZWFUTmdiV05h?=
 =?utf-8?B?YkRRWFE3bmREd2xyaHNTQzIzd05qMkVqQlVEelQ1ZDB6anVYZFlFMnlJWlhG?=
 =?utf-8?B?K1NtNGYwN3g3QWJnUldlQmg3dk80cTh2WWhuVzdzbVlOZEx0dXRRZ1B5ZGpI?=
 =?utf-8?B?cm52VTZSUEhCZitDV1lPajhoSWRsNmVyZWlLSjhvQnIwY0RZa0ZiYXh4bnBW?=
 =?utf-8?B?SXpzMzFFNTZmVUNkdVAvR1R0YTBRc3JmelNlUlhCYVhwYmNyTi9nZGZMQW1Q?=
 =?utf-8?B?eTBxNzBoNFdWQ2VCUUM2WHFtRCt2SHFrUnJnNldCL1RUNG9pY0RJVGNKZ0Vp?=
 =?utf-8?B?Y200dUtsWjdBSkFzZW81YUlzQkYxM3o2am1LbXR3dDhFTHRhWGlkRnpNWTRU?=
 =?utf-8?B?WWJNWUw2QUNhVGFVSlVuNklnL1U3N29VSVA1RUFuclpoenlBNGdiUmlCODZG?=
 =?utf-8?B?M21WSlFuek5vNlBVYm5OYWVneEQ1QUtBN0x6N1RBcTArWDQ3eWYrRjRMRk9T?=
 =?utf-8?B?Mkc0bkFYT2t0cHc1UGo2MG1ZV1FKMXh0UklCbHpNcXV3c3pBUmMxcnlOV3NN?=
 =?utf-8?B?RFN2elgwL1pvQzA1eVVUc1daKzd3RTV0MDVFUmdpZTJwS0k2TGsyR2pJM3lq?=
 =?utf-8?B?d1lWVHNEMUVzZ2dnZUtycXZSQkFNVWFWQSt6M1lTc29MU3lQWjUweVVFaDRB?=
 =?utf-8?Q?lHiZ+BWclqTvBQ08ddaUdDy+Y6FGtU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SytQVXZ6c3hzYUM5V2EvYUg2ZU1qVGE1bHk0RVhjMjd5azNodmxONXpiQXFU?=
 =?utf-8?B?ckNJNFdZSkFSSlhPWmpHdXBqNmZmaXhVa01hUVVCTkdWU29HTTFjZm9nOG9w?=
 =?utf-8?B?OWJUcW15eE0ycms0a1ZIVVVhdlIvUzBBRVBMa0VyWTh3WUllS2QxOUoyOW1P?=
 =?utf-8?B?c1RtaFZBcHV6K0huNjFVbmMvNWQwa2pXT2N2aCs5N3ZESjloQVFOakU0ZVZt?=
 =?utf-8?B?TE5yT2lLYm94MXFNVzJyeGpnTG9uTTFVSUxMUjhKQXE3MnBRZ1BXTmpDUjBp?=
 =?utf-8?B?Rm84dWNvSGRwbjdvNlI0bnJIVjFQY2hQZlFncG1nSEtoN2RlQ1ZDcWs3MDdL?=
 =?utf-8?B?QThlSWtQRWpWZUZSNEFWMThybDJCMm9GbmszbzhxVjdlNXFYSVlGcysyTWJl?=
 =?utf-8?B?ZjdvN1pXL0x1Y3E3bDdsV3dLTmJxeGs4OTZrN0xvOFd1YUNndEF0dUU5V1ht?=
 =?utf-8?B?MDlLcnBpb21qTHZOdGJCSkJiRkFkc0h1c0FvdjJtYy8yY09ldE94dnUrMWEz?=
 =?utf-8?B?aDJTWVJ0bHlWMTFEUEpqVXhZSjFKVFlvQ1J3ck9OaE14d0IzVmJyTlVqaXdq?=
 =?utf-8?B?TEpEc0d2ZHZuUmpJZW5QdzNmTWVRQW5NbHY0SmFVd3dhSzZ0UG9BbTByWjJp?=
 =?utf-8?B?REN6YUpVbnY3aXhUWDZiU0NYNDF1eFpIU2JrOW9EaGd1Vi9jTVJUSEhtd25n?=
 =?utf-8?B?VHlQU0UxUkhlNW16TXRlRXUva3FPQnZ3MDB2R29XR0FoR0g4U0c5VzBDM2Zv?=
 =?utf-8?B?dTcrdlUrbzVBY1cyaURmYTdNbE9VcHpXVlVyM3hLWnVlU0RURVVyc1Q1b1gz?=
 =?utf-8?B?Ky9nVnZJQ0l4OVc5VVA1TjYrTkJTQ2dEN004TmM5Tis3TDVHQ0p2d3pSdHNK?=
 =?utf-8?B?aFAvVFZLZXdiZXRMUmtTN3FIZzNyOTNteU9oTW5uTnVnRjhhMXR4NUFGWTdw?=
 =?utf-8?B?cDNTT1Zld0s3WkFuZ1N1WVYwRFRnUlJJcm81dnI1aUxxMTkrcVk5R2I4NFAz?=
 =?utf-8?B?d010Z3NrY0tDTmJQemtrR0ZwakZ6amZTbW40WTJ2MXdrU2JTcVBLRUlKdklK?=
 =?utf-8?B?bThNUENZamo0Z1lHZk1kcGd6YVcxbFJhYlQ2NHE2Rk9KaktsSGdhemczN0VH?=
 =?utf-8?B?VUc5TjRSZEVIcFhmanhJMThzMktxVEkrNXRBUHJid1d0RWVEa1RLWTB5Mk9J?=
 =?utf-8?B?N0Y0K25CZno0Qnl0SEtsSVlUVHBVK1RoQjc3Z3U5MHR4MXVEbUpqQjV3cjJ2?=
 =?utf-8?B?dHlNSEVXZDhmZDNKNFdUZVZpY3ArQjJzVHcwL1pHU1QrTUtRaVJNQVJyU29v?=
 =?utf-8?B?empVc0tZUkJOdzhFb2dyajhnRHhnaDR1bWx6bVhzR3czcXowWEJHeWRjMyt0?=
 =?utf-8?B?WVJ0aDViMWZNY1gyZjA3eFdURG94L0p2WElDbTJwbHBmbkFxUjAydjJTZHZK?=
 =?utf-8?B?SW5SVVdrQkt0UVJ0UGM5aEUyUW91M3kzdGswSFNha1RscWJTSFpVU2tYemNq?=
 =?utf-8?B?S21GeUx0Qm0yUGx6bC80c0Vicm1hMjMrakM4SGFXb25OZVFXUDIxdStHNlMy?=
 =?utf-8?B?N0NyS0Q0NStGaERML0x1Y3lKcENUYU5jYzhZWG85QzlRY1hoNHBTSHFydGpL?=
 =?utf-8?B?NENzejNaaEZFMjZMQXJsNElha1lpbkU1N1NvbTVhVWkzUk5tcnBFdXdsb3V5?=
 =?utf-8?B?R3hBMEhXczJJUU9EZVZIZnc4S25jSWkwT0RDTjJDTkljMmFsNVQwR2prazZH?=
 =?utf-8?B?ODZHbDA2ckpSZlZ5a1c1TkUrMHNzdUVySll3V0dUK1VBa3FQbmEzaUUwSWd6?=
 =?utf-8?B?QktocXhOci9naGNhU2FNS3YwK3VxcDd3R2Y4cGVOTjJVSEh6eG1lSFF3QVNX?=
 =?utf-8?B?Uysrc0tWcFRlMXE3TlFMajIyVFprbWY0alBBVS9oQUR4T0Rrcjk0bXFBZUxS?=
 =?utf-8?B?UW12ZmkvMDFDMEZST2grOC9VV0tvc3Uzcm0reGlDSTJsbVdpL0JXcUZWbkRh?=
 =?utf-8?B?dTZCd3FWTlQ1UGkybXJZeXE0dXJscjZ6a0duVzVNWWhQNzh5MGllcXNTY29Y?=
 =?utf-8?B?aTZxS3dOa09sa1RGUmJsWVlUN2NEeHpUaFRzM2VZNTJ3UmRHemdTK1NZRSti?=
 =?utf-8?B?bXJ0Q0JQV0JxT2NJL0Y2OE80Uk9rZys2YTYxbkkzWEQxRVlVcGlBTGxtbmU3?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a754660-71df-42b2-b40e-08de390320ba
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 22:17:53.1088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y7GXD2ONCn98/p0PwH5R79PaNTwp6JRTc7wOQQwb/MfUfJkBNdQ3NCdLq+/e79aUfErBJuCVk61rtT2xvsgAhzNZshhsY2U/rMSIRe7GUHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765491496; x=1797027496;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=+y8MqwYjM7Nc9c2W/P4p33DCuVi8LGz5eOJxlXYu+lc=;
 b=KmgODkF9tfV0wKD96la+pJjPfxJdvXmtiUyALfO4dCTsLG0huQDmtk2P
 pQCjCnvfttwtS4J6M5NXoDjfxQ9bG3190ai5vuisCuJpfrFH5Tc1DQK8t
 uzfUc3MOlkHT9/0EuKgQ5tmoNPGbhVlI51pv2mNWGTwzGfj6ghMrw+Xtk
 9tYaVxT+o7TxTAigVw4kjh7+wAlrL254La2vv2UbfSWJZSHNAT4JKi2Tv
 QN3OQwCZ71yVUayHmBTX7QjM8eOGbPJ/qTqmLY9YPUdsh3j0TOd1bX/bV
 hbK7v/FcJ0Ewq4+tIBWNfSzepDS52v1H4ooppylzo9VXbB7G5SVyqaIAC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KmgODkF9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] ice: Temporary packet processing
 overload causes permanent RX drops
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

--------------HyxiiTRQYgxJzAXybIdRgj2J
Content-Type: multipart/mixed; boundary="------------JgLKAhulIwHrNin0IbMsxQDu";
 protected-headers="v1"
Message-ID: <0dac6185-83e3-4963-b38b-48681affb929@intel.com>
Date: Thu, 11 Dec 2025 14:17:52 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [BUG] ice: Temporary packet processing overload
 causes permanent RX drops
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, Netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org
Cc: sdn@hetzner-cloud.de
References: <672ab222-db78-4cad-821b-19256a7a4078@hetzner-cloud.de>
 <67a5ef2a-83bc-4b35-9eac-5b9297dfeb2d@intel.com>
 <2aca9aff-1d96-43fd-8125-290e7600915e@hetzner-cloud.de>
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
In-Reply-To: <2aca9aff-1d96-43fd-8125-290e7600915e@hetzner-cloud.de>

--------------JgLKAhulIwHrNin0IbMsxQDu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/11/2025 10:00 AM, Marcus Wichelmann wrote:
> Am 09.12.25 um 01:05 schrieb Jacob Keller:
>> On 12/5/2025 6:01 AM, Marcus Wichelmann wrote:
>>> Hi there, I broke some network cards again. This time I noticed conti=
nuous RX packet drops with an Intel E810-XXV.
>>>>> We have reproduced this with:
>>>   Linux 6.8.0-88-generic (Ubuntu 24.04)
>>>   Linux 6.14.0-36-generic (Ubuntu 24.04 HWE)
>>>   Linux 6.18.0-061800-generic (Ubuntu Mainline PPA)
>>
>> I think we recently merged a bunch of work on the Rx path as part of o=
ur
>> conversion to page pool. It would be interesting to see if those chang=
es
>> impact this. Clearly the issue goes back some time since v6.8 at least=
=2E.
> Hi Jacob,
>=20
> I guess you mean 93f53db9f9dc ("ice: switch to Page Pool")?
>=20
> I have now repeated all tests with a kernel built from latest net-next
> branch and can still reproduce it, even though I needed way higher pack=
et
> rates (15 instead of 4 Mpps when using 256 channels). Something about t=
he
> packet processing on our test system seems to have gotten way more
> efficient with this kernel update.
>=20

Good info. I'm not certain if the refactors to switch to page pool would
fully explain this, but we did have some big improvements for certain
workloads with the switch.

> The symptoms are the same. The following IO_PAGE_FAULTs appear in the
> kernel log and after that, there is a permanent packet loss of 1-10%
> even at very low packet rates.
>=20
>   kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002b address=3D0x4000180000 flags=3D0x0020]
>   kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002b address=3D0x4000180000 flags=3D0x0020]
>   kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us =
4 times, consider switching to WQ_UNBOUND
>   kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002b address=3D0x4000180000 flags=3D0x0020]
>   kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us =
5 times, consider switching to WQ_UNBOUND
>   kernel: ice 0000:c7:00.1: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002c address=3D0x4000180000 flags=3D0x0020]
>   [...]
>   kernel: ice 0000:c7:00.1: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002c address=3D0x4000180000 flags=3D0x0020]
>   kernel: amd_iommu_report_page_fault: 10 callbacks suppressed
>   [...]
>=20
> I experimented with a few different channel counts and noticed that
> the issue only occurs with a combined channel count >128. So on
> systems with less many CPU cores, this bug probably never occurs.
>=20

Interesting that it only triggers if you get IO_PAGE_FAULT.

>   256: reproduced.
>   254: reproduced.
>   200: reproduced.
>   129: reproduced.
>   128: stable.
>    64: stable.
>=20
> Tested using "ethtool -L eth{0,1} combined XXX".
>=20
> With <=3D128 channels, only the "... hogged CPU ..." warnings appear
> but no IO_PAGE_FAULTs. There is also no permanent packet loss after
> stopping the traffic generator.
>=20
>>> [...]
>>>
>>> 3. Stop the traffic generator and re-run it with a way lower packet r=
ate, e.g. 10.000 pps. Now it can be seen that
>>> a good part of these packets is being dropped, even though the kernel=
 could easily keep up with this small packet rate.
>>
>> I assume the rx_dropped counter still incrementing here?
>=20
> Yes. After the NIC is in this broken state, a few percent of all
> packets is being dropped and the rx_dropped counter increases
> with each of them.
>=20

Right. That's quite strange.

>>> [...]
>=20
> I also looked into why the packet processing load on this system
> is so high and `perf top` shows that it almost completely
> originates from native_queued_spin_lock_slowpath.
>=20
> When digging deeper using `perf lock contention -Y spinlock`:
>=20
>  contended   total wait     max wait     avg wait         type   caller=

>    1724043      4.36 m     198.66 us    151.66 us     spinlock   __neti=
f_receive_skb_core.constprop.0+0x832
>      35960      2.51 s     112.57 ms     69.51 us     spinlock   __neti=
f_receive_skb_core.constprop.0+0x832
>        620    103.79 ms    189.87 us    167.40 us     spinlock   do_sys=
_poll+0x26f
>=20
> I'm not yet sure what is causing this.
> I don't think it's related to this issue, but maybe that's part of
> what brings this bug to daylight, so probably still worth a mention.
>=20
> I hope you can make some sense of all that.
>=20
> Thanks,
> Marcus


--------------JgLKAhulIwHrNin0IbMsxQDu--

--------------HyxiiTRQYgxJzAXybIdRgj2J
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTtDEAUDAAAAAAAKCRBqll0+bw8o6MOi
AQCT6CBw+ff4/4l2Wc/TAhGl0fx2PnPlQ3dZBHeZ7Hob4QEA86oNh040EORpUqntLRbMHRDxkwv5
ZUbCwKZ5bUeCOwg=
=ZEhl
-----END PGP SIGNATURE-----

--------------HyxiiTRQYgxJzAXybIdRgj2J--
