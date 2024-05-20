Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBC38CA070
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2024 18:05:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77759402C8;
	Mon, 20 May 2024 16:05:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m_p8waP3q22d; Mon, 20 May 2024 16:05:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BB2F4034C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716221101;
	bh=528lw7Mtj87DFDWnK+nHI/KiSJx11q2CrzfFRBeFGh4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Li/bbA0Cqi34TzI7Soiw7mB5rsmkqta3Nwi8xf9yMnGylAsq304z36U5V7H44AqeS
	 pmXMZmHgQ4YDuIRE5yeo9D2jcnVus5rU7VnapdJd742StzuWyctUVgZK6Ijv5y6Mp6
	 kXIms6dnaI1M3aPItyEgMcRrbQAelFia39XC2Pto0Y9exMSastYEVmSNwcJtNgzt9j
	 IJZFTfbONDlAOIpqro6Zhpbat/f8H5+ONFd5HDUM5Lh/c9Xce8298ZlwJSLufxrP/8
	 LRReCXHMgZT27qAntr8BDRZWWmB7jh7Td8wGNpyAY15ts3bBSfk4u+2FRUk7huMb9f
	 3eFCOGlQSYjyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BB2F4034C;
	Mon, 20 May 2024 16:05:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE7431BF296
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 16:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8A16402A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 16:04:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LFW_ztP4fhs1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2024 16:04:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.43;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E77240284
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E77240284
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2043.outbound.protection.outlook.com [40.107.243.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E77240284
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 16:04:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oI3QN4BL93YYVGPRcKCHe/H1pm4Y5Pzzrw+cm7TysZmbPdovkTVYVeIQFXEm5mgEHsIfCsJoi3/iYY92wSFcqHOHk4EuLpoh+hfktdx0A/U8Ed8v0+GtC5AK3Pqk52Zv23Y+6zTKZWG24ZUnLMd1caYYQVKp6ep/HNOTTrr3UIg0TdlTl6divUlGWmCJpFsqYG0s2bokjLqKxhLl+ZuXbJXIf6nXFYhIaWCXu9xhs/BilcD5Sw/U6jhqv+fTIejqoXY1rHiPGTMthV+pKVLMAt2DwHzweYjtkcXPIV+4BdwP/64m97/H87MD2DEHjGyWXy1Bm42Ef3wbD5GcY+IMfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=528lw7Mtj87DFDWnK+nHI/KiSJx11q2CrzfFRBeFGh4=;
 b=S2k3IHYmHMsb4L/kGPvCpZ37u1Sv4IRLs2UCkgbLMtReW9lkYauMtgeQnA3EPL/GbbjhXjulheVyFk1ZBe9kNmA1ljsVP3rzwlTSUcikaL8r5ygxjb/jbBk0NDMAODV8IRr4h6bktYzIAoITjxH881Tox1AN2LYqSiVo9dO0KOH+hD9OtlCPmZ/08aYuJ1UFsCJBRgHhpHo2xR8ytjAZ3wkmmw8/McR/9HyVyqvqENIBI6xj+UrUmQe6H2j53qReLstRq9TSWYZtTepeRKfOmOgmfn+d/JkBofU/ftQenZp+oOVtpjwdWUDmFZ2BLTaaVI1Buql8tT0CioywA7ytyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by SN7PR12MB7811.namprd12.prod.outlook.com (2603:10b6:806:34f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Mon, 20 May
 2024 16:04:53 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 16:04:53 +0000
Message-ID: <5f7caa24-5bec-4989-8870-052caba4f0bb@amd.com>
Date: Mon, 20 May 2024 09:04:51 -0700
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org
References: <20240520103700.81122-1-wojciech.drewek@intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240520103700.81122-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0066.namprd05.prod.outlook.com
 (2603:10b6:a03:74::43) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|SN7PR12MB7811:EE_
X-MS-Office365-Filtering-Correlation-Id: 706cd2b3-16f2-4a0d-9776-08dc78e695dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjlYc3c3NGNyT1FOQ1dXQW4rVXR3SUVPNlhNeTBCbkltRFlYOE14MVMrMW8x?=
 =?utf-8?B?SUxNWlBRMWpNUWlxNHZYc3VKWmdKKzZnRnZWVU9teFR4N1ZSR21sNmVlTmln?=
 =?utf-8?B?bFhxWFdkcW44dlJWajFwQjk3d2phWFA3QXEvNjFZTk05YzlocnpzWXBqbDdx?=
 =?utf-8?B?TlhMV3l5S3ROOVJmeGNUeTFyMmJvN1U0bUJwQmZYdjNtMFJvYVhNem1EN0Fv?=
 =?utf-8?B?M3p0V1FqL1l2TjhQcHpYY3Ayd2puRlF6cmFNRVJzTUFScXBHRngwTDAzR1Ra?=
 =?utf-8?B?dmxEN092bUxuWXBycUx1T2JlZmdaWWhzdkRlTnVlcmYrSmg0YnpWSHNJaTA0?=
 =?utf-8?B?MW9aRGpZSngwMVFPMUxVMk1vOXVDT1RIbkNzVnF3LzV6dUlrdXh6d0xnTVg3?=
 =?utf-8?B?a0M2REtuVWR3aG9Ca2ZRWFR0clAzc1ByNUV4L28zLzRRL1M1WURWT2lKaC91?=
 =?utf-8?B?K0JzTUplemZoaEplSFRlemtKQy84UHR1Z08yM09MK09sQUV5OXdFb3Bub05S?=
 =?utf-8?B?Y2Evb0w3QUpUUmhMTFdPdmo0Rk1KM3VuMERncDBGQ3UzWWloMDMzdGl3OXFG?=
 =?utf-8?B?cXhwVElVSk43RzFrZEVZSU0wdUhSWGljNWhTVnhhbzhLb0FLMDMza3haQWQ4?=
 =?utf-8?B?L09PaE5qWGVjbkJVKzhTa1lKaW1Eb2tDVFFWMlZDdzYxandnZUNwV3dBK1I4?=
 =?utf-8?B?YTRwSzJZNllMUWhuWE5JaTBwZS82dkd5VUJtY3VpTFFrSFhQMm9nKzM4ckRs?=
 =?utf-8?B?N2ozeTRvUFBkSElHekVnY0UzemtWc3lvT3JtMllialhDQzdUM2M0ck94VkRi?=
 =?utf-8?B?Z0l2eTZySUNLRExEZTdGT0djN2h5bjlqelc2Wkx5RXBrN01CdVB4dHR2UzV1?=
 =?utf-8?B?MkFuRFRqTGFCQkZZNVRDQ09QeFc2TkthNlR4R3E0ckV4ZEdiMS9iQjZMd3lQ?=
 =?utf-8?B?c202eUpSdlBrQ0J6RzJjRWNZbE52dXJzV1ZCaHJGcnZjMS9OTVp0MFpwNjdk?=
 =?utf-8?B?aVRKM3p1RUJKdmd5bEJ3Zk9kaDN3UVZ0MDFibUUyNG4zTFM3SDFQOEtGak5X?=
 =?utf-8?B?ZUt1aDI3OTNrSXhENklCVVdTSUtmdHZKOXNHcnprUFVibmx5MUlJRkRzRDV3?=
 =?utf-8?B?TFFSRVNyUUltRkdxby9oTkdKZCtwZkNxNXdBeTcwWmEvY2RBdVRhcWJlS29N?=
 =?utf-8?B?NXhqQ3lZSkhlSnBPYzZiRW1zL090VEpqTGdEamdrQ1NqQnRpamFuUkxsbTVw?=
 =?utf-8?B?dTVnZmJVb3lDeWE0K0lTQmliVjYvbDdKSEkxZXcyV1ZRQTdoejUyVUh0R25U?=
 =?utf-8?B?elg5L0FCa2xRWVFFMGJLMm5FVFhMUlRBbEVmSHUwZ3QxaTl0QnUwRUwrMzdI?=
 =?utf-8?B?WUhRMUIzblJFdmx6RTNqTFNsTXkxeTB1R3RjY1hhbFVBTjhYaDF2bFJvTWI0?=
 =?utf-8?B?Z0t6V05nUi8xVUIwZlVocll2NC9xaFZCSDFwNFdVN2wwNUFraHBmM2x5dFp6?=
 =?utf-8?B?SC9YRzAxelF1TVJpNlh6V0lEZDR6OHl2VWZqR0VIQWNlaVgrdnNac2dPY0hr?=
 =?utf-8?B?TWtzOEZiZ2ZxK2p3U0RWZ2VpOFk0Ny9oS3I2Ry9jVUh0V1VDa0Q2aFk4cjdF?=
 =?utf-8?B?TE5PYlhzQkswWjdqeFRmMGRWWC90ZlBBdEU5TzdyR0l1aVlBUm5sd2xtYzZJ?=
 =?utf-8?B?Y2MzWUxFeDJOQVVQVERPa0NyOWRHVFRaTytyUXROaUJBUTdhYXg4cDN3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFVkMHM1Qi9HY2phbmgzLzlsTzM0WWhKR09LalNWUHJtUGhwTjFQV25qQVpm?=
 =?utf-8?B?bTNTOXhoN0ZZQ0E3MCt6dVZOSWtqSUJuWFpkK3NVWmluaUozT2VqU0JlZjJr?=
 =?utf-8?B?QWdCbDRBT1EwbXFIcXZ1Z09SKzZTOXNwc2FyR2lOWVFwbzNFY2RXeDZKbjZv?=
 =?utf-8?B?R0twTW1jYzc1T2YzNkprekZuZVFIa3FwSmYzNjhYSXNsZkFxNk8xRnluU09j?=
 =?utf-8?B?OGNLWjhLK1Z5QUNhbVRoSFp1cWdDM1psYVdJdUtha2pQZll4eHU0SjFaTlJW?=
 =?utf-8?B?QXlCT1JHTldNcFNwME51K1ZwWHdIemJQc1VXVWxOUE5sU3Joa0Nza25BZk9Y?=
 =?utf-8?B?dmFtb3lCeDZIMENzaEZsM3RUUm5KTWQzUXFuUFNURkcwYnE4aStLN25laWRt?=
 =?utf-8?B?T2RIR0t4SFVrNHZiTXJzb0VBR2V0N0ZEeHRVbDVCSzcrblVSWnI1RmVBYTgv?=
 =?utf-8?B?ZFluOGdyb2dWZjBPTWNHaVFIUU5SM0VENGFyVGx2bVpZd09Objg1azNHbFlE?=
 =?utf-8?B?VDNTL0ErOWpVZEZVdU1XeTlWTXdhRkFBSVlqNXlMaTQvTVNUckMyMmZoaXdP?=
 =?utf-8?B?Wkc5TXk4a1ovSHFkU0FwMk11YTY4T0E4dC9BN1YxU3pBdFQrYS9LcUZ6WUp4?=
 =?utf-8?B?VnZwa0p0dmhZUkIrYTR2MzkxZ3EraHBseGFqcmkvZEZZRlJodUFPWTIrbTBH?=
 =?utf-8?B?b3kwU0NHQmp0YklUM1RFS0ZLL2ordkMzUXRIelh2dW5XMmFBTjhManhSeGNi?=
 =?utf-8?B?SnRCV1JwMFNHODNwSzNWZllFaElZZnJQTmhIWXBWL0FMSHRIcUc1QmhLY1la?=
 =?utf-8?B?eHhQWVZoMERPalcwSUp2NmlwRDA1c3ZXRDVMZmhvRDNjRHQzSXZEbEEyWkZW?=
 =?utf-8?B?cStXZWFzcnk4elc5NUZWb0psVjZ0b1JOZ2xnS2VUQVhvMVRNdGhzUzVrZnZz?=
 =?utf-8?B?ZlRYNDIwZkExdGNKTVZ3bG91dUo5TTZzdlVBQkNRQU1vMUFLS2J6ZS8rUFRW?=
 =?utf-8?B?TXpoQnFWdG9KaTJaZlZoMEYrMEt6RWNSMXcwdG50SVd6aE9ma0UwMU8wS3VM?=
 =?utf-8?B?VTVtclpDZnFUaEI1UW5oeWFZS2hFZ2RoQjc3c2dSTXczYkRWWENCQnI2OWpy?=
 =?utf-8?B?dFR1QncvVC9YS2U0SzFGa2Y3SFFqMXUySmp2Y3hTSDVWN2RIakUyVnZwd2ZB?=
 =?utf-8?B?b2ZKSnRMS2JJSjk1WFp1aWF6d3ZpUWdESm1ONFcxdWtrbi9nbnRiZVJhMDJr?=
 =?utf-8?B?bnFYckxuTERYaTdSSnRvK1VBeG9WU1ZWc2MvN0o4Vlh4M0Q1R1ZTZlhYYkpJ?=
 =?utf-8?B?TVd0dzNnandDMEdQaXhsSi9DUlFyTWJnYllJZzdPelkvYTBBT2VtQUdVWnZ5?=
 =?utf-8?B?QW5hMXd1YnI2WFRXUkZ2eEsvcXVCazduNE5KQk5FeGkyYXUrOUwxaE0yUGIz?=
 =?utf-8?B?dHJXejBsNERxaThuU2FWZGUrVXA3dEIvZGZVMVk1eWY5Vy9aVVN3T1ptdnJh?=
 =?utf-8?B?WjlRSkd0c0lIam0reXBiMHJMWk0wbEg0WEtZNWE4RjlMOGVxUjFER2pkdHI3?=
 =?utf-8?B?cFlqQ1RmVHBZWVJFZkJtc0tuYTM0ZTRjMnl4R2lRSWlzRHVMR0VqZVFpdWh6?=
 =?utf-8?B?UDdRcWtNNUdJc2lNV051bUV1SFlYVkVFTEdZRVVqTWUxSlE5UVIrYlliMEF1?=
 =?utf-8?B?Nkdva1N6YVJBc05SeWlzOG42Wmp0eEpUbUFkb0tndzVWTU10b3RqbExVcjhk?=
 =?utf-8?B?aXVLanMwREc5NVJXWmNPcjB3dGtQQm16WjhWeDliUlF5OGpyWkFkVy8zaHA0?=
 =?utf-8?B?cWdiL20xend4MENhQ2JGU3AwTUZlWHNtbThDRlozTWVrU0VxTDZ3MjJPMmtC?=
 =?utf-8?B?ck1jMXZCYnZYeTZoZFkzcUFMMzlrWTFXTTBQQzFKcDlPUVlaUnl4QXJLYnMz?=
 =?utf-8?B?R3R3WlBTUjlxS0RZcUJBMkhNV0NGWjNxYXIwRGxROWZ6RHpRaWJ6eVFWSi8y?=
 =?utf-8?B?cThxWTRBS1AyUitLQTFaM1VFa203WjBQNEZtelhVQm82dDg4YTI5KzhyODRN?=
 =?utf-8?B?N0FwR1FOMWRuOXVBb2Q4VCtqSWRMUG51Vm03eUs1QTRjbEdEZjYwZGx5RUl5?=
 =?utf-8?Q?4zrWtvAMCFoEmeOcs9Yx2G5Qv?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 706cd2b3-16f2-4a0d-9776-08dc78e695dd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2024 16:04:53.3234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sw57Cb6ZGUDwswYt4yyoboA/5DYOQkGgVicimfwsfbqrAvChaC1NF8m/aptqkEGY8xuzFrSWgvKZzAEIxMRTYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7811
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=528lw7Mtj87DFDWnK+nHI/KiSJx11q2CrzfFRBeFGh4=;
 b=EHRaYRO9dee/p2Dm86kgtjzgvOPWWH7GXDkNQDrQEFiNLS0FKtbAEaB4z1e0LnmU3jpR3qCn0lyyfnPf8jPCfRB5musLilMFAxBBT3hRe35Q7VOE58onLw09RSQ1hOVVS2tliuxINWMCmSZuOqiWqMAAC4xohS7jHQ3M3ut2ajk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=EHRaYRO9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: implement AQ download
 pkg retry
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
Cc: przemyslaw.kitszel@intel.com, naveenm@marvell.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/20/2024 3:37 AM, Wojciech Drewek wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
> to FW issue. Fix this by retrying five times before moving to
> Safe Mode.
> 
> Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: remove "failure" from log message
> ---
>   drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
>   1 file changed, 17 insertions(+), 2 deletions(-)

LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index ce5034ed2b24..77b81e5a5a44 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
> 
>          for (i = 0; i < count; i++) {
>                  bool last = false;
> +               int try_cnt = 0;
>                  int status;
> 
>                  bh = (struct ice_buf_hdr *)(bufs + start + i);
> @@ -1346,8 +1347,22 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>                  if (indicate_last)
>                          last = ice_is_last_download_buffer(bh, i, count);
> 
> -               status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
> -                                            &offset, &info, NULL);
> +               while (try_cnt < 5) {
> +                       status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
> +                                                    last, &offset, &info,
> +                                                    NULL);
> +                       if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
> +                           hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
> +                               break;
> +
> +                       try_cnt++;
> +                       msleep(20);
> +               }
> +
> +               if (try_cnt)
> +                       dev_dbg(ice_hw_to_dev(hw),
> +                               "ice_aq_download_pkg number of retries: %d\n",
> +                               try_cnt);
> 
>                  /* Save AQ status from download package */
>                  if (status) {
> --
> 2.40.1
> 
