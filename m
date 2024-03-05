Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EA1871F40
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 13:31:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6824241610;
	Tue,  5 Mar 2024 12:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrAjjTgNWBLY; Tue,  5 Mar 2024 12:31:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10B0E4161A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709641903;
	bh=PKcgdza9i7ts8MvxO7AwulD9CEi5cTlxwP8JZLca4YM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4pxA1ySpD9STiyjrl/rRYkU/+Rglyk+pTPZ31ZCdBzJ+GxkyPmg6MCX+rnAxg5Mz1
	 Zv/yIcOU46O43wUiW5bIitW9YVrD0FmVuFREYufE98/uuaEhLqwAcyhByMSjgzaGTn
	 Q8MwvxrXOxk9Ii2q8QnWzT0PwVw/lEvB0j5SkupLSqGM4l+kzCZvM3KvT3oGch+9Oz
	 qORKFLz8R4CUfHp2Kj1LEWmdbyUg+LaQRbx8NI46JX/+NLh8/pFxirnR+0eBtx/IVY
	 i/GfCQV61D0zFAUWbTc2cxFwh8L+Q+S+sS1gKHTz31Z25JSpCqcOkvqBT3MzXjB/1H
	 NKjZhFK1RkvTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10B0E4161A;
	Tue,  5 Mar 2024 12:31:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E48EA1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 12:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFFF160684
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 12:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppo4yBvMumph for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 12:31:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 506F960629
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 506F960629
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 506F960629
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 12:31:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4307274"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4307274"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:31:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9472056"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 04:31:36 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 04:31:35 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 04:31:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 04:31:35 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 04:31:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=elCLo3h3Ui4+MuCuoK51DiHzyKFiwDpwF5mcRDUzsdzcy0GVPqo6xeqPsJTekVUObf4NQG8ID3x1Unek3Dcc0RUknfo26O+1em6Nifj07L6dFv2YoqRaCLlNb20XFIrlgPW1nVeI3LkDEYb4Ng0rDjXSAOb5nvlPVnOlLQ0s6wsLk6NfjdiCnUqIRZJwt1j6wSqXQRcmrXt9gSHMkAFT+VhzFUCHgSnRuK9jywYokpxfQTadWhOhlfXr7ZnFcAyoy4rAZlssP/QntORoAIrQQY6Y7uF9I6mjSPVlpSSN00TwcpuIGbRhjyMwtCwsG4lGOwv3OnYCvZVbxXXZvhZsiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKcgdza9i7ts8MvxO7AwulD9CEi5cTlxwP8JZLca4YM=;
 b=Y5b1T9ZZNmSTgkQpckSeXKuLswbaeRuF6qtVMPqBNNLdwqvuCXjOjeH74aX1pchUoC7lY7eQJ3pXo8QVlduxrbsIEU2rrIOw6bTTVK4AFpx+54YLJJQLA6nKOXqPFxdKfb/EXDZ6x/D4npliOYSDp+GDq9BOZo2dBQ8xamuEt/GC4X42k/2DTYEKXifL2GQkURu98GwM9vUOYpcl+vOYLE3HFJcNbIT04ocRNHQx3BZEgl7wOjvXAL8O12jJzZ70LWjPLgkMDSPqbWfDPpfpgXYLD4DpRlTbTvsJLiszucFYyfavPG7YZvdGy51W4dtfcAVbm2eAb4+ndP6mzeu3MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SN7PR11MB7044.namprd11.prod.outlook.com (2603:10b6:806:29b::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Tue, 5 Mar
 2024 12:31:32 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::1de2:160a:9f9e:cb68]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::1de2:160a:9f9e:cb68%3]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 12:31:32 +0000
