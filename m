Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D13778FA70F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 02:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4451E4013C;
	Tue,  4 Jun 2024 00:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q-X8TNYvUOZh; Tue,  4 Jun 2024 00:33:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 024F440230
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717461210;
	bh=/QyhkOpa8fADf8mZXLkypXozK4TO6Ez1IRjGRvyvFAY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gCNGZ7ewyq8BCua9zXecJ99CXnvnJkapJfQU8XnK+RmlvKzHAAVNAciWag/pUa6Jh
	 URDh3MZstXVUZfAm01fJuidCHvQYxOlqkjt9u4DzpcieB/GrcR0nH2Bxd0M5KjOcje
	 aSqK9WscEP1hjHRn1hc2LKN/I3WOhhZqhrlkCFH/pC07/b+OMt59m8Zd8niD1VigR4
	 ewgBF2HGyxPnpc9oj4uGHyF2RAz5RCNM9II6IeAHy0VeX1rcgPlmsqw4UyjyvIVjFD
	 H2CHudyrF7fMZj8cau6GGRPiXNwABSaRlpXzvloqYZfm2x6IT7VZ/WWg+AS6iK3Y9U
	 mzC02bLFbJTCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 024F440230;
	Tue,  4 Jun 2024 00:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9CFB1BF868
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 00:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1E34820B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 00:33:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bSNew81PwgMv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 00:33:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.236.62;
 helo=nam11-bn8-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C5A4581FDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5A4581FDB
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2062.outbound.protection.outlook.com [40.107.236.62])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C5A4581FDB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 00:33:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vmm/ltb58nZYRy6XXEaynNCI41QBWCcOdalGgPRQdHgvgLf2ZJkhGn6BBvomXRTtXJPuVcHqwbbIsixtZaj04DQsgd+r+riayD1Joj3wmZiPpOUsnje5azgzbyJgO6wxHvjiLVrqUbQKAJ26I5lJs3Jr0DAkNqkpqbPqrJU0S+9OiWvU2fYx1BkQhqTAGH8ghtLjAy0UkuTQwU/XjBilvtEk96XBn+lhcUrwyHt37JvjiWLyOvC9K1jjTEbQsj7AAkW19jiu0Vyb/PvLBdVSqumiyx35k1sjzUm47dUvwCbTxZy3GZlqJYl1OrDiVsH8+Iyqqo/11ldbgA1jplcexg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/QyhkOpa8fADf8mZXLkypXozK4TO6Ez1IRjGRvyvFAY=;
 b=URXrdvFfqu6ke/2welU6jFsH2Q2HZAIVsyNmwXu/fUrvnz97wJuzRcT6G22SgT6i4vFTxaYQ+IBrlypsDIpBUrtLdXtSswY9ZWK6gLu9CXIFVDfwdKCGq1LeH43hw51Bb7G0AREZ0y0SkLlPFGEeDPNE5ghVvpV3Gvevg7FoAV87efxccMPYRDkaVKlqLGfN1y5S3GqzSOLEQt0/zx1R/3OZVya4DxWdRxGDrs/iCJh7obKfqqluTGp7jOq9bRci7LIfHbzoesfJv7PLNWZS7Zz1Vf2i5gODslsFU+LfnIg7P8UgyKQPDNW2ztxrv9bUmK22jZQhzHtl6kuPV8UbGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 CYYPR12MB8855.namprd12.prod.outlook.com (2603:10b6:930:bb::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.26; Tue, 4 Jun 2024 00:33:23 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb%4]) with mapi id 15.20.7633.018; Tue, 4 Jun 2024
 00:33:23 +0000
Message-ID: <05dae177-ff31-4ad8-98f2-c93e14ea37ce@amd.com>
Date: Mon, 3 Jun 2024 17:33:21 -0700
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
Content-Language: en-US
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <20240603184714.3697911-1-joshua.a.hay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0060.namprd02.prod.outlook.com
 (2603:10b6:a03:54::37) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|CYYPR12MB8855:EE_
