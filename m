Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF31AE4914
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 17:46:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26EB440AA7;
	Mon, 23 Jun 2025 15:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jpGzkuChaRMO; Mon, 23 Jun 2025 15:46:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78F5A40A77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750693602;
	bh=lsWObrc5Ubd9he6KtGqdwaejFhrpz8e45hxao/muxCk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IDKWP8wB0g808/wBE+Nsmif47GcvSP45nbyXoROfyw6JUks/FQid0r9ZXJ58SOPTv
	 KZjeqx7lic9ewbPEpZ63y8bA4UYrQKMkxBAt9WrneLjmbrYsFO+SmZFoqGPZdjn3n9
	 o0GvDkmolg3BHyYK/Kx+lnJ/fBB6160dAKa4paF9HazCOmHRzEmj0Poknsv5IQCaRv
	 uOf4RkQRNyXdkAyYTegCpSaUqwrMl4Ro4SASQb5SPZkKr5L3QvYKBFFQUv2Vzd8nqY
	 5c67HIjsGFXJWMCGWA5XT0p7wm8CdjfQB6eCL3mDx2wkNtkKVfqL3+iopw9vNn2R4p
	 0g+aB71wntzWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78F5A40A77;
	Mon, 23 Jun 2025 15:46:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B974E154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:46:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA3B482141
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:46:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YODLrQQJ_sWH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 15:46:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.212.88;
 helo=nam02-bn1-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BAC6182169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAC6182169
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2088.outbound.protection.outlook.com [40.107.212.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAC6182169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:46:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NOlnslBnKHeWKjNdf9VL99KTcbxjMpJ5Li4jf8Ohq0QEs0pjhLpv/v6t7IMxY60Zu45290x2+BBn/2M/DA5upipAGLf3qdJw6kU7V85qScrL/dX4oUCkPNowKpwcum9lN3rVxv5nj+iVdpn5pCwPiOTfCE033qGmgSKgX1DAGiTL4v/+cXjzPitGrk57Qj1yLSpQddFsbdRRHqzHTSK2pD70uYQjJx17biU0fKnCg9UL1VYoOps6Co63uI6e6slRc9PkHrmGiIGjThxi3FQkTYHEIB9Vl6WMlh+dhgkH+ZTlhvCggcpu27BUlAEywtKKQf8ScXuj8pltyLgYpOcDrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsWObrc5Ubd9he6KtGqdwaejFhrpz8e45hxao/muxCk=;
 b=qqkyexIxp1VkbAfwzPJe0tMbLpZTJlR4Qctuy2U3BlNC4VJiXDc+Bh3eJOo72Fzyj2Q2rmyQPS4goeokJEmX/CURxLSPsbk9skC/Amk1WhVH43US4faeKlUB839P7a/VhR0p2XapAL6kF1/zXnOTOzta1ZaJ89o5khiEIrCTidvxDGfFVhIzz7FgPbvDTdlSSr++J2ZiFaVEZbPW7DD0TIK1ruQCCWUWCHPgWrSPADbtgfh325Iq9HQh5/ZUZUu3LGUdITdaZ6L3duQvawbymENzoJOLuq8rGY9lp9IvvK0fP7rXslFx1Tr6R6lMxGkePCobnvcHGPPHW2I2YOoG1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by CH2PR12MB4262.namprd12.prod.outlook.com (2603:10b6:610:af::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.25; Mon, 23 Jun
 2025 15:46:36 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.8857.022; Mon, 23 Jun 2025
 15:46:36 +0000
Message-ID: <d4211026-9105-4f7b-8384-300c0a293233@amd.com>
Date: Mon, 23 Jun 2025 08:46:28 -0700
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Jacob Keller <jacob.e.keller@intel.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250620100251.2791202-1-yoong.siang.song@intel.com>
 <20250620100251.2791202-2-yoong.siang.song@intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20250620100251.2791202-2-yoong.siang.song@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YQZPR01CA0046.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:86::25) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|CH2PR12MB4262:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b197182-c996-4b4c-700d-08ddb26d228f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVBvNFdxOVNPSXErWEhRanlrMzJjazJYcjFUeVZoK0N5ZmtBSy9hVEl2a0VC?=
 =?utf-8?B?N0gyOVRidnVjZ0hCR1hPOFZzdkVYRDZpUExjWktvWXhpSGo0cFYra0ZwZFpz?=
 =?utf-8?B?VUNNZWdZK3M5WkY5REpza2o5N092RVVzbC9xK2FwTXBQeC8wRUV4NXViZWI5?=
 =?utf-8?B?N2hReGsreTRCWThtNlcxb3BZa0lhSlNhV1VEeWhBa01obVVwREgrbnVmV0M5?=
 =?utf-8?B?anlOUHlMU0ViK0JUOHBST09KTjgxTC96WkI2N1htZ3ZURnplcWxIWEtQNDNY?=
 =?utf-8?B?S24zenFobVM4Qm56R1ZXSitjbDcxNUU3ZXFnZVFkTUo3ajcwVVovNXBRV0du?=
 =?utf-8?B?ZXhzSDVSQnljUjFGeGtxSlExRTgyRlVrb2lMZTB2OHJoOVhoWEF3RXpHeG83?=
 =?utf-8?B?a1lvSjEzRTUwMU1GdGFPaXdIRnV1V2EyVVRDKzljazBtNnliTGliVkZqSUVL?=
 =?utf-8?B?QTRhQW1wbWZMQUh6eCtvSWxuN2F6NDEydjhIYUdWUVExeDVIY1NRVEhaSFFT?=
 =?utf-8?B?MGsvb3l0ODBhejdudk1VbG1jYmc4ZzJUbk1wcElTR0daSTZPQnNLYVk1dEQ1?=
 =?utf-8?B?UEV2cjZZRGwvS2hYYU5EUjNHYUpaNXpjeTJwZy9LSE15eHY0cXV5K2tiQmZm?=
 =?utf-8?B?MFNhWWNwNkpDK0NCWDZacURneXZINHZsTVpPU3p0NzhLdlJhVEhWeDJ3dVlS?=
 =?utf-8?B?cEJmUlh0bFFNbUw5dVpRcXlWdjZFZHg3aUE1aGJCS290RWU0MndrVWt0TnU4?=
 =?utf-8?B?Q1ZXSmNjbndVSjAxOFRTS05sUVV6K3djdGkybXZFeVh3U0hIWXRTSGxldEJv?=
 =?utf-8?B?em9NR3hvSjNqYllZLzFkODh5VWczOWRwSm9ZWXpvQlg1ay9PdXRPWUVBbzRi?=
 =?utf-8?B?YVZsWHd2bVNPbHNwMzFoc2IvK1pxVnp3M0pPcWlSUVdNa1YzeDRFK1gvaWdL?=
 =?utf-8?B?enA5MmVWUkh6Y2drd2U4MnMrVXlDek5raVRwVVNIZG9NTUhCTHdLNGFyNitm?=
 =?utf-8?B?UXRMVVVacDdDRzYzWjlKZmZWaEoxbUo1QzJhZjU0VzRES1pZS1ZHRWd3TDA5?=
 =?utf-8?B?WTdaNU5YK3BSVlZYZWR0TjRvYjZJV2VhREFWRUJQbXpkQWhTQ2pWTHJIUWd2?=
 =?utf-8?B?NXJyL3dPaERIemZoVStIdlFxS0lCVFZrV25ldDAzdC9ZUEZ6dEVxVVNEQVBr?=
 =?utf-8?B?UGgxNFVNeCtIaktacnhjd1FIZFg5K3dhWDZkYVBQWDRDMU1tYnFPMXE1Sng3?=
 =?utf-8?B?UU9zNzlLT2VtMDlNV0VvcXQvalo3T1VaeTJrQ2xtVExCQW5ENkVDYTFuS0xv?=
 =?utf-8?B?OUdqNjc3anB6bW5DSEJWcEZYNUt4UFUxY2swT2xnOGE1UXFxL2toaFI3OGJr?=
 =?utf-8?B?UHVXMFVmWHEzd2FGUm9uTUlydm91NnVRSHUvZkpoZWxTY3JxVk9PZnRhZ1ZP?=
 =?utf-8?B?eUo2WFRjeTJBdFdVWjdwUFc5TEViVk1Ba1pQMFJkck13SUFmb0xFdW4wQzRG?=
 =?utf-8?B?bEkrV0xFa2loelhmajgyOVRGcXUwQjRZay91WFhPYnV3SUNoZkMra05wRVBZ?=
 =?utf-8?B?UERMUUJBdmV4SDFhZkx4R0ZEendwZGlBMkFMTmlmZ0drY2o2bGt1eWhvMHJ1?=
 =?utf-8?B?dWFzOVduYmJBL1hSdTVnbUpJVTNLdXJFR3dWZGV5SXh0U3BwN1MwcVpkUS9a?=
 =?utf-8?B?WVRDbDNvQmdaNVZ2VjVpbVZNRVBJMHp6SlFXdGRsMjVONlBBeW1ycTJzUVhh?=
 =?utf-8?B?NHV5RDN3RFRnZFF5eFljMEhiTWRSbG5kRlRPQW16bk5kWnFnRmhNbFFQRG1K?=
 =?utf-8?B?cG1oREhJbXYybVYrcXNwZ2xNNWV5RWdFVGM2QXNKM0kwOWZEWGdDYm1sc1Fp?=
 =?utf-8?B?QUo0M1JzeHA1TE4vUDRVZjJLMkRCRnFpVWVtQWI2Mmd1Tjc3TGM0ZkF4V0FF?=
 =?utf-8?B?dWhrcS9xQUtGQm9uckUrUjdjbjVrNkFQM2tMQlVXMEhCRytLdG1xS1ZlWHRo?=
 =?utf-8?B?UkVIRHBzaSt3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnBrVEpqaCtxSktHcW1yME9OaFR4dHRreXNwQy9NK1hwRnA5Nm9vLzA5OFZD?=
 =?utf-8?B?ODRMVENxWE5sVFphRjJWQUhlY0F2aHJwWmp3eTBNS1UxbUdsM1hyZ3dwZ2Ix?=
 =?utf-8?B?VEViZEVlTWJ6MXhSWm5zVEFpdlZUTXNsWmJINiszcnNXSkdhZFo0c1V4Wmpl?=
 =?utf-8?B?N2NuU2RzcUQrL0hmY0ppVXBBelI3TVNKbnRUK282QjJmL293T1IzOW9UZWJF?=
 =?utf-8?B?b2NtaGpOM2pCaFQyK2htRkphaVozaUV0MlgvbExMbVRoRlFkM2JrUlJJQkdt?=
 =?utf-8?B?dHI0S2NYYVVtVDRZcUgvNStvSlZ4WlRBS3lwNWR4cS8vbDJMNlAxb1dOUnkx?=
 =?utf-8?B?aU9YMmVjdmJHMVFkRTZKL3VZdmJHQzk2azZJWnhSRFBNbmhnVHRSUnJNbFhZ?=
 =?utf-8?B?dGtjZG1NOXFUSFJFUjNBL2hhWVRHdXNlbTRQOERmaTVZN1lvbmc5cElVbUl5?=
 =?utf-8?B?WGZzcDhwSS9VbVQrMUp6eTRjUFR6bk9UV1NxK3kzUzloQkhnOWdkWXpod0hJ?=
 =?utf-8?B?ZUlDZWxlb2dWZ2FjT3Z4SDZmU2F0Z3BvV0hPSUFnU25ILzhOa252U09aTWE5?=
 =?utf-8?B?UkpHL0JYRWNLMHVsVXZMaDB1TXRsRTJENmdoeEVTNFBGYVBTODFRQkNQdk5S?=
 =?utf-8?B?Z3ZZL1AwNjlDdDRhNGZFN1IxUy9ZQmhXVDRIMk45RjJ6MmoxUjZHSGw3WEox?=
 =?utf-8?B?WTJsVEZWdGVtbnZ3NkI5d1dvcXduVkpQcXBmWHFKN2RpRnhsR1cwWWNzWExx?=
 =?utf-8?B?dkdmUmJVSUxkVUszK09CTFpFT1phREhvWS9wb3BFSGdkRnBHZnlTajVxUUNz?=
 =?utf-8?B?aklpRHRMY25JS21qVEhRdWxMTFU4aFFLRmhYSSt6bnpuT0VmTDFyUVZUMnRq?=
 =?utf-8?B?dFpadU82MjVHVFptcGgrR1ZuSXg5WjZ2MFdrNllYZWJwNzdlNUtCVkdUVHdz?=
 =?utf-8?B?OE5FVDZIZ0dQY3R0bnpSbjVQZTJJNVRrbkFDZFdFNmhQQWMwZElBN25BdFJt?=
 =?utf-8?B?Y0xteEF2NFlvelJHQTEvUEsrWDNmNWM4aG13Znk0eDdmZGt0bUpFZzk2YVkz?=
 =?utf-8?B?R0VGS3BNZzlFcVlqaE96YUkvc0pMNjRZY2tNRjdKdmgyS3RoaWRuV0dOU1FM?=
 =?utf-8?B?NXpoTEZtMUEycklRRjlvb1dpUTh2dy9VcTRyVWozb1BjSnQwSkNYWFpUVkY1?=
 =?utf-8?B?VklTOWc3VmtBNlRaQ1RrNjI4VVV3aDFBL3ljZ0U2N0lDNDNrMCtZY1RUQTE0?=
 =?utf-8?B?cjVyQ1Vkem85UzE0cFZJcU12WHR5d2tYTkhTeHBwS1lPdjJpQVk3b2x1WGlH?=
 =?utf-8?B?WExkQnZHMW1LUWN5b3k0SEhZYzlXRWd5bXZyUnJWaVdhNEZMTnFibGxHZzBt?=
 =?utf-8?B?eDFSVVRUeUExVWM0TWtlTzlta1RwZ2plK0IyVDhuZ0VZNzBIdktNdytONlQx?=
 =?utf-8?B?UWpjLzNmUWgyWlUwNUJIdDE2QlJmaUVIclcvWC9lTE4reGJhWlhUaGZrZUFo?=
 =?utf-8?B?TzhPbmRsWS93N0VDS0VXMmhzZm5jc2hYT0NIU3V0MkVmeFNDNmU3ZDJmdGxN?=
 =?utf-8?B?aWE3RmxZR3VReXhNWjRMM1ZSMVJRNSs4WmZIUGcramQ1UDg5YmtxaVR5RVA5?=
 =?utf-8?B?cVZMZUowemlRMFloSzVZV3JTTFJTa29nYlNMNm4xRVBQZHdubklweTVsdFpH?=
 =?utf-8?B?YTY1RDJSWEd0YW9BNXBCVUs2WWIxNEFtMUxQc1VRQnJaUUFrdUFoTGU0R01Y?=
 =?utf-8?B?ckIvTUUrRXNnejNvMTl4ZFdrS1NJUDhsVmlwL3AwN0M0RkloeUJqQ2J5RUd2?=
 =?utf-8?B?aUhBc0s4OUpzaVVkR1pKa0NSL3ZUTm55WkRTOG5TaDV5MmgwV0VITXRBL1hW?=
 =?utf-8?B?NGRSSUkvdzMrWXIxOXlleWExbUN3N0tRM00wR25aNVNvOVlIQTlUdk84Y3Bw?=
 =?utf-8?B?cjNvV0UyOTRzT0NBMDRtSEhmdWhQVVBnOTh1anR3aVpIVDVKRWFwa1ZINm4x?=
 =?utf-8?B?cFR6ZUdaZ25WTGpnYlpUcVVnbVpUSnpGdHAyQzVsN0tHcHRzZHd2SFVBNHpF?=
 =?utf-8?B?Vy9SL0hxZ2o0WWEwaWpmY2o4Um5ENXNLcnlXZnd6ZDBCaVdSU25CZ0NZQnpu?=
 =?utf-8?Q?o1I2cctAgeD3s68Ma5rDwkwRi?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b197182-c996-4b4c-700d-08ddb26d228f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 15:46:35.9833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sjK2Ofb9inJMKtd77dMv3sl+HQr27eC0KraSkX51F5zbYOd7157miiiEAco7c87pUeYu/9Yqix6grJA1CRqYrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4262
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lsWObrc5Ubd9he6KtGqdwaejFhrpz8e45hxao/muxCk=;
 b=vW5zFuGCBXMw2NSxUfK+KjnD7xanzWDZxFNTnYQKlQwPgRmyeHLQWKB8uY3WsU7JlvAMyceZuYbp4vYITNvuAsngAv5GalChAxspRIO7yrCpba7F0RCCSCUwaBq2zvMrD8hlT0qWnW3j4XfP5nbuqZFSChECgh5vG3Y1UgGTdqc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=vW5zFuGC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v3 1/2] igc: Relocate RSS field definitions to igc_defines.h
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