Message-ID: <803abfca-bd51-4b5e-ba4a-d253815fa63d@intel.com>
Date: Tue, 5 Mar 2024 13:31:28 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20240228142054.474626-1-mateusz.polchlopek@intel.com>
 <20240228142054.474626-5-mateusz.polchlopek@intel.com>
 <Zd9X5GPEZEIOIyWs@nanopsycho>
 <f776a527-bfd2-45de-bace-1b1c3f9dcb68@intel.com>
 <ZeH4cpze2MPM4FAK@nanopsycho>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <ZeH4cpze2MPM4FAK@nanopsycho>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0045.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::19) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SN7PR11MB7044:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a721eff-6e9d-40ca-1ec0-08dc3d1030b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9IHD4/49OxjiMNCismed9lGg/HWJciUU4upqd79sASeeq6kOGQCjvV+eDZUqIsfxXmBg+blwezgds8gFmCYoOcYT+4f0oBbIpnT6IChD6mz2NhtcM6UGtrehYu+uFRFWVQFr2PbzOkGIMFPaWE9Mi0+Kv8uubiL00Kag6kpmXXLcQKJHwvWRAU8adZbTd5vgP1qL1bOlOZemQiPPGR3VTeE8RpUCVA/bQ+bf/yxTHxAlPYzkO4Eoq97MMGBNVZf1kzEhP3RGx4VXmLy5QPk4CINv/rZfu+/Fdw6vmOvCeaRN4Eecz7XN8dU6tHzmLuDZZMFqxs8LdZY8NfJDlgmWPQO3X3BZXb0f7lKFPO5Fgm6LO18w3/YvAORUC/0mA9Ssp4A+5Zl4pESg5Q3oo/WuuAVU4GvF18PyIPe/nPDkxm3gIoQhUisTLA6UL+n+ituA2/RYvUg84Vt/OVawmKcQR+zWuFGuwfC6vXhr71ek+llUZbh5wlXFI1/gR6t2/0fd+JXBW1V+q2H/Dkrv5WlnlL2u+2B0fk3wz/6VTJyrO/+qJdjPZJqjNgnReizEbTuBBZ1FCW8L0hn9ay8Nv25XkyD7stYGbYd33MozO6bFbklqmQ/qyKg1CZte379V6PVUIS6ah99GV/XGndP0F1v5tkBn0Ullg4WqOQp36CSRneM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODRzd0lOL0d6NStoT0J3QWhFbzdCdTJXWG1QTUNBNGFGcnlDVURSZTdTVXl4?=
 =?utf-8?B?Z0xiK1kyeWtwb1cyWlhtczhhRVBoKzRhRUxlS1grcDBIbit6NFdNOUtxVWFC?=
 =?utf-8?B?ZElJbkJBR3JLMmVSZlVrQUZFd2lENDdnTXVudHdicVVlVExQc3Vtb0pYaE8w?=
 =?utf-8?B?bkdsM2R2VmRMa05DUnpsRzZ5SnBRT3ZMRFRaaVQ4TU14RlJ1ejR4NnhwSDJo?=
 =?utf-8?B?U0VINXFqZDUrWDAwbFRVclM3cDQwdEhFK1BmOVA3T001TXp4Sk9TakQraTNC?=
 =?utf-8?B?dWMvQmRWWUl0OFBpZjMxd0lXYjdRZ1p4RU0zMDE5dG5KS2VUMGdXWm5pOVUz?=
 =?utf-8?B?Q1IwSWdsZjZSYm9LWE9iOVBaTWFXMC9CdXlXZmVyalhNSnI2QmlkeENzZXUx?=
 =?utf-8?B?TzQwNXVNUHpIV1hOeldFSTBmUVV2Y1BjcVJDSHBYMmJvMWx0WnJ1UGs4c2l1?=
 =?utf-8?B?eE5hQWlhTkpTMUJPalNVN0d0TjdMZE5DMGUyYlhsb0Q2SlBKTGp6VzBWM2lT?=
 =?utf-8?B?K2hXN2lXczdKS2VJcmRkelB2elhkelBJR3YxK3FYdnRDOUlSSitzQUY3OEZR?=
 =?utf-8?B?VUJMUjA4Wm14ejhEYzJ4Qm5rYng2OWNqdTJseWlydWpUL2xxd2dNWXlIVFVl?=
 =?utf-8?B?bllsSTZaSUtYZ1d3ajZnNkViQWNrN0JyN1RndlMwOXNTdHQzbGJMQVMzbm10?=
 =?utf-8?B?TGw1YW96U1pieDdtcmlDQlFNdmttSGdKbFRlOFZRYTdHQVRnd0ZYbTh4akhx?=
 =?utf-8?B?bGtubVBBcHVLTTJlUE56Y1NsYlJuYzk4dGhMZmFUOXpQVUFUMXJ6ZXpXQmtR?=
 =?utf-8?B?R2J5QmExYlUxYjM2OU5YRHkxbU54RkNPdEEreDQvc0xMZXB0eEo2a3d5MUU2?=
 =?utf-8?B?Y0pMb1lZbDVTWUhKUWk4SnluVjU2N0w0MDFMaEVZWDVEdmpRaGRZenpKcFN2?=
 =?utf-8?B?RWhLTjRZMmpOR1pzeStLb3B1YXlzbmp3TWhTaTRrT3dUYkV5SE5hSjBjRHMy?=
 =?utf-8?B?M1pLYmVibGxWM0Ura0kzNFdMWUtrdGNNbFB4blhlU1Zta3N3ajVPenZEbEl5?=
 =?utf-8?B?Rys1amNsV2NuQlFaUkpycjF2VVZ6QjRkRVhJcCt2VENqR0NTQnJDTlVHZ1FM?=
 =?utf-8?B?eU5kZ3A5WXh2L2VOOXNsYm5XMzV2VUljOC9CZ1d4ZkxGZHc2eUN4Q2xZbXdT?=
 =?utf-8?B?MWQ2L2pvRnFoSUsvc2c2T1k5MENtcFF6a2ZYSzZad2taWEYxRHJjcDBRcHV1?=
 =?utf-8?B?SFlPY3plbm5BdUl0NFQ1aXJiZGZHVmp2NzUydlZQV2taSnlwdUpYRTVsTW5C?=
 =?utf-8?B?UmR6aTZJWVUwczRXTHk1bVB3ek1tK0ZVSWpPMGxSclorYXFaMnpRS2x6WS93?=
 =?utf-8?B?Sk5qaWk4Q2IrZlh3MWdtTXI5Rll4YjBVbGM0dEhtSFZGTzI2UDhxUkJaN1cw?=
 =?utf-8?B?dHhjOTRISnRGSldvcmM5QVZIODZZR3hxZ0ZGRUpwdnFwU2hjSlZuZm1nR0Y1?=
 =?utf-8?B?YjZFNFdxZ2t0UTlSak1ySlcvQ05yN3NUWkM1dzh6NVhqNXNxenFOajNxMW0r?=
 =?utf-8?B?Z0FxYUNlVnlrVEdBUnBkUlg1Q3pFRCtzdFE5d2pFWmlGamFJbFN4djhpdlhu?=
 =?utf-8?B?aWJwOUxRNVlyUHF1RGVreFo3UUUzMFlud012cDhpSzFzd2g5NjByK09nZjBz?=
 =?utf-8?B?UlFES2NXQ0FQMS9NTGljTERDbnlVSzNHMlJCOU05VG5LaUhkSGtxNDJjMjZ0?=
 =?utf-8?B?SEhQaUc2UGpZT3RnYnd3L0Z0UjAra045Z0tFbEFSWlBFUEdPZWwvSUhvdVEv?=
 =?utf-8?B?aWpXTi9nQmdxZ1FGdWp2anpNS2sxWXhZdWNHdkJYRHc5eEd4dmtneUo1Y1Jw?=
 =?utf-8?B?TTc0RERMdUo5MzFDTW4yaVRFUS9mSDRWcmg4ajlYVUhYaHBiVm5xVTZTWGhX?=
 =?utf-8?B?SXMzVmVpSkJ6d05Kbi9rcEI4WkMzYW9jd1hubWFTbVVZbGJlOWFYWnlWbVR0?=
 =?utf-8?B?czBhOExzdE5RYllrVk1LSEdGUjNwa0hERmZLalZJaFhCOGlBS2RnWmVaS3Zx?=
 =?utf-8?B?clFSMEdTbDFZeW9TRzlNaXh3U01xd2dvT0R5RjdlT0ZQcWthcTBHdWVzUGt4?=
 =?utf-8?B?enhuYUhzRE1jQWhBSkJnYzZ4QVViM2lON0o4THVRd2tQb3AzVUFjemdUdjhz?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a721eff-6e9d-40ca-1ec0-08dc3d1030b2
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 12:31:32.7966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VY0LQSpAAvSItq7h5cbUuUpgXicueied/wzcVEna6rQFdRWw0TFQJ5GgDI8AVvc6Th/vP9dSO6ep9u1Z7mikZ07JHZQAB7BmWWIPhfuCPvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7044
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709641899; x=1741177899;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wVR0hsNalFPZjqzdHdUoewLX4/P2pRDK0VmWSSDArIE=;
 b=h6COzruyeKmBlY6XkCIbWYBZ7nzApRgTrmG/o8gbpkaQORhNlJkML+ox
 qE/0am3NxfkrQL4xU/s6P6+4CK++H03vzT/MO1NfrFm4skBjyUaGAC2Zo
 bn9LbnB7vURYiQWprcGH00gRo2OD87NysgHuzK3Hmdmyt3S/KBo8mrvyS
 cvE82eKLzL0ZiKXfYQsGBssq0+PrpzVQTS+8nTzlrHhyCLhm3w+r53K7w
 gKUsJwx0MpXgzyxcJ4BDmUnkl+nB6Ib9Grt7FWxlsSJCZgq+8BpSCm/Cz
 IUemF20h/q6PvYPCS5ZSSBB6mDkcpTokaa51+XmJy67uVvHVHeCfRFs/+
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h6COzruy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: andrew@lunn.ch, michal.wilczynski@intel.com, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/1/2024 4:46 PM, Jiri Pirko wrote:
> Fri, Mar 01, 2024 at 02:41:56PM CET, mateusz.polchlopek@intel.com wrote:
>>
>>
>> On 2/28/2024 4:57 PM, Jiri Pirko wrote:
>>> Wed, Feb 28, 2024 at 03:20:53PM CET, mateusz.polchlopek@intel.com wrote:
>>>> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>>>>
>>>> It was observed that Tx performance was inconsistent across all queues
>>>> and/or VSIs and that it was directly connected to existing 9-layer
>>>> topology of the Tx scheduler.
>>>>
>>>> Introduce new private devlink param - tx_scheduling_layers. This parameter
>>>> gives user flexibility to choose the 5-layer transmit scheduler topology
>>>> which helps to smooth out the transmit performance.
>>>>
>>>> Allowed parameter values are 5 and 9.
>>>>
>>>> Example usage:
>>>>
>>>> Show:
>>>> devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>>>> pci/0000:4b:00.0:
>>>>    name tx_scheduling_layers type driver-specific
>>>>      values:
>>>>        cmode permanent value 9
>>>>
>>>> Set:
>>>> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>>>> cmode permanent
>>>>
>>>> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 9
>>>> cmode permanent
>>>>
>>>> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
>>>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> ---
>>>> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   8 +
>>>> drivers/net/ethernet/intel/ice/ice_devlink.c  | 169 ++++++++++++++++++
>>>> .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
>>>> .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
>>>> drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
>>>> drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
>>>> 6 files changed, 189 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>> index 02102e937b30..4143b50bd15d 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>> @@ -1692,6 +1692,14 @@ struct ice_aqc_nvm {
>>>> };
>>>>
>>>> #define ICE_AQC_NVM_START_POINT			0
>>>> +#define ICE_AQC_NVM_TX_TOPO_MOD_ID             0x14B
>>>> +
>>>> +struct ice_aqc_nvm_tx_topo_user_sel {
>>>> +	__le16 length;
>>>> +	u8 data;
>>>> +#define ICE_AQC_NVM_TX_TOPO_USER_SEL	BIT(4)
>>>> +	u8 reserved;
>>>> +};
>>>>
>>>> /* NVM Checksum Command (direct, 0x0706) */
>>>> struct ice_aqc_nvm_checksum {
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> index cc717175178b..db4872990e51 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> @@ -770,6 +770,167 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
>>>> 	return ice_devlink_port_split(devlink, port, 1, extack);
>>>> }
>>>>
>>>> +/**
>>>> + * ice_get_tx_topo_user_sel - Read user's choice from flash
>>>> + * @pf: pointer to pf structure
>>>> + * @layers: value read from flash will be saved here
>>>> + *
>>>> + * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
>>>> + *
>>>> + * Returns zero when read was successful, negative values otherwise.
>>>> + */
>>>> +static int ice_get_tx_topo_user_sel(struct ice_pf *pf, uint8_t *layers)
>>>> +{
>>>> +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>>>> +	struct ice_hw *hw = &pf->hw;
>>>> +	int err;
>>>> +
>>>> +	err = ice_acquire_nvm(hw, ICE_RES_READ);
>>>> +	if (err)
>>>> +		return err;
>>>> +
>>>> +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>>>> +			     sizeof(usr_sel), &usr_sel, true, true, NULL);
>>>> +	if (err)
>>>> +		goto exit_release_res;
>>>> +
>>>> +	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
>>>> +		*layers = ICE_SCHED_5_LAYERS;
>>>> +       else
>>>> +		*layers = ICE_SCHED_9_LAYERS;
>>>> +
>>>> +exit_release_res:
>>>> +	ice_release_nvm(hw);
>>>> +
>>>> +	return err;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_update_tx_topo_user_sel - Save user's preference in flash
>>>> + * @pf: pointer to pf structure
>>>> + * @layers: value to be saved in flash
>>>> + *
>>>> + * Variable "layers" defines user's preference about number of layers in Tx
>>>> + * Scheduler Topology Tree. This choice should be stored in PFA TLV field
>>>> + * and be picked up by driver, next time during init.
>>>> + *
>>>> + * Returns zero when save was successful, negative values otherwise.
>>>> + */
>>>> +static int ice_update_tx_topo_user_sel(struct ice_pf *pf, int layers)
>>>> +{
>>>> +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>>>> +	struct ice_hw *hw = &pf->hw;
>>>> +	int err;
>>>> +
>>>> +	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
>>>> +	if (err)
>>>> +		return err;
>>>> +
>>>> +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>>>> +			      sizeof(usr_sel), &usr_sel, true, true, NULL);
>>>> +	if (err)
>>>> +		goto exit_release_res;
>>>> +
>>>> +	if (layers == ICE_SCHED_5_LAYERS)
>>>> +		usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
>>>> +	else
>>>> +		usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
>>>> +
>>>> +	err = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
>>>> +				      sizeof(usr_sel.data), &usr_sel.data,
>>>> +				      true, NULL, NULL);
>>>> +	if (err)
>>>> +		err = -EIO;
>>>> +
>>>> +exit_release_res:
>>>> +	ice_release_nvm(hw);
>>>> +
>>>> +	return err;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_devlink_tx_sched_layers_get - Get tx_scheduling_layers parameter
>>>> + * @devlink: pointer to the devlink instance
>>>> + * @id: the parameter ID to set
>>>> + * @ctx: context to store the parameter value
>>>> + *
>>>> + * Returns zero on success and negative value on failure.
>>>> + */
>>>> +static int ice_devlink_tx_sched_layers_get(struct devlink *devlink, u32 id,
>>>> +					   struct devlink_param_gset_ctx *ctx)
>>>> +{
>>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>>> +	struct device *dev = ice_pf_to_dev(pf);
>>>> +	int err;
>>>> +
>>>> +	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
>>>> +	if (err) {
>>>> +		dev_warn(dev, "Failed to read Tx Scheduler Tree - User Selection data from flash\n");
>>>
>>> I wonder why we don't propagate extack to these callbacks. Care to add
>>> it and use it instead of dmesg please?
>>>
>>>
>>
>> Good point Jiri, but it is 'get' (in 'set' the same situation) function from
>> DEVLINK_PARAM_DRIVER which defines that in 'set'/'get' there is no extack
> 
> So add it.
> 
> 
>> parameter. From 'get' function I can probably remove this message as it is
>> not so important and just return error code...
>>
>>>> +		return -EIO;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_devlink_tx_sched_layers_set - Set tx_scheduling_layers parameter
>>>> + * @devlink: pointer to the devlink instance
>>>> + * @id: the parameter ID to set
>>>> + * @ctx: context to get the parameter value
>>>> + *
>>>> + * Returns zero on success and negative value on failure.
>>>> + */
>>>> +static int ice_devlink_tx_sched_layers_set(struct devlink *devlink, u32 id,
>>>> +					   struct devlink_param_gset_ctx *ctx)
>>>> +{
>>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>>> +	struct device *dev = ice_pf_to_dev(pf);
>>>> +	int err;
>>>> +
>>>> +	err = ice_update_tx_topo_user_sel(pf, ctx->val.vu8);
>>>> +	if (err)
>>>> +		return -EIO;
>>>> +
>>>> +	dev_warn(dev, "Tx scheduling layers have been changed on this device. You must reboot the system for the change to take effect.");
>>>
>>> Reboot the system? Why not re-plug the whole building while you are at
>>> it? :)
>>>
>>>
>>
>> ... but what about 'set' function? The information about reboot has to stay
>> and still - there is no extack in 'set' function.
> 
> My point is, do you really need to "reboot"? Message like this sounds
> very odd coming from a nic driver. Woundn't pci slot powercycle do the
> trick for example?
> 
> 
>>
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_devlink_tx_sched_layers_validate - Validate passed tx_scheduling_layers
>>>> + *                                       parameter value
>>>> + * @devlink: unused pointer to devlink instance
>>>> + * @id: the parameter ID to validate
>>>> + * @val: value to validate
>>>> + * @extack: netlink extended ACK structure
>>>> + *
>>>> + * Supported values are:
>>>> + * - 5 - five layers Tx Scheduler Topology Tree
>>>> + * - 9 - nine layers Tx Scheduler Topology Tree
>>>> + *
>>>> + * Returns zero when passed parameter value is supported. Negative value on
>>>> + * error.
>>>> + */
>>>> +static int ice_devlink_tx_sched_layers_validate(struct devlink *devlink, u32 id,
>>>> +					        union devlink_param_value val,
>>>> +					        struct netlink_ext_ack *extack)
>>>> +{
>>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>>> +	struct ice_hw *hw = &pf->hw;
>>>> +
>>>> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
>>>> +		NL_SET_ERR_MSG_MOD(extack, "Error: Requested feature is not supported by the FW on this device. Update the FW and run this command again.");
>>>
>>> Drop the "Error: " prefix. Does not make sense to have it. Also, "Update
>>> FW" remark looks quite odd.
>>>
>>>> +		return -EOPNOTSUPP;
>>>> +	}
>>>> +
>>>> +	if (val.vu8 != ICE_SCHED_5_LAYERS && val.vu8 != ICE_SCHED_9_LAYERS) {
>>>> +		NL_SET_ERR_MSG_MOD(extack, "Error: Wrong number of tx scheduler layers provided.");
>>>
>>> Drop the "Error: " prefix. Does not make sense to have it.
>>>
>>>
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> /**
>>>>    * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
>>>>    * @pf: pf struct
>>>> @@ -1601,6 +1762,7 @@ static int ice_devlink_loopback_validate(struct devlink *devlink, u32 id,
>>>> enum ice_param_id {
>>>> 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>>>> 	ICE_DEVLINK_PARAM_ID_LOOPBACK,
>>>> +	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>>>> };
>>>>
>>>> static const struct devlink_param ice_devlink_params[] = {
>>>> @@ -1618,6 +1780,13 @@ static const struct devlink_param ice_devlink_params[] = {
>>>> 			     ice_devlink_loopback_get,
>>>> 			     ice_devlink_loopback_set,
>>>> 			     ice_devlink_loopback_validate),
>>>> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>>>> +			     "tx_scheduling_layers",
>>>> +			     DEVLINK_PARAM_TYPE_U8,
>>>> +			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
>>>> +			     ice_devlink_tx_sched_layers_get,
>>>> +			     ice_devlink_tx_sched_layers_set,
>>>> +			     ice_devlink_tx_sched_layers_validate),
>>>> };
>>>>
>>>> static void ice_devlink_free(void *devlink_ptr)
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>>>> index 319a2d6fe26c..f81db6c107c8 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>>>> @@ -286,10 +286,9 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
>>>>    *
>>>>    * Returns: zero on success, or a negative error code on failure.
>>>>    */
>>>> -static int
>>>> -ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>>>> -			u16 block_size, u8 *block, bool last_cmd,
>>>> -			u8 *reset_level, struct netlink_ext_ack *extack)
>>>> +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>>>> +			    u16 block_size, u8 *block, bool last_cmd,
>>>> +			    u8 *reset_level, struct netlink_ext_ack *extack)
>>>> {
>>>> 	u16 completion_module, completion_retval;
>>>> 	struct device *dev = ice_pf_to_dev(pf);
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>>>> index 750574885716..04b200462757 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>>>> @@ -9,5 +9,8 @@ int ice_devlink_flash_update(struct devlink *devlink,
>>>> 			     struct netlink_ext_ack *extack);
>>>> int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
>>>> 			    struct netlink_ext_ack *extack);
>>>> +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>>>> +			    u16 block_size, u8 *block, bool last_cmd,
>>>> +			    u8 *reset_level, struct netlink_ext_ack *extack);
>>>>
>>>> #endif
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> index d4e05d2cb30c..84eab92dc03c 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> @@ -18,10 +18,9 @@
>>>>    *
>>>>    * Read the NVM using the admin queue commands (0x0701)
>>>>    */
>>>> -static int
>>>> -ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>>>> -		void *data, bool last_command, bool read_shadow_ram,
>>>> -		struct ice_sq_cd *cd)
>>>> +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>>>> +		    u16 length, void *data, bool last_command,
>>>> +		    bool read_shadow_ram, struct ice_sq_cd *cd)
>>>> {
>>>> 	struct ice_aq_desc desc;
>>>> 	struct ice_aqc_nvm *cmd;
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
>>>> index 774c2317967d..63cdc6bdac58 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
>>>> @@ -14,6 +14,9 @@ struct ice_orom_civd_info {
>>>>
>>>> int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
>>>> void ice_release_nvm(struct ice_hw *hw);
>>>> +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>>>> +		    u16 length, void *data, bool last_command,
>>>> +		    bool read_shadow_ram, struct ice_sq_cd *cd);
>>>> int
>>>> ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>>>> 		  bool read_shadow_ram);
>>>> -- 
>>>> 2.38.1
>>>>
>>
>> Other comments will be resolved in the next version.
>> Thanks

Okay, thanks Jiri. I will solve problems in next version.
