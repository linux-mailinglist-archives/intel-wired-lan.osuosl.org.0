Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B077FA22E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 15:15:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5A5D405B5;
	Mon, 27 Nov 2023 14:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5A5D405B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701094522;
	bh=IjwIarktxEQUd/JZ5X2tX9a6zjZLSwU9OgIspPWG8CA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HwsNiL03ykteG1oxIczAyPNMb0NCEeOufrSDhMokvcSiTrFQi2ZoTSO24orXWFojA
	 qtZCvZWKAyzcV09skbHSKIVDa4RhZRhMxInDZ8Rfyn83KeLjSHL+f1JMh+N1vN8xs7
	 JTqPz7Qy3nxM+jfJW1x2j1W6eSG3DU7K7JSrO6PPqMJrAIMen0RhGjPw6wnG6pzt3b
	 wyEBIMT5JPcKverOj9wLuTez+KVVYt9Co4VuelUYu4TflYZpEHt+jBt/UkF6RyyEGN
	 rf0T2cA/vQBmioL25LrChAzln4MzB6EEZLKhJFesTX6JDtugFQM1pFbmw1gN8biAzL
	 3Mn5Cb4uLcHzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ACrOdk9RoqQ8; Mon, 27 Nov 2023 14:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 304FD4053E;
	Mon, 27 Nov 2023 14:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 304FD4053E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C96B1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:15:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3062D405A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:15:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3062D405A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kEDGxVzM9xVS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 14:15:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3C56405B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:15:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3C56405B9
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="395527290"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="395527290"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:15:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="768189393"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="768189393"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 06:15:05 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 06:15:04 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 06:15:04 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 06:15:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 06:15:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tq4KXZhC/TwNIwgFHjOuLb2/bUWo2Wg4j9/8qimNSL8klNN0ZjPtxnTZeJWDbojM9OoGZfPBMtB2HXxd8+2QUnosWU8+GB8J1WfTerYMgfibOpiDGLq8lCn2JZIWBLxdu7QLoCVpzCyl/9iLqS/5XYAZzCiM9l5ykJxNgbg/8OloZjZkFMQDEQnbslkzIraR/ZNZXWfXrRC+3mlgxnN1acpn66WE2s3GRn1jhQPXFNDIVyVpkm9Tj/xBDNcR1doJcIGj88/cPpE8136RHdBqygctqmMJbQ4H9sC4FTfzClBb7P4kXUvnU6bYnVGq4sCBVR2VG3e9mzCsQUlPVDE1tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZbrpSdG6CZkJy2s3KMqIBvzs9CXzBGRKq/feUgHR5Fc=;
 b=Tzrra7uNL4ZGNGCckugVcUN2P36GiuyJGeZSI8ucxidUma4vLP7YblJJa4yHnuuWdLj+6FJ5be7HBZ3pHUIki4X6oRXUU11YS6ioPWor8X47gke5tue/0atWYymLuJxNSUnZM9O8EDi/47M1Dscb3HXZAlbkEE/KJ/eWEc6VmQs0ffmFxS3YLMR8Mfp4U4tpqVAzo6xiPX+8AiMXpTgbLUOitfHu7RbFtiXWbmwyF4owfQIN48Z2K2FVFCpRNmjUzbLh/ET4qfP3zS3b4z0Yd+j4X+EdWnBoTTZTbdVQN7Scm9bbnxnlnxeHSi4lmBhTVhZFBBaag3MhZvPer5JKrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by PH7PR11MB7026.namprd11.prod.outlook.com (2603:10b6:510:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Mon, 27 Nov
 2023 14:15:01 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b73b:45a5:d8d8:65d8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b73b:45a5:d8d8:65d8%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 14:15:01 +0000
Message-ID: <4945c089-3817-47b2-9a02-2532995d3a46@intel.com>
Date: Mon, 27 Nov 2023 07:14:51 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-2-ahmed.zaki@intel.com>
 <20231121152906.2dd5f487@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231121152906.2dd5f487@kernel.org>
X-ClientProxiedBy: DU2PR04CA0322.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::27) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|PH7PR11MB7026:EE_
X-MS-Office365-Filtering-Correlation-Id: 82d1f5b1-18f1-4e36-e9b6-08dbef533e44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: laqiyH8Vr3MvgCS9ZcMe4qemGqZJlRtW6Nh4hRe2rZLcGQi9w5Zokt4cHRM4fIZq9FR1kRoIgxQVDjNGnn+/6s1g8ERDoIlRkH3ct2zKZ4am8WD2qiya3xZQLMJV7GvX+/WsThNtenCl+cJeOXmUZ3xs6iJwsxPayaMc7frYQ8e+ZIPh0fCf7C4EY30F20OaWn398wrJEQqruNfmwb0DBibrY01eXTyRX3QK31uxUgYN8skVH3lVgA6XdIY16hRz1OHGhflv5EcJ0NWsmZcP2+3bcGbd4hB9u8RDZvbHatWb03CJTe9jg/sfOeCwltYh8NXzBHdbv38kdh/wWtClxT1vgov2XBtjVWzjecLYd0CPzn0u2okVFBWBT/g7lkHyJyO59WK310ZITK9DsLe7tvV2TTbsoc8vlwRr/ZhXQicE8v30XpXcFJRf65xg+7ktsSmwLPxBnDnnnV3Ynj2v3BZMSG63Ntmd03KtNiCuHi0r1RuBqaMPrWvBjo16CnxqMwT1mfT1K7yEFCY4WGS/ijaiEbto0lTqzHDWQk0EmP7573IC0d91T/zsf4sitUkg7E4h61dBAvZJ3woJo5CA5phuXBlBhodiEchWWFQ8dM5kmB16UrcMSk3usYn/8FIlmuGBy0V9sxjYNj2G2SwFmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39850400004)(346002)(376002)(366004)(136003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(4001150100001)(44832011)(7416002)(5660300002)(8936002)(8676002)(4326008)(31686004)(2906002)(41300700001)(66946007)(54906003)(316002)(66476007)(66556008)(6916009)(6512007)(6506007)(86362001)(82960400001)(6486002)(26005)(107886003)(53546011)(2616005)(6666004)(38100700002)(83380400001)(478600001)(31696002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q29HMlRIVjlDSUJZRWN3V0gwTXhHZHFYQUU4RUc3cnVteUN3UE15SmdUTHlN?=
 =?utf-8?B?d2tHUGxVRVp5aE9IejBPOWJPcHNrWXpvcmRPRERMZlZtbWp3NkdQSXBiR0Mw?=
 =?utf-8?B?VzBDNkxIbzFubUR4MUdqRjJWcm5SZHlWNjdUQzRBMFRUZVkvYXNiWFZmbTA1?=
 =?utf-8?B?OXRKR2tJQ0oyYXU0V3BySkpCYU1ZTTVXNmhTUkx1MWVObkRUOGRtcmhmVUNr?=
 =?utf-8?B?UzFuVVR4NFhYMTA5blp5NytOYUJmdnBKUGlKU1BBOERYQXV1MWNra2U3OUtO?=
 =?utf-8?B?a2QrZW9DV0hiaVVRUSttR3dXZGxxVG9RZGh3dkRDZHpseGtmdkNPMUpBMHV3?=
 =?utf-8?B?OXZXT3NwVERSSkZRc0Z2Rk5uTXlZbktkNjVsWVEyYldpcXpBMjY5ZjNDcDZl?=
 =?utf-8?B?blZZWFBFVHZFWnlZb0VsS3dRelNaVWVSeWVmUFVNR0xxbUFkODNBd0xMMTJD?=
 =?utf-8?B?MkFaWXVnWkxhUUY4Nm1POUdweU1BbXpjUXZ6QUJNYzFCK01qUUwxTVFRVlhi?=
 =?utf-8?B?eExma3B0L0ZKbGhSS2o2M0s5ODNDeVMxQ3RJekR5ZDYzQjBuZXBlZ3dldVNX?=
 =?utf-8?B?aVpDYy95bUY0MkFIemhNNFZ1ZmN2cEQzMWNFRVFkTHpCOUFSOHZ1SDRzeVN2?=
 =?utf-8?B?R3dNZUIxMHR6NjFXWEV4THIxbzk4RlJUSGpBTGM0dnBadE5lK1REZlI1b0RO?=
 =?utf-8?B?Nzc5R0xZMm5URkYxMlZFZkdEUVIrSndUQ1JCV3VwT2d3RFF4QWxTU2xLa3oz?=
 =?utf-8?B?NWZjQURQWTFsZWkwa0ZsdmhjOW9hbjkrbWh3KzRtMGl6MjJGbGFiN0QzYjhL?=
 =?utf-8?B?SDN2RkkvT04zMEYySkxoUmNLVHEyZVR6OFdlR1R2OVZveUdObkhLZ0s0ZDdS?=
 =?utf-8?B?WXFFRU1nVFUvdVE3SzVJY2RCZkkyL29XR1pYNjVoTDFjbEFrQ2Q0UnpxTE9W?=
 =?utf-8?B?bXUvOVNGK2kxakhOeGpWM3pNVzBXc3UyQ3FHRGdzaVVPYTlFNk9INTlGY01w?=
 =?utf-8?B?Nm96ZzAyMWNVWEg3Zk1tUTR1bkgxNStsek5RbEtCU1BldGxqMXFoeldWa0lO?=
 =?utf-8?B?R2ZDeVJwSG12bUZwdHNzZ2xRaUUyQ3V4d29DTnZmOEhoYm4yZUdJL2ROWHhJ?=
 =?utf-8?B?NDFXNDFXbDlPSVBBVE9LZmFhdzIwUldneHFRd250eVArRm16cjkrODlCVTh0?=
 =?utf-8?B?Q3EzYjY0dk5RV3htYmJNWUhqNW5IWnVUZlpTdnIyY09mR2h6dUVJTkNhSzgy?=
 =?utf-8?B?V1Bpc1UwNkkxenphZW8wMG1yRERBN0JmQVM4Z3BXenFDTTNUcWo3YzJYWDly?=
 =?utf-8?B?TlF1Vk1wSS8wSmM5dlNFRmhnU21IYVZqZnluZ2Rnc25lVm9waEdrRkErV21Y?=
 =?utf-8?B?MnBTblRBRHh1WnJCVTVDOFM0L3VMdnpFRi9KSHlHOGtGQzRqZ1RTOWlXb0Zs?=
 =?utf-8?B?ZldaYWR6KzhZSFFobkhNZ3RaWlRlbjJoYjdKVWVDMkM1NjNTbzhwSW0rSEo1?=
 =?utf-8?B?YStPQk84dnl5VVZzMHQxeCs2eFM1Q2tWNDhRNXRIM1J6UzVxanp0a3ZLOWt1?=
 =?utf-8?B?V2k1VUxUUFJPdno1YkNVaFcrSk9VSVBLTkJXaUEwZkJ1K280WG93ZVl2WGVL?=
 =?utf-8?B?cFp2ekNhS3RHNGVMMlFFQ0Q1cHFlMGhPRmFlcEJNSkFQOUpOUmhzLzAzN1BW?=
 =?utf-8?B?bHBIWWZoNk9HSkhBUzErYjlEYUdEYTlKa1JHekF0b3FzSHdTMU1YYW1CMDE0?=
 =?utf-8?B?TS9PVXUwZGdNZGRwc2dZYW9Ib0Z2bVlLUTB2eEFjWEk3NnhEczQ5Q2tMM0dY?=
 =?utf-8?B?YlliSGlXNUdyVDk0S3hSclYwaEVwQmhXUitSa3J4UlozLyt6dUVEb1NmeUlq?=
 =?utf-8?B?TWZPNE52RUFSclNWM2c5dTU2SUJmRE1nNXMzNnVyTTR1aGZQSS9WUk84Y3RS?=
 =?utf-8?B?U0pXTDAreXBNYkRXRWl2TEZPYnlkM05FaVFUTENpMkptbjJBVXg1bkFpbmVH?=
 =?utf-8?B?dnhnOUpnVnpvUGsyS2RjREIwVGdrMHhIREpTb0g0dVNwZUUzVDYwOER4M1NV?=
 =?utf-8?B?c21FcHlQc1BFSjB3VXppblJTNXlNYldoQjVYWThNT2R1bzhGb01GN2Z4Wm9I?=
 =?utf-8?Q?PJWUVaRv2UWDyTbb1LieV3LEF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82d1f5b1-18f1-4e36-e9b6-08dbef533e44
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 14:15:01.1089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UBDhj6jX7FIaJ6BRWPCRjPxxES4dqKbrokJrtB6r2CnHhCCEE+16QJgOvb0eoyIKMv/MX2gsKjkY3XW9HTDsLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7026
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701094514; x=1732630514;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NuO/0mjfsEc9zoGx9QpNTWHPxn/Omku1nozcMETzDqY=;
 b=GvkEz7r2Y3A29Yopf++VM0p6zFeT5yjqdUI9kx3E4jeItlsy/bvNRJ5W
 k7KGlXth9EidlcuzZ94ejZU+h5zvng7q6yLv3A4v1xr1hLMRqSM1bz2jU
 AzxxhJJtkvkSaPrY4at7Od+Mj0LB2oZKRHr+meIGEvKpTKPn27FP4pbtV
 LGq65pWrOmnS5eeaeZHtmx1jQNok1EyRCq+Xdy6oy/X7z9Vy8H6svv2Mx
 3ybwHBskSLw8T3RFanPiek7e/VXhS4qoNyKUP5OyYyR1RNQ0k3rIJYDC+
 4jzpjw8ijfb8NvuPydiNgi7zsL5WxnTSAF/p+oNyfkRV8zdyjLRgU2aHa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GvkEz7r2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/7] net: ethtool: pass
 ethtool_rxfh to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, netdev@vger.kernel.org, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Igor Bagnucki <igor.bagnucki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-11-21 16:29, Jakub Kicinski wrote:
> On Mon, 20 Nov 2023 13:56:08 -0700 Ahmed Zaki wrote:
>>   	u32	(*get_rxfh_key_size)(struct net_device *);
>>   	u32	(*get_rxfh_indir_size)(struct net_device *);
>> -	int	(*get_rxfh)(struct net_device *, u32 *indir, u8 *key,
>> -			    u8 *hfunc);
>> -	int	(*set_rxfh)(struct net_device *, const u32 *indir,
>> -			    const u8 *key, const u8 hfunc);
>> +	int	(*get_rxfh)(struct net_device *, struct ethtool_rxfh *,
>> +			    u32 *indir, u8 *key);
>> +	int	(*set_rxfh)(struct net_device *, struct ethtool_rxfh *,
>> +			    const u32 *indir, const u8 *key);
>>   	int	(*get_rxfh_context)(struct net_device *, u32 *indir, u8 *key,
>>   				    u8 *hfunc, u32 rss_context);
>>   	int	(*set_rxfh_context)(struct net_device *, const u32 *indir,
> 
> This conversion looks 1/4th done. You should do the following:
> 
>   - First simplify the code by always providing a pointer to all params
>     (indir, key and func); the fact that some of them may be NULL seems
>     like a weird historic thing or a premature optimization.
>     It will simplify the drivers if all pointers are always present.
>     You don't have to remove the if () checks in the existing drivers.
> 
>   - Then make the functions take a dev pointer, and a pointer to a
>     single struct wrapping all arguments. The set_* should also take
>     an extack.

Can we skip the "extack" part for this series? There is no 
"ETHTOOL_MSG_RSS_SET" netlink message, which is needed for user-space to 
get the ACK and adding all the netlink stuff seems a bit out of scope.

I will do the rest in the next version.

Thanks.

> 
>   - Add a rss_context member to the argument struct and a capability
>     like cap_link_lanes_supported to indicate whether driver supports
>     rss contexts, then you can remove *et_rxfh_context functions,
>     and instead call *et_rxfh() with a non-zero rss_context.
> 
>   - Add your new member to the struct wrapping all params.
> 
> If you just expose struct ethtool_rxfh to the drivers (a) there are
> fields in there drivers shouldn't touch, and (b) that struct is uAPI
> so we can't add netlink-only fields easily.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
