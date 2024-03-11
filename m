Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D988781A5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 15:30:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C8F340650;
	Mon, 11 Mar 2024 14:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1F4pPpknmJ_l; Mon, 11 Mar 2024 14:30:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DC24408A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710167413;
	bh=qu/zLex09X5wwfa1NIn3BVcXn3vkY+HEGNT5lP6VYQM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R2jYEY+SeOOy4FJet1Nfw7DNoaFbGRMnx/egHAZdcSFJ4QsTeEitznrt2kC68i0DJ
	 cTsojPw04KyvYYvIaUfTAFlmi09xZZqdcQQYR1Qb9LrfVhYVdobmoNIrQT8sxFQeWG
	 96xJVFEzt5HBds/upg4ZewkFQtK1XDNPo8iLqEHAc5MCGgTLDZPNlyVF462czAKXFT
	 F/FzSNxaHUTispaI3oHssIEUVgj2AFpAdBY2AV0Es21mVK5HoZ0aMrGb2MYq3u9Obf
	 BCgNQy83l9pP02D/SbZDjFDuJokhzinXTfaC0eDYgK7NuI2cmTJ6GQ79/ZkYAILjxx
	 75Q9bioBrVsrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DC24408A5;
	Mon, 11 Mar 2024 14:30:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35EFC1BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 14:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21C0A40650
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 14:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 79ZmaQIyGhNO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 14:30:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EEDC84086E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEDC84086E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEDC84086E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 14:30:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="5010344"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; 
   d="scan'208";a="5010344"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 07:30:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="15753410"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 07:30:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 07:30:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 07:30:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 07:30:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 07:30:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5JHN8JnyA3ci4F/mn3pqrKwMRyznkblLAjIIVNMNk8Dm8BOqMBHzq88mv1rvx0DL0BK2btRdsw02UxPBynPNvLbuE+ya8e7KomHnyS0dEgS/rylIeOwNygoYTDhC+nnAML1yrX8TRHIp+wl2Hyx7FrFc2jdd30xLqmDSgUklCJ9DbNWE6ooxgKv3Ky9zjO2j1pDZX7Bcufwe8isLDQwKIce+9Vg+A0BIKTxBDQqB5QR+dTqFGljJpTC72dL1lRNIFSEkVGeEDyGaoLimmpI+sOr4O0VyYQ+7hpq1M8lJLsY2ATbAkkqoGdMOjCLD8gaRd7co7rLd33ETUvwbs8b7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qu/zLex09X5wwfa1NIn3BVcXn3vkY+HEGNT5lP6VYQM=;
 b=HMyPUOSETrEsSifpqa5Dp8heLmT5Y4ADUUt4TDrdxtVqhg20+Flvbk1AMkNqCZPJya+cdNMsA+P1xPSvLi5A80a+eaVjt/PfizpnQhXJyuagD1IgtreMSASDGtT1yv9fj7s5hND8+C4OK3takyjg/Oi95/bZyH4rE/GzxKOIxvpA3c4WGQBT03837hwbiCeW4gsMC7f5wuMJRmS8KmVHMLhhie8j/UMY/qH4rteV/BscD2PUr0/2iCEgJE4GS0bjBh6BqqoOHA18YMQ1OMFhTdk5cr05h+CqXNc0vYXIwaW2IozGFefktFu/7Qb61zSjjZ/5PdgswM2RXcoZjPuvbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by IA1PR11MB6393.namprd11.prod.outlook.com (2603:10b6:208:3ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 14:30:02 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688%6]) with mapi id 15.20.7386.015; Mon, 11 Mar 2024
 14:30:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: fix vf may be used
 uninitialized in this function warning
Thread-Index: AQHac6gjzjVcHwbduUiRa96lGue7T7EylY6AgAACYQA=
Date: Mon, 11 Mar 2024 14:30:02 +0000
Message-ID: <SJ0PR11MB586649F8417F261993A547CFE5242@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240311112503.19768-1-aleksandr.loktionov@intel.com>
 <e7b69483-24d6-44a0-af00-fb796ba07dff@molgen.mpg.de>
