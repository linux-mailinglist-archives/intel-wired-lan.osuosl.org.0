Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62593962140
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 09:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A664406C4;
	Wed, 28 Aug 2024 07:35:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f7n6NgD3Fgkh; Wed, 28 Aug 2024 07:35:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BB1F406C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724830537;
	bh=qGbm0nUhUuCqoo8yDQu95gOWNq22IRjvfyibf2YgBOw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=us94G/zN5QzeSV3kxSIU+vmLUsXCk712WtsgQ9N2gWoC1huqOH2qfdoRmdbiVBLTw
	 6GvHkmft7umbV9puURbuCRdIO0la+O7OEtRvbtIDeyOv+bhW8QWG6pd5xZZUd8u7+Q
	 ERIs7iV79n4BuZVndLfYy8XDlcU7DUv3jlEBK4KtJo9abcBwnKGOv7JK4kxYXuDf7H
	 R1GuMsXOHlbG4JfmM9ne4NVOQWpckxUTZn3qeX0g8z3k72fj8M7zZqqr/2wwQSvAVw
	 X+vqKcmP/tX5Hgk+/OsP6G/xGVRSDtDQr+efUhGYfSLvUtypRAdJRQDa/hP4S3OaY1
	 gPAtYh5H7JawQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BB1F406C0;
	Wed, 28 Aug 2024 07:35:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2988F1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 07:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1494F40AEB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 07:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3MBNDVf87HBI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 07:35:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A159404C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A159404C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A159404C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 07:35:33 +0000 (UTC)
