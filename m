Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EFE89BB49
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 11:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 667F940B11;
	Mon,  8 Apr 2024 09:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rDJ0lEyCEYae; Mon,  8 Apr 2024 09:11:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97C3D40B20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712567518;
	bh=HjdQt2OnRIWrvtnENStr6MOwFJj8HSTtifp7HhxPjR0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vI7vaUxDE4Iikp/+G9ybEiyhjJdGcuM60C4ILR+EG2TgrnZbdw6QFEr18sI72WDA6
	 GnCFM+nOkGwAWpK0BOnmXZctIBI5S2qusrxp4WtJadQilaAqQh18c4/Q0CnkmzVY2H
	 rA0t5bEebQ65kuxaUZ/Tg2fryG5KaiSr+Jj9vnc3NvkxhLNYujKdg56nDzJ5yOLoh3
	 yAbj7qSi9gpTYm4/pjJAcueYvssqoJpOkjBZp1fTlmD/EDiJdLD2IDXXZZWNGkJesa
	 e/trs7c/q/2I5oCeg7V6ZFOfHJABigSJ+k9wAGlFio0sClzv9/15vYKvYGR8r8Gter
	 yIElnIGPQrNwA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97C3D40B20;
	Mon,  8 Apr 2024 09:11:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF2E31BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AA5840B10
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:11:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ggw_ng33zlIe for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 09:11:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 288BC400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 288BC400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 288BC400BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:11:50 +0000 (UTC)
X-CSE-ConnectionGUID: WMsWTf8aSs+wpIGgxgMhRA==
X-CSE-MsgGUID: 2dt8/bksScCyWmdrUTalnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7999246"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7999246"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:11:43 -0700
X-CSE-ConnectionGUID: v7uKLOpSTaCrIIuL/q4eHw==
X-CSE-MsgGUID: OXphSOVISfyBX1FKeWs8uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19735203"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 02:11:42 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 02:11:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 02:11:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 02:11:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mf6VYiaenC9Yhr0WmQmZM5hdxgaU41cYEbgWqnBv4z16i8d4Z5uyruhF9skBP6YbhuiXbPRcVX6THcMDCzURNCKXFtlvImAcZY2QlKUWjmuFRHDrFEf0Db12ye0CFm4fo1SserwQhfT0LffDnxx5TuyO1r9juz74dhVTSRcIEiUFSJsAYVBiMBfz2QoJsBSLJ+yGjPCzGubQ4ih8gtmResN17IHyPIdqYao2z48ZDL93x9qjOwHWlg0kj9084YonmDsIBv2V72CD5dpATK527Ze81Y5B/VuFvIszXhkBdyg+6G+KuqKhuVv02UaB8sTuevZDp2Y0c0KD35dX+Kz51Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HjdQt2OnRIWrvtnENStr6MOwFJj8HSTtifp7HhxPjR0=;
 b=W+NaSi8zhskDgDC6HvgJhHFOK4kdbYNbMHdErJ6cjHbtfmHG/XcNpIFcPniZV0eISy8WnTehwT0eA0e+BMe7AfyLNV2hUZG17Fz0FXg7kqma9LNR6MGExCM26zMIEG1AL1M2HKb+4ufxwR2WJqUlX+by/mndzXDpnkerl6CiCZXqY+wfJN0kIZ8gXWP3mIGgVglCEBF1iu/xs8Gu5M6N0J6/gF217WlwqmlCagPn/nspC1Guuo/pAsSb/LQheqGEWVCPf1OBna4gg3RCZuM3C2YyLtufxEQYB04X46QGXpiUUlYUnd8y5Fv7zh5seONM2t4Q3NvlxF/6d90GTK3HtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ2PR11MB8321.namprd11.prod.outlook.com (2603:10b6:a03:546::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Mon, 8 Apr
 2024 09:11:38 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 09:11:35 +0000
Message-ID: <bebf1a1a-e4ec-4ec0-9d01-57a51bcf14ca@intel.com>
Date: Mon, 8 Apr 2024 11:09:44 +0200
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <45eb2bf1-e7b0-4045-82b3-93b9f81b7988@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <45eb2bf1-e7b0-4045-82b3-93b9f81b7988@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::16) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ2PR11MB8321:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x3p6EuscLA6zHh6bP0Hth3a42p4XKBjBff4C/xhvSxrCrI6BDuD5kSHptep6xLn1OfY/fcolsWOOIIJmpCr+lT+QnXQwpxITePHF6T+xCIf0/smi15AlVijEVDFyP/tH/tnkoiaxTOf53XlItpjxczEsK6ZWFkT5x+1sW99T7gIbX5el8Y6CEzkRSVFW7rdEKDO9YRBEBC3394PE/N1HS8XIFy9XF+gJVFWJZOkUfucPmCeJcn2xgFuQK/5AsTMREf/Q9UJCapuvLYpLJrNH+aXWFwXmEGRTPz/zu4Ge6F/+yqrZQAR6+2jcq6mbWGZBrD/7T7raoshLDHKk9ROIEDJ82CroHPOzbU3SjLskPfH/KJr+WgnIAxNFnkZ0fhifbb2tjh7zup11P+3QBiV3z4TED7Tj3IKtXZhGve6dcivw5dfBJY0xb1wBzBTxFOjRuRiraUKF1csVb6vg4BRKUPYsRGywXHxiDXV6GUAjLLvd+vLTuIRUUcYpKa2Vpagtjt8tVLU26l57rAqD4OaYZ60+IF/V7tvheOn9rw0N846eFDM7Dv+3E3NkNJgQ8pWzNA5OLff/YV+AOpZWdIBiyxJygGqo4uUAbixZwSY2/pcv+sAbT0Kj6kl+Vs3g/aA1PBPOH226wFqxZnOZXkzMQYi+w0JFI2WB+za0rh9mH0o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(7416005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzB5T0hWQ1NwbUVBbXFVWXVuNnZVaG5XYzIxTHB4b1hWNGJ6YXRhOGJObWdh?=
 =?utf-8?B?Tm9rRVIrckN6TlA4UmxjLzBtUlFHeER0ZEt5dHVsdEdlK3RjWXhPOEhNa3ll?=
 =?utf-8?B?ZW5PS25jUms0LzZwYnJ5U0w0cmNhYWpiRUpVUmJ0c3lqUEVKYW5sMlpQNXRJ?=
 =?utf-8?B?SjlrZVFxRDIxZEZPcU5ESjZBOWhEOXZVZ0FtZlV2WmhObDBIak4zWUhDWWhj?=
 =?utf-8?B?WXZ6OUVZWHMxakVsNWFLYkVFRkkrMUdCUXdkYWhyOXVvOEFUZDExRXJPNGRM?=
 =?utf-8?B?dmtjRm0vMVcvOW1TaHV1WW1qd1hwWG5ZQ1dSUWVTSVVSUXN0T0pCQVFVelBx?=
 =?utf-8?B?UkdVRUVKdDNUTUh4VlZpZDBBV3dKNkpPTW95WkxBVXIwV1NYWEswNUcwSUEv?=
 =?utf-8?B?b09iWVh5WGdtK1VNU0ZDQVBOcHRtcEdOcDFhemhBWTNFNWdyaFJicHF1UXo1?=
 =?utf-8?B?RzUwc1lYVjlyMU54Wkl1V24wZ0MxSVp1MERqUW8rQnhhTWt4WTA3SUMrY29k?=
 =?utf-8?B?YnNnRE04NlZ4VDVYWWZXSnZmOHJNL09YWHEzVk95UzhqaFExY0xPVnBJd1pv?=
 =?utf-8?B?S0FZZXlrTHR0VUxvZnF3b1JWaGNjZk1uZm5LWU8zV1gwN1BNL1U4MlpmSHM4?=
 =?utf-8?B?dDR2OXM5aXVSUGJxd2lrUlczRElPMWI1cGQ0WW1ad00zdkZBWEljSW56S3VV?=
 =?utf-8?B?dVJTRVYzcDBiTTFvamNva0VwcGtnczkvRWdObFZTQ1NqYmxNeHM5ek5QRHIx?=
 =?utf-8?B?RnYxYlZCZjltOE1kUm91L053YVVFL0JLRFptQUxnYTQ1UHFOMEVBL0tqOWVm?=
 =?utf-8?B?N2JFSGlHMWhVYTl3a1dYSmpqQ0hkSUw5ZDA5a2JpZmRwTnhEcWFQZVVJaU1p?=
 =?utf-8?B?NWJ3NWErR3VtUjd6WDF2b0ZuOCtQQzJMejVXVTN0SjEwQkRuNW1vTnZlNzdm?=
 =?utf-8?B?RnBhbVJINitkMzMvUFk0VmhGV21SL2VHd2JGakxqbzNQZEs1TmNSM0xRTjZ0?=
 =?utf-8?B?NlhtendIckZRaWtvKzlJV2ErMWgxOFhyNmVtbDNnN2t1QTA4WW81OGREeHFo?=
 =?utf-8?B?eURhTi96aGtUek5jUFllNHhZblhQK2lncVlScUN4Ukx1ZUpTbWw4Wk9hdC93?=
 =?utf-8?B?SHFBU01zZ21aeVJWQXFMQ0tvQi9LNEtqY1ZtSmV6MFY1cXhGbFhLYUd0NmFB?=
 =?utf-8?B?Ym5uS3BBT1BjRDVpSGM0ZXFpRjJNSEh1ZVloOTdzTUVNVW1KaHlncHZ0V1RL?=
 =?utf-8?B?bDBmZ080dExwb0RGbkFWL2dFR0NYTzVOUm8rRXhSa244Wmdad1dHL2IyN3pL?=
 =?utf-8?B?dFJKdnJOQmZwZngyNDB6eXhIT2pYcHBRSjRwQmEzelUvenJqcW41dnM0MnpR?=
 =?utf-8?B?WVRQVTQrdjVDWFoxM3F0K1pQM1E2SUVwYnhVQnJ5c2RwZnJtTG55eDVnU1Nz?=
 =?utf-8?B?REN0VXM1aXBuYVh6SFFUVFg0WENSb05sSE1LRUlJczA2UldpVE5EZjcrdEpV?=
 =?utf-8?B?YXpzWDhtUjNIeE44MzVWaFNNM1JBU0w3U2dnaXdtbkdxSXUzUjNTb0RUTjBt?=
 =?utf-8?B?Wk5aaElBL3ppMTZ6clNhTUROdFBUaG12S1U1ZVlvRjRwTmZOeWxUMDVZWGtO?=
 =?utf-8?B?ekdyOFU1bm9vWXd0UldKK1JQV3p6ZWlzaEJuN212UHROWDhLcmkzRGVQWHBZ?=
 =?utf-8?B?V2hsSWxaSnNQVjIxUjdKTHBNVmdFN2Zub01tUmNwa21BVjZCZERQRzhoTFpF?=
 =?utf-8?B?YUtzSjdTZWFJOWJ4RnZ2dVFrRk5nYXR3cTBXYjVNdlU4b0Zxc01WM2Vqd05J?=
 =?utf-8?B?RThRWktDSWZQVzhZYldWU1FrYlpQSFh5RG1Wd0F6Ymd0d1ZSSm1qYVZJQkhy?=
 =?utf-8?B?RWZsaXFLbUhlT0FSa202KzJDdzZwMTF3ZnJwbkNYT1VaSlJ6UHQ5TU9zckMv?=
 =?utf-8?B?UFIzTGJ1K2tRQUFmT0c3UjVpYnZKUHRNTjVoYkh2RmxNZWJUU1dRY0kybnBI?=
 =?utf-8?B?a3hZSjhnei9hd2J1VkVFcERyWVZnUUR2V3U3cDUzWEVmMXZ6ZUxDOXpkSFBF?=
 =?utf-8?B?NXg0eWZnbFFLcFUyRE5mWVhDeHNMVHFDZFZ1SE96eGhlSFFTcXNKZnhjRHpH?=
 =?utf-8?B?ZERBZ0puWHBvbUhQakNWRUJST2xKZUptVlhsQmhDWWx5eDcreTRoZittNzRB?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 868098ad-fb3f-4e62-f966-08dc57abe401
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 09:11:35.7044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ocxv2x6ini8GqHzp8MquuDRldZ6GfJflq+nQxcMSOulxf6g/naOvAGErNCOv6dc926gUozRQXG10sZqe4hfwlhsK9VcP85O4YMCaMCgM3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712567512; x=1744103512;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wvtuJ1XivU6jajhmad12pCEYOQ4c9y/EcX1MxVB4HE8=;
 b=Z856S8jj/P+velrPtOpu57hDjyynVgwNkPh4yG8afMgSFwq1wtB4BH0r
 RvJLHwj0EWiTaD7Wnm8IR1/kRTAs7426oQ6jW337R+R+vej+xdaAUHAac
 BBrEze2uOdeLfJnz7tZMZjuQ+4IJSfqUdB72eDA/iPghHYa/wUYg4GlhE
 hZW7ONVG39EIl8RNPfLhUnOAuucgQsJA5gx7HMBdyHOzTt2ev8tnoJiSj
 biPqSKVJ3xXs1InGJXEnMbWnoyVuqJj068QIzLUxf8MHnjh4N0fUUUSWU
 FSMLJ08z6atVyHuP5SYTdkckSG9psbUxvkLDChFd4lc34O+6CX502mVcM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z856S8jj
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Yunsheng Lin <linyunsheng@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 5 Apr 2024 12:32:55 +0200

> On 4/4/24 17:44, Alexander Lobakin wrote:
>> Add a couple intuitive helpers to hide Rx buffer implementation details

[...]

>> +struct libeth_fqe {
>> +    struct page        *page;
>> +    u32            offset;
>> +    u32            truesize;
>> +} __aligned_largest;
>> +
>> +/**
>> + * struct libeth_fq - structure representing a buffer queue
>> + * @fp: hotpath part of the structure
>> + * @pp: &page_pool for buffer management
>> + * @fqes: array of Rx buffers
>> + * @truesize: size to allocate per buffer, w/overhead
>> + * @count: number of descriptors/buffers the queue has
>> + * @buf_len: HW-writeable length per each buffer
>> + * @nid: ID of the closest NUMA node with memory
>> + */
>> +struct libeth_fq {
>> +    struct_group_tagged(libeth_fq_fp, fp,
>> +        struct page_pool    *pp;
>> +        struct libeth_fqe    *fqes;
>> +
>> +        u32            truesize;
>> +        u32            count;
>> +    );
>> +
>> +    /* Cold fields */
>> +    u32            buf_len;
>> +    int            nid;
>> +};
> 
> [...]
> 
> Could you please unpack the meaning of `fq` and `fqe` acronyms here?

Rx:

RQ -- receive queue, on which you get Rx DMA complete descriptors
FQ -- fill queue, the one you fill with free buffers
  FQE -- fill queue element, i.e. smth like "iavf_rx_buffer" or whatever

Tx:

SQ -- send queue, the one you fill with buffers to transmit
  SQE -- send queue element, i.e. "iavf_tx_buffer"
CQ -- completion queue, on which you get Tx DMA complete descriptors

XDPSQ, XSkRQ etc. -- same as above, but for XDP / XSk

I know that rxq, txq, bufq, complq is more common since it's been used
for years, but I like these "new" ones more :>

> 
> otherwise the whole series is very good for me, thank you very much!
> 

Thanks,
Olek
