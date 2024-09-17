Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D9E97B65E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 01:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6D7161165;
	Tue, 17 Sep 2024 23:54:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGJxvgrQ4iLo; Tue, 17 Sep 2024 23:54:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7327461185
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726617263;
	bh=VO9CpxyMDKeQrGmBStDGxHs/MpQt/07Q/+W5jK1SEF0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NPFQd+ydnY1N4cFUf6nmEuOMd1AYIqhjrA9hqifRL1RMY3gcXQ7TVATbNlLveNOt5
	 OFITxkeduKZ6EfaKHTnyg7KS9ZRdAIcIny/45/a2Un4t97FjQgNtXTDz8/Jp4+YCcf
	 FH7nLPKloYtDlN1K0AuVpmIISlyMSBPlQrtnYUKhtKaungFsfudn5e/bEiO48YbdtO
	 Km7zh/MLLgDhGUd5tU63z9mC060PO6aYheJgSmMT1zYxc+0NN5yK4sqCFm3gz4wZP2
	 giqYlSxh0UndlNLAihyBPreaHgXzQPFY4wygza1KsOYtaC7jNlhEKRGMthEv4gWWLC
	 vqvY5HCYWwM9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7327461185;
	Tue, 17 Sep 2024 23:54:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4171BF842
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 23:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B61D81E1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 23:54:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HNDvkKc29wQE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2024 23:54:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.102.41;
 helo=nam04-dm6-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4A06381E19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A06381E19
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2041.outbound.protection.outlook.com [40.107.102.41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A06381E19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 23:54:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=owl7UttC7CzwR6dKtJTfzZREPxg6qsfVMyxCs6fJAP3iA++epDS6cd//PfsDvgFFN7dPWI2hNdozX5orjd/regHCfMntwzWvNuBe/BYUrZl4Vl5ab3NjFkDjxVpe4519M5PBI9BXZrusd00YPgS0/a2kIUpyjj6L1e42lqb4ap+n3YfWQcPABbTGNM4ytrugWpojwy1r23lFt3/1+BMEHxxesNGTdQFwzt9qk3x3UJeg3jcdWDV/2Y7aPap2bzDSe7rwDH2tz1JacDFjKd4Jki2CjxS/YPh/gMZavRK8TG8d3UiK6B5Cr1tDVsH+t1vb4oBeOvAFwSaZtGrceymBVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VO9CpxyMDKeQrGmBStDGxHs/MpQt/07Q/+W5jK1SEF0=;
 b=SDSIg6pDVsxgkitLu+TGKHoEI1O9WG26E0a/Dw6PXNpoZSCooD1lUvBjnsmEGlNwfTpZqbAqM5xtU8do8qaDhEqMy732bx640bTIWeuiPHNZbGd9W6NKHYP4EVxa1J2ATJSRHJkEecx/1UJz7HcKSYfthTN1io36r504UdhBU+fK7tOGvsHxmca7RuN4leDM4J9d4VEuDudvNN6ofooNZeuUiTobD2oOoytLwzRDCJceA6rVXCwAVrk1vB0Snbtnq/IVT1QTe0oy/i4EbyoX7uQNLS+wq5ErVWZ2j6tFnT9pnp7OvjWC6c4x+fYWx+7a25hmTDyIm5lRUSZ2yioHag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 CH2PR12MB4296.namprd12.prod.outlook.com (2603:10b6:610:af::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.24; Tue, 17 Sep 2024 23:54:16 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb%6]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 23:54:16 +0000
Message-ID: <49131e14-fb4c-4176-9e55-f50d69bc9bdf@amd.com>
Date: Tue, 17 Sep 2024 16:54:13 -0700
User-Agent: Mozilla Thunderbird
To: Dmitrii Ermakov <demonihin@gmail.com>, davem@davemloft.net
References: <20240915070334.1267-1-demonihin@gmail.com>
Content-Language: en-US
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <20240915070334.1267-1-demonihin@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR16CA0014.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::27) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|CH2PR12MB4296:EE_
X-MS-Office365-Filtering-Correlation-Id: f82a6fed-a617-4cfd-773d-08dcd77409b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDNDNDN6dDE1M2lGa0V3WEJSRU9EYjVodVBTeFJYREo3ZUtFU3ZPSEJPUWlr?=
 =?utf-8?B?bWRmVEFUbEs4Sk5uc3RvM05RMGNpbWlCelRtb1ByNDk5WDA5Q1p5R1JxaE9D?=
 =?utf-8?B?U01icFRXVkV3M0htMnREMUU4MndvN2FMK25sNi95dWIvRVNKS1pJZ3UwWis2?=
 =?utf-8?B?RnFpUEJzNXQ2Rzdzc0ZaaFBNZlJwdHBKOFFPWTJ5UmMveitNamFjWHJKK3M1?=
 =?utf-8?B?ZXBtTEIvYjdMTXd0Uld5NlhicTdacWNPSm11U2g1VlA1VVZUMGdnbi9KWnNL?=
 =?utf-8?B?R1o5azJEaGxJZjd5bEJpLzBrbXlyWkFYU0djVitNWWFGVXljTUMrcUZDWnNV?=
 =?utf-8?B?M1pKZDlmQzdVNHpTMkorSEZyZmNBU2tBZmFpYlRqMEZmYUN2cG4vU01KNGNl?=
 =?utf-8?B?Q2w2M3JXb2ZPU1JBbXhJbXV4Nk5JTUdvbnplMVNqQ0IrODJtK21YN2xBd0dH?=
 =?utf-8?B?ZzB0OUU1TGIvSVpaQXZMWmRJR25PWnRaYmNWZjQ2bGMvaUoraW5DRGlPZklY?=
 =?utf-8?B?ZGNtcGFsZzhXQkRpWXNVSUR0SG9uaXpBVkJVV3lkNzVIL2RidWcxbFIyRTBG?=
 =?utf-8?B?Q21CZkptS2Z2Tmp1UGt4YWt4andIRjBHTmNwZHlrcWpUUjE4K05RRkVvWVVG?=
 =?utf-8?B?ZzA5TlY3Z1h0YmdmM3ArNHlvanM4TGRRejRicHJrU2tuR3d1Y0lDRjFHMk9s?=
 =?utf-8?B?YVdTbnF1Y0RzUmYzRFRTdWtHaGQ1VEtJYmRXNnZxMzRMcDZTcmZIQW5IeXdp?=
 =?utf-8?B?c1U2NUpvVU5tbU4zK1YzUzJhYXlOdEluVThPcHpPVjVIVXpldHM0bEJIUnRn?=
 =?utf-8?B?a0M2VlpJTHF4b0Q0bzVqWGVRajJmN2NPWTNZM25GR2hkREk1b094Rzl1eGNH?=
 =?utf-8?B?WEd0SkpnblVxeUo2Y2ZKbGJnNmc3Q084UitMYW5oSVJJVERBMUhsT2hZZkdr?=
 =?utf-8?B?cFpGR3MwRGl5T215cUFPL3FsTTY5ejVkSGNUY0dCMGNJR1VmekU2bUlMdlQ5?=
 =?utf-8?B?T1ZLeDY5N1RNRS9XTEkzNUZUYVBUeWIzbFoxcmdnQ0VtaGZYdHB5V3BWeTky?=
 =?utf-8?B?anUwby9Hc2VBeTJEN3hmRGNIejJpVnVWazJmTTk0aXBUYmsrSUdPc0dHaFUz?=
 =?utf-8?B?RElqN0RIR2ZlWHJldTNNemRhT1pNbzBJbkEzTXdmT2xMMDB6OFMwMERrU0xw?=
 =?utf-8?B?ejdxb3NGK3BiR1k0eENKeTQyMEVHbFZQNEh0WThjVXZUeUdoWk1wNFo2NDRm?=
 =?utf-8?B?V2NnSTNWV1ZqL1BpekwyRkxCWG4vaFpVU3JzQmc1cDBuNWJXR29Uc2FOV2Ur?=
 =?utf-8?B?dkprQXVyKzhHU3Bwc05xRXU4TzYrelRMbExCM2NrMm9YUFdsOXNSM2l2MWZG?=
 =?utf-8?B?WFN0Q0lzUXBHc1ZqY0JwbktWVzRnYlBYZ3hsN0YwWmdpZ2plRUMrWFUyM2ow?=
 =?utf-8?B?a1FDTWYrT1VOOW91MHYxeXNyV0gvTmlPZW9pVUNOekxYOFJrZ21vdHZlRnJs?=
 =?utf-8?B?NXdlckFIQ1VnaVprSE1VaFlidjVFb2hrVzk3Y3JGWjFvekMvczA3N0lqc0ZU?=
 =?utf-8?B?YmFKSklZbTJONzNyQ2s1a2tqYTNDRzUzKzUyTU94blpZZXdZSHIrS3pNL25v?=
 =?utf-8?B?NXhTUExCWDVNLzhGaXF6WndmS2xsdTVoWHpUaG85emprOWltenVhc2pramJJ?=
 =?utf-8?B?SXBLWDhRNzBnMml2cDlGSW1rUnc3aGNzYkVCUkx6alZFRnUyck9abC9wR1Zi?=
 =?utf-8?B?SURrUU9MeWtZOGRnOVFFbmlUOVNacmtrUGZZSkFzL1pJL1BUQVE4LzRPbHlk?=
 =?utf-8?B?RDYwbFl4dElBclVpaVFOZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjdnNmc1NUh3WU05SFBnODhhbWpkdmxnUi9aQ0FOd0hCRTdubXZDT1VEK2xI?=
 =?utf-8?B?ZjlVaVA4YUVENU1CMHhuSnIwb1l2U1B6SGlUbDhlVmVCZzBpMjlvS09adkZ2?=
 =?utf-8?B?UE9sNGFwQmhwelBpWjFHV3VJZjYreUIzR05IYkVBckd4R3pXeEVPZUVrTHRL?=
 =?utf-8?B?cCs5bE5TN2Zkc3g2T3B5NkQzU3U2aFVwSGg1OFhtYjZuSDczMlRkT3Erblhw?=
 =?utf-8?B?ZFdFWkR6djJ5eU1SS2k4dFc3NFByV3BJUDg2eXhoWU5jOU1BRXRNV1R4d2Fa?=
 =?utf-8?B?aEFiVzFxbTB0cDJpS0dsVHh1SW5PT2ZpL0JPZTVKV1ZWTDczTFBWZzd4TzdI?=
 =?utf-8?B?cjQyUjhvYWlodHBuNCs5SytmRURJYWJTSW9aUS9WUEVTdUZ5dDFRY05SSjRE?=
 =?utf-8?B?eW4wSHRnaUhKUTJQRUVROEhCN0hNSGpqc0tSZVN5dml2aGpsbEpCU3pNZmtm?=
 =?utf-8?B?OTZDYk96QUVUY2hDQzVzSmJkVFVaazVLL0FwNy9aUjZhU3ZKTXorNzBuNmU4?=
 =?utf-8?B?dzc5aFZPOGZZcUpUNlI2ZU01bkxwTGt3OFRtT3g1VVNzbkZPVnY5ODVNOWlN?=
 =?utf-8?B?cUg1b292MVhFTVpLc1dJR2VNbkcyU0VOekg1L3AyOXpvakhhclp0Nkc4a0w1?=
 =?utf-8?B?aFpFazZyVG93OXd5L0oyYndJTWgxOUIxalNJR1d5UHkwSVRIaWZ1cEl6bzNO?=
 =?utf-8?B?bTNOZGovaVhUSHM4dzdLM1A1MVpselZwOWdIOUR0VVJTa0NSWDhQbXljYW56?=
 =?utf-8?B?dUZ2WkhOeXU4TENERmhwL2NlUDQ4Mk96VzR5czlkNWRHbHNmZU9OUDdaVko2?=
 =?utf-8?B?K1lIS0xVNlo3YVpMbkh3YVo5UFFUamZBbS92dFBwNE1EcThNREowcGlzRC82?=
 =?utf-8?B?ZHRaSXpVWUpyOElVZ3FGUXJpUnNhaHh3SnBXb1ZhMm0zWFlMOHVyRTZ6bGZL?=
 =?utf-8?B?UGdFQWRWdnhPRC9aWFhGZWlxQTJPeHhDcjZ0MnYrcmM3OXFHd3ZvVTNLMHJL?=
 =?utf-8?B?ZXZuTTVVeEtqQkJwMlkxQ2o0SG1KekZ1UmpZMDErQmpWdi92SXhCVlVLeFlq?=
 =?utf-8?B?L1dkT01NMGVpUGxUV05NTE56L0tINDdJN24yWWtmZ2k4dVdUOUZ2RkdhZDlv?=
 =?utf-8?B?QkdlYTM3MlZneUhOb0liQmJrZGlLVG5XMUNXNFdNMmRFd3J5N21vbzdOWCtS?=
 =?utf-8?B?VlllK2pheXBYRmNpVXpFcGViSlN3d1VZRzV0ejV6OHpmVXAzSEpzZWJoTnNZ?=
 =?utf-8?B?dmNoMnlJVnUwVFlsNWRhOHYwUWRiRDV1VlYvOTI5cEd3enVhMFRRWnkwaWxX?=
 =?utf-8?B?c3FLM2ZDWFUwdmN0NzN1a0VWenVhampCRnpYM2RCL1dmaGdON2RhWkJHakZz?=
 =?utf-8?B?U3ZHWlpwODFRZGRTQkF1TGs5R0Jnd0xxM2szZnZ2SHdJVmtRcFpDdG1EMk1a?=
 =?utf-8?B?THFsWEcvQ21UVUxqeS9veTJmR3B3eUdtVEdML3RaTzFudG94QmR0TE90K0ow?=
 =?utf-8?B?K1pxcDVrak5PdmFJMTFIL1hERURvcmpNQVpHZzltakNJS1ovZHhLRW52N3pK?=
 =?utf-8?B?ZndmczhHaTF0cktKYkxCQ0daY01qaksxNDMwYTA2VjZNaUJzOG91c0g2NVVI?=
 =?utf-8?B?dnQyTHpjenBOdzUzZ05OUUUvVUVFQXlMVnN2RnZtbENGTExmclI0Q01LWlNw?=
 =?utf-8?B?dWdHRmFHT1ZSSjh4UURjMEg3NUtFYXdIVFBhYkNzUm1oVDRuazRxeEo0eUxD?=
 =?utf-8?B?UWx5ZUY4M3BwN1JvUVlOOS9hSm0vU3ZORmoyc2hKWXBJZmRzc1RaZFJWdEYy?=
 =?utf-8?B?WmhoQUJMd2xXTW41UlZrdXprV28xMTZiWWJkdzU0WDV2UjlsTUJqdEFvM1RT?=
 =?utf-8?B?T2RTSzc1OE5oUkwzQXdoZ3ByTFlRTklqd2t3ZzRFMGd2T1VSbVlFNWtCeFQy?=
 =?utf-8?B?MjIxUVdCd0YwV2sxcytPeGVkaHRQSGp1K1BnK2cxblRYMWhseFBaTngvMTVz?=
 =?utf-8?B?K04rMnBLZy9lT2dsbW1vTHozRlJBdGViYkVkN0tNRkp0WXVFT1JUUFVKR3lj?=
 =?utf-8?B?Y3gvQ2lPU0tuKzZXV3ZBaWh4QXRKTGx3eDYyYWcyUnFtMHhqL2ExbDJHNG45?=
 =?utf-8?Q?TXYAY/eTNJg7M9TfUxSU/hi4W?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f82a6fed-a617-4cfd-773d-08dcd77409b3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2024 23:54:15.9983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sV3G8oyar8Bfb1ph0U4IbI/u5FNFj3vRSiVeyW89ju5FbdZbPJR1C3Yr84AYxzM4uMavjftaCCJcQih2kWci0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4296
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VO9CpxyMDKeQrGmBStDGxHs/MpQt/07Q/+W5jK1SEF0=;
 b=b1rEiM0mhx5svZXAFeY87o/WRBLaUkw1wvnwUaQbb1NODcxauaTBpXlWp0r3GraErz8ycWNfmounoOD7qpzr7FCvkyfg1FBF2JklbWMATnVUWXg//kwVMCkUprzWe5Q+fJKqirFeVQ+4GiLFDjgn4mQ1TxoZg4wX3kTrWN2UT4g=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=b1rEiM0m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: makes e1000_watchdog_task use
 queue_delayed_work
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/15/2024 12:03 AM, Dmitrii Ermakov wrote:
> 
> Replaces watchdog timer with delayed_work as advised
> in the driver's TODO comment.
> 
> Signed-off-by: Dmitrii Ermakov <demonihin@gmail.com>

