Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8D2B2BAC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 09:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F17C81094;
	Tue, 19 Aug 2025 07:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hABXcAZvu3_j; Tue, 19 Aug 2025 07:31:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FB9581095
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755588677;
	bh=6T2fHL5BrvOM9b2f6pZyWitBy9HxaMmHOffRtbOIH2Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zGej5lJV3v1Lq5xuk8XRpQW4WbE15m200w43kQdvgjI39IuwMSWjV5obQ/UQX7opW
	 N9Bcf2j3SBejoEmhiIbr8+SoEDrz6Ckhaa1lJHGFRq5Qk2Xi0Aj0gK3nxYvOUbh1Gu
	 9emkZqwYtgjB9wrM4A1jNsbi93bB20q7OqX4/Ha0krJ1PvfKlJuXviRPGjpXBZamqc
	 h0SSeZQf2jdrdaKIWvtFPO2DI97xcOZZVNdlz40njgLRRBxSzdsoTi5WcZuwbmTWZF
	 7C3Q8HHjlkJUk9ZHgCMPyL2+ixs/ZhymIk5y/v6qd6YyHLCE45mdZPRuh927nDl152
	 FSdy7j07SvDZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FB9581095;
	Tue, 19 Aug 2025 07:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D240CE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 07:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B8F9E8108F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 07:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0BKNYxfahN1R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 07:31:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.67;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=cjubran@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EDD2381092
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDD2381092
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2067.outbound.protection.outlook.com [40.107.94.67])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDD2381092
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 07:31:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HGHUC8lpFkWbQKmucQPWaFHjYAMB/QmcbFgoFqyhKDEFlul4mfNsCf99x7eSWKD6aRwxLCpG5gLBjNn0o7zBZJQTj6jQFOymFJKX7WwkXzd142uPtzL671mnrNFXFWbndbZaHPQ9JI7fhUb1sI0t+n/pTUOi6NRYeZv2sjTpt0b8N5FeDZlVcnYLL3QzO1tFq/60B8L6shtcP5xeS0Q4jyTONDd75VefRz+A6wlRzxhIjc/UMT52buwldKbUTgoB9EdVcGEkC9jJhOHVTlQbzn/5BB56EpHUbXXhSVgpQ7vgFr4N9EN/CyrVJz+a6Ko/t4bNATYyyfHZy0pfmyQf0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6T2fHL5BrvOM9b2f6pZyWitBy9HxaMmHOffRtbOIH2Q=;
 b=cMzAtFktIxlOqxAmISIoiM6XqCVLrzM1ETh0oY8it+n+G3qauGXJl9+ks6oOyVIHtVJO7JQkyerCbvuNySdqh7EaU2b6/yhaewh5qd+obULcP25+wYqS1Jt2Gmse6JzmFjxBHF63xjFpcXh7Y6S0S9FAss1gLDXW3UdUqZ7Ii6u2ePMOVQimkuhb9BxZ9FpjqbHenZeeErIpyrn5jgZdJyTQzaYIlNAoUy7S0Du3g8KIHhSfnvmoE5cRjivrd/6j+/XEy2LRqAaBwF1zqu1lEUslqSaMr3KWv9UkUFzdpo5ZjyUuvS2zQs/HbV/WtTtuVghWwGUst0we8zLtmGN+Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MW4PR12MB7141.namprd12.prod.outlook.com (2603:10b6:303:213::20)
 by MW4PR12MB7382.namprd12.prod.outlook.com (2603:10b6:303:222::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Tue, 19 Aug
 2025 07:31:09 +0000
Received: from MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2]) by MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2%5]) with mapi id 15.20.9031.014; Tue, 19 Aug 2025
 07:31:09 +0000
Message-ID: <203ae8b4-9b45-43c2-a1e2-a3d0d80b81ea@nvidia.com>
Date: Tue, 19 Aug 2025 10:31:02 +0300
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250815132729.2251597-1-vadfed@meta.com>
 <5b8da3d8-f24c-43d8-9d82-0bcc257e1dac@nvidia.com>
 <cab8df87-46fc-49f4-be1d-a55585587e61@linux.dev>
