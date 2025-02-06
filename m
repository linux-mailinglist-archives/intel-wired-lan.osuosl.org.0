Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E04A2B440
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 22:40:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19F374058F;
	Thu,  6 Feb 2025 21:40:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TyC97p7V1mYa; Thu,  6 Feb 2025 21:40:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E343140909
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738878005;
	bh=POIlIdPiA/QCxpRdpuU5031nmVeB2NP2oVKoJ9scuPI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cytSIolW9GZGYy+zIbTaFzQGMTJu/FF1eQJrAS5SECZiYYKPYdx+z87VlPXFAmEbH
	 gLY5nH6GsX58sCWaGDH3CEAPs6xAGAZFcKO77otJu+QeTnLyYtkYOYXvqjT8EUgju4
	 rFajOs9fhCRiTU0HBzAkSpYFJFfTIGpgMoi5npkNNONS08oefI45bSfJXeGEubxvIF
	 9B/Q1pVVFq2FWwIwyciopq3AqESJtkYzxWm1g390v5haS8YqAOJwYwr9SSf9Jejjgz
	 LH30NhlMQSJjAseKcIeQg6hWSmlRS7UDMDswEfk3GoKmCkt9Y3nxGc2uhq/q4L3T4d
	 qi84CVjlTf1Bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E343140909;
	Thu,  6 Feb 2025 21:40:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F30C2E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 21:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2FF44069B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 21:39:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id crxbLT-KW7El for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 21:39:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B84CE406EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B84CE406EE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B84CE406EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 21:39:54 +0000 (UTC)
