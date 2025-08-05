Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7A9B1B09D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Aug 2025 11:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 209C683EED;
	Tue,  5 Aug 2025 09:03:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L_SwqXF1hgPw; Tue,  5 Aug 2025 09:03:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CF4783EEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754384608;
	bh=U3G0s5Z4pWmCL3wlE39tjkSk7RflcbxGZphix2rTaSg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J76eQ5ehCcGL1ZYVz3JqKsXS+sSYFJXLnBeNUWFBy7Sy0ofQBi1acOysoDyT6QYCs
	 Q43WzgJ+/MrM/VLHGqLTo/SvbIq6RUa8+GsQdoSnPcWYMpz74BeNh/lDPeBE/KuDnc
	 qpqub1Cvh0Zn4yyNG7cnFEXs9NP/7SBGi+pjtcHAhDhlyGNzsxHY0gvogkHVSvMLsE
	 liRiI1XOx0u4rpt9i2hzI3wItoOxQfhE0idC9j/4P+B3RXfqOFwheGDKNy+Lq+4B8N
	 Zx4+VzdxcERF7ESH+bGTJzACk/fIiw56bJc1yq9nMUiWvKmhH95YnzcadL47tsHPvq
	 Qz1Xb9taqBrSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CF4783EEF;
	Tue,  5 Aug 2025 09:03:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 60352233
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 09:03:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49D8C40D04
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 09:03:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bt-JpR3uu7Ps for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Aug 2025 09:03:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.101.64;
 helo=nam04-mw2-obe.outbound.protection.outlook.com;
 envelope-from=cjubran@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 91E68400B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91E68400B4
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2064.outbound.protection.outlook.com [40.107.101.64])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91E68400B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 09:03:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aRW7ujxcTxCX9aoQnQE0IrBVatAhSOKLOghWVOWk8bbZOjG44qLQx7mIYK00VvQvlqPAmy6hQJdDYiy8b4KmAHvhW4ZJbHzvLg2xC5VONlyyHqXil1IPfTj/p05mGMgXe7I51oW6QY5pAa3GVYOc3dxH70bf8/+IpCtj4djB1bZtMXMdNp3G/Y5NUyHdCD7aRJATQzsp+a7kNsy4jZt4Vz9U/h9RVUeU0S9PwPRkbgWe7pcQBFFfzWLbauFkJS/uCpu4b2Ekpwj52mgP8tmVQncOQww2mzcHnvTlPCCEHsziHxjFgzwaJxkNBRENxrezC3KVe2gfvv/m0/qgVfnwxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U3G0s5Z4pWmCL3wlE39tjkSk7RflcbxGZphix2rTaSg=;
 b=lXydUbhmNd3ugeqxWogGxfr23CrEt/upfIrJR+HAGFCVOtmIoXJTuS4mpW0PKBUZILF0avGeP18Ap0zI5InkPunmAVTmU/fg9OhpfgNakj6CC1fN9KVfndvPrSrhzHbAByNp9MAbaQ+A/gnYLdMkpxJjmwabOrfawLrNJ0ybzsBeOslRV9N0jZfCZYFsuN2ord9jdRIlvFlAt3dpsTLQfrO3K2n7VpAfAWGAF80AaV8n8lx4YUOl6HVMkuUX+qk2Fdhony3ccaCEG/3uYpyeT8Bc/dv+etgIl1F7LE2dtxnNSDgTTwXNxhgxHHUXKiq10pc2Z2APptT0o99mM8J95Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MW4PR12MB7141.namprd12.prod.outlook.com (2603:10b6:303:213::20)
 by SA1PR12MB7270.namprd12.prod.outlook.com (2603:10b6:806:2b9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 09:03:21 +0000
Received: from MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2]) by MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2%5]) with mapi id 15.20.8989.013; Tue, 5 Aug 2025
 09:03:21 +0000
Message-ID: <e55b8200-1fed-410c-a5b8-e37cad5d84b0@nvidia.com>
Date: Tue, 5 Aug 2025 12:03:11 +0300
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250802063024.2423022-1-vadfed@meta.com>
 <d3bb8295-bb4f-4817-a2dd-017332c489d4@nvidia.com>
 <25ab441c-84e8-4c47-8d13-1b88d78ed4c6@linux.dev>
