Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DBD860B78
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 08:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB19A41C42;
	Fri, 23 Feb 2024 07:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2Vb5WiPnL19; Fri, 23 Feb 2024 07:45:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C987415A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708674336;
	bh=eadIsvEDSTDcgsGFD9JrkdpNVR06P59yo/hBHH02+Ks=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zgyh8GEqhNffeLWhwPWyhGDXlmZ58V8vXS4UtV/8OCDmzxhfLalj8Tk5suzXm5e49
	 K7oTst7eiRu7TPG3cLsYMWq7iM8vZTHRgRSzTqu4Htn2Dm0gJ2gq2r5DW5cz3BZrUK
	 E5scTceAFkGMNw8CKgfsrPgMV/EWtBHNfPo6F0f6c8jVkBqucBgF+hQGd7ygthPKAV
	 8lwM+M4gK3CM1lsVQoiHeN8OuUbVIqsCQm3eZZ0vzCKCX3QVekQgvI/3ma6gojkXC/
	 fnDpDtL3Coghm52zoX+c6CVCsYlLhSiRnikb22Tksg/v6/bBcINdbrU4XmXiqDV/UG
	 y32XsL1VvlCoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C987415A9;
	Fri, 23 Feb 2024 07:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA62C1BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 07:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5D3583126
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 07:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GQ4ygbztvSy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 07:45:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4435A8305C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4435A8305C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4435A8305C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 07:45:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13538862"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13538862"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 23:45:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10522597"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 23:45:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 23:45:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 23:45:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 23:45:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBw0sBX8AFwPem/mbpcLRRnB0Ho+xdie/XWVKvLZHGf5JFivmJR8ft+NANhWN5so/q/RlIYeJSEl2JdXuuwu/GRwtVnWIAW6ErIiLbcvsCmMqbTcir/E+q16tasqg37fXC2Gu+HGnftwxtX8VgQuDHxECVQea3qMHliC+gkNW4+PYk4IJUsvkw1AyltbpNmC3REPjZC5XOawO7LA3kiNyAfYzK09BDhP+G/gNivQpMooRb+FSYufJL+JPmsCC0p7xxBYa6oYorUuy5zwcEYTsKRXcYbxNlW3hYL8q8X4uPOuPK+I58E623QLUMb4xjbpv5+2P92cSV6/0undrm3dgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eadIsvEDSTDcgsGFD9JrkdpNVR06P59yo/hBHH02+Ks=;
 b=hPy/kPkCDHWOwmqlVi5Ei4xm4YtihqMCxsIkCY8yPuZRFYVDu/2S7ggHYf6YVgHTUSOteksuPHH1kbwuOrIPMbRjgD5hOSWF01pbeim9VK3nNsYIlVgQWSVb/u5Gx+xdSyivgNG06SSajJDwLu8doBNgGS0PtUALSDaSdKXmfinvMZcs02r/PJzcknceYVT9pYsi3GH0cXL1eIVKI3tyI4i5HmcLp5uNnGf7nWQ5flwpRCyv5mU6B0j8M4gwkvxModFo/YIKRCIWaA37x1tYsUiVq0Z32MvcCYIX+19Twir3yAn2lIFhk/lPDGgWAeBz7zQzAoc9aVrBn8naycPeiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8478.namprd11.prod.outlook.com (2603:10b6:510:308::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Fri, 23 Feb
 2024 07:45:27 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%7]) with mapi id 15.20.7316.018; Fri, 23 Feb 2024
 07:45:27 +0000
Message-ID: <b50229cb-e3b0-44f8-9725-6592b74dfebf@intel.com>
Date: Fri, 23 Feb 2024 08:45:20 +0100
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
 <20240222145025.722515-3-maciej.fijalkowski@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240222145025.722515-3-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8478:EE_
