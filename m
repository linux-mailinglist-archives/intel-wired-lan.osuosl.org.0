Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC522B2ACAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 17:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83C6F61B93;
	Mon, 18 Aug 2025 15:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 99vZXOtKyM5P; Mon, 18 Aug 2025 15:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2789614EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755530739;
	bh=WFW1CzjJKoX5gs3s2ASrZoj90Z9a9kQSXVgBl3U+Ces=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BRJCBtWqItUZyOcEwetdryx8qilH35uz+Qke88ittyi+KhOy5fbOtFHJqVtwCtHjt
	 ES0Xmn9ThG6N/JTuURcNlDrmpf3BJQzvULbvJkvesHFWWty/GYhdAhJgUEvLF9FBhy
	 4wyp9JOGENS/NdsrfmQj//rYfLk1zPDAvKFyeZttWlggZMGR8JZdjAdtytoT4vdpOo
	 nlmvfPqT7BsoqTHoYccB7yVTJvXWlG5/T5gJjISgUOQmz/rfkefjNoJMIax4XXh1QT
	 DYDdN4je8EoWHEvRw+jvn/d144f0AcovJ6NDxurfZ46N3y8ULOrU8OY5RwhtkjIC9T
	 3sevcuKz8U7Gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2789614EC;
	Mon, 18 Aug 2025 15:25:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B87DEE2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Aug 2025 16:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A9B1416C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Aug 2025 16:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WBhWM9Vmb4OI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Aug 2025 16:09:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.100.54;
 helo=nam04-bn8-obe.outbound.protection.outlook.com;
 envelope-from=shshitrit@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C3D8F4176E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3D8F4176E
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2054.outbound.protection.outlook.com [40.107.100.54])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3D8F4176E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Aug 2025 16:09:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ojc/9vniM2ULwxlvf5mKCpl44At8eqWk3hlOwNiSod1ugzYiIUybWFK2V9uRY3yrCn85GddF1z+ij+DG6r81uzbsWEQZV5Rh7H2+Z2MdQ6pYTkxqx96+pvucL2WSpXKUIoZOPc6gZ3MZJ/Sgm1s6kiAWKW3/g2Zebhy0hnQAGJpF47YCTcE+s+AvhYieBZWJscmfz0CGJyvYNa6tuwzrLcnfAES2Z7E6QKiOL7F3YfMz/vA0LBQkS6rPf6YUP+xFXhOuiFh8xPg6Rx0cLpychMKUgK+eS/+ju6eo0RoZgpLzZQtuTU78js8x0dxdusedGz/ca2j5RvcGYuN4yX/Krg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WFW1CzjJKoX5gs3s2ASrZoj90Z9a9kQSXVgBl3U+Ces=;
 b=SQinmkkqOo+RcKd3xNc0YlCms9u5IwixXwbZHQatyIfy3rBMHo/AEvK5J1v0miYRdLfYpyB9ZAWQ1SSk01x4LcoN3+TH2FD4x1V6anmmAAPXd4waJW9/gzB4Gbc5WKLdX7ULMr7H9ExHoMYLzhpFMnWHvNc2sbz2yi0Bl6x4iQ8supvXzDFl9ptfl0olgTUxo1uVJtBWfRiwR9YgSOeVICMRXdvH2j1ysBZwQuLeVzHdhrgurOAYQo1W+5UMkVrXPuqbq0ZBZ4SIlZPriYQq2jbfojO8xZl2PBRSwBxdC9KG0Q7XJGwYsXreQV9h5NqnsCeitaX4l1CuGdstZZyIfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH2PR12MB5516.namprd12.prod.outlook.com (2603:10b6:610:6b::23)
 by CH3PR12MB8878.namprd12.prod.outlook.com (2603:10b6:610:17e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Sun, 17 Aug
 2025 16:08:57 +0000
Received: from CH2PR12MB5516.namprd12.prod.outlook.com
 ([fe80::80c2:1d4f:4a3b:73e]) by CH2PR12MB5516.namprd12.prod.outlook.com
 ([fe80::80c2:1d4f:4a3b:73e%2]) with mapi id 15.20.9031.023; Sun, 17 Aug 2025
 16:08:57 +0000
Message-ID: <016a3fed-2f4b-4721-b92c-cf00cd5f3125@nvidia.com>
Date: Sun, 17 Aug 2025 19:08:47 +0300
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Tariq Toukan <tariqt@nvidia.com>
Cc: Jiri Pirko <jiri@nvidia.com>, Jiri Pirko <jiri@resnulli.us>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Brett Creeley <brett.creeley@amd.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Cai Huoqing
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Mark Bloch <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, Gal Pressman <gal@nvidia.com>,
 Dragos Tatulea <dtatulea@nvidia.com>
References: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
 <1755111349-416632-5-git-send-email-tariqt@nvidia.com>
 <20250815122627.77877d21@kernel.org>
Content-Language: en-US
From: Shahar Shitrit <shshitrit@nvidia.com>
In-Reply-To: <20250815122627.77877d21@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0030.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::16) To CH2PR12MB5516.namprd12.prod.outlook.com
 (2603:10b6:610:6b::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB5516:EE_|CH3PR12MB8878:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ba9eab5-9165-4dd5-4172-08dddda85eae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TnNMQjhRSE1qRjRtUC9wb3RCVXJOd2didkVITk1uMEVZWWwvVTFUc25VTnJr?=
 =?utf-8?B?emdBOWpVaDhXR0hEb1NOREl5ZjByY2xpOElJWFpvWmE2b0grMytZcVNiS2Nq?=
 =?utf-8?B?V3pGMzdKN2tkd2tWNXYvMHE3YmpVV3c5NnpsdUpSMXhNS0pvUHpxdXdwaUxz?=
 =?utf-8?B?U3RKeEZpNUxxREdoaVcyTWFkaFhjb0xTSlE0QVNXZDlRNFdIZnc2M2JrU3dB?=
 =?utf-8?B?TjBSdWxvdVZ5cmg2WWthbFRCWDZZWk5zR0EwR2xhT2taOE8ySElqOGJNZVlT?=
 =?utf-8?B?MFBqb2gvenIxRVlIZ1Nsb29WYWE2cmIvTi9EaERFc0F2bmx6NlQ0eDRYdnp0?=
 =?utf-8?B?MW1wMExQdldFWE1GcWFUc1V4VFRTRVByeWRSTWRBMTN5NGtUVkJpd0pBSi92?=
 =?utf-8?B?UjB2ZjVZNW54d2xwaGp2T05xRVRlKzh5Y0tablJ1VFJ0Um85cFpHbjJjSkY0?=
 =?utf-8?B?UnZNRUxLUDlRNVVWM1VjRCtWdW1TSlpsN2xzREhvZTBPbUVWakp4SDA3SXFz?=
 =?utf-8?B?R3JpaHN2QjYxMGJ1ajFiNm9HYWNNRUZickljS1ZiM2FWTC8xc2F1Nm9lZ21C?=
 =?utf-8?B?WjBQQU9vNlN4blYwOHhpaFI5Y2JCWTJhUTZRdHpMa0p2Z0ZHT1RwYWpMenJh?=
 =?utf-8?B?bUNJZUU2aXMvekg2ZnA1eU9LaVkzc09COVN0cEk0QXp5UmQ5RTUzdkkzajg1?=
 =?utf-8?B?c3NYcHdHREVqV1lLdm1uTWRxNEF1TDRsRVRCa2NUdmdjRklLaHEvOTBmcGJ6?=
 =?utf-8?B?bkp0clVqdHU2OWcwM3V1ZWxFYktob3Y5ZFEzbnltbHZiQS9Sb2pCTlhTZ012?=
 =?utf-8?B?Wk5UUzdTWVQzRkY5SHMyNnpOcUIvMmM3bS9tQ2szaVJjMkc4UkFGYkUxUHNU?=
 =?utf-8?B?ZzVoZGROK0hxdFhBa3F0VHd3ZEFMNCt2UXp5ZHZqb1BMUXJ6V0dwN1NLWVFu?=
 =?utf-8?B?ZmRHWjZDMVU0ZDJ0NVlLdUt1WVhtd3RxbjJCL1ZrRGxaVEcvOVFBMGVtOHUr?=
 =?utf-8?B?YTZmREE1YU9SaS9oK0VNNlVJZVk2bFRTUXNSdXl0cE5NREdUOXpEb1Rvbmwy?=
 =?utf-8?B?LzZkVUhoVUlydDJONHJ6ekRIdHlwdzZQMWl1ZlI0VFFFNEFBL21YTC9YRmNL?=
 =?utf-8?B?TDJNbXI5TVcyTm9EY2c3U0RHRFdXK1hlY1hmSVZWb04wbElYM083Q25KRjNa?=
 =?utf-8?B?MlRPSWZFdXBBSWRyWVZBZFJkMXpnQ3h4Z0dmSkc3eHFXVENLbUwxOUdlRXRM?=
 =?utf-8?B?MXNKSStVRHlPV1RQbU5LN0FuWVRNbVM4WnpCc1l1OENGdDlYRUwzRzJTYWpo?=
 =?utf-8?B?aVBmbHRLakNXcGYzYkNYeWd4dUF1RVNNdW55eFlGeHhTZ3VUV2FIVGxjZjJ6?=
 =?utf-8?B?RVhCOFR5UFRKUGtzdENHVFpteFl1aCtZRHNPZERwSDQ1MUVtS1ErTmYwQ3lI?=
 =?utf-8?B?MzZTbkRHeThlaG11TFlEMTdDSm1rQzVWYnBXbjk3QjRvRzVvMW44ZW9ISmFC?=
 =?utf-8?B?T2hHZjVOQ3k2SW1RNHhJTlVHV0JPbHRJZnVnK3ZRd0t2ZWRMTC92YkVyK1V4?=
 =?utf-8?B?U1JKR245QlNGdDA1QW5hMHhScjRiYVZWdFpFOFhKQTNudmJuYlIrdE1ibzFp?=
 =?utf-8?B?MWpLbVlnVFo2UzI4N09Gb1JNTUNZdmhoczNEdjQ0Smd4YUlGR0Q3aXN6Y0JT?=
 =?utf-8?B?OEw5a0p0Yk9NcEk0RTQ1Q0ZWZTk4bWRwQ0hvOHlrTmZRY1owSnNDZzVCcHR4?=
 =?utf-8?B?MENMR0Z0TXNkUzZ0N3pKSGh5Q3ZGbTJEWWJkUHA2QXNneFd1YzFVdUlmaDdQ?=
 =?utf-8?B?NVhIamxKS2JJOVNnM2VVQlBHWGl6VE1UTjZYakNreko3dHgxcEtROCtKNUhr?=
 =?utf-8?B?QjFPcHprT1QxZWFYV1k0SytVRmpIMXhnUThGbnRWOGdRYld1Y3AxTlhlQUhL?=
 =?utf-8?Q?PmLbupngVnc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB5516.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ym5VbGVqbUJhTzQ3SjVsVGhuTzFIbjdraWg4by9neGI5OExvd0VBM1RhVUk4?=
 =?utf-8?B?TkMzUWJlS2xGUUFQMUhialZXUW9UQ2IybWovL3QwRTdGWGovOVpYNFB1MTBr?=
 =?utf-8?B?Zm40ejBlM1B5RlhrMjlRRzNReWtRYlQ2bld2aXFrdWRZcEFaNkU5ZGFMSDJD?=
 =?utf-8?B?Lzg4ZkNydTFaRTBSZ2RHcnNGcVZXNDhKbDFaeXVGZ0czTWFQNWRQTTdLMTk4?=
 =?utf-8?B?QXZHWGM5eW1sQnY4cERXK0J6U1ZrcEFXcmRUT25MdTJwR0NNMDZpd2Y1TWNY?=
 =?utf-8?B?MVEvUGlqb0xqbyt4c1Y4SlNWbFlCU05TeGY5aTBIN0ZrOGdLQWFrbXNxYk9K?=
 =?utf-8?B?TlBRa0F2OVZwQWhsaWhORmNscVRtbGpuZGZQTHVnWmxyNzdORHNURG5jSlFL?=
 =?utf-8?B?YTVlY1d0L2Q3ZmRMdUpKV3Y2TUtNaXVLWkVGY1dIQjNvd2NaMGR1WkVoQzlE?=
 =?utf-8?B?b3JNVDF1K3lGZlI2ZkMyZzlSOWordHBJNEpxR2kyK2l2b3hJbFhERk5ZdUdx?=
 =?utf-8?B?MDdncUtDdU4wOEMxZHVLdGNxWExMbEZMMkFDZFdKMkl3RXBiUjNQOUkzRkU5?=
 =?utf-8?B?SzFKV3gyN1IrekNBbkRoVFEzQ0tCOTlBS0h5RTE4b1pjYkFORmttay8zUWxq?=
 =?utf-8?B?T3ZYSHlvR0JmSnZGTGs5RFBDRjlyL0FqUHlEbndPcVRVazVxNFlmVGR0T2xz?=
 =?utf-8?B?aUR5VWJPaURpaStlQW1lK1JlTkNKRmFRTzN1Z2FBSXFaTjdDdUlVeDBBNGxY?=
 =?utf-8?B?YXRIekxoZkpPVWJqd09xMSt1RG5aMGRsVm9YUEdTT2xpRFJ0RUwxM2FkUmxj?=
 =?utf-8?B?WXRtYUZSekpsdXJjVHVmRTR4TkdhcVIrakt5Vk1nV2I1RGY3WGk0TUJQdkYv?=
 =?utf-8?B?TXM1czU3WEt3UTNrWEFqWXJTa3RVLy9wWFJxZnNVV24ydDhkNnU1Z0hBTG85?=
 =?utf-8?B?QkdOcjIxVmtFS2VsVk03TE5pVnBCbU5PazVsaVJ2OVRndGd5Rmh0dTRBN0Fm?=
 =?utf-8?B?ekZPODM1Smg3bTBRZDRCUm1KdDZUSll4WGkwYnVqQytCR1V5WDV0aFFkWlV6?=
 =?utf-8?B?OU00c1NRMU9wQlRmQ0hUNHlLNFZKVk4rbHlNYzlVUkxiL2lrcFcreUJLWmJI?=
 =?utf-8?B?UDJYMXIwcUlKS3I0MlFLQzJJeHZjUE5lbm5EeVlQWEt2cTE1K1lKZDVKYkZI?=
 =?utf-8?B?V0hCc1RmSXF6OHlWSVZkWng5QVRyek94ekVwSDJIeERIYlV1N0lWNFJOVFJO?=
 =?utf-8?B?TU45MmdDSTVrdmZocXFXT2YySjkvSkh5bW1tT0RjS2ZaN0tIM2xuV01aUFVo?=
 =?utf-8?B?SitUNDdHM1BmSldZWEhUdEF1VityU1NxcHBxWmh5ck5FaFJ4SkszK0phajRQ?=
 =?utf-8?B?RDgwdnY3QjFhdWJlV2c2RWpWdmhUc2pxaWtaaE5rZHFLcFVabitrSXI2dFdL?=
 =?utf-8?B?enBTSWU3aXNKRk4wVXRXUjkzOXhURCtxZngzdnRTdjA0dW5Bbkg3cnlyR0pH?=
 =?utf-8?B?RnBrQmZ6eGRwcDAwV1BXYS9SaDd3aVNPSVM3Ri94bkY1RCtPWkhzWUlPbEVG?=
 =?utf-8?B?NTZISVREMGxyY3V2ZFF4RnQ0UGFHWkt3c1NWQ0U5Q2lReXUrL2x5WFJFN2xa?=
 =?utf-8?B?OWRVVEg2Z2tQck5YaExLdklsaTBoaEVJZWR5UEFia29jSHNBVmlOSDIybDE0?=
 =?utf-8?B?a1grNWlKeE9KWGo1amRLYlJSNXlONGxBcGNxbHlRTTcxUVNhcFhKNGJXN2pH?=
 =?utf-8?B?cHlYK21VOEE0dUFEUnY0aElLMktLa0dBUUhYNjAzb0JpeG84bXpia00rcitF?=
 =?utf-8?B?YWQ3bWJGOVhiUFRkVlBQdUMzZFdrV2JzOXRPM0tFelE3K3k2WkcxVm9jSFE3?=
 =?utf-8?B?WUZTaXZJeGRYbWlQalJteXV0Nnp5b2lkalNnS0tlUEFvMDFDbFlqTGJ1Q2RE?=
 =?utf-8?B?T0JUOWtyR3ZmL0tJQk51UCtMWTYrVXFGRmZ2OVhsSFRsaUdtaisvaUg5Z1RP?=
 =?utf-8?B?bWIvbU1QVStTWjhQT1Y4ZWFjMk8wVkl6U0dTSFN0cEw0ZS9iTy8yQkRGU3V5?=
 =?utf-8?B?V01oamY0RUtLcS9uZWQ2MThZSk8xWnUwR2NXMmNhN2VtcllqYzJjbkVUc2h1?=
 =?utf-8?Q?pSYS14Kry11KMhxrsZsRHVoIp?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ba9eab5-9165-4dd5-4172-08dddda85eae
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB5516.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2025 16:08:57.2616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mwSrsry0ZDSckOfWNK/DtyS3j1klkworWnCVsEHaX3G1vub4J9qQIHFDMDJjiM2c5Cw1Y5GPB+bdZELtThBedg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8878
X-Mailman-Approved-At: Mon, 18 Aug 2025 15:25:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WFW1CzjJKoX5gs3s2ASrZoj90Z9a9kQSXVgBl3U+Ces=;
 b=WyqGIcw/Ab8fNFQO6/chJPRCsFA+JocluAC+AIJm/hppTu5lHZQu+3bADhfPPP2wxpQicPJxnXSKJTnmwB4y5BMAcxw0Nv833YaEptGv2oi356e2gUTqPN5emjryiLnh7zOG8m5unRHFJmnqbBaenUcsonYx8BjGc/94cdw4vgG5l0LnbveAXYHcn1zUYJDfiAeO5id8JT/UDDTWqZLEUs+v8EYK5lt8r+odjB42I4dRAIMwlMWTHjRrWjJ6pNuKg+m0q0qb1Fw5me/UuwS1wVd8HfGvD1rfYPP9SEn+cvPioNprDO6a7gq4gXMO0xvm6wYBuUZUM1pzOQmY8P7BPQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=WyqGIcw/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next V3 4/5] devlink: Make health
 reporter error burst period configurable
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