X-CSE-ConnectionGUID: jzTOEUDYRh6d0fBtpAbA9A==
X-CSE-MsgGUID: hr2tfMIQRmyKsAxOOZpcrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23470649"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23470649"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 00:35:33 -0700
X-CSE-ConnectionGUID: uuube5wnRr60Wi0XjucTUA==
X-CSE-MsgGUID: lU4lbbxEQ36pSoEQvwq/IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="67954264"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 00:35:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 00:35:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 00:35:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 00:35:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 00:35:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pGWQlYP0BUw5Vays48UJD2MuwU+TLmDMwpY2H02CbB4jmKXsGwyOOfgJ5onXdaBbexxzU8Dr8XG90+3PbcYwcTAGQAttP8ejtsEpZydp0MO4u+/ONUhZR08rxvSnfZtWxL5cYa5vwqz2xrHU/kWyKL1Qw08ZXsMTo+O8Enqj34ONvpRUxSVD9Z4Cpy0bL0fdzwdVqz5lKLgvkUwnwBcjlIj7WSC8eLY1PdOMxp6skKFruzbjq32SApsX/GSqK4X0uRm1rjwtnA9oTCKnjfWBQgnunmyjItu8yKpzpRxE6G/T0+bw6ynX9jU25sCZkAqP+tqDJE18LwF8zIA4DvteIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qGbm0nUhUuCqoo8yDQu95gOWNq22IRjvfyibf2YgBOw=;
 b=F3V5HMdmUtZ8kdfvsNh5Y+yHzJgmqJHtrCwDtVOh2+EpV0E44MB0bX3qeJ2aziiedIm7RL9NEa2FvIxxAWK0bfQOvd2uc8X/gwHJf7P3Mk+4QkN3m6IiOvSNDpTjUfuFdqWx+cdPLpa8H14l/sIUBrfzf9fkBL3er/Vq0H+G0PlxajXDUVfDqG2cm/Qf2G1nOXVvt2FfC1YYPZLjlnr5T9kafCnCF8MjbtG2F9yO/n+dN8JmXLx4ptJ5rfQqHsOUq7PI9FZFhadw8xCp5iyghrjYEra2nlB57JKhexXhJaAdfAIMX/RU2k1IKT1RRiRdSNKQxY7cxE2vwks2qc8/KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB7109.namprd11.prod.outlook.com (2603:10b6:806:2ba::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Wed, 28 Aug
 2024 07:35:22 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 07:35:22 +0000
Message-ID: <e14de2e8-3e24-4984-b923-812102e6df1a@intel.com>
Date: Wed, 28 Aug 2024 09:35:17 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
 <20240827-e810-live-migration-jk-prep-ctx-functions-v1-13-0442e2e42d32@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-13-0442e2e42d32@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0165.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB7109:EE_
X-MS-Office365-Filtering-Correlation-Id: 21f3e17e-080a-482b-3a37-08dcc733f9b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTRkZXNHbms2YlViUDlmOXBQV25XamMzdVdKekgxTXZuSEF0b0dTbTgxK3VZ?=
 =?utf-8?B?c0xrWUN0K0JoWjIrOVNTSXY5RU5JNDZYdHZYUE9LYkRpMHl4OWpUb0sreWRZ?=
 =?utf-8?B?aGFwOWFaMGtFNzYwVWJQOXcxUlFFcFA1aDdlN0ZzRzRvZkwwdWdYVjhUREFr?=
 =?utf-8?B?elFNRzJ3bkxRdE1icTNEbC9KMFU4c0MyTWc3c0pMVU00d0pTdWZHVXhqNlZy?=
 =?utf-8?B?aFBMTHdPUkloQUcyV0hmbVVYNFhhd3gycU5ac1VYeEFBR0tINnpBUkc2bThD?=
 =?utf-8?B?dzVJdGlMVC9kZk9oUkdIOHpFMDVCSkZ6b1lIN1JIckJkTGlJYkY5NUNzYnU3?=
 =?utf-8?B?UFdxZk55aUQzbUtxOU1sV0FyYUI1SkF5ZklDR3V3U2V5VTFtWk9udHZ1U29w?=
 =?utf-8?B?ZjNHdFJNMlhyc2pYQXNXUEk1RlMwU2N6UCtRUkFyazVwODZWc0ZSdDcySWx2?=
 =?utf-8?B?czRnbWJiZlFFeEcrT3NQMDZjZ0pxbVVUUTFmSTg3QWtoZVVTdUc4MmRtbHVR?=
 =?utf-8?B?SXdCU21Bc3l5Rk45S1Y3OVJURHVGaEZYZHRidnNMT3BBM0k0OUlYZnJGa0dz?=
 =?utf-8?B?Uy96ejFLeXBSWldJT3pIRTVUdElRZzJxMCtCRDhVVFd5d2p5K0FIUzA3a1BJ?=
 =?utf-8?B?TGdTaGFBZCtHNFladm45SSs2Vkt6ZW5MdDluUHBHRmZwd0ZJRVpvb2E3YmZF?=
 =?utf-8?B?by80TUYrOXcyUGJVUjE3SU1UNDU4WFI2MjZRYll1dWJ4WkpVUUpWUUpMdVpz?=
 =?utf-8?B?alV5MHFtTDlqNEZVc2tyODdVUVRCcFgvMmRydkg0MDYxMFJkeWw5eFZkenJq?=
 =?utf-8?B?UWo1dEY0bzFCZkRSOTd5OGFzdjM3bjFsdWZsTXNkYmRoTlY0VWhjMndFUGEv?=
 =?utf-8?B?NGhnS0J1TkdkY3ZEUVkyZlp1dkU5eHpXZ21nV1FNZGUxaEJNQVJrWEVqb0Rz?=
 =?utf-8?B?UlV2VEhnUmRUbHV1UFJzcHJsL1dGSWpvTWRvOWtydlpiUm9CRE1NV21RSlcw?=
 =?utf-8?B?b0tteHFTUDZ2VXdEV2hqS2xWVkhSYzUwZk1nWDVsdEh2T1h1WHBJZ29Ub3gv?=
 =?utf-8?B?ZEJ2K2ZMaUk2RWYvK05PS2hXSHp6L0VwbGlpS2FjbzJZK0pNQU9CZXlsOFRv?=
 =?utf-8?B?MWhPTytKR2dHSnBycXZpVGRjTlA0NWtVVDZCQUhMeXpSRlhqUUdTOVNRcUR5?=
 =?utf-8?B?ckk1NjlaL3JNRXBDS1Y1bElVeWgxb0FncUNDSUFQeW90dEMrcFltOFptK0ty?=
 =?utf-8?B?amtWNXFQbEpkbmlvS2pmSDJkSkczT3ZVT3V2RDNod3FNV3ZlcVhZeUg1NFBs?=
 =?utf-8?B?REZjN20vSy9HZ0gxRGh1dUJWblRMcyt1aVFBUXJweDZrR1lkTUM0Y3doUDdo?=
 =?utf-8?B?dldwbWhJUmkyYm5VN0ZQdkw5c2lRU0RGRlV4WmlnamZqVTRNMFdWSlNpNTV4?=
 =?utf-8?B?ZGhBbGFuY1Rvb1o3R3kxQlFxV3JxWDBJbS92Q1duZUVxcmdJeGtQREE0UnFH?=
 =?utf-8?B?YThDd29HeHpVYjNHeEF4SVVtUXprRmUzUnJ2NTNwMXFYU3Q2OG16SEc1NTVw?=
 =?utf-8?B?SDZRemFRR25xa1NtSnJ0WnYwUUVVQmpManRnUFN1VDF4K0dGZE9iY3dqK1Rl?=
 =?utf-8?B?SUxUZlpPN2pXeU1iM2IxMFdFRjA2dkZ0eG1JdkMrNVlXUnVRRXlDLzdzRThK?=
 =?utf-8?B?c255amZXZFp3V3NFZ1pqZGpIcFAyNjJDeCtDWHZnL0ZSdjRsZTliM2cxTU9B?=
 =?utf-8?B?THh6bGhyTm5GRTgxcHIrd2VzOXJ5eXErOXNaRTRRdjUySUJvVmxVQ2JWODVM?=
 =?utf-8?B?RHNpVUdTMWZXaXltemNxZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0FRZVZpYWFpNHhyM2daS05xc1VFdnkvRzVPSytLMUwyY2FOYmJwVEJrODdH?=
 =?utf-8?B?ZGNLZXJ0am1BbGVJbmNFNlRkZDVybUlKMmJiUjlCNVVCczJwS0o0K1o5ZHBH?=
 =?utf-8?B?b2NTV3hNT2FreDJlb2Z0UmRTeW1JVmtqSG5ZdlhPc3hMUjdtVFA1MjhvL0ZG?=
 =?utf-8?B?NkNmZGdCQ1BaMkhGZW9wWkYxcm04VjBwREZ3MTB3R2VzTytvdXdLWUFveHh2?=
 =?utf-8?B?aDJQZDk3dmVId1RYK2ZUU08vbS8yZTUyR3k3eDZ4Vng5OEUwa3FkNHpkRE5p?=
 =?utf-8?B?OVNhY1BkVTRPNkdHVGV2ZGVlWnhsalRTK0NOU29TeUY5enZDemI5WG1CbkJw?=
 =?utf-8?B?Y1BhOTcxY05WdGVDd3NwMFVtenI3SEhNdFIySTNYOU54QkNpK09wd2pWMy93?=
 =?utf-8?B?MGVxekJpTnE0ZVhCZnhpVVF0UldlOTVyQStqbW5DRFlnZ3dXZklGU2Y2OG5M?=
 =?utf-8?B?YktoL0N1cWVyK2llcjk3WU9scmdjWEo3akZrdnVqKzQxMTV0Nm9aMjkwVlp1?=
 =?utf-8?B?L09wQy9vRW5scHRMZXZqYUJVeXduQUVnWmpzWFVkcWc1aFcxV1ZrNFR3MHo3?=
 =?utf-8?B?djIzcUc4TW9GeEtZYkk5WkVqVGg2YmlvdmoxYk1qcjV5eU5ldXM2RG9TRG85?=
 =?utf-8?B?UWZCd09vTWV1VUVvcG9FdzhoakJnaXJqR1BwS0doT0dteEt2UlV2c3hLTis3?=
 =?utf-8?B?TE4veDU1Qm03UW5vd0NrL1Y0WTcrenllTUw1WVZsZlpOZUpFdnNiZ1BLR1Uy?=
 =?utf-8?B?cGY1a01JRDRFNEt5RlY2UnBEbE5JZWxKUnNsU3U2SEw3ZTNyMElSclluT1Zt?=
 =?utf-8?B?WDhrbnd2c0pWbkxFUUpCK2hDK09pazZiSk00VytPSkdUdWpRR2FycFRxSVpz?=
 =?utf-8?B?dWhSM20vUW1qcFYzcFlhWWxEOUdZODU3c1NJdG9lNktKN2g5YW1OWEpaOVZk?=
 =?utf-8?B?V0JLT3RnVUFCVDcycjlHREdPaytDR3V2T0FuMURNREsrWDltMjRkUk5zVkxh?=
 =?utf-8?B?MTZBVkUrdlNUSlhDQnJoNGJvcnl6b0hFS0hSWkhVVHlwWnJsTmpsdU1pdHMy?=
 =?utf-8?B?VC9YVHU0YmZjV0VpaE9CWk01d1lWaGVaQWRXMVNrNFFIYk55OHBnQnowbHIy?=
 =?utf-8?B?K3VVN1djUFgzZENIZ0FYRklPY2xGWWxkN1gva1RQZDZzdEUxbURpc2ROMXYy?=
 =?utf-8?B?WnBZOHI0cEl3WHU0dXhWWGRDVkhPYi9JbTY2aWJiRmMyMkV0cDRoTTRsMTdz?=
 =?utf-8?B?aFJnSCthQ3cwZDJJenJpMlBRajVxME5RM2pKVzdlZ2VOY0hxRjZoSVRtWHhN?=
 =?utf-8?B?SjdlZ2xUUG4xMm1JYjFGd2tUZ0w2UHV4d0g0RkJ0dGJ5RHEzb05ndXp4K0Nk?=
 =?utf-8?B?NjJ1c045Mk9LTU80UjJVaFJoeDJFNHB3aGVYK2gwRWV3aExLQ3l0a3EzcS92?=
 =?utf-8?B?c1l4azJSdTdMNXBTTkt2dm5wSlRaUjVvdTE4dmNrbkFkaGUyVUF5UVZGZ25u?=
 =?utf-8?B?MkRMZ3l1eWR4TkVNK3oyYWs3MWtjWm5iUmg3RDZsaktZRlhldGJOWDB0QXdJ?=
 =?utf-8?B?KzZwSjFtaGgrbXdKZ0pyZ0NGa2ZkL1A1TlowVjBGU283QUp5TXBCR2VOTjgr?=
 =?utf-8?B?OG14Z3YwUTBEK1lzVVlmVXVCcHNBYmhSdmxUdnBWeUYxRksvWG9zUzIzS0J5?=
 =?utf-8?B?WmFDRHk3YkVmZGIyVjY2QTJBR3pvWnU0cGZwb29nNUoxKzkvVEFXT1lLNWxw?=
 =?utf-8?B?MENyTVdBOVVPYVBreVJLWjBTSVl1Q1FLS3JkSlA0WmpRbmxjVmhUREgvWWdx?=
 =?utf-8?B?Q1o2Zko0VVJtdm1UblRIWGRrUklYMk10WlVJM0NFNkdPYzlxZGVyMUcyUFNF?=
 =?utf-8?B?aE9SQUlDS1FicndPL3AxMWdjY2NieTB2dk9jNjRHdStUMXJOU0NYb1lqSVNV?=
 =?utf-8?B?Tnd1ZG5oODVQRjc3VG9Bc0U1Mkp1ZlBFYkxJNDMvT0hHQTNhSE9nUnlrMSt6?=
 =?utf-8?B?UzVzTTM2SW82SVVtYWFyOEcyc3RqUWtuSldvb0ZUWXpQV3YzNlNMNHJDT3pi?=
 =?utf-8?B?VUZnZ1FsZFVxamFCZGxUVFVoTjdqOGMxNHNLUEEzQ0YzZGJqZ3VRNTc3RWhn?=
 =?utf-8?B?K1pvQXJXOGovaVV3eUFmV2JSL2VHb3hwaVgzMWZ0M0xWU2pVbzNvbXBjMnRU?=
 =?utf-8?Q?KF2FFzcIgoxQqPRb5Bt8DEs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f3e17e-080a-482b-3a37-08dcc733f9b6
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 07:35:22.7423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IIVmSt4lebR43B1I3tsyGv8I3hY6AzvUNsYtNZm5tE3HtOZyjWaazbpK4dO11ajNK7RBeWEle7cPZVCXRM/2Rv1VRh9Ul1vs9jPDuWvjQsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7109
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724830534; x=1756366534;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NTGDF6BDEcaX7veZGcwSaqaU835o+b4An/3iLXbcr8g=;
 b=B5pZiPCTaVtR3rt8AaOEh9PmSm+vWKqs1fWmbHtTqQjTZR4qYpPA9b3p
 De6Q6bYGWnvyhIi+o5HTLIZzrBhqVtTeX9ZF5eyn2aE3al1h104ok6bWu
 mqHqWsDxVaz5hDS78ganAj0n0xYYiog0qsOawUvXMYXyF+Lw1iary7Ho+
 tLLiIrj70k3YGjozizIHalHdYJPtq765B2ebZDvw6dyIalYRGvC1xy4PE
 rN3bJpltPwsOdwxsbjcAmt/eJK9wiDyvgyXNnogpa0r2pzQIC2ZHRaJ/l
 iRXDzpNqdL1/0F9NhgKy4/O9QX7/F2sSZ0gLslN0LyTarSATKopbQYvZG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B5pZiPCT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 13/13] ice: cleanup Rx queue
 context programming functions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/27/24 23:52, Jacob Keller wrote:
> The ice_copy_rxq_ctx_to_hw() and ice_write_rxq_ctx() functions perform some
> defensive checks which are typically frowned upon by kernel style
> guidelines.
> 
> In particular, they perform NULL checks on buffers which are never expected
> to be NULL. Both functions are only called once and always have valid
> buffers pointing to stack memory. These checks only serve to hide potential
> programming error, as we will not produce the normal crash dump on a NULL
> access.
> 
> In addition, ice_copy_rxq_ctx_to_hw() cannot fail in another way, so could
> be made void.
> 
> Future support for VF Live Migration will need to introduce an inverse
> function for reading Rx queue context from HW registers to unpack it, as
> well as functions to pack and unpack Tx queue context from HW.
> 
> Rather than copying these style issues into the new functions, lets first
> cleanup the existing code.
> 
> For the ice_copy_rxq_ctx_to_hw() function:
> 
>   * Remove the NULL parameter check.
>   * Move the Rx queue index check out of this function.
>   * Convert the function to a void return.
>   * Use a simple int variable instead of a u8 for the for loop index.
>   * Use a local variable and array syntax to access the rxq_ctx.
>   * Update the function description to better align with kernel doc style.
> 
> For the ice_write_rxq_ctx() function:
> 
>   * Use the more common '= {}' syntax for initializing the context buffer.
>   * Move the Rx queue index check into this function.
>   * Update the function description with a Returns: to align with kernel doc
>     style.
> 
> These changes align the existing write functions to current kernel
> style, and will align with the style of the new functions added when we
> implement live migration in a future series.
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 42 ++++++++++++-----------------
>   1 file changed, 17 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 67273e4af7ff..3480a16d6452 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1357,34 +1357,22 @@ int ice_reset(struct ice_hw *hw, enum ice_reset_req req)
>   }
>   
>   /**
> - * ice_copy_rxq_ctx_to_hw
> + * ice_copy_rxq_ctx_to_hw - Copy packed Rx queue context to HW registers
>    * @hw: pointer to the hardware structure
> - * @ice_rxq_ctx: pointer to the rxq context

"ice" prefix for params, yeah :D

> + * @rxq_ctx: pointer to the packed Rx queue context
>    * @rxq_index: the index of the Rx queue
> - *
> - * Copies rxq context from dense structure to HW register space
>    */
> -static int
> -ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
> +static void ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *rxq_ctx,
> +				   u32 rxq_index)
>   {
> -	u8 i;
> -
> -	if (!ice_rxq_ctx)
> -		return -EINVAL;
> -
> -	if (rxq_index > QRX_CTRL_MAX_INDEX)
> -		return -EINVAL;
> -
>   	/* Copy each dword separately to HW */
> -	for (i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++) {
> -		wr32(hw, QRX_CONTEXT(i, rxq_index),
> -		     *((u32 *)(ice_rxq_ctx + (i * sizeof(u32)))));
> +	for (int i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++) {
> +		u32 ctx = ((u32 *)rxq_ctx)[i];
>   
> -		ice_debug(hw, ICE_DBG_QCTX, "qrxdata[%d]: %08X\n", i,
> -			  *((u32 *)(ice_rxq_ctx + (i * sizeof(u32)))));
> +		wr32(hw, QRX_CONTEXT(i, rxq_index), ctx);
> +
> +		ice_debug(hw, ICE_DBG_QCTX, "qrxdata[%d]: %08X\n", i, ctx);
>   	}
> -
> -	return 0;
>   }
>   
>   /**
> @@ -1497,23 +1485,27 @@ const struct ice_ctx_ele ice_rlan_ctx_info[] = {
>   /**
>    * ice_write_rxq_ctx - Write Rx Queue context to hardware
>    * @hw: pointer to the hardware structure
> - * @rlan_ctx: pointer to the rxq context
> + * @rlan_ctx: pointer to the packed Rx queue context
>    * @rxq_index: the index of the Rx queue
>    *
>    * Pack the sparse Rx Queue context into dense hardware format and write it
>    * into the HW register space.
> + *
> + * Returns: 0 on success, or -EINVAL if the Rx queue index is invalid.

I remember some bot complaining on plural Returns:, but I have just
checked the kernel-doc script and it is allowed :)

>    */
>   int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
>   		      u32 rxq_index)
>   {
> -	u8 ctx_buf[ICE_RXQ_CTX_SZ] = { 0 };
> +	u8 ctx_buf[ICE_RXQ_CTX_SZ] = {};
>   
> -	if (!rlan_ctx)
> +	if (rxq_index > QRX_CTRL_MAX_INDEX)
>   		return -EINVAL;
>   
>   	ice_pack_rxq_ctx(rlan_ctx, ctx_buf);
>   
> -	return ice_copy_rxq_ctx_to_hw(hw, ctx_buf, rxq_index);
> +	ice_copy_rxq_ctx_to_hw(hw, ctx_buf, rxq_index);
> +
> +	return 0;
>   }
>   
>   /* LAN Tx Queue Context */
> 

