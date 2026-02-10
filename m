Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKzqFeiwjGkvsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7C01263B4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 513CC61096;
	Wed, 11 Feb 2026 16:40:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ziF1RAwZh2N7; Wed, 11 Feb 2026 16:40:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A904060BCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770828005;
	bh=cstK84dcUuyRVSOuTcQxy2W31zuB/M0IW6tDX+QlZJk=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=MQOsK2rkPwL7Mt/1FD2zf6bf6kR/J4cibLiGjk/anrwgRVG7lZl5g4ysM6J/ilqVR
	 HRSWsg5whas7vsEsYPzh3+iIBPOdyKr2Oainm3vDT8GEEdTcNRDRzcEEckplZGbISc
	 dgiyl34uq/AR5gq+766HHoVvTzErvsHBd/MOSFIHO08xOm4XLEp7nlfX8/R3SjjDc9
	 WTObHUSBM5FULb8A8CneNFze3CRHAg6hXxsdk1k/u8/I2Me8B8mK1E+t3ww8agrQRS
	 bIagA2OnXpcGFTZquIREDDnhVuZMSTQDqmY1vQ3/pB+mj8T2Z73zCbTtC3JXj8RT/q
	 9wWRjrmOd2jww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A904060BCA;
	Wed, 11 Feb 2026 16:40:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F1111A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36C0B40DFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ygm_hfyUcrJg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:28:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.209.23;
 helo=ph8pr06cu001.outbound.protection.outlook.com;
 envelope-from=dtatulea@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4348C40892
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4348C40892
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012023.outbound.protection.outlook.com [40.107.209.23])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4348C40892
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:28:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G8RkgRUQaTBWTcL0kz9sw1oKyq4TctcvjjF5jb+hwRucQkXfaGb2NVr45yVmeznhumGrj5KtjpOzdWgnxSmjtAgJHf9NOeYh5bLctDFT2tNPu8lM759nRRyGQt5wQm6W31AsNaOGI0CNEBrAz7MGooJ90Qa8OXwB3l27MA41i9x/g8oi95RgPDHGDydgGGibqMX1w+psN1BceHAVD7LQ6NoKC1tsBZ1nzAEp7Hbyot0P/Cy660g5G8RAthQbEbUg+O2rm1McdZiGNA9OMXsjvo1DVt/nOqgO7gR01F+UaO+PUUWgKV0gGNhIXeZ4Bv0lQ047cmSNU3Sf3Tio7uA+EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cstK84dcUuyRVSOuTcQxy2W31zuB/M0IW6tDX+QlZJk=;
 b=MPdMZMYemD0MtjKHNlWv5En6QANEO+9WBdM0PhXJ0uSMBDeZA34I83Qv3wGdEP1zJrAk9vPsH1lJJYVKx8cyAd01oMXkFoP/O/6BM0zrxb7bvjyEYoMyMswqSf2FsJ2UCczgXdKGOQXPb8OWsbSHTcAbQJyFCPhOjMMhx5FMrVGiZBT65pHJx56yZWC7DFm0xDu0DRICUdWYczxVn5x2pqPdK+Pc5Ha+HQQoTdQx6+/+o94EvAlIBExHyxlKawuGlHL9mVnKpxanlJVygMJEWPVzNYDv68dfYd5RpdankXhd85JTMEqH9pLRUjaC5rtnTnKjBHkvM9LOnzIy1oaoUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB8728.namprd12.prod.outlook.com (2603:10b6:610:171::12)
 by BN5PR12MB9487.namprd12.prod.outlook.com (2603:10b6:408:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.8; Tue, 10 Feb
 2026 17:27:58 +0000
Received: from CH3PR12MB8728.namprd12.prod.outlook.com
 ([fe80::2641:1046:bdf3:93d7]) by CH3PR12MB8728.namprd12.prod.outlook.com
 ([fe80::2641:1046:bdf3:93d7%6]) with mapi id 15.20.9587.013; Tue, 10 Feb 2026
 17:27:58 +0000
Message-ID: <e229a820-e2e0-4dc7-a6c2-03ad6f2bdac3@nvidia.com>
Date: Tue, 10 Feb 2026 18:27:48 +0100
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, bpf@vger.kernel.org,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Eduard Zingerman
 <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>, =?UTF-8?B?UmljYXJkbyBCLiBNYXJsaeKImsKu?=
 =?UTF-8?Q?re?= <rbm@suse.com>, Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Tariq Toukan <tariqt@nvidia.com>, Nimrod Oren <noren@nvidia.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf> <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
 <20260205124638.hxzvjiocephzlrk3@skbuf>
 <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
 <20260205134046.pggwyosutj7ggi4i@skbuf> <20260205175408.30ab72a1@kernel.org>
 <20260208125934.f4n5mri2pit6s6gn@skbuf>
Content-Language: en-US
In-Reply-To: <20260208125934.f4n5mri2pit6s6gn@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::6) To CH3PR12MB8728.namprd12.prod.outlook.com
 (2603:10b6:610:171::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8728:EE_|BN5PR12MB9487:EE_
X-MS-Office365-Filtering-Correlation-Id: 70d0f811-be2b-4bc5-bd83-08de68c9bbe9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0NsQWJzQlRNOU1XSEFSV2o1cklOek05NTVIdU5jOWlTM1lwaGp1VXZmWU1H?=
 =?utf-8?B?K08rcFI3NG9EcVd2WlNIUUIxK2xPQ2hGS2JXT1NOQ1FieUkxMTI1V2MwTHNS?=
 =?utf-8?B?Uy9EOWpoa1BZazZUNDNuNFB4eDFpS3EvQ2l0ZWNQSDJIRjVoSk1XWCt1N01z?=
 =?utf-8?B?VlNUMDZIcGhJY1JJTW5kamF0d3drTXZCYVBmdVZnVnpGSXB4UVZhTmtrZHBE?=
 =?utf-8?B?WW5ySm42SkMyT3AwTmZPM0F5NGxWdnYyM1oxSDUxZmliMFBoelZLWFgzN1JX?=
 =?utf-8?B?MUJWSHFqRThNY3VFYmZPTmJ4NkxTVG9WbHprRks5ZkFteDZGdHBTb3oyRWVY?=
 =?utf-8?B?M0pDNWdxaUlCMnV5cVFWRTNWWStZTFF0RDZkMitJVWJ5L0NoLzN3VzNnbzRs?=
 =?utf-8?B?YmdjSkM2YWZCV3FRUFlOWUQ0YXlLcHpZWUlYVGs4Z0RtVFprVVVBaHM3K0Yv?=
 =?utf-8?B?VS84cHF1cjNkYXdDcFZKcE8vUzVRdHF3TFNUN1RsdU1mWFQwZWFpeG9ORVdx?=
 =?utf-8?B?dlJvQ0p3Q3VVSVRNNlhDM1BhaW9CNnQ3SHJOUG0zU2k3NzRTREZ2NE9QcWY4?=
 =?utf-8?B?ZFVxazl3ejhpWW8xUXN5N2NGdU5RSjRrQ0ovVnVCSHM1akYxaVFqTEF5RkFu?=
 =?utf-8?B?c1dXajJrZHR3aS9YVDdOd1ZKQm9BcDJmenJiY3o3RGV6ZzY1K1FFdGJETFli?=
 =?utf-8?B?eTR3SzlBRnptdGNJY1lZUFFmU2VUUXVCZzE5MklPTWw1aTRWOVlhR1NsWUd1?=
 =?utf-8?B?dUFJc0phZHh3Q3JBbUtjWEN6Y1NTRnhjS2F1ekljR1VyTElQSVRHM0s0UHd1?=
 =?utf-8?B?SmtlWGJCT0dwa2VmWnlSZXdqWk1maUQ4QmpVZFZZOVVyUFNQbFBIR2VWQVJx?=
 =?utf-8?B?SHpZNXVCbk81UUJZTFNwdXRiZ1FBQ1I2dzN6QWJOS2FHUHRuTDZDeHVFbUQx?=
 =?utf-8?B?MGpQS1d5T2szZHZidTFaYnNMUjBUMWxiL0V6cjNGbTB3Z2o3WU1wT2RMcWpK?=
 =?utf-8?B?VVVJdGVDVDZuQXdmUE1EWkpYTFBMbmdrSGtQdHhMQXFUeTNEcExXVTZwWm9S?=
 =?utf-8?B?aG5RZ1JYby9vdHpIeU9lQnBldkFyeVJMbFpSUE5XM1A1bHNhdjNKVFNhUXJ3?=
 =?utf-8?B?ZDlRZmFkdnhDWlprUWlrV3hiaDhpS0wreHlBb25jeVNTd05zRU5ySmJiclBO?=
 =?utf-8?B?M2tlaitnYzBSeE4zWmZzNjdUUTJFYUZyYlpodVQ0K2hDRnMxcVRrRzZsakd4?=
 =?utf-8?B?SHU5RUtrc3dseTFBWDVRRXdWKzJyRlAxYWxJZUMreG5qNjhRalpCckl2WWJC?=
 =?utf-8?B?c2xGakI2aW0wNWs3WGNnVmwyZGJRb2c3MXpLUEt3dWxsalRaeGc4c3B6bHFl?=
 =?utf-8?B?Y1pUUFJ3RndJRVA3MnFENGd6RHpzY3R1Mm1OOEhKZGIvYjlaYzhxak4yYXNE?=
 =?utf-8?B?ZGRZNnRPNTBTaXVHQklRK0d4UytLWXhqdEJ3Qys5QkkvdHFSbnFMeTlxbjdU?=
 =?utf-8?B?cFBCQ3FtaHlIYUtzaWdlZE5sY2s2MG43cG5WUWlkdis0MzlsVGhRYno3SUpx?=
 =?utf-8?B?TStZYUZmU3pjQldBbUIvU2JwaEg4Nk9WazUybzM2dlVVUjh2TldvRTZ2aUFn?=
 =?utf-8?B?TFlMalowaEM5d0NRTEFkSWQxYnRqclpOWjEvYlFLVUF3dG9ZOGtjSmpUTGRP?=
 =?utf-8?B?NTlRUFl2THVCZFl4NG02Y3g5eGxva0lqbEpVbmQ0RHdXUHRhMmZ2YWlNdHpL?=
 =?utf-8?B?eXBEWVlyeFlyRXJmdEx6alNnTks3S203Q0w3MGY0ako4T2RtL0xrTW8yV1BQ?=
 =?utf-8?B?azVBaFdSblNxcVRFWTZmdkFjYVVVVnNyNXErejZJd0pFOFBrTlR4YlhCUXh4?=
 =?utf-8?B?ZGJ6dGdHNDBIbnRFdjlIZmFuOHJQZmszRExHYUowaldzV3IydmpyTWk4RjNX?=
 =?utf-8?B?emNVVS9KRmJSUXArSGZ5RUpsUmsrWEFzaWVBN1dKMFVZTlJpVUhVL2pJU1Bz?=
 =?utf-8?B?R0cyNHNLWmhudkpVKytOTTg5Y25aZTgrdHArbEJJSVhLNzNIVGE4Ui9FVE1M?=
 =?utf-8?B?aHJxVnJpRWtQd05USWJ6STYxRE54dEVqQkMyajk5K1AzWGJBQ3RFUmU3c1N5?=
 =?utf-8?Q?KKJA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB8728.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVBCbXptcTgvVVJ2YThDUDVFb3hWZTV2bXBYTWEwSXlKVGNmaVE5TkF1bjcv?=
 =?utf-8?B?TFdzYnRGNUJ2blBrNCtVNXhBL2JxYXM5dkVoT3hWM0QrSEN2NUgxa2daWWMw?=
 =?utf-8?B?UEI5S0FoZXllSjdlcHRGNUgvNDk4aFVOemxlTEN1SHpnYjlVbFhRajgwNTZ0?=
 =?utf-8?B?VmtEUmI2Z3k0S0ZpRW9tdWlweGRrNkRIS2V4eCtRZ1BTL1BRU2NoaHJuR3NN?=
 =?utf-8?B?SGcraGtuNTJGNTFXUnlTa2lHUWpMaEQ2OVgvKzVxV2x6NlgvWGYySExQZVAv?=
 =?utf-8?B?SFRKdERsWEFFbURLM1o0Q09nOHhXVFJvT0dKdXVXS1ZBVmM3SE1oZXhWOVBB?=
 =?utf-8?B?OUpsU01VWEo0MFFvT2NIY213eDBZS3hvelpBMzV4V0pLNXdZNWsrVGFqdHJh?=
 =?utf-8?B?NkhJdDlFeVVJOEZuTkhhRFVZRU9QQUZSUHRHcWUwV0tZYVBYL1JtcG55TTZJ?=
 =?utf-8?B?WHE5UE1hQWFvWkV5OWhLUWpsdUMvQkYyUVFRNzRIaDd6dkJHLzRpZ1doV0VM?=
 =?utf-8?B?L3ZOZlEyWVFZQ0xVZHZ4bGhvdjFYZ0IwSUJjNXlQTDVqT2oyQlppM25KNXR5?=
 =?utf-8?B?L2w0d29mZHFFQU1hUWV3Y3BnWk5iTjNaOHZxWG9pT1ZTZjdoSzIyS1JibG04?=
 =?utf-8?B?anpyVXVjVmhEZWMrNE1WNU5zbHJXczhZVlFSbzhyeGs2SjU1T1JhcitxZHNR?=
 =?utf-8?B?UzQ0Yks0OEZiYTlBNkdwb3NPUFpqSnMwditEQzQ1eUlheEJYalZnT3pSNVVK?=
 =?utf-8?B?K09jdDFiaVp6aVpwaUxva2tHenlqbmdoS2JuV3NHeDVHR0RlRWx6a0FXZmJh?=
 =?utf-8?B?TEd6elVsNDkvK3phVGl6Mzk0TUppT3M1S3FMbXNQNkoxU0dLOVk4ck42SGdV?=
 =?utf-8?B?cTRLbkw0U0NIdTd1bWtBcDFGMGM0MUh3bVhmbjI3SDFqdjdzZkxQTllGQjRp?=
 =?utf-8?B?VXZYekxsemoyenIzbjBVS0ZrRndQajJqZGtLNlBkUmlUM0lrdW1GekVNYlFx?=
 =?utf-8?B?VkN1MTVhZk40UXUyQm83ZzRvaG5BMVYxMzdZYkxKMEJHVkxZZ3dGRkgzbUNY?=
 =?utf-8?B?MkdNNWFiM3U1Rm1ocWJDN0Q1TW96R2pOcFowbnV3dGRvMmVkL1JwaEsveXdB?=
 =?utf-8?B?WUx0MytoY2cvQThQMWpEblRxeFJVR3l0STg3VjErT1p3M2FJVlkvYUw0UkNB?=
 =?utf-8?B?STVqSlV1SGdxZnF5TTBOam9mWU9vQUdabmNUWWFhc2MxNnlsWCt6bTA4bmZJ?=
 =?utf-8?B?aWdFMG1nVGJtR3EwWGtJcU9KTDcxWGhXWS9yZFdERUJVN3VaVWs4TzE1dVVD?=
 =?utf-8?B?YWFwZGh6SWt6Y2pZYUVXSGdKQ3FiampFcHhLN3E3VzNWU1l6ako4TnduNDhq?=
 =?utf-8?B?dlUvRFlDWjZMbUtjN3lKUkg4Wm41bFVHSTNWY0N0c05tclRKUGdyaUpQMXN3?=
 =?utf-8?B?UEZqOStRdWJsSFZxRHlEc3FlTW1KZ2tYbkdsaXpweVFSalV4YWh2aGQ1TzRJ?=
 =?utf-8?B?SmZhVXNESTRvS3pGbHpaOHRLdXpKSFFZRzMzeG44WmdFNXExT1AyTGlHTEFq?=
 =?utf-8?B?UEZTSTBON2N4ZDQvREU4UzBlMHBqTnpnUExseURPa1RaRWdiMXlpTUpuRUt5?=
 =?utf-8?B?SnBxOGNmSnVHeGFJOU5KVEpUdkxUOXJ6QnRtY1VNSGRoaVdKSmVhblRHVzI1?=
 =?utf-8?B?UUQwNklXTzhWV0pSK0VBMXRUdGowNFRPM2JzaXprYUtRN2Rkc1gwdXpNUU9Q?=
 =?utf-8?B?TktKZjRtRHRQWUQxRzJ5SnpaTWxvNnpBMWN2NzJ3cWJZbFN5WnlQVnh0a1pw?=
 =?utf-8?B?OEE4UW9pcnQ5akhidlBDUGg0ck9Kc3V1UGpPL3ZJOE0vRk1CdkVQTkVhaHBK?=
 =?utf-8?B?bVRlWVc3b2oydzQyVFl3R1dTeERLR3dYVEpHdUxxN1E1Sk1UciszNWMvZHB4?=
 =?utf-8?B?TTJyR25DSTF1cnNuK1A2Z2ZBd1hqK0MyanoyMzN5TEQzWU5uYUlTTFNnTGZR?=
 =?utf-8?B?MWhxeDc4WS9Hdm9vYVZkZklVS1N4cWNjdDl1V3V6SHhCSDlTRkRvSG9jMXV2?=
 =?utf-8?B?Y2RXemhoNGRiRFU0Y2hzSFc4bFpOVWF3MVVuc21tU1JUc3g0eFZQc3lQeVJl?=
 =?utf-8?B?Q0kwMGhQZmpKVGFTUkEyS0o5OU1TRXRVeERlRlZLbGdKeW9IeVhnYUVyT2oy?=
 =?utf-8?B?TVdtQjFzcTJ1bC9tc2NSSGgyb3FyNVdKTUh0TmRKb3lYalFSa3ozVlp6KzNU?=
 =?utf-8?B?MWszeHhPY3dzcnJFcWF2TmtiLzNETXhUdlNkQmhWaDhiSHhWWFdkV2RaZEx3?=
 =?utf-8?B?MTRaK0dFYXhlNDNsWENWTzZjWW0vMnBSZCtqZ0UxeWJ4ZVhMUzJBdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70d0f811-be2b-4bc5-bd83-08de68c9bbe9
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8728.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 17:27:58.5557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ShZYJWKY+fFbpEIz8KxdFbjqE0ef9ziKApKzKB3aD52jJ8+POfL8gTUrvQn2dyR+bs4ihNVhRwceGISpT68rVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN5PR12MB9487
X-Mailman-Approved-At: Wed, 11 Feb 2026 16:40:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cstK84dcUuyRVSOuTcQxy2W31zuB/M0IW6tDX+QlZJk=;
 b=B8MgP372Sz5TvFhC1dvh4YMkcCdnsYwzjYuYmVYfA9UKLrhQ8vdfRKL5E6MJQWRMumf7jmPx3cCaVAcfbmpf85pTJNu8rYQfLr1x1zq9L5OT5NIaCnS/eS8qoiQduEhiPzJ9tBkBUIH9p8N9kjvRrtNTuiLYMpnRoqPfbtwS/JAQ/NJ5ydeB2NqO3TccsfZXUT8gxqvAX0oKeOhZlAsmzeFqdU6oSrOFTWcqBUBJxuhQluBsb2E+w2e/Q/vHdMwHx0pTaqMtnr4JIkLUH1XMdLSXrihveTETrw2MPrVakB59eFgwYDUQTL2yghJeP6TgI2vi2+m42QnJFMTmJNzISQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=B8MgP372
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
 XDP RxQ info frag_size
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
From: Dragos Tatulea via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Dragos Tatulea <dtatulea@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:kuba@kernel.org,m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:tariqt@nvidia.com,m:noren@nvidia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,nvidia.com:mid,nvidia.com:replyto,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[intel.com,vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[dtatulea@nvidia.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AD7C01263B4
X-Rspamd-Action: no action



On 08.02.26 13:59, Vladimir Oltean wrote:
> On Thu, Feb 05, 2026 at 05:54:08PM -0800, Jakub Kicinski wrote:
>> FWIW my feeling is that instead of nickel and diming leftover space 
>> in the frags if someone actually cared about growing mbufs we should
>> have the helper allocate a new page from the PP and append it to the
>> shinfo. Much simpler, "infinite space", and works regardless of the
>> driver. I don't mean that to suggest you implement it, purely to point
>> out that I think nobody really uses positive offsets.. So we can as
>> well switch more complicated drivers back to xdp_rxq_info_reg().
> 
> FWIW, I do have a use case at least in the theoretical sense for
> bpf_xdp_adjust_tail() with positive offsets, although it's still under
> development.
> 
> I'm working on a DSA data path library for XDP, and one of the features
> it supports is redirecting from one user port to another, with in-place
> tag modification.
> 
> If the path to the egress port goes through a tail-tagging switch but
> the path from the ingress port didn't, bpf_xdp_adjust_tail() with a
> positive offset will be called to make space for the tail tags.
>
Jumping a bit late in the conversation...

We were recently discussing this limitation when trying to add growable
tail support for multi-buf XDP buffers in the mlx5 driver (Striding RQ
mode) after lifting the page_size stride limitation for XDP [1].

It turns out that it is quite complicated to do in this mode with the
with existing frag_size configuration...

The issue is that the HW can write a packet in multiple smaller strides
(256B for example) and setting rxq->frag_size to it would not work for
the following reasons:

1) The tailroom formula would yield a negative value, as pointed out by
   this series.

2) Even if this formula would not be the issue, frag_size currently
   means that the underlying storage of each fragment has a size of
   frag_size. So the number of fragments would explode in the driver.
   That's a no go.

3) And even if we would change the semantics of frag_size to mean
   something else so that the XDP code would use frag_size as the available
   growth size in the fragment
   (tailroom = skb_frag_off() + frag_size - skb_frag_size())
   we'd still be very much in the "nickel and diming" space with less than
   256B to spare.

4) The only sane way to do it would be to use a large stride but this
   would kill small packet optimization

So +1 for the direction of having a helper allocating an extra page from
the page_pool instead.

> I'm not sure about the "regardless of the driver" part of your comment.
> Is it possible to mix and match allocation models and still keep track
> of how each individual page needs to be freed? AFAICS in xdp_return_frame(),
> the mem_type is assumed to be the same for the entire xdp_frame.
> 
Wouldn't the allocations happen from the page_pool of the rx queue
so the mem_type would be homogenous. I was initially worried about the
cpumap case but seems to not allow tail growth (frag_size is initialized
to 0 in cpu_map_bpf_prog_run_xdp()).

[1] - Disclaimer: XDP multi-buf fragment growth is still supported for the
      non Striding RQ mode.

Thanks,
Dragos

