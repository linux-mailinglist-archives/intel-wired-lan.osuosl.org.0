Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4E0B25BFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 08:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12A5540905;
	Thu, 14 Aug 2025 06:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZCy7WoWApCpB; Thu, 14 Aug 2025 06:41:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34B664093E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755153683;
	bh=TcgDPT+M2VjOj0K/eNXisChGLpav8zJ2FUXJkzxqoJ8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LueVrfuQihzPvGGAVlOP1L0dx5Vp0NL2X1g65sUc/TkA9w1eAWJFW07M/BCw9TYLx
	 P70UZlvmkP0lQ/gEIAFM/tn7An3tBHOzH6XnEQ2pkN1c1D/YuA2iVYlTR+WtLf6AL5
	 41omoVVxecViMBtw8+E6uqrPtSd7Sx9U6W7qrZnPC2UXwfv99lXzVmuFUH3zOF7TQZ
	 XINZUiVBW03hRAoY2gKLBX1KSUw1TjJzv1zVjdGbmUtwgHVkVODrkiugMUN853XzJO
	 6eYThlRDfRwUIZz28ivULCE795Kc2567Ww/zzzAcSyxC+e5syC6XZqLYEgVFRmNkii
	 x67MqQ8c7se2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34B664093E;
	Thu, 14 Aug 2025 06:41:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FCEE1B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40FA840217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:41:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yOet2vuyv0CG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 06:41:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.75.23;
 helo=os8pr02cu002.outbound.protection.outlook.com;
 envelope-from=rongqianfeng@vivo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C3E2D4005C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3E2D4005C
Received: from OS8PR02CU002.outbound.protection.outlook.com
 (mail-japanwestazon11012023.outbound.protection.outlook.com [40.107.75.23])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3E2D4005C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:41:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KCEJAuLWmDBSywzPjSfQpjs0bX9RN2IH1W0by6OOl+4mAA9EcwjX3K5fZHkAWhkJW+bG5zx5YvDkbxIZXaJQJCcXdZWNcp44HTV3FtvmMl4265jNjPvrLbZCmgiPClc+CX8wexiuOWQupkvdhlTNPmhfCJQYnwmpgyL9pAQBfBR574QLpD7oTK9Y657bmrEqi79o9AqWVjidQh5dqa/JE8hMdKdS+FwT+1lIDJijDLAe4duj+V8nfh+E5vgSnhiJMHBoo6t70zHfRrNYsNPMLSvPpTlzggT9KcE6gorX91VMYGW+B6zk2gvG3+B+kiPYkuteAZpqE3O4hQCiPEUXyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TcgDPT+M2VjOj0K/eNXisChGLpav8zJ2FUXJkzxqoJ8=;
 b=XoqF+1PqdTLV9qSIP5AufNXAEspPo8QGez4iim8Em5SEXdMS5e9/BdiOKCotvuadOrE7RW378UDEAl/3/pEL2yzg5iIhejXtxKDNKO+aMzIw41PDyEOa0NoGIo9yj0xzMOChk82uyY2KOL1FmHxsYUMsEEnGwZ3MNcEHcYgcEGA68Uv8HrESDDu8AqJup90yCwy8F26L/z6aVr1SHCqfKaRrF8hPuHrHmjxcpUYeOhVBnbNdm8lL8eFa1+27TmTHF/JM4wr2+SRk9GPHCILa73PvH2VmsMAzaXZ9OAIcE0W+jR322dI7bMoHLViIJ2g0Qm1J2L3k+CilE5TJdAcpgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 TYZPR06MB7144.apcprd06.prod.outlook.com (2603:1096:405:b3::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.15; Thu, 14 Aug 2025 06:41:16 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666%5]) with mapi id 15.20.9031.014; Thu, 14 Aug 2025
 06:41:14 +0000
Message-ID: <122fce2e-7335-4ace-8627-d363e241e12b@vivo.com>
Date: Thu, 14 Aug 2025 14:41:11 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 bpf@vger.kernel.org
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
 <20250812133226.258318-2-rongqianfeng@vivo.com>
 <af057e48-f428-4c34-8991-99959edbabd2@molgen.mpg.de>
 <abc66ec5-85a4-47e1-9759-2f60ab111971@vivo.com>
 <2ec36cd7-7378-4e44-894a-93008348a96a@molgen.mpg.de>