On 15/08/2025 22:26, Jakub Kicinski wrote:
> On Wed, 13 Aug 2025 21:55:48 +0300 Tariq Toukan wrote:
>> diff --git a/Documentation/netlink/specs/devlink.yaml b/Documentation/netlink/specs/devlink.yaml
>> index bb87111d5e16..0e81640dd3b2 100644
>> --- a/Documentation/netlink/specs/devlink.yaml
>> +++ b/Documentation/netlink/specs/devlink.yaml
>> @@ -853,6 +853,9 @@ attribute-sets:
>>          type: nest
>>          multi-attr: true
>>          nested-attributes: dl-rate-tc-bws
>> +      -
>> +        name: health-reporter-error-burst-period
> 
> the "graceful-period" does not have the word "error"
> in it. Why is it necessary to include it in this parameter?
> What else would be bursting in an error reporter if not errors?

I see. Would you suggest renaming it to "burst period" through the
entire series?
for example in devlink.h:
default_error_burst_period --> default_burst_period
> 
>> +        type: u64
> 
> could you add a doc: here?
> 
>>    -
>>      name: dl-dev-stats
>>      subset-of: devlink
> 
>> +	DEVLINK_ATTR_HEALTH_REPORTER_ERR_BURST_PERIOD,	/* u64 */
> 
> The _ERR here won't work if you used _ERROR in YAML. 
> The naming in the YAML spec must match the C naming exactly.

