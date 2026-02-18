Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GG0ELFQlWnBOQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 06:40:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17178153247
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 06:40:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CE8140737;
	Wed, 18 Feb 2026 05:39:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cWR9Ibrfq3X4; Wed, 18 Feb 2026 05:39:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B254D4073B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771393197;
	bh=MdplFibOGj+SyzO1eFF5RyJDbFTUolKUOD+zZGZOQKQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x0tErMuPa1uXIVgL2G7497oeC7Gi1RbpgCOoi0kDrvueqLzv8lHI+/8Ui5ECfcdc8
	 MRhUqTwWw1hDZp1VPsMsC4lWqsgmSW+i5im9MF7GZMiJKIGSQZ0wlctd972TDrOhJr
	 ME/Pfp9bMp0jr+21/YIkUS4BmyNFfN1Po4X70ef+Xne+h7grLc4fCoJC1mkqpfLyJf
	 hwi4KbyNxOR6RNbLgjSjg0k7PES+d6Wf2qtk76Z0XbfAW+Ujn7lYJBf7dCfqsCNDci
	 GCg+0uqElRS2sS0DMBHK0/VfbxWW35M45HrHlQLOm5ffVvYpXjYE39CF2gyg+Sj6CN
	 4DWJ23XPJiaqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B254D4073B;
	Wed, 18 Feb 2026 05:39:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A53B1270
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 05:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96E5660732
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 05:39:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgPE-Q7eFPt6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 05:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 898EE60721
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 898EE60721
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 898EE60721
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 05:39:53 +0000 (UTC)
X-CSE-ConnectionGUID: E3g1JWIGR4WOPChCDkZmUA==
X-CSE-MsgGUID: 0FocsizmTPuvndRF/pxx6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="72378039"
X-IronPort-AV: E=Sophos;i="6.21,297,1763452800"; d="scan'208";a="72378039"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 21:39:53 -0800
X-CSE-ConnectionGUID: c3dfPRm8SHCHHhOBGb3e0w==
X-CSE-MsgGUID: YzQo05wgSrObvQuDUmYndg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 21:39:52 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 21:39:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 21:39:51 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.15)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 21:39:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q+oKvB0y4fzHnvJdDw+ndXhcXQwcEwy/RJyCB2tVidNTWalSAWZMfYKuM4LmnkCdi2Bh3FxQy/U4lw+BGfQHfkXDmcLCItBs7i0PzcEUM68MTSfBJoT23jTtUdgjS1XYqpgWLtzWMrp23KSPHoKsAfmpMyT/1uvCWw+uVyj96MgKQm865Td8/2r+Xij2yUQBiqOz38TrRgEHmIp0qq72sgyU9jj9mbE8pW51AhXgebhVrelS0px4RiDSkuiFBhfF5laDiSoQFqgti1Wa0+0Z8CTrMyw5828iJ8zp81f9H+UbLQkp2GEYYq8kFQATjAliAsP46hSFCtSUOxaqQqOQ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MdplFibOGj+SyzO1eFF5RyJDbFTUolKUOD+zZGZOQKQ=;
 b=OZ9VSx+qBMQz3v0RtxFDLOrHkIuj+QCYxZxIkOy+/Nm0NezWz0xY3YzBj9LY2qzQyoRz7CiKrAgBHslqCIZSIwUG+FE9OrL7us274Q3YsFulsnEM6B9BzHpZ9Ntw5F71zKLQHq5V+7vwTmY9TW1d+bZrIl+cFJ2S93I6K52qw8Tl+xyLHNAIl39HuPxvhc0kBxU4/Bx8iNV/BsDqrVS8USeSge7Ty9a7mkt/GUqBu3yWs+elA8eCvPOvRDCRWegRAFXMmgba4pnQx89wAm79wVWjQ835OC1xvJLF8ZHFJnHDmmiqofo32IdrONoie0KJ5uqA41gpl3sIVhr0DRHF6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.12; Wed, 18 Feb
 2026 05:39:49 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::2769:b184:69c6:6eb0]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::2769:b184:69c6:6eb0%5]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 05:39:48 +0000
