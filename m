Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A807D9735EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 13:10:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A350810A2;
	Tue, 10 Sep 2024 11:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jp0VjswfpqAc; Tue, 10 Sep 2024 11:10:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 413A2810AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725966656;
	bh=J+gwcKueutt7q9sfdjr3vBQ5QGvRs7DmBHofsAiUZ2g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IsIcBuLC644k4KH1Lap8rxVnGOKR/BByz4XOgp7YHyDKN6Wb57p+KxhLflEzCR8nw
	 BRecF23NeNDbByFw8bNscQQvQz+bRPpPPhWfmm/+4SJYKxzsr9drHqVhOTFMRaiRjR
	 n4fWPzCnJEGBX0+c8DOT0GBLF1PkB/CwK5rUH7NbFBgg2pvV9UjtPNMeU0SnJMNJge
	 pEtVaeFcAwcGdMIAS2QOklNP64vI8IhBNX9ShwPYF/7bYPWb5bIq4qA7yrCtiohylg
	 xf7buzhnRze5EsymMZqVF4r1eoueiteBJ2Hs3yGeoiM1nqK76LQvn7zvaN8I+iIhx5
	 aVOQaEtjmHdNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 413A2810AC;
	Tue, 10 Sep 2024 11:10:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6B221BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 11:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A304081091
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 11:10:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pt0Ntu3QNWok for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 11:10:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A548881080
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A548881080
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A548881080
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 11:10:53 +0000 (UTC)
X-CSE-ConnectionGUID: 0W5V5+8iQyCmfNwMveKzgg==
X-CSE-MsgGUID: XtgyqKJnR2mrWBmfT8PgHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="47224518"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="47224518"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 04:10:53 -0700
X-CSE-ConnectionGUID: X5LzxmycQgqlrZZvglCl/Q==
X-CSE-MsgGUID: jnkwSgs+RO2GiJLgzYWmjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="90280846"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 04:10:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 04:10:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 04:10:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 04:10:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 04:10:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XqX+49gzfo0adN2PHOJb/D3yUM36GImFfxxzC741VfboEzle5az5wdPXsIuSAfCgTTQYA7mHCVHlqqJHVB3sKqFZIUkhlCPncBbVyiTXvFRRSj55FzzIi/B3FCg02uZTiuulSyUz3iR/xTDz/2uqvujUujsYRln3ZFUozARdIBiRd3nsD/efS+PQZBVAM71J7Y7l9POM/HDJCs95I4KVKD59A8XbkZzm1rBwMQWHmhe8vXOkBm0SN/KQj+0Mi5iKUpAu2uaammal9NZC6VTKOPDugouca/5k45igPNJWNgffHziNEwXpehm4LCQuL8He6t6KmsVdnzyQmE49W5Em7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+gwcKueutt7q9sfdjr3vBQ5QGvRs7DmBHofsAiUZ2g=;
 b=P6wSgTzJuLSCZSFfZrqJ7Z4lRPE4v6DxF5okEm5gqPLGvELyiWqvmR7tJLXDrskw7v/0cWU8qtq6Cg4+LLV3cwc15+Plznq9rL5S/Aw9vV37i4NiJLeWmRTeOqjVioXVEYC9YefcdN76J9hjQaOZ8NknR3Bcpjaw2R8aR5UWFE7f2fvcyACuC1Px9KmLsV9/hPxXFDr2eIz3wtNt0aqIo8WrchE4VPPKdc0hF0gaLH8+8xm8MWcDSPtGscGkCpEEBHcgV+aimVnIbDU8bZZvLRWe92IWL8q81P8VgIJdFo9KjtmMYBvQZshfJ1nfVO8eTbhM97ZBAbZlAACPy/kPJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB5016.namprd11.prod.outlook.com (2603:10b6:510:32::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Tue, 10 Sep
 2024 11:10:39 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 11:10:39 +0000
Message-ID: <e9828f6a-3a2a-4128-bb2c-5dc75d013a9e@intel.com>
Date: Tue, 10 Sep 2024 13:10:35 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
 <ZtdqfLfHYvEKPE+r@boxer>
 <SJ0PR11MB586686ED6AFA882486F4EF05E59A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <SJ0PR11MB586686ED6AFA882486F4EF05E59A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0060.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB5016:EE_
X-MS-Office365-Filtering-Correlation-Id: 802938b8-cede-49f5-d3a2-08dcd189342d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SCtGalN4S2JaMUZ2RndEVXpxQUlXUUdRY2VLUWlhOE1DcjNwK29wVkJ4ZzU2?=
 =?utf-8?B?dlhMem9TMWlXejlQOS9TT2d0S1BwcUYrdk53V1IwMXl3T2J3cXpYOXdnbmVV?=
 =?utf-8?B?M24zS1ZudFdHalo3UWFSd1YzREh0OVEwU1hLNmFVenBCNElNMlVFUFVFUUtM?=
 =?utf-8?B?YUhmV0NjZHI4d0c4ZllvTzh2cWtKU2IxeXprUUtMM0tPRkpoeHNuem54VWsw?=
 =?utf-8?B?QWE0UCt6UkRxdWpYQTZZZ1NydEJWdU1oS2c0RitndGFLaEMyOUR1dElXYzNQ?=
 =?utf-8?B?Mkc0ZTdxUW55cm9sSUhERVFiaDgwOTh0YU4vWk1JNTRMSzVJeUtkSEZCSHZO?=
 =?utf-8?B?SElwdHYyTk8rOTluWkdyNFAyYkFxQXpDZGgwL2NHREQxbFh0UVFUV3VnaFNt?=
 =?utf-8?B?TnQyekp0UzZHZEFhbjFMOUdTTThMOGxEM2NzQlJPM1JPKzUxWHNWbWhSSkM2?=
 =?utf-8?B?cDNodHgyUWZnWGZxdTNBUFJ6OE9haXh0OURROHhaalZPYnNMZW1MOVFxWE5k?=
 =?utf-8?B?TFFpbXQ1L0JERDdybkltYVRqQ3dyblZ0VEVGeFQwTlh6dy9hbWVzU2tMQzFO?=
 =?utf-8?B?Y25ZeUNKWGdHUHJuM1JoMVA5bE5pL243cHBUeXcvSU9IM29JaDN3d25rclhD?=
 =?utf-8?B?eFFEeU5DWUFRNEFGWG15U0FRTWdWOFBlQTRCZ2s3K1c5ZVpiMnk3SHFBOC9u?=
 =?utf-8?B?VDZ3Yjh6ZjJlRW55M3VtZ25uZjI2TmQ3N3duVHNhMmNsemEvWU41RGQ1ZGNh?=
 =?utf-8?B?VHdXMisyeVN6bEc4ZktoajBKN2JzVGtXYmx5UUJrWEExQ054SnB3VGpuQ2Iw?=
 =?utf-8?B?bW9EdVY2WnVvbkpxVGpTeklCN1JTZ2czNDZMaXkyZHNEYzJMMENoRFdTNHZM?=
 =?utf-8?B?bFRoSGZYVmlGYUFNWENqcHJDTjVqZjhPVXVtZWR4WUJpanp1L3I3V2s3VVZv?=
 =?utf-8?B?aWlaYkdEL1hkWHRMTlpKYjYrWkNwczlwV0d5UStPUVVRVTlJdHR2T05aTUhn?=
 =?utf-8?B?eXV2WWFEVndTYjNtR0tuSEdhcmIxUW9PZWlkQ1oybWpWaURMUXhFUzVMMWp5?=
 =?utf-8?B?SHkzNWlqamlJVGlEQ3AvbGtoaXdPcXVpSlo5RlJWRHBpRXAwc3ZlYVZOQ2wy?=
 =?utf-8?B?bXZDRnFoa3picWcvaWc3NXc4WXJMNDg1R3lnd0o3dFBVRXEyTWliM040bWlu?=
 =?utf-8?B?UGhkU1gwaFh3MnFKbUVMVXg2OFpGbFo0MW41d3laeHdoSW92ZDRNMjR5NEN1?=
 =?utf-8?B?REMxUXRaMEQvZFJCemVieDFRVlRZZzV2ZXdHM2dzTXZxQjQwaC9kQThpMkF5?=
 =?utf-8?B?eU5ocElVdmM4a0hVNkllMHRXMWNhUTgrOThhc3NiNnVKQXdjV21ibFlBS2xi?=
 =?utf-8?B?UGlwd1MwRTFWdWl0MThwUW44c2tOYVZCcU1Gc1pkRHFXckptYk5oSVg5OC9x?=
 =?utf-8?B?Q3h5eGpNL2xtcC9EUGVETXhPTHlNQ2hGWFF3N2ZYM1lxa0VyeWFiU2k2TVBZ?=
 =?utf-8?B?VXZhZlpMa3NrSVd2b3pIWUwxWVkwQVBNTDNVMHk2SDRTbzdVZkZKNG1nUzRu?=
 =?utf-8?B?ZXNVbkx3WlNVZVJCWk0zbjVYTXdmUXBtd1paVFlyaUc4REdqSkR5OE5WdWVF?=
 =?utf-8?B?RWt3ZGdldmhKUVZuNXFqQTVtNmp2c2hzMFdpUzlnVGVJUVZMdGxxaDZqanlC?=
 =?utf-8?B?RWdSa2U1WGh3eDZJcThFK0dpbTVScUUvQ05TRW5ReHR0aWhyd2NvODRscUxi?=
 =?utf-8?B?YXJCUlZxbExmeUhvNWV4N201b3hWWlFxejlmbko2TjJJNFh0bEh5QldrU0Nv?=
 =?utf-8?B?ZXozajNIcDBobmRjV3JoQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUJwd3JaaVFlTzZqR1VmZmtNM1FTQklyVTF4WEIzY1J1Y1FOQlJOSkl2S1Zs?=
 =?utf-8?B?cU95WU5zQ0NSSzBjS1JBTVdZNXU3c1dDbkZnWitoUGtqWnIzMHVUT0pPZjN0?=
 =?utf-8?B?RFpKOHhtQjBRbUtkZElPNDRsTW9CQXFPdmxnNHBpdWxLUGpkMnVnc2dHdmlO?=
 =?utf-8?B?eEI4MUdrd0o5cmdBUXBXWFU1aTNKZ2FQOHhPeXcvM09RdjBFcEozN0NzeFZ3?=
 =?utf-8?B?K0ovTUF5MTROaU1SSkFqRkhZYzJKSmh2RGNxamxnZUlDcFYxOXlESk1RRWNt?=
 =?utf-8?B?SEdVVDRmUTZ4a1FiZE5IUHVBRVpXT2UrZlcrL1BOZHFBOTgwbmU3dzg4OE5r?=
 =?utf-8?B?U2g0dUlmaDJOTUxrYTd6bGpHRmtiY0NHR2RFTGdmL1dYZWtrNmVFM2hFVEhT?=
 =?utf-8?B?N0k3RkF5aDA5emRVeW5YNzBDbWtqYm1CVnZuclEyaUJQU3BXdFBTYVVzNElw?=
 =?utf-8?B?dUhGNUZNenRFSVl3SEE3d3V5SGZZenZnemMyOHorR0RzRkJENEJpSHhvVGF2?=
 =?utf-8?B?emRXdFJYa0x2R1pxQzk5Y1Nzb2FCemtNckFEb0lIT3BycmZ5WlNRcEtQQk9n?=
 =?utf-8?B?N2JyMEZOZWRWN0ROc00rZDg5MzdEYk9MOWpUZmwvSGMrc0hhNi9nTEZndCt2?=
 =?utf-8?B?ZVNibXhxNWVaQkRJdTJFdDBLL21CR0RFQ3BZdU1ZSDdwZmxNUE5FZjdKU09D?=
 =?utf-8?B?cDhibXZ2bUk2NGxzL1N3S3puc3ZtdGYydjUyTVpWUmhQRjdxeisyL3Q3TG8z?=
 =?utf-8?B?ZDg1MnFwTXFhZW1jVThzNFh0TG1pMDJidDhQblZrc3hGdWR6UzdSeWxmZmxG?=
 =?utf-8?B?REhFaEMvaXdyc2V3ME5ISEFaZ2tCSDUxUkN3K2kycXZkNlBmNFNnZFg4QXJK?=
 =?utf-8?B?VGpDaytUcmtmSkZ6MTJObFhtRmdqRzlnUGJXSFVLa0ovZ0JvTC9PNFNNY2h0?=
 =?utf-8?B?UC8zYnYyRlRaZG9kREhadFlIU1QvakVRRUZIYVJaU0hwWUtOSWNrWTdaQUtw?=
 =?utf-8?B?M0dxZXZQdkFNMGtyVFNOcmp2RFBmaW1ON1AvbC9Hb1hVWTlTL1Q5TllGQkNY?=
 =?utf-8?B?SHZkc3kvTjRZWjNwbXBFY3Z5ekdqenZpbHI3WEVZNlZ1VDVhM2NQYzJIVTFG?=
 =?utf-8?B?WTMyb3B4YVJPeFFnWStBMHhoTktMWnV2TzVnazNGZmh6ZGt6RGNEOWFaYm9W?=
 =?utf-8?B?Q1NVRzFJZThvVFZtZnRGQ1R6S2k4RmFiMExOaTRzbk4rZ0gvNTl4c1ZYR0FF?=
 =?utf-8?B?Z0JlN1dNWTdqQ3RjZGs5aUV5UmFLWkVYK1Z0T3dxV0ZWcWdIOHlKN0x4bEVx?=
 =?utf-8?B?U21KdVV6Q21vMk1WbzIveXBXSEpNcGtVbGxDRjNzUk84ZnVqZklaYzE2ODEz?=
 =?utf-8?B?M3RGVHBQZXFsNU5tbEdhalRqT2F1S0hubzZuL0NuVm1YQlpNMXJRQ2xING1w?=
 =?utf-8?B?cTBIbUplViswVDV0STRDUkFJRXRoOWZLZEpuRFZGZ3Z4MG5nZmZNbXRWQnNL?=
 =?utf-8?B?ZnV4S3I2RTNxOHEwOHFYYlo2QjNZeDBuRHBpYVRMUUltejZ4aFptWmQ0a2xU?=
 =?utf-8?B?RDdzWXJJNDRhQXBmalhOQUN0VW1RZVpUbGk5YkhLZTFzZmFmSkhmVnVMejcy?=
 =?utf-8?B?WXlqSDFKbERmZ3M1T3dQNzNpRTZCcVNNZFkxdGdLczFjUFdKZUJYVmh0NGM2?=
 =?utf-8?B?ZDdGQWZQMWRVWWxoWWkwTkU2UVJobGMybmVHV2dkYW9HMDBqYUV2OFBMeFlD?=
 =?utf-8?B?UHQyTWt1TFc1ZHpibCswV1JRMEtaSUpaWXpVVUVFNVVOWHlLd0ppKytwNG9V?=
 =?utf-8?B?cGZnODZnMnRQQ1ByNysvbGNYbUsyV0M1QXUzdUo5U3BNMzFDUkRleGxJL3Zl?=
 =?utf-8?B?emwzbEVsL2R0QncwUkh5eXFSeVhvUkhGR05hMUV3NVRnRDNNZk1LbzlUaDlu?=
 =?utf-8?B?b2Z5V21NMmJNNGRpRXNpLzhRS0hqakkvdDFyNFJHdnRIa2tEa0liUWUwVGhT?=
 =?utf-8?B?U3BLdmRma1lyVWxaR09VWDc2a0p5N0taS1lJMTR4aVJ1cGw4TW82dGdUTEtG?=
 =?utf-8?B?MGdTNEROdldnMWpySkZiSzc1ejVlRk9GL2oyU0p6elBSSFdtUGNDNS9BZklQ?=
 =?utf-8?B?WENzUUwybEpyekxEUElLSUtvdFJHYVVHTUZjcERBYUlOYWxtZmtGV2pDZ2pR?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 802938b8-cede-49f5-d3a2-08dcd189342d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 11:10:39.6795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N7/zJFNL47cpyrYdm2PN1XmvUMTMUaiUiB+mBrii8psGKxyKvIRLhZX8Y0OLW50XtqhgTj9AgTd0e2+bs6CjoUSFAfU8v/w856WfX0MbViM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725966654; x=1757502654;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uJJl88NOqy9/Aa5mZCCAvhrvPCz8IYPNseDAz8/BK0g=;
 b=bbMbHet4EdW/Gm/XO3jKS0KrP8NfcwoV1NanO7GjLvGh1j19d+0XXyZl
 8QyZuc8uTOOiUuqkLTIojTX1RkDN+4bCcZi9SMIW+aQTLFtz4eCk7X5o9
 TSA+JYP3M3YSbh72v0+AupQPfQ8fBms7x8cZ/Al+XGMDeUxSpuf0UseEs
 EJIw7n0e1m64IYMxmAI9GVU6m2W+4o4NKmeDNZA/xteUy6czRFQu+Dql3
 dkCLjCWqJvsXkEfjrIGA+ITMoXgFQ7Xkbi5hXmdhpQ8erdcCyGWPDQ5ag
 LwIACWdNMeqSwIuAMvrQ69aqS3G5/TkTnBQocsVwjUPGQ/GqdkF1ktjya
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bbMbHet4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Connolly, Padraig J" <padraig.j.connolly@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/10/24 10:29, Loktionov, Aleksandr wrote:
>> From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
>> Sent: Tuesday, September 3, 2024 9:59 PM
>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Sokolowski, Jan
>> <jan.sokolowski@intel.com>; Connolly, Padraig J
>> <padraig.j.connolly@intel.com>
>> Subject: Re: [PATCH iwl-next v3] i40e: add ability to reset vf for tx
>> and rx mdd events

please capitalize acronyms (Tx, Rx, VF, MDD, PF)
(also in the subject line, but sent next version as v4).

>>
>> On Fri, Aug 30, 2024 at 09:28:07PM +0200, Aleksandr Loktionov wrote:
>>> In cases when vf sends malformed packets that are classified as
>>> malicious, sometimes it causes tx queue to freeze. This frozen queue
>>> can be stuck for several minutes being unusable. When mdd event
>>> occurs, there is a posibility to perform a graceful vf reset to
>>> quickly bring vf back to operational state.
>>>
>>> Currently vf iqueues are being disabled if mdd event occurs.
>>> Add the ability to reset vf if tx or rx mdd occurs.
>>> Add mdd events logging throttling /* avoid dmesg polution */.
>>> Unify tx rx mdd messages formats.
>>>
>>> Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>>> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
>>> Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
>>> Signed-off-by:  Padraig J Connolly <padraig.j.connolly@intel.com>
>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Next time please wait for review on our internal e1000-mailing-list.
Feel free to ping me directly if there will be no one engaged in any
future series of yours.

>>> ---
>>> v2->v3 fix compilation issue
>>> v1->v2 fix compilation issue
>>> ---
>>>   drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
>>>   .../net/ethernet/intel/i40e/i40e_debugfs.c    |   2 +-
>>>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
>>>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 116
>> ++++++++++++++++--
>>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
>>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-
>>>   6 files changed, 122 insertions(+), 15 deletions(-)
>>>


>>> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>>> @@ -459,6 +459,8 @@ static const struct i40e_priv_flags
>> i40e_gstrings_priv_flags[] = {
>>>   	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
>>>   	I40E_PRIV_FLAG("vf-vlan-pruning",
>>>   		       I40E_FLAG_VF_VLAN_PRUNING_ENA, 0),
>>> +	I40E_PRIV_FLAG("mdd-auto-reset-vf",
>>> +		       I40E_FLAG_MDD_AUTO_RESET_VF, 0),
>>
>> you don't tell us that this is implemented via priv-flag in the commit
>> message, would be good to include info about it.
> This flag is implemented for other network adapters like ice, we thought it's kind of standard.
> Can you suggest what exact part to change? Please be concrete.
> Thank you

priv-flag is not a standard, by definition
what we do in intel drivers is also not necessarily a standard

keeping the code quality as-is should be rather seen as an allowance
for legacy drivers, instead of something that should be copy-pasted yet
again. But commit messages are different, you need to obey the current
standard, which is simply: describe non-obvious things, describe more
if asked during review. Please do so :)

>>> +static void i40e_print_vf_rx_mdd_event(struct i40e_pf *pf, struct
>>> +i40e_vf *vf) {
>>> +	dev_err(&pf->pdev->dev, "%lld Rx Malicious Driver Detection
>> events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
>>> +		vf->mdd_rx_events.count,
>>> +		pf->hw.pf_id,
>>> +		vf->vf_id,
>>> +		vf->default_lan_addr.addr,
>>> +		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" :
>> "off"); }
>>> +
>>> +/**
>>> + * i40e_print_vf_tx_mdd_event - print VF Tx malicious driver detect
>>> +event
>>> + * @pf: board private structure
>>> + * @vf: pointer to the VF structure
>>> + */
>>> +static void i40e_print_vf_tx_mdd_event(struct i40e_pf *pf, struct
>>> +i40e_vf *vf) {
>>> +	dev_err(&pf->pdev->dev, "%lld Tx Malicious Driver Detection
>> events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
>>> +		vf->mdd_tx_events.count,
>>> +		pf->hw.pf_id,
>>> +		vf->vf_id,
>>> +		vf->default_lan_addr.addr,
>>> +		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" :
>> "off"); }
>>
>> Unnecesary code duplication, two functions with printing the very same
>> statement with a single different letter.
> But it's easy to grep and find as required by linux coding standards.

You could reword to have it still obvious what to grep for, like:

Malicious Driver Detected an Event, PF: %d, VF: %d, MAC: %pm, dir: %s...

with the last %s being "Tx" or "Rx"
(note: I didn't copied all your stuff as this is just an example)

>>> +
>>> +	/* VF MDD event logs are rate limited to one second intervals */
>>> +	if (time_is_after_jiffies(pf->last_printed_mdd_jiffies + HZ *
>> 1))
>>> +		return;
>>> +
>>> +	pf->last_printed_mdd_jiffies = jiffies;
>>
>> why homegrown rate limiting?
> Because it works! And other ideas probably didn't.
> What is your suggestion exactly? Please be concrete.

dev_info_ratelimited()
