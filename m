Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF037ABA4F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 23:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81DF761354;
	Fri, 16 May 2025 21:06:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PLquficbrbjQ; Fri, 16 May 2025 21:06:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1D8261320
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747429591;
	bh=kMnPTIBcmHlGW9BevWa+YrvNFB3mHQrdnJTJKgY5Ih4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=noMJRuLscn8WrFt/7ssbrhcgC7wJ1ONYFFYHiTFG4Jaowt2t1xX738Hr4Jm1tQ7ab
	 adwgI47WrZX1Asr8OU8q1AJ1Dvp47ArJgymNrGHf2NUBbmSvMGNR/31+/1DagoqdE8
	 lw2oFJkgfbA4aRekUsXVKbfzYUQ5MsncxFEABT0z30B26KiV0O+ireqM9gNbMP0t5d
	 kDcaGxdghC+/fjz6/hHoBp6/40yzMNdDTQCzkAo73sPpI5GIih3b7gRIkY52GYmjc4
	 miGh/qtWVlB1NW6Zm8qd2cNHqbvIxdy7hcmXDQRHhieLAXoSdwqqvV8IXu51V8a6eD
	 X4Fa0RwvmNsxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1D8261320;
	Fri, 16 May 2025 21:06:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BD571142
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 21:06:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B75F417DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 21:06:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fFV1K--WlMLR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 21:06:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.60;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5443740BD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5443740BD2
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2060.outbound.protection.outlook.com [40.107.92.60])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5443740BD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 21:06:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wGO5qzUWIdzzv1AAlJJs79C/acyQTdg4A3grWeMfEaaP4elUrHKzlwmU+lkDCO1MMHhj6RMapUhTVGFaJ4zyR5Ccfd2PnSpm/rBdJImmeU/2aN0UQfOmzbMaaMBZYEPmKt7mTH+Ns6qOqI7n+lSL/91hM9UT15h6dsT101UNjSxR3qK88Gfcjt3I0OMx0DryquDIkLAr8ophQoLIgaT9mrtxvewRnvinTbvGhJ+F4ocmy70pUf9nYSlxSA1wi2EJqTrQeO79yOmbWbp2HrWf+fC8hKbUeLAtf66aQBWdiwZi1UkXKn+1fxxLhe8o+HNpYihJ8aOk0YfGTNs1w+Ks6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kMnPTIBcmHlGW9BevWa+YrvNFB3mHQrdnJTJKgY5Ih4=;
 b=JSDgArheCdTf+K1IWN/+bBVUN9aCE/blWArm4c4dh5cdLfHpGGqXEwgZDZ5e10sHIYTph1ydkKCGol5wSNr0PncpNeD3P+giiZ/pxtSi5VQmyKGfsWXk1nWaMlSxOex+Rc+LzZVEGJBsKZ3tCm5RhxzIiS3zW8mTuS+/dINsEcv8RrWX1fbsqwU2KclfVjATGO9vIsyluArqz+mZIQuZj/njumiHrWT/IUoGbJcVuqqh5FJZHBJezC75Tec16P54py55aex+jgnH0bZtBtl1a9vbNY41ccOKYQ3+ktbZW4+BsCSYSDpOm9SRyxyDYdnIwljkZGreXE9oGHDNM6ZH2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 IA1PR12MB6260.namprd12.prod.outlook.com (2603:10b6:208:3e4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.32; Fri, 16 May
 2025 21:06:26 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb%6]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 21:06:26 +0000
Message-ID: <22001288-1136-4929-a6dc-bddcd599f711@amd.com>
Date: Fri, 16 May 2025 14:06:24 -0700
User-Agent: Mozilla Thunderbird
To: Robert Malz <robert.malz@canonical.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 sylwesterx.dziedziuch@intel.com, mateusz.palczewski@intel.com,
 jacob.e.keller@intel.com
References: <20250516094726.20613-1-robert.malz@canonical.com>
 <20250516094726.20613-3-robert.malz@canonical.com>
Content-Language: en-US
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <20250516094726.20613-3-robert.malz@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0204.namprd05.prod.outlook.com
 (2603:10b6:a03:330::29) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|IA1PR12MB6260:EE_
