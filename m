Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBf5DOy03ml3HgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 23:43:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 628833FEAA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 23:43:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9ACC84E3A;
	Tue, 14 Apr 2026 21:43:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7aSUDA9VeON; Tue, 14 Apr 2026 21:43:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56DC084E36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776202985;
	bh=s31sKLGO7Fw7JHSvbYSwZdhWvnWAxR5tX4OHX2kAWvI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2qlA/8T1UKeq4iqeusacY8gwjL7vJ+Cl8Gt4+3MRDerdLOiRehM2YqeexGBHSQCnE
	 FbULMan1C+aLLycWYvcMzrz2tCcDY9DxwGSU0pUqAt/6sxQviG2plIVQNOyx1aryrJ
	 EAivkf/rNOKR2nHlBA1b3aANi53V/f9pDiEpqoDqrXMGWHUdZKjYbWqeTHZZChpLen
	 loOOWesFIfKxzYqC2WxbxBmfJs8KrocV4PQVXtO8ES+hNyB8EeUK9U4DrOT7RseK2U
	 u51GoXJnAcfqvdJR/60f9+3H6PZFDtVRkqqbkAIwON/D15Rkltg3N9xepRcXrri275
	 G/G9jMlJM60Gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56DC084E36;
	Tue, 14 Apr 2026 21:43:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 78940237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 21:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E6756F552
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 21:43:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EclgLz6OLBcp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 21:43:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6BE3C6083B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BE3C6083B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BE3C6083B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 21:43:01 +0000 (UTC)
X-CSE-ConnectionGUID: lQeXoHgvT9SrXvEhw8+mbw==
X-CSE-MsgGUID: cyrc55FATKyg8+cPYqY5Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="81036398"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="81036398"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 14:43:01 -0700
X-CSE-ConnectionGUID: Dcuve0R1Qw+vLR2LU64HLA==
X-CSE-MsgGUID: YTnrhhw8QF2FMfdwB7hFew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="229351530"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 14:42:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 14:43:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 14:43:00 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 14:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YS0eSymhHGPuvJCx41452qpW2iE5ofB9o+NL8bskAZDtUdtJa7FrEalBO3GPTNjpuTuP7FXssfY3GPCE47H7vqPS1aDoQ+tsLjTYfSWURRmYFMV/+slcuj8RJbxMYX/WPoM3Is0sgg0chYefA9Q7hShEcryBU/Y2tP4Goz3myGZub6g+gOS47m+HyvOW/Bf3yM3buu4dvc/PY/810GmCORA6Gu6GIa6mdWt43+801hZ5UHMlYqH/ypYwk8udf5l5xuQ/k9yXE6RqlC3HmOX65+Qds+sehKM78NTSEkNLMa0Pp072fA0Nytb+JJQkjLXYp6xnPL2IadsK+yV+6RtQYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s31sKLGO7Fw7JHSvbYSwZdhWvnWAxR5tX4OHX2kAWvI=;
 b=bN5fQ+FCFRR86fb50Bxc/Me3NZ/62a6lvgnLMqBEhdbflb5g0wKRFRmTen2ztlYmICueiQc/u/tldcpRB4sF3XV6T3YIn4XMSMsAMP6r4NWHt3hiEAdJPTfq5fRFajjbi0zv/X9uJOI81yOwDqcd3DRD8wGOQOAMoNBafZU55wPiSlsxVesHSy+3uydZNPkVsuVkmFNbPbKfHxywghre865Bu+/xndlR/Iq3EMhcgKOZhce2Qq//zCCjlRhoz5MwY8yKdsSNOuTzMJA2EXq1o27e/FL/zr5ND4x00hUfWnOTc843+g7UMnTFU8oa8bMQdfmNzCUy8GgnKEkh+jsOHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by DM4PR11MB6504.namprd11.prod.outlook.com (2603:10b6:8:8d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Tue, 14 Apr 2026 21:42:54 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9769.046; Tue, 14 Apr 2026
 21:42:53 +0000
Message-ID: <904b95de-491b-41c1-b092-0da56ad4c349@intel.com>
Date: Tue, 14 Apr 2026 14:42:50 -0700
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Bhat, Jay" <jay.bhat@intel.com>, "Barrera,
 Ivan D" <ivan.d.barrera@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "decot@google.com" <decot@google.com>,
 "willemb@google.com" <willemb@google.com>, "sheenamo@google.com"
 <sheenamo@google.com>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
 <20260414031631.2107-3-emil.s.tantilov@intel.com>
 <IA3PR11MB8986C6EC840268F14C44B28CE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
 <ad5Y-gNBDvns-WAE@wunner.de>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <ad5Y-gNBDvns-WAE@wunner.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::23) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|DM4PR11MB6504:EE_