X-MS-Office365-Filtering-Correlation-Id: b5f6f037-f8b1-424d-40e9-08dc842df0e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dUJpV3p0d3JabmlnbFNxTFYzOW11U0tIRzcrcFVyUDhVUlZ6cTRmQ290RTly?=
 =?utf-8?B?QlFxVnErd29sNm5rckNPNGpkdTdRaGtDa08rMEVJMzcxMlZ2aXAvT0F6NENS?=
 =?utf-8?B?RGtlMm9JMC9id0JNczJ6Q2g2a1I0ZnpZU1I4ZFhuaTM4TThCNnZqK0VEcWJK?=
 =?utf-8?B?LzkxNFExUEE1NlltbDVVQmVXYlV5bXdKSy9IdFVCMFdJSHd4TWdmdEFZZGRY?=
 =?utf-8?B?OEhrejlvNjdRVmovM1AxS3NLU1U0OUVqdmFtdEFBeGlxRHJPa21CVHBPZjlx?=
 =?utf-8?B?SkwwWmhNSHM3TUtpdFA3V1htZjJVN0hFQkl0NGJ2RUVMODRLbU1zUTJZTXdq?=
 =?utf-8?B?MVpvQ1oyZkV5cStMQXFsRHRKY3JRR1I0WXE1Tm1uMFlpU0d6NkhDTFd0YU1p?=
 =?utf-8?B?RGx0N0R4RFVucGQwV2pCTWN5N1MrU1J0cmNESi9yRk1qTFJWeG1HdENFbHps?=
 =?utf-8?B?dkpiV1VlR3lEQ2c3S1VHRmpKM2ZpZ2pudVcxa0VtUkp0TjVJSWZUSUtmMCs2?=
 =?utf-8?B?SnozaWlNWHZvNWlrVUJtb0FOazNxMnp5cDhjSE0wSzQ2L1lEZ0wxUzVNVW5G?=
 =?utf-8?B?WEw5cllMM25sRGV5bFd6R0tTK3hDYWdSVW54R2ZpNCtHdXY0cnVraVdDMEY2?=
 =?utf-8?B?Y2FWWmxNbEQvNHMxbHZKSklXQ25jQ1lXd21IczVDaEs0YmVuclY1N01sbFFm?=
 =?utf-8?B?V3lBMExGNFdZaDV4cUppdGNsQkV2bldBODIwczNWOFZaM1hLSWJyd2xaZTJh?=
 =?utf-8?B?UXd5ZjUxd1lNSnNhR3lnSzdBRHc3ZzNGR3NHQ3kxKzRsQzdTdFBCb1BZWHc3?=
 =?utf-8?B?cG4rdE5WdDVkdXd5NWJPWitoeWRtM0J0cVozODhRZVlWWHRabnI4WkZrQnJ3?=
 =?utf-8?B?QmxIZFpoNjBFcW1SdjlFZjZaa09odk1QeWdEdzZGWTVlS0NUVEJxRWx1Vlhp?=
 =?utf-8?B?bCtEUWZETzh0ZzZpOFVQekpKVkZKNUVkK3ZxdFV1WFlqN3F0MENPbEJiTnlH?=
 =?utf-8?B?d1dPbW9sZ05KQlJPdVlTZ1JlbFBkOHJ2cktoSU9Id05NQXJCcWczNmJtVW42?=
 =?utf-8?B?eWxwQVFzdjVaS3F5K1NnRi9wUk83a3p0cnZ0M0FuQjVGbGdoa2pCY2pUbGRr?=
 =?utf-8?B?R1d6N3ZDdDkwTjVJc1ZvU215VzFZR1RKWEl4eUxYSlVNdEUrMEhHL3R4TSt1?=
 =?utf-8?B?SEtnbmkwNGtJNVFMVSs5RWtPalVMTEtYcUxxZXpBTDVIaHcrWE1JQktkODJs?=
 =?utf-8?B?b2RGWEJXcmtVTDNnd05yR3k3KzNOMUs5TnlvSXRkRzE3Q2pZRklDUFAza0dj?=
 =?utf-8?B?VmJUSHFOMEI3M1RDWkVINEFuV2lFQ0lWU3R2eDdjd0RQcFpudmVUTmdjRWpN?=
 =?utf-8?B?VEEzUUpYK2hCZlVpeTJIdUJVZUYvckZLV1pTb0E4WkxBV0tMMW1aMlhEclFR?=
 =?utf-8?B?QXpBWmpGdGFnT0ZQZDZ5M0R0cWtXMTc5UHp6aWZ1cmlrenkvQVBwdC9HS3Rm?=
 =?utf-8?B?eHdsN0xpSktyQzlPNHV1MktJMUZrRGNhOUxXTnAyWVB4KzdQY01sQ3dZRVFY?=
 =?utf-8?B?YnArUWdCQ09iZnJwVSswa3FUb0JuNktmZ3Fza2l2NWxvblpzdUZLWVY5T0dI?=
 =?utf-8?B?cjJTcEFVYW10V3pjdEc1WW1nTjgwZlcrQy9tWXEwcTBWWXcxeVE5WmJkTDlE?=
 =?utf-8?B?c2owTVdnK2lCd01iWW9zMkZsTUpWR21ZcTJqYzg4NzZMekQ3bFhDbUl3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVFUUThWSWVRcEhuZk9jc281MnY4TmxnSWQ0Zmo1NGJOVWl0anlBZERlbkU2?=
 =?utf-8?B?RDM4Sm93NUZrZDlUbzZVbXFQMjBQT3Jkd0RQN0xUL2ovcFp4dHNtYXRPYTI3?=
 =?utf-8?B?bFBwK2x2Qmdpcm5tYjUweU8yT21yeFVhcnBsd0prV2QxaVdFSmlLNURtVUlM?=
 =?utf-8?B?QTlieG5uTlZpNG5EaFJRRWZLdDYyZFY0eGtwbVRGOVFKdHlGV2FNS3llOVpj?=
 =?utf-8?B?WUtnVjhxdGc5TnlZUG93NzJKeDJOeWZ5QVFMQU85QjBKeGt3U2Z6QXBjdGp1?=
 =?utf-8?B?aTJNSmtscHBlMTM3ak5NQUVKcmZFNjIwYUVKNzk5cFRjQWRMOURZeS9GQUdL?=
 =?utf-8?B?RnVyTG5lWDlDajd1bk5aU0x5aUV2YXpxelp2OVNCRDhzUEdnbUI3a1ZqNk9Q?=
 =?utf-8?B?UkIzYU5wczBKL3BuZDdpY3hyc2dPYXVFUkhyczVTNlhDa2F2NUJybjhzVUl3?=
 =?utf-8?B?RVNmQVhGTEVPZGNUK2prTU5nTnVXN0hYWHJnOG1NaEkzeTBlSDFwSnpWSkNq?=
 =?utf-8?B?K1o1UFZNeFBCd0pyaWJmMUZWbHl3NFEwa0ZtRlVySXVNY0dDWGdSeXFhdUsy?=
 =?utf-8?B?RlNFNzV6UlNKN2UycTJHeXp2Nm5uajBhT1diMnFmWGRubUY1R3ZaZHhoOUtk?=
 =?utf-8?B?bk1QNmNrdGtPZjl4SDI5d1lCL3BXYXo2TVVsOFF4aFR5RFQzYlo2eC9MTVpP?=
 =?utf-8?B?Szcra0JCS2F3cmd1dFZjZmI0WnpUdGtrU05DTVVpQk85UGpFcHZHK3ZQQnRU?=
 =?utf-8?B?R1BleEpJT1psQnArYnFXTm1HaGpNTnRCNjZPZVRDZ3ZKdUN5ZEZtd3ZTOG1w?=
 =?utf-8?B?WVVwcGw2WFhMMnJqR1daVk5SU2ZPZGhlaURZT0RhV3g5WmJ5MS9wSlFKRUMy?=
 =?utf-8?B?Qm1hWGdKZFMybW1FSk5oZzFWNmtFVEtLRmdtRXR5cEk3LzhXdzZweGp1c2xm?=
 =?utf-8?B?WnBLUGZtaVdzb05WL2hwdzBQVzB3ZlloRzJJTWhGYzlMYUVzTm9iVTRXOUky?=
 =?utf-8?B?NTE2Ti80aE9GRHVqV2wzM2JaeHp2Y1ZwM2M5RE1YTGtvQktVY3Z0WkRLTkxo?=
 =?utf-8?B?M213ZlJ1L0dqODBhOEJwUzNzUDFRNHN5QkdkUW9IYkZOZytic3pDUEtyYnhX?=
 =?utf-8?B?MmlZajRHVnVRYzEzTlp4TmlUQ0dHVjZDMTVuSThKdkZsaWtFa3FpRmJDdlIz?=
 =?utf-8?B?Wk9Ea3pNdUowbmIzMTFHNEN2b0s2V2dRVzVjUlJkS3JKKzgzM2lTMDVvK3Nz?=
 =?utf-8?B?Y1N4S1lVOW81RVEzQVdqMkFwci9HbnZhcGg4UEwrREdIUEJ6dVBHMmwzaktO?=
 =?utf-8?B?STdlSDVsTStpR2UybWowL212c0VZUzNWL0RpckhhTXBWVFdycHZVWDkzOUdj?=
 =?utf-8?B?K3FaT05JcEdjSmcxZWQrUDgrNDVOVlIyWW42VFhqUmtyNS8wanRWd0djT0Nj?=
 =?utf-8?B?aWRNMzlpUmdZMm5sb0cwSkNSY2w5T09iT1F0TlE4SU90MjhoVmM3QTdwWGU4?=
 =?utf-8?B?WUdybVpmelQvdm5MNG80NlcrWVlWWjBiN1Y4NDlCTFp0aWdWbDJyTURHT1JY?=
 =?utf-8?B?MGZOVVNQMjNqcUFjWHFlZHd5SnJyZVp5Z3RDamd5K3dvaXZvVURIT2dYSGpa?=
 =?utf-8?B?b2lHZTcrajVoRVJYL2hPOGwzY0UvbnJyM3JlemE2bFYxa0dzRVVjbXlTbXJt?=
 =?utf-8?B?TFNvaVcreHk4QzVPMWloaFE1M0JVNXdjcStSdmNqZHF5dVkxNVFrc3QraWNT?=
 =?utf-8?B?dnYyQnVXdGt0OEZzVmxBalp5UC8zd2h6d3ZyTWd0UFFOVEFZM0UwelpIbUZy?=
 =?utf-8?B?ajBMZXNMQjViNUtaak4wckVrKzBnQkNhMlFXeml5bWRQUkg4QytIOVhGSnJC?=
 =?utf-8?B?R0FjYmE1WlV4QjdIc21GNW9hU3B4RTB4SGZkSjQ2WnpiTURhK1lJbHU1UXRS?=
 =?utf-8?B?cFBpNEhqOGhadks4cXVoTHZiQ2NtSVQrU1MwWExRU2N2dXVHZlR2QkkyYWxJ?=
 =?utf-8?B?aFZ6cE04SzBiU0V6MDB5YzZnM0JINEZHdGorVjhISk1rQlZselBJYVBqVkhE?=
 =?utf-8?B?SmVJandSdWVnYVRnditKYVJJMlBXSDk5b29vQzZmTm1sa2pEdHBjRnFQTlVL?=
 =?utf-8?Q?2ftXX5SlfcxA+TowUnylgzDBd?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5f6f037-f8b1-424d-40e9-08dc842df0e1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 00:33:23.0685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RS/gDGL3rcHiiVaE80f9RQ5C/PF3YONnijh1AAcXwYYiPUKz1LscS3niP45wKtnWwxESqs9Ey8VR1GV3fTYUBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8855
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/QyhkOpa8fADf8mZXLkypXozK4TO6Ez1IRjGRvyvFAY=;
 b=XjS6uJbIdydgLac1eB9EtALui0chD9R75zxra/lsUkrqKFdmvl62rGdWeJhapgDtJtldNIw/X9YkUGsHhLHO+uDOqkSeEu5fXclM/mvMFmEIwoDG2sDTy495ty2pjv17ByJIo6yGUYRqzIV2i+J8VQhA1dTY2vnZrp914M9hmOw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=XjS6uJbI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
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
Cc: netdev@vger.kernel.org, Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/3/2024 11:47 AM, Joshua Hay wrote:
> 
> There are several reasons for a TX completion to take longer than usual
> to be written back by HW. For example, the completion for a packet that
> misses a rule will have increased latency. The side effect of these
> variable latencies for any given packet is out of order completions. The
> stack sends packet X and Y. If packet X takes longer because of the rule
> miss in the example above, but packet Y hits, it can go on the wire
> immediately. Which also means it can be completed first.  The driver
> will then receive a completion for packet Y before packet X.  The driver
> will stash the buffers for packet X in a hash table to allow the tx send
> queue descriptors for both packet X and Y to be reused. The driver will
> receive the completion for packet X sometime later and have to search
> the hash table for the associated packet.
> 
> The driver cleans packets directly on the ring first, i.e. not out of
> order completions since they are to some extent considered "slow(er)
> path". However, certain workloads can increase the frequency of out of
> order completions thus introducing even more latency into the cleaning
> path. Bump up the timeout value to account for these workloads.
> 
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index f1ee5584e8fa..3d4ae2ed9b96 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -770,8 +770,8 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
>          else
>                  netdev->netdev_ops = &idpf_netdev_ops_singleq;
> 
> -       /* setup watchdog timeout value to be 5 second */
> -       netdev->watchdog_timeo = 5 * HZ;
> +       /* setup watchdog timeout value to be 30 seconds */
> +       netdev->watchdog_timeo = 30 * HZ;

Huh... that's a pretty big number.  If it really needs to be that big I 
wonder if there's something else that needs attention.

sln


> 
>          netdev->dev_port = idx;
> 
> --
> 2.39.2
> 
> 