Content-Language: en-US
From: Carolina Jubran <cjubran@nvidia.com>
In-Reply-To: <25ab441c-84e8-4c47-8d13-1b88d78ed4c6@linux.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::17) To MW4PR12MB7141.namprd12.prod.outlook.com
 (2603:10b6:303:213::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR12MB7141:EE_|SA1PR12MB7270:EE_
X-MS-Office365-Filtering-Correlation-Id: 58f1b88f-f008-450b-ffe7-08ddd3feed02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0RWajZuay83ZVliU3pSaDA4WTVMOHIvRW9Lb2M0b1htcTZkeXluUkpJS1pO?=
 =?utf-8?B?VXp6dHo1eG56U1ZKUFpXam9adm9aeTQrTXhOQkpjb2Z0bk9UcWlzQlhFOFZP?=
 =?utf-8?B?UytuYm9YSWRTSWVkUmkraGwwK3BqLzl3dVBUdVdzMU9DV0ZZd0xtTDZOdDJq?=
 =?utf-8?B?OS84OVFnb0VjZ1gyK0ZpdHovZWVaMHpyUUFEY3RyZ1YvZVpNd0xVRWRWNUd4?=
 =?utf-8?B?NE8wc25MU2Y3cU5VU0JxRUZES0d6bXdUUUxHQ2tYMWFFMlFsQmRrbUZsS0kr?=
 =?utf-8?B?eVFVWDhnaG44aHBQajF2MTRUWStzREhNVDlZQUJkSE14bFNyTys3eG8xMXQz?=
 =?utf-8?B?WGR0MVBoUnRJUWduSjk0SVZCMlpsN0krTW9pWDhWQjl5anJuRURSRnZVaHdj?=
 =?utf-8?B?TG9XV2tVWmVabXhYekUzOVhjeHlYTnRpbWd4OHY2bDZPZDZzTk9RdVN2eUhm?=
 =?utf-8?B?aFZaampMRm10cGI2MHBia2xJOU5XU2IzZ1luY3ZLUnJHUExzVnJTd3lSNG1j?=
 =?utf-8?B?RjREbjlQaE9QaDFOSDZrMy9hNC8zc0RxcnJXekoyNTc2VVZkQjZoVUNGUk9U?=
 =?utf-8?B?TndYajVGK3N6SEVIbjYrU3dqNkErMGpPU0Y0OWd6QW1FcTJYYUYrZkRWWUY5?=
 =?utf-8?B?ODh1U1Fmb0RJc1lseVpQbXBFMnEvaTdnNWJXV1p3dGJrbSt0OEYwZFNaTjNG?=
 =?utf-8?B?Qmt3S2JKaThxUTR3NjgvMXlpMEVsVXd3V3ExdUYvWlJ5QzdqUm1wNWloVVY2?=
 =?utf-8?B?WnR1RlNwTTlCVGhnWmQzUTgzZXV1NmxHSXFrblVNRjR0OHQ0TzBwVHZJWTYr?=
 =?utf-8?B?UnpmNjlEamlyUGdFR3FPcWlqcG1sQWtmQ1ZZbUNwQnZ3VWE5MmN6eThoZ1VY?=
 =?utf-8?B?NStjQllkVG5SVU93b21ScmdKWTJsV04wTGZYaWlCZmdZVW1QVGZmSW1IbkRH?=
 =?utf-8?B?NnVGTndmNHFwSVVYSzl5bk9wMzN3K294N1BhRmcyN2dycHQySDRyRW1NRFRI?=
 =?utf-8?B?QmpXU0JZQkhiMFpvNFVYMDVqSCtET1ZaQUhUZUdURlJPZEZ0Z0ROdG9yV2gz?=
 =?utf-8?B?N1puMWNpZWV5UnJTRTlaNWN6Nm1zYjNoQXlKc3Y4elRUbzhWTUt2cHFmR3Qw?=
 =?utf-8?B?WVR4dnBMQ2tsbUlrR05IMWZlN1pscTVlWmU3R2hsN3pScXR5UlVnTERNNWQy?=
 =?utf-8?B?RXY2Q0Q1akYwdWJEdW1XUTR3YURVbkpFWS9VYkpKYk50MjhlL1pVZUVDWFpK?=
 =?utf-8?B?TUR6MWFaTlhOY2Z0VjdoLzI3K2g2NFdnUmhPS24rWTcvVElHTGRZMFpCUXgw?=
 =?utf-8?B?UjdGWlA1cERNMmFZa1lGZ2NjYW8yNnV1VndzckxPZGRVVGZPNkFBbUVXVTc3?=
 =?utf-8?B?TEtBMCtBSi9DSjhiZncyMVI1RHVnRmJMUkZMQndOaHhhaFo1SlJTWGdBanNQ?=
 =?utf-8?B?M1Zjeis4U0lzUE9sVm1UZVNFaGFqanYzdTMyUlFhYzZxUmoxRWNVMjR5Y2Rv?=
 =?utf-8?B?aWhCdEtTM2t4MGZXTzdIdlRRbFNKd0FoSWk5NWRiMEtPdkg3VWNBWVpsR1pz?=
 =?utf-8?B?YU1aMFlFQTRPalk4WHBnR1loR3NkcFBwVW4xbG9ZK2dzS3R6ZkZ1ekdIeWhk?=
 =?utf-8?B?ZEtMaks5ZS9iODVpY3dQMi94NjMxd3Z3OHRjcWQ4akUrbVp4N2dUcW4venlx?=
 =?utf-8?B?UGVqT01CNjNINTNka2p5WWY5ODl3VVVCbXllcnhjeU10RUo5dS9BZTNrUUpM?=
 =?utf-8?B?R2xiR0xKZWp3WTBrblpVaG5iYjN5bitJdHdsUWNMYmsrdEhZS2VFdWM0aVRI?=
 =?utf-8?B?ZEZJMWxLSG81Y3F6NThYVlpTS2tHSDRvSTRuOUM4Q0R5eVJhZGdUTDc0RlVw?=
 =?utf-8?B?Z1pPRjNvWmpseHJ1Nmh2aDFJT0dFekdZNHlUcVRhWGdaMXJ3WVlYYUtEdUND?=
 =?utf-8?Q?goVJGfcHsFA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR12MB7141.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1RaeXp2c0x3QUZzSEE0bWtCS096dlU5NFpIeHk4c2Z4K3FHRDF6NU80ZU5k?=
 =?utf-8?B?QkYxRitPSW84b2s2bDRjV3BYTU1UamJjMC85bDRhL3pBbkhqY1ZjcXVkaTda?=
 =?utf-8?B?NUdTTGx6UWdTYmxWZEdqRC82a0ZPL3JkRkxrM2hFbjlVNmk2aEZHRjZlMDdZ?=
 =?utf-8?B?b2t2K1gxQ0RrV2ZhM0crWnpBazlMTlVRazJRK09ETC83dW9FOUMyZlJkRlpP?=
 =?utf-8?B?eXVjNXgxci9MeEtlVG9FOVlYK3djc01uYzBQK3lNd1RDVEErSlZ4ZmdFckh4?=
 =?utf-8?B?UFRibG1TSTIwUDlpdmhsaFJIZVZFQm9xYlh3SjIxRkp5NmE5K05oSkZrZUk2?=
 =?utf-8?B?cGh2NTZwWUxhVzRudTNxODlUL0JkQ3Jsak52NFBxQjRYM1piclkyUmpMZUpU?=
 =?utf-8?B?ZVRka0xtSi9rbHl1VUxFeENhcWJlb1FEVGM5eU9JQ3kxRlJ2SFpVSnRJMjND?=
 =?utf-8?B?UVZCYlc3QkUrTUQzQ2xvUXUxUC9Rc3hzamtubS9aUjVPQnVmaW5xNTQyK2FW?=
 =?utf-8?B?QXg1aUdTdzd3MlorSm43VU1YZ04xaW42eGpUcUZRNnpDOEZ3b3FBSWhQYnly?=
 =?utf-8?B?YnN5VXJhZGtNdlZiM2Q1SVYvUzROUDVCV1pzWTNUeTJ1VGQvZWwyS2hLVkxR?=
 =?utf-8?B?ckZodFc1K0NSZTlPV3dhNWJnSk4zUmJIMmJTR0tFSnRaQmdsbnY4eWVLcU10?=
 =?utf-8?B?akw2VWNFRWhBeHhyeWtnNldDUzBWeUZYWnJjcy8rdGhlV01qUUlMUytOYWJt?=
 =?utf-8?B?enFramxaY2xrQnZwRGdTMXZGN2NTTkZURHZPalBKc1ZxblB4bG9MaXBHQW5k?=
 =?utf-8?B?TFZnSEZGWEVES0JROTVaNUFYekxNMzlyTk05WFR6UE5LcGo4T3YvNGtJQ0o5?=
 =?utf-8?B?cWhSL1pmQzJ5bDVDV3JrNHZKRTY4bjdudXhvYXozMUdjL3pHL3FnRG0zdG9X?=
 =?utf-8?B?TFcyM2ladGhLWEdaOGV5SU5heW54d3lRMEcwM0hZN0pPdHVTbHNHdEE4RjBB?=
 =?utf-8?B?MVhkOEtvQjY4endDQjNMNW9ra2tiSCtvSzRXQkNmMERXVHV2SHIwSFlyaGYx?=
 =?utf-8?B?RWNQUlZENENUZEFvNnZ2NDUxVjBxMWFwd2dXS0V2RGtSR0s2N28wbGNyMDRi?=
 =?utf-8?B?bUxFcHBUK3pFaE85aFY4RTBzODVOSDNZR2J3b2src0xYNWJ6NmkwbFJzdW1H?=
 =?utf-8?B?NlFZaU14cnc4Zjc5NDhrQmtJUnN4YWFDL3FUaU1nNDNmb2xlb0Y1QklsTHFj?=
 =?utf-8?B?RDNMSnNpZlMvY24yYU5vRTJRTDQ2Zkg0blBtY0NVU2c3SU5kd3IwV1NPOFV1?=
 =?utf-8?B?QjJZMlIvb1FIRmlXTitRWlJjbEJhekhYK3NsVXJqenF3OWk0YUh4S1d5S2h0?=
 =?utf-8?B?L3Z3d29EY2o3Z3VYSnREUXFKTGJEOG5tNkpLKzdKbGUzQXJLdUNtZnhKaVBP?=
 =?utf-8?B?MnRWOTZWdVVMVkNMV3BKRGlyYTg2QmtGRmw0RmprRDRsb3Z2djEzVXlIVjJl?=
 =?utf-8?B?MXZEVXBCQXR6WVcwTkFMdTNWUWMyRzRlNkhiRmNWM2lIV3NnMWFrUC9mZ0hI?=
 =?utf-8?B?TUErcm8xQlFwWUtUdnVrMk5Ba29xQWJMT1pNUEg0N2tzeXRMUEFYMXJkY3VO?=
 =?utf-8?B?R1lxcnorUTVORXZ0L3ZQWldtNy9HcGJrdVJQbG1rZWlEeWs0aFFZbkNNeUt4?=
 =?utf-8?B?VEt1bkJYYUViOGZjb1ZkZmtueE1SUWRzbHIwVFZEWEhoaDVmcGoyNTUrdVBN?=
 =?utf-8?B?aGtnRTQxdEVJQUZPNjh3emFVTHNzZ2NjQlFFc2lNQWU2SHgzd21JUHVvUkV4?=
 =?utf-8?B?RUJsNDExblFtWCtOR1l2WXFDSFM0R05wSlVheDZHUTQybG9tRi8zSFlTQkVx?=
 =?utf-8?B?UEZUKy9uaVJmb0huU3dQQXNtMWozM0libVVlcUQ2QWtGY2UvNW4zTDVXdFJu?=
 =?utf-8?B?UDlFZGRqZ2tabXZNZlZ5VDdSZGMvaTBsSzc5WUlrRmRNQXBpaGMyYnNJR0VP?=
 =?utf-8?B?SEw4RU1CRmlaQnVJMzJ5a29wUk13ZWd0SFBydG1wWVJHWCs2NHZGd3V6UUFj?=
 =?utf-8?B?RXdXWmxEVEg5WDUwSXBubzRTRlQ3NDhyVU9XMVNLWWZLM3d5MHB0dWpMckJD?=
 =?utf-8?Q?3QaZ1FqewVtLKzT4nz3C4Eu1w?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58f1b88f-f008-450b-ffe7-08ddd3feed02
X-MS-Exchange-CrossTenant-AuthSource: MW4PR12MB7141.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 09:03:21.1118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0f7otV61kAI2NCrNfegbB9wlD7fCFP+STPtY6nElpbNXc57gNfFVA7C2DGsBK2KQ1/vYiooNOUbvK0k6cznEsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7270
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U3G0s5Z4pWmCL3wlE39tjkSk7RflcbxGZphix2rTaSg=;
 b=ik9En4LYSZNa4MVyBYG5u+XNgbDUhE2UsoWB26UarT25DQqSKtgCILQ+nqgAZg0ZUPCMQrIoqBTHM/3IwlKa0QxOLUide8NcQMLcHJAm6/qNOKTd6hYxCZhfI6Cwkba1vBFopDGEcpuya1U0vtLMn2w/qNIyW3TV0ueJQxGDl2IZoIlxY8zDT2nCJ76Vzm/KZAjKQF0khHKpS7lBrg62VNTcrSQoVAAKQ+/HjTA+j8Jwo8B2wq4D7BWtQoBdUFs9ArujsfVNqS31gLHeC31szWnOeNxrr/9vuSOLBpRwibL/sOX0LokyCWoGu8Vy8wdBglbp0dhGYJ7qMy7STjZNMw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=ik9En4LY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v3] ethtool: add FEC bins
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



