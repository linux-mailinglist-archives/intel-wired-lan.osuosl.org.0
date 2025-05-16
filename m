Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28136ABA4F4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 23:06:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2AE48128D;
	Fri, 16 May 2025 21:06:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YkB-s_heCxUv; Fri, 16 May 2025 21:06:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2373381438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747429575;
	bh=DgnFY74aMiwZd4Qu+VpwC/HXrNTYnWvQJGHbnTdSfz8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F3PXdqRJXQE6lccNfAP8ffuBUZyytIe0eq6W9uNRagxXeANiEx2/2p5K1hUEqMmhI
	 cguu3E1M0wYX1Tqw/+HpfBjEANCUzQ4H00IeduL5cIKetCqLr1Bs9UsRgyJUsBls+b
	 DuDaQ61Sz4SOSQw1n1EitQ6TvRd3ruUdBC3AQuGKwj01GiSNuG2677AikARzWXBFiy
	 ntkq4uOgZoq07JYeFXpfTa1syGsQfAIHAZ+P7uMvh1ZzQAZoFE1LtU82rY5QUzfSOx
	 5uHJyDFn+MSa9kO0OG6QV7JjZ+jBmlgLoxqkIWLuCS/d7hAae+5ot5AuDfFKWiny6a
	 JFuaWS/nOkdLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2373381438;
	Fri, 16 May 2025 21:06:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 96CD922CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 21:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 876CC40BD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 21:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7rMvmoCH9t_0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 21:06:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.80;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB682417E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB682417E6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2080.outbound.protection.outlook.com [40.107.220.80])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB682417E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 21:06:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y+Bkg+GsnhNWtxlA4NymUE02moL/Utxoiz7BdMrt/xA9O7GsoW4SJByTK0DAjEsAp4uJPmvyjx1EeUwClefMhHobtAvY6blvoYxrrDrG/0ZySGvhrtgMxLg6GPgnOvCoxwqFT2qq2DJm+Im4z5DVIuCDVq6IUwt5kU1lgzHWhKgM9OUMyCkQYCp3BmmnZodz9zvmuALziCw8d+xeqTxRHkAfRh3yxqswXTUlc0E/gHkV2dMX5yzmHD6eY1UJ0PatB8Y/fnsegmzpBrMGxV0XcCXzhYkyUje0AOLvjplPttgLiBzKdX0IBk4TzQppvwzcunduzhblj7k/0Vh6/VK0Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DgnFY74aMiwZd4Qu+VpwC/HXrNTYnWvQJGHbnTdSfz8=;
 b=f7um4fB0or7/YYMfQr1Q6f3zmUyOUin24hooicrvDSqniuL2gaYi2H3h82M2ccsNYxnqqW6aIWxteQk7zjlnrSD1Tcdxrf8C9T3ju8mv3aRQBRNci8tqf7U+D8rShZGzEhoQDC2uYhav7ENB3y1915NeLOxqXFauMyP99Ih7GwsJH6D6nQLSCwzzJGBM+B9nMNSG/o0FFjTTJkSb00e4hXBdkp6fmvDbHXVOjm1Tv+T7ZSxmadgRtK5rTI9qOHOKQBev6Pq6t7BBqwwcPjr3ulwErH0PZqRbiOCJD+ffHILKtpY/PvkaVabdYIkwmgiK8+h8E2aHMXGSNsvt5wM8OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 IA1PR12MB6260.namprd12.prod.outlook.com (2603:10b6:208:3e4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.32; Fri, 16 May
 2025 21:06:09 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb%6]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 21:06:09 +0000
Message-ID: <e1b222c4-ec9a-40a3-aa57-9fea1054a546@amd.com>
Date: Fri, 16 May 2025 14:06:06 -0700
User-Agent: Mozilla Thunderbird
To: Robert Malz <robert.malz@canonical.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 sylwesterx.dziedziuch@intel.com, mateusz.palczewski@intel.com,
 jacob.e.keller@intel.com
References: <20250516094726.20613-1-robert.malz@canonical.com>
 <20250516094726.20613-2-robert.malz@canonical.com>
