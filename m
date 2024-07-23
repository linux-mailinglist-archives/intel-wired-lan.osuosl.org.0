Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE5393A82B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 22:41:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73B7F606AA;
	Tue, 23 Jul 2024 20:41:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RZvhATXuWaNt; Tue, 23 Jul 2024 20:41:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A3D3606BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721767285;
	bh=dTgz6dC29C9AwmC9YQGydbz1V+iYw2yjpP1eluRnygc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iJAZILEg2K54YGCDvgXTovOkocA0nSQl4ICIexFepveejurorcuA4MFNXBB08Rl+u
	 R7CkPR5olcIMIwdJFfKaBqr4GxY1OW82tIzGN0mYAXR/8Gyd+LCgUf4b2P5bCHNaMU
	 L7DfxdmQVk8vKq1QVbwQ4EOvOHcL77+3yW+HekTQCX0R6YVXTVV29BKcJ8SSVyNcMX
	 DRlpx342Xx/51UctzgImUTWbwoZIuB19TkuYApt8bHb0XtXLiDZNx4DwdQzT9GOpF+
	 PC/zvcdpZITD3MN3UeaqAqndr0rnhBqXuLyedTN6nMOYIiNWnARZkgFVS52hH/obhn
	 FFjOkyOypDbGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A3D3606BD;
	Tue, 23 Jul 2024 20:41:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB88D1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 20:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D194E405AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 20:41:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bf-HccSOEh24 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 20:41:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.57;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 85034401E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85034401E8
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2057.outbound.protection.outlook.com [40.107.220.57])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85034401E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 20:41:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f300jE7ZMrz+knLFW6Xp04lKilH6HAmIQG3mQHbFNoQusryYfcg6uGQ5ffy1ICmGFf6GaqJnjqTixFUK77PevpTOwfrpL/CP5yeetAywdHMn7fzFWwcM0bbC3mI6Ow51RFviWV6y5LkQ7A2PvCkpZIZre2m0gHrFLc8r4seEmRAUcQYbbmRAfJJhOCKehZ5NMMjVp4QVzeNZ4o7BPa4H/+Bk0aWmp/PdmudSBaSJR2c6egMcPCByuqjA2XVTL3y90iycE4oDOeeGGisg9raEuRhvHic9kNTkyDjNt4eV2TnEtdE5beG555E+eD7QfFb1NWQuzHViHJvW2CEQ8npfcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTgz6dC29C9AwmC9YQGydbz1V+iYw2yjpP1eluRnygc=;
 b=j6lSITyQC2P66sBA5fXaVHGDbr00pOnDaQcmDoj+6ynSn9gb+PP1H6S1RwrUPBXYAKrGyY6NVq3R0tF0LeRYGMmuldvzLw+SImseFKYRS1YsLE3B3jEMEllH1fcAJB6dG56BNG1ThDgIPeyJgqSJtcUPAPB6szelyy3ieRkqh0MhWxJyckQ40TDO4dStyQrdGEHTxBXbKijWbBdYw4tcnbbBnNVYOzgX1Y+S11dcyK9NF1KvDxeU28I/D2flcxF65CyUT0I0OH1Rg+KisVHvuPQfFQ+fVwKFzxm/87uolHk66svporio25SDEzjUXas12J0sgDsywkq2DjqdLEn4OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by MW4PR12MB7467.namprd12.prod.outlook.com (2603:10b6:303:212::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 20:41:20 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%4]) with mapi id 15.20.7762.027; Tue, 23 Jul 2024
 20:41:20 +0000