X-MS-Office365-Filtering-Correlation-Id: ef2c34eb-77a6-42b5-d894-08de9a6ec88b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: U5MJ1HvNvkdIVvj6J9ettxkNiE25bAy/YlEv/0/zb2RANhZcl60ro1LNE69xTDJeTqj7898J8tJboJSdQm4Svy6BjapdMWfA0/8TiCbh6pdVW3AVKOXxQXSflME/k59XLNXdb+0I8WtNeXy4y+bzKzYv1OOb+aRUKU6SRH1/pHqMAw8S1izNqwCjFydqXw1B9uqOs27eNld6+b+iZpbhu4Vq7KZKBh00fZFxXgGn55UlmHvO8VxuwWdum0/fCoR85RMq/Ru/DeCtvmaKAcMgxyEhh6neSzbbr6/KJa/txBm8Z10H8hWuM67P8w5gRJzZmR0ebCq4MclSpfOt9ubiDUnUcy27uJ8VXApUfma9g0sRX68Hssdi0tmJrUZS81qBiiYp+P8trCKlwvF0YgT8m+g9eJGE2mlVh26lSlSeM5Gg1ZhvYH2WWBMoB+vbU9snjFzXUtqR+sU8eSFJ59cwSoUL9RGZgBrGW5cVlpDsscI0LEPZM2Y7qk46Qx3Sr4xu/V5oU0WYYDFloip4yDYVc1+qPtiQZHRXDPA46lwqb0IiXetLcOzeEL+ggm6QtU0TqojBsRPVVdmrvZPM1qWtlT8HV/2ydL8MszH/ZLcgrfa1U6SwuO17cUP/2C4tluCrDHZ/fHvwTAnbfBck5vYqmhSdJgkqeitzcSMeo5xZZQfeD459n4d+n8DXsEWoecPm7oIOS0DrXBwLTpnXf5N1e8h5W8CUBnSNftY9woqFDaI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnEwZWlFR3pMV1NjWjZXb2VVcFZlZVpPVlVZRGZCbTBNMzFHdkdmKzJPK3FB?=
 =?utf-8?B?eTVoQkdwSHlnWVl1R2NEVFphVXljNC9wcnFMWWdGeHdVcHBvTXpwTlAyWDdn?=
 =?utf-8?B?VWtTV0dLWWRTMFRNckdpbzNFNGRPY1RmMDVTSTZxRmpZV0dpcFhVellvQ3du?=
 =?utf-8?B?ZkF3WmhwL2NNYVhVVTZQVTVhL1A3OWdDaWdyOUE2S2lneEFqMW05QWg2ci9s?=
 =?utf-8?B?c1UyL0p1b1VxWmhIelJQbE8yOENpeCs3dUxFWTVNK0pPaTRCazNYbVNiMCtk?=
 =?utf-8?B?dGhzUVFIeWFZTGRSSHNCZnFzb1ozQzlrL2Fxc1RBTVVMY0F0MXlHcTkvRzcw?=
 =?utf-8?B?U1VobGNjV2twd2NkeVkwVTBHRHJGWCt6cWg5UkpWM2x5SzkzODh0UGlzUmw3?=
 =?utf-8?B?blF0enh6dWh6NnpjY1U1SjBCWFdEOGF1RTlMaXJNa3lkcGNhbTlyOXFPeUNx?=
 =?utf-8?B?ajFLc1dMeGdaVFNEeWQwbDl0SUxoNFBEV2x2SDhQRmNRNXRSZW0ra1ByV1dt?=
 =?utf-8?B?aVhiQkI0aVpBeDZhWHpQUlozR3NBUVN4Q0ppaVoydEkxWGFDUGxBSmZiR05R?=
 =?utf-8?B?M0tVVCt6d0pvSld2cXJVOU5wejA2K21pT1I3NGJsbzdZS2NnNjJuenRRMzJ2?=
 =?utf-8?B?eHkvTEhFSWltYjVYZ3NlRHN2bk5iRXBsZXRZdmJocmMvdlNyM21VTEZ3bTNj?=
 =?utf-8?B?czZVeXpFS2FRSzVIUDRlUmlEaCsrNlBldG8zQ2diRmU1QXhSVDV4RDJQMzhK?=
 =?utf-8?B?SFFYUENtelJxWXRLUDBaYmhJbHp5RFYxNDFyZFBja3YrMTFBNVVlQWxlL0NG?=
 =?utf-8?B?YXNXc3J5cjJqT0VxWUs3cDBDNzNlcVNIL0NIdEg2dUE3NXlEMFZnQlBYcmk1?=
 =?utf-8?B?bFZKd1hVZmdKQW9ESnNaQ0RUOFpRSmZlS0dYTk5lVDN2aGd2VEUrSnRDYm13?=
 =?utf-8?B?b0hSWVpVVVdsNjkwUkw0OGtKMm1CVTFoVlc1d3kxUmt6d09tNUVydlNjdDdq?=
 =?utf-8?B?U0hualRiQ1ZGdGFEbkRnSER3RHpkSmFKYWM2WHh4UzQydUxJY0wzb0R5VVFW?=
 =?utf-8?B?dG1lM3o5VDI4aDRUM1IzTmozTjIyakk3T2piTFVqQS95bG1iMThOVGZmVmE2?=
 =?utf-8?B?WWRmQVRkY0p4YXJtQlZ5M1cySUJPUW0rODl6akdVL2lPV3JBMHF3b3VEWmpF?=
 =?utf-8?B?WG4yMzAzWjRTeEpUbzB1Tzh4NE9JeTFTbHh0QmhWQVZPYkVLUk1zRHhzYno1?=
 =?utf-8?B?Y0RXUi9NMW0xRGtydzFkMURzd20wMjMwSnRmWG1DRlZjd3hCYVBzcVdxUCtu?=
 =?utf-8?B?ZjU2NWl0a3kvYkJMd2lwcWFNN3NaNTNzODZkQmI0MFFjWS9kcWZwb2V5cTNH?=
 =?utf-8?B?bitXQ1Z2UkNQTHBZNmMxWGdTc2pNdk5Fb1BQK1lySmNHTUdVUXE0b05xL0t3?=
 =?utf-8?B?eGNHMys5VzgzNGxHSWFUdkNzWXBOclBCSEFWUUlTVGpXS1hkRndab0J3T1FI?=
 =?utf-8?B?ZFFNdzczMk0xSE5zM2ROMW1rbTdqNW8wVWwybmJyYzcrd0pXVHQyZ0IvTDJN?=
 =?utf-8?B?ZnNoMm5HSzg0RXdVQTF2MzFDalczL0Y3RCtzYWVHOTZHQWFtM1ZTN3Y5U1Jw?=
 =?utf-8?B?aWJXU1drV1NiTmxxWXlDaHBzTjdwWlAwR3N0UlBmbFFpRzMya0J2bUhldEtm?=
 =?utf-8?B?c0ZUY3NDcDh3VHBNNVU0bUpuU2EyaEZqR3JOUnNWV0xMSWV3OFFQYU0xZy81?=
 =?utf-8?B?ZTlmU0ljNXVQLzl4OTFEN1V6QWJyUXJxNHZaVTdCR0h0akk2dzFqLzNXcTJw?=
 =?utf-8?B?NkJzdFkybVhtTUlIVk82amlvMzVNU2NiTHFuTWo0WGxVNEVOZHpQRFd0VGJr?=
 =?utf-8?B?VVhzRFRhR0RCOWlvUmJrK2wva3dleS80Z3ZUY052UkgxeS9JMWdTZXErRlgr?=
 =?utf-8?B?bU4xalNJbjFFWVpSeW9hRU5iUmpCZm12ZWFPRmRPUkdFTkdRMWdYbXA1RDJj?=
 =?utf-8?B?RTl3MEZwaUM1eGFyWTUvYVp3ZUlrUEUxRzNEZlN3bWFYRENZTWphODgxN2py?=
 =?utf-8?B?ckxtbHJEZ29FZ2lzWjcwQ2RtYVlxelU2YVdXeW9qVXFXenNWcWlZazNYdmY3?=
 =?utf-8?B?UnE2aU9qU092ak40T0o1TS9SOWtEQXM1MzF5bU5xRzFXdUhXejNMSWZmSVJh?=
 =?utf-8?B?Z0J2VWhCNU13UXVnNC9zMlhpS2ptYzloZ2IrQVVSdGp3eGxmeE1UTE16QVlQ?=
 =?utf-8?B?RU1xL2QrSnhQMXE1b0psWVNxS1NxWDJlU2JSVXBDdzlDS2xYM2ZjMXVjN2ZM?=
 =?utf-8?B?ejlMWHJxSWtyQWdMOTBOb2hHK2FmUzB3VzJ4OThEMzJyK0NKamU1UT09?=