On 6/20/2025 3:02 AM, Song Yoong Siang wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Move the RSS field definitions related to IPv4 and IPv6 UDP from igc.h to
> igc_defines.h to consolidate the RSS field definitions in a single header
> file, improving code organization and maintainability.
> 
> This refactoring does not alter the functionality of the driver but
> enhances the logical grouping of related constants
> 
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         | 4 ----
>   drivers/net/ethernet/intel/igc/igc_defines.h | 3 +++
>   2 files changed, 3 insertions(+), 4 deletions(-)

LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 1525ae25fd3e..0b35e593d5ee 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -406,10 +406,6 @@ extern char igc_driver_name[];
>   #define IGC_FLAG_RSS_FIELD_IPV4_UDP    BIT(6)
>   #define IGC_FLAG_RSS_FIELD_IPV6_UDP    BIT(7)
> 
> -#define IGC_MRQC_ENABLE_RSS_MQ         0x00000002
> -#define IGC_MRQC_RSS_FIELD_IPV4_UDP    0x00400000
> -#define IGC_MRQC_RSS_FIELD_IPV6_UDP    0x00800000
> -
>   /* RX-desc Write-Back format RSS Type's */
>   enum igc_rss_type_num {
>          IGC_RSS_TYPE_NO_HASH            = 0,
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 86b346687196..d80254f2a278 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -383,11 +383,14 @@
>   #define IGC_RXDEXT_STATERR_IPE         0x40000000
>   #define IGC_RXDEXT_STATERR_RXE         0x80000000
> 
> +#define IGC_MRQC_ENABLE_RSS_MQ         0x00000002
>   #define IGC_MRQC_RSS_FIELD_IPV4_TCP    0x00010000
>   #define IGC_MRQC_RSS_FIELD_IPV4                0x00020000
>   #define IGC_MRQC_RSS_FIELD_IPV6_TCP_EX 0x00040000
>   #define IGC_MRQC_RSS_FIELD_IPV6                0x00100000
>   #define IGC_MRQC_RSS_FIELD_IPV6_TCP    0x00200000
> +#define IGC_MRQC_RSS_FIELD_IPV4_UDP    0x00400000
> +#define IGC_MRQC_RSS_FIELD_IPV6_UDP    0x00800000
> 
>   /* Header split receive */
>   #define IGC_RFCTL_IPV6_EX_DIS  0x00010000
> --
> 2.34.1
> 