Message-ID: <42eee0c9-8cc2-40a1-a233-bb87cc4a8324@amd.com>
Date: Tue, 23 Jul 2024 13:41:17 -0700
User-Agent: Mozilla Thunderbird
To: Kamal Heib <kheib@redhat.com>, intel-wired-lan@lists.osuosl.org
References: <20240718181319.145884-1-kheib@redhat.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240718181319.145884-1-kheib@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0022.namprd21.prod.outlook.com
 (2603:10b6:a03:114::32) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|MW4PR12MB7467:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dd70873-251c-4059-3580-08dcab57ced3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NGVvT1ZvbGd1clhsRnpiQWVUK3BFN1kyMEU5aUlXZnVacWVYUFlBNzJnbW4v?=
 =?utf-8?B?eWJyeXlsNFBmbWE1SVNXankyWWszWkNvNWplSnc2aE1mallaWkFDclNvYUNp?=
 =?utf-8?B?dVRBNWxobDF2ZGRDTGpzYy9mdzJZN3M5Q3VDclBKL3Q5bDhyRzdVQjd4MS9D?=
 =?utf-8?B?WnBNWkJyeCtFTDE0Smp0aTlVS3h6eG44Zlp4RWxCejBJY3EzalFjanpXaDQv?=
 =?utf-8?B?SndaczExLytocTEwMkZHdE1zMENKWGwzRnpXb0N3YTVlWUxBc2tNUTN6MndC?=
 =?utf-8?B?UWVFcWpBRE9yYUpSN0VBL1RTb2tvUjVqdnBCNFo0bm0xREtML2lNalRLQi9O?=
 =?utf-8?B?Q3ZuVEFBUkwvaVZ2bTJEVzNXb2NDQzRIWW5ZT0tHSDc1NU9jeDk4QmRCSTgz?=
 =?utf-8?B?SWVvc01DT1dFeGZQdWVMc215Um9JUWZUVDNsaWtzaW5NSHBtcEl4ODlGanBY?=
 =?utf-8?B?UTRXRXNXZzk4bWtlTmtsM0tiLzZIVkhNZGcveS9MYVQwbGdPczFjSXBSb2hD?=
 =?utf-8?B?UmtBbk4ralk0MElOeEFGZFQ0NExvOC9zSWxCTTlmWkdnejRZcEV5MU1EV1hj?=
 =?utf-8?B?bisvazR0TndjL2hmc2tzV0hQTWVoc1FrbVFwZHdRbXkwcXcrNEJRcFZYSThJ?=
 =?utf-8?B?WkdOMzd6ZERMWFQ2NkFQQ3dkbkpmQnVERG5DaE9ETUhZekNHRFZSZUdaTlFy?=
 =?utf-8?B?U2hlU01GeTNDbDZocS8xajhlWUlVb0pwTUU5VXhkejhjS3BRNXpwWjZJN2dM?=
 =?utf-8?B?b0hvVmFhK3grRWVsb0N3akhCenNKNzZJSnpCc09vb2lQY2NwQ21ONHUvZDVG?=
 =?utf-8?B?c2FNYU9DdFhTdTFsNjlXbjRTejM1ZGhVN3JNbFVVME51L244Y3lsOVkxQnVr?=
 =?utf-8?B?SXllQ3l3cjJmQkEzSW9QUzF0OUNNOUpLTSswaEYrOG4xbURVNkh2UUM2bjIx?=
 =?utf-8?B?YUx0enBHemdMZkcybWRodW1vMzA3a2Q2a054ZGFMTGxRclQ4NVZmQ2o3NUds?=
 =?utf-8?B?Y1FMa2prNVVvL2RoVEhRcHdWbTlCc1FLeTZMcjBkUlZsY1BRaHA3SEcvaTJx?=
 =?utf-8?B?U1ZZUWdYcjdFOUZ2bmpWRnl4djdRblp0N3ZaSkczWG5iaFdEanBLUEQ0aU4w?=
 =?utf-8?B?dlRSVkRhK3dmVG5HMVNPRjU2by8yR29YSEhnclpNdDg2S1RyYmtFY1BMcFQ1?=
 =?utf-8?B?NEFWNjNGQzBXZTRWdFVtVEtCbmQ4bGM0eFBXYk90QnVRdXN3c2I0YkNmOVdP?=
 =?utf-8?B?TFdMQjlUcDc0MlZYRGlPbUMweTZpRmVyejU1dzVJWTg1S3dNRkxsQ1BVWkQy?=
 =?utf-8?B?Sm9JdHpldEtsZkZTbk9lQ25IZ204TnMvSFFTT09QYmF4dlQ5QndQRENWRUhE?=
 =?utf-8?B?L3lsZEtMaXFFYUgrbXVuNndMWlcyU2l0OExBRDl5aXIxRjhSZ3JkbE5teDVO?=
 =?utf-8?B?aFFyRWlZN1BXbUNXWktDWXJnNWpJVGtqV3RJU1V5YnNWa0ViU2dOdmpjTjFI?=
 =?utf-8?B?bWtwazhaUldrclN5cENRZGNxZzExR2xacEZjWmR0dEJWaVZRUlAzNC9kTVhl?=
 =?utf-8?B?bG9GbFNUZUpadEhlSWV5T2VpTTU5eXE1NjJrR1Y5bTRhOUR0WE83dEJldWVM?=
 =?utf-8?B?T1AxV2hWZVdzR1NHSm5HZVhSSHVlaWlOMDR1UWgwMlFOVDB3MkdqS3ZOVGpO?=
 =?utf-8?B?OVl3LzBZMFQ2WUZmQXRNSkh3QjBBYS94KzFyaE1IUmd0bFRVM3ROSllzQk9Y?=
 =?utf-8?B?akluTHhqa1F0UGJVNlY2ZThFNjIydkd2YzRiYnhvYmpJNTJha0JtaVJkZ2Nw?=
 =?utf-8?B?Tjhyelk0RzcxZ3FpVVQxZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zm13dnc0Z3pUTEtQN0pIcVR1UmRvT0JvREVoYUlUUFQxc25yM0lIeFhraGow?=
 =?utf-8?B?RE5rZGtwTk9LaVVuME16cVlMdHJZVXBIa1J0cjRPQ1JnUjMzVG9LYzhkTndw?=
 =?utf-8?B?YmQ4TW5lS3VUcURHa0diZHVJN2xGditTSnJhMnVjQm1LVlB4aVUyYkJ1YmNi?=
 =?utf-8?B?VVNpVVROY2lBSngvemdTR0N4TjdtSEVvSWVXSFdxSzVBdUUzV1VabVkxdXVN?=
 =?utf-8?B?R3g0WFB6QU9hcXNKbEw4UC9BSWIvcXdYRmN4S0ZBTlc4YWFaZTkzbXljcjR1?=
 =?utf-8?B?MzNrU3NjZTRTT0NOWmxzM05uMGY2TG9TOTB5SHRWby9yUVZPcTZBYnFKL25l?=
 =?utf-8?B?RFR5VUhQRkl6OWVMTUJ6WE5oSmRCY0ZpMHpvZDhkUnMyWW1ZVzFPMVkycFJG?=
 =?utf-8?B?bTgrajc4TnF3U0x6VzF4TFlyd3VLRDFlenVKN1BTUTd0clh0cFh4dFFRQStC?=
 =?utf-8?B?dlRsM3BiRDFGZy9kd0xqNDFkMnMrbmdxVmNqNDNMRHRsd3F6V1BYUzluNjlt?=
 =?utf-8?B?UzFPVXdFbFBtMWloUEtKYjQ0UXVaamlBZjI0Y2QvUEFHTHR6cWRGNUViOXlh?=
 =?utf-8?B?V011c3ptMGJ1S2NDK2dMU0JLa3lPa1lsclhna0lnNzI3Q0RGZFU1K21uNnYr?=
 =?utf-8?B?a3dlSlJDVEdxN2pnUlBGYy8zZDZaalN2MGEwd3NDT3ptUFR3OWExRWtETUov?=
 =?utf-8?B?UWxqYVZEQkZ2Wm80NGkxL3h3YUNqbGhlVnc0bHRrYjZIT1VuWmMreTVOWS82?=
 =?utf-8?B?UDdWbjBRMWJ6R1YrOXowUXhjTjhqMThqdTdVcEx3bkovZHhJNjltNnJDazVh?=
 =?utf-8?B?TXZPMHRQYnFyU0NqbmRSY2FRL2dBOXJpMnFUamJBd0NVUjZ4WTdFVFpjb0Fa?=
 =?utf-8?B?MGc5aFhuQjdESXF0a3VIZ1pKamxvVm5kaWQ0dzFkU0NZSHd1Z0orY2s2TG9Y?=
 =?utf-8?B?dEdia3ZNN3M0dlZLTWRmNWgwR0o5bnlRQWowQ3ZtdXJVdmxYamM1SDl4Wjdl?=
 =?utf-8?B?NFJhcnNIWnYyMTE1K2JNUkIvcGRrVTN6M1lRMlNQMXJhZTIvRElsc2ZNcGI5?=
 =?utf-8?B?aHhXQmZ3NEJCaWxxaE5jRFNab0hmRHFmdnM2SzhsMHJmd0J6MHdPY3BiL09x?=
 =?utf-8?B?ZUNoUmNVSGI0U1ZRaW9SRHFLMmFOUUJrelFsUHhhVkdhVnY1dmo3R1lZSTMw?=
 =?utf-8?B?VGs0VFZ2NnViQk9vcGZaMVl3bVF4cnBXUUxFbUw4NGdncHh6OTF1cHRJMkZu?=
 =?utf-8?B?NGV3RlBKa3FHbzk0bFVUZ3NrbEZuK0NaYWxkeGIzQXFiY0llUFJoa1RLRE1i?=
 =?utf-8?B?QVFZMHFLTEtTZGxvVm1hNURaYXptTE00SmZWYWNualNTQk5Nalp3REI5THlY?=
 =?utf-8?B?Q3c5cSszdkpJeWczbENXeGxNT3FuVEtWNk8vYXRxRmZ0RGVpUmhTSEd4eURR?=
 =?utf-8?B?dUExVHYwVnVyNVVuZXVMR1dJd3lPQlVCRnY0blo4WTVqTW85dHhqenlMSk92?=
 =?utf-8?B?b002bEtZZlgwaUU2bmt6aVp1aXRYTi9WM3hQZWtINCtGKzBlenRBOXFUNnl1?=
 =?utf-8?B?NzhEaU15cTZlMEFMZ0RVdXdlL2VKaFBlTmdzOXVGYzJ0WDZPTGI3UCtHcjN3?=
 =?utf-8?B?ZVJ0LzBWQ0k4SkUycDkrcWtCMk1zL3RMUWtaTWM4U2JqNFBOZzZJN0dlYVBV?=
 =?utf-8?B?dm9ibXhOMHZTRTBHNFM4cXRIUmU1enR4cGpOcVozcU5xZ1k5Y2tvU3luaXRi?=
 =?utf-8?B?eDFNQzJDcnJSQVBTWXZUU0xqbGZDM29BOUNGRnVyT21kRjd5N0RwMG9CTmE5?=
 =?utf-8?B?V1dodGQrUWZUcWczREt4L1dIaEYrem9manRVcjJ5RXhQV29jSThYZExwSHQv?=
 =?utf-8?B?Q21Ka3A1SkN0TFlDVWRJMDVWUW9sQnMvUWlNbm56UDdObWM0c0IxRjhnTi9q?=
 =?utf-8?B?VFFTUUNLQTJlUGhobjZINjRxWHRrQ0NLaDN0NGpHTkQ2SHoyR2NnV0xyVnNs?=
 =?utf-8?B?NXlQbHByL2tqYlBDNDdMRUwyR1l6NmNvUUViM3h3Qnc5bEEyZG9oamZIaUhy?=
 =?utf-8?B?cW5MOC9SeXMyVUxyR2x4NXpVVDRZN1lLTS9zQ3VtN3U0M3V5djNHd0QxNkha?=
 =?utf-8?Q?tXPw8JC8M4GsdBx7fJGn7hZEM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dd70873-251c-4059-3580-08dcab57ced3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 20:41:20.1639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Tj26/nJjdc7VUFbmKHKJOhP6cbtgp1bh759OovZbdw7d2nT3enzQuryVRJ517u6Ov3fRuYZb8fDFa0rRUwlRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7467
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dTgz6dC29C9AwmC9YQGydbz1V+iYw2yjpP1eluRnygc=;
 b=mnS7IPnPPUvQbuRICMFRFdGZz9Z/+K3b+3GWH3o7CLXk1lX04ujzPXQSRPHVrcpcr9eScytb/dI/O76P2tZZn8pbyXwhSEuCb9+lxA19ES2wppyfU8XBUeoWr9jD5fEMA4ukIvOGagDhZF9LqIMV7DiGksS8nWvzuhMOBPXV5zc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=mnS7IPnP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Add support for fw
 health report
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/18/2024 11:13 AM, Kamal Heib wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Add support for reporting fw status via the devlink health report.
> 
> Example:
>   # devlink health show pci/0000:02:00.0 reporter fw
>   pci/0000:02:00.0:
>     reporter fw
>       state healthy error 0 recover 0
>   # devlink health diagnose pci/0000:02:00.0 reporter fw
>   Mode: normal
> 
> Signed-off-by: Kamal Heib <kheib@redhat.com>
> ---
> v2:
> - Address comments from Jiri.
> - Move the creation of the health report.
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 57 +++++++++++++++++++
>   .../net/ethernet/intel/i40e/i40e_devlink.h    |  2 +
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 14 +++++
>   4 files changed, 74 insertions(+)
> 