On 04/08/2025 11:31, Vadim Fedorenko wrote:
> On 03/08/2025 12:24, Carolina Jubran wrote:
>>
>>
>> On 02/08/2025 9:30, Vadim Fedorenko wrote:
>>> diff --git a/Documentation/networking/ethtool-netlink.rst b/ 
>>> Documentation/networking/ethtool-netlink.rst
>>> index ab20c644af248..b270886c5f5d5 100644
>>> --- a/Documentation/networking/ethtool-netlink.rst
>>> +++ b/Documentation/networking/ethtool-netlink.rst
>>> @@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the 
>>> following structure:
>>>   .. kernel-doc:: include/linux/ethtool.h
>>>       :identifiers: ethtool_fec_stats
>>> +Statistics may have FEC bins histogram attribute 
>>> ``ETHTOOL_A_FEC_STAT_HIST``
>>> +as defined in IEEE 802.3ck-2022 and 802.3df-2024. Nested attributes 
>>> will have
>>> +the range of FEC errors in the bin (inclusive) and the amount of 
>>> error events
>>> +in the bin.
>>> +
>>
>> Maybe worth mentioning per-lane histograms here.
> 
> Yep, will do it
> 
>>
>>>   FEC_SET
>>>   =======
>>> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ 
>>> ethtool.c
>>> index f631d90c428ac..1dc9a6c126b24 100644
>>> --- a/drivers/net/netdevsim/ethtool.c
>>> +++ b/drivers/net/netdevsim/ethtool.c
>>> @@ -164,12 +164,29 @@ nsim_set_fecparam(struct net_device *dev, 
>>> struct ethtool_fecparam *fecparam)
>>>       ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>>>       return 0;
>>>   }
>>> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
>>> +    { 0, 0},
>>> +    { 1, 3},
>>> +    { 4, 7},
>>> +    { 0, 0}
>>> +};
>>>
>>
>> Following up on the discussion from v1, I agree with Gal's concern 
>> about pushing array management into the driver. It adds complexity 
>> especially when ranges depend on FEC mode.
> 
> Still don't really get the reason. You have finite amount of FEC bin
> configurations, per hardware per FEC type, you know current FEC type
> value and can choose static range based on this knowledge. Why do you
> want to query device over PCIe multiple times to figure out the same
> configuration every time?
> 

