Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD00B161C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 15:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F3C883CF4;
	Wed, 30 Jul 2025 13:48:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hH6oYXBl-45Z; Wed, 30 Jul 2025 13:48:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F4F683D35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753883282;
	bh=R+viRGUskaW89pIsDL1oHLOacUEuuZRhuJ/oBfaDJqI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BOJn7mLNLDNQ/6MIdUjJQo4/i3iZvQKnXqVxT+Zge1bumgWBldIkS4gr1xZnu7+Im
	 p/LglmycH8Db+A5NBimcDNsTJA7/LeGi/0iQqPI3PbHpFv+2d+it1cVnApuUoGFVyN
	 aSBtZeehKXjX6Hi63D9Co1fHqJ/lvjWOCRk9DhcL1hsDY7eBfLyMl7PJ4jbbZFplvl
	 vS4ZQZ41HYq9ffSW9lSFmki4eeSKPi6/36rqUbjZ+QE7WH7ZKWPiXCIYG0iRRrVcTQ
	 eYbpWKLGRGAUXfUE+jXDuaSCfO2vffhggbZBI/2VwX4RbCiLZkIXBOA7CI5t3kEmmu
	 nlsF+mASrD2+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F4F683D35;
	Wed, 30 Jul 2025 13:48:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B49A216B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A656F6107C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:48:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id koq5QdhD0YC5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 13:48:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.42;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=gal@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EAA2661058
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAA2661058
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2042.outbound.protection.outlook.com [40.107.243.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAA2661058
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:47:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p8N7pltwt4QOnFQCMtrwhlM/hAWUsqrQc64heNNgE1F8h2xWUANATqHxOokYDPKGX0k+cyZkAyDBAJN4+CF0heQJN/ryiK3W6fLx6Bats50OIrNBu+lk5ctCUEH+efdw7NAgLkjXEmKWAZvS6GM0U46CFCaULYWnxu/GN/tvVXsdJEKUfvSZNhOW+ewKQ0N8a6kybJKNk1LbhD4Hq6z86IGyriiBaf7oV0GB8ZDSc4q9Uq8UQee8m2MApaafQFkOnTAscqMY+WE/W+oCXZ3lqvs8Hbe6wnJCEv/gVo7Ooranyx2kci7vFBKO1IUaIFgIsXiAQGgnr/5qkH7FrALtdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+viRGUskaW89pIsDL1oHLOacUEuuZRhuJ/oBfaDJqI=;
 b=Vmm+r8fW+aZIqT+0/2w5Jc8VN184pSZWHml2KQxVF+jcYr55cN5RC8oq49rPnxwDwQrIyYFDKUNdupv1lR824NMlI/p1hNteCOFBx3Pgms5315V6Ds/f7xJz+XAdUaQn4U/i+AS0mJfeUS2CvNIKU5MUflOyu4YhBYXRUj1GFXMb9yqLQcjG4BNotVqiWwXfM9B5GgZMt0cjQJlzKwRW/ajAMhsso4Jd6m/uFk+uCTENvxIgPZaWkyIzcXiNL4atuWbXoXsFxFgWTJGxPlWBbWiPpwm4gGMpl1nkSIYcDPS02eLSpGtSN0oJhl/VFOG95pHb7hclzBOvb7D712f9rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB7500.namprd12.prod.outlook.com (2603:10b6:610:148::17)
 by CY5PR12MB6081.namprd12.prod.outlook.com (2603:10b6:930:2b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Wed, 30 Jul
 2025 13:47:57 +0000
Received: from CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2]) by CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2%6]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 13:47:56 +0000
Message-ID: <2dc1fc35-a906-461b-b8c1-857c240604a3@nvidia.com>
Date: Wed, 30 Jul 2025 16:47:51 +0300
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <041f79a2-5f96-4427-b0e2-6a159fbec84a@nvidia.com>
 <1129bf26-273e-4685-a0b8-ed8b0e4050f3@linux.dev>
 <3e84a20e-87ea-413c-9e9d-950605a55bf6@nvidia.com>
 <8b22e9d3-e4d2-4726-9622-28881b2cd406@linux.dev>
