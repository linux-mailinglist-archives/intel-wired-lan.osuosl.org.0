Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D805CB15E65
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 12:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35E2A40B78;
	Wed, 30 Jul 2025 10:42:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FUb0Sw_Xxekr; Wed, 30 Jul 2025 10:42:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 757FD40BDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753872143;
	bh=Qn/39z38g4DrzqYXZYAGqHCUEbodaRdkA/k17b/26MY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OGOFSs9ChWyLGSEnAIqUQib9d5USRhMFJW1L24aIcRfMI28SA8rthno5veWV1VJaU
	 ny3INcAxT93xzBXHKwOxebv9NA2+T2THc/5ciO6MarRWUgRlvuhDaj3Un/ksaqUGLK
	 fbN3ZLgehC6SZs1p53mAyxQZUCV56zugCX8Xp+vurD3LPk1mVAqMWYYq6Xk3YQRBrl
	 MN80RZHvgL5t0n5tSxN0A6hNyC9BHE89ngILZE/FSzjV/yjJpVLBLem6V9UMAAUtWl
	 XUoriXDUzdJ4epEVIjvCxk1dpAgW2gQOlpVXcQhJNunsfVPkNz6SWznZU1je2sRnYp
	 o9qpWRrUqveug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 757FD40BDB;
	Wed, 30 Jul 2025 10:42:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DC08186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 10:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F46C40874
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 10:42:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6-RwS_YIp2cu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 10:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.101.52;
 helo=nam04-mw2-obe.outbound.protection.outlook.com;
 envelope-from=gal@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2AB2040154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AB2040154
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2052.outbound.protection.outlook.com [40.107.101.52])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AB2040154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 10:42:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iSeMbi6uHcnbQPsEzoNA6NxOmzAIsNeyf7HmzXoS+UTUq0z7za0PZtz0OC0mSc19l6ry/RyyVsy+KVMc+GkZ0Xld36tC2WA2d62a0wxTU24SDkuHutiq0NA9V1m85bpMRbBKodNPQVFEDgMs+4nLtICczBCNIyvdKXCJYIRd2Q+litmi0ZHWb6iXUMAMHAEIuEtvoXXSsvumGLVWzfVD8ZCxjSgpnlxnze5hZ0EgKqFps3KRo31uPO5/UX8yBCE9A74Rkr0kt2EySPeKaYamaViFAzMey5ClcHLafBJ0+NReEr7HUlEdCBxAREvRqa0Uq/gpbyBxAsgJ+hRm4IxhZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qn/39z38g4DrzqYXZYAGqHCUEbodaRdkA/k17b/26MY=;
 b=OZc9nJ2Vj2Mv/4XQNFhHWq+C/4wtKbM7sqKRg98FZXgvw0rMFDsmfp9W066ExdoXkf8ltJQwuHn4/z7UQZJg5N2L2oljn8naaCElPXps4taH3VmGgEHi8m4LHI4BcJYTarrr5xGBmCBAfX/hpZsOqxXwl8j6m5OkF9d6BZaf6gLkvRsK58Nob3djm4hsjGULXGhiN1RbK6KcDFSsXYiVMjsPEyseThpxCr6wcFzXHLMR93ATlkp+e7yzO7EIW1GkYFi+OgrB5x5+USSHr4thuBCDNP55qHuD54uFWYV+9tNy/40gHVoImfPhfHOfu7/s+XepOHVqGLSFLP0ZrtP+zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB7500.namprd12.prod.outlook.com (2603:10b6:610:148::17)
 by DM6PR12MB4386.namprd12.prod.outlook.com (2603:10b6:5:28f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.25; Wed, 30 Jul
 2025 10:42:18 +0000
Received: from CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2]) by CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2%6]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 10:42:18 +0000
Message-ID: <3e84a20e-87ea-413c-9e9d-950605a55bf6@nvidia.com>
Date: Wed, 30 Jul 2025 13:42:12 +0300
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <041f79a2-5f96-4427-b0e2-6a159fbec84a@nvidia.com>
 <1129bf26-273e-4685-a0b8-ed8b0e4050f3@linux.dev>
