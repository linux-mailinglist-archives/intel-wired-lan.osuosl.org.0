Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CFFCB9776
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 18:37:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3338540AC3;
	Fri, 12 Dec 2025 17:37:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sw4xfcu31hCb; Fri, 12 Dec 2025 17:37:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C11740AA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765561049;
	bh=6ig7l0ZbKODP7fsJEh7TDUC0ThU5RhTL0dQEiIZmdH4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=988CR57CkL/AdumR40QI3wIANY5afqbftFjWy3MVAKwGD8kCuVayIgUPWxrbUQBwa
	 49e99ZvFuklwEqFmQkFnBoR/neMWdvRgO6YpJs9TCmWNM9tJJA7uWmfJMwI42LbJPc
	 9+D9K0WQg0ft30mwSc3NG5+Xy0WKsyaOLK4HVXEJ6Bs8Zne5F4YOfxvXdsaOupn9Js
	 2dJapA/NsqT5tWexjcVeOkxHiD1GzWo4BFAk6eaw1U3cqAEJt3Mmi3gjiltQJUj1Qh
	 nm3f/9K6iTlgww4DX1SfFzBhxcWhskLGrb1O3DtK0ks0so5q0uUltMYNaboybig9fH
	 /igt9Fx7u3ncw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C11740AA5;
	Fri, 12 Dec 2025 17:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B197DE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 17:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A407D40A95
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 17:37:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3R4CcqC5p3F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 17:37:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.93.196.68;
 helo=sa9pr02cu001.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B805040A77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B805040A77
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013068.outbound.protection.outlook.com
 [40.93.196.68])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B805040A77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 17:37:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=maYvHhPNnMkEPKkWUjrpHwcfUNqhHqL0EX0j44P4+T/wh7mp1h6/t9EF+ClqfE/qDto8+cU09vqmzeIpFpXasLd6s8dp2fUl42lZNVV7K+yI6hp3j9e8AcB+et3+CGi6O90G+brskGuN++hin2bFlD0RJsqlYk+zirSWc9Uw1PQk4riWOB1Sih/NYhC7yGMcSFHoBFSEzLFMDRySj/u53kdA3r1COU7dVTUAA/Y0W9QWl4qnrvvQ6yXZgtqf44ysnO/2wjwZ6tUbct+4mTQJp2SO3QoVNGGYXm3862dpeK3L0OtcDdn+N0lX8JL8ZqOg6XgxauVwVhQN1FcUd3FMmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ig7l0ZbKODP7fsJEh7TDUC0ThU5RhTL0dQEiIZmdH4=;
 b=Wbf9giElR5tNT0IgyL5BA+2KS757Wx9kFcCd3zLdmCQp3zgIzELYUVou/HtnZhsuU8tY8zHQs0I2//iX25QmBlj5ofzAgxoDQnkzeef3JO451SgoFoNE64Cg0Xs6d8pBenpfPUVeb+CMFW2Tx7W1grkZs9rdxOTXGhvjrX8t8Y1Fs/wqpNUsWaRTkK5n1xJ3E/dNukyz2PKOIROzp4+1EYm7UJw9NPVk4bOZd+kKvDALbW75KyBWHy3A7iy2C1t8cdFStaVWmYc2uIK8M9uHPXekuQbRuZKh0eP4w88vxr0Ed1ancf3gdOkMNyDgTEtNpjVhGZO3gg06BL+iwlbweA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH0PR12MB8774.namprd12.prod.outlook.com (2603:10b6:510:28e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 17:37:24 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 17:37:23 +0000
Message-ID: <ad274880-8736-459b-ac9e-fac2477b44ea@amd.com>
Date: Fri, 12 Dec 2025 09:37:20 -0800
User-Agent: Mozilla Thunderbird
To: gregory.herrero@oracle.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251117083326.2784380-1-gregory.herrero@oracle.com>
 <20251117083326.2784380-2-gregory.herrero@oracle.com>
Content-Language: en-US
From: "Creeley, Brett" <bcreeley@amd.com>
In-Reply-To: <20251117083326.2784380-2-gregory.herrero@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0251.namprd04.prod.outlook.com
 (2603:10b6:303:88::16) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH0PR12MB8774:EE_