Content-Language: en-US
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <20250516094726.20613-2-robert.malz@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0205.namprd05.prod.outlook.com
 (2603:10b6:a03:330::30) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|IA1PR12MB6260:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cd52e96-fff2-489d-d9db-08dd94bd7aeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3loYndyZTM5WE5Ec0dydjIxUTRLU2k2L3JJbGdIR1JiczFaYlM0d3pzVWtF?=
 =?utf-8?B?U3ZXamJhaU1JT0NKL3B1d3F3NHJXRi95UVpNcDFjMU0vdEM0dzRrL3RmcXV2?=
 =?utf-8?B?UVczTE41TEkyQzQzNktENExOM2FOTzluM2VRclBPeFN3OG5CVms0Z1pFS2Vk?=
 =?utf-8?B?LzdPeFh3QnVqVXQ5VndPWGkxd0ZDS1B0QUx1TTlJUVBiMTJCTTBYTmlyOG1S?=
 =?utf-8?B?T2ZQZE12bFY0OUFHMVdjUW5PczgwWk1oKzFVSEJXRGdZUmVZSkxZOG9yNnV2?=
 =?utf-8?B?ZWlqTHZHRTFqZXUrdE9vcGtBSzYybVIydFlpenAwUFgwd2VRbEJQZEY3S1Av?=
 =?utf-8?B?bFhodFdmQ2hSQUFPaDF0a1ZCQ214MWVNdk1CbWw1UGtkaEF4eEZETzZnVWpZ?=
 =?utf-8?B?cmtxZ01MWHZVc1VpY29oNFVuMHJWM3dCV1ZaaEdtTlJQTWVmSkJzQmQ5aHA1?=
 =?utf-8?B?bTEzTHFmaHFMeTlCblVXMXFNRFFtL2FDejZ5RmVHaGdIZEhIMS8zRUFvd0M1?=
 =?utf-8?B?NVlKeUlpQjlXMGkzemM3U3Q0SWVNVHowY3VqZjlCR3BEUnhXcWR2d1k1Ynds?=
 =?utf-8?B?U2N6cDJJWmxodzdYcUh5TC9seUlQWWVPTGhNcGRnbE93dStpZVFidUltR2ZQ?=
 =?utf-8?B?QU91OFhhY3BqdUdaVDV5RDEzVURvTXFXeUdwVjFOVGUwWkIvRnJMRkZMcmFN?=
 =?utf-8?B?UmVSV3o5ZzgrYUVCYkNLTG9ycnhISlVjTXZaQW5rcmp5VzZIbllmMVpuVkty?=
 =?utf-8?B?RkF4SWplSU9DeDlSSHVGT25obUxTY2l4ZU1tMFkvQkMvY3pFV0pXcnpSU2lk?=
 =?utf-8?B?MmJIUk9vQ09GZStEeWVjSFU2d0tWbzBVa2FvazkvckNmZzlSemhZSk0wdHhs?=
 =?utf-8?B?N0FLaC9xVUk5M1VYZjlYc2hUaVVwSUtBWUIzc1FNZ1FNay9nL3Z1eUo2Yk5p?=
 =?utf-8?B?ZFQ1dS95K0d3aEE5M3N2N1pxcERNWGJYRlJGNkJ3TldTTUhkbkRUSm9pcTdn?=
 =?utf-8?B?c2RoNWRKRGRVWDNQZkJra0Y3MkRyd3VCL3dEUWZjbXhaNERKQ2o2N1plVVN1?=
 =?utf-8?B?WndkMnE3dXhiYnlBYTI1UmR4Q2hTcklBN3p5dHlZTVp3RGhiZ2o3SFRsejNk?=
 =?utf-8?B?OUlpZXcyNk5QYjlUK3ZNQmdCdWIrN1B0bmo4YUhPbnhJcE5tOFJSRmlsR05y?=
 =?utf-8?B?UnpGSmtXT09xZk40Tjc1cVZkby92NHA1U3I4Y1Ftc3FJdE9rckE3cU0xZmNh?=
 =?utf-8?B?MEl5VHhaM2JtcldJRi9uanRnSy9wV29lSHJRcXRuQlBXYXBHVEpjL2I3TGY2?=
 =?utf-8?B?Sk9VZXpHNGxXWnZhV25ZSXJ2Vk1ZSVNQbUxUVENpdHlsMElQODl1WTUwSUov?=
 =?utf-8?B?QllSNENmRzh4VHZMb3ExQUZzUzBES2doSHMwak1kWXQzZEFwaDc1UnRmZG5h?=
 =?utf-8?B?dU5aMEp1MTZzSXAzM014MVlJcHJYNktrRG4vR3hYamI0bm5QYmkrS29OOXBU?=
 =?utf-8?B?VzA2ZXJrZFN6YzltWUZmNHgvSlRPZXRDQmt3Ymg5Z2VTRURYZlkvQlBmZE1k?=
 =?utf-8?B?b2JoZjBNaWg0RXFobDBId1dwK3l6cGtJN01WdUFuSVJHMEpZY3dyRU5Nb3Vy?=
 =?utf-8?B?OTl6S2xLRjVMalIvK2FUMCsrRGhvdENQRlZWMW1xTWlkYWRFU3VFZ1hOOEF2?=
 =?utf-8?B?TU15ejZsOTg4TW5zREt1YmtPMkFldUpvQndXZzVUZUkzSG9ockplVktQUzl4?=
 =?utf-8?B?bDRReHh1amN4R2s3WFlvNlNjRzhVUFpra3N5MlFMbnh1alJUTE9lam5ZSVlr?=
 =?utf-8?B?NFVTMUFvTi9FWlcvay9CcENQMGx3cENtdGMvczZERlNpNXlQcnJEWDBuRExH?=
 =?utf-8?B?L05vakpDMXNBK3ByMTdXcEQwNm1zWnB6dU5MRFJuUGVBbjUxL0JVUTFRK3B6?=
 =?utf-8?B?NTlXOGxFU0VyWm4vbC9FV3g1ak53azgwcy9UQnAxTEFwWTFlZ1VrQUhISnVH?=
 =?utf-8?B?NW8vZ0VEVVNnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWhXQ3lBbHk1Wm5kN0h1WStqMUN6bGFlQ2F4VHRkY0Vya3phblVWMU1EMGQ3?=
 =?utf-8?B?RkJPdCtZb0U3aTU5U1UwOSs0UTV2Z1JsS3B4eFFpUFJjWU1nQXFKUnNzdGFC?=
 =?utf-8?B?RGhvODFIT0Z4UjVrSUJ5VWthWkpPMEJzZStYeVIwQXBjdHlHOFdUQURtb3Nq?=
 =?utf-8?B?OUZmaTVySXlzOWNleklsdW5mMlFOa1VxNnVEWnM2a2lTS01CaktJcFhTT05N?=
 =?utf-8?B?bEl3dEk4Z2VkL2tlS01LZVMyeXZvTGQvN0NtN0dNMXNBK1k1WmN3OHdMU2Jh?=
 =?utf-8?B?c2IxY3ZuOC9nT0xTRE0xUzdSOU0wV2xkemJFVzFQT1NPZy92UzBTT3kyYzZU?=
 =?utf-8?B?Q1ZRZzBESkIvOXBNOUg4L0NqRlN5dHp4elkvbnBjMG1BaHN5WGx6alJrL3ZH?=
 =?utf-8?B?QkhkV3B0aE41SEhicmQrQ0J3azNXcWIyS3VKRDBURGo0ZUFLaGlpd0lpalNT?=
 =?utf-8?B?Uzc5TnpiL2RVM0RjOUJ3TXdaQXVDeTZGUWF5R1Qzc2pLVS9SanNQa2FrbW9m?=
 =?utf-8?B?eU9iTm9ZTmVjOEhNVXNGL0ZkNEt2VTc5VmdoanpQTHV2MzMwSEF2OUhkMmUz?=
 =?utf-8?B?bXNORTVmWENwbkZia3dqVXlQRU4raklXSVJzY3Fpb1dQUWl2bW10V2gxMTU5?=
 =?utf-8?B?VEJzbGZBdWUzeXJnQkVGNHhDc2swT0h6ZURaRUloeW5iRWY1RUhSU2I3T1BY?=
 =?utf-8?B?a2FNbGwxVGNvTS9BemxQZW5Yc3FQZ3RuTDlGeEdyeHVYOVJyN1ExT2F1SXdG?=
 =?utf-8?B?VitJUmFtM3FpSHJOY3JHelpua2RIZ0E5M1dxT1A5RWxkMkplVGRHRWpQVVZa?=
 =?utf-8?B?dkJwMlRoMnkrdXNPTDVDZGRIdjN1MW93VDRnYWN3SDJqU3g1RTEwRjg3Nzll?=
 =?utf-8?B?Nkw3RWZpMVNJSHRKNFBuVVR4Sk54Y2VHcGY0T3FvSnR0TVVoN3JuVzQ0OFZ0?=
 =?utf-8?B?QWNGeFUwWGFsZUxtSGMxN2Y0VDZnY01kMFFaMVpzTlJXVzZvVitCaW1XVnl6?=
 =?utf-8?B?ZllSbkFHQTFCdGl6eVozY2M3Mi9HRTdKd25Eamw3N0xHQ1dDUGJyRTdtSFZJ?=
 =?utf-8?B?eXRLb29oK3J3Skt0UFB1SXE0WWRwK1ZOUkNkMHR1NGYyUjVxY0lMdFZKaGdU?=
 =?utf-8?B?S0RKVnFBYUltaGY4Q1Nlc3VKMWFWSHVOSUQ5ak9nVEZ3cUtrQnBnRmhyeUZP?=
 =?utf-8?B?TlR3WjF5MlJuaHNibXBiLy94bVErTXQ3ZDNaUS93NVdzcGwwS3FjQ3N0cXM3?=
 =?utf-8?B?VjN1RUtYL1Y3ajNoNnpWRUpyeGlnRWZKTVJtUmtJem42cUVXanZlSDFZZlVz?=
 =?utf-8?B?VnlBZC9iMDVhdkFhbXdHVGkySW1OMHNTLzIvVmU2MG1Ja1lxbnIrUjNNWm51?=
 =?utf-8?B?eWdBOEZUbnYwRDBVc2lTUWtCT3BHS20wMVRaYTh1eVNFNisvRWIwSXhsRk5I?=
 =?utf-8?B?U3ZNK1BidURJWnZ2Wjg5MFBSL1EyYXFjKzJDTnp6anFzRFpMWVFndzlqZU92?=
 =?utf-8?B?TDdGRUg0VWdHd3IwdnpmQ2hwUFR4RjBLdHpmWTFvUU5nUzc5eTBnT0pFcTNt?=
 =?utf-8?B?WHdkTVpRbk5jeDJiWTZhUXVGcU5LVHUxZER6UHhrUlpkVGJaNmtRYlNzUVU2?=
 =?utf-8?B?VGs1ZGtWVlVPK1J6VUhCOFcvUjk0YXpQeGtqSE9VSVEvK2NwVTlWOCttVkg0?=
 =?utf-8?B?RWg1Y0ZWWms1VzB1UmFXL25KdWJENEVBMjN3MGxJalFPanNmRmw2ajZFRmhV?=
 =?utf-8?B?SnVIUGtkUi9SNURVc1NzRXlGVEdTRG1jSlhWT01aazl5bHVXbGVUbkpVOFN5?=
 =?utf-8?B?U0ZaTm9SdFJ3MitSaENyQWhaNDd4TFpTQjNpMCtGZXpqLzdDeU0yMitHQ3I5?=
 =?utf-8?B?RG1MUnNWN0pOYjhSZlhGMUJKVHBrVHZrTEZDOFBqTHNMWEhrZmlUYXJFTHRF?=
 =?utf-8?B?SStUcktVVGFwRHBzOEVVbU5NY1kzTFk4c0oySm1DeTZpcFdDY3ZDeCtFaExo?=
 =?utf-8?B?T1dQc2hjUVA1cWp6QjFKUUxkay9jSkUzL1NWWmpSUTJrRUtiTjBxdWFJY2Jh?=
 =?utf-8?B?emFjNHRqSHplajNzT1g0d0RuenROaFNKK01vT3gxeUcxc2xXVUdwNVoyaEhC?=
 =?utf-8?Q?d+EIluI88JxCbWN7AtL/LZI/9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd52e96-fff2-489d-d9db-08dd94bd7aeb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 21:06:09.1052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LgRH/9xKCye9SStBTKwwbr2ish0usCEtGc7hfiKwfPVlytuUoh7dTnVqxPSFN5mrYPbkMoWSfQJqUvQCEXa+IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6260
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DgnFY74aMiwZd4Qu+VpwC/HXrNTYnWvQJGHbnTdSfz8=;
 b=wWwLtMMMD/wMLog6Ogy0umrFTPn9B1DBhqj1rPITVhglJ3ZVL+FA9NIfJBzeagvokea6p6tlunqvL7FyqjozHJDsQVj1DmbkLDf8apDy2fuR5mBJTrFELA1d0syyJvaIQLyg6GV8fnEfdKwezbqDHhSSiZEcXNeuHcGgKkjVIRI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=wWwLtMMM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] i40e: return false from
 i40e_reset_vf if reset is in progress
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
> 
> The function i40e_vc_reset_vf attempts, up to 20 times, to handle a
> VF reset request, using the return value of i40e_reset_vf as an indicator
> of whether the reset was successfully triggered. Currently, i40e_reset_vf
> always returns true, which causes new reset requests to be ignored if a
> different VF reset is already in progress.
> 
> This patch updates the return value of i40e_reset_vf to reflect when
> another VF reset is in progress, allowing the caller to properly use
> the retry mechanism.
> 
> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
> Signed-off-by: Robert Malz <robert.malz@canonical.com>

Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>

> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 1120f8e4bb67..2f1aa18bcfb8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
>    * @vf: pointer to the VF structure
>    * @flr: VFLR was issued or not
>    *
> - * Returns true if the VF is in reset, resets successfully, or resets
> - * are disabled and false otherwise.
> + * Returns true if reset was performed successfully or if resets are
> + * disabled. False if reset is already in progress.
>    **/
>   bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>   {
> @@ -1566,7 +1566,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
> 
>          /* If VF is being reset already we don't need to continue. */
>          if (test_and_set_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
> -               return true;
> +               return false;
> 
>          i40e_trigger_vf_reset(vf, flr);
> 
> --
> 2.34.1
> 
> 

