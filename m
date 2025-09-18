Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0EAB85803
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 17:16:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88D82805A4;
	Thu, 18 Sep 2025 15:16:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZVqzg2iiwcHN; Thu, 18 Sep 2025 15:16:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F782805A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758208589;
	bh=BQOVeUdoEclCh0ZxLx/Wkx6/c6EYSRZDKoJKgGkLukQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pO0jhzQXKvnWR1v6uK3OmdMm4UhS73r1ubTOsXEKDXBqrCiYOErbHA0N6isDVa9JJ
	 KUnx/iDEh+7Q2zGccl/DwLfb3XveLnfuNBRltjRcCLbHgAxcoJz9bWnvwFCqaJIBjS
	 8Uom4zkKd+zlt2xcFJKoEMqDd1heyyK8NaBYyeFM0Y+0GW2C/H1cDYuR4dj0WNVDwE
	 V+GplsEYIUvu8GOmNUNMHfeIrwaerw3cQJu0yHPdGk9OBwxJJZJMgn9k6KKU3YCgzt
	 Ol4M70iykTNd7ihnKLFXEm7e7++eHHeuB9GwcpHQwOowqpX8CfPpFkx5hjuQJdrMEe
	 kkydS0nDZgQpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F782805A0;
	Thu, 18 Sep 2025 15:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FD96279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 15:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85C4A8059E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 15:16:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QGvAnrkm3pSt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 15:16:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.209.49;
 helo=ph8pr06cu001.outbound.protection.outlook.com;
 envelope-from=cjubran@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9598A8059D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9598A8059D
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012049.outbound.protection.outlook.com [40.107.209.49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9598A8059D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 15:16:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XCAdyy8yIpq8+KZJtrgud7yyx1nr4iflLpdABaoKz65lZMjpbgWkVg3TY/awrxTnafDJD0V7y07A9xTIoAGz31pXbL/03P1N+lfUPfsf6nSc7Aa3bc44ykcqlSWFRboIiQ9AHZBwybbCo8y+LQaMmeiHSlGLjapAKiDpymYTSwSStriOZdjFG0Cjq8RvCp5mDNdlo/x/+5dIlJAYuhD78CNTVhzMwu/cKP3VCnq9uWZlTEkXin8/tYHVgr0dDfcr1HI5rzPyCnrznRMaW1r7uVN6kgpRBOKGUSUXcOFVwx0qvDLdIpbULrv9lQwgM503qWJngsw5mDiKKqIZ42dWPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BQOVeUdoEclCh0ZxLx/Wkx6/c6EYSRZDKoJKgGkLukQ=;
 b=C0SjmZ3QnHM5hFj1JVYD6uYhSrQ1uiMj9U/cJ0qVf0Dm3E/CxsPbaMkGph1mwDBYBf+jqwZ138ZZkvXavkSFbQ+nbULMkyQilodqWx2vl11NNm8KAliQkx1rE2SXJxwOhSeB/td9D0qRCSMLtECrW9jcdzfGADaLpB0tcD9ZA3/KvLguNzlkN7vHALz546UVWdPL05YP+Wvj/9tzd5hRPsbuFFZHpj3Lc/lksZ9D5/oH7sZ/d2uinYCcSGJNbpzjC5QdmwxPPLLhUAmz+c1pt8aGZIW1x81BRmrUsiCyKj980txTxrSEjxYD/Z+Qb/csAJPTmpAZo/2Iex98JXU+HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MW4PR12MB7141.namprd12.prod.outlook.com (2603:10b6:303:213::20)
 by MN0PR12MB6032.namprd12.prod.outlook.com (2603:10b6:208:3cc::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Thu, 18 Sep
 2025 15:16:22 +0000
Received: from MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2]) by MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2%5]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 15:16:22 +0000
Message-ID: <76611a9c-4c53-40a2-96c1-e1cf5b211611@nvidia.com>
Date: Thu, 18 Sep 2025 18:16:14 +0300
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
 <20250917174638.238fa5fc@kernel.org>
 <4d3a0a08-bda4-483f-a120-b1f905ec0761@nvidia.com>
 <20250918073551.782c5c25@kernel.org>