X-MS-Office365-Filtering-Correlation-Id: f3787f42-4e29-4d5c-20bd-08de39a51c24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFFNdFovUzZhK3JsampnN0tyTldCOUQrNXNXU21tSGNGbXZHcWVxU05aNGRD?=
 =?utf-8?B?NUNFWGhOWVB3YlZlQzBma0psSG9HQlh5Y3lRUTFwTFdxZGxINHY0OGJhQ0x2?=
 =?utf-8?B?Zk9lTHlUYmdqTSt6TDJUeE02SEp5TXF4VStWZk9hN3NEb1VnWFNhQWdaZ2hD?=
 =?utf-8?B?OUZ4VjdXT2NNUmUzeFJJdVR5QXBHR0JxeGJ0MkZnYVJQMEVxZnhlRCtkNGRw?=
 =?utf-8?B?c2RtWlBTbmdNeEdEMDRHc3cwakNVSytLaUZPYkhFM2JVeGlHY0tlSFZpQVVK?=
 =?utf-8?B?M2s4czd2L3pIOEJsU08zdzVlR3hqeU01aFhpeTBSYU80cEVPNkJLZkwwRkRu?=
 =?utf-8?B?bll5MjdyZzBZbE5Ic2FmTWtUZlAvMThMdWRueWJlUDk1NUlIWVllUlNZWEFn?=
 =?utf-8?B?cHB4cDNqOGw4aGFaem52R3p1NmRyWC91bGhBdXFaVjcxTzB0Y0xkdUc2QUpW?=
 =?utf-8?B?ajRPL2kwUXFjSHZuVmE2YW5kUGtyYzZwY3NXeEFQdklXaEVoNmJyS21GWElw?=
 =?utf-8?B?dEJWN29RVE11WGlHMWs2Zjd5ZnRjT0VkS0twek00NzBPTjdlU0lEVmpqY2Zk?=
 =?utf-8?B?TFpCRU5aWFlWZHFGSERkYk9mMVUzYlFUWHExZlBydDA1a2FaMERWUHhkekR5?=
 =?utf-8?B?cFVlMDFuOEJ2UU5LOG8zNTZpOVZZNEtMeWNtMUc0REExNTRoTWVYNzJoU3g3?=
 =?utf-8?B?bEd5Uy90TFkvaklpSk1NcE9rbXN3RVc3NU1FZmZVbExxZ1R6YmtKVEVsa2FZ?=
 =?utf-8?B?Y0RUcFFTRUxQbTVDbWhCN294ZG9GeTRiaGpjUFR3ZXZ6S1lEbTdWeVE5bnVS?=
 =?utf-8?B?aXlqQ2ZRV0p1MjMwdk1yU21EK2JoNzIzQ1AwUUM5SXMrYXhrQ3lROWdHSldy?=
 =?utf-8?B?cXUxc2t6U3pKVVRUNSs3Y1hXdGVEOXFyWnYyMEN6eHNibE1oUW52bXB4eURL?=
 =?utf-8?B?bXAyWCswYWxJYWQyVjI5VUVacWc4cWdkUXhFYjVDcUJ2RG5XeU10bWRadE54?=
 =?utf-8?B?K1ZXNXlkR0FHeG50b01mQmhCQzFnL1N4TTREWlJyN1pLdGVSZitxMHJVMnVv?=
 =?utf-8?B?OEZTVGpwUG1BN0xBdVZrMUlQTFJwQUlPbk1vNnlBRGNCTXo3Sm9NS2pTTTQv?=
 =?utf-8?B?NHlGMG1UTXBjYXFURHVFanlNMXlyT3RRUU5NOEFVNlY5b0ZiYzE2M0NxVVJY?=
 =?utf-8?B?WHZlN1FmVTJOMlVOQmFnRC92ZTVhNGU4MEQyWTBVMWRLYmY0RHFvWlVwdllQ?=
 =?utf-8?B?eWZJc3VFUEpvZjRseDlNbGY5elRxajVCV1A2c3ZzSmt4VkZVMkVHK05TRDRL?=
 =?utf-8?B?dy9pVG55QUc0K0FOZzNMSnh1YzQ3eUtNd0QxNVNnK2hOaHdHTEJvcVJBVWNp?=
 =?utf-8?B?enRlZGdBOE9mYitLUE1MREJUZE1nR0FIQXBxaUs2OXFYRHAwTVBBL3VzVkRH?=
 =?utf-8?B?eXlzaWlzVjJWOHBWYTRoYzNnRFc1VSt0bzZHVVVvSnF2bWkzR2U3N2pZSmdO?=
 =?utf-8?B?bWFZR0NCSXN2R2VTY1ltL001Rm9RRjRoOVg4VzNXc1ZBMUJhNTNyYU5XOUJ6?=
 =?utf-8?B?QytkRjEyWXYwQmdpQW9PaUFVRitCUG1Lc1Z6U2JEcUxRdlBYQ3o2d25mdG9z?=
 =?utf-8?B?UDVsQjRIQjk2V2p4ZGdsODdycTlkZGpDZ3AwQmlJbmlVZVo5dEZ2cGFtNXdS?=
 =?utf-8?B?QkdHS3c1WU50RHUxQUtsWkltSm9NRllBN2xQUkRpY3E4VStTTUo4QnhXcHJC?=
 =?utf-8?B?QnN0S1hGSkZZaE1GNjhON3FWZ2xYSG0wOE9hNnZQVXhSSzZJeFN2NUE4andN?=
 =?utf-8?B?eTNUYTRSdXFlMTVsT1MxRGRpUS93alJFYjF3SmRDSWV5akFBbHhvaGZ1STUw?=
 =?utf-8?B?R0FTKzI3NTk2eVV6Wlc0K3B5Z0xUaG9WN25nS0s4VWZLVFRmR2pWVXNLSEtv?=
 =?utf-8?Q?pmoiaNMdlkCQKsJS+kDTVgiELdd16Ud6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzFxbzRubWZ3ZXNHMVh1d1JYVjh6V0JWMk1rcHRWbGt3c1BWM1lQd2VCVVJR?=
 =?utf-8?B?UU1oczF0SUpGV2Njbkg3UVFBKzFhaE1hdmhtclJhbkM4SkRRTlN0MTEvWVZq?=
 =?utf-8?B?elowTkgxMHBpWTRtK0JmQ2Rocm1BV2VmaUh1dVEwcFFFbjFTQ2NOUE5jK0t6?=
 =?utf-8?B?VWVBMmZRMXVqcU9xOXRaRytDM05RN1V3elpmRlpheWk5Q0VZUjc5S3MrTCsr?=
 =?utf-8?B?Mk9Id0JSdGg1ZXA3MUtuSUNnWnZ4YTN0YmVES2FHb0VFRE95ODFFK25VOUZY?=
 =?utf-8?B?VVdmeVFHQ3BVR2ljbnZZWEk2MXk5QWFUQjhMRWQzWE92UjhaazhkN2dKekFV?=
 =?utf-8?B?NFUrczRTMXpSdjZxZ1hITGVHaTFlelZiTnFCSDdJbkRic2tycUZFQUczS3M1?=
 =?utf-8?B?N1FlSUVHU2VvWU96OGVLclVQUDhjcTN6a250YXMvaGxielNyS1VYTGU5ZlZN?=
 =?utf-8?B?eEE3L1JmRy85OHdUOGVCd0pFMjdpTDNsL0J5LzV0WnYxZitnenJMZ3VFVHF3?=
 =?utf-8?B?Q0lHTnVVTXhLQ3p2aXdIUWVBZVlXVTllazBqVU5IU1BYTFh6WVh0NEtJUmEy?=
 =?utf-8?B?dURIOExYNEhhWkRmSno0T25mNnFHWnhBclZZdllNTGpXTnNONmFKRlZqemsx?=
 =?utf-8?B?eVI1M2IzSncreTdBTk5jZDYydFlsK2dnT0E2RWowNTY0S0RlMkdBNzZOY1Ju?=
 =?utf-8?B?bmhFUm03cERDL2ZBdFlsUFB4NWplVnNhUitucUtiQlZZS2FYQVJvVnViNGU4?=
 =?utf-8?B?Zk5SUXhEc2ZydnI5TUhmUXhqRmF6TGdzSkswQXZGdkRVb1NVWC9JWGtlY0h4?=
 =?utf-8?B?dklOeFltUlM0ZHAwV3JxNHY4a09WaFBjTEo5R3o0QUcwbjZkNGhkUndHdW5r?=
 =?utf-8?B?RUp2ZEZwd1pkeklqSmNZcHM3QllrS1p1QXNTUFhLa3oxVnc5SXc2RTVHSjI5?=
 =?utf-8?B?alpibm9oa1VIM3htTTlPcnhCWitMS1FOL0pJczRlZi96MWl3MUpHaHNxcnpj?=
 =?utf-8?B?dFB2eXBFV2w1MldlS24vcURKc3JSN1NTUjNNa1NTcW4wUEV0WlBMeFh1cFBQ?=
 =?utf-8?B?dEtRMVBSYVl6eEJPbG1HQTBHL1R6alBNWng1S29BalJGOXRZNHFGMTI2a3NC?=
 =?utf-8?B?OEtIeG4vc0JUSVQzQmVSdFR2dEYya3FQajJSdXZwRTc3c1p1R1VUd3J4Mk9n?=
 =?utf-8?B?b2hWUzZuMHNRMy9oeit5dFBuSXRsa0g5WGlTYzBoZjg4c3BxL09pU3VJaHJi?=
 =?utf-8?B?OUpMaURsNk8vWlBkZWsvTWVPZ1llUk9CRlUvODBLdkwwRWVoZ0tJMmFkOVR5?=
 =?utf-8?B?ei9mb2ZjSU1mRkJoN0l5c3dSdzBuOTlXRkJEbkZSaWkzRW5Rc3J3QU1lT2hB?=
 =?utf-8?B?MlEyREVHS1BDQmNCU1VyUVVPYnI5NDY4SUpXSDIxTFZaemp3Nkd6VklUdGkv?=
 =?utf-8?B?ZzN5aElEOVlhNHYwcXNaaHZkV0sxQUh6Vnl4MUFXeG1YUmxCQ0ZUYVdQUENW?=
 =?utf-8?B?Ukc1eEViZlhzMDBuaUlLZHhKcE82eGtBc1F1bXFrSHFCQmhqU0dPSnQyN1hE?=
 =?utf-8?B?N2MwUGY3a0EzYS9meC9BQVI4UkVYbE9IS0ZUSmVydTlnYVFIYlhMTDJiZ2Fs?=
 =?utf-8?B?NWxGSFd0MmExODNlTWZaSDNkTlBxUURiUXY1K3h0K1paRlZpMmtESXJhT1Na?=
 =?utf-8?B?dVluT2RJV2trKzkrZVAzaFUyelUzK2Iwai9aTTNPV2RkUmV4TUZBQkNRcXA2?=
 =?utf-8?B?UnFuQysxSXFYbFZwTHE0b0RNTm1BRDJubGl4U0ZXcmZuNk5YRkpKa25xaUdp?=
 =?utf-8?B?cUx6STZ4YmFBRXZNZ2VNOW5KMS85M1ZoMUlja1lxakVLRGp5MzhCa1N5TG85?=
 =?utf-8?B?bFh2cGMxTWtOTmRYelhLbmN0RktkRWRaTkt5WHVOdUtVeHVscGo3OElHdFVD?=
 =?utf-8?B?Y1Qvb2gvMFJkKytTUFBsbjFnTW5WMHp5T20veEZHWUpuaHBia0UvdlBHQk9j?=
 =?utf-8?B?TFdwYTZoWHdlTWQ3NlAxejF0TDNrek5BeStGQzU0T3JTMHNQQlRkN2VnaFg2?=
 =?utf-8?B?UmFhSW1Jc1c1M0R4SXdaN3FSZDlaS1dZZ0pzZHV1Z2xCN2RFMGZnaG56Vnh1?=
 =?utf-8?Q?7KRWlmE6JPyK0A/uOIf7dxV5F?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3787f42-4e29-4d5c-20bd-08de39a51c24
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 17:37:23.9156 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z8OC+8Bczpy4I5MOgN9n1ZJ3U8y98kTY3tSCJCXDKiAJBeKQ1sMcXg7yYhkL0HgmuxyaaM6qoVQEvgcPX9Hm+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8774
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ig7l0ZbKODP7fsJEh7TDUC0ThU5RhTL0dQEiIZmdH4=;
 b=tgx+9ZmESy8nJEUMGxw7AyEht3VQzqd0M/UKRGvDfTiWdEOJnBAAEmXs3zGYdbX3oyAF2pM0OFYAGYV2Uycsa0xJEohNom45YweUyN/AxB0cjaGd5VJyWo9cI9jGY2TUNPia24iIY86VbBm94JqOXHQ7ymnnNsWIQE/SFnQ5P7M=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=tgx+9ZmE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 1/1] i40e: validate ring_len
 parameter against hardware-specific values
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