X-MS-Office365-Filtering-Correlation-Id: 0182e34f-b02a-4bb5-e95e-08dc344366d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: giaWn4Mt+jGWyu94dBfsuKagSSMp1YlxSwkXl3JEyeO6wGd1cA6G6BPp6chapuwA13W7kZUzVXFittIT7Iro20P8w8lxmSf8Z7fP342kSWqYcXmfVDH12U+0fF1TPFnMSnvNQ3AGzxz3ouSHLreU8Yc91RJlocqA3lqCre66p7M/yWO9hyaXKlz9W2p2zqOoY7eOZebekCRa6Cfb2darfxaABtIsV1rsr/m9xJARJVhrawuOQ+Bx59wrkT+UnxoqYJZKqz/e1cFFCUDwvwGw2170UT5rC49aPtdfb5z6OkfVihUD+sw/Y8pZC4hfRJfRLohq3F/A0HSuRONsrQCKOSUdaLgEGv5XXsKB0o01Ebl/D3XunbN1sDJqYAV4CSBJhB8N6OyxQ5YgAJLjNz4abkEQsDUKGU5ztVy3aA2uYDrVwgyN7xpuVsPwQkChvdUAwjIu5M8PJSfkY2Vu7mbxaFOR4pAwMGyRH0b0xr3HknkGKwAn+57OeCg6/GjYg1esXV1EdoZM/XUR5P65bzprmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVhqUjEyNzk0eklVRndHekk3eFlienRIQ1dtU09uVWRiK0RYeUpwQytNTEp1?=
 =?utf-8?B?ZTdkWGgrRFZ6UzRYaE41ek5DaS93K3c2RlhwNGNIYW5qQWliRFFsaDljd1ZJ?=
 =?utf-8?B?RmJMKzJCQTdwejN0bGxKRXFQUWpnMHcxWUZ4dkQ5R2FvRDRiU09MNmM0WnA1?=
 =?utf-8?B?MDRTQWlOVk9SYnhzSVRGU3B1Nm1QNjArNzZvNG9UMndOWjQ4VVNOY0dweUEv?=
 =?utf-8?B?bkYzTFRwYlMyMFAzS3FhRG15MGZqYlovdHpEbk9xUGIzZE10S1RhNjFHZXBm?=
 =?utf-8?B?VDgyV2R5NE52YzNIZStmOFVYejlZMWdYeFcwRFZVYlhRVy85T2k5aUF5WStK?=
 =?utf-8?B?RjBJT0xZZ3lubDlDWUNxM2ZCUkpkOUlOQ0FxZVVmRGlwamkzaXBMQ0NucXA5?=
 =?utf-8?B?Q0xRWk9jaHRKSzVwZjNuMDdEUjBaVGxVeEJtN1RxWWx4Z1JCbUh2RlJqaUtu?=
 =?utf-8?B?cEpnaC94V2tVaERKdXRTUzVyY05GM0tzREl4U0huY0xkQXJ3Z3ZKL1JoVVZo?=
 =?utf-8?B?cWQ4ZndWSHpZM2JTclFQeFpQaGZISGt1RnRkMTNwakdKR0RpSjZjRFpaRWt3?=
 =?utf-8?B?NXBodGRhcnkvclNvUGdxaGJweEUxcy9CelZNQzVWbzNRYkF2L0Jzc0dpemFl?=
 =?utf-8?B?Y2piS3JDemVoS2tXSkFmTDdYRCtGQjlyVUFibkc1cm40c3ZCaUhXczVWVm5y?=
 =?utf-8?B?dVlFYkJGbkc5a0praDdqVlEyZzB6QnZXSEEwUkZEUDBDc2w2ZC9obTdwam1r?=
 =?utf-8?B?emNZVDlvUWJybTJ1MkRjWUpaZCsxR0t1TkVuaWdCMmhiNUpUZTMyV2ZKNHNX?=
 =?utf-8?B?cC9YMWFzM2tJY2JXeS9lWmdTcTh3enhGYVRQRk94ZGMrdiswa2Ywd3V5YU9i?=
 =?utf-8?B?MWEzY1JGVURHaXY1cTQvclIvRmZBZ0szbDdtNUhGdThoUUN0UWt2ZHVDMWZQ?=
 =?utf-8?B?L0VLNWM0VTdISVVrdFJGbGY4c1h6WFEzT3kvM3ZoNURibnNhcUFGcitnVms3?=
 =?utf-8?B?YnpuVXdqMjh4Qjl1R0tPalFjUkFUN3pua0RLNXIyWis2OVlzWDBmd2ZQNS9V?=
 =?utf-8?B?TU9GaklTejg0U0lsUi9EbTBWeDZaaFdmUnRsREJyeDFLV1pYbjhZd0NSL2p3?=
 =?utf-8?B?c2dyRm5NNjV3T3NWZ0hjdWN3TWZ2WjdCZkZPam8wUEQrTHFaWXpkTk96cWFu?=
 =?utf-8?B?UDZiNGREb0dKOFJUbm52b1JxTEUrZTVGTFVaWkJJYVdFWFk3WVAyUGhFcUc3?=
 =?utf-8?B?M05NWVorZnQwLzZsaW1MaUZ0cFV0VU9McUFNdnNKSWhIc0x3RjVxUG5rd0lj?=
 =?utf-8?B?M2dRSGFoWGh0Z29pSHEwbmZudEpIaDNrNFRJN0xaWGpGY3oyWkt1dDlFa3BJ?=
 =?utf-8?B?S2FFSEEwTTJTWkJjRHhpT2xVWThXUE1rU0hSNU1COVdBODl3TjhCVVVyNG1R?=
 =?utf-8?B?YWptbGc2bVV2dGpZMU9ZdTUvTHMyQXpxd1dKcnNMZVFDdWM4blQ4TG1yelpK?=
 =?utf-8?B?U2xsTXlyZkNyL0l3cTFDWnorL0FzRDFtUHB3bmdVNmc4NkxCYmJGeVNmR1ZV?=
 =?utf-8?B?ZGpBbGtkQ1Ura05zcHFMbGx5dmpvL1p2R2RHb3FFOGFCRkVSS1pFRnk0ejZD?=
 =?utf-8?B?WUhoSE1MVmZvSVlEczhmY2JEODRqWndpbzNDelhEQzZVQkZRVU1helZXZFRy?=
 =?utf-8?B?V0JwdjdpR1J2MXc3d0JlWWFjSHlrZU95bzhmRjhSOXdkckF0R0NFeGdhekJx?=
 =?utf-8?B?bzVuT3dmbSsrcGlCVFRkbnJMbG1JVXFBRzE0RDNvWXBiY01PUnNMcGZhY3F0?=
 =?utf-8?B?Z3d4cmdpaTNGR2R4UHJHanJweWVRZG1wNDRUV2JRaW5NTVV4V2FiTnZNTGFm?=
 =?utf-8?B?N0czekErQUswbnJmYzhINWdRK0RoNDdrOGREZWQ3dkFlQjdlODBUbHI1Q1FW?=
 =?utf-8?B?NlM2NlQxdzFCNFQ2OWpIUmdlZjdBWE44OGpwWU50djc4c3ZQaXB0WDBPSTI4?=
 =?utf-8?B?QVNqd3V2SGlhKzFaTk9xSXRrUlA0WVc5bitTa0phRGl3MFRyaWNsLzFob1l2?=
 =?utf-8?B?S2RnOUhGZ1FxWnF1WEVrbFFBS2tVVWR5ZWkrS0N5SjFMR0RPdDM0c1ZFWEVB?=
 =?utf-8?B?andyY1F2aHFtWUF0Z0MxcUFqeGg1d1ZoNFo5dkVieUdsdUhlZUdJaG9INTQx?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0182e34f-b02a-4bb5-e95e-08dc344366d6
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 07:45:27.4418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I3tF0kdWApqusN7Zw8bOALx90MSsJTbD6nzkmPW/+CPrnfKg9W92C6gHu8KOQqupICjl/A6MBvlx+GY8zKRoQCa5/W4ugmkAdibfoEN4gPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708674332; x=1740210332;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kb0oqpbRAErQkiNp4aYtmNpaRwQLZUqsZPX9kHXak3I=;
 b=iETpaIji1iQFNJw3AqI1cPF4ZLe5OuN4pmrHXyiEQ9qk/sY0w8YC35cj
 vSpcfeBEpGifQnjfVuOXdo1shvzvSaMs+QZqrXneIaEOTvo1v0Qpmjt80
 893JMNPsvNjBjA3t7dDPHN9ax9QTxHK9EUmOUMb3ytnqUKTkUzcwIEyG6
 bN4/SvViYl2sWSgmnm+qAzESjRlBDneE2nHZK1q+mtbM/Q61eSScK7+QL
 Kv3UquUSb0IvLVLtG7PPiy6VEQhW2FrXRU35o3/45RUqD2oQyfDOHmyqm
 ZZD8TlSzZSOkuQ2Cnb4nZFUmBBxZ48roZeZN4C56t44KphzrJlbZM+gLE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iETpaIji
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: avoid unnecessary
 devm_ usage
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/22/24 15:50, Maciej Fijalkowski wrote:
> 1. pcaps are free'd right after AQ routines are done, no need for
>     devm_'s
> 2. a test frame for loopback test in ethtool -t is destroyed at the end
>     of the test so we don't need devm_ here either.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c  | 23 +++++++++-----------
>   drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 ++--
>   2 files changed, 12 insertions(+), 15 deletions(-)
> 

nice, thank you!

BTW, we are committed to using Scope Based Resource Management [1] even
in the OOT driver, so you could consider that for future IWL submissions
:)

[1] https://lwn.net/Articles/934679/


I'm also happy with this as-is too, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
