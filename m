Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C146CB9CC9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 21:45:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DD3A41205;
	Fri, 12 Dec 2025 20:45:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NQ22_FrQ3S5; Fri, 12 Dec 2025 20:45:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9972F41207
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765572316;
	bh=wvG6o4J+1CCblmD77OI679kv9iPmrSF4KcScZEnHpvQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rBcBN7K4EaSu+1tyXVwhkN6tSycw7O0QOGQ+CkiXZJ9gSt4z7UlbHG4DqHbDm3rJc
	 VLJVjoRL3mr0jSUgkYaqHrmhbuIBlMm+wzql4ShYV7AYpduTJ9AUtMNu7g3yzITOt3
	 rIvKl3VqRgNKHIcCPUQuSxfDqfAVBmdA5FlBt1HUQMa1xLFoHtyk25/4IjovH5OhRR
	 pdjqU2bTtQY1dgW0Kx8v3I/Wox/4/Hl9nuSvUTm6qbCADimt3NezUs8xeAD0LGnUDL
	 Q7SQ3p70qpyWU/NKPI0HFX2IoJdLyUhFijrRHuPK3/HP4VpDtOduki04kqI1HkfkGf
	 Rn8JPSpGkQR1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9972F41207;
	Fri, 12 Dec 2025 20:45:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C46892C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A750380CD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:45:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sPzpF7pknHU3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 20:45:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.93.194.6;
 helo=sn4pr0501cu005.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8BD3F80CDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BD3F80CDC
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011006.outbound.protection.outlook.com
 [40.93.194.6])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BD3F80CDC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:45:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kgsp+LjKjWxIFa7WiI2MWzHYHjnNkxsvTkP6F5fOxZxWgU48DtdBMJOTFAV3D2/Az5lxgfNUVo5p057SxdPDWFec72qovDhEoYcKDp+92jJt8rTpOwh3iuOtw5u4EfeVRndEM+ZkbTtJDeWC30dB+vT98P7hPNXJFap0gY/zSkJSQN7H6U/+pF8xZKx3Ge9efddbZzAHYwa3kTPdtA5SoLL0qu/Mn5azNQa1LsBWbrmFHy6FgRRpDPvbMknBy992gjFVC8EzC2N+x1a9heVQdJqNw+2K/AVdnx5r3QsHu7Y9I4E01rR43JGBwYb3S5xKAbTQzefJXk7yf/FZh4NEBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wvG6o4J+1CCblmD77OI679kv9iPmrSF4KcScZEnHpvQ=;
 b=xUWKX/Hk02qKVzqhqEBsPG7N7GIqQzSpIV4SP4QlmqHKrBnlGRQDR1XQHnOtuRh9XWylwfwOWXAK7WBOMM1SRZk+VOzrWMPMy7qLXAM9mnnwrZyt7nXzM5JLpu8lzEDequWCJMggQcx8cwaGM/0XFXXO64M3jvFm9R3HvIVnV0P49/ePx5dWupezVweh1IlK0Twly/WtR6tKybv7JLqEEqyN00A8Ig1xU/LiZbxbePVeKHYzJG56YKTrZ2rbfb9pOw1qKVXd4iYi3pmUYAepPOJirKlzbaBDINtP822UrZLHMCWeqgM6WgUIa+w2RU9bniM0nLYCzshZX4BblD5jhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by BY5PR12MB4083.namprd12.prod.outlook.com (2603:10b6:a03:20d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 20:45:10 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 20:45:10 +0000
Message-ID: <c647eb4c-8631-478f-9fb3-2fdd9dfb0619@amd.com>
Date: Fri, 12 Dec 2025 12:45:07 -0800
User-Agent: Mozilla Thunderbird
To: Gregory Herrero <gregory.herrero@oracle.com>
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251117083326.2784380-1-gregory.herrero@oracle.com>
 <20251117083326.2784380-2-gregory.herrero@oracle.com>
 <ad274880-8736-459b-ac9e-fac2477b44ea@amd.com> <aTx5fiC_YCFF-iD3@oracle>
Content-Language: en-US
From: "Creeley, Brett" <bcreeley@amd.com>
In-Reply-To: <aTx5fiC_YCFF-iD3@oracle>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR04CA0034.namprd04.prod.outlook.com
 (2603:10b6:a03:40::47) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|BY5PR12MB4083:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dbc2078-c67f-4532-ba87-08de39bf572c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nm9PKy9ENTAvWkcvUXJZKzRnNEs3ZGNzRTN6dEZnUURmOTR0S0E4cTYwTmUr?=
 =?utf-8?B?T0d0RDJNOHg0V0drcXFpRHdsVXRZQkFKNFNjdEZmamJIK1NBVUw3aUtXQ0hD?=
 =?utf-8?B?NlZmaCs2cnlVbTZFT2JRUjhLOUZQWitMdjFHYnZCTXhDM1hMbHIvVldjUXhz?=
 =?utf-8?B?c0QwbEpNdFBTYU12ZHlsS0pTU1VOYUtoN0dUbUE0K3FaSHpmOXFFT29EZ2Nj?=
 =?utf-8?B?bGZzbjU5dWRHVXZCTW5tcSt5TjFBWjNxNGdPSVhGdTZOZnAvdlZmb3hvZWdt?=
 =?utf-8?B?Q21NQXNjU2h2bERpaisreGJHblJSMEFrLzQvSXlKelludmZ1bTB0WmpDbGFD?=
 =?utf-8?B?VVFZb2E1aTNkNFFEa0JpZWlsanNUS0hrNjhCZXhwT2FwQlQyYkhQdGlGS3I0?=
 =?utf-8?B?dGRwVlUrK1VCeEhlb3VBVm45RjdJYXhGM0JaNE5OWE5rVmR6S1NhdkhUZ3hl?=
 =?utf-8?B?VHZKRTBRVURlUEdzSm4yMlErbFkvVlQ4WW1GRUNZcFI1RTVxWWdmMWVxZDVQ?=
 =?utf-8?B?d1hGcERKWWVaSSs4WHNoV2M3VkxMTWdKV3AzaDVPZjJ3S0tjTk9KcVQ0R3JF?=
 =?utf-8?B?emJQQU03SW9oZ250RUhneEhRRHdMV0VIV0JsdzFPTVRLSnJDY2RXOE16czhO?=
 =?utf-8?B?NXJRU0tMZ1lWQlY2bHZyWGsvWlFtTC9kV1k4NFl1Qy9hQXd3ZUhab3J2R3Vn?=
 =?utf-8?B?NmdWS0hnNDh1aFBFSjNaYldKekRnUjEzVTJCQ2liMWdRdm94YmwwVkFlbmlq?=
 =?utf-8?B?UUtGL2VjM21kYmF3WStQSVdsTWloRFkxd2MzZ0FMeFEvZjRaZGpkenp0Q2ox?=
 =?utf-8?B?TW1PM0ZzdUlJbXJIY1FiYi9rZ3lYckloVkVSRlliQnUvNVVncFJlM1NqUWpO?=
 =?utf-8?B?b2gwRmJtOVQrVW9pVmFDbWRpTCtOV3NaeU9KcXJPRTZoUlp0eElSWHFOUytw?=
 =?utf-8?B?aDRPTU9OYWtJTnpFL1ZCeGFrTTQwS1l1Slorc1F1ZGF6WGRFTlZiaEJWTlM1?=
 =?utf-8?B?c3BaZzExSmM1MU1uaFNGbUxYVEJNR3c5NUZ1d2w0VTA2NXoyVXBwNktPcEY4?=
 =?utf-8?B?UDJoTmo0M01Idm1KdzlFeEE1alhobXRGN0l6MFNHTEZzbm1BS2xwYWlPTDVN?=
 =?utf-8?B?QVVZTmw0ZGtrb3Y4em04MGRCeWh2Q2YyRCtnVnNZZHNiSVo5U3ZxVTVURDhw?=
 =?utf-8?B?WlpsbW5IL3VsSnVyT2ovbDVPOE5BemZEZ1VSVVJkSUJZS2k4dGllRW85YzNL?=
 =?utf-8?B?N2NGTk9PYkIyR0RrQ3RtQ0F0UExvWFdZaDNQeHZWQm1ESjZIS2lodjBJUjRu?=
 =?utf-8?B?MUh3NGdSUXRScFJWRWV6dytORFZPQVJNdTlOcFU0c3VyUjJjWHRMSWM1ci9w?=
 =?utf-8?B?b3grb0V3UktMTmRKb1NTQ1ZGS2xxVm5Vei93aXlKMXZTMTQ5RkdsNTN5M2lC?=
 =?utf-8?B?dXhDZTRCZHhIVU14dlRmMVlNR2xIbFY2L2xRUEU5TFNSMFphSk5aNlFYK05X?=
 =?utf-8?B?am9pdGJKK1Z6UDliK1luOUZyOEpmYkVwUG45bWQrZWlQMTdGQU0zWjljWTc2?=
 =?utf-8?B?Qld3Y3lHVzI5R29RQVRuS0tyc21VZjJ1L0NSd3NZbFNBSFgrZXdjdlFrOWRp?=
 =?utf-8?B?RGZNYnFIcUNoRUdVSlRFdS9JeWpPRFBOSXpCcTRlQXhXS3pCaEF2VHBBQmlz?=
 =?utf-8?B?eVI2UHVVUkpEdEFDeXpnaEhtc2lMMXROUTRKRE9ET0U1ZGVUTE5xYVE0eDBa?=
 =?utf-8?B?dU5oNVV2SVRGWDlySDBSTTZNNUNhSllOWTJHZ3ZaYTFOLzRyVGlJMGZpWjVz?=
 =?utf-8?B?bTNvbWRETTZlWmlGbVc3bXBNSUtSc2VodzdpTVJ2ZEMydGtrNkpPamp5aW9r?=
 =?utf-8?B?dVcyY2x3bXR3OURSbEdRVVk4NzVjVXBZNSthRkFVZ1grMllnZ2JWWERnbmhn?=
 =?utf-8?Q?QI9cGLBUY0uWYV/jnJGCXBD81jX7RRUb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVptd0gyT3h3VUJtbnFlZ3YvRitZQXFjNEdDQVI3Ym16bWJLcUNkcmZxbnpa?=
 =?utf-8?B?ZGFTd3RmYklJMFk3MVo4dXdsMzBWZUZDenlkdVYwNlYzUk5VMmUwV21wSTFx?=
 =?utf-8?B?c1cxVHNPR0llRUlHS3NlVkpFUnVhUGczQ3ZEYnJWY211dm5FdVRMUkVib085?=
 =?utf-8?B?NUhPMHdZNDFpVkw4TXZhN3Y0SzByb1lyRjI0T2dPcUVONmJ5elZnWk9yeC8y?=
 =?utf-8?B?Lzc0b2NWY0RtT3hHMUZJeDZMRnNHOWk4dWt3NjAzSVNSMHZ1cGFRNUErTzBj?=
 =?utf-8?B?M0ZCR0IxUkE0K2tyNURnMnhNQlM4WWxRRG5qdzNRNTVhR2FYYWJSWTZGREly?=
 =?utf-8?B?VkNadVV5YTZObUFuZG53eXJEVy91QWVOMS90b05vcDl5dEYrbUkraWg4cEQ1?=
 =?utf-8?B?eS9CclA2bW1EOGlnblVzQ2xOUFdxT0RiaEo5eVpUT0dRZ25PaUFZR2ppTldQ?=
 =?utf-8?B?aXRCRFZCNnNCN0tYR081dmM3RFZEV3A4Zk9STjRQd2FrVkt0czVMbEx4bkxV?=
 =?utf-8?B?bWR4a0pIcVZTSytHM1JEajNMSGg0Z2xQYUtnQ3hLWnFWN1NSNXZ4T0ExL2xt?=
 =?utf-8?B?bmpMNnZ3NGVCT3l1Z0gxQ1hCWUptVnZIdEdiMHpJRWV0Ynh2alp5KzJwZmUy?=
 =?utf-8?B?aHNhbnpjYXBRZmVUeU9LMDBuRlhobTlIT0svWkJ5UnRmK2dRcFp0cEhIai92?=
 =?utf-8?B?bEVCdEZ5NFhCMmMvMlAxS04zZGlveEY1UE1aNlRwaGhsQnFyRzNTL2xGTDBt?=
 =?utf-8?B?Q2Q3b3BLcXlUSzZERUJ3dDF1VGRoc2FwdjlJZHJLaWIrb0kzK3dtM2RuN2FK?=
 =?utf-8?B?eWVNTXRSMW1vZXErYjB3NjJIa25qdzU0cEZkQWJuMUNUdVdKdGZLVFJXK29F?=
 =?utf-8?B?VVZ5MXg5Vlc2d2NLK1gxaGpwSFMwTXFPaG1wc3hHdXJmRDVwdGlvWGczWjk0?=
 =?utf-8?B?djZ6S3A3eW13Tm84amRtZmtKbTdjT2IxUnVGRlNaZmNNK3RIZEVZQ1BDTHlU?=
 =?utf-8?B?TkJJZHk5akp5UDFaMk1HYlU5dEpnUks2WlRBWndlRjVxZEZJSTBEWUx5SHg4?=
 =?utf-8?B?NXE1cXBteDZDMncvZmRnYksyeEtUaTN3b3l0clpMR3RrUXozT3h5Z0g5bGhQ?=
 =?utf-8?B?SUlNc2hSWmpGSmxaVjU5dHlHVTlWNm1hSGliaHEvTFVCemRlQTJMQ21Zd3hV?=
 =?utf-8?B?K1REQTF2TEtyOXg5aUFTRExnd3NHbXF5SFl4SHM1RFBNYzdJVmlqdlFtRVpW?=
 =?utf-8?B?NU5wMmVMcTNEdUZWY01HWEl1MnVlRWZaMStnZUJSS0R1UzRhemo3WUUvMzk1?=
 =?utf-8?B?Z3JqaHRydlVzekQwZXJUdmtKRGE1WXh6K1Bzb2lvdFVyT3VCVmw5djB3bk42?=
 =?utf-8?B?dFRVeEEwUDdBSjQ1U01rdWZJTld5b1V2Rlgvb2ZxRXFDSHVFMXZaUnIvQys5?=
 =?utf-8?B?TU9Cak9LMFhzTkFmSi9Ka3hITytPNENJUitILzFDbU5YSlpQTk91L1lqWHZ0?=
 =?utf-8?B?a1VvRDcvTDZkbURGci9vYVNnUXZFeDRRVHVLejJsc2kxVEN6SUdCajY1ZGZ0?=
 =?utf-8?B?K0p1Qm5qY3lGTlpmem9nMGptUjZ4VkNYdnp2eStHcEJ5VHFUbEdGdkJhM3gy?=
 =?utf-8?B?ZWR4a3VmNEhuaGN6S1Joc2dNUFFFQTRXYXNPN3RVM2NyV0dVYUcreG9NcjVP?=
 =?utf-8?B?K1pwNHpRY3BWR0x5Q0dRa2pzdHNZMWdFYkp4VlEwMjNtUjRsWUFVWS9YaW9C?=
 =?utf-8?B?U0hPa0ZTaHlJWTV2YlNMK3VuMTNReExzS255SjM5bzFSdnltVXc0MllTUXNI?=
 =?utf-8?B?MUpES050UWQvL1pyNGplSlNOR0wxb0I2a21oWGlwTjI4TXFleVJBZTNaU3Zx?=
 =?utf-8?B?d2FlVU54akcyajhpTU9zZ2NZSVlNSjJSSnY1c3ZsaitHTXlFRm1wdXhzYlJ2?=
 =?utf-8?B?TFhEcDRTdVY0NGVWNklUZkVVUXUzRG11QjNzQWJ1MThiQy8xVHdCV21zVHMy?=
 =?utf-8?B?bm5LYTZsdXNKODhjcVpQdmd5c0ZmV056aWVwbFE5bXpDREYrVjBvUDdJSThu?=
 =?utf-8?B?VjR3U3VNalZjS1g3bWVyQi9TS2tVeXU5NXR1RXlNNmk5T2JZZXl5dFhINUp5?=
 =?utf-8?Q?nSkqOWI+J5pn0CY9VFXhYThsv?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dbc2078-c67f-4532-ba87-08de39bf572c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 20:45:09.9692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UqmrTihyIqP7WiwoWayHrSyzTthX3BiUYzG27wyKGnaxG2djzVUqh0QZmt8ZiS3ZjclSWm6U2T+TZWAM2Wtl0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4083
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wvG6o4J+1CCblmD77OI679kv9iPmrSF4KcScZEnHpvQ=;
 b=sgwCCGJy9RJ7vy8spstQexxiw/048So+gJIinTUSYfWp6qBW7lnLcBWba+0sL1rZ297vMX+AIMXcDrcbSyg9/Uny0XKhVCatdhtqpDilzwoDQovIsPBZmSJCzC8JETzlStMoabe7Bxl07Z1/WmZKKkKs3v6Y/Agv9Ec0BsokqK0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=sgwCCGJy
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



On 12/12/2025 12:22 PM, Gregory Herrero wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>
>
> On Fri, Dec 12, 2025 at 09:37:20AM -0800, Creeley, Brett wrote:
>> On 11/17/2025 12:33 AM, gregory.herrero@oracle.com wrote:
>>> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>>>
>>>
>>> From: Gregory Herrero <gregory.herrero@oracle.com>
>>>
>>> The maximum number of descriptors supported by the hardware is hardware
>>> dependent and can be retrieved using i40e_get_max_num_descriptors().
>>> Move this function to a shared header and use it when checking for valid
>>> ring_len parameter rather than using hardcoded value.
>>>
>>> By fixing an over-acceptance issue, behavior change could be seen where
>>> ring_len could now be rejected while configuring rx and tx queues if its
>>> size is larger than the hardware-specific maximum number of descriptors.
>>>
>>> Fixes: 55d225670def ("i40e: add validation for ring_len param")
>>> Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
>>> ---
>>>    drivers/net/ethernet/intel/i40e/i40e.h         | 18 ++++++++++++++++++
>>>    drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ------------
>>>    .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
>>>    3 files changed, 20 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>>> index 801a57a925da..5b367397ae43 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>>> @@ -1418,4 +1418,22 @@ static inline struct i40e_veb *i40e_pf_get_main_veb(struct i40e_pf *pf)
>>>           return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] : NULL;
>>>    }
>>>
>>> +/**
>>> + * i40e_get_max_num_descriptors - get maximum number of descriptors for this
>>> + * hardware.
>>> + * @pf: pointer to a PF
>>> + *
>>> + * Return: u32 value corresponding to the maximum number of descriptors.
>>> + **/
>> Nit, but the function name is descriptive enough without the documentation.
>>
>> I think the purpose of the function would be even more obvious if the
>> argument was a pointer to the hw structure instead of a pointer to the pf
>> since the max is based on the hw not the pf.
>>
> I agree, it's just that it will require changing the 5 callers of this
> function and invalidate the testing from Rafal Romanowski.
> Please let me know what you think, I can wait before sending v5.