The Subject should identify which tree to go to, net or net-next.  This 
should be for net-next, e.g. [PATCH net-next].

But be aware that net-next tree is closed during the merge window, so 
you'll need to wait a week or two before reposting.


> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  4 +-
>   drivers/net/ethernet/intel/e1000e/netdev.c | 43 ++++++++--------------
>   2 files changed, 18 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba9c19e6994c..5a60372d2158 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -189,12 +189,12 @@ struct e1000_phy_regs {
> 
>   /* board specific private data structure */
>   struct e1000_adapter {
> -       struct timer_list watchdog_timer;
>          struct timer_list phy_info_timer;
>          struct timer_list blink_timer;
> 
> +       struct delayed_work watchdog_work;
> +
>          struct work_struct reset_task;
> -       struct work_struct watchdog_task;
> 
>          const struct e1000_info *ei;
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 360ee26557f7..5b7a3a1423ed 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1778,7 +1778,8 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
>                  }
>                  /* guard against interrupt when we're going down */
>                  if (!test_bit(__E1000_DOWN, &adapter->state))
> -                       mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +                       queue_delayed_work(system_wq, &adapter->watchdog_work,
> +                                          1);

This is not worth the line wrap, keep it one line.

>          }
> 
>          /* Reset on uncorrectable ECC error */
> @@ -1857,7 +1858,8 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
>                  }
>                  /* guard against interrupt when we're going down */
>                  if (!test_bit(__E1000_DOWN, &adapter->state))
> -                       mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +                       queue_delayed_work(system_wq, &adapter->watchdog_work,
> +                                          1);