Content-Language: en-US
From: Carolina Jubran <cjubran@nvidia.com>
In-Reply-To: <20250918073551.782c5c25@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::16) To MW4PR12MB7141.namprd12.prod.outlook.com
 (2603:10b6:303:213::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR12MB7141:EE_|MN0PR12MB6032:EE_
X-MS-Office365-Filtering-Correlation-Id: f612c059-fc67-4e7b-d82f-08ddf6c6533a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c2JSalB2bVVrczFZdzhTcVR2Z1hWOVhxS3o0bHNaUjBGZEE4WlBKS3MzdmJY?=
 =?utf-8?B?RW93SXZ5NzVtQTdFdEVOVnV0RVh5eFN5RTRQSzVlMXJpK2Z0THpWUFQ4cmxT?=
 =?utf-8?B?aU5DSWZnYjRVS0VOSXNDSW9PSW9TQ0tmaGU2VmdkRlVDTnpuWExYY3EwYkVZ?=
 =?utf-8?B?YXZQN0U0TC9aUmNaTjFUVFNOQ2U2OGVHT012WlNBRFZ5REFvRmhQSzJvazJr?=
 =?utf-8?B?cUdZTEdqTW9Gcm9hRENWcFNudmtzQ3k4Zm5VTW0wTFlvZi9aNlhTeW5NZ1dU?=
 =?utf-8?B?QlVhekNxWDkzUXJtVng3bjUrdE9JdjZtclRZeFdlNldPSm9iSURGdDIvQVA4?=
 =?utf-8?B?RTQ0aVc1bTM2Mm5MS25VQkVSUUhmTTBMNWVKQVYyREtuRGVhT0VRSWRoeUVE?=
 =?utf-8?B?ZENlKzBmbm5NNnp2UjFTVEgzemRXMUdKMmNyemp5TDVLVDc5V212RDd5c3VB?=
 =?utf-8?B?em15Vis0UUp2ZFJseEFMTTVoTEtsNnN5cHhIZUZSQXZyTVgrai9NbjkzV3lG?=
 =?utf-8?B?L1RGbjI5VkkwdkI3QksxeUhWSnlnbUFibCtENWhUcUV3a2sxTDJOdjJCeVBU?=
 =?utf-8?B?eXVsWGgwdDdRRUdvU1d1UmRZcnY1aUt2YkRkTGlhY0xaYTJEZWp4VjdwV2hM?=
 =?utf-8?B?MHJ5aDJVbnpLMWo3T3g4bVV3aENBZDRaSGhvUmtXVmQ0RVJFVVlYTzNJQ2RB?=
 =?utf-8?B?cjc5VWRYenFGdEhrNTNodElRNHlRTVh0YVhjYm1IRG9Xbkd3S0NqaDIxbjdH?=
 =?utf-8?B?MHVhYjdOS2l1YXVTNmgwY3NUcVp0NjR1QVBjVlJiTFRPYjhMaW8vQW14Misr?=
 =?utf-8?B?OXYxbXR2c1JvY01uQTVEN1dndzRLaitGa3Zia3NjSmVaWlpVZ3F0cXBWT3hs?=
 =?utf-8?B?a3ovZEwwbURKcXVEYUN5bk5jcTRmZ1AxdFpmL3pKdlRQcVdpRGNpMU5xNWtU?=
 =?utf-8?B?VHZhNm9iWFFlWGJkTVFPTzI5U0lFWGdCRGwwVmRIM2QzWTlTQmFqb1JURHJO?=
 =?utf-8?B?SGZsYjM1aEhvNjVQK0dlS3kyczNKR2dkSmdUeGx2M1dUNnFIZVhwQmdtcUV4?=
 =?utf-8?B?dUJyVmxvYkhqMDlWc3gxVmxiMVJUMUhFaU5OOGVWN3RGUDYwNGhmLysrM1dl?=
 =?utf-8?B?SWx6S3h0MXZwR0YwQzdmclhIZ1J4OVcwR29jRWNqUDRMUitBODFWM2I3R2sz?=
 =?utf-8?B?Z0VvWm9FZEZrL29QVmUySWp4ZE9mS2g2NXNETnM1MzVPUWdHK2trS21nSE9O?=
 =?utf-8?B?VjlvTVhneVVQbFJGZnluMjNpbWI1OG55RUphUEpoSFFGdFV3WDBCaUtkSW9D?=
 =?utf-8?B?bEI5SEpVSnhSbTdYMWd1RkRYQ09GMStVbXRHVFd6c24wRlA3cXdRT2owOWJD?=
 =?utf-8?B?elFNVXM5Ui9PNUw5MFdyZGNENnVBNVJkcGdUenFTWkhqSlVzNlQ2U3JkcEdK?=
 =?utf-8?B?dHVldlJtTWVMdTZ4b1JmUTg5YlBUTmdzOVp2SEU2Q21qZEJldDZmdVBJZUlS?=
 =?utf-8?B?Tm5mVmxPSXpaZFFCdzJXUXlpckc0RVlzNXpFZVRudDZCRTI0eE12UmMrQjlp?=
 =?utf-8?B?eDRBSUoxVTgvdXJyRW1BeGJnNmtSS0pkeXBBWWNRYXRLREgxUStTTjVYcHUw?=
 =?utf-8?B?UE1Tc0sxTXptYkFPWXM0VnZUcGY2VkNnNnUrV1B4UUk2RE4xcjg2V2NmMUlh?=
 =?utf-8?B?a2NVWXp6Rmh2RGZDSlgrSDRsNnF1eDQ4TllDZGhndkFwejhXMlJTVVg4K1Zp?=
 =?utf-8?B?VC9pZUZrYktBbjl0dnFaekk1c3VOWVpQd0VjMVVFcGNWR2ZlQVBlY1JMemRC?=
 =?utf-8?B?SnpCemtiN1NnVExCK2h0VTE5SU1FVnhrK0taWHMxS3Yybnduenh2SlgzSUJW?=
 =?utf-8?B?VmduRStmaHNqUG10bWJFdWVpQWtSdU9ncHZKd1pEOUorSWFDTGI0VVFMN0M3?=
 =?utf-8?Q?/2FKdInjZLU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR12MB7141.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjdyNnNtS2ZjY0JjMkhFU2JhVVdqL2hnejRNcnlkRXRVaGlwVVhCYTdDNUtu?=
 =?utf-8?B?dUpEdG1XWlgzZDA2NUx3Rll6TDBFWXVjNVlvYjRLNm8rRnRxcHpBYW9WM2Z5?=
 =?utf-8?B?LzF6ZUlOaVJXb1YyUEsyTDVyc09weU1xL2dvOGlOQ1MwM0VSWGt6ZFB3WmtX?=
 =?utf-8?B?Y01nUTZQSTNobGFVNlMwZ0g1YW42dU9wcENXTXQvTUcrSXNvSHovZ0hwK0Vy?=
 =?utf-8?B?ZzhGTTM0aC80T2hTVmVGVk5WVDJKUlpjaVlnSFhORWVXOHpGa0pFTHAzZUNR?=
 =?utf-8?B?cFNybkhLZFg0SXRmOXR4bVRaNzdwWWVMclcvQnFvUVJ1RjVmVnBlN3FZL05E?=
 =?utf-8?B?bDlRRGNHSmZpLzBzZWZ2UDR6ZG9pc2lPU3VJcENIMWtPaGxyeE9rTGdRRlVM?=
 =?utf-8?B?cWYwZzloc04wRStvYXBUMlduTXh1OXhlb3JGNTM5ZGxiTkg0ZFZPODc3Z2ho?=
 =?utf-8?B?ald3ODRMYUZqalpYOUZqSWRCWm1OMUxyOTRGOXpxK24xemdCaWJXeXppWjdL?=
 =?utf-8?B?dHVhME1VNnZzRXQ2MnUwYWk2RW5nV2tTekpmTmoxVmdzQkt3Vm55NjV6dmtY?=
 =?utf-8?B?d2xUVnRnTnNTYkVnRXE4bXFrcXdsRVhJc0IrUktnQUhIa3BZRGliNjZxN1Zy?=
 =?utf-8?B?VTZvbVBpeWx4SFlsTHJmc1NZbzNQL3EzS0M4QlM1aTZZbXBYSjRHNEovaHZG?=
 =?utf-8?B?MlNrK0pFUHUyWFB6SUd3WWxtR25MbHJBcGtvNzJwanIrL2VqUXJZcnNmTGpy?=
 =?utf-8?B?QUZFZ2dNSi9CcXJiREl5KzJjdnVuSnlVZGt1U3o1ZmpFYVRyVFhkRzFZNURI?=
 =?utf-8?B?M1hEOGZYcFVYemhGbjBYMS9IeVlVS283aFlDM0ZvZXV0M2oxRCtMR2pnL08r?=
 =?utf-8?B?d0RtNGlWQUpRVGhXSlBzS1NjNzhTa2xBcmIxTTErZnJ0ZktCVlpiYnE2d2xE?=
 =?utf-8?B?emhQS0tBNTljS2dRQ21KU2lxcVFaTU1TYVl6QnhwTlpCN1I0eHQ1VzJzdFVN?=
 =?utf-8?B?amI5Wlozd0RzN2d3M2c4TzZlNWtKdng3S2I2TjhiNGU5TXBDQUhTdmM0WklD?=
 =?utf-8?B?VG96amtYRHVnalc2ajUvWTh1VUpxZlRXMHZqQzRydG5DdHJZbGg4Nm41bDdR?=
 =?utf-8?B?ZWtER1RrNGdFeHJvc3RyeWQwQklwMlJJSmdwNlZHRU83ZmpJa1crd2QxQmZE?=
 =?utf-8?B?NFFPZFQ4VmZFQTFJL0pQSHNWa1J0blNqNWtFWjg0VFNHVGQ5aGhmUHlYNGFT?=
 =?utf-8?B?MHJrN1dwTGtsd29GckhjYzVuS3pwNnlzeElIbCtJekg3V3pqVDNkZytHazl1?=
 =?utf-8?B?UFVKL05JYkNmbjFFcG0yeGc0bEZiNG40Yk94emdLUGVpSXJjVFNHZFJoY1lM?=
 =?utf-8?B?cW9yZ3RQZ3cvVndSOTN1VEdwbk9VdUREdmlqaFJTZitsbnlYQVkzOGsvR3lq?=
 =?utf-8?B?bC9BSUJrTko5UDNSZlBSMm5RL0JPL2RwenZwQXYxUjdQYUJlRU5iVlNSUDcw?=
 =?utf-8?B?Y2QwME5Jc2JnQnp0cFNhTkZEcGFia1V0WHd6NVI0NzdDaUZMOEN6UVlaSkMz?=
 =?utf-8?B?alZGNEdyNzNNNVdORnpaajR4R1prYlBxZVk3SVBLUzhHYzRiQysxMVc0UTYw?=
 =?utf-8?B?RUFmWmU3TWtKSzc2OWJnKzdWUjZBZDZxaGZYbVIwL1lKMHVteUY3THU5ZU1Q?=
 =?utf-8?B?RFNKMzhhVFl4eFlYZUVJVDdqdmltZGNqM0NpVUVBZkpZSlBKdzB1U2J1RnNS?=
 =?utf-8?B?K2I4bUhzd0ZsMW5uZzJzRHlVdnY5Wm9RNDR0NDJxVnQya25MMFFZZjhRTjZY?=
 =?utf-8?B?enNnclFNN3FydlRZdmxURUFXSDl5aDNaajNSekFOTktLSUxySFpOUndFTmN5?=
 =?utf-8?B?L2NlTmFMa25aS0NQTjQrakFGSUoyNzJXR0hqSmVmRnZGUXZUUExvbTVyQjFD?=
 =?utf-8?B?RHA2blBVTG9wOEE4WVhSbXkxNzBhU1l4aCszM2tGMEt3TXFGMlNWbTZzN3NJ?=
 =?utf-8?B?YVlpWnhCKzNTR0F0VWErSmZvVHN1NTZYL3pnblRnMkwvekdPbjBoYi92Tzdt?=
 =?utf-8?B?bWxKY01XZlB0T1pid0p2OC93Sm1PWlBPTzV6ZHA3enMxcTNaTEY3SC8wQTFl?=
 =?utf-8?Q?Qj9KaFc3LQnbrnLF0N+SIgnZH?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f612c059-fc67-4e7b-d82f-08ddf6c6533a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR12MB7141.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 15:16:22.0341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QTj9F/XwGsKmbo1uTMWCWc7hENDG5GJ9JBkVNP/OL7C4KQ2/ov5zK/wV8+eXvdyB0iYpUNbI3wgCKvPmWIFvbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6032
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQOVeUdoEclCh0ZxLx/Wkx6/c6EYSRZDKoJKgGkLukQ=;
 b=AXeNGYTPL4mbw6BUo2SQLGLXxXhd/N+31Qn3I068kJooIg99DuXNnUWaEO2LztcO201WorhFOW2O26KLfeL/JbIVNLRYVBvjA6LcFFcNlQNBZD6u7UtZuJ0Ax5qVYkuCJY/Gz8SCtC1CWRj1bzYeLPKAiLDZdYHdydFudRtxI6X8nBKqOmav/LP8blmNesZY7yut/M4aavJ3u8FGdCL5lCzF2du+DTtxV5K6I5spavMc+6VAta2VnUarvwLWF4epFB2accK3E3HSCriItBRCbxGZbQpHn19MxaVZ+pB5GjtfYhMsHEjSoxqQQCZPjLu5cNLQzudT52BLfGQIBYtaGg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=AXeNGYTP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
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


On 18/09/2025 17:35, Jakub Kicinski wrote:
> On Thu, 18 Sep 2025 17:25:40 +0300 Carolina Jubran wrote:
>>> why does MLX5E_FEC_RS_HIST_MAX exist?
>>> We care that bins_cnt <= ETHTOOL_FEC_HIST_MAX - 1
>>> or is there something in the interface that hardcodes 16?
>> My intention was to keep mlx5 capped at 16 even if ethtool raises its max.
>> We’ll only increase this once we know the device should expose more than 16.
>> Since our HW has internal modes that can report more than 16 bins, this
>> ensures we don’t accidentally expose them if ethtool increases its max.
> But why?

Because currently those modes shouldn't be exposed for ethernet.