From: Qianfeng Rong <rongqianfeng@vivo.com>
In-Reply-To: <2ec36cd7-7378-4e44-894a-93008348a96a@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SI2PR01CA0001.apcprd01.prod.exchangelabs.com
 (2603:1096:4:191::13) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|TYZPR06MB7144:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a4f2f3d-48cc-4b71-3951-08dddafd90c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFNJWThRcTVwRW1lRGRrVHBZNXFYVmtZalJuM3VJYis3TTFnbllqdVdud1ow?=
 =?utf-8?B?eldMYy81OFlFbzZDL1V0ajhaZHNEMUtNcEZCUXdEV09CYWdEQUFRWHZyRnFq?=
 =?utf-8?B?UDNpYTZ2TTNqZDdGakU2a1BvYUJMQUNqd094YW1UclFtM0Frc0lnd3NHdVd5?=
 =?utf-8?B?dm8wSklGand6Mm1wYU9qcUJDTWNwSzBaY2lnZFBhTnNRTm1XOC9USktUdlZR?=
 =?utf-8?B?WlN4RzN0Q2tXYU1aRmRtc1VoT0NBMng1RFpYc081cHUzeHA5cStqQXY4dVpm?=
 =?utf-8?B?alNHNURaQnJQdzdFcHlPSnZIZTFUWWU0V2c3OHY3VmViNTh2TjRHVWQxWnhm?=
 =?utf-8?B?S2hldHhZNjNYa05qZEczOHQxUUV2THNEbStqeG9YanF4RlpZd1FFczZYcE9K?=
 =?utf-8?B?VHhQSjhFUGVFa3YyRld5aDQ2ZkNLSjVmK1RLTEFKL0U3SUVTdnNEWkFIeTZR?=
 =?utf-8?B?bDQrc1JQWU5GOStjaVM5dHdWNi82OEFXeEhhcjV5SUJlUnNtVEdWMzZGcDRK?=
 =?utf-8?B?WDJqOHhpNWdrWEpkNTU4SCtPTDJVZ1ZQSFlyZVUyeDU2ZktPby93TVptVmZy?=
 =?utf-8?B?ZjNVQ203V0paSkdkamJCcy9ndEZGYSttK05CR1pvelJtclNBdFJJMnZDN2Zm?=
 =?utf-8?B?NDI5WGNYVzlUajl2TG03ejFvYlhkR1NYYmRmV3F4Wmo5czQrWlRRR3BsV0FD?=
 =?utf-8?B?c0tGeUZJdTk1eDdNVGVVbGR5UHU4T1VrZG1PSm9NcSsvZUMwaWwrUU1IRVVu?=
 =?utf-8?B?aEU2Y0Izb2RKZGFXSGwwOUhqYlRnUEd1RjNKblJNczMwd2VYU3hlUUVjZm9l?=
 =?utf-8?B?RDlUa0dFVStPVXRNTWZ4VWNSWFg5U1BWZ2NiQlNHVHQ1K2g5SmxuNDltRThq?=
 =?utf-8?B?YzZacnUvTGluTEFtVG5QOWdjZjBaQ2Q5NXpyL0o4eHZyZEM3MXYzWHR2cXMw?=
 =?utf-8?B?TCtzSkkwMTlRZEhSRGJNeElNV2xIK3FtRDRHbEZWa3hEclN2VHB0Mm5ialpQ?=
 =?utf-8?B?VXJEaTI1K0Q3VDJpQzJ6blZJT2NwYTZPZnlub3VMNWdTYnNUbExRWVRoNlhE?=
 =?utf-8?B?U2hVK1I0MVBIWlRPTmNmNWFmUE1YVVk4VHphWkFPalJFbkQ4cjFqbEpGaUxv?=
 =?utf-8?B?R09SdkZIQWorMTFhQmVQeGo0TWJLc3h0bmRqRUd3NmF3OGVBQnlUWEZCZzY3?=
 =?utf-8?B?TnZUd0w0S3I1djc3dTdZUHVtdHJwMkE1bmQ1blRZSHp5ZFVyZHpuV3VwTHBO?=
 =?utf-8?B?eDMwQitLZ0hBZmJZaTU3ZGNKUjZ4Q0VDVmpUZ3R5YXVrZktlak5tT1MyVzRJ?=
 =?utf-8?B?NS9waExuRHJWWk8yeVkyRWxReTl0RWRsc2YxNkNUZ1hPSUphNUpEaU4zOHIz?=
 =?utf-8?B?WTloTU1Jayt2ZncxMzUwaXc1TklLeTBjU3REKzN2TWZyRC8yQnlXUmM1MlZ6?=
 =?utf-8?B?a0RiQnhqazNXR0JOL1kzWGpBdFM3N0FoRkQ5M2x5Wk82NjdLQVRNaUZDRzFt?=
 =?utf-8?B?Ny9ocE44OHcreE1rd1lkUHh0NUNSalI3dXdTZ0VBeiswRW00Q1ZsVVpnLzl0?=
 =?utf-8?B?dWJlZ1dFT2xqQWZGRjlaaExWUjJ1RnFpWVpKQ1d2dWtNdTFHZWJBcDBwbFlq?=
 =?utf-8?B?K2RjSG1mdVFPaW40U0d3cCtsWVI0Q3hjY1pDUnNlNHIrVlZCbEkvaC9NU29G?=
 =?utf-8?B?Sng5K2Q1c1R5K3JSVWtqc0ErR3NHTzlVaCtDV0k2T09mUE5oNGw4bVBGMlNW?=
 =?utf-8?B?RVZleHUzMG5weUx0MVFsZmtQQW9mVlI3NDRHNC96N1VsNjRGT2dpN3J2M05I?=
 =?utf-8?B?ZHAwWVFURFJkNkIrUXhWMzRwejA5ZW81RzlPNUVTd0VCUXIxZDB5WTN1elBV?=
 =?utf-8?B?WndQSzEyUVk1ZjA0Mk83SCtxK3MzZ3JuZTlLaFlWTGRLaCtzc1U3bDJpWnJT?=
 =?utf-8?Q?HgUsPR9ZWxo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SI2PR06MB5140.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXlyUzNVS0JTN1Q4dWU4R0NEMzZSR3lGUjRCSTNod2Y3WFY3SzhpTVg1ZWEy?=
 =?utf-8?B?SXRqVEVYb29WcHNaU3ZXeTdtNzRnMEVvV1hvdlBQZ2RYOWRWZmMra2ZENVNT?=
 =?utf-8?B?LzdVclBkZ1ZEUUZBUERpV1BXajBUNEw3MHh2aXEyTDZVYzNoOE5PWnp6cDE3?=
 =?utf-8?B?bVp6eHFYWDlqTk9BSzlNcjdnRW56dGVZbzZaellYYk92dEEydmxCVzdRMlhM?=
 =?utf-8?B?di9GTGNSUXUrVEJpK0lJYzZZS3EvTzFmY3dGR2ppUzhGUkdUa2tBVloyM2c0?=
 =?utf-8?B?Q1g3eDh4Tmw1SnBSZlYrK25NOHI0eGdPcFJ2aFdGVFkwMnUzeENWcVhKeHRt?=
 =?utf-8?B?eTlJYXh5YlhaUXdaZHg0ditIRDd2djBjRUVYWldTN3c5ODFiMUd3OXFhdUVH?=
 =?utf-8?B?anZRbUV0L1RCU1lXSGRWclEwMkxLOXpxY0U5WHVldEtoTUdQNnZqYlc0TjJX?=
 =?utf-8?B?TnE2REg4ajdtZEZMSkIxejg5MzV0R0hqak5weURXSEFXdWh0Y1kwWjd6bVND?=
 =?utf-8?B?MzFsdDNZZkR6VXB4K0g4RHh4amJ5OUV0alg0WkhhUWs5aTRYRHdQaFpDQmw1?=
 =?utf-8?B?dTlVYnRDbkwyRnpyVnd6VVRHUnEvL1g2MzlCbzFrZTd1SEFleHFFZDN1aWda?=
 =?utf-8?B?VFdSTVQ3OU1ZVG1pOTRZL0o0NjBybDExU3RlZzFTYmplakhPekxNVnM5aHBw?=
 =?utf-8?B?c1Z4NkRuSUZsN25hV1M2MEhDR0lRZFppN2ZwbVU3RzR3K1B6N2NycDhteXpG?=
 =?utf-8?B?MHo4RDM4UERyNjhVMnNQcjBDeGNMWjA2VE13NndRWExyOGFJb2hILzI0NTUx?=
 =?utf-8?B?bEYraC94U3dxRFZXUWhrRERteHRqTWhPMStVVUN3SjE5ZThGUmpFcnlOVXVW?=
 =?utf-8?B?dWEzMjByWFpzT3hzZU5nNDJ6MFE2VXE1Q1lUdStSanRMcDVqcXVCYnZwVTNX?=
 =?utf-8?B?aHN2NkpUWjI3bkI1SjVoQTdHUmVma1piSkNOZVNSa1NHV2FVTzMxcjdHVFBt?=
 =?utf-8?B?d3UvekxyQzJNRWQ0UnJtOXpNOHFDWGRVTUtFQk5xTUcvM3FNbzBKUFNidTFB?=
 =?utf-8?B?b08wUHlVYVQ0eEVWY0RDTmlHcjJzQjVXWmdxSDhDTmJ3Ykp1UlpySThydGZH?=
 =?utf-8?B?S1RkQ0JWRmNaVjlZRTFpN0Q3eFZnT2NSVEFBanZlY1ljdFByaWdtZnJLTmZa?=
 =?utf-8?B?TmZ4dDFtV0wvOXJyT3ArQnVhV29OeDNHNmExcGlwR2p2aS83SEdWUzdUTWU3?=
 =?utf-8?B?RkRVNHdUVE5NZUFESUVrcDVTbzBDcjlUQ29ya3p6MFRSRjNsZ1RCWjhFNzQ4?=
 =?utf-8?B?WGtPeUJOd2M2c0pEZkdtdVNCMHhlaVFPaDBBU0lUaHR3aklOWUdvVThvUlM4?=
 =?utf-8?B?MTBwWVNaL0NVdERWSnBNdGFVcFFFWEpRdE9zK0E0U1QrcVljaklwdGJVcWpP?=
 =?utf-8?B?U2pKVCsrTDhESEVHMUZ0NWI2NCtNd0x1dE5tTlhIVUk0UVhZZ25RNGpVSlE4?=
 =?utf-8?B?ajNKMXpuZmxZMUM1RHN3Q0t6YUxQRWN1MGVXSFU5VStzK21OeDk0dldnNXRY?=
 =?utf-8?B?UTl6VThpT0p2dThFbTNLWXRic25HZUY1R0loVkVnN016NDR1N0MxOTBIMDlv?=
 =?utf-8?B?c1JzVk5pUXBWa1RXUE53WHlmTlU3Q3FsYUVYdWJERGw0YnAyS091cjltMDln?=
 =?utf-8?B?K1lVVkZQSmV0eCt6OXpxWlVjS0p0ZkpjYjh3TW9XNS9ZakE1SjhEMXAvK2FJ?=
 =?utf-8?B?UCtwS1ZVOWFCY0hrZGNhVk8yUGtrN0xEOHA4RFBzOVNYQ0xKMS9ldEFSSUoz?=
 =?utf-8?B?UFk0MDBlUHg5Y3hYdllKdVAyWkNlN0UrNWc5SFZLSmFEMTY1TGRFbG55dGc2?=
 =?utf-8?B?MGhQbHlDMGlZK0lONDJ0Z1Z1WW94YzQ4SWl2V01RSzdwOVhtYjRudUI4NmZM?=
 =?utf-8?B?blFmUDFKY1lTanlKSGdNWlpYMXY5aUNYT3NVV3hTRU5seTJ5Sy9DbXpEYWpu?=
 =?utf-8?B?TkY0UzQ5SStuajRMc2hiSzVWZzhUQi9ySWlGQWN3V0tCcUFRcUpqTloyc3Ja?=
 =?utf-8?B?MXBKRHozZVVDeU1iZEFwOHVwU0tRbGx0NUxJV0VNTDk3aVFNd1RsZEhidERP?=
 =?utf-8?Q?d9sP/z0WNtQE0gmEZm4DZOZGU?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a4f2f3d-48cc-4b71-3951-08dddafd90c5
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2025 06:41:14.8258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EJ91jgfKN10mhzBsSSfiakUX8w/flpsJ3PEV5owU3lt/JxmXLRu79Xegr6tyRS730LN70RcFBKp9YZm8Hov/Yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB7144
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcgDPT+M2VjOj0K/eNXisChGLpav8zJ2FUXJkzxqoJ8=;
 b=hOwp3W2pF4kyEHLqV9BAZuIKLT9zcWE1zM10zXQIGZYuMpfjOM7n9GYeKfoAvfOIKv9NNvXcmy8jh2tuMeb8CcLBCrg8SCmVlOwH2+IOIp8E8biLpcpolxxOC7w5y2vnzm5AEzkPGXyLW54fboQ7jScFjkSes1hHneKRTLdYPBFa57oymPLPtCS09lFoW5dzDqVq7xZ3Zj5ZADInQ8NzO+J8xVqxUuQHoHoNl0+pRW4SQA0uPlyP1CgqANcon7h3z4OPYvMaLY8KQ32qXLJS+7KRo239l76WVzir9MR6E/i4+xCX6Kgz0I086DJn8J6o/9iH9vWkkJYZYRCXUBlZow==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=vivo.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=hOwp3W2p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
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


