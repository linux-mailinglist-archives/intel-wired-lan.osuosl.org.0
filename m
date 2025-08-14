Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 969DAB25E1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 09:55:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FBAE40E26;
	Thu, 14 Aug 2025 07:55:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RmlRGIIcx2O; Thu, 14 Aug 2025 07:55:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A2FC40EC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755158140;
	bh=6zibBiahMAEJ0CwODthDpyRVbhOzPRXgYphg+Z6ipAE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pSF+GAaINffU3rahppt1+AmY5dbwZK6wEipLlo0WFT1sN0QcLW34NwIKU2KYJIDli
	 MthowOsiWFlFxh3WBECeO8huko2gqnt1IZ43wtpVOkv3QF/9Yx8PifI/DZ1upmTrpX
	 5LIkv9NrnwX7JWUH3TjoKCgZ3CIva59hufbKkTTLbNi0ztSmtkJAbkCuqPzFCcMjqF
	 DKnjk23Slmp3l515UWNUMDjDc1IstENVmsfKBQCc3SUsunwNCxbHVG4ZZOXPknLzPk
	 iaP4KiGxvVq/yGBH3/kZhgAwHoNu2O2RRtu4qFuMTIIGL3F2c2hIVhlSwraas6JgRb
	 xpyrtHMDNMvZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A2FC40EC9;
	Thu, 14 Aug 2025 07:55:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C6AA1B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 07:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E2E8846C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 07:55:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nxx49MkP07jz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 07:55:38 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 14 Aug 2025 07:55:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B28AC821FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B28AC821FF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B28AC821FF
 for <intel-wired-lan@osuosl.org>; Thu, 14 Aug 2025 07:55:37 +0000 (UTC)
X-CSE-ConnectionGUID: KTtYGrmTTmSuSyDj4MJoWQ==
X-CSE-MsgGUID: vEJYNQRXRJG01kw0Kh1wRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="61090518"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="61090518"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:48:30 -0700
X-CSE-ConnectionGUID: rnyClSJ6TJuqF6RM49tImA==
X-CSE-MsgGUID: RNRFd7+NTluIRkQpGZb0LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="165873576"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:48:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:48:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 14 Aug 2025 00:48:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.67)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:48:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H5p6TTBv5rl0YLyEyqu633bZXl7JHFa0nYEhBlsobQRwI8LlscqzBxSh0HhgyvpP96qB6mMAfKqmNJrMnEu6EEH9eZ64A48AAYMebKl/IGrWECwxcSkNSJKNU8PCLqNGH/cWu5z4gWa72SGQ2QpmaxVYfJA4YLMOCeExcqoAYfXs27M4NiuJTiDf1YR/oE/+rbaG+jc2ykyshoEwRSePGWyeh/aV/GILqGS14KOFYmn837wmgPas5XIqDfEeWlPjdFQlyO6EEWDHv4Z7lQAOv1M6/BuAFs+g3mkwoKJkRwvUm+KErd6ZoziNUdkGZ168ztx8G3pBBStmg8eTSfqR0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6zibBiahMAEJ0CwODthDpyRVbhOzPRXgYphg+Z6ipAE=;
 b=iH0N13LEG7Cv0h3zr79HvZmOxb6iQ0RvnoOplwc6vzZkX/Jn+Cc/1XggZ3jsElDrhAwbr3RDxJWwC2CIWGw/E8zRBMu6kGlWdAGUsFh+SQQbgA0aGquGrln46wSJUg4FllYc4s5F3VCaxREm3l3KBJsyBJxdJC//6o3srrKGGrhZOxYTZy8xekBa0FpNYS30/DZNwtxKltaVz51896ZU2ZkmSIyinLOpvs6zqOqWXO/vzE+T9Tl7sePwUWBsdseMyXtGFs/em/qk8zz0iH33dVB/JAmNZMCpLgmq0zbjRiUEnYTspEA2kSJur89M8WJW2nAXtBF6agN1SCX2F8561w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY8PR11MB7847.namprd11.prod.outlook.com (2603:10b6:930:7c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Thu, 14 Aug
 2025 07:33:56 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9031.014; Thu, 14 Aug 2025
 07:33:55 +0000
