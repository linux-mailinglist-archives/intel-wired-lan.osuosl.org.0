Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 11HXMfR7BWqlXgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 09:38:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F33DA53EE75
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 09:38:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5959680CBA;
	Thu, 14 May 2026 07:38:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MLOcgc5ZU9o1; Thu, 14 May 2026 07:38:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4B2A80CC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778744305;
	bh=nHISSlvH+G3fHdv5EuqXYAKTD4C+hsFRcM7v3SqduWk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3u3vGTJHXZBSoUqTJ2kCgdnyykZiC9bMcl4RdNNbWdgqhBIi0whpEtKAxqK3I9vmn
	 3ePM0tLmV/3+kn6GqWwMblIdrBCLU+TPMDK5T97xmk4sXv+pr5QrTpvJdJL4RnMN31
	 MTqyNoJq6qrsPrvLbxS0Q1/aaAroskyYrZctDe2RvmlGtjk4qqC2hHvuiz8WJyZOQ7
	 KaVs1dWi54BTbA2ayoHKOtDvZrW/7TpjFhZixI//HfUzTKZfogbLpY+nRT+GHJJUpL
	 4zUXcKT74izTE3mPtgy1g0y0ZTIOrpbar7yTKx6wV2gVAjK48feuWbsmk5C5z/01yH
	 0WgWwC7u3z5Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4B2A80CC8;
	Thu, 14 May 2026 07:38:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BBDF737D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 07:38:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0C7F60DB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 07:38:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YLNx3cr0e_9b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 07:38:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=moriyax.kadosh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9796C60DB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9796C60DB8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9796C60DB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 07:38:22 +0000 (UTC)
X-CSE-ConnectionGUID: xrpa91O6SCGqKjc2tvmr0g==
X-CSE-MsgGUID: QbZeAAtfTBW7Bf2xjaYv3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90375663"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="90375663"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 00:38:22 -0700
X-CSE-ConnectionGUID: tRc6tkRkT2eMueCcdX7Xlg==
X-CSE-MsgGUID: XN+Q2YdiQli2tSbw4TLyyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="276400595"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 00:38:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 00:38:20 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 00:38:20 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 00:38:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IQYoZPE2HCYJqL/tH2L6CMDxy2Xthor/vXJ9Aa2uDTqq2/V6Y2TNMDchMpv8tzu/dnNG1A5VUGHnGHIQtSucaWyP0go7EYVaj8eIag5Xk3wZQqpMKjFobCKwAi6MbBkljeLukPQEHyu61YENqCqdcaGkuCHCISYtUdBA7kRgYqRYo2hw5rtYUVaQT8QkrlLrOrbpD5g1VfIdcNllizgod6mxiErr5dqHIpEvm9T1ULWQHc58eCBAXsAGZf+F8HZkYeMpdXMjpkYIFvJVb50pQRY3uMVxlk0/iLv8FAOPZNNJRDYVbzGLdEboNWiI67yEIrrsnBGYUwZUUjkGziFgMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nHISSlvH+G3fHdv5EuqXYAKTD4C+hsFRcM7v3SqduWk=;
 b=A1S59FB9bR2j87PT34CRfkAzX8jshWWnwBHV0zjHshn7kyMkBhf8EtrLO21+S+7WLz/bqWTzZ7vPhTSYUmI38K8oRehqrHAcuDo0vRJqcL2seN4DBgSPMFlN5AI8AIRVfN2dqeyL2FfDzUwanWPv4E5K6+RMGh5doXrbunh4SQY6S/CC80ND7Fd9SnSdWqKv15zRIYrNLXu2F+U5ONxIDQXy2bPtQPXs34E0HSDv8l07feHcwMQkUgDT4c252zkHRO23fm8aL6zI4YsHP5knKkHaS+kOTbmSfoLpPI2ujDncRdHudcUHa4Xrioy1Kl5x1ePp808UKJuSXvCpt09TEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB8448.namprd11.prod.outlook.com (2603:10b6:806:3a3::17)
 by CY8PR11MB7036.namprd11.prod.outlook.com (2603:10b6:930:50::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 07:38:12 +0000
Received: from SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8]) by SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8%5]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 07:38:12 +0000
Message-ID: <f30aef93-0a6b-4012-8732-cdff915ac3fa@intel.com>
Date: Thu, 14 May 2026 10:38:04 +0300
User-Agent: Mozilla Thunderbird
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Daiki Harada <daiky0325@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kohei Enju
 <kohei@enjuk.jp>
References: <20260331103924.36422-1-daiky0325@gmail.com>
 <20260331103924.36422-3-daiky0325@gmail.com>
 <IA3PR11MB89865406A4D4891BF48F2D47E550A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <8607e5ca-9224-4803-91ac-fc0964f79e2f@intel.com>