Content-Language: en-US
From: Carolina Jubran <cjubran@nvidia.com>
In-Reply-To: <cab8df87-46fc-49f4-be1d-a55585587e61@linux.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::10) To MW4PR12MB7141.namprd12.prod.outlook.com
 (2603:10b6:303:213::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR12MB7141:EE_|MW4PR12MB7382:EE_
X-MS-Office365-Filtering-Correlation-Id: 1522faf9-3b2a-4d09-5a1e-08dddef25d7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzFuck05bWJ0aWNwWGRJQVpSRlpTelNuM1lTSFhTNnVJallvYzU5UEgzL21I?=
 =?utf-8?B?ZWZXZXVXZldac3hRYy9nV0Y3SldhY2RsMFZ3NGJSd3VNWEJNVkk2SWUvUDhE?=
 =?utf-8?B?emJyM1RjWk1KbU0yZHozWXNOV3F2UGVrWlpDQVlsbDdib0hXZXhjQ2pCUTR4?=
 =?utf-8?B?N0FBc25Jb0xmU3pNck5IcitWQjZsVzVTSHdjYjBjY3hML0Z2Z05ESjhES1Jr?=
 =?utf-8?B?T3E0M200K1lRdHc5SkxCUkZKRmxUcXpZUXdVWGxxVzBYZklOMUFvS3ZsS25E?=
 =?utf-8?B?MVBLa3lwaVJBazZjQWNmSmEyQjNvQ3E4NlZOUGNvUnlHK0RwRytVS2lzTkRQ?=
 =?utf-8?B?RVM2R1Y4NlVKOU5Db3JlN1BFazJhb2ZkeGV1WGV0ZXpsVXlTeUNBZnM2cWwr?=
 =?utf-8?B?QVA3VHRCM0NUcnRJQmRYbWhSRlRNMk1FQXpuR3FQS1Z2SmhHK1lqS1g2YjJv?=
 =?utf-8?B?cHEyem41L2hFZnhtM0FJQSsxNHVrQW1pQURReFpLWmxxTGwyNlV4QkkvUFFH?=
 =?utf-8?B?QXR3d1oySThNRHh6VG5WYm5WRWlBclNWdHhyV1BWU0ErSW02V2FsbzdUMkor?=
 =?utf-8?B?a3ZUT1RlaUoxeEcyL3gwZG44SjcrY3cxbklYTU1aSG55L3ptNXVHbDg4WHBu?=
 =?utf-8?B?ZURGWUV2NU1sOWlYSldMVWtqRWphRDZ2a2M0T3FoajJEZTdncXNUYVRNRHpk?=
 =?utf-8?B?dFFncVdzUFIwVVkwNWVyZWNlVWV5NncrMGEwT3JOdFZXM0hwZUxhcGZudFd2?=
 =?utf-8?B?QWMxQ2w3WVdUWGdNSkVORDlwWlI4MVE2cEVSQ0RtWU4rVVNuQnlwSGVrYitK?=
 =?utf-8?B?VkdXaVVGUThEcHVUN1M2bmMycy83eUdmdmVPSU9QYi9TYVVuRW1yK1JaR2VQ?=
 =?utf-8?B?ZXJwVytrejYyQ0EyU2FKZG5RTDdiNmxSSFk3L0VlWCtGUUtZN0diU2RvZGU4?=
 =?utf-8?B?S3ZNYytxQzh4TWNNQmk4SG9qam1DZFFsaThEMk9pTGRKRU5NS3A2bUNHUmZa?=
 =?utf-8?B?VEFmbVB4dUxOWFVMakJGN2E0Y1J3bDZyRHJURlE3YWxnTmI3YlErd0NHdkZO?=
 =?utf-8?B?NkQ1WVdBbjBZUTgwNTRkaWNpQ296Tzg2Sm11VllRK2VKTTNBRVpMaGl4aVc2?=
 =?utf-8?B?TTQyUXlFcm5FU281SDJhWHZvQVJWOWxqeWQxVmVkcEFTS2ZwNEltWE9Dczlm?=
 =?utf-8?B?Y1ZJcWI1UzYvNWdUYjZPS1BMSmplWis3RmtPZFYzelFWVmZQNHN1cGVOM1VJ?=
 =?utf-8?B?K25XTXBPSUQwSXYxQVBDY1ZNZlhyZlAycXR5OGR0Nk9yb01lbUlKZHdWY2dm?=
 =?utf-8?B?T0VQYk41NXJoMHBXUHA2dXgzbXlOQ0VwOGVRdFVyZEFPcTFvNTFuTEtRMXBu?=
 =?utf-8?B?YW9DUlVvN09pUXkwS1F0MjE3MGRoWk5RMC9uc2U0b3hnWXNqN1ZpQmpaWVU3?=
 =?utf-8?B?MEJZRWNSSzFsUDBHTDY2TTRINVNPQzJVRG91dlNZa21zeTA0VEQvRHNUM3hR?=
 =?utf-8?B?emhSM1Y3MFNtc29PdGtpTmkwK2ZFUjY3OE1sdkxsNm9MNlhuTmo4RDZnQjJW?=
 =?utf-8?B?VEpicmx1QTM0VkVUZmpTSytyU28yaFh1alpHTGxZYlN5L25aU1dKMWJYZ1Vi?=
 =?utf-8?B?Ymtsbm96U2xLOHRZZTNiTVd5TkgzZEQySzN0b1RIejMwRW9DS2hCaVVyTG8w?=
 =?utf-8?B?TWR6M1BsbGx6TnAzWE9RY0VvNEQyR0dnT0hPK1NnbzFOWmZKeXpqYmNndmph?=
 =?utf-8?B?bTQwaEtCb2xGalFibENUTE1mOWFLNCtTY29CMS8rRDJXVmFiSUNYSEgwMk9P?=
 =?utf-8?B?ZGJQYjFXamRvYWtxS010SFdVOTF3MkxQQ3dXaUc1MDlZRlNIWFVYb3BqZlBG?=
 =?utf-8?B?aEhjYmkrZVdDd2tDZzVGMVE3QWpJNnAwTkhXTW1OdlQ1NmF5WWhqa2todUJq?=
 =?utf-8?Q?4nyDOTNG42U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR12MB7141.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzVrbmR6OFBoa2ViSnhRSE82Q2l6SUQ1VkhXL3hrRzJxYjd2ZzlsbXJFM3RH?=
 =?utf-8?B?eElQVVBOWGVrcnlTdE5NVWpvY2N6bjFWcFRmWmZuL24zc2RXMTZDQWkvZ1ds?=
 =?utf-8?B?Mll4ZU15SlV1RGVyM0RlM1BvSXpzdTY5WlNncFNUWm5JcVdabUFhMCtEcGo5?=
 =?utf-8?B?SjVEVXA4OUdEd3lsTVVQa01FYkc5dlZ3dGs1bWNma251c0hCa1VSaSs0Tk9T?=
 =?utf-8?B?YVhDSHMwUEwzcnc4NzlsZGpkUy8wR1RmbDBFdk1xY01KdXRyeDRpK1dYSld2?=
 =?utf-8?B?UGlOT05BaVl5c0lHeVplaFc4M3FxUnlYNGg5TWpPRUhNY0R1bHZQTGIwUExS?=
 =?utf-8?B?bHE0aitFUU1OV0ZjWURwRnF6cWRkTXZ5WjcwRHBSMnhFUXJKQmFiT1djTDl4?=
 =?utf-8?B?Q25qNHBzbHpFTEJ3bklyZ0t0ZzZHVGtLbGNzN1lpMDBYUk9GRG9BaUczaUNn?=
 =?utf-8?B?QU94QStMTjRPUzcySEt3S3NiYjhrMmVuUTA0bElFcklFcks0R1E5RUFYYWdG?=
 =?utf-8?B?RHFEd2ZqWVdCYm1JSVFJOGlQbVY0U3NqcFBObkNTKzZvZE5Vc1pvSzUzMmwr?=
 =?utf-8?B?aWFRM29OVFhMY2ZVTEhFcXRGR05FWTFQSzE4WkpYbENLOGhhb1pyU2tvSHAz?=
 =?utf-8?B?NFIzYUJWdzBxQUFUMEpxdzFXbDNPQkVsb3pubURoenB3czNkTnZIa0N2ZHpy?=
 =?utf-8?B?bmVXUWdKSjhrOFlnVThFMFplQTcyamd6L21jMlJNVThqUzFuUHRNVnFvSTVP?=
 =?utf-8?B?OWJ5dWFPTE4vbTltdUtqcGE5QnJ4SlUzelJYVUpMMm00a2xoYy85QmdBT3di?=
 =?utf-8?B?ejFmTVN2S3B4eTA3MlJIMTlIL3d5cENjNS9sR3kwRDI2QXhpNG5HTFBtOFEy?=
 =?utf-8?B?a05heTErMzRKUXlmU2tkbElTaHh4TVpSbGphR3dEaGZxUElRN1NlcmV3R21r?=
 =?utf-8?B?cThOeVp1Z0RIMmdBMXZabThMQXZoU0JLMkUxdGpZbFR1SUx5YnJsaTJGRXJ4?=
 =?utf-8?B?TXpwNlluMjdGSTFFbDhzREx3L1Z1VjVZR2xubGtXd2Z1MWhESXpidG1Hb3Mr?=
 =?utf-8?B?NUZpRXQwN1pueWtRanU1eS96THdsR052T1NLVDZNSlM5QlA4RmtYdTVRRlh4?=
 =?utf-8?B?ak9USDVnWXdTQkw5bHFUaFdBNEI3NXQ2R3Rpc0srNzlhNDlXUlhibmxKSWll?=
 =?utf-8?B?dlpYT1hLdDFDZDNDci9haEEzZFZSZmtJOStwSFNTQkt4K0lQMUlDZjcxTjlG?=
 =?utf-8?B?NzNmM3lUcTdFZlFPQUZlT05mclhiUmZaL0dyczBScmorcHhGdGl2QTIxc1p5?=
 =?utf-8?B?UFR0dmorVVgwa1BKT2IzWmtmVFI3RVRMOVZ4SmxoSjdkV0xKZWFnbHJtSURt?=
 =?utf-8?B?ck53SEN5S1VLK0w2VmtQay9BYnVXc3B0YmdydHFxeUlhbmRuQ2kwa09MWitw?=
 =?utf-8?B?NFNSQ2JOWFV0MStnMS9xMVZvVnR0bS9jNkpYb25uUGZXbWRQV09WQ2N4UGRQ?=
 =?utf-8?B?OTFaUE5kTXdmNXFqY2h4TkJzRGd6VktBNE5QOEs4a1VjV3RxaXZkbEZqQUtv?=
 =?utf-8?B?WjdlOVpKU0tTRDFwQzJDOGhJR2h3QU5QbTB4ZDhYM0l5ZXlMaWsrMFJUVlNE?=
 =?utf-8?B?Z3JuUjI4aGpqZHM2bFJBL0pIUU9SMHBIdlUwcTlOdnNmS2Y0TXVVM2lxNVND?=
 =?utf-8?B?ZXhPcTlTa1owZ2dSdkZxTzZCVUNlVDhyWjdtQUdaTHZyRi9XVm1teXhqOTdl?=
 =?utf-8?B?ZlZZanZya25QY1JZL1E4Z1dIdGpPYy8zVVpNTzBvUVNzdGFpU1ZFZjhHTjBk?=
 =?utf-8?B?WjVLZVV5bXBoTi9zY0R5bnRyVllYTTJNTmxpelVkaHNDWXE1WjR3U1YvWnJ1?=
 =?utf-8?B?RU1YN1dCc0VSYnBud0g1ZnBMakIwOUxKTFFVb3hsNjFsclorRzMvVWtOeFd0?=
 =?utf-8?B?YmE3cXRDekFDblBBRUlPaFMrM2tOdTB3Qk9wTFhGa2ViejF6YWE0WnNCNmVS?=
 =?utf-8?B?bTVZWEhaeU1FbHZBK05zWjVWd3lwaVp3WmtRVUJBdE9BSVVMb2Rxc3QwZ0xU?=
 =?utf-8?B?WVpMT29WTlhwbW5NRStONUU0NkxSMzVJSWt5MFJsY2RqUGRSaVdOWlRGUitC?=
 =?utf-8?Q?ddWQZIT+0cPEMgUBZqkvuZR3l?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1522faf9-3b2a-4d09-5a1e-08dddef25d7c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR12MB7141.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 07:31:09.2489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h9HoVZ/K94vCpD9+UUBmKyF+DvJqFmlgJe1KajIYAywnqpiqqa9vAUmYJb18ybvv1QM/ZxqA170ZsnR0bWo/cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6T2fHL5BrvOM9b2f6pZyWitBy9HxaMmHOffRtbOIH2Q=;
 b=lal99ikc4zl1dtEK6tolWqbBkF7jj3A4AYS0fHblEVQANosrLTYmDEH+vzPiSDo4HvXjLg6qgaicl7vxPcy1oIQqVUkBvheJU2ntmDkUuy57iGKVJIsqg7wsRK5fiof/oC3zBkJMulv1nA/0TdzYMr53vn3xJ7ussayETfHzj0KdhrRO3tj4leLgciLP6BLTUIJ6HILNrOFOdPGmsYqzhCNGyNmqWKbviniz2sCjgzHxzBi+I7jJeFzFRfYAyfF3yLFgenR6bn/Dz+MwJ/8wMjGWRAC/hwoBf7KpgilxbiN9um2bJFKBIbUSvfWJU5c36l3OJOOABUo7dHHJ65nSkQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=lal99ikc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v5] ethtool: add FEC bins
 histogramm report
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