From: Gal Pressman <gal@nvidia.com>
Content-Language: en-US
In-Reply-To: <1129bf26-273e-4685-a0b8-ed8b0e4050f3@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0019.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::14) To CH3PR12MB7500.namprd12.prod.outlook.com
 (2603:10b6:610:148::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB7500:EE_|DM6PR12MB4386:EE_
X-MS-Office365-Filtering-Correlation-Id: f82f0200-bdef-467c-e305-08ddcf55c167
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmxuUFR4SUJkRnhicVoxa2lBTVhKTi9OYk1iT1R2bmsvbTdpVHBMWmlpRE9F?=
 =?utf-8?B?SERMRXQrTjFuNEszd2FoWDJjZUZ5VU45a1hBRnl3QXQ4RDVRNmNJMVFsT3M5?=
 =?utf-8?B?M3JGblZvT2NPU3BPK2trUSsweVl0akdhdlloYzBOTk8zS0ROK1NmbVIyKzZT?=
 =?utf-8?B?ZnNuOGUwckUvZzdqbWF5Q1FIL3Q5b2l5SUJqV0JqNTVGb0U1Mm5kR1NiYjlF?=
 =?utf-8?B?WUtEUUszbXFES1lvdEtFTzYvWFRlR21Gb1hqTlpoNEhmbjFFY0FqT2JJOVFv?=
 =?utf-8?B?MzAzWkp6cEtwOEl5QXY0dVVNRkJkSW1yNk1HcytZWDJSdVVvWEZxOUlCWmwr?=
 =?utf-8?B?VWhLNzB1M2NoZ2YzQnBFTG9sRFp3WlN6cGVOVWp6U1BpYW9WQk02MWZYVm04?=
 =?utf-8?B?ZC84TjZKdHRmTjJBZ25UcFNLN3VWM0hia3Q3NGdlNFo2WmdwVFJuVU5RR0tQ?=
 =?utf-8?B?djNqRExHbVBsVmV1V0ZxZVdLYUVjNnliNFMyNllZNGIyOUxGd05HV0tKSmZ2?=
 =?utf-8?B?VzVQaFkyMnZub3piTWgvOGZrbnM1Ri95cjZWbmpRWHV5cVlEYTJiM0llcG9R?=
 =?utf-8?B?ZlZ2TDBaZE9OTXVjT3J1by8vNXRSdGxaTyt5YVo4U0cwVTljOVpzVTJ1YlV3?=
 =?utf-8?B?SUtyOE93cFc0STh4SGNoNnFleVM0YWlzeWdodUhhaGpubUVXM0VvcXZvdE51?=
 =?utf-8?B?bG56VVRrVk5sQWVmSW1IbDh4YnJyK202S0tBRER6akxjNnJRV0JzMVlaUHdR?=
 =?utf-8?B?YnFrY1kwTWtDNEdWbTNoKytpeGFyZUkvYUd5UFRBZFJ0Y0lobnlIc2dKWGNa?=
 =?utf-8?B?eXRBL1prSGpCVDBFQVhnSTcxNDhTZTZkQXU5bTlHeVF0Tlh4MytUZHJNWTV6?=
 =?utf-8?B?YUZDUXRaaUhlbWk0SURMditxNS9XSThXSVFLSXFCcGFaWktSVk1Gd0R3cllo?=
 =?utf-8?B?MTM1NGR2R2xRNFhmM092aTZtTEozWTQ1WUpzRVorUnZ4RFF3em4zam1BQ0dD?=
 =?utf-8?B?NXk1Vzl1YkxqWkdVb29QZi9HdjEyZy9LR0JndFRROWtvRE1JRkN1MUNvVXh2?=
 =?utf-8?B?WXpnMzQ3c2NIakRRSlFQNnR6c05JRW1ENGtVanoxckowbGJBUVE5dlNhN0ZY?=
 =?utf-8?B?aDdvR2ZlUXVFRjBlNkZXSEtoOU9RYy9OQjN2aUlCSUJ2NmNRMDFZeXZqc3M2?=
 =?utf-8?B?SWU1aHhkSGgydE1wS2h1NFlQbThOUmdsaElwZHRGYnNyRmdSa0tHNnl1bXJ1?=
 =?utf-8?B?cmMraTd6cjBaM3lodmhUa2haUTJVMmFpNHprQWRIYVdwL1FNTnhrbUt5OHBK?=
 =?utf-8?B?N3ZjZWRkTmc2Zmd0KzlmcXB6dVJvdzlXZ0NuTDhoUmlUMm5Nay8rUEZYQ1I0?=
 =?utf-8?B?TThlUkdvbHZyZlB6N0NMb08xVCtURUxPT3hkWE10M1Q2Q1RLRnhCa2ljRHh4?=
 =?utf-8?B?bUkxdnUzUW1iZU9tWTVhRUVucmJtQThUNW1jekNyWVR3T1ovaFJ2S041alc3?=
 =?utf-8?B?eXlXeWUrdE02azhwUlNveitoc3pLNUx5WUdoTVFLR2ZCbFkyNW1ZSGRML0pj?=
 =?utf-8?B?TmxsQXhPWkh0c2k2UTl5OWlSbkpqVWpCbkYzcGtHdjFHb29ITFVjN202TGpL?=
 =?utf-8?B?clY4UmVnYzhCcGRvSEVDdC82eDZLYUdYVlVaNmwzV0JIb1JGdUl6YS9lMGkr?=
 =?utf-8?B?NzFXL0oyWWx5ZnRHc3JhQ0FkVnZyclIrWUcxUEFmZHduN1N0YmJxTjJHTDl0?=
 =?utf-8?B?QzVIYWhTQnpVQm9pVXJ3ZmJ6c0MrR1g3RFNIdGhtUkZuNlUrdTg2aXd1ZzA2?=
 =?utf-8?B?SCtKZkhJb0Fnb0Fkb0dLaXZyNDNKaFAxNndScXBPd3pZOXpId21ROG5BZ01C?=
 =?utf-8?B?MXUzVUhNTmpyMVZpSTZOVkgxbENZU2pkT1J0RmdoTHVFdmdOOXl0aFlPeGln?=
 =?utf-8?Q?VLIGCh4Gv3o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB7500.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RktEaG1EbVBGSXRnTGswbTBCSHB4b1FXRHdWRjVrLzZMRFJJUnlYZ2hvbnhn?=
 =?utf-8?B?U09vQU1oVS9Yeno2M2h2ZW5NdUd0aWN6WXlnYktGWVFVVXNqV1FYZ0IwRHp0?=
 =?utf-8?B?VU1VTXR2Z1p4TDAxbWtITW5pVUJOb0dPMUg3Q3ZMWE9TNnl0TWtJR2ZlL3dK?=
 =?utf-8?B?b3VnanpVMUVBZ0YwbmFZM0JrTStUeUVHb1JVTFNpcDJkMXg5MWRaTkNDV1V0?=
 =?utf-8?B?Z3o5TWVOdnk2d1N3ZFQrelQ4SXRCbHFHR1hiRkMza2p1TXRBQ1NSbUFhdDlW?=
 =?utf-8?B?Yytac1JxR2c5ZWdJS2RtM2ZNK0htcnFVWUVxSytNdzVXR2h4bEFDaThaUGRV?=
 =?utf-8?B?ZFdPb3U0ZU8zdVJ3a3NuakhIYjVyRm1CTzBqQXBuclJxL0hFbndIOUhaekUw?=
 =?utf-8?B?eUFxN1o4WTBvY3dNSnRVQVpmMjVyRmwvT2pYSGhXSWhvNzhCYzBBMXFoVUNy?=
 =?utf-8?B?Z3pJK3NuOVJBQ1pLakRPd0NCTmNpVEQ3NTBzY0ZTZTVsVmV4NTIxN2luMXhP?=
 =?utf-8?B?MFdxZU02N3hFOGJvb0NFNzFsSzVoZks1em5WRkNXV1owQW8rck5ka09FWkUr?=
 =?utf-8?B?bjJGS0RGMnlySVRDcElPckpkOXh3ZGV5MzVVNnM4YjZ2dnQ0VlY1L1p1cGVl?=
 =?utf-8?B?UFVwN1R1Mkp0cktxb21ubzFmRmRaa05zalEzYkNaOHFkYS9iSnZYTWVjeWl6?=
 =?utf-8?B?OVdjQU9uWTJURENrMll6NWladnFWeW5nTVEydm83dnFscmI3OHk5SXlOUWRD?=
 =?utf-8?B?SGRJUjc2bXRDa0NMRFRCUTF1R1A3QWFsYjBmTklHUHFCQU01Qk16MVZrNHYx?=
 =?utf-8?B?TEIxLzRLWGVoTXZrRUwvamxwOHRPTHhzWTJybEhxSkVBOTVBTnBTaE0yYnRI?=
 =?utf-8?B?Qng4elN0ZlVmdCtwanNEWE9RR1VVNEpHUDJuQ1VTUGx1SWtTcEpWek4xZUNR?=
 =?utf-8?B?Y2phV01wV254RnYwZXplNkhqbzJTbFRIRFM3OE4vVzFacXk3UUlRWnZQYi85?=
 =?utf-8?B?c25Ub0xaa05lckIvVFE0RS9IdlZocjJYZi82TXBGVHkxbll2L2g1ODVkL3Ry?=
 =?utf-8?B?Q25Ddlh5RmFjbExwWW43NWdBSVhNekFzZkEwMWU0SUtZMXVKajR2V0h0RURC?=
 =?utf-8?B?aTNBSWV5YW96YUQ5M1NyOVIrdWVkOVBWcEhaU3AybTRDaVRWU0hOSGNSRDFP?=
 =?utf-8?B?K3A0NXdYK0doOHJBWlNOd1ZMY0R6blFPdW1OZ212TkZmTDdzWEZxcUJyc3cv?=
 =?utf-8?B?NWo0QUdjTHJOb2pvS0FQbXFGM25JSkVwRXdDRjlUSmZPZktXUk13Q042NlpR?=
 =?utf-8?B?N1YzRHpqZkhEek1yTFkxU3FmMFhEd29BSzhkN0NpK1I1cVUrR1RHOGUwUWJH?=
 =?utf-8?B?M3lJaGdkYzZrcHkwSmR1N2hadGhock5lR25XbkoxYTBlZ2E4UnRnMy81WHFE?=
 =?utf-8?B?a1JISmFzbGo3Z2M0Q1BUdm95d0ZFZDIzQk9JNFpUQUY1R0kzUjF4cXZXRWlm?=
 =?utf-8?B?SnRURkZ3RENkbHoxaThPK2JYWW9ZMVoyc0Z6Tm16YlpFZzhGSG13M25BbDhr?=
 =?utf-8?B?S1lnbCtvSmtVTkorNVorazBESll5STFHTnRCc0tCb1FPNEtzT1ZsT0xuKzdR?=
 =?utf-8?B?UXBmM0pMbnFYMkNqU2tEcmJGSmFwSjkrVEQ4bEZ2eE9CaGFRR3NneUZycWVN?=
 =?utf-8?B?cTRWSzJFZmRnay9iY0l3N1ppUlJvY3RPRDg3N1VJTnpQbGZhUUtGbGs3TVY4?=
 =?utf-8?B?OVBZK2FQWTVKelRSSUhEay9DVTdON3YvVytoZmZaZjJTbHVqODVlWmY5QU9T?=
 =?utf-8?B?b01tdnl6dWxMRzMzWm56ajRpMlk0eWRwVzRSdVlYYVcvSnd3aWdUOXVuekFE?=
 =?utf-8?B?SHBuR3Y0TkpMUk80Tmp5SVdaclQwb3I3TWFXUmVSM2Y4TTd6R2x0Q3FoM2ZG?=
 =?utf-8?B?azVOWVF0MnFFM2tyWU4yYzVWUEEwd05iamFiOUUwYVN3ZFA3UUE3bU44Q2Iv?=
 =?utf-8?B?aGZjazI4TEJzQWltS3NwNW8yeW1uWEVsREI3L0RuZmFIdkRaY1U4TkUzTDkw?=
 =?utf-8?B?dGFIYTBUTll3bnJrNDdXd09XNGlPdFVaWURPbTNGY0V1QUZBUG9OZEtWdHJG?=
 =?utf-8?Q?qyJHUq1IBLG4zJ/4MAIwK/9CT?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f82f0200-bdef-467c-e305-08ddcf55c167
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB7500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 10:42:18.3910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e2Z6n2wzQ6GKBgmvuCKSaXzkm42VJHNN0dAKsqrhP4deaiSrC9s9xA6doIrVK4zu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4386
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qn/39z38g4DrzqYXZYAGqHCUEbodaRdkA/k17b/26MY=;
 b=Kz0RJWfUaS2z69HOLbFhowEj4PaBVyyYlq99MP+1U6P4DtH7xASSJsOe5bdp3ni0dlpL+L/Tu3DFW+NMqBNwYHseMxHSeROipr0lD1/6MzydvF3FXkx3Hbg3sAEi6vUXbqqm/9V5anwmFtR+aAwxfdxPrHK4u7iQF294POPSEtr6w+iIaxQbsDiJZLepXkM5EVVZ0k/px+NaGuSRbjhucSg/fb/WlfqBNP5c9qq/7yXEBt+DPyCJYlvTECJMkQxMKBOBmvCFtpnLjj9P61uzEVRbT2HxhlI4ya4/F88n1MWO9w/Rfqi0cTrISRJx4bVA3THLYBmvTGMm52zMOkSFRA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Kz0RJWfU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On 30/07/2025 12:29, Vadim Fedorenko wrote:
> On 30/07/2025 06:54, Gal Pressman wrote:
>> On 29/07/2025 13:23, Vadim Fedorenko wrote:
>>> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/
>>> ethtool.c
>>> index f631d90c428ac..7257de9ea2f44 100644
>>> --- a/drivers/net/netdevsim/ethtool.c
>>> +++ b/drivers/net/netdevsim/ethtool.c
>>> @@ -164,12 +164,25 @@ nsim_set_fecparam(struct net_device *dev,
>>> struct ethtool_fecparam *fecparam)
>>>       ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>>>       return 0;
>>>   }
>>> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
>>> +    {  0,  0},
>>> +    {  1,  3},
>>> +    {  4,  7},
>>> +    { -1, -1}
>>> +};
>>
>> The driver-facing API works nicely when the ranges are allocated as
>> static arrays, but I expect most drivers will need to allocate it
>> dynamically as the ranges will be queried from the device.
>> In that case, we need to define who is responsible of freeing the ranges
>> array.
> 
> Well, the ranges will not change during link operation, unless the type
> of FEC is changed. You may either have static array of FEC ranges per
> supported FEC types. Or query it on link-up event and reuse it on every
> call for FEC stats. In this case it's pure driver's responsibility to
> manage memory allocations. There is definitely no need to re-query
> ranges on every single call for stats.

This is just adding unnecessary complexity to the drivers, trying to
figure out the right lifetime for this array.
It will be much simpler if the core passes an array for the drivers to
fill. That way both static and dynamic ranges would work the same.