I'm fine with the PF being the parameter. However, the documentation 
should really be removed IMO.

Thanks,

Brett
>
> Thanks,
> Gregory
>>> +static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf *pf)
>>> +{
>>> +       const struct i40e_hw *hw = &pf->hw;
>>> +
>>> +       switch (hw->mac.type) {
>>> +       case I40E_MAC_XL710:
>>> +               return I40E_MAX_NUM_DESCRIPTORS_XL710;
>>> +       default:
>>> +               return I40E_MAX_NUM_DESCRIPTORS;
>>> +       }
>>> +}
>>>    #endif /* _I40E_H_ */
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>>> index 86c72596617a..61c39e881b00 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>>> @@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device *netdev,
>>>                   drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
>>>    }
>>>
>>> -static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
>>> -{
>>> -       struct i40e_hw *hw = &pf->hw;
>>> -
>>> -       switch (hw->mac.type) {
>>> -       case I40E_MAC_XL710:
>>> -               return I40E_MAX_NUM_DESCRIPTORS_XL710;
>>> -       default:
>>> -               return I40E_MAX_NUM_DESCRIPTORS;
>>> -       }
>>> -}
>>> -
>>>    static void i40e_get_ringparam(struct net_device *netdev,
>>>                                  struct ethtool_ringparam *ring,
>>>                                  struct kernel_ethtool_ringparam *kernel_ring,
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> index 081a4526a2f0..cf831c649c9c 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> @@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf *vf, u16 vsi_id,
>>>
>>>           /* ring_len has to be multiple of 8 */
>>>           if (!IS_ALIGNED(info->ring_len, 8) ||
>>> -           info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
>>> +           info->ring_len > i40e_get_max_num_descriptors(pf)) {
>>>                   ret = -EINVAL;
>>>                   goto error_context;
>>>           }
>>> @@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
>>>
>>>           /* ring_len has to be multiple of 32 */
>>>           if (!IS_ALIGNED(info->ring_len, 32) ||
>>> -           info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
>>> +           info->ring_len > i40e_get_max_num_descriptors(pf)) {
>>>                   ret = -EINVAL;
>>>                   goto error_param;
>>>           }
>>> --
>>> 2.51.0
>>>
>>>

