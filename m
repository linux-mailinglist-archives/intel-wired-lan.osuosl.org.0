Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CA5AB924F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 00:41:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C082540C26;
	Thu, 15 May 2025 22:41:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EtBBH2Wv90Di; Thu, 15 May 2025 22:41:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1540416A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747348861;
	bh=S08eZyUe+afUo8dLmLzkNb6oY0nFT2u7UabV8TemAR4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K0h8tJKGt9k+8DrdnV8w0Na09R1w8ZE1ztLruKUtsT9GEEdGebuuoJXKvqakgE23h
	 2Mj5OSHP8yDGBbjgUyWytyFYxwhpuQlv8b0uRkLCR8sHhldc+pp0ayoUynkw16zofb
	 kU6agmScUzh7SV6Mvnrj9qhG1DfjOStbgDVlGjaBEDX9XGHd6mqQUqnX5qYVBwa3X3
	 KGC2xonebMQMmKYUteIFXS6FHoqdxRaE5WWen3n2KP+HgZonlP2dkGULKahe5k5HnQ
	 H3Wf2EfftPtXLekjE6HgPmnBesx6S7O65hbQRDPTR8IqvPz44x6Xn+1U5T8i7U9qsB
	 LuOcWowUnzm8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1540416A3;
	Thu, 15 May 2025 22:41:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B583B1AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 22:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A67234004A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 22:40:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xu3Jw_9IyhTM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 22:40:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.64;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8AA8C4018F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AA8C4018F
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2064.outbound.protection.outlook.com [40.107.92.64])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8AA8C4018F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 22:40:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PnRGlv6x7HIVsesYRCCMN71DOsGSQ84Ai671OApY2nBToDoSTSw6WO/Gm90gF+3I7aN2sSTWzMhxLBFZ8N5ggRasO473/OQQvuH8mHE8KgqKNLxpHgZKC0U1Kh5YmWE6z0jNHIqZd3VHhq74QaepRbhsT0x4q14216j8fimRcdPMmJMgW1AgZrbbJIW1Xna77f6w2ymxNtmO1j+T1pMCpQMstOKnMu3+ZVU7Fhb0KcPaolz0Oytj0neM5OzX1nz/DjlfREd68M8h6BQ7IzaX9n2G9vQbgCo1PV/ZXVhcumdgFVmti7KgeXXeS+QTzw6ZLmXc4lD6crEXM4kmExdcRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S08eZyUe+afUo8dLmLzkNb6oY0nFT2u7UabV8TemAR4=;
 b=oxs2TsB9cL+UVjQUWef6bv2S1cOVGDjGER9Wg1jCZpBu7+kDAInRDDjkHX0NzOTOtBya+bmJ1bYMcDuoLa7LF8A/oyf2I1o+Zt1C0Dkus+QsI/2e5cBzXcVdbFU+2rqCKEFG/IfQeCHlFOcM3R3N+IqwUWCHjpIrWAGI/Zn7YFfu6CuxyXEtYnsufWck9WmuMCR04Re3scxOnAguCZAy7pw8GyJ1ByxGQmrJHHHylY54w1atuoIO9GdMtV64UCB2D/CyIBK9rZ+5g5tYQMMA4SDQB88VAWCLgZa3mQJq22XNMAptvnRmM3BUhahDh+0hCLPssnfH+LqK3mC1J92A0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 CY8PR12MB7537.namprd12.prod.outlook.com (2603:10b6:930:94::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.32; Thu, 15 May 2025 22:40:54 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb%6]) with mapi id 15.20.8722.027; Thu, 15 May 2025
 22:40:53 +0000
Message-ID: <fbf72244-873e-44f2-8974-76be6f7118e6@amd.com>
Date: Thu, 15 May 2025 15:40:51 -0700
User-Agent: Mozilla Thunderbird
To: Robert Malz <robert.malz@canonical.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 sylwesterx.dziedziuch@intel.com, mateusz.palczewski@intel.com,
 jacob.e.keller@intel.com
References: <20250514145720.91675-1-robert.malz@canonical.com>
 <20250514145720.91675-3-robert.malz@canonical.com>