Message-ID: <96b65a7d-b9ed-4bbc-b627-15fe4e2cf38d@intel.com>
Date: Thu, 14 Aug 2025 09:33:52 +0200
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
CC: Mikael Wessel <post@mikaelkw.online>, <intel-wired-lan@osuosl.org>
References: <20250814071804.1542312-1-vitaly.lifshits@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250814071804.1542312-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0050.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53e::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY8PR11MB7847:EE_
X-MS-Office365-Filtering-Correlation-Id: 2126d4a3-2df2-48b2-5618-08dddb04ecc7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V0hDRUEySVZNRnlkZlRoMkxJV01jVEwyaUVaL2Uxc3UrUWxOWENTQW40dWx4?=
 =?utf-8?B?UkxTSnlEaDFNT0k3K2ZzQjgyaDZacmxUL2pIanY4cVN1NkZLekNmRlBuQTFP?=
 =?utf-8?B?eUJVSU55Z3Qvak5uanJYUWl4Y1FLNlg2Qnpqb2NFc1BRVHpJOEk4ZTlteFEw?=
 =?utf-8?B?eDBDS3p5N0ovTWtXblFlUXlWS3d4YXR4RWZSdUhjSDRpVi9wamV0cVVEUmlK?=
 =?utf-8?B?TEJrc0VWVEJzZWwvNEJvVFNuaHRDL2cxMklhdHQ5bFhLV1dhNEJyalZZVWJo?=
 =?utf-8?B?MmZXYjV1MmtTR08yOUYydTYzbXBVZFRXNGo1K3d0d3I0bFlQTG1mWFY4THU0?=
 =?utf-8?B?SUQ1U2wvc0ZIc2ViRk1VbGNZdDR6R1VVaDEyOXk3R2pNVXNwVHBKNzFsaUVK?=
 =?utf-8?B?L3FxZG81NGY3eVlidEMyY21lMjdQWXR4SzlMSnhQSW5iaFdoTjhRVnU2dXZ2?=
 =?utf-8?B?RTNQYXFKOUhhWXNrTDBpaEdhZmRvckRvS1RzZDRDb2V2bEpsNWFITjVYazRS?=
 =?utf-8?B?WXptcWJSRzhocEhkbXVnc1J0ZnFiZHVSc2JHM28xMnBSZml2MnBubXBGQzZj?=
 =?utf-8?B?SU0vMmxSN0RVTksrcmlZaGsrK1B0bjJEQ3o5blRHMlA2Mm1uTXZoeHE3bzNG?=
 =?utf-8?B?eGpvb0h0dXVrNTVjU1YrSytKWTdVK2RSNmd2RkdGV0tlQjFmT04yNEZlS3JY?=
 =?utf-8?B?ZmJHdWpiSUQxZkpvWXpGdEFLRzVBd0xEaHAyWHlaVlJOYmUwOXpzcExMZWZX?=
 =?utf-8?B?SW9IbWN2WFNjNnplYVdMNlY3anFDYzNKODNSanBCOVRRdy9iN3U1eS95M1V0?=
 =?utf-8?B?K2ZtMVYzSVZYdGZMQkxrTnRTQnVYNXdwc0ZBOFA1YzlQMnhaMHpjemlDOU05?=
 =?utf-8?B?TWtrT3BEbGNpV1J0dmxnYzMrRFM3VHdTc252RmhFdkxxV2h5bjBzTUJPLzIw?=
 =?utf-8?B?djJqQkY0UXVEV1QrNk5qT2ZSN1NIQ0ZzT05UVThmZzlRd3laSkdOZVdMYkhr?=
 =?utf-8?B?MHdKR1ExbVlrcEw4clRKY0dLanNlSW5HYVdtSU9ORWM3b3Y1Y1NPMStTTk0w?=
 =?utf-8?B?UmNWQmUrOXpRRjFxNWNHN0J3UmRra2gxZHBzblduMFI3bVN2N1B0VzhyVXQ1?=
 =?utf-8?B?MUZTVnRQTG5zTWxqcFJMWkpsV3hvQzhNZVRWUlpCUm5nUWcrbFpNeWROTWY4?=
 =?utf-8?B?V2o2SEFTVDVtMXJLMkMzQVZlMWt2UUdrVTZ3cG8rNzBCTERManE3SmpiS1pL?=
 =?utf-8?B?bUxqK0tVTTAzbGJEZHpscmpLajFQbjhLdVJla0lvSloyc1BIYTY0RUpOc01N?=
 =?utf-8?B?VFZYR1pnTHJJZE8yMk1DYVZhQzFoRWVnalJ1RDA5LzdhUGFuckNGcXAyNGU4?=
 =?utf-8?B?K2syRUJNblFoN0VmVEYxTWFoVTlTWllQVGhaVUQwTmVOdElwVUNrcEs2a0xQ?=
 =?utf-8?B?QXNFTGlIN1BnZGcrYkU1VG1ZcVZucnNYWnloK2l2Z29IZFAzSy9LVG8zUFlO?=
 =?utf-8?B?ays2ZFY4UkdwNWUrQm9QbzFPczhWMDFLTVFLakZoSzVXK0JtbTV3ejVrVnh2?=
 =?utf-8?B?SUFsOVZjY1RBQTJuTG1wL3VKemtxN1FoYVByK3JFVWczYWY5L1VkS3Vhemxr?=
 =?utf-8?B?eVdWQ2ZHUm1Uc1RJNlR2M2NRQ24wUnV1cmRKZW1HcUU4U0N2UEdEVDY1c0Qy?=
 =?utf-8?B?NHE2RVJwVW5vSnlOSng5WERGUnNXMm92Rno2eVFuQmlqMFYvQ1Jld2N3R2lp?=
 =?utf-8?B?diswRDh3dWNGVCtkMDh1cGxlRWVnazZ0aWQ5VitnZE5kWnZ1ekVPU3lHbEpu?=
 =?utf-8?B?UXlLRnRYV1BpMW0xLzVrZHpySGV6ajlURlc4ZWZZS2RjRXdzYzNhZUVmOG5Z?=
 =?utf-8?B?d1VaRGd6clRnSk90YXNHU21FMzRDMUxWem9qZzk1Z2lGdmh5M1d6ejBqUWpn?=
 =?utf-8?Q?LwEy8oDHA94=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UCtxZVZQUGN0OUJVVGZIZnlXb0sxWGNQQ0pPb05kWEMySFB6eDVkcVNFV1hl?=
 =?utf-8?B?YlpNREQ5QWJra3N1R0RNOXF2VTRiMWpFUDVnR2JSLy9jUXVrMDE1MGtXYlM5?=
 =?utf-8?B?MUFDbWhpaVFmakxWYnlIWTVPbm5LZ3g0elJsaHlmTUR4ODdUTlMzYkZnM09C?=
 =?utf-8?B?MkhOSGVRZEMraWNob1pZSm1jYnMveERZZ2N5QUFSRWJpcjJheVhGLzdZZDFa?=
 =?utf-8?B?My9HMUhMd3JrajJXYnk0KzJPZ0JGYUlOSTF2YVpTcXhUWTEyYXY1aS83MjdR?=
 =?utf-8?B?a25nOENRR0NqMDhqYkNpOGtiTDJPaXRVbVE4VVNlSTRxVmZ2TWR5bVU0NDJU?=
 =?utf-8?B?MklvalllbVFqVkhpRnhvMkQ2WVkxZnU2dG1YdTFvSEtMTkVkTDF3V2N1dVBk?=
 =?utf-8?B?TC9XQytVbFJ3akVpemRBdWpJYlNZSDlpcnhGVjF0eHRZVm5aek1BMjl0OU5p?=
 =?utf-8?B?SWRPdDdQdVk5WFdTSWlSWWhTblJiRVpuQUJDdmI1WE1IK2RJRjF4aXI0dWZS?=
 =?utf-8?B?Yk5ycU5EYjFFRW9GNDRQc0NJZXZ3cUFDekRUUnd6WUxSM0E1am43UkpMWlBX?=
 =?utf-8?B?SVRTaVVPTlN6bnFnRUEraHlzVHY1dmhYUTVzd2FjcWk3WWhoWUNLUjFXR3Zk?=
 =?utf-8?B?bzF6b3k1d2JhRkdBenA2NXJyVmNHdFBVVnlBUmZMZVdwOEtHSi9jYjJMaSt0?=
 =?utf-8?B?Zy92SnQrOFQyVmg3MDByOXpnTElLUlhhdW5zMGw0U0lJN2lWT3o0TDJEM2FF?=
 =?utf-8?B?cDUvdk1KZ1pzdmtqNU10TFBUY2lBVDIxT2N1TFp5anF5aVpDTzQ0QTJyQWpk?=
 =?utf-8?B?N1FwNk41bEhBN1ovWkwzaXlmSFVQMzBJWlAvUWlzL2xhYmYrcVNqZGdYMnRq?=
 =?utf-8?B?cWJ2UGVyMVY5QkQwWEtsbVlRcG8xc2dWV1dSRDd5VllkcGVHT2d5bnArVHU5?=
 =?utf-8?B?WFh3ZjlzdTZDMG4rdFVLUldXYmhoSklVdjNCYmtsT1JFTEJ1WWtYK0w0L3Jl?=
 =?utf-8?B?WHZ1Njc3SnBrRlEwREFGYTJicG1PWnEvVk9kVk9ubjFsNW5yRHR6UlFDREhy?=
 =?utf-8?B?MVA1NnVtN052WnA0NUZhamQzeEtvMUsrejFyS1hIRnRJam5PUXhwY1BsMUdu?=
 =?utf-8?B?ZGc2b1g1czhlNkdsMFZhTzV2WUNyYUZ4UmJ5WDd4NkFxMmtxa010cUgyeXBU?=
 =?utf-8?B?ZVNYb3VzdUllNWNUNjVjcmNwMlAybWFucnJMV1VLQmVGRmo0dXhXTFpocktn?=
 =?utf-8?B?cmd4YlFvQ2VYSFlXZnZGa240NWl5NVJzL0t1OHl2cWpmZlczZFJ3bkEvL2dU?=
 =?utf-8?B?dU5QQjgzUDdTM0YvejhFL0w4RU8xNnJ2R1ZpMWQ4U3p3ZmhFMVFPVHQ2TTdS?=
 =?utf-8?B?S0xOMDN2VFpleERzL29hUjN4dk5lZ3ZlejdMU3NIY3lXSlZ1anBlSkl6ZkRL?=
 =?utf-8?B?ZElzUjBpcFlEU2MwUmJqdkwvRkdWbHdvMDFjeUJkak1oajZSUXhQQUN5OEdw?=
 =?utf-8?B?TGRDTVJtTEVlTXlPT2x2MVRmdCtWbEVDaUpGTEtFc203SGJoRHhHUUViRmF3?=
 =?utf-8?B?bEx2TTYreGR1bUxmZWxmL1M5ZXM2UUkwbEtCQlB1elM0ekkyMUo2a3Q4L2ZZ?=
 =?utf-8?B?QStLVUMwY3J6VlFzT0VGb3JacE92K0ZVcFRKdEdwckc2UGppUm50UURFUjBT?=
 =?utf-8?B?MnRyeE9obDZRZnVzbjhDUlUzaWpRTmVKWG84eGR4REtDMXliZ3NDTGlaaWcy?=
 =?utf-8?B?eURYVnVVSktOY2xBUlNXREFMUllOdkVqWjk0elRaM2VWR3loc1V1bjRmZk1Y?=
 =?utf-8?B?Q1M2dk1kd2JwamVkVUxObDhGL2o2aWYyVjlsOElkM2J0eHJDWFBJOFJUR0Yr?=
 =?utf-8?B?SWdDKzdTZlJWRVlOSjBlcW5KbE9jdW9PaElYejAxYXRrSXFWby9oSlRBSmZN?=
 =?utf-8?B?VCs0UTZjNG5wWWtXSVdRK2ZEUmdOLytQdFBNZm53bFh4UUV3YTZWVDVtMkhV?=
 =?utf-8?B?VTRjWlYyaThPUDJkS0lSTHRrWmZhT2dhK2Q4ZDV5aTRmazBha0U1bjVuTHZq?=
 =?utf-8?B?SUNaVS9wN2ZMQjY2WkdHMGJuYjVneUFWQlJVSzVpQlBCSGJqVFBCaXFBR0RV?=
 =?utf-8?B?T0VITjR5RDU5cGtNK3ZnenRQdWZHUzdpYWxBMTJ6MHc1ZUsxUTQ2R3FMU1la?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2126d4a3-2df2-48b2-5618-08dddb04ecc7
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2025 07:33:55.7763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LvAm3ux1tJF8kPa9ZOqsaygFnGt5hz77ary53zU3nQCVywmC9ub0NBU1R6HoJKBR6StmOtN7cJA0nk4n+/Yqo8xrX+bMxWypcKkasokrMYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7847
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755158138; x=1786694138;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KBr5AWtwzFyMvgqsiS2ernS7w3OO+O3ecyLqimoA2s8=;
 b=DpQs5zG9hYDzP+JNk1r4fF/QyGbL/bCEEQmccpsHFh10Lcr6roG4du/o
 2C9mfyOb/4L+VL0khymSg6VK6Af9UBWQVnKQ4hGp0loEqtxJES4IYdYc9
 EdiihUSho+nlS1aUa7xk0+qvut6QbDwv4n/Sf0QVbJZVM7VmInbWFLUzM
 9vmgyO4Lis/EZCYFg7WTUmvaku4nge+lSXOtV4F7EVt7+4yIfYpPvgqpc
 7cFsoLpvxBBs+9kolP0RW4vn13uJ4PByOb2FsQXK5xqv1QpKvyTAjam+l
 ciI2+BokoW1jcQ+p0oNFauQdEhgUq2LiDAJoEJJd6iE2ouhIDQdW0de3d
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DpQs5zG9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/1] e1000e: fix heap
 overflow in e1000_set_eeprom
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

