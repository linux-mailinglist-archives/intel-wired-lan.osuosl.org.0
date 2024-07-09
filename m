Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C07392B528
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 12:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABF6C4032E;
	Tue,  9 Jul 2024 10:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dd2rXtY8fBSf; Tue,  9 Jul 2024 10:25:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EA5E405C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720520737;
	bh=xHHBxw5/6sTKRREWK/j8yEaXVOSrEz/CiG0vRJ3e+mA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xMt/ReeXM7mfZsqCuwEyvWIF9htdhVymsjmSXmLyiJR8sLQ0fYfe5fsoQTBI3CwRs
	 HYWRMG750eCoDGM7u+MhtVBhfsDyZU0rSay2iripbTjt24VDAyeoE6cfuzjgpuxU6S
	 SwOOM3s6IjSM6kl08o2bdMf9U0zsgH5aBvQupfZFnVkbEMN/OlnTnzuNk/+iih0y6f
	 lFVqMo5NAmJ6JSpwl/ScGuHA81KW7BnwRWE3utpkJAoacClaeGZmTH1AZefUEfpr8d
	 yejhftHX8mHQnO/sblTG/C68riwIE3IQzITrpNASQl8cXisX0bp0a8L5xUXnhw9SLp
	 3+nlZmVC+qZPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EA5E405C8;
	Tue,  9 Jul 2024 10:25:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A48F1BF298
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 10:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 925614027C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 10:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bX159PICrAQY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 10:25:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7507940102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7507940102
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7507940102
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 10:25:32 +0000 (UTC)
X-CSE-ConnectionGUID: wQtmO57CQ7SyomIBQBomBQ==
X-CSE-MsgGUID: Bz2+anlwQ3GH0IcvzZLcdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="12449511"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="12449511"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 03:25:31 -0700
X-CSE-ConnectionGUID: Z1dPl0EyT22ovXhD/ZD2Cg==
X-CSE-MsgGUID: 35dsVVFmTfOPEQUAu0xNmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="52214625"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 03:25:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 03:25:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 03:25:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 03:25:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQXg/lGeSa9/Ypg1vCJMXbniGnnUaoVbNg1wdXyfTqIcxh/oemgsvwbQtmqUsaa033M3GTCNv5A89uw99khJQ6YDNeIXc7oyZnuuucOtuxmu+oKPHdkIuO9VAsDtypJHHVouB+Gk9j5oJV/TpTGut52lKgmfAl6bTuEO4I0qAVlEbJeQigkJ2rBzGtP2Q1YsXeyBbllP0dWdzVFZ8PMbk8v5XHXfKsFzKVS1Ye6Vlkh8cGdQLVNTe5RzvBBKZvT6KnK82NdXdJRrfG6Vm7bafuvgDC1elt2GYKK4pvIs4P62wQTexSxe0/V0iz9RAx9qAW0c6FWTOH090+IfvmW0+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xHHBxw5/6sTKRREWK/j8yEaXVOSrEz/CiG0vRJ3e+mA=;
 b=A9k3l1C1XOetM/bqSIXF4uepll0icOJ01TWXNeE3KDR9WcVxN2bSs9bowcSJqRSyqczGqVXwSBVCWtNQ2E8MU2rYmFA266f9vdroIvtrWPxC+Vu9UMQ1WHoBsT8XgZnQgMOg0yVYF2Zcdz7bB91rkzgYP0QstKWS3EPKfihgGEZJFDftikR6XIjSs6YBtAt4Fg9bGGhWPNYVbNG/rVNPy+afIJJ4OzplhcwT+jPNtfoSqLNfNiR7zMKGMtNhZoOAaHVLrvwtFjH4ZUwGplGOXNuhQGzqOE+HymQRhj4EId8oJvp/hz580M0RWVqcrSwlmbHJ9wr9jcpMX6wO5jeuRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 10:25:23 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 10:25:23 +0000