On 18/08/2025 21:35, Vadim Fedorenko wrote:
> On 18/08/2025 19:17, Carolina Jubran wrote:
>>
>>
>> On 15/08/2025 16:27, Vadim Fedorenko wrote:
>>> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
>>> index de5bd76a400ca..6c0dc6ae080a8 100644
>>> --- a/include/linux/ethtool.h
>>> +++ b/include/linux/ethtool.h
>>> @@ -492,7 +492,25 @@ struct ethtool_pause_stats {
>>>   };
>>>   #define ETHTOOL_MAX_LANES    8
>>> +#define ETHTOOL_FEC_HIST_MAX    18
>>
>> Could you clarify why it is set to 18?
>> AFAIU IEEE 802.3ck/df define 16 bins.
> 
> Yeah, the standard defines 16 bins, but this value came out of the
> discussion with Gal and Yael because the hardware supports more bins,
> I believe, in RDMA mode
> 

currently I believe those are internal modes that expose 19 on our 
hardware. Therefore, I think 16 is sufficient and we can easily extend 
in the future.

>>> diff --git a/net/ethtool/fec.c b/net/ethtool/fec.c
>>> index e7d3f2c352a34..9313bd17544fd 100644
>>> --- a/net/ethtool/fec.c
>>> +++ b/net/ethtool/fec.c
>>> @@ -17,6 +17,7 @@ struct fec_reply_data {
>>>           u64 stats[1 + ETHTOOL_MAX_LANES];
>>>           u8 cnt;
>>>       } corr, uncorr, corr_bits;
>>> +    struct ethtool_fec_hist fec_stat_hist;
>>>   };
>>>   #define FEC_REPDATA(__reply_base) \
>>> @@ -113,7 +114,11 @@ static int fec_prepare_data(const struct 
>>> ethnl_req_info *req_base,
>>>           struct ethtool_fec_stats stats;
>>>           ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
>>> -        dev->ethtool_ops->get_fec_stats(dev, &stats);
>>> +        ethtool_stats_init((u64 *)data->fec_stat_hist.values,
>>> +                   ETHTOOL_MAX_LANES *
>> this should be ETHTOOL_FEC_HIST_MAX since we’re initializing the 
>> histogram bins array.
> 
> Yes, you're right, I'll change it in the next version