On 11/17/2025 12:33 AM, gregory.herrero@oracle.com wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>
>
> From: Gregory Herrero <gregory.herrero@oracle.com>
>
> The maximum number of descriptors supported by the hardware is hardware
> dependent and can be retrieved using i40e_get_max_num_descriptors().
> Move this function to a shared header and use it when checking for valid
> ring_len parameter rather than using hardcoded value.
>
> By fixing an over-acceptance issue, behavior change could be seen where
> ring_len could now be rejected while configuring rx and tx queues if its
> size is larger than the hardware-specific maximum number of descriptors.
>
> Fixes: 55d225670def ("i40e: add validation for ring_len param")
> Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h         | 18 ++++++++++++++++++
>   drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ------------
>   .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
>   3 files changed, 20 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 801a57a925da..5b367397ae43 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1418,4 +1418,22 @@ static inline struct i40e_veb *i40e_pf_get_main_veb(struct i40e_pf *pf)
>          return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] : NULL;
>   }
>
> +/**
> + * i40e_get_max_num_descriptors - get maximum number of descriptors for this
> + * hardware.
> + * @pf: pointer to a PF
> + *
> + * Return: u32 value corresponding to the maximum number of descriptors.
> + **/

Nit, but the function name is descriptive enough without the documentation.

I think the purpose of the function would be even more obvious if the 
argument was a pointer to the hw structure instead of a pointer to the 
pf since the max is based on the hw not the pf.