在 2025/8/14 14:28, Paul Menzel 写道:
> [You don't often get email from pmenzel@molgen.mpg.de. Learn why this 
> is important at https://aka.ms/LearnAboutSenderIdentification ]
>
> Dear Quianfeng,
>
>
> Thank you very much for your reply.
>
> Am 14.08.25 um 06:05 schrieb Qianfeng Rong:
>>
>> 在 2025/8/13 0:34, Paul Menzel 写道:
>
> […]
>
>>> Am 12.08.25 um 15:32 schrieb Qianfeng Rong:
>>>> Remove array_size() calls and replace vmalloc() with 
>>>> vmalloc_array() to
>>>> simplify the code and maintain consistency with existing 
>>>> kmalloc_array()
>>>> usage.
>>>
>>> You could build it without and with your patch and look if the 
>>> assembler
>>> code changes.
>>
>> Very good point, the following experiment was done:
>> //before apply patch:
>> objdump -dSl --prefix-addresses fm10k_ethtool.o > original.dis
>>
>> //after apply patch:
>> objdump -dSl --prefix-addresses fm10k_ethtool.o > patched.dis
>>
>> diff -u original.dis patched.dis | diffstat
>> patched.dis | 1578 ... 1 file changed, 785 insertions(+), 793 
>> deletions(-)
>>
>> From the above results, we can see that the assembly instructions are
>> reduced after applying the patch.
>>
>>
>> #define array_size(a, b)    size_mul(a, b)
>>
>> static inline size_t __must_check size_mul(size_t factor1, size_t 
>> factor2)
>> {
>>      size_t bytes;
>>
>>      if (check_mul_overflow(factor1, factor2, &bytes))
>>          return SIZE_MAX;
>>
>>      return bytes;
>> }
>>
>> void *__vmalloc_array_noprof(size_t n, size_t size, gfp_t flags)
>> {
>>      size_t bytes;
>>
>>      if (unlikely(check_mul_overflow(n, size, &bytes)))
>>          return NULL;
>>      return __vmalloc_noprof(bytes, flags);
>> }
>>
>> And from the code, array_size() will return SIZE_MAX after detecting
>> overflow.  SIZE_MAX is passed to vmalloc for available memory
>> verification before exiting and returning NULL. vmalloc_array()
>> will directly return NULL after detecting overflow.
>
> Awesome! Thank you for digging that up. Maybe something to add to the
> commit message. Maybe something like:
>
> `vmalloc_array()` is also optimized better, resulting in less
> instructions being used, which can be verified with:
>
> objdump -dSl --prefix-addresses <changed module>.o


Ok，I'll release v2 later.

>
>>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
