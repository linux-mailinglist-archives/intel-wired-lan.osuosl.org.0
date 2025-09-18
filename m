Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B999B85354
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 16:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A83961247;
	Thu, 18 Sep 2025 14:25:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VtrHedglzUGq; Thu, 18 Sep 2025 14:25:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A04061289
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758205556;
	bh=I0GDAJ35drEndHH6uRHTgEjA4aGLuX5TRnO/MuuBY+Y=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7QgSceQ1VqMoQGYPinpXmpAHKaiGoRTHNf3UbmjVL0BWYdk8YvtOpoHyUU8EIrYCO
	 wu4clqmEIx+ZhvefnpGHRt58YbJxUmtP3bRjd1mPoib2lIEWW3QX5DaX1r0YoKUHld
	 yPOhGaAnyDJFQ6Ou9b4e6y/TRVOY/TDL6BJJTG4pKNJbaFbK60EPvk6iVj19BqswoO
	 Dvej8C1CEgMRWma01BYoAUfg3+QipyQNkPAJn8DzMIJsx2y33Gh9RjMW/s3WSzDHXX
	 d3R9qGcnngofTJySRVWR48TxDyZ9vy65bOCpMWylw493msX4f8UWtitY2odeElMmG6
	 hBTochp2gLwcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A04061289;
	Thu, 18 Sep 2025 14:25:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ED9381E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF69784D3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZLIjtkSvrMM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 14:25:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.57.15;
 helo=bn8pr05cu002.outbound.protection.outlook.com;
 envelope-from=cjubran@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EE81084D34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE81084D34
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011015.outbound.protection.outlook.com [52.101.57.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE81084D34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:25:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r7aWVqd43ah5U2yYqvZ73Hc1qTuCvbx3o26vP+ZwGQ3iclmThJ8GCNqEJu4K0jtXgSQGah45krRxw1JQwOpY8cRJ+P1p5fxcfjzAQfxcLOPMqBa0yQOoOEywsE2cyOMTr6XBRccTeTaGJfcA+DwH2XzNQw/6EFDtDg/oSfgXYoMQ023dpFL+5qm6VcAdKETxxBTyd+/USvQvtlXjMfNWTxJuAKJ7l3XHncQ3GWL7WChCiRYxWEVna5WhHBQS04AwVDkmz+WZa4/+kji5RSgl9j1vskPqpqjQtwclpl2oBksp2ijKVa461KqZM8/cavTP0AVXJKlhjheVsPe6RUvh4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I0GDAJ35drEndHH6uRHTgEjA4aGLuX5TRnO/MuuBY+Y=;
 b=DvaySMiYOSyzi5Hxo9uUJzc64YcUNtxqdOEitfHFeX0BC1gXMJN/uz3N9mbb0sUfMKtvMPSJEReaze0bx9Nk9BedBpG5Cg1KD1CpRAGkW5f6/l6sQFnAAcaSWrRxPljDeN5y09XAhyd2Z4Auv01JaHn7Bei6yx4WaKaTLxcieGFmuKE0wr133FwiDe0SazSuE+hA3jPtnuVXzQrVAljZ6x7lhBMcgopGp+BVP/VLwPaY1132SVNePiTX6bVRWKrr8LVr5hIYsxTuM56pQZdeAqBxax3ksWx/dY8L+cQ7fe+0pSzILsMA1pRyOqbdpg6uhXQoJY9D3PvHLTRfsLDxXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MW4PR12MB7141.namprd12.prod.outlook.com (2603:10b6:303:213::20)
 by DS7PR12MB6168.namprd12.prod.outlook.com (2603:10b6:8:97::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9137.13; Thu, 18 Sep 2025 14:25:48 +0000
Received: from MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2]) by MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2%5]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 14:25:48 +0000
Message-ID: <4d3a0a08-bda4-483f-a120-b1f905ec0761@nvidia.com>
Date: Thu, 18 Sep 2025 17:25:40 +0300
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
 <20250917174638.238fa5fc@kernel.org>