<snip>

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index cbcfada7b357..b6b3ae299b28 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -15370,6 +15370,9 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
>                  dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
>                  dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
>                  set_bit(__I40E_RECOVERY_MODE, pf->state);
> +               if (pf->fw_health_report)
> +                       devlink_health_report(pf->fw_health_report,
> +                                             "recovery mode detected", pf);
> 
>                  return true;
>          }
> @@ -15810,6 +15813,13 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>          if (test_bit(__I40E_RECOVERY_MODE, pf->state))
>                  return i40e_init_recovery_mode(pf, hw);
> 
> +       err = i40e_devlink_create_health_reporter(pf);
> +       if (err) {
> +               dev_err(&pdev->dev,
> +                       "Failed to create health reporter %d\n", err);
> +               goto err_health_reporter;

Do you really want to fail probe if creating this simple health reporter 
fails?

Thanks,

Brett

> +       }
> +
>          err = i40e_init_lan_hmc(hw, hw->func_caps.num_tx_qp,
>                                  hw->func_caps.num_rx_qp, 0, 0);
>          if (err) {
> @@ -16175,6 +16185,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>          (void)i40e_shutdown_lan_hmc(hw);
>   err_init_lan_hmc:
>          kfree(pf->qp_pile);
> +       i40e_devlink_destroy_health_reporter(pf);
> +err_health_reporter:
>   err_sw_init:
>   err_adminq_setup:
>   err_pf_reset:
> @@ -16209,6 +16221,8 @@ static void i40e_remove(struct pci_dev *pdev)
> 
>          i40e_devlink_unregister(pf);
> 
> +       i40e_devlink_destroy_health_reporter(pf);
> +
>          i40e_dbg_pf_exit(pf);
> 
>          i40e_ptp_stop(pf);
> --
> 2.45.2
> 
> 