X-MS-Office365-Filtering-Correlation-Id: b1af9d7c-3a63-49d3-a1ea-08dd94bd855d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UVB3QTRXbFBXV2plVDl2OGRiYVBRcmRMOFVmYklVQnN1d1AzdE5DeHl4Zkxw?=
 =?utf-8?B?SmhVVm9lU2piTFhKZUxxekdnRXZCRGpDVWtwd3JkMzlCbC9XcXhsWHRXby9T?=
 =?utf-8?B?Q0hlWlhxY0VXNU84KzFJZWFFMWQrVDRUSEFjcDFBd1lNV2ZSQVp2Y2xBUUE1?=
 =?utf-8?B?aTdkRTZKL1pyUFMwZ3JYVTB5K3lnd2RWQ05pcVYxRHJVMGZHRmttWDgzNERO?=
 =?utf-8?B?MjArSHNtbzc3ZkZhVmxhNlE5YnA2MnhmRVNzaDFJR0Zla04wU25MYjNXcjlK?=
 =?utf-8?B?NGp6RWVUcEc3RmZwWnlseGZDYlVqSWkxVlcrQ1pyTDZrZm9xc3l4czNHdUdC?=
 =?utf-8?B?ajl0RkpoVmhkQVI5M0R0SXRoTHBmTGdzcWZTQlNNdDN1MDlhYWpDdnhHak5N?=
 =?utf-8?B?ZytQblNMeFpXTjllMzhtdVh2ekdneWJ2L3d3MG9GNUdXdEVxb0M5WENueVc0?=
 =?utf-8?B?QkljNmZmSzByUlB5NFVTMXpmSmNmaHdOZWpJZTRyVFFYc0hXaWFqZkRORTB2?=
 =?utf-8?B?WnBNQ2xWMktySTd0NEJod3FwTTR5akhLRmlaMWczc3lZZzhJY0t0Nkd2bkRM?=
 =?utf-8?B?azVOZTNvOEI0N2hMTVRsUlNoRGhDdm8vcythR0hUL0pZREJSbDh1R3E3S2lI?=
 =?utf-8?B?eURNMkdOOVBETys3dFY0ZDFvR2VuSW8yWnA3M2owb1psRTFML09HN1ZDdFhu?=
 =?utf-8?B?M2hmTHRHSVdoWFlQYllFdjgvZHp3OHFGcUJRdkFZcEZTd25xaWcvSzJrMFVw?=
 =?utf-8?B?aFZ6SnJMUWp1OWhwQXM3Z0RVUW4yaUFqUysvWnJyVXgrK0tMZTlwUk5KaUhu?=
 =?utf-8?B?RUtGbmtwSmRQNSswZXZ6Sm8vWFBhVFRlSzR2NTN6bThjY1NJRVUzTlNScDhV?=
 =?utf-8?B?T3FBUEpyV1RORVAxaFh2K1h3Ykc4aWRHQ2ZCNUdVMVFVV2Y3cWl0WWpjcndL?=
 =?utf-8?B?ZGxFYkFNbjhEdldwWjlwWEdMaTErYkVKcG11Zm1sZldTM25QZUVYT3hZcHla?=
 =?utf-8?B?ZHlYNnhVZ1ZMdkExbkF6bGVRdW1WVUE2M1pnMWMxWG5CMFIwaEd6UWp2OXpM?=
 =?utf-8?B?TVFLd1ZYS2JaeThHSmltSVVyQkRoYjYvSEhtdnY1WTVxUFJtVFg2eGg1RHdr?=
 =?utf-8?B?SmdHdzFYdlhUYTZjeG1hTUk1Zk8xOVpCWkR2YStCNkJzUDEwQ2YvQ2lGdlFD?=
 =?utf-8?B?L0tROTA0S1lZQkR1bnVNUUlaSHQ2VUZ6dXNSa0g2NzVHNkduaFl0VUg1cGtx?=
 =?utf-8?B?bGp4ZkZQWVhBS3h3bVNuZHUrYXcyOWw5N3hGU1h2ck5yOTlaak4wUHJvR2RI?=
 =?utf-8?B?alNOTWdHWDcrUGFUeFZVTHhVRzM2UnAzVmMxd2V6N1RKVVJrajA1dUdzNkh5?=
 =?utf-8?B?WndCUzRkQlNicFl6WlhyOHVIV01JM3YxUW1EdVV1NzQrNk1zUHpmL2ZTck83?=
 =?utf-8?B?R05nczJHYVVpZWNNYXdERGJ3T1k2YjNERzBGVHNUR2ZGRnFWcjNJR0FpZHRh?=
 =?utf-8?B?RWprK3B1cnhhaklnVWdoWWpNWmdOQ3VkTWdSVTl4cG9JV2lJOUdJQnp1SkMx?=
 =?utf-8?B?RmsvQkRwUk4zMFlqMno3b2FLZGhXakRuSG9GWEVxZEY5NTBHNFgwem1rZDRV?=
 =?utf-8?B?bEZUZXBzckxUQlYyeEhRQ0UxZkFtUmlnVFZGVG1xcFlBSHBDaUg3YXZ3bVhw?=
 =?utf-8?B?Ly9BTHFybnVoNEwvVXJEd3JQOFRyZWdVaVlkb1dXVXJqZEM1RjliUEdlSzVY?=
 =?utf-8?B?Z0RHQjg3ZGVQTzRPUllkbTNLZVpodmlkc0g0Q2k0ZU5jZUplMmNWSXhMNFBx?=
 =?utf-8?B?Z3VnaHRUVXJ3TnNyRU01aUUvemRQc0JVeG9kanRnWlFiVXUyaVhuYmh4OUt4?=
 =?utf-8?B?ajd1bUc4OGR0NVh0Z0xhN1lyWEpMazFZcTNvblFWNnREdzVoS0tYYmUvZWhj?=
 =?utf-8?B?TEVLanh0eG5HVWd6b0tMZG8wbmdaK1ZJQ3NJZ2RXbWk5RDdUSjY1V09OVjBB?=
 =?utf-8?B?Y0M2RitiTGFnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDdtL0w0UEM4SWdPQUxTNFlJa2RsQnYyTzdqcG90dVcxdjhJcmxRSm1aalFR?=
 =?utf-8?B?eHYwTERKWU80YUhlRm9WaGM4THhxUDlPU2U0SGpjMm9QZHQxRGlhbVpvcUp0?=
 =?utf-8?B?LzN0T29YRHoya08xY3JGTVNudi9WaDRNcnZUOXcrVnp3YzJhcVc4TCtpa3dQ?=
 =?utf-8?B?cFJURU1PQUZsMFRySW9jQ0ZXVDRaWnM2WTlpYTROd2ZiQU0wYzJRL2I1dkJW?=
 =?utf-8?B?ay9DT3lWSDVzV3hCaExNdS8yYTNpTytSd09TdENweVg3d01XWlVsYkpPR1Ro?=
 =?utf-8?B?SEZRVVFVWGN6QnZtdVAvNEQ0WUwzcHdEekdCZmhQS29wVCszRTJXTU0zY2V2?=
 =?utf-8?B?TTB2S3JBZzNzR1VnL0syMzA5RkJuRXZFT2gya0VicXVnc0pUU3VjRjNuS3Q4?=
 =?utf-8?B?QTRlamNpSUd5VDZVQjZyL3QyK0h6amdrNDNINFJNcm1JaEZhRUcrT052dVdS?=
 =?utf-8?B?bm1mM0lOUTJrdjBucTZBUkVrUElPTDVMT2JBOTR6N2thZFJ3eFZUWFZvcWFj?=
 =?utf-8?B?TU1sUVJRa3J1R2RUQUd3VlArMkhzRlhPWVZwK01ldmo5eHdvTE1BSm04Y3pW?=
 =?utf-8?B?elN5VmRBV2F0MHg5OEJyZStNVHF1V0FWamdFUVFxUU91UCtUM0hxcXJ1SUFG?=
 =?utf-8?B?Ykl6U0c5c0M5cCs5dWt2c1F6R0x6V0FwcUZUUEIxa1gvalVxQmZKeElGVllz?=
 =?utf-8?B?akJWaEkvZ3A0MStPNGVNWHpkbjl1aWlZL0ZmQ0R6Sk5NNFh0MkY4WVF6UTBr?=
 =?utf-8?B?NGVCWnB2VjFJaDBXWVQxMkt6TEl1WnhROUhobWZ6cStKZUh3THE0TGpPWUZU?=
 =?utf-8?B?MUgrQVBndVdjcEJHSHdxOUFVZitwUjBLV0NVTDhRdUxEY2ZXMWw3eGRiVDIv?=
 =?utf-8?B?QlI3WGVwem4ydFNZcUVmQUlxUWZqcXJTbS9rdDZXbmQwcVk1ditxR3pLZXcw?=
 =?utf-8?B?bHNpOWtadUVJRGhmM2FWT1lqMmFTN0hnZXk4YUdtV1crYmtRWWEwYXovNktL?=
 =?utf-8?B?b1JrNll5WWdrWkZINUxibDcvd3d4Ynl2cXJqNzZhZUlYdXgyR0VCS0xHamhu?=
 =?utf-8?B?Y3hPc0hBbm14d2VzRXNOVkI2YkZkWUtkTVpUVm12UlRicm5hUnlYdDFpNy9s?=
 =?utf-8?B?R3d4dWFYMCtpSWsrTlgweVJrRkNiS0gzcmxyRDNQaUIxeExyQTFkUEJuYTNP?=
 =?utf-8?B?YWFpWFIwVlg3VXBPL0RZc1dKVnR6dFAxb3pkSjlHd1Q2NTFlamZITFJpVzlG?=
 =?utf-8?B?YU94bUZEWE95WFpBNUt5RVY5L0MrRythaU1QVk9XdjIzQ0R6Y0FtQU96VFFv?=
 =?utf-8?B?WDlUL2VFU2JIdXlrUmlMWjgwY1ZJbjM1K1F2T0llVWVpdllicyt1M3YzcW44?=
 =?utf-8?B?OTE3SERYUWMwR1dmcmtubHdiTVg0TmNhQzFPYjU0UHJSaDFBUm0xQWlpN0ov?=
 =?utf-8?B?eXd1bzdVdmRxSUVMYWpiZ0F3c29QWEluaUdod2NlM1ovN09Hb3lyMnJkRXNa?=
 =?utf-8?B?ODJydlZVcTNuZHBLUWppcG91R1p0OU5qcHpnMjVwdS96N2lObjl5SXlJbWJB?=
 =?utf-8?B?Q2xyTzBHU0JkT3I1SnRlaGhGbHdSbnlSR1E5YllDczdoSWszamNQbXNYakFP?=
 =?utf-8?B?UGp0bDJkWE9nSGpHZFNSOCtOd2F1WTFzYnhISWRTdE00Z2hwNUYxazJ6dUtZ?=
 =?utf-8?B?VmFYajdkcExoMnFIay96T2JURUNlb1I4UUljQ3BKSTlBTDNHVFY2VFgrWFFT?=
 =?utf-8?B?TGdEdXpsS3NaUmZ3L1MrNnhBbzZIWG9uM2ZUQzdEY0xjejNVT2x0QkpiOWht?=
 =?utf-8?B?dFlzdFlCRmwyL3ZZbHQ1OFlCd0hOSlFseGJYUU92Z2R0SmI2QTdtK2VRR2R0?=
 =?utf-8?B?UzlVdGo4QlNrU3NGQnBZVVZmTyt2YU9EK05aZnp5bDZYZTh0VWlLREpEQnJX?=
 =?utf-8?B?OXBUWEFBNHRqS294N3FPVGo3dFNiS3JGZ0MweEk3bE96NjBhaVRTWTBUNEV6?=
 =?utf-8?B?RzFLa2tUeGVtbWV2WVpBTFE2T09NRk1zVzBSMGptamEvTEgwbzI4c1ZMUDIr?=
 =?utf-8?B?cXU5NCt3UVlCRXZsQUp4U2p6Y0kvdFFNcHdUekdMbFEySWFMZk85Vng3dmZu?=
 =?utf-8?Q?MGz7E0odH3icLyOltEwD1ie55?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1af9d7c-3a63-49d3-a1ea-08dd94bd855d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 21:06:26.5316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f5ViWxVBg+sBseUnNJfbp7dYxtOQRa/r2NQHLH3cEG3CkdKCUADVBNBcbKZfaI4MY7Zx9MtK9mmWYyrmyrZw3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6260
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kMnPTIBcmHlGW9BevWa+YrvNFB3mHQrdnJTJKgY5Ih4=;
 b=3UV7iMM+RbykSKiGOhfPpg0wj0b3Ymczu8xWe6nVPJ0rlItV9b5bkTPP6LqJH9WfWntUn15vAMUb6dyoo5UpZmSOUncUvc9qKnvW9RV9BvjLVV6e3Jtgf0vWxXJzyqBkyizK1kz6WwPsSVQt3CKJILA3QraY8WIkDU2cL/oVRqo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=3UV7iMM+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] i40e: retry VFLR handling if
 there is ongoing VF reset
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



On 5/16/2025 2:47 AM, Robert Malz wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> When a VFLR interrupt is received during a VF reset initiated from a
> different source, the VFLR may be not fully handled. This can
> leave the VF in an undefined state.
> To address this, set the I40E_VFLR_EVENT_PENDING bit again during VFLR
> handling if the reset is not yet complete. This ensures the driver
> will properly complete the VF reset in such scenarios.
> 
> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
> Signed-off-by: Robert Malz <robert.malz@canonical.com>

Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>

> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 2f1aa18bcfb8..6b13ac85016f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4328,7 +4328,10 @@ int i40e_vc_process_vflr_event(struct i40e_pf *pf)
>                  reg = rd32(hw, I40E_GLGEN_VFLRSTAT(reg_idx));
>                  if (reg & BIT(bit_idx))
>                          /* i40e_reset_vf will clear the bit in GLGEN_VFLRSTAT */
> -                       i40e_reset_vf(vf, true);
> +                       if (!i40e_reset_vf(vf, true)) {
> +                               /* At least one VF did not finish resetting, retry next time */
> +                               set_bit(__I40E_VFLR_EVENT_PENDING, pf->state);
> +                       }
>          }
> 
>          return 0;
> --
> 2.34.1
> 
> 