Content-Language: en-US
From: Carolina Jubran <cjubran@nvidia.com>
In-Reply-To: <20250917174638.238fa5fc@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::16) To MW4PR12MB7141.namprd12.prod.outlook.com
 (2603:10b6:303:213::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR12MB7141:EE_|DS7PR12MB6168:EE_
X-MS-Office365-Filtering-Correlation-Id: 2894085a-8dc2-4779-ed4e-08ddf6bf42d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0UwK081ZEJJcTJaSWRJaVRvb2c4UjF0dFF6d1djcWN0aHNkU013eGZEeUww?=
 =?utf-8?B?TlhDSzJCVnFYTzNXcVpocXp6eXBoMDVrWlBJRzluK2dsZnRuT3BRa2dhY0g0?=
 =?utf-8?B?MHlSdStTRGRsK2tHRFZ2NGRPZGk3WHlJWmNaY1IrdFZsTjRKb0RiN2ljR013?=
 =?utf-8?B?aEUyVVlEN3Y3YlhjUXNjd3VCSzJWUXZQOWx0RDA0a2pFYVlsNjF1TmRaQ3pM?=
 =?utf-8?B?YUJrenNzekpwdnNqSXRWTjllekZ0dGxpV21zR2U2RWMwWXlDTkxESWlSVGpk?=
 =?utf-8?B?TjdyanpPbzJLQllmYUltOHFRbm5uNXZ1N1dnTlJVQzUwVUxZVjJvd1Y0R0lB?=
 =?utf-8?B?ZUpnT1RDUDA0Ty81alNqUlFuREpndlY2Q0h2YTBuRDdPa2tQT25QR1VQMnN2?=
 =?utf-8?B?bytZNFBaUTU3bmRCYzh6cGp6K2VUc29nS1FYZTN3WDRZT0k1UjBsbEtIcWo0?=
 =?utf-8?B?Si9SOE1DZlplRzVGRkdMbTBWZ2NTV1JjR1dCYUZmWnY2SUdqaXF3YkMvT2Ju?=
 =?utf-8?B?M3F6SCt3b2RDZDlGVEVXbjZaNTJ5bTIxWVZ3MWw1SWVPN09WanVUenNUWHlj?=
 =?utf-8?B?NDM4Z0hsaFF5dHNTVCtzZTFLbjJnSCtyN1Baekx2c2RZRHltYWQ4b3M4SmZB?=
 =?utf-8?B?U0xVMkJtTUlkLzVwTHF2UVVmUGQxc05XZjFaWVk5aHUvMmxDS2NBNjNrNmtL?=
 =?utf-8?B?VzlGSkhZNktUZ0FPSmhYSE4wejB2NSsyY3FhODBQQXVGdFJ2ZDd5cHNKYVJJ?=
 =?utf-8?B?S2tmN0p6N0FkU3RJWXoxdFNreUpGdThDUFVXZS9QZFRFbzZFN3NxbzhpUTZ6?=
 =?utf-8?B?N0xtUlFnc29NL05FQWVyR093M1N0YklPRFA2SGpaU09OOGVaMzlDazI5SU9j?=
 =?utf-8?B?MzdNeXd3OXFTVTlWM0J3N0tpS1RUWVFnbUZsRGU5ZGhma3lkSUtyV2JCNXA4?=
 =?utf-8?B?MCsvZnJBbkpDci8wNFU2Ymwrd29kK2hORnFxTWNMa0NxYUpSRVU5VEFrQVdo?=
 =?utf-8?B?K1ZONytOd3RIaDV2a0lzM3RpY25lbFRuRk9UVk5tM3ZFS0tHb2hmQmtTT1Bh?=
 =?utf-8?B?Vjd5VVJzOWdtMGNuNGc3UWZxUnZTQk5HL3pVUUlrb0J6S1E4ZnlrSDNVY0dr?=
 =?utf-8?B?cTd6ZE9DUlFpZWtrYkljSWFtcnhwVVRicnlxMWlxdDR2dCtoRDRqdFJyZDQ4?=
 =?utf-8?B?ZUVKOHdnczJBaWlrQ0dNRldmbXMzSE00dUZ1Tm1SNEY4blVrMEpaV2oycVVV?=
 =?utf-8?B?Rm1PVnJUMVJpVDVHR2JaN1VlWm1RL2xpNmowKyt6aHZzTlR3LzNuS1EvN1cr?=
 =?utf-8?B?ZTJHUE5iNC8wZE9EdURqTnlMcVg0aUFZUk1uSWhGOUFBVTVScEh6clZaUzNv?=
 =?utf-8?B?MklNUVp2eVVxOE8rbEZZaSs0cU5USm5XQi9uWitIN0lROExES1dzaHk3WjVy?=
 =?utf-8?B?RytJbms2b0crMmg2M3NaNVBFbENlcEJvaU9Vd2UyY3B5TThUajRIaW5qQldB?=
 =?utf-8?B?N0VuaEk2RzAyUEh2WEZaNGlENEJ2elRDcVNTcWU4TUlNR09oQ21hUUhkdXFy?=
 =?utf-8?B?NlUycmxWcjRWbmN0MC96VG5YSFZmQkZGVHNwWmVVWUJETFBzUm9QUVQ3Y01t?=
 =?utf-8?B?ckNaLzlMQVEvK0FlNCt1dllWUEV1Y3g0S1cvVk81VzFzcGphcnVCdHR3aTdx?=
 =?utf-8?B?b0c4N3lwR2NjcTFSZWovMXhVL2M4WTk4VkpSWE15OVBXV0tKcmlqUnZLb1Ja?=
 =?utf-8?B?Zlh4eEQ2eHpSVjFrbFRZcWcxSEZXTXVVcG1oOExIRVJQOXdUM1BlVmJsTHUw?=
 =?utf-8?B?OTlHWmJoTmsyRjRtWlFvblpWMjZIaFRNUGlBekxrQkp2RFV0cm0vdVA2ZENt?=
 =?utf-8?B?enU3TjFIclViVldOd1NyalMxVDMxdGd1K2ZGbmZtVDd3azFkbUFtSDFNYkZX?=
 =?utf-8?Q?0LcCEV2fINs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR12MB7141.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2c0UHlOL0toQzZOUEsydDZKMTROQkppMTFkUVlaYUtjUnRzTG0rUnI1OFEx?=
 =?utf-8?B?WDJjYmtXanZLYndwRHFEWldZcTBQVHl4VkZmZFlOUkxYU0lKeE1ESW84dTBj?=
 =?utf-8?B?Q1JGN1ZzOFBrVjUvWE1lVGJNb2hwclhReDVTMDNhVGRMNGhoRXp5T0YzNlN6?=
 =?utf-8?B?b2tMUXdpVGVRVFBQdFJZeExMUEhDREJSbkJ3OUlKa24zeWoyelFQaENtOUVP?=
 =?utf-8?B?S3pkRTlDbldWSmFWZDhMRm5uamY4clE0NjhNcTNjYzRGSzFidDJhZTFnK09Z?=
 =?utf-8?B?dHEyOWRVV3RvOVpmQTNNVHg5Tmg3NU52YjFKbjkrcUdkNkY1UVpTZEV2WWha?=
 =?utf-8?B?blpOTHJpR0ZWOXpQVk1Ec1F6UHNSZE41NXlDcERYSVFpVk9UUkpxTEpPbVFM?=
 =?utf-8?B?OG13SnJYNEtmMHV6aE5WR3BRZk9nRnlJOG5nNUF6eTFtT3V2L0Zsb3FjOVZy?=
 =?utf-8?B?SFNWYm1CT3FhdzlFMTM1c2lzRVNROExZSkNKRWxPNnJHWDZpSmhHam8zcElq?=
 =?utf-8?B?Z0VmRENiekdzUUlMVWhqNUx1dHFVTjJNbXZIUnBJd3Z1L1NXSXVOZ0JxYXJo?=
 =?utf-8?B?SFI4UzN2U2VMR0pLUmFXSkxMTzdSNjNhOWU1NmRTOUhveUFvdmFwL0VEVHNE?=
 =?utf-8?B?NmxySGgvMWlUd0hMRVEzUkhVaytqQTlEaG9XS0M3U0lhbks1VWFTOW9yTjlt?=
 =?utf-8?B?VDRpeVpPcVBqSGRqdWVPTGJFNmpNQ2l0MmRUOWFPclNCOEZvdXRjeFNEckNu?=
 =?utf-8?B?MkZLcjZwS3R3aGltNENVNGQyMmhsQTFLcFJvRHdGOUcyT3hMa3Z0WEIwcHdU?=
 =?utf-8?B?UHQ4N1FzajNyN1I1bks2S3JCOHlmVVBjYjZOYW84eHBpVHpTbjFESHB6Rys3?=
 =?utf-8?B?TVJLQWQvZGFPSlNoMVFFcUFSekhONyt4eUhCVGNLV2lic0Y1d01UWVFhZVkz?=
 =?utf-8?B?NHIxK2Z3Myt4K3lwcmpIaEEvcTdxVjdLWjZsVjJ5aHFoNUxDY09scTVuMFdn?=
 =?utf-8?B?ZHRkYUNtdi96eXVHMzBmdzVZLzdrckh3R1ZLWHRYTUZ0UkgwcXEybGNpQi83?=
 =?utf-8?B?clg0Mkx4WklHa0cwT1g5bU1ZRFUrTWdTNHJQTGdnWk9GQzVLMk5NcFpYZzNJ?=
 =?utf-8?B?Z2xEWUtDa0VCWWI3NkEzZlhnMU5tTC9EbUdEVGVZbDJNdUJFaDBNZTNkQWtt?=
 =?utf-8?B?QW4xajRxVzFXZUhRSFppaVY4ZWFiL0VkQVhtRWM0eURRYURVT1ZRMDRsbVR4?=
 =?utf-8?B?bkloRXVxMFpRbXQ5dGd5MllSdVNNaUNPN1JzQ3Mvd29QMlo3U3k0dXl0bkto?=
 =?utf-8?B?UTJ2cmZUSFhoM0NrdzBtVDNLZDdaQkMwL29YOFVTckwzMmp5QmFVS08xRVdC?=
 =?utf-8?B?ZFROdnVMeDE2V1ZjbkF5VGN0QTNoS1lmelZrWGJDSE1jMlpiS1Bxd0xLRDUr?=
 =?utf-8?B?M2h0YXg1TnZmZDQrSmFGMVlrUS9ncDlOcERhb1ZYOGUzQ3hYMXNKejNvSmVC?=
 =?utf-8?B?ODRNZTZ6VFl1akU4aE1NVlNhREFMaU0yVnVpdklVb0dwM2NEc1Y0b1h3VlR2?=
 =?utf-8?B?c21mMEo3YlRQOXBLdjduUGhJVkoxVWhyNUxSR1k4ci9ocGRNR3QwUE5sSmpI?=
 =?utf-8?B?ZHlZT1FhTE1iWDNXM0t3c1ZHRlB1VUNhdWhSQjNzQkdOMDM4ckNva1l3K3c3?=
 =?utf-8?B?bnU2ZlNVMzNIY09zeXJRajFVMXpvMGtpOUcyY3JaOXhkNk1uVnEwb0xoNjhr?=
 =?utf-8?B?NUo1SWxwSkY3Mm9qNjQrZDlxd2Y3TnJYZVEvUWFkNnp5eUpoNGM4TmgrYlNG?=
 =?utf-8?B?aWFtSE15MGIxVkNBTSt2Z2l6MnE5RWcvaEI0akVkSWRrL0p0c0FBT05iVktu?=
 =?utf-8?B?SE9nQjRyaWxhaTUvZlJHNjRFdy9ldlFVZmUwKyt4bkRnRUtrSVhUNGV5Sk1q?=
 =?utf-8?B?b3VKVzhRRkhaM3M5elJzNjVMK25zWFpIM0ZnSGJJWnd5ZEQyRGpOdi9icThK?=
 =?utf-8?B?L1RuaCtscXQ5Tkk5dW1VQkQydmZDMkNRMTVpWG96eFdydlBPdjdIYUQxWGp6?=
 =?utf-8?B?bkNhcytvaEhNdDdybUw3cFpzeElhYzJBcnZiQmd3MXFHZXdaSmFUK3hsemE1?=
 =?utf-8?Q?MQq2C/5auh23hg5LZpjdhgF5F?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2894085a-8dc2-4779-ed4e-08ddf6bf42d2
X-MS-Exchange-CrossTenant-AuthSource: MW4PR12MB7141.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 14:25:48.0170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pfWFByYyEJUbuGee3DG2ZeB0EJ/4j3EhVMqFRALIIjfWNozTVsbO2XLn1iYcWNfM6JO9mxBBVeyFX80Q1XPPKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6168
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I0GDAJ35drEndHH6uRHTgEjA4aGLuX5TRnO/MuuBY+Y=;
 b=FuSnlzpQe1JLF/ovlGui1IEJwyuOiULdl/V+66/e7ql+DhW4YtoYGjKh1oJYeJWw5JtBEhNqucMt+fN64/nhvgt7xRFWmXOk8WkXbUc8exwJugfbPHd1d3StRUGFY/trGLfGb1zozaDRNBUTvvKwCqrrdPF97UwXB7u8bUbP6NSHO3f8cyvHc2l8A81uR1ngczi7El5RVM1YyjHtZ8fl7UTRId5nPWoNsHBlSU57IRbDs6INhxpl8M5e+GOQoHwIYhld+G2auPNPjLa3bst4PSunJ5FwFLfeoF+KPPTq6Pxh8n455oMS3kS1gfl3qsykvFUpyyTWCzQKPEk1XkdB9A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=FuSnlzpQ
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


On 18/09/2025 3:46, Jakub Kicinski wrote:
> On Tue, 16 Sep 2025 19:12:56 +0000 Vadim Fedorenko wrote:
>> From: Carolina Jubran <cjubran@nvidia.com>
>>
>> Introduce support for querying the Ports Phy Histogram Configuration
>> Register (PPHCR) to retrieve RS-FEC histogram bin ranges. The ranges
>> are stored in a static array and will be used to map histogram counters
>> to error levels.
>>
>> The actual RS-FEC histogram statistics are not yet reported in this
>> commit and will be handled in a downstream patch.
>> @@ -6246,8 +6246,17 @@ int mlx5e_priv_init(struct mlx5e_priv *priv,
>>   	if (!priv->channel_stats)
>>   		goto err_free_tx_rates;
>>   
>> +	priv->fec_ranges = kcalloc_node(ETHTOOL_FEC_HIST_MAX,
>> +					sizeof(*priv->fec_ranges),
>> +					GFP_KERNEL,
>> +					node);
> Why bother allocating his on the device node? We have no reason to
> believe user will pin eth process that reads these stats to the node
> where the device is :\


You are right. will change.

>> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
>> index aae0022e8736..476689cb0c1f 100644
>> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
>> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
>> @@ -1490,8 +1490,63 @@ static void fec_set_corrected_bits_total(struct mlx5e_priv *priv,
>>   				      phy_corrected_bits);
>>   }
>>   
>> +#define MLX5E_FEC_RS_HIST_MAX 16
>> +
>> +static u8
>> +fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv,
>> +			     const struct ethtool_fec_hist_range **ranges)
>> +{
>> +	struct mlx5_core_dev *mdev = priv->mdev;
>> +	u32 out[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
>> +	u32 in[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
>> +	int sz = MLX5_ST_SZ_BYTES(pphcr_reg);
>> +	u8 active_hist_type, num_of_bins;
>> +
>> +	memset(priv->fec_ranges, 0,
>> +	       ETHTOOL_FEC_HIST_MAX * sizeof(*priv->fec_ranges));
>> +	MLX5_SET(pphcr_reg, in, local_port, 1);
>> +	if (mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPHCR, 0, 0))
>> +		return 0;
>> +
>> +	active_hist_type = MLX5_GET(pphcr_reg, out, active_hist_type);
>> +	if (!active_hist_type)
>> +		return 0;
>> +
>> +	num_of_bins = MLX5_GET(pphcr_reg, out, num_of_bins);
>> +	if (WARN_ON_ONCE(num_of_bins > MLX5E_FEC_RS_HIST_MAX))
> why does MLX5E_FEC_RS_HIST_MAX exist?
> We care that bins_cnt <= ETHTOOL_FEC_HIST_MAX - 1
> or is there something in the interface that hardcodes 16?

My intention was to keep mlx5 capped at 16 even if ethtool raises its max.
We’ll only increase this once we know the device should expose more than 16.
Since our HW has internal modes that can report more than 16 bins, this 
ensures
we don’t accidentally expose them if ethtool increases its max.

>> @@ -2619,3 +2675,4 @@ unsigned int mlx5e_nic_stats_grps_num(struct mlx5e_priv *priv)
>>   {
>>   	return ARRAY_SIZE(mlx5e_nic_stats_grps);
>>   }
>> +
> spurious change

Ack! Thanks! Carolina