Message-ID: <234a3e23-590e-4e55-a242-41a2fb377d22@intel.com>
Date: Wed, 18 Feb 2026 06:39:43 +0100
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <kohei.enju@gmail.com>
References: <20260214191502.267670-1-kohei@enjuk.jp>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260214191502.267670-1-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR06CA0062.eurprd06.prod.outlook.com
 (2603:10a6:10:120::36) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 55b60b9f-d6f0-46ef-9173-08de6eb0215c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UmVqeWVUVTF5YktqTUE2K2MzdE9JamptMW9UUTJIK1d1ZnJlNXkzY01HR2xM?=
 =?utf-8?B?K09WNEtPbWZWSnA0SnZYb3dYM1dzUURpLzM1NHpsM3ZhcmJVUkVpSUlaSkgz?=
 =?utf-8?B?ODRrVDVCWmRnZERSQ3dpdjNmY2kyZmowdDFRQ1JsN2ZmRUxuSkQzQ1R4N0Nw?=
 =?utf-8?B?MkxKSHU3VUFxUDRjNW9nM2ZhQzJLRnlpRzQ1OFhYOEMyOCt5VWJBVjlacWNE?=
 =?utf-8?B?NDJtZDU5VHlwaEZRYjFUa0RyMlA1b2prQmdaTVFQUU1IRXpoTyszTHFYVm9M?=
 =?utf-8?B?R3ZhUzNLSHM1N0NVdGY1RGYwQ0VreUVVWERIQnRXbWRad3YrR2hFbnJ6czVq?=
 =?utf-8?B?Mi9zU1NPWjN1RVhkYmMxYVBRNDduVS80NnNxUTl4aWxzbnJML1NDdjZkdHJG?=
 =?utf-8?B?R3BOWnFkekY2OXVGaDBhYVZrcWlldml6MEU2aFJIZkoyd01KYnAyazFZWDB4?=
 =?utf-8?B?RlAxUG5INHZON2xBemF5cTlTZjFldDc1dnNvRkhjQjFYRXRFRXNEOHpKMUJZ?=
 =?utf-8?B?dThyUUJiL3FPOFByRmppQTJreGNOa3pkZytYZy9HcUl3NHpjeFVuNEE3TE5G?=
 =?utf-8?B?NzJwTUxPenpKQ2Zab0dUbXN6RlFPSDBWMTJ4YzVibDlXK2NSYXNJL3RFeVcy?=
 =?utf-8?B?Z0dTZjh5TUpYSEFnaUpqaDRpOWF1QWFKRWs2N3dCRnlNVFZHOWFuZm1ybi82?=
 =?utf-8?B?UjBjeWNXSEV2SkoyWCtVeE5xT2FidmQ1aG9sczR0dmhBMTRIeGhSNEJrcXdR?=
 =?utf-8?B?Z21uUFRVQ1A5SmF2cm9pa0FFUkptUTNndzhvelBUQmUvVFlXUXRoT0lMM0FX?=
 =?utf-8?B?eGdWRi96SDkxUHV1a3lRU1FTWXJrWlRsSEJMMmtFUHMyaXpaQ0Iza1BiZDNJ?=
 =?utf-8?B?a21Xb3lLaWFVQjBsL3NycjZtZGNjM3VOM24zS01mV0h4VzR5dFUwTk9WTUtt?=
 =?utf-8?B?WVc4SExhWEU2ZmJFUU9EOEdIVTNWeGpsbllxc0Nka2F6Uk5IejhjU0N1UE1o?=
 =?utf-8?B?d0RTWUJOUDlybDhISlg5Q2NWOXFBTTJYYXJmZ1hPTm1OcXJZa1orTDVWOURK?=
 =?utf-8?B?ZmlQSEFZRzBYVE9SV29mVkpDRW8ySVowU0YzNEpuVDh2OWY4TmtpTHQwMEE2?=
 =?utf-8?B?dFRtL01ickY5NGYwWjhoWnFyanRSSHRRMjB5TTBSZjl1dEd4VUk0K1BXN011?=
 =?utf-8?B?WXdjWDQ5cEpzWmJoZVJsMW9weXpWaHBUQ095OGNzS2xPbHBXUzBpcmxRdUQ2?=
 =?utf-8?B?cERGRHYvYmlGVWJTNzJzM1JzYkUzN3pGeFZYOHM1QnlpQjZpdWhLTjRhaFVS?=
 =?utf-8?B?NzVkNXBFb1UvNEt4WTdGL1ltZVU2TzhaNzk1aCt6ME8yRmcwNklGTlkvTkhj?=
 =?utf-8?B?M0hpRFF6eDNvR2VCamtPYVlrUG1OMHhlZkhvTlZDY2dBM2Q0MFF3TE1zZ3FR?=
 =?utf-8?B?ZCtmOVFmOE10THUxNmVhMjlIOEp4ZnJFZndZNnJKUVQwc3BIbms5RWFvL1Rh?=
 =?utf-8?B?aG9BLyt0c1QydjFqOGZkOVhWMEs3eWtIQlJPNHkxMEs4N3lWOGg0d25qWTZt?=
 =?utf-8?B?Um5veVNPdVlXRlpoRGh3dHlmaUkxK1RQRTlkdkI3NWtBYnlwTGZlRlE3di9r?=
 =?utf-8?B?VWg4STJPRDkrNzdjL3NEenRsOHBaaUpaeXVKK0NMOWoycGprdTl3R1hkTS9G?=
 =?utf-8?B?Wm1hOUpva3pYNGhVbUlsZi8xa2g1M3B5bFpGRzhwTmxHalBUalB0YkJ3YmUw?=
 =?utf-8?B?TjR3cTNQZFVWLzY1T0JvWVB1ZWNzQUhBbkJ2MDFtSDcwYnptT21ackJuZG5n?=
 =?utf-8?B?Tlc1THdtUHE0bEtxMjRFWEZiVjJwNXMrMnRLVlhzWWtJYmc3aHhRSHgxN1lL?=
 =?utf-8?B?ZDFjdEl3QWNVeE9HZkpNS3BDOXM3SzJGNUR1SnZYWFUrbjM5ME9ZTjEzSUVj?=
 =?utf-8?B?bXhEbUhHS3FocFRkT01EWXRrTE0xeU0vYTB2MW5WL3BVTkFMQkFYNUZJcWt2?=
 =?utf-8?B?SGRDbUhWb3VydkpJRk1QV0VTNzhjQjkxbVE2UjVOU3Rja2xqVXFwZ0UxYlRL?=
 =?utf-8?B?V2hWZ2o5Tmp2NXc5RSsyVmRSRkNqS3NKNGw0Um5jTG1YQ0dKNnI0T0NrRFJW?=
 =?utf-8?Q?Y1Yo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkVhVWt0WlBqT0xPOFNubndwOGxKUmJsUzh1aksrdDFDVUtqeEpHYUNFRmRM?=
 =?utf-8?B?eS9UaW1vVldIVjhEMzJ1TmtKcnFQSmZSTEtabXFoeVNpMlpMRmV5eDIzOWcw?=
 =?utf-8?B?RTY0VzJTckZPOHhrUWpjSTFrcldWOXFTMHFmNE00VzhrT0ZSRVJ1WUlWTUN0?=
 =?utf-8?B?VFF5RjV5a0htWXpqbVhJZFk0ekxWOUJFWDVSS2V6RUNqNHJHemI5RXFuQW1R?=
 =?utf-8?B?TUtrWnRBM1AydkRBTi9KY1FrdDU5clRCd08ydkJRb1phL3VZVGk1V0t0Rndm?=
 =?utf-8?B?SExya2V6a09iOWVVWHZlSHJhNm5HWk8vNEtMYiszM3ZOVUV2THBURHZ2eU5m?=
 =?utf-8?B?aHQ4dUF4YlUycFZuMWVZelc5elZoZW41akhob1ZFSTUyNzEzTitaSXN5Qlgy?=
 =?utf-8?B?Q0ZnQnQ2dldmb2hOeFg1c3pzVXZmNDIzOVJZTnpzRzN5NHBnU1F6cm5zZzEz?=
 =?utf-8?B?Rm9nMGN4QWVzcWRHamJOc0VWVDYyUVh2bEdGRm5Hc0k4bU1GVEtkOSthNkxD?=
 =?utf-8?B?WlpJeHhuUGRQaGwzNGZ2cERTdGh6ckNCd3AvTzgxTHRTeTZPRHkzZ2graU1M?=
 =?utf-8?B?N1E0dHNlbUNrYmVzdDAvUjRZK2k5SEJoNXFzODhGVnJ1YXdhbUZNUG4rUm93?=
 =?utf-8?B?OHpiSGxGajhBNWhFZDcva1F6b29NbjMxYVh2aHdWS0xIRXV3OXZpbEtlWkdQ?=
 =?utf-8?B?aW96eTFHWEJNdGdWbFM4RmdKOE5sMklKSUR0bCt4TUpIODRUenpqUllKS2FH?=
 =?utf-8?B?aVJxRkJyQ1NlaE0xeUVTZFNETW4waVJVVS85RUNFdmQ0YTBxaE9VRTVGcmlO?=
 =?utf-8?B?ajhKaE16TGpSc3dsdXlmdlFOM3RmMWRSL0dqQXJ4RkpyeHVvOGI4Qi9WaHlG?=
 =?utf-8?B?ZmlTSCtObC93WWw2MXpEV3lkVEhsQkNwM3UzRFJZaDc4ZEk3UmJvT3ZUQXhF?=
 =?utf-8?B?V3ErYnRJRFhOeWxIMTM2eWcyeEtpUGlPQjRsKzF4L1ltV1lNT2hrMFFyajdi?=
 =?utf-8?B?Vmc3dmJKVTNHU28xOGVWZDdZT2I4blhHb0NZVGxOcFl6WTRPaEZOSFNwdWJw?=
 =?utf-8?B?dUdmYWV6Tk1kWDlYb244Q09ZczhMdWJEc09tRnVMck1CblNwU0lJY1RiM29I?=
 =?utf-8?B?RWd0NHZ1UVJsVGwvd25ia3ExNnZNclZtR29weWNIV0wxM3NaS0RyZXRORzVH?=
 =?utf-8?B?UXlQL01FMkQ0aWtNcGNMcVdjK3RabUZqQlhPTzNrZEwwS0FreVVrTGJpejRJ?=
 =?utf-8?B?MnM3dDYrTHI5RnlaWHkwODVmRy9YZ21xZE1XOVFjVzVTR3V1UjRsaGwrdktI?=
 =?utf-8?B?b2xFcVkyYklPUHk3MzlEVkE4NzQ5MWJ1WkhnTTEvV2xJK0RxcUNWNFlOWWk0?=
 =?utf-8?B?VHdBZXpWcng5OVVqeStTODhOVThhL0plN2plbjcyQjNmRnRHZ2tBOCtDTHJD?=
 =?utf-8?B?TUExbkd3UkJsUWlZT0ZwblBqZlNiaHpxS21rZXRiQnU4ZDhJdEh0aHc5OVVE?=
 =?utf-8?B?M1V3NWxDN0hKUEZFcG5tTUx1ZEVFV09MYUpEekliSDh0RmtobkFtMmc0cHBG?=
 =?utf-8?B?ZmxuM2RaZzhoMlBhYVV3SGsyWU1qeDQ0Y1JPVDVybGJhTDZRekdPbVJXYmpW?=
 =?utf-8?B?U2tocHBBdzVQdEhkS2swd1ZTS3hBMFhnbGdFZnJEYVZRRkpsNVB2WlJBN2ZB?=
 =?utf-8?B?N1Z2Q1k0bUd6RDJqMk9JT214Y1g1a05kMUsrSFlzTjNlZE1ydW9wcVBhTTNB?=
 =?utf-8?B?VFdpWXovWnUzL1l5NjY1WE5Rc29UVGZNZm5taHYyNjE5NEwxK09TM0xzcHJN?=
 =?utf-8?B?UEo3WjJFbE0rdHcwUjM5ekRNZSs5OG9TWVhGQmZkNWNVZEhoM0NCY2JNeGZB?=
 =?utf-8?B?VERRR1JpaURYR2Nwb3F2VTRGZkNKMm5Fdi9jYjFNZ1VqYzlsQ3d4ajdwM25B?=
 =?utf-8?B?TFYyWi85V3lqandtUmdJdUoxSVNDanpyUjVFbXRjK2RMaXFBVFp2Wk5iaTJJ?=
 =?utf-8?B?UHIvYmVJamc1RjArYnhMeWxrN01XbWhwMkpNbCtEbVd3SWdJS09ZRzlxUmNt?=
 =?utf-8?B?dnIwSUhvU2RHeHVMVklncGNGSTBkcyt2MTZzaFpYM0xKMHdDZCtTbnRYYnVj?=
 =?utf-8?B?VVVwcHFGdXhBTFBGbzlxejlZWUNiSnNYSm53dWk5SkM2MDhoYzZGeDNlcnVZ?=
 =?utf-8?B?Wkl2Si9ZMC9hRndXQ3hwanlhYytZR0FKTjZyVkxVdWxkMklhN1NsN2RCSVFw?=
 =?utf-8?B?YmFJd1ZBOGtVU1F1RE9wbHZEMnpIVk96ZEROUEtYSTBYTWVzWVhxQ2g5L0wy?=
 =?utf-8?B?V0RiY0wrMmpvQzVvWjVsUmxqNUNsK2dyRFlPMkc0amMyN3pUZXFSdUN1Um90?=
 =?utf-8?Q?v9BM4Rx4kBdeFAHQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55b60b9f-d6f0-46ef-9173-08de6eb0215c
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 05:39:48.8656 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fzTnV3vf7C+pdFuIJZNc0Ov3bSjONNJAy6d2OpbJP7Lk8uJENp/Vae+jEQHOKEj7E/qk9RqC7+mV0dOKSVG0nGcpMvfAPyKSsBfQUfyD1vs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771393194; x=1802929194;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yZkxpQRuOhlRZlQTLfdFrLwd+DH9IjpU/3AHZn5aFQ4=;
 b=lymioFdOczMjBa9nhRBLduMA+wT1i3nG5so3DOj8rlfRJt2af4MTCXsI
 FZhDiyRNjux5SCtONgz7Ho7nShc9COevFZ+VwLi7gt1b2fe8zxumYO6uu
 VBYqSW8G1h9p4e6aiZSnm7UalVAXNCeKRuR6XUmTbaSzlFquJ26ZKq92b
 5Eas727lOOp+WNVMQPvhiV+zlJ+l6cY136M1PPQyfYaCVLsgYCK57fxzi
 f7xxbqaJyfEsKzdd7uNp9NSAmWhVsWh70IDMiSFEYQ1qrzRE5bdtxZp/W
 OlIS0XIvRFUW9Gee3eFi5xmUJOPsBVUht1LqmMeAheo86aaZA9HS73J90
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lymioFdO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix out-of-bounds
 writes in iavf_get_ethtool_stats()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim]