ditto

>          }
> 
>          /* Reset on uncorrectable ECC error */
> @@ -1901,7 +1903,8 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
>                  hw->mac.get_link_status = true;
>                  /* guard against interrupt when we're going down */
>                  if (!test_bit(__E1000_DOWN, &adapter->state))
> -                       mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +                       queue_delayed_work(system_wq, &adapter->watchdog_work,
> +                                          1);

ditto

>          }
> 
>          if (!test_bit(__E1000_DOWN, &adapter->state))
> @@ -4293,7 +4296,8 @@ void e1000e_down(struct e1000_adapter *adapter, bool reset)
> 
>          napi_synchronize(&adapter->napi);
> 
> -       del_timer_sync(&adapter->watchdog_timer);
> +       cancel_delayed_work_sync(&adapter->watchdog_work);
> +
>          del_timer_sync(&adapter->phy_info_timer);
> 
>          spin_lock(&adapter->stats64_lock);
> @@ -5164,25 +5168,12 @@ static void e1000e_check_82574_phy_workaround(struct e1000_adapter *adapter)
>          }
>   }
> 
> -/**
> - * e1000_watchdog - Timer Call-back
> - * @t: pointer to timer_list containing private info adapter
> - **/
> -static void e1000_watchdog(struct timer_list *t)
> -{
> -       struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
> -
> -       /* Do the rest outside of interrupt context */
> -       schedule_work(&adapter->watchdog_task);
> -
> -       /* TODO: make this use queue_delayed_work() */
> -}
> -
>   static void e1000_watchdog_task(struct work_struct *work)