In-Reply-To: <e7b69483-24d6-44a0-af00-fb796ba07dff@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|IA1PR11MB6393:EE_
x-ms-office365-filtering-correlation-id: 11135a5e-ed96-431e-80c6-08dc41d7bcf5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RfXBLVMql3lzwPqg7+a4+qyI7SPjAZdEH5Fz4PzWWt9s8Q7HR9FIPzuj7oihZyKJXrAzfeQNd7wwbQxpJIbAbVTn0PIsiKOTuaq5i7Y6wa+ngjNRBOuXOAyrDqx1esTdciHNEBzKLFvD1fUKrjLHn9qcKuSI1SaklDO+0R3iATNSu9AnlYL1R4jAuZO/3EY81oI16EufICXRt6XSPiEG0eK186ZkDXTugTaSau1AIXM34iSNuWuc5CWVAAKHgV5CQ2lgIL7o555xsuZsnkI7bwDyuH+3buh/TOAnf6nGqeBmhd67FTmBEjSg8p2I3LVQxPUsFYbVSC4rpoWntL2YLBmVaMSgk1AHkcuR6kFJ2AyXZ5aPEYb1DFieybKZ60k15bRIf8VNqSDTmhR2l7ab3nScdUD23dMo47S1Zb6e70X2e9c8isk9XYyvTRJav3LwduvrCKR1QZoWhBamttvF9ZCrXkyiIT1Ryq++CaQL29k0MAG5Ra2OsusZNECE/tY0hcjsbnArrh8KEfMdh4SMq18XVEtp1spc1U9PjtGiTAc2YG7t7BWOhjX5g4R+FJ38T+xLNFmVjrRQEfjBt8Wo+TMjeIQ0nSNQ19vtD2Vntfd4ff+jHNJ0GIQWKxhGSvJADoNK9WnFcwUe/h6i7RVogsAGXxIIGaAecvVmJNvnPuGIGcwU4B8qk5qvMjMFAPjnvVKpkewNqIN+aBU7cngXAUW8nS6Q4NlFzt42pSLHfkY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVNEZFhrdkZ0S1JzMWlKN1B1bkcraU96bUhUQ0N5L0R4NmhHOHFJaG1OWmxw?=
 =?utf-8?B?YXNzYmJBcWp0enRvMkNhdkxEaHNZcTdFZGFZVDdhSkFHVUFPNkNKUDFNMEFx?=
 =?utf-8?B?WUQ2cnV4MXRkZEg5cENETWNQMFcyMnpUZXZOU2hlSjNFQmd3aVRWUkFjT0l5?=
 =?utf-8?B?MnA0RytnYmNYNkcwa1IrcmZWektuakUrRzAvTUNob3l5MW1FbWQ0NW5YalN1?=
 =?utf-8?B?MmtIOHVGUG42aUZ6TDN4KzZ5SFpIOEQ0ZHY5TmFoc0NqYmh0RldpSmtDZkd4?=
 =?utf-8?B?MW9PREwvNVp5TU1OdUFaMFYyamd5SWxPWkU4NmNidmJSdVlkSi9FdWVBYWtT?=
 =?utf-8?B?NW11OE84QnBGN09MOHNrNGN1c1RXempXeGxHNFpFT3l1ZFpGR2FZWTNtMWlw?=
 =?utf-8?B?emwxU1N5NDZDTVZTY0w0Q21DUUFVVUJyM0QxMXZKRkozSkZoRk5iSUdCQVky?=
 =?utf-8?B?TWg2ak1NSUlsNTMzQ0IyWFVHaWdqRTZOVXFzazBTTC9XSHk2MEtkZzEwZkJB?=
 =?utf-8?B?VnB3bllmdmpVWENTU2V4dkExK2NiUHRZV0VranNuSkEwNzBkL3VvQkU5aUo2?=
 =?utf-8?B?dk1KNVJlcVRQUUxFTFpvZDFKZUw1L0tOMFJPUnNDT2F1SndIcDY2enIvdjFG?=
 =?utf-8?B?TWdWcFdDbGZFYThxZzdPMHlmMGxubkpyMFRUd3hGNGJQZi8yVXdYdmRETFBR?=
 =?utf-8?B?Q0JsM1lCYktldVUvdHNKR043S0M3MHdOMlFFOFJPSnAwcit3VjBTcnpWMHBp?=
 =?utf-8?B?NzRreVZQa2k0RzlBTzFvSW5KeGl6NjNTdzMzVE5yaEpJdGpZZUdnQWNtdWpG?=
 =?utf-8?B?cUdMU3lpUVdpak1yblY5SlRYVXNYRHMrZWdzd2VQcXZULzFKMGV3OEdWRWFr?=
 =?utf-8?B?VFFaNllrdkpsWGlSajREbE1aZHNhSDlQeWU1VXdMWVc3ZWJlakVmdE1POVQ0?=
 =?utf-8?B?eEFjS0FaN0pHM3pZc3lsNWVHN2RNeHpjTlpBYzFORzVYajA3Rm5FbGxGeGJp?=
 =?utf-8?B?SWxuYUNqU0hRRFplMFByQjdnODdVNWVSamdzTXVPbkdkMWpMQjZqN1h5TGNq?=
 =?utf-8?B?cFYxWVR1K1pXczVtZ0tJZkpnTDNGMllLUnQrSXpYbmtqWkVGUS9BTCtVMjdU?=
 =?utf-8?B?bDJkSkZOMFJXaXRwVjVEYnFsSjJ4RTBxOXJrNkk3K3R3OFRzV2JFTmNFaTVj?=
 =?utf-8?B?NUxPMkVhVTU3SnhaSUt3TDhiTlVDSW9waDZ1bm1WcmIzeHorOWRNZ2Y5WXI2?=
 =?utf-8?B?REZtYTNMaDRXWEJBTTNmZHdjUVVlTWZqSzZrdExxcURydXYwVEJrS0kvQ2h5?=
 =?utf-8?B?RmpBbXdMZ1F1elM2ZWxGM3dpQmpzeVRrekJ1RWpScmNpdUlnb255NXVlcGJn?=
 =?utf-8?B?Sm5odVhVcEczaGR1Umw1RHJ6QkVPTS92WWIwTGJyN2JrSSs1Zy90SXBJdGl6?=
 =?utf-8?B?Q2RJUmFXa0owY0ViRHBoQ3NGbWFhRFhuOEMrRFU4RnNsVm9IMG9uQVpjQmpw?=
 =?utf-8?B?OUxVdk9NQmRvTWVnYjI5NVg4NDlYWkd4cTFna2RkYWJiVGRqUmJZL013bzdk?=
 =?utf-8?B?WDFuZDg3Y09hRVZ6aUErVUkzLzhPbGVQRVZRTDFWL09hZytpMU93Qkk5NDNY?=
 =?utf-8?B?K0dMallnNTdkSmRsV2o1d3BYZ0lRL2ZROGZnK3kvc1lCZFFiWS9zOFJHRXY1?=
 =?utf-8?B?TWVCMkJZNUdqVElscHFCTWFMNE9YZXZIN1NMbjI2V3Y1NUIvWmxUc3JiUVM5?=
 =?utf-8?B?VVMxeGVXMUpQRzM5TDhXZ0RZZFVxT1RKWFJuT2RVSGc1UG9KcjF1UVZ6RUVO?=
 =?utf-8?B?VjVCMmw5dGdhQVZaQ1Zaem54a1Bxc2N4MjM0SXNWNWJHYk9qMEZ1R0xoS29i?=
 =?utf-8?B?bGlrbVVhU2FUNndhNDV0OFBHejRoMWdvUUtjR1R4cDhaeXFQVFdyTWRXTkdE?=
 =?utf-8?B?elI1cGhZQlJ0V3JNaHpyWnRxeHRLVlJHZWhtc0p6SEsyWmxxMHJIdnBiNWRD?=
 =?utf-8?B?ekRWeVJKL0JHU1NMQkN1NWR5QStKSHFzZUpjeHFXSXdpOWpoR0hkbE1pc2p4?=
 =?utf-8?B?NG5mSWUxR3FJaWx6Yk5HTmJQYXQxRXVLdkgyaXNtbERyNkpyUWU1NDBMTU9O?=
 =?utf-8?B?bmlkSndEd2VoK09YQy9SWFJYRFNYTk9uUlovWUNvWG8wWEkwQmsvVVMvV2RE?=
 =?utf-8?B?Vmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11135a5e-ed96-431e-80c6-08dc41d7bcf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2024 14:30:02.3640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jQHZcSkv7RVpZfbXlXDQ0EmzrlFo9csqcbkJMm1cPfAE15J/7wueNF+09z2Wik8IfN2rgpqM9Bk7E3asyMSkfjd8JaNsNz1t2xtgB9jBKQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6393
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710167410; x=1741703410;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qu/zLex09X5wwfa1NIn3BVcXn3vkY+HEGNT5lP6VYQM=;
 b=gLfL191R0MxtNjR6fdVRqfJhzAD5O3wGGnvvt5LU3DYfWyyiyJw8jWGy
 d3SGtQaPSp0yT8WTH54XkYluE6/E0YIyU4QF/XMVjZGZloe4zGK+ZkM+7
 tuGIms6XQ9zfpRhpUN5uFndnY7lnXV24d0w+fuV972gHLEulCo7iy4JLg
 zHgAjkzHamSd0Vix0Ie0uSiS9r6lH6MWqAlwOjwCWnKqAXS4P6Hn7H38t
 JeMyY9GDWwbWgHvJcdy0lNLO0tvkvrpDSW7KwKBlt/Zx5mDsxCUqms/lr
 18McoUIeSu6/eUDxZmqPi1WwoqCEg5vWc/w9CYvBfu4i8ng7Y6NuiEdVu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gLfL191R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix vf may be used
 uninitialized in this function warning
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogTW9uZGF5LCBNYXJjaCAxMSwgMjAyNCAzOjE1
IFBNDQo+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgTmd1eWVuLCBB
bnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXRd
IGk0MGU6IGZpeCB2ZiBtYXkgYmUNCj4gdXNlZCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rp
b24gd2FybmluZw0KPiANCj4gRGVhciBBbGVrc2FuZHIsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZv
ciB0aGUgcGF0Y2guDQo+IA0KPiANCj4gQW0gMTEuMDMuMjQgdW0gMTI6MjUgc2NocmllYiBBbGVr
c2FuZHIgTG9rdGlvbm92Og0KPiA+IFRvIGZpeCB0aGUgcmVncmVzc2lvbiBpbnRyb2R1Y2VkIGJ5
IDUyNDI0Zjk3NGJjNSBjb21taXQsIHdjaGljaA0KPiBjYXVzZXMNCj4gDQo+IDEuICBieSBjb21t
aXQgNTI0MjRmOTc0YmM1DQo+IDIuICBzL3djaGljaC93aGljaC8NCj4gDQo+ID4gc2VydmVycyBo
YW5nIGluIHZlcnkgaGFyZCB0byByZXByb2R1Y2UgY29uZGl0aW9ucyB3aXRoIHJlc2V0cw0KPiBy
YWNlcy4NCj4gDQo+IElzIHRoZXJlIGEgcHVibGljIHJlcG9ydCBmb3IgdGhpcz8NCg0KTm8gcHVi
bGljIHJlcG9ydHMsIHNvcnJ5Lg0KDQo+ID4gUmVtb3ZlIHJlZHVuZGFudCAidiIgdmFyaWFibGUg
YW5kIGl0ZXJhdGUgdmlhIHNpbmdsZSBWRiBwb2ludGVyDQo+IGFjcm9zcw0KPiA+IHdob2xlIGZ1
bmN0aW9uIGluc3RlYWQgdG8gZ3VhcmFudGVlIFZGIHBvaW50ZXIgdmFsaWRpdHkuDQo+IA0KPiBD
b3VsZCB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBob3cgdGhlIFZGIHBvaW50ZXIgY3VycmVudGx5IGdl
dHMNCj4gaW52YWxpZD8NCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQo+IA0K
VXNpbmcgdHdvIHNvdXJjZXMgZm9yIHRoZSBpbmZvcm1hdGlvbiBpcyB0aGUgcm9vdCBjYXVzZS4N
CkluIHRoaXMgZnVuY3Rpb24gYmVmb3JlIHRoZSBmaXggYnVtcGluZyB2IGRpZG4ndCBtZWFuIGJ1
bXBpbmcgdmYgcG9pbnRlci4gQnV0IHRoZSBjb2RlIHVzZWQgdGhpcyB2YXJpYWJsZXMgaW50ZXJj
aGFuZ2VhYmx5LCBzbyBzdGFsZWQgdmYgY291bGQgcG9pbnQgdG8gZGlmZmVyZW50L25vdCBpbnRl
bmRlZCB2Zi4NCg0KPiANCj4gPiBGaXhlczogNTI0MjRmOTc0YmM1ICgiaTQwZTogRml4IFZGIGhh
bmcgd2hlbiByZXNldCBpcyB0cmlnZ2VyZWQNCj4gb24NCj4gPiBhbm90aGVyIFZGIikNCj4gPiBT
aWduZWQtb2ZmLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92DQo+IDxhbGVrc2FuZHIubG9rdGlvbm92
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIC4uLi9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
dmlydGNobmxfcGYuYyAgICB8IDM0ICsrKysrKysrKy0tLQ0KPiAtLS0tLS0tDQo+ID4gICAxIGZp
bGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5s
X3BmLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hu
bF9wZi5jDQo+ID4gaW5kZXggYjM0YzcxNy4uZjdjNDY1NCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jDQo+ID4g
QEAgLTE2MjgsMTA1ICsxNjI4LDEwMyBAQCBib29sIGk0MGVfcmVzZXRfYWxsX3ZmcyhzdHJ1Y3Qg
aTQwZV9wZg0KPiAqcGYsIGJvb2wgZmxyKQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBpNDBlX2h3
ICpodyA9ICZwZi0+aHc7DQo+ID4gICAJc3RydWN0IGk0MGVfdmYgKnZmOw0KPiA+IC0JaW50IGks
IHY7DQo+ID4gICAJdTMyIHJlZzsNCj4gPiArCWludCBpOw0KPiA+DQo+ID4gICAJLyogSWYgd2Ug
ZG9uJ3QgaGF2ZSBhbnkgVkZzLCB0aGVuIHRoZXJlIGlzIG5vdGhpbmcgdG8gcmVzZXQNCj4gKi8N
Cj4gPiAgIAlpZiAoIXBmLT5udW1fYWxsb2NfdmZzKQ0KPiA+ICAgCQlyZXR1cm4gZmFsc2U7DQo+
ID4NCj4gPiAgIAkvKiBJZiBWRnMgaGF2ZSBiZWVuIGRpc2FibGVkLCB0aGVyZSBpcyBubyBuZWVk
IHRvIHJlc2V0ICovDQo+ID4gICAJaWYgKHRlc3RfYW5kX3NldF9iaXQoX19JNDBFX1ZGX0RJU0FC
TEUsIHBmLT5zdGF0ZSkpDQo+ID4gICAJCXJldHVybiBmYWxzZTsNCj4gPg0KPiA+ICAgCS8qIEJl
Z2luIHJlc2V0IG9uIGFsbCBWRnMgYXQgb25jZSAqLw0KPiA+IC0JZm9yICh2ID0gMDsgdiA8IHBm
LT5udW1fYWxsb2NfdmZzOyB2KyspIHsNCj4gPiAtCQl2ZiA9ICZwZi0+dmZbdl07DQo+ID4gKwlm
b3IgKHZmID0gJnBmLT52ZlswXTsgdmYgPCAmcGYtPnZmW3BmLT5udW1fYWxsb2NfdmZzXTsgKyt2
ZikNCj4gew0KPiANCj4gU2hvdWxkbuKAmXQgcG9pbnRlciBhcml0aG1ldGljIGJlIGF2b2lkZWQ/
DQo+IA0KPiA+ICAgCQkvKiBJZiBWRiBpcyBiZWluZyByZXNldCBubyBuZWVkIHRvIHRyaWdnZXIg
cmVzZXQgYWdhaW4NCj4gKi8NCj4gPiAgIAkJaWYgKCF0ZXN0X2JpdChJNDBFX1ZGX1NUQVRFX1JF
U0VUVElORywgJnZmLT52Zl9zdGF0ZXMpKQ0KPiA+IC0JCQlpNDBlX3RyaWdnZXJfdmZfcmVzZXQo
JnBmLT52Zlt2XSwgZmxyKTsNCj4gPiArCQkJaTQwZV90cmlnZ2VyX3ZmX3Jlc2V0KHZmLCBmbHIp
Ow0KPiA+ICAgCX0NCj4gPg0KPiA+ICAgCS8qIEhXIHJlcXVpcmVzIHNvbWUgdGltZSB0byBtYWtl
IHN1cmUgaXQgY2FuIGZsdXNoIHRoZSBGSUZPDQo+IGZvciBhIFZGDQo+ID4gICAJICogd2hlbiBp
dCByZXNldHMgaXQuIFBvbGwgdGhlIFZQR0VOX1ZGUlNUQVQgcmVnaXN0ZXIgZm9yDQo+IGVhY2gg
VkYgaW4NCj4gPiAgIAkgKiBzZXF1ZW5jZSB0byBtYWtlIHN1cmUgdGhhdCBpdCBoYXMgY29tcGxl
dGVkLiBXZSdsbCBrZWVwDQo+IHRyYWNrIG9mDQo+ID4gICAJICogdGhlIFZGcyB1c2luZyBhIHNp
bXBsZSBpdGVyYXRvciB0aGF0IGluY3JlbWVudHMgb25jZSB0aGF0DQo+IFZGIGhhcw0KPiA+ICAg
CSAqIGZpbmlzaGVkIHJlc2V0dGluZy4NCj4gPiAgIAkgKi8NCj4gPiAtCWZvciAoaSA9IDAsIHYg
PSAwOyBpIDwgMTAgJiYgdiA8IHBmLT5udW1fYWxsb2NfdmZzOyBpKyspIHsNCj4gPiArCWZvciAo
aSA9IDAsIHZmID0gJnBmLT52ZlswXTsgaSA8IDEwICYmIHZmIDwNCj4gPiArJnBmLT52ZltwZi0+
bnVtX2FsbG9jX3Zmc107ICsraSkgew0KPiA+ICAgCQl1c2xlZXBfcmFuZ2UoMTAwMDAsIDIwMDAw
KTsNCj4gPg0KPiA+ICAgCQkvKiBDaGVjayBlYWNoIFZGIGluIHNlcXVlbmNlLCBiZWdpbm5pbmcg
d2l0aCB0aGUgVkYgdG8NCj4gZmFpbA0KPiA+ICAgCQkgKiB0aGUgcHJldmlvdXMgY2hlY2suDQo+
ID4gICAJCSAqLw0KPiA+IC0JCXdoaWxlICh2IDwgcGYtPm51bV9hbGxvY192ZnMpIHsNCj4gPiAt
CQkJdmYgPSAmcGYtPnZmW3ZdOw0KPiA+ICsJCXdoaWxlICh2ZiA8ICZwZi0+dmZbcGYtPm51bV9h
bGxvY192ZnNdKSB7DQo+ID4gICAJCQlpZiAoIXRlc3RfYml0KEk0MEVfVkZfU1RBVEVfUkVTRVRU
SU5HLCAmdmYtDQo+ID52Zl9zdGF0ZXMpKSB7DQo+ID4gICAJCQkJcmVnID0gcmQzMihodywgSTQw
RV9WUEdFTl9WRlJTVEFUKHZmLQ0KPiA+dmZfaWQpKTsNCj4gPiAgIAkJCQlpZiAoIShyZWcgJiBJ
NDBFX1ZQR0VOX1ZGUlNUQVRfVkZSRF9NQVNLKSkNCj4gPiAgIAkJCQkJYnJlYWs7DQo+ID4gICAJ
CQl9DQo+ID4NCj4gPiAgIAkJCS8qIElmIHRoZSBjdXJyZW50IFZGIGhhcyBmaW5pc2hlZCByZXNl
dHRpbmcsIG1vdmUNCj4gb24NCj4gPiAgIAkJCSAqIHRvIHRoZSBuZXh0IFZGIGluIHNlcXVlbmNl
Lg0KPiA+ICAgCQkJICovDQo+ID4gLQkJCXYrKzsNCj4gPiArCQkJKyt2ZjsNCj4gPiAgIAkJfQ0K
PiA+ICAgCX0NCj4gPg0KPiA+ICAgCWlmIChmbHIpDQo+ID4gICAJCXVzbGVlcF9yYW5nZSgxMDAw
MCwgMjAwMDApOw0KPiA+DQo+ID4gICAJLyogRGlzcGxheSBhIHdhcm5pbmcgaWYgYXQgbGVhc3Qg
b25lIFZGIGRpZG4ndCBtYW5hZ2UgdG8NCj4gcmVzZXQgaW4NCj4gPiAgIAkgKiB0aW1lLCBidXQg
Y29udGludWUgb24gd2l0aCB0aGUgb3BlcmF0aW9uLg0KPiA+ICAgCSAqLw0KPiA+IC0JaWYgKHYg
PCBwZi0+bnVtX2FsbG9jX3ZmcykNCj4gPiArCWlmICh2ZiA8ICZwZi0+dmZbcGYtPm51bV9hbGxv
Y192ZnNdKQ0KPiA+ICAgCQlkZXZfZXJyKCZwZi0+cGRldi0+ZGV2LCAiVkYgcmVzZXQgY2hlY2sg
dGltZW91dCBvbiBWRg0KPiAlZFxuIiwNCj4gPiAtCQkJcGYtPnZmW3ZdLnZmX2lkKTsNCj4gPiAr
CQkJdmYtPnZmX2lkKTsNCj4gPiAgIAl1c2xlZXBfcmFuZ2UoMTAwMDAsIDIwMDAwKTsNCj4gPg0K
PiA+ICAgCS8qIEJlZ2luIGRpc2FibGluZyBhbGwgdGhlIHJpbmdzIGFzc29jaWF0ZWQgd2l0aCBW
RnMsIGJ1dCBkbw0KPiBub3Qgd2FpdA0KPiA+ICAgCSAqIGJldHdlZW4gZWFjaCBWRi4NCj4gPiAg
IAkgKi8NCj4gPiAtCWZvciAodiA9IDA7IHYgPCBwZi0+bnVtX2FsbG9jX3ZmczsgdisrKSB7DQo+
ID4gKwlmb3IgKHZmID0gJnBmLT52ZlswXTsgdmYgPCAmcGYtPnZmW3BmLT5udW1fYWxsb2NfdmZz
XTsgKyt2ZikNCj4gew0KPiA+ICAgCQkvKiBPbiBpbml0aWFsIHJlc2V0LCB3ZSBkb24ndCBoYXZl
IGFueSBxdWV1ZXMgdG8NCj4gZGlzYWJsZSAqLw0KPiA+IC0JCWlmIChwZi0+dmZbdl0ubGFuX3Zz
aV9pZHggPT0gMCkNCj4gPiArCQlpZiAodmYtPmxhbl92c2lfaWR4ID09IDApDQo+ID4gICAJCQlj
b250aW51ZTsNCj4gPg0KPiA+ICAgCQkvKiBJZiBWRiBpcyByZXNldCBpbiBhbm90aGVyIHRocmVh
ZCBqdXN0IGNvbnRpbnVlICovDQo+ID4gICAJCWlmICh0ZXN0X2JpdChJNDBFX1ZGX1NUQVRFX1JF
U0VUVElORywgJnZmLT52Zl9zdGF0ZXMpKQ0KPiA+ICAgCQkJY29udGludWU7DQo+ID4NCj4gPiAt
CQlpNDBlX3ZzaV9zdG9wX3JpbmdzX25vX3dhaXQocGYtPnZzaVtwZi0NCj4gPnZmW3ZdLmxhbl92
c2lfaWR4XSk7DQo+ID4gKwkJaTQwZV92c2lfc3RvcF9yaW5nc19ub193YWl0KHBmLT52c2lbdmYt
Pmxhbl92c2lfaWR4XSk7DQo+ID4gICAJfQ0KPiA+DQo+ID4gICAJLyogTm93IHRoYXQgd2UndmUg
bm90aWZpZWQgSFcgdG8gZGlzYWJsZSBhbGwgb2YgdGhlIFZGIHJpbmdzLA0KPiB3YWl0DQo+ID4g
ICAJICogdW50aWwgdGhleSBmaW5pc2guDQo+ID4gICAJICovDQo+ID4gLQlmb3IgKHYgPSAwOyB2
IDwgcGYtPm51bV9hbGxvY192ZnM7IHYrKykgew0KPiA+ICsJZm9yICh2ZiA9ICZwZi0+dmZbMF07
IHZmIDwgJnBmLT52ZltwZi0+bnVtX2FsbG9jX3Zmc107ICsrdmYpDQo+IHsNCj4gPiAgIAkJLyog
T24gaW5pdGlhbCByZXNldCwgd2UgZG9uJ3QgaGF2ZSBhbnkgcXVldWVzIHRvDQo+IGRpc2FibGUg
Ki8NCj4gPiAtCQlpZiAocGYtPnZmW3ZdLmxhbl92c2lfaWR4ID09IDApDQo+ID4gKwkJaWYgKHZm
LT5sYW5fdnNpX2lkeCA9PSAwKQ0KPiA+ICAgCQkJY29udGludWU7DQo+ID4NCj4gPiAgIAkJLyog
SWYgVkYgaXMgcmVzZXQgaW4gYW5vdGhlciB0aHJlYWQganVzdCBjb250aW51ZSAqLw0KPiA+ICAg
CQlpZiAodGVzdF9iaXQoSTQwRV9WRl9TVEFURV9SRVNFVFRJTkcsICZ2Zi0+dmZfc3RhdGVzKSkN
Cj4gPiAgIAkJCWNvbnRpbnVlOw0KPiA+DQo+ID4gLQkJaTQwZV92c2lfd2FpdF9xdWV1ZXNfZGlz
YWJsZWQocGYtPnZzaVtwZi0NCj4gPnZmW3ZdLmxhbl92c2lfaWR4XSk7DQo+ID4gKwkJaTQwZV92
c2lfd2FpdF9xdWV1ZXNfZGlzYWJsZWQocGYtPnZzaVt2Zi0NCj4gPmxhbl92c2lfaWR4XSk7DQo+
ID4gICAJfQ0KPiA+DQo+ID4gICAJLyogSHcgbWF5IG5lZWQgdXAgdG8gNTBtcyB0byBmaW5pc2gg
ZGlzYWJsaW5nIHRoZSBSWCBxdWV1ZXMuDQo+IFdlDQo+ID4gICAJICogbWluaW1pemUgdGhlIHdh
aXQgYnkgZGVsYXlpbmcgb25seSBvbmNlIGZvciBhbGwgVkZzLg0KPiA+ICAgCSAqLw0KPiA+ICAg
CW1kZWxheSg1MCk7DQo+ID4NCj4gPiAgIAkvKiBGaW5pc2ggdGhlIHJlc2V0IG9uIGVhY2ggVkYg
Ki8NCj4gPiAtCWZvciAodiA9IDA7IHYgPCBwZi0+bnVtX2FsbG9jX3ZmczsgdisrKSB7DQo+ID4g
Kwlmb3IgKHZmID0gJnBmLT52ZlswXTsgdmYgPCAmcGYtPnZmW3BmLT5udW1fYWxsb2NfdmZzXTsg
Kyt2ZikNCj4gew0KPiA+ICAgCQkvKiBJZiBWRiBpcyByZXNldCBpbiBhbm90aGVyIHRocmVhZCBq
dXN0IGNvbnRpbnVlICovDQo+ID4gICAJCWlmICh0ZXN0X2JpdChJNDBFX1ZGX1NUQVRFX1JFU0VU
VElORywgJnZmLT52Zl9zdGF0ZXMpKQ0KPiA+ICAgCQkJY29udGludWU7DQo+ID4NCj4gPiAtCQlp
NDBlX2NsZWFudXBfcmVzZXRfdmYoJnBmLT52Zlt2XSk7DQo+ID4gKwkJaTQwZV9jbGVhbnVwX3Jl
c2V0X3ZmKHZmKTsNCj4gPiAgIAl9DQo+ID4NCj4gPiAgIAlpNDBlX2ZsdXNoKGh3KTsNCg==