Content-Language: en-US
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <20250514145720.91675-3-robert.malz@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0201.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::26) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|CY8PR12MB7537:EE_
X-MS-Office365-Filtering-Correlation-Id: 65d41f36-0fd9-47dd-747c-08dd94018c77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWRHVzZEcmJCMGRhSWpFNVV0UXljUWwzNk85a1JWaTVYWGpWanptVmRvTnJX?=
 =?utf-8?B?Vk1qaGdDdjFnS1ZHTHlyejlKc2pCMmV1bUVPZmlsREFRUzhXdkRwQjNVTVNY?=
 =?utf-8?B?a09Va2pueFZTWE1jRmpneE8yNjZtWXVmalF6cFRucks1SUp1VkY0NUYzSE9Q?=
 =?utf-8?B?OFFsNDFxeWtJSUdOUWtjV1VGaUxpNWlybHVjMUtlQlczMVNyOVhqK1l3MlBH?=
 =?utf-8?B?aHZEdXlLUXk3MmttdGNlNDFFS281Z1c5OUlneFl3TmJ3R3E3R2NwYVVBVE5t?=
 =?utf-8?B?RVBaWTJHdnhWUXFtcitCYjNoYzdQVG5HZGNveEIvUkZCOVpwd2d1QWpGdkd2?=
 =?utf-8?B?UU4xRFo5UkpGM3NkQjRLRnl1Mk9PeXY0cVJSMXNaRGdTQUdJVG1JMnVOWFd5?=
 =?utf-8?B?T044ODZGdVdHeC9uVUdLb1B4NkRJSU9FbkVqTUxZRDVmbERJay9iRUo1K0Uw?=
 =?utf-8?B?UGIvZ3RtNFlUdHZxSHN5RHluNnVRbWZKMVV4L0psWll5SVBKWkV2angySUk0?=
 =?utf-8?B?QjdDVGZrOU8rRThoN0hKYktMTmRGNG04WGg5bnZZSkNFd2E5b2YrYTQxeWpv?=
 =?utf-8?B?bWsxS25OZzdSOXl4MjBoNmhnNENCL1BOZkhSVE5pRFVhMUJNcjVrN0FyVU9J?=
 =?utf-8?B?RU01cTM5My95T2FNY29md3BOTW56RzFkTHlwQy9uVEdRWElLcGhxaEIzN1Iv?=
 =?utf-8?B?dHhPcHNqSTUzQzQrZGkxVHF6TDhrc0dpYWtiaUJDQ1l6aVFsQkdMSUptTWZE?=
 =?utf-8?B?aGw3bFRjMjR2MWhnenZnUEU5TG4rbCttYlZpemMrbGU3TjFMN0tJcHV4K2Vk?=
 =?utf-8?B?bW90a3FteDJ0L0xUWEEwOXcyckpkYlpnelVFYjRPRUNHVFBRMmFDeEpVOHYv?=
 =?utf-8?B?dGR4ZGU2VmQ3aTNzTy95a3dqYlA4NkxKWmNKeHJZQU4yS1p1cDJ0S1VtN0Fn?=
 =?utf-8?B?UmJXR01HR3NVV2JSVWR5dnduMk5JaEpVazJmbDkrR3VIc2pLaGhzdjlNSTN1?=
 =?utf-8?B?bkhROHFZYWo4ZXg1blpYN0pyUzRkOVhzSEVBcEZMTGg3dW11MjJtQlh6K1pV?=
 =?utf-8?B?ci9xUWVvWmZzSjMwdG1LczV1VXpmVnRidDJyMU1nYjN5YklLTTZJQWZiYysz?=
 =?utf-8?B?eHg5bVlJd29HMlg2Uk8zdHNadzArRU1xVzNqVk9ZQWdGMHVROWdKOFQzQmlo?=
 =?utf-8?B?NFhIRkJweCt4R3ZyZnp6VlVEajNjd1RGeW90YUN6Qm5yN3BDVndhU2gzNGxp?=
 =?utf-8?B?ZGtFN0xLcDVYa09Eb2ZJRFhPM0kwcXJ4Nm5EajY2bk92L3V0dDBFRXNzZ2Mz?=
 =?utf-8?B?SVIyT2ludGFNRjlFL1gvRDc2MlZqNHlrMGRyNENNekNlMC9Gejh1ZVhiTGFW?=
 =?utf-8?B?MDdFNXhvc051SmQ4NEJOMVlScnVMeENZWHorU3ZYcVRhSVlrRWR4OUVuTmZw?=
 =?utf-8?B?dUJ6N0NVYm9McXFFR3EwaWtXMER4akhaR0ZLOVQ4aURIYm12UEZIaTgwZjA4?=
 =?utf-8?B?ZU10NnJNM3hBTjhTNmhWNTRHZW95UWpBZmtLcW9GcitHY1l2RVdPNFJMbEJx?=
 =?utf-8?B?QzFnckx4QXd5L1gxOUhBcjZCMWFya0VVNnRVa0xUUnZETk9na05rblNWZHF4?=
 =?utf-8?B?NC9IK0pLK2kvK0ZkUjV1T2RwUCtxVlQ0Q05WdjZZZW8zK1czL2FBcWk1d2xV?=
 =?utf-8?B?WjR2Y2ZqbkZ4eU1wVjhOMlBERjFvZjdPVXlWbEd4cGtJRnlWYXZRcVhyT0JG?=
 =?utf-8?B?VjhhdEk2ZXhLL0RIZ2M4dnFrOHFqajRZM0RNT0VWUmsxbnVKbkYwWjJJUUhm?=
 =?utf-8?B?VUJSSE9VMHdhN1locnFuenhQbDlBaHRXaWlZRWdieU5DaDBvaXZlQVAzYmxJ?=
 =?utf-8?B?T3ZjeCt3ZXFOZW1xRVhld3lTVlJzcUhObGF6cC9HVTBGNklrTGtTektpOG1K?=
 =?utf-8?B?Wk8zYnJ0MmJwZE5NY3Zyd2o0T3NiY2VWbEVtZDVzTjFraCszaVZOT2FZdUQy?=
 =?utf-8?B?STNkb2NvOURnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T29OWHMyTG5uZW1iVnhxb3JCZy9DNE50UEtXaWNtWVRzd0NxRVVDME5FK2or?=
 =?utf-8?B?V3ZXVHk4dy9NVDBzVFBtbndBdEM0U1JiVXpoeWI1MWNJdFlXa0pnM0gzZDdo?=
 =?utf-8?B?ekovRllvcW0veHFLNkVqcTFUWUwrTWY5OTlXMnZDbk5HRlVGTHpOSGt2VjVv?=
 =?utf-8?B?b2N6OFczbVNYNmQxSFB2bVpsNUhUU0F3Yy82Z2F6N3VWZmhqYzRUQ3BYYzZk?=
 =?utf-8?B?Y0ZpbjJGT25zZGxXbHJvdEh4RzdKblpUZFFrVmRaNEtMRUZUMThFazd1K3E1?=
 =?utf-8?B?dWcvbjMxVmxPaEZYK0RYTnNLdUdFV1NKY1pvekNrSnNheDRWQ2RHQS9oYkNq?=
 =?utf-8?B?N0JjTTJRRHlKZjZWYVdXWXVicC9PNGZ3WXEySnhsNEpRUUdPaWprY0lHa1Zm?=
 =?utf-8?B?OWVXbHJEb1lUWG9rWWYwRmZ5S056QVZaemNWWm9JT1FRdnEzTmpIUDVub3dt?=
 =?utf-8?B?MTY5cEJjNHVWaEFXQS9jb3ZMaVZmMThsaVJBaWYzL1ZVNktvREFpRzYzc3E2?=
 =?utf-8?B?Zy9xTVlaaEhXeXN2ODRGRTBzK1d3UHBhall1N2x0MVBjTFdibG9ucnBGYmRE?=
 =?utf-8?B?WWZGUE93TStsTzRDZGxQWTRrQjVqMDQxVWtnOXpyZm5WN3VjRTZoN25TT2Q2?=
 =?utf-8?B?TFJYeEFCMmREUHBUNFV2U2ZuMDJ4STZNKzluNnFSOEtVYnZUL3JvR2NJZ1du?=
 =?utf-8?B?bjgwcDgvZE5UZmlLeGtmSFd6N3JzZ25BMWlYMHQ4ZWpXRXY4cWJhZlNYTU5w?=
 =?utf-8?B?VU1PaGd0YU50NXU4ZmlzalNvdVVxNUZHOGliMXJaakM5eHNIdXBESE9ZTU1w?=
 =?utf-8?B?eWIrSDgzM3N0NDU0bXVGODJReWZGdnN1bHNPbzVRcUIrYUVVY0s2NjZ6a0ov?=
 =?utf-8?B?TFlvM3I1VzhNZHd5OWNWYkp5RXg2RDFLUG8ycEZRNkRCMDlsQmMzYlkwam9P?=
 =?utf-8?B?SFRpRDN2SHhpZUVsNmpGQUg4cWZCeFhWZEZGZnFmYjh3RGNxSmpEdnV2amlF?=
 =?utf-8?B?SmEzeUQzM3hqYzk0cFN3NllFMk10MHlBRjZGdXNkZzJYWFRzcTR6Wi9PRktF?=
 =?utf-8?B?c01CM0s3L1diNUg5dVkveng3eE8rMFc0YXVzMm9sNk9vVjg1VmxwbHBQRHV2?=
 =?utf-8?B?c1R5Um8xZFFGU3ZJbFNyOGtrK0RnYVlMK215NEFVMGs4Q0JhdjNrbG1YRkxO?=
 =?utf-8?B?K1pZRDV5czdvdEEvT0hPb3lnWUl1Rk1pVHp3eUZRV2lRNUgwOWEwZk9jZnFH?=
 =?utf-8?B?Nlo0TlpjTUNYeUtkLzR0akpHUm81cVc5a25QUzRIMUdtNVF5bFJlYjdZbVNZ?=
 =?utf-8?B?T3ZJTmtCSXJzZkdzRlhmQUE1NWNrOExRSlFFVGFQYmdzRDdUV1QyS3lIU25i?=
 =?utf-8?B?WlQxSnJIcHdHR0FvR0NPZ0F3dk5aRmExNVBxMnYwSGsvOWtJYTcwL2F4bHUx?=
 =?utf-8?B?bFA2R1JLLzZ5Wm1QOU5xQ1dVNXhpTHhsS2Q5SnJLWW1VN1FaUTVPK3d3RU0x?=
 =?utf-8?B?cWtSM05FKzhxNmloOGVFOHJBcVNRYUVJVkpuL0hIc3VWMmVzNTZOQmc3NWRs?=
 =?utf-8?B?VmkrMTF5SmVoUUY2am9RajZkaTlta01oT0NKOUx2ZVhZUjBRNzMzNnJxYm1x?=
 =?utf-8?B?S3VBV2Y0OUxrQ3BLSEVka2lHYkF1cEcrcjluaStHN3h5OHBzVmd0dlROek1p?=
 =?utf-8?B?cnNaWHA0N1NjSXFrUnpFdkxVTWFQdzVaMGNiQ3lqQThzN1Z4WXhVQ3pLcURz?=
 =?utf-8?B?djFvbEJTMTVFcDU2WWoxaUE2bUpPdUc0SCtwekNqcGIzMzJwSG93SVQzZms3?=
 =?utf-8?B?cnVmM0Y1WDRqV0Y0eFFhTEFlWmNCR1BMQUtJRU5VOWVIMHBZdGdmNnlVY01j?=
 =?utf-8?B?dy9GVklGNFppczNMOFpCSDBDNThxeFlzdDd4Nk1Iajd5akVOME9mMTJZQnhr?=
 =?utf-8?B?NElkUWFFb3NBNEV5NStySjVaWVZiMmEwVyt4WFozSE1EN29tK0gwUk12NXNL?=
 =?utf-8?B?NUxWdHhhNVNrbGkxQnJxSFczc0c0QTdkTjFLejJZcUZDQnd4NWpIZmkvZWtk?=
 =?utf-8?B?QXpxVFlJODc1enh3M0pBcFFNQnlWVjR6Q3B6WUErcmlJYStZRytrS3RzYTBa?=
 =?utf-8?Q?Z4GOJqQf+NfUKD6cPa908qNZH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65d41f36-0fd9-47dd-747c-08dd94018c77
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2025 22:40:53.1276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e3zUmi0QNLmcndooyMaL7WHmj89/JTfBvyvnwDN0WSsigB3H/68Sx+vM2MSs3cwbteVhtZqBGP35sLac6UEr+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7537
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S08eZyUe+afUo8dLmLzkNb6oY0nFT2u7UabV8TemAR4=;
 b=v4BINEtDbbq7agFJ1BLD11e/BwIVoeIYCvN+naMH27Y5FPHuJlqxw5OjU3DetUxpxRaYkLRIkks1R3pKbpv5Mx5XeYgrKMqO09DSVjIT184A2uOAuqfRL9ZuKofaakjnOhq/FqoG6dGF0xgTIoq/21+KyEk+K9OBzP7EmyNuTQc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=v4BINEtD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/2] i40e: retry VFLR handling if
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

On 5/14/2025 7:57 AM, Robert Malz wrote:
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
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index abd72ab36af7..6b13ac85016f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
>    * @vf: pointer to the VF structure
>    * @flr: VFLR was issued or not
>    *
> - * Returns true if resets are disabled or was performed successfully,
> - * false if reset is already in progress.
> + * Returns true if reset was performed successfully or if resets are
> + * disabled. False if reset is already in progress.

You also changed this wording in patch 1/2.  Let's keep the 
i40e_reset_vf() description changes in the other patch where that 
function is changed.

sln

>    **/
>   bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>   {
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

