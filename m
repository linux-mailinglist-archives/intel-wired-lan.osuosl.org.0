Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D32C48FE0D1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 10:22:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72E8D6144B;
	Thu,  6 Jun 2024 08:22:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ywoHHffLH1ed; Thu,  6 Jun 2024 08:22:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 737746144C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717662123;
	bh=RpgxHMtGPCFMhBF0EbuTuJezKWah1z5rHwMl7p9GCOw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1tgyeIbQgZsej1K0n8ec9Rlz09BihvSNNhoZc7L0OQmQhqmaswMelRsquDl2RkUVE
	 KvdB0cdSU65kCtlPtH3QsjNQS1CAiglRS72dtE2Q3eqTHvF/PCWTuAw/qkAfOviDKl
	 LF3vEuSUhjjod7VwvMTGnvb0yIikx58e5PdygC3JJ1dQMERVA/ezru4EPyfpD1vs7D
	 v7DPKDuQUh3FRKV5jtxay0Rx8FMW+VrzWjm1cfQo3459CtRzCk4EKQ4Nt5XB3I6KRz
	 1QG0dh6UQt5ShL/1gK116r6T6lNUA1t/oV6ZaFnB6KHsDjOHlFs2oKRgsP8aLhwirF
	 AT0Ay+vn5lD5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 737746144C;
	Thu,  6 Jun 2024 08:22:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A73C71BF599
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 08:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 93189611E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 08:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4dYjfQeFF0Hj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 08:22:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 264D661449
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 264D661449
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 264D661449
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 08:21:59 +0000 (UTC)
X-CSE-ConnectionGUID: qOKqkJcqQ9ipbW7dxMTUHw==
X-CSE-MsgGUID: jmP2a5csSdGwnTbKGFS3Ig==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="24970037"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="24970037"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 01:21:59 -0700
X-CSE-ConnectionGUID: OEnCNVQPQ9up/nc9gKy8hw==
X-CSE-MsgGUID: gx8J2KAjTTmslSv38UA9oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="38556148"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 01:21:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 01:21:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 01:21:58 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 01:21:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSG6R8M5fG0wWfjAj+KewWW/+vg/w0GjQr+AWzUm0tCp2U+rBUcFmFf4Fe0moZw/yqkTs7yIYGuFSKp//4pDsBSGXFnQpiVq18/+nuG56GA08P9XInOvSOR2TOpqvuz4RpIwPprbTNHWZuyxDguISKszu6IxbIhbGx5/c7Ub6jSF9czLpdZ0XJ/MygeUPag3XYbNMK9qCLemtFpnRgwXOThq5N7d+Y5fj4HV7n1lgezHWlGm7epdk9wCgT2LeQ79fvl3Go28nKfbaW7UgJ2QTT6flpWM2kcFUU59FOgGBnf/C5S7GYqou5ZvrJXt7KP2nPaUAWz3N98vC7tBYWyAkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RpgxHMtGPCFMhBF0EbuTuJezKWah1z5rHwMl7p9GCOw=;
 b=Vi6izgbsq3ugmKi14kj9Rq571SXAOOBKElsabXtTlN3eR+r+3O8fRajvqwhyCQdkcoMrX6qiZ+DRVF/Lo1MnoMVQ/UbmXHSx3GsOIF5Rhyrhzvhs3hm5XfDbiOnfz/4AgT1v2jnViuQAB/DA7+ecS4GUf+WPG1fJGlu867KyPYDU4tCD7eu2uP+21aUhlRL7KZFY7NhP3IeYSB3/ILCbO2IJ9xOithH4XIYv2pnfMGDSK7FHzKNKoytoAET2ktm44XxiMwQXOwjvRzQ9WkZJsN40RIk1yZLMTapcju12ndq+w3Wz0JbPvJu+uV7nIxdQS7lbs+H4mXA3m7m8avItqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CH0PR11MB5298.namprd11.prod.outlook.com (2603:10b6:610:bd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 08:21:55 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7633.021; Thu, 6 Jun 2024
 08:21:55 +0000
Message-ID: <0418a7cf-03d3-4c14-afc4-27ed8714fa13@intel.com>
Date: Thu, 6 Jun 2024 10:21:50 +0200
User-Agent: Mozilla Thunderbird
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: Hariprasad Kelam <hkelam@marvell.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20240603123146.735804-1-wojciech.drewek@intel.com>
 <PH0PR18MB447415E48D0E77D24BE9A9FCDEF82@PH0PR18MB4474.namprd18.prod.outlook.com>
 <1ee2b836-ffec-4581-b68c-60ca63d50b29@intel.com>
Content-Language: en-US
In-Reply-To: <1ee2b836-ffec-4581-b68c-60ca63d50b29@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0010.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::20) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|CH0PR11MB5298:EE_
X-MS-Office365-Filtering-Correlation-Id: e9cab639-49fd-4942-2fad-08dc8601b9a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d01tMjFjcFZQZFJTZ1ZqWEFLdUxWSkRkN2VWbDk5bDE4NkQzNStxVDY1VjBa?=
 =?utf-8?B?ZDN2TzhsL1lJSmNDcHF2MXo0a3hRQkZMS0FzVklZUWI5U0FMblRFaEJZNkV0?=
 =?utf-8?B?c3dHOVJrUXJ0aE9LNVF3eVlnNHZwMUZLMXpVMnVsS3JnQXB3YU5oVWJmbEpl?=
 =?utf-8?B?M054YUhUVmd1U290MjU3ZjdnUVI3djdBTXdBN0RrRFpPQzVIOUltSUxPK2RJ?=
 =?utf-8?B?T1hEV2E0YjNLU3h1OERZZnZ4eVljMndsMis0RjB0S0l1aitQY0dSY0NHQWJx?=
 =?utf-8?B?aDRYWGNVWFdOU01FYzJKejlFY1k4TjFmb0p4dTRxcnRwVjFzcDd6SmY5clpy?=
 =?utf-8?B?akRsMnlsT3RlYzlTamVaMkJmWWRzaVBhU24wMnJxejdlaWVXRnpwR3ZIekpu?=
 =?utf-8?B?STdMVjBQbkhEaEI1U1lrQzJTbWRaR1dnN2ZzeEhvQ0NibWgvM3pKOFhmYTB6?=
 =?utf-8?B?Tjg3eEY1azJoNjZvdnBGNzlESUhCS0ZtRmdUVUdnM0laS0h4NHIzdDVBdmpS?=
 =?utf-8?B?Tk9IOGxSd2JFQ3NkM2RaQ1ZwYTNkWXpITlBoZFRvWWRaNWFNRGNzdFFUVUdk?=
 =?utf-8?B?S2dWaFhlZEIwRUVoL2JhdEQxVkw1OS92WldSTGt5N05sTFg3NEQwd2R4OUk4?=
 =?utf-8?B?cHAxcDBNM1RlNkFyRFhHc016YlhLbUo2SE1mSWNpb0N0ZkZDdFNWSzlDcTU0?=
 =?utf-8?B?c3RIM0l3TS9jMkdaV2xZV2FSUXl5ZjhuakIvM1I1WEVHTnd6aUVOR2xvSFhw?=
 =?utf-8?B?T2lLUzY4dWd3ZERVQVFzYlpKQzBvK2RyeXZySFZQSmkxdzlOaTVVS0JpZWZG?=
 =?utf-8?B?Wm5EbjdMcmpNaE5CblRLdmpKTnVsTUs3Tno1UmV2MWd1UjNRL1NVeUEwZWRC?=
 =?utf-8?B?ajRzdjh2MjR3Vnc1SlRsTkJ4ZXRuTmtUM3hmWUVpM2lIR0NmSzlhbS9uOHZo?=
 =?utf-8?B?aVhSSWhrcGlxRktDaDdyYzNyRnJyRHEwL05ENXhHckZRV0owMitpUVp6RGps?=
 =?utf-8?B?R3Riblk0L0MvYTFIQ1d6azJzZnJUOHBrcmM0TkdHdkwzd2hyQU4yeHZyOW5k?=
 =?utf-8?B?MHVpUmtJUzNQYzg3YjBNZzlBMmM0cjV0Nk05YnUvN1poOGthY3M4M0lWd1lk?=
 =?utf-8?B?SS9YMlF0RHl0eU13YUZ6cHRuK2dUbUUzMDFCVVY2UER6c1NkTkFNWmxLRjRa?=
 =?utf-8?B?UEIxU1Rpa3ZZRFREdGdOZGJQTmZUcmNndkpqbmQ0a2FJTnE4TktNNmlXSWor?=
 =?utf-8?B?R3ZOL3REZXB0cENOY3BjSTQ0SVJsZzg0Tno5TGdNNkhtM1lxS3JmTE5XTksv?=
 =?utf-8?B?THFsMksvZzdJa0EyWnAyWXhFSzFqU29EckpDZlovYkZsekI5QlNFWW9uZ243?=
 =?utf-8?B?WWtXc0IyTGZIYTAzUmNQZmpZNURkNE1hNHhvM3ZFb1JwTS9hMVNGNHNkQjFT?=
 =?utf-8?B?YSs2Ri8xMEdGSjVBV2QxMEdQWW54R0x2TzRDTHdVbFZYUGxpZzBBZm1zMFF0?=
 =?utf-8?B?d21mYW9pUlRUTmFoQXoxT2xLT2xEcG9PWkF4RFltSDhMSUVwOWxwTnZPU0Qx?=
 =?utf-8?B?SnZ0U1paL2xubFU2bFUzN1F5OUhmNENGVXc2RDM4Y2kzQTk2b2RseGRDelE5?=
 =?utf-8?B?ZUZpbU54ZFo3N2NLSGpkajNGNmxNVkQ5SjArc3NCOWFxK2RWaXA2UXE0Y2ll?=
 =?utf-8?B?bmgyVmNMVkVEaVVSYjNST2lTUDhnWDRKL1l3eWpoT283L3pPNUVPdlFqTGNa?=
 =?utf-8?Q?PYgIlaEQ3o/euMT7tXoW/kkyjN1vXTgBEwS5ugW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXFKWFp4VTYzK21NeUVaa1podytQNlZ4Yk44V3FneDFROSsvMWJ0NktoZ2U0?=
 =?utf-8?B?NjJuNllHOEYrd283WTNROEdtNWNnRUloWjhlS1Fncmd0SlFPcVpmWnlDRkcw?=
 =?utf-8?B?Sjc4OGxyLzV1Y2syQXBxaGhRamxBWVVpV1dxNnl5RDFtdTNjRGJCNzU1U2dl?=
 =?utf-8?B?WDFlR3dsalR1dkxINjZiMWd0SnZ4cDFJTlBPV1dUWTNoS0lpQ0V5cStSem5L?=
 =?utf-8?B?YjJMSElLU3NkYW1GMWRtREM5NUNOTnB6dWJWS1krellrZzVBRG56SU00MHQr?=
 =?utf-8?B?Qkl0UGJWNFVUdmhJM1NoOHRKdkJLem0zRThENE0yNjZuaGZGRUpPeWQzaEVV?=
 =?utf-8?B?MnM0ZVBmZHZhMDdKU3E5LzdRNElkaUpVaVNsUFVVL1pOMldmMjZ1NG5QNGtU?=
 =?utf-8?B?aVFZM3NMWUlIZ1VuOTljTFhSOEZsekJiZmptbmNiVXF6TERRMUFqUGVFSmpy?=
 =?utf-8?B?QVIzeDFDLzRhbVlpbC9VTTU3MEpaY0R1a3pyd3hvQXg3UjVlSDdFNGY3cEEy?=
 =?utf-8?B?WWxPam5kcmwzWGFUMXM0M3g0MjNPTDVmWXBXSGVvMDAzSGpaT01Lem4rb05O?=
 =?utf-8?B?ejlJQSswRlh0VllvMHJRbXhqK1ptZFpUYjJFeGlEaXk2T3Q0K3B2RzlUeHAr?=
 =?utf-8?B?MjZpSmRSd1hIMzgwMzhtWUZDMDRTZTdYUk9VTjF3RExMT3hkVXRZNzk3YnBm?=
 =?utf-8?B?MHczL2FsVFFHR2phbGgzWUptN1pVc2FqWm96VHJDeHF4dEpSRXpwNUx3UWta?=
 =?utf-8?B?akNnY01IYTB6ZkhSSFoxUzU0WTZCMEh4TFhLdkpsOFFoMEpURzl1ZHZDNGti?=
 =?utf-8?B?Z245bGkvRWRzSlNNeDEzVHQ0RzZObjNwbUphY2xJK3NYamI4cm0xVFloV1hT?=
 =?utf-8?B?K1M4VGZldk5LdXhBVVRXNGRZSlliRkhNc21MQjVQb1F1eGN5dmlwYWphSnZR?=
 =?utf-8?B?V2Rua3p1Z05BQXZOTGJvNXNJR3k0b3pHVTZYcFg1cmc2SmRrRDhUTmRBeUtV?=
 =?utf-8?B?azJKTjdnZk5haU05cTloTnpLVTNLWkZZZ1N2WnRwL0p4OGZRVzdYYXNTMUVS?=
 =?utf-8?B?RXlqMTk1REZpc3B4NDlzTlNHakVXTFdsUWNJanZLNHZ4UVZiQ0l5SHd5SWtM?=
 =?utf-8?B?ckNBWndIbVp0bExCK1ZRZVdtOFF3U2l6a0dXcUVZVUYzSExOdEU1RldoUmhD?=
 =?utf-8?B?TXg2bkl3OVRKL0xaQi9SQlZnS0xXckpoa3Rhc1YwS0RucStNL1o5dWp1OEtU?=
 =?utf-8?B?ZUJILzV3ZVM3UDZjd0ZSd3F6TmdTNVV4U29VZnZsamg1K0VSdFl6cm82YzEv?=
 =?utf-8?B?Vkx3OHd0QzJxdDJWWFRaZmdIZmtCQmJoa0dyb2NGc2phWUNOQzhoOUgzdS80?=
 =?utf-8?B?RVNVc1dMZEtCVFJNV0pwY0FsT3o3NG52eHpaNC8xVkljOWpZVVE1UG9rK1dR?=
 =?utf-8?B?TzJnK3FCczhjb1pVZms4YlBKNlYwS2EwQk4zeGlMNUNMakw5RUZjTW51VEUz?=
 =?utf-8?B?ZS9Pdys0cGlFcmNZYkFCdUI5bCtHSzAzd1VxNmFFTjFkVkM1OWFaWmFCUWt1?=
 =?utf-8?B?THB2QUJkQk1SWHJlZHZZNHJmay9MYXduMlNRbzdaaEpUWXExUndUOTJNOGto?=
 =?utf-8?B?Ri9nWkR0bnhYeldPa1c5dzdYRXExOEhMS2x1RHFoWExXV05xczFoeGV2TTQ4?=
 =?utf-8?B?WWFsMnY2djlmQTg0OGI4QkdiUy83NWk1ZnBqWVdZRnRoOGg0aEVTNEZFYVR0?=
 =?utf-8?B?M3ZrT2hzbkM0MDUwdjQrbmxJWVJTTnpjTEUzK09ld1hzQzQ0RGRqSFBaV3ZN?=
 =?utf-8?B?SWVJV21ENE5DdHIyZU9vZVkxVnFkcUNiYU5HVzBYOW5kWTF4TmhBcFdGVGtB?=
 =?utf-8?B?a3lObzlLbDdCa1lSMFBQcUNseGNCclhIZmtZcndOSENPcUFOaGVQbUJ1TzV6?=
 =?utf-8?B?Tml3R3NMU3BpYXFzUFhDcnl5NUNNSFhBZnMrQkNMdTg4K0ZCR3RRZi9nL0U5?=
 =?utf-8?B?cU9VcW9KM2RWR1lPbThvSWdES0NVL0IrVXJ6OFpoZ0E2RzVuMFN4SDY4S0Zy?=
 =?utf-8?B?Ly94U0RRNlRPNE1LRlNTREpSRlBxaG5kWDdFT3BoSjcxdHZDTitNQTBGa1p5?=
 =?utf-8?B?ZEtNUzJwSHphd0lzNkdwcGVFVEhWNm1scVpCbTc3ejdtTlN4RXZBZVNpS2FL?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9cab639-49fd-4942-2fad-08dc8601b9a7
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 08:21:54.9991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GGmhLi3LFWQ0RN3IqK9CwCgrStIkoC3Bt7erZCe/Z00JEHdlCAKJk/GFkfygZzT1m7petZII0l5kw4TSAvjxSzFRJoWvbA8JiGgr2gvh/q8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717662120; x=1749198120;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4WjMmNFIgUUO2KaD2zKlgQNI4Kov9eQUCDU9PERHYQ8=;
 b=W4IFWz59O1ivx7isNDA5jCny1236kAfMcaIfNnhtpEk6RggmV8s2G14x
 LuIqqWEpqKTtq41XbbNmm5rk5Yehd3umgghFjLL4ffEZzFNLrdCtFHof6
 eBuhI0zlDk64aNSQquLe1/y8zbMxFKqqlG3ctmX3kVrCpflBXOhiaJvBC
 Fedu7wuU/sTiWtJxzM08sDejf1JQxs4Jmf/QTEQ3TTu+rt6f9GmJhCbRZ
 Qg+GZVbsyYHRWmC0c+ISMqwrMZhWxnxaXQRffHHrhHpvBo1BQtBT16hiu
 5nbezw1bQeWohDX5jDJtZq7uAJPNURewlcjeQRoa5npriR3PzfxBSPpLH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W4IFWz59
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add support for
 devlink local_forwarding param.
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
Cc: "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 04.06.2024 11:09, Wojciech Drewek wrote:
> 
> 
> On 04.06.2024 07:56, Hariprasad Kelam wrote:
>>
>>
>>> From: Pawel Kaminski <pawel.kaminski@intel.com>
>>>
>>> Add support for driver-specific devlink local_forwarding param.
>>> Supported values are "enabled", "disabled" and "prioritized".
>>> Default configuration is set to "enabled".
>>>
>>> Add documentation in networking/devlink/ice.rst.
>>>
>>> In previous generations of Intel NICs the transmit scheduler was only limited
>>> by PCIe bandwidth when scheduling/assigning hairpin-badwidth between
>>> VFs. Changes to E810 HW design introduced scheduler limitation, so that
>>> available hairpin-bandwidth is bound to external port speed.
>>> In order to address this limitation and enable NFV services such as "service
>>> chaining" a knob to adjust the scheduler config was created.
>>> Driver can send a configuration message to the FW over admin queue and
>>> internal FW logic will reconfigure HW to prioritize and add more BW to VF to
>>> VF traffic. As end result for example 10G port will no longer limit hairpin-
>>> badwith to 10G and much higher speeds can be achieved.
>>>
>>> Devlink local_forwarding param set to "prioritized" enables higher hairpin-
>>> badwitdh on related PFs. Configuration is applicable only to 8x10G and 4x25G
>>> cards.
>>>
>>> Changing local_forwarding configuration will trigger CORER reset in order to
>>> take effect.
>>>
>>> Example command to change current value:
>>> devlink dev param set pci/0000:b2:00.3 name local_forwarding \
>>>         value prioritized \
>>>         cmode runtime
>>>
>>> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
>>> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
>>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>> ---
>>> v2: Extend documentation
>>> v3: rename loopback to local_forwarding
>>> ---
>>>  Documentation/networking/devlink/ice.rst      |  23 ++++
>>>  .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
>>>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
>>>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
>>>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>>>  5 files changed, 164 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/networking/devlink/ice.rst
>>> b/Documentation/networking/devlink/ice.rst
>>> index 830c04354222..0eb64bd4710f 100644
>>> --- a/Documentation/networking/devlink/ice.rst
>>> +++ b/Documentation/networking/devlink/ice.rst
>>> @@ -11,6 +11,7 @@ Parameters
>>>  ==========
>>>
>>>  .. list-table:: Generic parameters implemented
>>> +   :widths: 5 5 90
>>>
>>>     * - Name
>>>       - Mode
>>> @@ -68,6 +69,28 @@ Parameters
>>>
>>>         To verify that value has been set:
>>>         $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
>>> +.. list-table:: Driver specific parameters implemented
>>> +    :widths: 5 5 90
>>> +
>>> +    * - Name
>>> +      - Mode
>>> +      - Description
>>> +    * - ``local_forwarding``
>>> +      - runtime
>>> +      - Controls loopback behavior by tuning scheduler bandwidth.
>>> +        Supported values are:
>>> +
>>> +        ``enabled`` - VF to VF traffic is allowed on port
>>> +
>>> +        ``disabled`` - VF to VF traffic is not allowed on this port
>>> +
>>> +        ``prioritized`` - VF to VF traffic is prioritized on this port
>>> +
>>> +        Default value of ``local_forwarding`` parameter is ``enabled``.
>>> +        ``prioritized`` provides ability to adjust VF to VF traffic rate to increase
>>> +        one port capacity at cost of the another. User needs to disable
>>> +        local forwarding on one of the ports in order have increased capacity
>>> +        on the ``prioritized`` port.
>>>
>>>  Info versions
>>>  =============
>>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> index f774781ab514..810a901d7afd 100644
>>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> @@ -1381,9 +1381,129 @@ ice_devlink_enable_iw_validate(struct devlink
>>> *devlink, u32 id,
>>>  	return 0;
>>>  }
>>>
>>> +#define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
>>> +#define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
>>> +#define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
>>> +
>>> +/**
>>> + * ice_devlink_local_fwd_mode_to_str - Get string for local_fwd mode.
>>> + * @mode: local forwarding for mode used in port_info struct.
>>> + *
>>> + * Return: Mode respective string or "Invalid".
>>> + */
>>> +static const char *
>>> +ice_devlink_local_fwd_mode_to_str(enum ice_local_fwd_mode mode) {
>>> +	switch (mode) {
>>> +	case ICE_LOCAL_FWD_MODE_ENABLED:
>>> +		return DEVLINK_LOCAL_FWD_ENABLED_STR;
>>> +	case ICE_LOCAL_FWD_MODE_PRIORITIZED:
>>> +		return DEVLINK_LOCAL_FWD_PRIORITIZED_STR;
>>> +	case ICE_LOCAL_FWD_MODE_DISABLED:
>>> +		return DEVLINK_LOCAL_FWD_DISABLED_STR;
>>> +	}
>>> +
>>> +	return "Invalid";
>>> +}
>>> +
>>> +/**
>>> + * ice_devlink_local_fwd_str_to_mode - Get local_fwd mode from string
>>> name.
>>> + * @mode_str: local forwarding mode string.
>>> + *
>>> + * Return: Mode value or negative number if invalid.
>>> + */
>>> +static int ice_devlink_local_fwd_str_to_mode(const char *mode_str) {
>>> +	if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_ENABLED_STR))
>>> +		return ICE_LOCAL_FWD_MODE_ENABLED;
>>> +	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_PRIORITIZED_STR))
>>> +		return ICE_LOCAL_FWD_MODE_PRIORITIZED;
>>> +	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_DISABLED_STR))
>>> +		return ICE_LOCAL_FWD_MODE_DISABLED;
>>> +
>>> +	return -EINVAL;
>>> +}
>>> +
>>> +/**
>>> + * ice_devlink_local_fwd_get - Get local_fwd parameter.
>>> + * @devlink: Pointer to the devlink instance.
>>> + * @id: The parameter ID to set.
>>> + * @ctx: Context to store the parameter value.
>>> + *
>>> + * Return: Zero.
>>> + */
>>> +static int ice_devlink_local_fwd_get(struct devlink *devlink, u32 id,
>>> +				     struct devlink_param_gset_ctx *ctx) {
>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>> +	struct ice_port_info *pi;
>>> +	const char *mode_str;
>>> +
>>> +	pi = pf->hw.port_info;
>>> +	mode_str = ice_devlink_local_fwd_mode_to_str(pi-
>>>> local_fwd_mode);
>>> +	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +/**
>>> + * ice_devlink_local_fwd_set - Set local_fwd parameter.
>>> + * @devlink: Pointer to the devlink instance.
>>> + * @id: The parameter ID to set.
>>> + * @ctx: Context to get the parameter value.
>>> + * @extack: Netlink extended ACK structure.
>>> + *
>>> + * Return: Zero.
>>> + */
>>> +static int ice_devlink_local_fwd_set(struct devlink *devlink, u32 id,
>>> +				     struct devlink_param_gset_ctx *ctx,
>>> +				     struct netlink_ext_ack *extack) {
>>> +	int new_local_fwd_mode = ice_devlink_local_fwd_str_to_mode(ctx-
>>>> val.vstr);
>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>> +	struct device *dev = ice_pf_to_dev(pf);
>>> +	struct ice_port_info *pi;
>>> +
>>> +	pi = pf->hw.port_info;
>>> +	if (pi->local_fwd_mode != new_local_fwd_mode) {
>>           This check seems redundant, as devlink calls set API only if there is change in value.
>>
>> Thanks,
>> Hariprasad k
> 
> Sure, I'll fix that.

I tried to look for this check in devlink API and I can't find it.
Could you show me the exact place where this check is done?

> 
>>> +		pi->local_fwd_mode = new_local_fwd_mode;
>>> +		dev_info(dev, "Setting local_fwd to %s\n", ctx->val.vstr);
>>> +		ice_schedule_reset(pf, ICE_RESET_CORER);
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +/**
>>> + * ice_devlink_local_fwd_validate - Validate passed local_fwd parameter
>>> value.
>>> + * @devlink: Unused pointer to devlink instance.
>>> + * @id: The parameter ID to validate.
>>> + * @val: Value to validate.
>>> + * @extack: Netlink extended ACK structure.
>>> + *
>>> + * Supported values are:
>>> + * "enabled" - local_fwd is enabled, "disabled" - local_fwd is disabled
>>> + * "prioritized" - local_fwd traffic is prioritized in scheduling.
>>> + *
>>> + * Return: Zero when passed parameter value is supported. Negative
>>> +value on
>>> + * error.
>>> + */
>>> +static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
>>> +					  union devlink_param_value val,
>>> +					  struct netlink_ext_ack *extack)
>>> +{
>>> +	if (ice_devlink_local_fwd_str_to_mode(val.vstr) < 0) {
>>> +		NL_SET_ERR_MSG_MOD(extack, "Error: Requested value is
>>> not supported.");
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +
>>>  enum ice_param_id {
>>>  	ICE_DEVLINK_PARAM_ID_BASE =
>>> DEVLINK_PARAM_GENERIC_ID_MAX,
>>>  	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>>> +	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
>>>  };
>>>
>>>  static const struct devlink_param ice_dvl_rdma_params[] = { @@ -1405,6
>>> +1525,12 @@ static const struct devlink_param ice_dvl_sched_params[] = {
>>>  			     ice_devlink_tx_sched_layers_get,
>>>  			     ice_devlink_tx_sched_layers_set,
>>>  			     ice_devlink_tx_sched_layers_validate),
>>> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
>>> +			     "local_forwarding",
>>> DEVLINK_PARAM_TYPE_STRING,
>>> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>>> +			     ice_devlink_local_fwd_get,
>>> +			     ice_devlink_local_fwd_set,
>>> +			     ice_devlink_local_fwd_validate),
>>>  };
>>>
>>>  static void ice_devlink_free(void *devlink_ptr) diff --git
>>> a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>> index 621a2ca7093e..9683842f8880 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>> @@ -232,6 +232,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
>>>  #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
>>>  };
>>>
>>> +/* Loopback port parameter mode values. */ enum ice_local_fwd_mode {
>>> +	ICE_LOCAL_FWD_MODE_ENABLED = 0,
>>> +	ICE_LOCAL_FWD_MODE_DISABLED = 1,
>>> +	ICE_LOCAL_FWD_MODE_PRIORITIZED = 2,
>>> +};
>>> +
>>>  /* Set Port parameters, (direct, 0x0203) */  struct ice_aqc_set_port_params {
>>>  	__le16 cmd_flags;
>>> @@ -240,7 +247,9 @@ struct ice_aqc_set_port_params {
>>>  	__le16 swid;
>>>  #define ICE_AQC_PORT_SWID_VALID			BIT(15)
>>>  #define ICE_AQC_PORT_SWID_M			0xFF
>>> -	u8 reserved[10];
>>> +	u8 local_fwd_mode;
>>> +#define ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID BIT(2)
>>> +	u8 reserved[9];
>>>  };
>>>
>>>  /* These resource type defines are used for all switch resource diff --git
>>> a/drivers/net/ethernet/intel/ice/ice_common.c
>>> b/drivers/net/ethernet/intel/ice/ice_common.c
>>> index 9ae61cd8923e..60ad7774812c 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>>> @@ -1086,6 +1086,7 @@ int ice_init_hw(struct ice_hw *hw)
>>>  		goto err_unroll_cqinit;
>>>  	}
>>>
>>> +	hw->port_info->local_fwd_mode =
>>> ICE_LOCAL_FWD_MODE_ENABLED;
>>>  	/* set the back pointer to HW */
>>>  	hw->port_info->hw = hw;
>>>
>>> @@ -3070,6 +3071,9 @@ ice_aq_set_port_params(struct ice_port_info *pi,
>>> bool double_vlan,
>>>  		cmd_flags |= ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
>>>  	cmd->cmd_flags = cpu_to_le16(cmd_flags);
>>>
>>> +	cmd->local_fwd_mode = pi->local_fwd_mode |
>>> +
>>> 	ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID;
>>> +
>>>  	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);  }
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
>>> b/drivers/net/ethernet/intel/ice/ice_type.h
>>> index aac59c85a911..f3e4d8030f43 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>>> @@ -730,6 +730,7 @@ struct ice_port_info {
>>>  	u16 sw_id;			/* Initial switch ID belongs to port */
>>>  	u16 pf_vf_num;
>>>  	u8 port_state;
>>> +	u8 local_fwd_mode;
>>>  #define ICE_SCHED_PORT_STATE_INIT	0x0
>>>  #define ICE_SCHED_PORT_STATE_READY	0x1
>>>  	u8 lport;
>>> --
>>> 2.40.1
>>>
>>