X-Rspamd-Queue-Id: 17178153247
X-Rspamd-Action: no action

On 2/14/26 20:14, Kohei Enju wrote:
> iavf incorrectly uses real_num_tx_queues for ETH_SS_STATS. Since the
> value could change in runtime, we should use num_tx_queues instead.
> 

[...]

> Use immutable num_tx_queues in all related functions to avoid the issue.
> 
> [1]
>   BUG: KASAN: vmalloc-out-of-bounds in iavf_add_one_ethtool_stat+0x200/0x270

[...]

Thank you very much Enju-san,
this is a nice improvement!
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Side note: I'm working on enabling 256 queues for iavf, what means
changing the reported max number of queues, what finally means screens
of zero stats printed, unfortunate, but better be correct that pretty ;)

> 
> Fixes: 64430f70ba6f ("iavf: Fix displaying queue statistics shown by ethtool")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   .../net/ethernet/intel/iavf/iavf_ethtool.c    | 31 +++++++++----------
>   1 file changed, 15 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 6ff3842a1ff1..98bec3afc200 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -313,14 +313,13 @@ static int iavf_get_sset_count(struct net_device *netdev, int sset)
>   {
>   	/* Report the maximum number queues, even if not every queue is
>   	 * currently configured. Since allocation of queues is in pairs,
> -	 * use netdev->real_num_tx_queues * 2. The real_num_tx_queues is set
> -	 * at device creation and never changes.
> +	 * use netdev->num_tx_queues * 2. The num_tx_queues is set at
> +	 * device creation and never changes.
>   	 */
>   
>   	if (sset == ETH_SS_STATS)
>   		return IAVF_STATS_LEN +
> -			(IAVF_QUEUE_STATS_LEN * 2 *
> -			 netdev->real_num_tx_queues);
> +		       (IAVF_QUEUE_STATS_LEN * 2 * netdev->num_tx_queues);
>   	else
>   		return -EINVAL;
>   }
> @@ -345,19 +344,19 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
>   	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
>   
>   	rcu_read_lock();
> -	/* As num_active_queues describe both tx and rx queues, we can use
> -	 * it to iterate over rings' stats.
> +	/* Use num_tx_queues to report stats for the maximum number of queues.
> +	 * Queues beyond num_active_queues will report zero.

<rambling>
zeroing inactive stats is bad behavior, not introduced by you of course, 
but worth to fix (as a followup, not necessarily by you)

unrelated to the prev paragraph,
even if we remove explicit = 0 from the driver, ethtool userspace will
still print (lots of) zeroes for "under-reported" stats, thanks to
multi-syscall stats retrieval, that could be "fixed" in ethtool, but
perhaps does not matter, as users use wrappers anyway
</rambling>

>   	 */
> -	for (i = 0; i < adapter->num_active_queues; i++) {
> -		struct iavf_ring *ring;
> +	for (i = 0; i < netdev->num_tx_queues; i++) {
> +		struct iavf_ring *tx_ring = NULL, *rx_ring = NULL;
>   
> -		/* Tx rings stats */
> -		ring = &adapter->tx_rings[i];
> -		iavf_add_queue_stats(&data, ring);
> +		if (i < adapter->num_active_queues) {
> +			tx_ring = &adapter->tx_rings[i];
> +			rx_ring = &adapter->rx_rings[i];
> +		}
>   
> -		/* Rx rings stats */
> -		ring = &adapter->rx_rings[i];
> -		iavf_add_queue_stats(&data, ring);
> +		iavf_add_queue_stats(&data, tx_ring);
> +		iavf_add_queue_stats(&data, rx_ring);
>   	}
>   	rcu_read_unlock();
>   }
> @@ -376,9 +375,9 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
>   	iavf_add_stat_strings(&data, iavf_gstrings_stats);
>   
>   	/* Queues are always allocated in pairs, so we just use
> -	 * real_num_tx_queues for both Tx and Rx queues.
> +	 * num_tx_queues for both Tx and Rx queues.
>   	 */
> -	for (i = 0; i < netdev->real_num_tx_queues; i++) {
> +	for (i = 0; i < netdev->num_tx_queues; i++) {
>   		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
>   				      "tx", i);
>   		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,