Content-Language: en-US
From: "Kadosh, MoriyaX" <moriyax.kadosh@intel.com>
Organization: Intel Israel (74) Limited
In-Reply-To: <8607e5ca-9224-4803-91ac-fc0964f79e2f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0014.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::8)
 To SA1PR11MB8448.namprd11.prod.outlook.com
 (2603:10b6:806:3a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8448:EE_|CY8PR11MB7036:EE_
X-MS-Office365-Filtering-Correlation-Id: fc30f547-543b-4e2e-c18b-08deb18bc089
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|22082099003|4143699003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: 0EC0khZO78a60gSySruW63c8BOWxiB49EqP0xLaLyIa/a4ag6Nj0PM2s3JPDImND2MwhGwSxLYBbPkGYc4Mvk4TLg1bNzktjv+zxjnL6NRfh+jgTNAzPiK8i4DOAeocU+2vKMFSaYyvpNJBdK/3UaqcfrevMdU4Ll+BG6qu7QbQ9AQd80V9g9QXEHIXk/pa51nlTZEfDwLkL9f0gVzKedBHFZi9ekMpawP81v2ye6YCBQbOKaecRXodZUKUNtcuBYRNmJ046rPUdtfKg4M50IGj/nZzmoGXEqXAh+NKv0nHDK2Li0xih7KdG2vAgYNZWfVTH/Er21Ob12IlbbiFQ2sttfT1MY5kRA0SMn5Lid512dhDuz2gXwQMU50u3UZFQatDw4KwaLmXLrYxFJJwvd7LeGXE+AyWscraw8YVauXP0BjeWjk6kHC2SLRUW42eJlXTo/J3j1KwW0Cn7+L9b4JByqKNLcmCeL9pcK6V+lG2gpDtN9jP4OcG00M6RfJrqYmvAiy1P4njcesBiu0Ejn2J1eW0xSX5od8PA+9XHji/Xmgo2X8vFzxHB8+RB+kMHUfxyhldZGDOHmbrhhv3YLpa4ZzpPka5GvjYcKaxrvoW288L/d13junUn2xxEWs5kmeRF4xn6yS4Dvp0t4IbRNQYgzIRk9JHbob2bkVHCxRYU6JO8KT9rh2FzESQr0Ngv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8448.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(22082099003)(4143699003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkU5UGFZdTFlR2xPVUUreTE5UldHa3kxNk5ISjBuLy80R1IvNk1SYjhyQjdV?=
 =?utf-8?B?aVh0TkJqQUJ1dThjL0FySnJvcUw2ZkE2S0QxQzE2WkdFbkc5N3JVU0tnUkk3?=
 =?utf-8?B?ZlNFdU54b0k3anJwNDIrbnJJU1hreCtWd0ZxdDlZcklpb1U2elY4cnJiY3pB?=
 =?utf-8?B?a0M3dFVMa2VjQUNldXB4YXVIR2F6ejdMNnQ2Qks0MHVKMWI4THpURm5BZHZm?=
 =?utf-8?B?VHdQTFV3eWh2bE1uV3FvbzUvRVRaM3B1SzRMbk1MV1gzU3dkQmJvY2JmRlNK?=
 =?utf-8?B?b0VZc3FjQVJPSERnc0VrRGs1TldTMnlYbThDVGtHTzRqNEhRNmw4ckR0Y0lI?=
 =?utf-8?B?ZFVNY1F6aXdsWmdyc1JMK3RoSk9HZGxDclIwaUdScmRaMmVUTlNmcHZtZ1dB?=
 =?utf-8?B?MWh1KzRYSVBuY21Wc2RraHhXRXkyK3NDTzFzVkVxQ0ZWUEFhUTk3QUlmeG5V?=
 =?utf-8?B?bFdzN21OL2gvSGZQYkpzck0vMGYvV3crY2FabS8zYy9JMXRtbVd4Yk9NTXZF?=
 =?utf-8?B?VUFQZDBRRjBFLzBTNTFPVmVlSlNZVThxR2d1R3NMMXcwK09BT3NzYm8xeVJI?=
 =?utf-8?B?a1hPZlpqU1VYVGp6ZlJkejhOL0pwQ21KRlhHVnV0SGUrdkRZaFZSaTN5Zll6?=
 =?utf-8?B?UVduQkluQ0tVWmJkMThrYXdNcmJmWWNSUytOdDcwdlA2d3huZFZidC8wNTEv?=
 =?utf-8?B?UkRMVy9heUhlWWd0dm02RXA3Ty9SNmxmanptMk5FSm1jSkxNdHdEL0NyVE93?=
 =?utf-8?B?UzhYdXBYREN6YWQxcUpyektnVWtDQUJNNzlNNW5uS0duWVZteUdXSWRoczFL?=
 =?utf-8?B?TWszM3pqL0wyb1NIQ010R041VUFDbjJzOXFvQXM3UEJ6N1FTSGFmakFCcDNh?=
 =?utf-8?B?Tlh5Q3dJdm5xUlVUa3FmQmRuVkNxbzBDTkQrV1pKY0tnTWxmYURiVEdtaUF0?=
 =?utf-8?B?bGdMKzlTQWpGZlBrSktuU3hZUk80YjE4U1ZiblhiOGNiRE15aTlOS2JGcUs1?=
 =?utf-8?B?SFFHNVQrVUo5NnRWOHJZbm1IaHR1VVYzWitOTUFKYVJvTnBSSThZaVZQQm5K?=
 =?utf-8?B?VWhJVGRMM3h3Vnh2K0ZuK2MrQnVzZ0ZoZDRYOFFFcW45YU1JRnVnVmxrYmNG?=
 =?utf-8?B?UjFXMDZZelRxTTlkMS9kU3BYTmVkWTYzeGwwYnIrS1RJWFN0d3BscWY5elJO?=
 =?utf-8?B?bHJobHJZWGFpNkVTZ2M5VHJtQk9rTXorWjdFUlVCWjFoaDduUXVVSy9WSlc2?=
 =?utf-8?B?dGJwSEFVc2I1R0VhZHhqZlk1N09jQVpjVEN5ZWZqNk1nbHlFeTZxVHU3SWNM?=
 =?utf-8?B?VnlqS2toL0lmT3FpV3NydUphOHNQMGd3R1prckU2eWY5aGdIVWM5RTR2Qi9i?=
 =?utf-8?B?MXd2Y3FCQXFpcTh1d2JhaGFlT3NHaE9EdDlta3lQdGEyeUtBNUNQVFZFQUFi?=
 =?utf-8?B?anZyRnpzd05VNjVTSHRocDRhUUZNcW5WNXZUMlNRMi9mT1lDUzh1aHk3ZW14?=
 =?utf-8?B?a3EvbVlHTCtrNk9jQ2tLMW4zZ1lsMC9MV203aTN2eGJyb0hsR3VxRk9ySGpl?=
 =?utf-8?B?TWNJZVJLZHlPWHl6RmVIeE5nK0xibk1pbkR6eHYvVGVMSHM5ZS9EKy9IQ0p1?=
 =?utf-8?B?TU5OWW4zckFjbHdzd3lPLzJQcjJPZWlCdG8xaUR5eDdrQUtPMDNUMnEvWUYr?=
 =?utf-8?B?QUdPT1JiTDBXOU1RWGhIRkZpT1czeTE0RnBUcDRGRU52bzdDOUVXV2Z2bHlu?=
 =?utf-8?B?aUtCM3RVc0JBY0k1Z3dPM2lwWnpzQW9YTXVkSmh0YnRMTVA1YkVtNzZzWjlm?=
 =?utf-8?B?YkdnWjE4cHJSWFRMZ1VLeWk0Y3FsUkJXaWF0M2h6YjgvMjEyNTVheCthTkdy?=
 =?utf-8?B?TFJURVcrTi80bUZ5MHJmYVVhcjlZOVFnZ1NWdmFJK0VFd0NFeFhPYUpSR1BO?=
 =?utf-8?B?N21QWGh2Ri9IZnorQ1Yzd2ZlWnk5QXBYa3Qvb2dSaHV6dytlL2VNQ0V3bWpU?=
 =?utf-8?B?R3VZZkYyNzYwMW5VSW5qNmo5Z0xlenU5WFF2OXVHbXRtcHBxTFNDVnRnV2My?=
 =?utf-8?B?dXB3N1YvdGMyTGZUWDVyZjNCUmttSXJYU2xoQW9hVUFQMC9Vbk43TFVxR2Vr?=
 =?utf-8?B?OTcvdVpIMko4MHZXZWszSjVEbTRiNzZ0MVZNNzhNbVRXWWpUMTU4WEs0WFVo?=
 =?utf-8?B?eHM4K09OTU9COVhtVFVHTXFxalBQUGhWai9GUUg3UGdPVWlYMk05OEJoWG51?=
 =?utf-8?B?Q1oyYVBwNVpVUUxyb0JTRGp3b1dCbC9XaTF3RVZEWTFNL0pxeEI3WjJQN0gy?=
 =?utf-8?B?YTMvVHR0YTB2UzA2UmYxeEVuOTRvc0tUbVlJZzhXTmhHT3FyaGw4UCtZY0Q5?=
 =?utf-8?Q?dkbLv++y0tUsZDTk=3D?=
X-Exchange-RoutingPolicyChecked: qifGETzGByPW75ikt3AXi0dNcq2JekyUw+/bIPrZs2n4O3v4QieO8y1XTaz+wKRmhVSDnDMBsp3oT2ah42LWKT0r+EjgyrreqCLk9pgruQ8qrjhnN8UN1JMWWmyAiGDM7VuGkexGFgPJTcMcj4X5Lnb+E8cgayoo6EM7pMXBDAdS3etuxf3zqOfzKo2tMLXGjUOsUjttG95yxFlvsMYXAasT0Toy12w1zqbz0ShPr1N7hGhhjXEjx7Fwhjaw4SY64Yw5wfzqwpiRCQZ8+CqQZTSThzPTkMeHp8KGXDSB17WMn83sRzoWio++l26J/ZouWcAwxOpPzAegK+nZQn3pOw==
X-MS-Exchange-CrossTenant-Network-Message-Id: fc30f547-543b-4e2e-c18b-08deb18bc089
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8448.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 07:38:12.3504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5ofgIO80ZDi/WPtqDUAucyZrfI1rETsXGxnKvpqMih6+8obmMI1cgXdACbZaDx0Jc2odW+8c/8gKCQqG1u2WoTF63Mu/uFS8rU3NRRBPl8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7036
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778744303; x=1810280303;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fELvm2Ibofc5FddDUmFR48g34y+Xfh2cPgnlHCa/FGQ=;
 b=dRnmGtFBg2lyX+jnCe2QX1aw2nQex9O2nvh96bst5PQ8B8wZ0dUZxZeL
 U0BL2SLawThy3zjShXEznUmAMecVKadUZlvTS+6tqoYHIjdadpZyuoNUX
 2Rv8jI5S4N9lHwXezrXdw5605UkhbneICP973UbCzcm9abHYlQo+PqE1g
 lYWw+H8NSa8bjELgBtnunr2tesrpAfl7MMYW8sl+IHt1tXcvmkqBT2zy7
 Uuo5rJ+qN4EDqLoJQ++Ig/BdbIb5NbPwQY4vavQw+vuMt2Un/Cfh8heF2
 1aPgzpE1vgQ2AkWzi3p/lu2mn+oZVcagAEZ7pqSwEmPgz79lofNvAjpOY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dRnmGtFB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
 napi_schedule_irqoff() instead of napi_schedule()
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
X-Rspamd-Queue-Id: F33DA53EE75
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:aleksandr.loktionov@intel.com,m:daiky0325@gmail.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lists.osuosl.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action



On 05/04/2026 11:21, Ruinskiy, Dima wrote:
> On 01/04/2026 10:53, Loktionov, Aleksandr wrote:
>>
>>
>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>>> Of Daiki Harada
>>> Sent: Tuesday, March 31, 2026 12:39 PM
>>> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>>> kernel@vger.kernel.org
>>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>>> Abeni <pabeni@redhat.com>; Daiki Harada <daiky0325@gmail.com>; Kohei
>>> Enju <kohei@enjuk.jp>
>>> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
>>> napi_schedule_irqoff() instead of napi_schedule()
>>>
>>> Replace napi_schedule() with napi_schedule_irqoff() in the interrupt
>>> handler path in igc driver Tested on Intel Corporation Ethernet
>>> Controller I226-V.
>>>
>>> Suggested-by: Kohei Enju <kohei@enjuk.jp>
>>> Signed-off-by: Daiki Harada <daiky0325@gmail.com>
>>> ---
>>>   drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>>> b/drivers/net/ethernet/intel/igc/igc_main.c
>>> index 72bc5128d8b8..712605886104 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -5688,7 +5688,7 @@ static irqreturn_t igc_msix_ring(int irq, void
>>> *data)
>>>       /* Write the ITR value calculated from the previous interrupt.
>>> */
>>>       igc_write_itr(q_vector);
>>>
>>> -    napi_schedule(&q_vector->napi);
>>> +    napi_schedule_irqoff(&q_vector->napi);
>>>
>>>       return IRQ_HANDLED;
>>>   }
>>> @@ -6059,7 +6059,7 @@ static irqreturn_t igc_intr_msi(int irq, void
>>> *data)
>>>       if (icr & IGC_ICR_TS)
>>>           igc_tsync_interrupt(adapter);
>>>
>>> -    napi_schedule(&q_vector->napi);
>>> +    napi_schedule_irqoff(&q_vector->napi);
>>>
>>>       return IRQ_HANDLED;
>>>   }
>>> @@ -6105,7 +6105,7 @@ static irqreturn_t igc_intr(int irq, void *data)
>>>       if (icr & IGC_ICR_TS)
>>>           igc_tsync_interrupt(adapter);
>>>
>>> -    napi_schedule(&q_vector->napi);
>>> +    napi_schedule_irqoff(&q_vector->napi);
>>>
>>>       return IRQ_HANDLED;
>>>   }
>>> -- 
>>> 2.53.0
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>
> Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>

Tested-By: Moriya Kadosh <moriyax.kadosh@intel.com>