X-CSE-ConnectionGUID: +r+8ZUXoTGuV7i47rqVo1g==
X-CSE-MsgGUID: xMbEff0yRbCe5CH+qKoDAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43431986"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="43431986"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 13:39:54 -0800
X-CSE-ConnectionGUID: ob5+G/viQuy5j/7vjrNdlw==
X-CSE-MsgGUID: NKtXoihMT9yaGNM5RJuyRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="142214843"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 13:39:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 13:39:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 13:39:53 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 13:39:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fha33gb+W/mywmiY3mqUHy6bw2Fp1WVQe2N/ZrjFtCOw7z9Zl5d9LmcQhZgYMri8Z74mTlLG41dlIS7DaosRYkGgDQYNK3Qd+C3GVo5ZCpnvOSVYRvLOc+gfdGRV6Qcg+/kcPfFpKPhcWT2NxNBI2zY/KmOh4GI6H1fIli2pbT3Uf+TE0aVV0Idct06G20yuL+P2v4BOyIaiXJ70DFJmiAxuP0/zir52B+EK4buQ0Z36lDvdsgl8u2gTUwBw+mx5TlWFEjTPSz3gMfCR6s0RMYcIsZtS4GF3qVGghlVaFRUPKXyJvg/+XRT+6It8wHNNtsWVoP+LfkK1GgQvJYCsQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=POIlIdPiA/QCxpRdpuU5031nmVeB2NP2oVKoJ9scuPI=;
 b=sIX331VNequvfAIPYh1u4yhCVSvbspwso/MUeTQJiDCTnhc/6jsU9A0pATJ1HBjhKoEqmJfJQenucSGU/M4yI9nes/jdnQSEV7n7qYDSPiWr0cv4pXpWM4Gaza53QQ7E5KrCuEFm1k504zqk96xAQvoE5HBdAA2yRUvQibiYq7itwyIJbbs2JZuthBI+8nWdeBqWcV1khjURLnjdl2r+H+LH+5W4fzem1wD7rXgG94W8suuTOob+/j+xmdgIO0yqwxL+lZULM8yvMWqF6APicvFT/JK5M954U0tc61abfme3q7GWQ9OP+VH4OYI3zJuR0VyrBFcGskFWbhfQeSl9fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ0PR11MB4879.namprd11.prod.outlook.com (2603:10b6:a03:2da::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Thu, 6 Feb
 2025 21:39:51 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8398.021; Thu, 6 Feb 2025
 21:39:51 +0000
Message-ID: <75ad6505-3d74-4d1a-a0ee-5d028c1bc0df@intel.com>
Date: Thu, 6 Feb 2025 13:39:48 -0800
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
 <20250203150328.4095-2-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250203150328.4095-2-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR08CA0036.namprd08.prod.outlook.com
 (2603:10b6:a03:100::49) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ0PR11MB4879:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bed4ad5-31d6-4483-0022-08dd46f6c98b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFJySlV6Y3cvdGZMcjNCNkVDdmR2OXVvVllDT1lMdVBXYVFvRXZtQnRwSjM5?=
 =?utf-8?B?b1Z0a1VUTTZveU9TN2Y2T1JPWmJ5blR0T3JkTnlEUCtPUWErRzA5VW40OTM2?=
 =?utf-8?B?WTUyeXZtSndwU2NKeEtOYzVLZWJqTE1tdTlWVyt1MVhibXRvUG5DSlJKeC9L?=
 =?utf-8?B?QlRhMklvYytOQXpCZGx1REdkcko0alJZSFJlWTNRMG9tSkxGRzlmcU42RXkr?=
 =?utf-8?B?czVTdWNxbzVuTGNTUTZFdXhzMlcyMnpUWmFNdEdwYjhEdGxnTk9UNERERmM0?=
 =?utf-8?B?UlMyb2hpdFRFdTJoUWgwc2pTODBpTkZmTXNnd24xeWFwcUs5TitudzZ3RWIy?=
 =?utf-8?B?VkZKRzlJU0o3d1VTS0Nmd2ZuM0U3V1pOaWhzMGc0UFBpclp2TEN6cFdPaWRr?=
 =?utf-8?B?Z1J0SktTa2RkK1RZdENjT0NFOWRaVFhZTnBIV3FXdTg2UXYydlMyOVk1cW9v?=
 =?utf-8?B?UjVRNmVsQzh2YUw5L2F4NW14K2hmUFc4c0J2R3ZEbVZNRXhpcCtWeEdsblZL?=
 =?utf-8?B?TDc0V0tCWUlxYlh6bjlLazc3clpFeHg1YWRiT2pQQzB3QmUybGltNEhFR0Vj?=
 =?utf-8?B?NjRML1o1TEZPTmh0SmNST3hTY1paSGNPeU9kQ1dWUk8vdVBVZ3Z2bFhENlpC?=
 =?utf-8?B?YmFSd3JZZmJaOExrS2tkZ0t0SXNqOHdaYkZPeEluSEZqNlVnNVJQcmxwNUJR?=
 =?utf-8?B?TjVrdTJ0MW5ONzR3YkdidDdkQk5JY3JjMWNNdTM1cDF1RUE5V1d2c1A4Rng5?=
 =?utf-8?B?NVlGOUZrTjRsNENmakRSZmVzcGM3SWJpRlN2dVJzNU1kRERhTTRHTDkwWk1O?=
 =?utf-8?B?Um1UQi9JQTBXYjRhWFJGVGJBL2JWb3k3aU51Ykg1cUVaVitkSm9uUDIwYktC?=
 =?utf-8?B?M2E1R1RVTmx4VHBtS2lZTzNaekQ4OVArQ2grS1RmSGEyeCtKNVA0WWY5cFpP?=
 =?utf-8?B?NWZESVMvRHZmeWlYUEJvTTdhZ0U2Z2FUTWZsZFNMdGNyUmtMWlh4VWh3Mllx?=
 =?utf-8?B?MTZLL3Y1ZXd4L2V4NndCNDlRNkRLNkhsL3NJUTNOZTdiQTNMM25RdjZoRjRx?=
 =?utf-8?B?NHFvVVA1ZlNZbTZtVFVLVWtWdmozTG5QUmRCZFowZ2pDSzN0YWpSN2gvMHRv?=
 =?utf-8?B?cTZ6Y0sxMWZ4NVJDU3JuM2hkNWFqR3NBck5wSy9NWU14dFNwVVJqZnU0WThK?=
 =?utf-8?B?SFN5YUp4K0gxSXMyS3h4YWlWSTN2cVRZSHZQYzlFNlNBOXllTWtTRlQ5Z2pL?=
 =?utf-8?B?Sm5vY0lVeXlIa3R6SkN4YUlqb3praURETlpEMFpudTVnRnQreFI4QXprc3Er?=
 =?utf-8?B?WUtCRHpYTGJiVkNMZ3dPMHJ5Q3MzeWNqOU04bzZIdEJMQ3JtclBzUU44NXRl?=
 =?utf-8?B?QlRkRkxJbjYxMmI4VWRaYUtUclhuT0ZGR21KZ0JxTmltcytkQWtBZlgrVUVT?=
 =?utf-8?B?NTlGTjFESTVZNWUyTHJWU3B3ZVhyQUY0QWxvdS84K3BNelUwYTJPNzN3WjJX?=
 =?utf-8?B?bU03RVFKUHg1ajdZZDY5NDhwUGlna2ZYYnFRVGJmcWp0MWQ0M2hsaFdiQVRy?=
 =?utf-8?B?QVlTYm9hWVpUTjZLNENZcEIweWpkby9Ha0M4SXl5RDA2eWEwTkRBSEJBT2g4?=
 =?utf-8?B?TkR0RHhVZURmL0d6TTFzRFM2bEpWQTFqaVlQWDh4dk5zdEhPbHZJWWpaTXFo?=
 =?utf-8?B?bG5wNE0rRHo0WFdsSGE2bjRSVmQ4eURUT3FZdUM1ZUcybHNkN0g0ZHZqbmQ1?=
 =?utf-8?B?VGxDUC9BVHN6dTg2MFF2UFFidEVjdW5iOURVOFp3TFpCWXVBMWlDdTdEMEhT?=
 =?utf-8?B?NnNuelhFUTdYNFNTT3VtNXg2ZGszL3ZTTjFSTXcxUDRIQlZCY1g0MTdPY3V5?=
 =?utf-8?Q?/oL3bOo5BZOBZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlFrSkVVQldzN0QwcGtvT3BrbEtQeU9GSTdyM2ZCNWlnMlpaaVRPendBbXo1?=
 =?utf-8?B?M1FvS2pxdXJ3a3JxaHNLM2k3aFB5Ty85R1VPYzEzb040U2xiTGNNRGpaVlUy?=
 =?utf-8?B?dU0zN0dsTU1DL0JqVlRWTDNrSXR4UDNOZzk1MFN0RnNXb0RxWmlNRHlmMlBU?=
 =?utf-8?B?T1FOZ2p0UERYakVueTBCd1lRVVR1WEdFRDV5TkVHTlBuUFM5aEhpU1g1bU9x?=
 =?utf-8?B?K0dPUWZzcmlOUndYNDZKZWRYK3ZZSm5oUGR5aEZtNUV0clVxbVBxMGxodUVk?=
 =?utf-8?B?Q05QNDJJbDROTUYzYi93K1dySkpqVVJxZDdhVkpzVlhxTlQ2d2k5OEFGUjlK?=
 =?utf-8?B?WVBsYmRDNm5qRlZEVEZkL2pqeG9KWnZNM0ppZjNDVGF3UmdpZ3c4VU9OK3I2?=
 =?utf-8?B?V3VJbysrdjNwdlV1eWRXeGtJOWg1V3E0ZFk5a1dhdmYzc01uUVNpS0NwWVlP?=
 =?utf-8?B?QjUzWmRjd3NJNmhjL1BqTXNJbldoRjljdjdEUk9pUW80TXRKZm1sMjg5eW1q?=
 =?utf-8?B?Q0F1QVB2TDI1S2o1VW42MEY4Z2xRUDFWME55cyszWW1GeGc3aElCZEhUTmpJ?=
 =?utf-8?B?cFZBdzZLOUR0SHVCWkw4Q2IzRmdoZDFsNEhUYXZXckdhTlJCMFFQSyt0Znc4?=
 =?utf-8?B?M3lGQlZBZHBDZUYrOFY4aDNFeTQxQmFiV0QzQWxwRTlpK0NWVTl2Tmg4QTU4?=
 =?utf-8?B?V0tueldManFXdys2azdtY0o3RUtodS9xM2hvd3hCZnZKNUVMVnJQUjNMSmVF?=
 =?utf-8?B?OEcrU0FiamVKN1JmdUpBalNpUWhvdlcwSnFWL0ZYUzFMcTc0TmkwdkFxelNp?=
 =?utf-8?B?WHpHNXFLWUl5MDdINERFdGRXTVZkZUdsZ3pNeCs3QUcvdkRYaWJuRTlxT2lF?=
 =?utf-8?B?SGdhQzRvWUpQcVBCc1hNT3pSbEpqakdDbVhxNjVMSXV2THVhNERCL09JUG5x?=
 =?utf-8?B?bStGM2FXY08zWktCS01xMk04aWhtQldvZHFkVUJ1WXNsWnJZWWhPc1d0bnJ2?=
 =?utf-8?B?TmF1Z3lSaTk0VlBTRUVTTUMzYTczQjl6dEFSQU10ZEJBU2xWQkw2eWpob3Ni?=
 =?utf-8?B?bjlkcXlUbWJ1WVNhbitrNVdXS1N4ZnhjNHlEanEvc3FXTm13MXNDU2FxVXA5?=
 =?utf-8?B?dG1DSHFaWExXRGlSWHpydVA4UUxtMlBSb0pYUlZpWGNQUVhPQk1iOHRNbnY1?=
 =?utf-8?B?Ny9MbXVUVVJrV2FNdVBRb0pic1pJRFpBMVBwdUtEeVBsZUdlK0luOGJ0TnAr?=
 =?utf-8?B?WkxSWXBQblBFY2VMVVhlRXRxT01OaUkxQVdrdHV1SHF0ZjdLSEc4MUt4aytU?=
 =?utf-8?B?VXFjWVpXUGV6UmZNVlN6VWxlUHN3RzVqZVB0NHVZRzQzUFBLVjV4R2h3SmhI?=
 =?utf-8?B?Nm90NXhObjkvdCtLSGUvcE42Qmh0V1EveEg5dVF5bXYrcUpqbHNWdEVpVXc1?=
 =?utf-8?B?YWw1MWR2MG5RS0VIcW1nN2FMUFVmSWRVdWtPQUYrS0ZzUlpGa3ZEUWFOanoy?=
 =?utf-8?B?NlpRZlJXVC9hcE9GZGVuRTY5a2NiMzdJeDBzNzVwdXJYTG1TR3NmbmpQY2ZF?=
 =?utf-8?B?S2VhWE5LVXZtMG16YkJHN1Q4RFZ3YlZnRDRVUENKZVV2amVWTG16dVkxczho?=
 =?utf-8?B?YUFKLzNkN1dhUVM5MElncTdwM3JIbGpLbjE1Q0JQV0kzUSs3Z1QzUkRtczU5?=
 =?utf-8?B?WElxbHpCK0pRY0N1dStKMU8xMDN0U3BhakNBcGpmQzNaZEFBQ3ZPa01tRER5?=
 =?utf-8?B?SXNhUUlWd1pMVjh4MldNVzh1Y3VwWnJjMG1MUktPaTFqTkh2RzdlaHRCcDQ3?=
 =?utf-8?B?VUJDNTVjbE1pWUZjSi9IWW5hVHF1aWJoUUpYZDY0NEUyOXR2L1V1Y0YvRytu?=
 =?utf-8?B?NmJDUlZMRXF1R0hvazZmVEZpbVoyN1kwUHRDdzZ6VHVYQklsenNoNy9JWTd1?=
 =?utf-8?B?TmJiTEY0RzZXK1pYOXA3Mlh3RkRuOHZCNmd6VXEyaUdnV25aeGU3N3lpK09n?=
 =?utf-8?B?MUhpR09CdDhaQ2pJN2RkbW1kRnF3YWFxOUJMY2xIYlFXemFISXhqZWlMVFR4?=
 =?utf-8?B?dk5uZ25ud0FPcGFOVEw2STBNdWROT1ArSSs1UzJLZGNvT28zdzBJY0wrUlpp?=
 =?utf-8?B?Tm9ONmdkdng2OTgrSjdRa3VGZVRWVWF0RnA5MUJDWEtnR25DQzJjQThOSjdO?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bed4ad5-31d6-4483-0022-08dd46f6c98b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 21:39:51.5353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cR4yZjBc6YfI8s6Z7uV94cdpJjjTzFAyXvZhdfQGA+HvzRhzkuPgWrDX/YONgA+zZ7bR/S+0rwyzvC6pFijwhcvTi+U3rPN99hIRNQbUo0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4879
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738877995; x=1770413995;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9qHopZRqDocoWIFDnmDQdtR4xGV2MFFTq0t/ob+vXKo=;
 b=JyRDok+zbJ3+alnUJtg8z4DMnai+RsHjZb7E4xCy3MmZDoF/tuEtrrdL
 RYImJ42txsW8cLN0aizDKRYPpxrbFzYr7sxp4VfXST9q4xe7uS9v8AlDb
 5FnG5nkO2nBpZYolK1bvuDICEQyyVW7uKMJN3/Ofv4yiKZFM6tRqn1ap9
 dlvGgxxfWzkgPoiA9oFVho281PRdMgkz0HwcbTY8AgPRJRv0M0xx59BEF
 z9AmFLjNbI9VK4hGW9lT2uHITNN3Es7dxpcfFk/EspkPbJZWfj9Prgkd8
 QSK4u3XY4AsvMP2JF3TLbwqWBGLFq0j/wh54/8OrChStqw/ZJXkkfp5Lw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JyRDok+z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/13] ixgbe: add initial
 devlink support
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



On 2/3/2025 7:03 AM, Jedrzej Jagielski wrote:
> Add an initial support for devlink interface to ixgbe driver.
> 
> Similarly to i40e driver the implementation doesn't enable
> devlink to manage device-wide configuration. Devlink instance
> is created for each physical function of PCIe device.
> 
> Create separate directory for devlink related ixgbe files
> and use naming scheme similar to the one used in the ice driver.
> 
> Add a stub for Documentation, to be extended by further patches.
> 
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

...

> @@ -11283,6 +11284,10 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_ioremap;
>   	}
>   
> +	err = ixgbe_allocate_devlink(adapter);
> +	if (err)
> +		goto err_ioremap;

Looks like the unroll has an issue.

Smatch reports:
../drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:11844 ixgbe_probe() 
warn: 'hw->hw_addr' from ioremap() not released on lines: 11844.

Thanks,
Tony

> +
>   	netdev->netdev_ops = &ixgbe_netdev_ops;
>   	ixgbe_set_ethtool_ops(netdev);
>   	netdev->watchdog_timeo = 5 * HZ;