From: Gal Pressman <gal@nvidia.com>
Content-Language: en-US
In-Reply-To: <8b22e9d3-e4d2-4726-9622-28881b2cd406@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0030.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::16) To CH3PR12MB7500.namprd12.prod.outlook.com
 (2603:10b6:610:148::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB7500:EE_|CY5PR12MB6081:EE_
X-MS-Office365-Filtering-Correlation-Id: 35a74a8d-c047-463a-a6eb-08ddcf6fb069
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QzFxQlBnWmJSa0NIdmlteDdieXJ0QkFZbDBQN1RkdHBQendrTExKUjdoTTFO?=
 =?utf-8?B?TUdoREw1WTJ0OHZaK0Fuc3h1em82MEF1STNSQWpWUGtFcW9UTnhjSHVlQmwx?=
 =?utf-8?B?RnhvWWxVUklVdEFVM0Z5UDBSS1l5em9VcTZQdlNZSjMzMXRRdWpmbDQzZGVv?=
 =?utf-8?B?MmJyOENuQit4cDlGcXM3cmtsdlAyZTRzbXdlNFpnZ01QNTNtdEU4cW9tZWJn?=
 =?utf-8?B?a3c4M001bFFrL3p2aFRTVnh2VjFHdm56aDlBRWRuYnpGM21hb0VSMGhkNHZq?=
 =?utf-8?B?QjVWZnk2dko0VXRuZDZDWmh6VGQyVkM4MWxocWFHaVlpMFFkU0NuNUdtNC9V?=
 =?utf-8?B?c1lNYUd4WXhabm1lWUFCSTYyNm92Y0xPSjBuVS9mVzFnclRSOW5sREl0M08v?=
 =?utf-8?B?RWtzWjNvM1pjSFFFNHhCcWoramlpV1hiSFdIZTQyVVdadzZDUUFpTUtOQjFo?=
 =?utf-8?B?d3Jsd0VNK0t1NE10YU84N1ZJbUZXM1A5QlNYM3U0RFVyOEw2bS9lZ3hGWFdK?=
 =?utf-8?B?V0dZR0k2YmpaSEg1WjBTWUdMemhuQTE0bkV5cTZlRTZvaUcyeHZMODdPOE5P?=
 =?utf-8?B?N0lMalJJRWRrU2JkbzltV0V0eHRMV1RvQ1JZVTBUOGZqbFEwSVUrS1pJT3U1?=
 =?utf-8?B?NmUvMGFMU0xocGFFZGIvRnpMaWxGekViUzJwN09mR0Z1WEVNSzMwOTAvYkJF?=
 =?utf-8?B?dmVjVi9kcEJydm1vWkVxdmE5YkZDQUtqamh4TDhWMjNXMEJEWE5UZHIzNFFS?=
 =?utf-8?B?QTNqZklaZXlWVzkwK0JYbTdrV3R0OVozRjZHQys0RHBrdEhxamtJcXR3N2VR?=
 =?utf-8?B?MDN5UHk5OUU2ZlBMWUhwWlNPUmlXUzVkdmFEZitvb0V1ZWtSSk8xZ2pFbkRv?=
 =?utf-8?B?b3RGTkZtTUZIczQyY2xMR1h0UmxKR2JkL1d2ZUtkMlUzOGc2RFR6Z3F5cG4w?=
 =?utf-8?B?eVVQWE90K1JveVJWWnU1UTAwK2ZkZWRPbEVSamd0TkpNOGlUeTBXZXlYZitK?=
 =?utf-8?B?bnRuU0tTWHd4YnZPVWxtdEZiTkl5SThFZGU0RDd5S2dEeWRCTUFjYVVOK2Vj?=
 =?utf-8?B?Q0ROdWNPWlBHb1BLeEhqUXh0WWJmZ080ZHE3R0dHN0taSDdMUENMbmNmNmxy?=
 =?utf-8?B?bWMrdHl6czRtLzRFN2Fpb1hlNmxqLzVucTVLa1NuUy9iYmxqdnFiY3lHSC95?=
 =?utf-8?B?MWlQcCtvQ1IwWnR1TDd5VVgrZXRObzMzTUp2cEwxUmMvV283VWRQNjRuRlBQ?=
 =?utf-8?B?TFNlcFBKemgxd1VwQkZjOFoxSGpWRm5MUGpkZzRJSDJPT1podUg4bWwrV1Fs?=
 =?utf-8?B?RDdGOE50em9nTmtpN0hVc2dyOWQxVkpvVEJTWG9IZENONFFmSlZzZVpvS2J2?=
 =?utf-8?B?MHFpaW9WV01uUkpLL1o1TTlNOWkwOXVUSFlhdkhoOGxXMjlDakRGZjhnQy9p?=
 =?utf-8?B?bythYW5wNkZyenNNWmVFem9FOElkUC9oWUZ5eHNSSGFGTi93OUw1L1RtdE9F?=
 =?utf-8?B?dnkyT3orSDNMOERpdkVJUEF4Vjhsc1VzTi9VZnR3UUphbkxyZnl0dUlCeEVm?=
 =?utf-8?B?RWhUOG9hZWYvY3U0TzJwcER0ZlNSaFZHSU1CTjNNSEgydVZGd0JhOE5rcytU?=
 =?utf-8?B?NGdwM1YvTnBSbEE4S0g5RWoxdEJoM2plcTBUYWdBZ01peUhNNEEvWW40TjRo?=
 =?utf-8?B?aWFRTVZITEFNYjNmUTFhNU55eVVjeStNb0R1MzNHeDdGRWFsdjJHdzdRK0VO?=
 =?utf-8?B?Q25Oa3hEOFFrc0FHSk1aQzNGMm1MVGU3RFU5THZqbmdERkpBV25rVmNkRzRz?=
 =?utf-8?B?MUpyY2xaQkZQNnpWRVlJT09qQmtodzlJSUZKSG5TM3piYkVGK0ZhTEZZdmV6?=
 =?utf-8?B?OFhPRzZzdWxQdlRxYktRS2xHaGJLT2M4UGs3M0U5ZlZCQVNWS1RyT3h4OHM1?=
 =?utf-8?Q?W0LixWclHy4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB7500.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3gwdVJCekphdDJpQUhWNVJGdUU5WFpXU3kwdVZGRmZZM1RBTnYyNyttK3pB?=
 =?utf-8?B?OHVxQXVJSjBaYzZ3eDV0VCs0bUQ2S2I4VTl2ZHFvOXhxWk1rWlliZm5jMlBW?=
 =?utf-8?B?MDRodHJydmR5ck15bTJSaUtPQmp4bUU5THFrTkpRdzQ0TjZMem03cDhGVXVC?=
 =?utf-8?B?eXIzU1B3M0xScXdTeU5uYzVMVExpTkFUVXcxSnMzS05FcjBkeGoxOXp5dnQw?=
 =?utf-8?B?MFdKd29ocDRFbkVIcXFTODJSOSttc0ZRb3lUbFZXRlJnSUN1UGlHSnNRVDcr?=
 =?utf-8?B?K1E2SENvV2syOWdMSnYyM05VMHJyVW9oYnl3N2plQUR0OW1SNEtRckdMK0x2?=
 =?utf-8?B?SmpsMXl5T21IOGI3S1Z3Wk5CaGJvZmxvZlVzaFNBcDVBOVdHQWxxaUtSMkdM?=
 =?utf-8?B?djJqVFNwTHUrZGhsZldZQlB4eFM4K21HK2MwZ2xnNnhqaFU5ZXJGQ2tZT29x?=
 =?utf-8?B?YVFXSW9FZ2RVdk8yblZncG5WbEQ2SWNhV0RacmozNHZwVk8xNVJXMXp1QXhy?=
 =?utf-8?B?SFM3SmJra0RXSkFFMERmREduNk9UWlBZU1VhWTdIMWlWcG5wcnY0THpmTFhD?=
 =?utf-8?B?R0F2NlNnUHg0cExtY0FrOFF0REVOV1pRK2dNNUxVNzBXZ1hVQk42VVN3aHh6?=
 =?utf-8?B?cjBiNW1WWFQwd1VIOGtza3BVL1Y5OXpEOTN4Q3o1dkVwU0F3MVY4RWZuTXJW?=
 =?utf-8?B?Q1E1UUR0YU1wcGFiaEFiUVIvVnhpM1JVenZobWk3MUFQUUY3bW9ZSG80KzM1?=
 =?utf-8?B?a1E4OUNrTUk5dW9xRS9ZVldUeHl5Tit5TzJoOVhHb2sraER0M1luNmZnUE1q?=
 =?utf-8?B?RVFZa3pyakIxSlRoSHEzVjlPSzRtVWNPNW1lRjVMMmFrVEFuYzl6a0JTbk5a?=
 =?utf-8?B?eHUyMFh3TmgwSngra1JXS24ycndremJJTDZGWXB4czhBWnlSbnRwODRCZFJ5?=
 =?utf-8?B?N1ZFeWxRUTNsdFJYejkxK01GWkkvS044cmZhLzJhT3k5ZDY1eHhJN251Q1Jv?=
 =?utf-8?B?WTZYSytNMnJjek5lU3FKNDJRYXJ6ZndOeUZPMU45aU9RWlZFTDZhaWVsaG5S?=
 =?utf-8?B?OTh3dnhKT2VhMmVPUld0S1RHM3Y0M29yQWxQUUo1ay9lOW8yTHNTcmpQdllF?=
 =?utf-8?B?a2RxMkdvaUJYWklFQ3I0N3BVNUVTMkpERmpMaytuTzZmSFA0eG9GWE1MTERy?=
 =?utf-8?B?cjRBSEdPRnpmV2JKVi90cmp4V0lQdDdMNmgzdG1VemI0L2xDUTY4RGtEbDAx?=
 =?utf-8?B?dWNyaWcvd2F6T0JrNnBKakVrNzZpaDRFTWtucHhlZ084WVVRQUZFR2dRQWlI?=
 =?utf-8?B?cGlIQlZYQnUzSk1NU2QzZ0VHcjVILzNMa1FvcEd5aXgwU05qSWhGeS82NXdM?=
 =?utf-8?B?VEpFOW9aRm9TRjhPd3QzWjdJTWR0bFkxd21EWENJSWtYVUQzeDYrVDVSWFY3?=
 =?utf-8?B?cVNMK0NSUFZSTVkxanROVm43S3g2V3JSN09rczBCekpFZnEwUDZaUTB1bnps?=
 =?utf-8?B?ZFJvcUVqd245MTBqTHVUSVVEbDhOMVpWQmFNWThGNFJCWHNZVERtU3ZwVnFT?=
 =?utf-8?B?ZkxTZzFDZlRiQ0U1SGVaQmJBNk00UnY4VWtsRE85RTNwQkd6YlFqSEREQmhk?=
 =?utf-8?B?MUV4bUprYVI1YlNmd0NvZU5GL0NyYTN4dUl3b2pia2kvS3JDODRhQkpNRmsz?=
 =?utf-8?B?d2RnMjdWdmhPSkZQTjRjTWVxMXdIMVo2WXJqT0gzNlhsejVHamRDRFNpeTlp?=
 =?utf-8?B?dDduVFo1QTdyNUNMOU1Jc3hRQi85cWoxWFNONkNWa0phNlRvZXk4ZzhLZ3p6?=
 =?utf-8?B?TytrNW5uaVhOQ2RQMXVXOWtBenEyaTVqODgvQWZUZlBtcE1COXpPaGJkVnVy?=
 =?utf-8?B?V1ZxeVNqTHhPWmFkeFZuRzdUNE5LYnltV3l1T0tKdlJnc2JWMnNzRHpyeXh1?=
 =?utf-8?B?VVFmMFVFWWZzWVhWZ2wrVldSR3lTUmVVL1JFQkx2MzlIZXRpS3ZFR0l5Wm50?=
 =?utf-8?B?K0tPUTBTRG5sWHpGbHBGU0ZMZlNJTGdNalRwSm4vMnl5K3V2enZHY3VBUjdz?=
 =?utf-8?B?NEVqWmoyV0s2YW9ERGNtSjNEbjV6NW9JcmNWenBpenZnTENWVzNiNzYvNEUx?=
 =?utf-8?Q?gkkKUmNNhB0s1jgsUFQpN0wnK?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35a74a8d-c047-463a-a6eb-08ddcf6fb069
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB7500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 13:47:56.8466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rVLqs2ALh6woLQI2y/12lAE5vtQpAhoIyuvhH4gzzSQEKRVs8vY1t60x8vyjtX4P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+viRGUskaW89pIsDL1oHLOacUEuuZRhuJ/oBfaDJqI=;
 b=kY3SpOL5MbIyPGgTCurqAirQSfa7hV8IyYyiMBum/PgRz6lJpNYgQTQcl6koIdTY/ip8YeoMmMF+yQZkKD+B8JYmNjem12zeDJDPTWwo3A4aftFB69fLDNh8aQVdHky+8z2lCDlYoWTBtcLDdqJ0fymLEavD8usS1vm4iH/bsLf91TaxdmQIQr8oI+QmNh1fsiI7CRICfQ405NjURrNqWulrIV2ekg2WmyHMws7CSXfUkodmx+86cp4mLtKhCXEHuPELpTbTrPED0kjfhXKn2GAdO1nQ1LbGfi8HjY+U+eTwvVSfR6C0mbwL9hP1eVJtGzPS0Q7K3LTyscSPEAauUA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=kY3SpOL5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On 30/07/2025 14:32, Vadim Fedorenko wrote:
> On 30/07/2025 11:42, Gal Pressman wrote:
>> On 30/07/2025 12:29, Vadim Fedorenko wrote:
>>> On 30/07/2025 06:54, Gal Pressman wrote:
>>>> On 29/07/2025 13:23, Vadim Fedorenko wrote:
>>>>> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/
>>>>> ethtool.c
>>>>> index f631d90c428ac..7257de9ea2f44 100644
>>>>> --- a/drivers/net/netdevsim/ethtool.c
>>>>> +++ b/drivers/net/netdevsim/ethtool.c
>>>>> @@ -164,12 +164,25 @@ nsim_set_fecparam(struct net_device *dev,
>>>>> struct ethtool_fecparam *fecparam)
>>>>>        ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>>>>>        return 0;
>>>>>    }
>>>>> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
>>>>> +    {  0,  0},
>>>>> +    {  1,  3},
>>>>> +    {  4,  7},
>>>>> +    { -1, -1}
>>>>> +};
>>>>
>>>> The driver-facing API works nicely when the ranges are allocated as
>>>> static arrays, but I expect most drivers will need to allocate it
>>>> dynamically as the ranges will be queried from the device.
>>>> In that case, we need to define who is responsible of freeing the
>>>> ranges
>>>> array.
>>>
>>> Well, the ranges will not change during link operation, unless the type
>>> of FEC is changed. You may either have static array of FEC ranges per
>>> supported FEC types. Or query it on link-up event and reuse it on every
>>> call for FEC stats. In this case it's pure driver's responsibility to
>>> manage memory allocations. There is definitely no need to re-query
>>> ranges on every single call for stats.
>>
>> This is just adding unnecessary complexity to the drivers, trying to
>> figure out the right lifetime for this array.
>> It will be much simpler if the core passes an array for the drivers to
>> fill. That way both static and dynamic ranges would work the same.
> 
> There is no need to pass huge pre-allocated array for drivers which
> doesn't have support for the histogram. The core doesn't have this info
> about the driver. And again - there is no need to refill ranges array
> every time as it will not change. I believe it's pure driver area of
> knowledge and responsibility.

It's not huge at all, it's an 18 elements array, and I expect most
drivers will need the dynamic ranges.

This is a control path operation, the "price" of allocating and filling
is small, and will reduce the number of driver bugs which get the array
lifetime wrong.

Or just let the driver fill the netlink attributes directly? Not sure if
we have precedent for that.