In keeping with the theme, this could be changed to e1000_watchdog_work()

>   {
> -       struct e1000_adapter *adapter = container_of(work,
> -                                                    struct e1000_adapter,
> -                                                    watchdog_task);
> +       struct delayed_work *dwork =
> +               container_of(work, struct delayed_work, work);
> +       struct e1000_adapter *adapter =
> +               container_of(dwork, struct e1000_adapter, watchdog_work);
>          struct net_device *netdev = adapter->netdev;
>          struct e1000_mac_info *mac = &adapter->hw.mac;
>          struct e1000_phy_info *phy = &adapter->hw.phy;
> @@ -5411,8 +5402,8 @@ static void e1000_watchdog_task(struct work_struct *work)
> 
>          /* Reset the timer */
>          if (!test_bit(__E1000_DOWN, &adapter->state))
> -               mod_timer(&adapter->watchdog_timer,
> -                         round_jiffies(jiffies + 2 * HZ));
> +               queue_delayed_work(system_wq, &adapter->watchdog_work,
> +                                  round_jiffies(2 * HZ));
>   }
> 
>   #define E1000_TX_FLAGS_CSUM            0x00000001
> @@ -7588,11 +7579,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>                  goto err_eeprom;
>          }
> 
> -       timer_setup(&adapter->watchdog_timer, e1000_watchdog, 0);
>          timer_setup(&adapter->phy_info_timer, e1000_update_phy_info, 0);
> +       INIT_DELAYED_WORK(&adapter->watchdog_work, e1000_watchdog_task);
> 
>          INIT_WORK(&adapter->reset_task, e1000_reset_task);
> -       INIT_WORK(&adapter->watchdog_task, e1000_watchdog_task);
>          INIT_WORK(&adapter->downshift_task, e1000e_downshift_workaround);
>          INIT_WORK(&adapter->update_phy_task, e1000e_update_phy_task);
>          INIT_WORK(&adapter->print_hang_task, e1000_print_hw_hang);
> @@ -7733,11 +7723,10 @@ static void e1000_remove(struct pci_dev *pdev)
>           * from being rescheduled.
>           */
>          set_bit(__E1000_DOWN, &adapter->state);
> -       del_timer_sync(&adapter->watchdog_timer);
> +       cancel_delayed_work_sync(&adapter->watchdog_work);
>          del_timer_sync(&adapter->phy_info_timer);
> 
>          cancel_work_sync(&adapter->reset_task);
> -       cancel_work_sync(&adapter->watchdog_task);
>          cancel_work_sync(&adapter->downshift_task);
>          cancel_work_sync(&adapter->update_phy_task);
>          cancel_work_sync(&adapter->print_hang_task);
> --
> 2.45.2
> 
> 