X-Exchange-RoutingPolicyChecked: AsAAU4MyC7vo0r8YN/4TIlSX4gssaAaXtuo3g4FuENtVDxVvhJwab6weKG2Vp65hpCfqxkQ4yHIfgeOpinQXmele1bdMoQ1yTAtqEs9/ESo8FyzAP6GVVUSPYoMw6Cme3hXlR+kuubk7FUyTNZk6OTgn4lZvjLTyjplBnSzxhvZYryZ6fO7UySg0d40g4drP5mkBOjLByFAZFoxZGXb7+Vzt41j+98sB0ZyJVIgAmVKUFn81yh+oX7SpqeWl19LM7Fw918LUacszvVOqY/0gucNhskf+56tGAPRriwWm7MlCdAM5JFpmUofZ8sGZOGWChZpsQLuRSEBn3uI5e7KT7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2c34eb-77a6-42b5-d894-08de9a6ec88b
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 21:42:53.6930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8Q61g5sxCd6QH+w4+Fs06xRerbWzivV6iNX5Gj5D0nC+JglCjuIYdKoAwGDwGmNRlPg2sP409TPLkVO47JBRtvxKWVLIKQHqZ0Diumr/FI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776202983; x=1807738983;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ODxTBvKhpcL77U8Io21DzdGdoIdjy64bGoHvhp4F77M=;
 b=V7lRGPJWABqrp7Lsdo+r9aAX2Jeo9rTVNKSx4/B3cnbow/lx5Ve8uVdV
 KB17I8oJdN9T3is09dyYxkwsSEN3RFU5lyFUcW0Oy6BqZHu1OkkQyyJwG
 D6qXld+oolFhaJirpIJfAhoUslKOsMEIcoVKUFwdU8gZISldt9k7cJAgs
 TICJbPHAdJ7NCvQPRzRHrE9Em4srX9Qx72Cg+JRpF0ivBOukrr+IC2yaE
 1+unlA5SR/pnYYc//iSqAB5nRhB7/G9v62COV+vwZYwg4H03Hl2CqGruS
 SgsX1gSj0Pj0chH+m8/oejXt7xuPTxWeYG4OfCOXoc8ZWRoV6G8jL9t8p
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V7lRGPJW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] idpf: implement pci
 error handlers
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lukas@wunner.de,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jay.bhat@intel.com,m:ivan.d.barrera@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:linux-pci@vger.kernel.org,m:madhu.chittim@intel.com,m:decot@google.com,m:willemb@google.com,m:sheenamo@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 628833FEAA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/14/2026 8:10 AM, Lukas Wunner wrote:
> On Tue, Apr 14, 2026 at 11:09:05AM +0000, Loktionov, Aleksandr wrote:
>>> From: Tantilov, Emil S <emil.s.tantilov@intel.com>
>>> .slot_reset is the callback attempting to restore the device, provided
>>> a PCI reset was initiated by the AER driver.
> 
> Just for clarity, those callbacks are invoked by PCI core error handling
> code and are shared by EEH, AER, DPC as well as s390 error recovery flows.
> So it's not only AER.