Message-ID: <14683709-212b-43cb-a110-bb184fcff775@intel.com>
Date: Tue, 9 Jul 2024 12:25:16 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Aleksandr Mishin <amishin@t-argos.ru>
References: <20240708182736.8514-1-amishin@t-argos.ru>
 <033111e2-e743-4523-8c4f-7d5f1c801e65@molgen.mpg.de>
 <23d2e91c-4215-4ea5-8b3c-4dd58a1062af@molgen.mpg.de>
 <190d0cdc-d6de-4526-b235-91b25b50c905@intel.com>
 <56160e13-662d-4f7e-86d3-1a88716f01d9@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <56160e13-662d-4f7e-86d3-1a88716f01d9@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR07CA0213.eurprd07.prod.outlook.com
 (2603:10a6:802:58::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|LV3PR11MB8508:EE_
X-MS-Office365-Filtering-Correlation-Id: 248c2df6-e3db-4500-c251-08dca00170de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmREMmlnL3AxVm5hblV0STBJSlc4SlNFVm9WZDFBViswUzVmcVBqeWpZSG9U?=
 =?utf-8?B?dFczRmhmLzVldmdxZzV5bnlJOW5ZVWF2VzJNY1BKL29qLzFxMUhqMmdja1hR?=
 =?utf-8?B?bkxyQXY3WDRyUjR6Um1NaVFYRlNoanF2UUo2U0xZM2FlSTdOUHE2WGoxRjRZ?=
 =?utf-8?B?MkVNRWtMM0svV1FLSHJPS3hiMllsQ0E1bWZXbUVCbnRNdUM0ZThheXZ6cXhV?=
 =?utf-8?B?Umt6dEFzcmMwczFRQTlTd0xuTWg2R3RVa0x0UnVCcmlPU28yV1Jpc2YrMkFs?=
 =?utf-8?B?Sy9NL3dBeGF3eGxxYkxYWEJ3cVo2cmFaSG5rY082aklIR05QR1RuT3pDVmhC?=
 =?utf-8?B?RjhDRkFLWXdYb1ZBTGN3VFQrOFAwUEsrNXZ5ZVlKYkJWd2Q2RlpBUENPVDRt?=
 =?utf-8?B?MUlUY3NVSXZxSjVuYmZ6aWQ2bG01TDhSV2Z1WG5FNllaR2RDQk9TVFdmV0pN?=
 =?utf-8?B?V1gyU0dQSjRjUkY3cGg5ZWtJcHg4UVlZL25zblZwcUdSMk5uL2JQNFYraVV6?=
 =?utf-8?B?UFZxUmp1SWRaSklJL25jb08wTTNmMytoczdYbXlhU3I5ZHZQYkZmMkRvK24z?=
 =?utf-8?B?aXJPazhzblF1RDJiVC9WMnBXbnNqQ3I5ZVNsV2pnRHprMGpNc3BkeDRUdGgx?=
 =?utf-8?B?alk4MWczOEU1TlJONVhIVzBUTjJKRjZHRlhMdXVIc3BYM3VpS1BiMEgzT09r?=
 =?utf-8?B?UWZEdVhDMk5Wdm94MzhyUDViNGFub3htR01ESXhrOTlkNlM4d2xmbUFieUds?=
 =?utf-8?B?NkV6MGNFMzBxVURXNUdjSUhlRGxhK0tVcGZTZG8yek5UZ1lIS3pDcHVQYlpX?=
 =?utf-8?B?V1Q4ZzFDQlVuc0NBQkpTeUxhY2FUMStoYXNJbExFbWdrc0lncFNCaW05SW9N?=
 =?utf-8?B?b2w0OTIwUkpzUW1yd2NTQlBxTDAyN2JXNzdaTUhmbU5yWHZ5WUN1QWwwOVNa?=
 =?utf-8?B?ajlWUWVSVzBqQWlsb1BiWGtxaEFtbHhIVzhxdlRBMFRnWTdjWU5CTmE5eEdK?=
 =?utf-8?B?NmxIQTNhaFhkdlh1YW4rNHJSVDg0TkxMWVRVRkNEbzh0UkxtVW9sa1lxMk42?=
 =?utf-8?B?Um1yOE9FZFBoOGp3NHg5QnorK2xkbFlYYXZHanFFbHlTaGhFYW9RVDdMNCtu?=
 =?utf-8?B?RG8rd2kyZ3ZHbWRMbXJiNXYwQzZmVUhiU2lUOHpJTnAxdUZvejBHRU9PNm9q?=
 =?utf-8?B?blFTOGEzVkkvRHlwakZIQUlTckQzSUVlUzIwdFFudGpJQnBzL1cvSGV6Q1BS?=
 =?utf-8?B?dVA0ZFFnZmh1ZHdDcWlOTUpmSWcvT21XdFZjTWhBcWVrL0w5WUZhRFFKV0hl?=
 =?utf-8?B?V0g3UXhyNHpGQUEveEVhdlprV0l4cjljcURUTnI1SzRndnp3WmF2djRDb3Y3?=
 =?utf-8?B?Y3ptYzV2djlGKzkxWHRmaEpBbzdOTitJWkg5TDRhYUprYnlMQUE4MERRcG5G?=
 =?utf-8?B?SHlIZTlDYzJUa2NYNTI3eEtzVFJuNzB5Y2g5Y2RRYXlUdy91a2VIZTBNUldr?=
 =?utf-8?B?d0FoZGVLQUpJSHpWdFZjSGUwMFZWNW5rM0Qza0xvcUdRS21MUkVxRzhTOUpy?=
 =?utf-8?B?TzQvNm41ZnpjdEllTnhBd3p0N1B3Y3ZMZWNhaDJqUkxCMmliWjQxSHRqZkZm?=
 =?utf-8?B?alYxbXN3VXZyTmIrU2dWamFHT25PUngwczBhWEhyQU5LSXRmU0lOSVBHYVNn?=
 =?utf-8?B?WFpWaE1FaDJUaUdJYkpUTUlxM2FORmM1V243QTd0L2lWZGVnMUpzMnNIZVg2?=
 =?utf-8?Q?Z3xDhWy8yJ2j+6zwg4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mm1McHpxaDM0UHlzRVc2NGZkd2xQanhXcEIxNXQxUkoyZnJqc1JoVWptVDV1?=
 =?utf-8?B?NUFnVWVzUzJud25Idi9DY0NubjVHMUJQN2VGMi9iRTIrRndPc3FTSGlxWU9m?=
 =?utf-8?B?a0tvMXF3Ujl2d3UxczBvUTN4NFYyYU40SG9FNnVxSDNTSUp6bWNPWVIyRHIz?=
 =?utf-8?B?b3NhTmNpZDV4R3pqNlFIczFiMllyaWl2TjliTjhoTFh2enQ3Skl6MWV1NGpx?=
 =?utf-8?B?dU5wQ2hBUWFJSXJxUHduUTlxNXBVRTJSckhDeVp0M210ZGJ3UG12ZmpXV2hx?=
 =?utf-8?B?RkJvc2NKMkVMWTdmY0RRZXF3WWc0Ulh3WmQvTitMMmhRUmtPNVdBNnBZWHdk?=
 =?utf-8?B?aW8wYzhtNUpwK252STNlOTZrZS9adnk0SXBQQ2tlWDM3dFNqNGYxbXZETGRL?=
 =?utf-8?B?c0JFajZaQVNCM2pETFRqUzFQSklRdmtkRlRnV0FzdCtzLy9NSmFuOW1sQktL?=
 =?utf-8?B?VVJGeHMyb0ExcHVNRWVYYldBQ2pqbFFKcjVaYUQ1eWJPTDd3UlNiM3VUUVJu?=
 =?utf-8?B?OTZJWVJVZ3Vlcm55VHJhUysxMWNXRmN1OCs3VWo5NnM0Rkc0ZW5oR0ZKVHJL?=
 =?utf-8?B?WldKRERoMnJUQ0RNTytGRThnaCtyVmxpaWtCdU04R3RLYVIrRHVaRzhSbUxz?=
 =?utf-8?B?bDJiU3VXRjVJSFM0K3FwUllBZEJOZXRaaXpOYUkyekRUME4raG9GWmM3UU1J?=
 =?utf-8?B?REdLWUo5c0hNbXV5emdmWWxJSzd6WVp2WXlVWXpESE9EWEJtZWVlY2lPRDVS?=
 =?utf-8?B?YTFxbWlkczQvbnlxdENOMUlBRThSU1VpaFRzUDlzb1ZUcjFFZitiSG5aaDh3?=
 =?utf-8?B?VHgrNEc2ZjdoNFBjaXBWZldtRG9kaUdBOFlTMkZGVVlzWDk3Z05zZzRGcjhr?=
 =?utf-8?B?Z1JBeFJrdi9vUi9XUHNWYktNbXRWNVA4YUxwNnBTdUZYRzlDN0tacVU2RUM0?=
 =?utf-8?B?ekFyN1M2R1FKU0xMMlJrbTBtbjgrVTJzUlRqQmpNSXMyZnJBZkQvRlJCUWZG?=
 =?utf-8?B?T3phTkg0WTROV2xkWkNDZkhsKzZnTTJUbHplQ0VwMklMWHJpQXE3NjZFbi9j?=
 =?utf-8?B?Vm9jSjdValZJajlrM0xLM29GWDBrdHdqQTJ3a3RCUks5ZEQvaGg0OWdVb3NW?=
 =?utf-8?B?YnUrSWxkR1R5ZTJWU3pWY25zWVp0U3JCY2pVWXJwZzBhVnA4SDNCVWUzTGFK?=
 =?utf-8?B?Rjh3a3FWYU4rbXZxT3BJZ0ZxczY5RGtXVkxlbUpVaGxHalpkeFpHNTdvRnFF?=
 =?utf-8?B?Z1VxaFluQVpaUkw3b291UVFGeWFMTU5HNTUrYnNkb2RrL0FsWVlwb3BUNS9R?=
 =?utf-8?B?cVFXanh5RU5OTmhoUTlacU05QityQmlGcWZuUGczQ2hRajlZUHVKb2U1OFp6?=
 =?utf-8?B?Tm9rRUxtVGxpaWRnQVE2bm1KV0tjcUNHYUdkSlFlWFExdnNabFdTMDBjQWhD?=
 =?utf-8?B?bGxKdkdZTlVEYXc3NmhuaThrRjV4WnNWb012ZUU5RFA0TzNuQXVpZTcrNC9U?=
 =?utf-8?B?a0F4bzFtMlpWRWlxVUVTcU93Nld0eXF2VE5BbUhJSkJ0My8rc3Q4UFFnZEhi?=
 =?utf-8?B?d29sL1FhTTRTcTlLMkpRUGZYYk5HU241aGFOQlB3MktJR2NSWEVyWkJWNjRi?=
 =?utf-8?B?MG0ra2FNdVg4dDVYbnlpYS9pZ1V0UC93NU1pcXRaTUUvZFpPbGxIdmR2TUJS?=
 =?utf-8?B?SWZIUFg0dkdpR3YwM1MxZStFL1BzdjNsWTY4dlpjOVVPL3VPQUJPNThWTmlL?=
 =?utf-8?B?OEsxRXI1STVmd0ZtQWdSNFlsZEhHeSszRUVNdFhjczVhcWc1YXMvaDFKOXRG?=
 =?utf-8?B?K2E5Sy85Y24ySXBleHhxWDF6Y3puNEorWnN1V0o2bDFISHBxN1phc01ZNGJM?=
 =?utf-8?B?cldTSHlqWGFTQWVFMnlUMW5lT0s2cjJJeTJDRkpUeDU4ZDZielZpZ2NKQWlR?=
 =?utf-8?B?RnNtMlQ1OGoxdEozRzBjZ1JwaWtwQklwWTFRekgxNzB2YXhhTVlGTzVQaHph?=
 =?utf-8?B?ZHlrZS9lVUJUUDdTS00yWnRYSFNGeXFsd1RhSDZxTDdMTkdnNFhoL2U1S1JS?=
 =?utf-8?B?Q3VGc28yNUZnc1BQMUErRHRDU0paQjlPRk9UVlRxSEVnanQwZFAvOWt5elB1?=
 =?utf-8?B?V1lLYjAyYzhYSW5aVXlxSHpBVnVXR1JjY2ZpUkxYQ05HUkFDZS85Ly84T1pr?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 248c2df6-e3db-4500-c251-08dca00170de
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 10:25:23.0931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x92bSsg0gEVm11QBfDOSfEB7HAp4uhC9CBic6ccbIobe58NufHsTZ4vu3SuY29lGU8c+0M0GgPlnmKlYZKYTfrn2JEunDsCc2V0H12GKt7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8508
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720520733; x=1752056733;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h5oT/5OWumgylFAtpKA2wxE+SJRLNBwgsPTxL+U8zkk=;
 b=Ow5hUZwfE3Ub7q+BCWAij3dEsNQBxaV9VgrzDAAn4QSydi+qWGhLQQBX
 CW0pV3j3OJtiUEncT4Sok4jfdR4+MUZGqsshwSm3jGyaeMtzyLOq4mIFs
 ghZ136Z+QaPFvHNVwsRoBWC6Fvpz6pYYOtJTNMN/a/aFtvsZofyxeCWvl
 LcHbParWgcWhe8ntBmnw7L1qwAtP67m27LoaqkMc9RMY7JWwgdT7Uz1QL
 YAFUNrQRaRO7Uuiwf1j8jSfQWrKGjd6rKnJ9mKwiG40fmM9fDbfcVhZpD
 6UCbSIOu4v1NH/nPddCfn9IKP66KPn7GkDVierJBhSXEV2a6ssdMCmD+T
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ow5hUZwf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Adjust over
 allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()
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
Cc: lvc-project@linuxtesting.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/9/24 11:50, Paul Menzel wrote:
> Dear Przemek,
> 
> 
> Thank you for your quick reply.
> 
> 
> Am 09.07.24 um 11:11 schrieb Przemek Kitszel:
>> On 7/9/24 10:54, Paul Menzel wrote:
>>> [Cc: -anirudh.venkataramanan@intel.com (Address rejected)]
>>>
>>> Am 09.07.24 um 10:49 schrieb Paul Menzel:
> 
>>>> Am 08.07.24 um 20:27 schrieb Aleksandr Mishin:
>>>>> In ice_sched_add_root_node() and ice_sched_add_node() there are 
>>>>> calls to
>>>>> devm_kcalloc() in order to allocate memory for array of pointers to
>>>>> 'ice_sched_node' structure. But incorrect types are used as sizeof()
>>>>> arguments in these calls (structures instead of pointers) which 
>>>>> leads to
>>>>> over allocation of memory.
>>>>
>>>> If you have the explicit size at hand, it’d be great if you added 
>>>> those to the commit message.
>>>>
>>>>> Adjust over allocation of memory by correcting types in devm_kcalloc()
>>>>> sizeof() arguments.
>>>>>
>>>>> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>>>>
>>>> Maybe mention, that Coverity found that too, and the warning was 
>>>> disabled, and use that commit in Fixes: tag? That’d be commit 
>>>> b36c598c999c (ice: Updates to Tx scheduler code), different from the 
>>>> one you used.
>>
>> this version does not have any SHA mentioned :)
> 
> Sorry, I don’t understand your answer. What SHA do you mean?

there is no commit cited by Aleksandr in v3, IIRC there was one in v1

I agree that mention would be valuable, and we still want v4 with my
Suggested-by dropped anyway :)

> 
>>>> `Documentation/process/submitting-patches.rst` says:
>>>>
>>>>> A Fixes: tag indicates that the patch fixes an issue in a previous
>>>>> commit. It is used to make it easy to determine where a bug
>>>>> originated, which can help review a bug fix. This tag also assists
>>>>> the stable kernel team in determining which stable kernel versions
>>>>> should receive your fix. This is the preferred method for indicating
>>>>> a bug fixed by the patch.
>>
>> so, this is not a "fix" per definition of a fix: "your patch changes
>> observable misbehavior"
>> If the over-allocation would be counted in megabytes, then it will
>> be a different case.
> 
> The quoted text just talks about “an issue”. What definition do you 
> refer to?

I mean that there is no issue (for the users), thus no fix.
Example of recently merged "not fix", with more links to other "non-
fixes":
https://lore.kernel.org/all/b836eb8ca8abf2f64478da48d250405bb1d90ad5.camel@sipsolutions.net/T/

> 
> 
> Kind regards,
> 
> Paul