On 8/14/25 09:18, Vitaly Lifshits wrote:
> Fix a possible heap overflow in e1000_set_eeprom function by adding
> input validation for the requested length of the change in the EEPROM.
> In addition, change the variable type from int to size_t for better

thats good

> code practices and rearrange declarations to RCT.

I would avoid, especially that this is now majority of the changes in
the first chunk. But OTOH, does not matter that much for rarely updated
driver.

> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Co-developed-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v3: Change max_len and total_len to size_t
> v2: Use check_add_overflow for boundary checking
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..d7f25f007e8e 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -549,12 +549,12 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   {
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
>   	struct e1000_hw *hw = &adapter->hw;
> +	size_t total_len, max_len;
>   	u16 *eeprom_buff;
> -	void *ptr;
> -	int max_len;
> +	int ret_val = 0;
>   	int first_word;
>   	int last_word;
> -	int ret_val = 0;
> +	void *ptr;
>   	u16 i;
>   
>   	if (eeprom->len == 0)
> @@ -569,6 +569,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   
>   	max_len = hw->nvm.word_size * 2;
>   
> +	if (check_add_overflow(eeprom->offset, eeprom->len, &total_len) ||
> +	    total_len > max_len)
> +		return -EINVAL;

I would differentiate error codes (EINVAL is already in use for this
function), and in general prefer to use broader range.

What about EFBIG or E2BIG?

> +
>   	first_word = eeprom->offset >> 1;
>   	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
>   	eeprom_buff = kmalloc(max_len, GFP_KERNEL);