Understood. I can change the wording to be more generic.

> 
>>> +/**
>>> + * idpf_pci_err_resume - Resume operations after PCI error recovery
>>> + * @pdev: PCI device struct
>>> + */
>>> +static void idpf_pci_err_resume(struct pci_dev *pdev) {
>>> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
>>> +
>>> +	/* Force a PFR when resuming from PCI error. */
>>> +	if (test_and_set_bit(IDPF_PCI_CB_RESET, adapter->flags))
>>> +		adapter->dev_ops.reg_ops.trigger_reset(adapter,
>>> IDPF_HR_FUNC_RESET);
>>
>> You say "Force a PFR", but PFR is only triggered on the AER path,
>> not on the FLR path.
> 
> And?  idpf_pci_err_resume() is only invoked in the error recovery path
> (aka AER path), not FLR path AFAICS.

The driver calls is in idpf_pci_err_reset_done():

<...>-86378   [009] ..... 342752.746321: idpf_pci_err_reset_prepare 
<-pci_dev_save_and_disable
bash-86378   [045] ..... 342756.748148: idpf_pci_err_reset_done 
<-pci_reset_function
bash-86378   [045] ..... 342756.748272: idpf_pci_err_resume 
<-pci_reset_function

Thanks,
Emil

> 
> Thanks,
> 
> Lukas