Brett

> +static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf *pf)
> +{
> +       const struct i40e_hw *hw = &pf->hw;
> +
> +       switch (hw->mac.type) {
> +       case I40E_MAC_XL710:
> +               return I40E_MAX_NUM_DESCRIPTORS_XL710;
> +       default:
> +               return I40E_MAX_NUM_DESCRIPTORS;
> +       }
> +}
>   #endif /* _I40E_H_ */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 86c72596617a..61c39e881b00 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device *netdev,
>                  drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
>   }
>
> -static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
> -{
> -       struct i40e_hw *hw = &pf->hw;
> -
> -       switch (hw->mac.type) {
> -       case I40E_MAC_XL710:
> -               return I40E_MAX_NUM_DESCRIPTORS_XL710;
> -       default:
> -               return I40E_MAX_NUM_DESCRIPTORS;
> -       }
> -}
> -
>   static void i40e_get_ringparam(struct net_device *netdev,
>                                 struct ethtool_ringparam *ring,
>                                 struct kernel_ethtool_ringparam *kernel_ring,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 081a4526a2f0..cf831c649c9c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf *vf, u16 vsi_id,
>
>          /* ring_len has to be multiple of 8 */
>          if (!IS_ALIGNED(info->ring_len, 8) ||
> -           info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> +           info->ring_len > i40e_get_max_num_descriptors(pf)) {
>                  ret = -EINVAL;
>                  goto error_context;
>          }
> @@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
>
>          /* ring_len has to be multiple of 32 */
>          if (!IS_ALIGNED(info->ring_len, 32) ||
> -           info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> +           info->ring_len > i40e_get_max_num_descriptors(pf)) {
>                  ret = -EINVAL;
>                  goto error_param;
>          }
> --
> 2.51.0
>
>