That’s true, we have known FEC modes, but we don’t always know the 
actual bin layout, it can vary per device. So the driver still needs to 
query the device to get the correct ranges, even if the FEC type is fixed.

>>
>> The approach Andrew suggested makes sense to me. A simple helper to 
>> add a bin would support both static and dynamic cases.
>>
>>>   static void
>>> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats 
>>> *fec_stats)
>>> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats 
>>> *fec_stats,
>>> +           const struct ethtool_fec_hist_range **ranges)
>>>   {
>>> +    *ranges = netdevsim_fec_ranges;
>>> +
>>>       fec_stats->corrected_blocks.total = 123;
>>>       fec_stats->uncorrectable_blocks.total = 4;
>>> +
>>> +    fec_stats->hist[0].bin_value = 345;
>>
>> bin_value is 345 but the per-lane sum is 445.
> 
> ahh.. yeah, will fix it
> 
>>> +    fec_stats->hist[1].bin_value = 12;
>>> +    fec_stats->hist[2].bin_value = 2;
>>> +    fec_stats->hist[0].bin_value_per_lane[0] = 125;
>>> +    fec_stats->hist[0].bin_value_per_lane[1] = 120;
>>> +    fec_stats->hist[0].bin_value_per_lane[2] = 100;
>>> +    fec_stats->hist[0].bin_value_per_lane[3] = 100;
>>>   }
>>> +static int fec_put_hist(struct sk_buff *skb, const struct 
>>> fec_stat_hist *hist,
>>> +            const struct ethtool_fec_hist_range *ranges)
>>> +{
>>> +    struct nlattr *nest;
>>> +    int i, j;
>>> +
>>> +    if (!ranges)
>>> +        return 0;
>>> +
>>> +    for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
>>> +        if (i && !ranges[i].low && !ranges[i].high)
>>> +            break;
>>> +
>>> +        nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
>>> +        if (!nest)
>>> +            return -EMSGSIZE;
>>> +
>>> +        if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
>>> +                 ranges[i].low) ||
>>> +            nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
>>> +                 ranges[i].high) ||
>>> +            nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
>>> +                     hist[i].bin_value))
>>
>> Should skip bins where hist[i].bin_value isn’t set.
> 
> I'm kinda disagree. If the bin is configured, then the HW must provide a
> value for it. Otherwise we will have inconsistency in user's output.
> 
> I was thinking of adding WARN_ON_ONCE() for such cases actually.
> 
I see your point, yeah I’m good with the WARN_ON_ONCE()

>>
>>
>> Thanks,
>> Carolina
> 

