Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2CFAFDC8C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 02:50:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB81181584;
	Wed,  9 Jul 2025 00:50:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F0KpRmLSBS5V; Wed,  9 Jul 2025 00:50:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DB768150D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752022235;
	bh=h3OoZeTJnbUJUxwJwJfqMy/3A5n7Ams5KsS54nomeOQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pcwK3zotnUxpzyh69bKDBYkoJu6FSAy4knziEn5J07FjQ3rjHnyK3Ls5zy2iY6e/b
	 F8iT7+XwuYwxgypHBOdueQoK9wt+JYwRVLSlk5M+5X+9/KenZZef3ycqQiJtXifhAw
	 ux+NtNGIRybY2P1D6o9W36NpmLEPJ7jsnUM/EQjO+pibb45yoAAVH1uyN79jKPHLvN
	 f7wfH/zmSsk/qV4ILa1fHIbb36DAq/OPZRYtIzXxJdUzTrEm1joiyX0zaMu2cSwRjM
	 OIDrJRQwlLPiX9IY5xLjRi29dZrON4rTVTHFYHw5QEgzwStBebjKUDeWVNftVflF5m
	 zbG35/BIDqtPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DB768150D;
	Wed,  9 Jul 2025 00:50:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B62FA12E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 00:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B36514016B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 00:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QxfQyG-m-Ka8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 00:50:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC60B40118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC60B40118
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC60B40118
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 00:50:32 +0000 (UTC)
X-CSE-ConnectionGUID: 8JYVPJk+SvanNTRIuEkMYw==
X-CSE-MsgGUID: uuPSj2oHRt2MTD7glwOUdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54403421"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
 d="asc'?scan'208";a="54403421"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 17:50:31 -0700
X-CSE-ConnectionGUID: MC2oJgsgSdmC///ZzH5clQ==
X-CSE-MsgGUID: tGuCMijzRwOkbxMW8yf3aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
 d="asc'?scan'208";a="155367707"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 17:50:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 17:50:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 17:50:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.59)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 17:50:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UkmcrmDPBwgDL5Mc8WGZnsHvjH0zvbA0mN4RbAxQMQXHkzxjzligDq2EjTwI/JOjsB31vjXvwXSAcYf+I2KGgvKOqbSsY9tENtcSKHBC2zetguwFENlzaiLAnjJP/ncX5AngjQFeym5cE0T/zTFaZ+H1heW7ODWHDC6DlA5OrwE6LvnmuBW4o2l+GWic19+A94aWPiwM/q33jMpyNW/JnZfYNZCXIjbtZIo5yXFtKhKjie8CrGb3T5VsBGayMOuqrllPejF+vzmEc2LkH2FMZ+pnMleX3bIyqCbGhWbrj+Bd1OKOiIOPh1O/pBG3nDupNYoDEgwzK56CSrIDMjAaxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h3OoZeTJnbUJUxwJwJfqMy/3A5n7Ams5KsS54nomeOQ=;
 b=sFYEkUqCNRQpmPaE7wl+c9UwuMYNvSUuC1TeUYdy/ks+JbLn58SwK4MzYeCE6C88SAmIEbwYlkZUbvdHY7WsY+XAU2oJxZQkVDRh+l0jGuszDuuawX9ahbojx65GqaL5c7eP/dfm3RcsnIacK/hbFTVC7c62DTiolMKAyafZSN08rTLnuJE9ObvZQiwKUArRD45+DLBnmsdzDrJhxfDnNC9XCt1l3zbC48MLBuYvFAi2oNod6banx0dxYNngy5SXzYjCjEjQ230RZnDq/1tJQr8DNnPRyELq9uTH8YgZQrZViiRUwnNjScUGXcYPXGvahDX47VykWbdcOLZtrOZWdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB7882.namprd11.prod.outlook.com (2603:10b6:208:40f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Wed, 9 Jul
 2025 00:50:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 00:50:27 +0000
Message-ID: <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
Date: Tue, 8 Jul 2025 17:50:23 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
Content-Language: en-US
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ojVJDDYBbyvl0r81ShAMXUsc"
X-ClientProxiedBy: MW2PR16CA0071.namprd16.prod.outlook.com
 (2603:10b6:907:1::48) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA0PR11MB7882:EE_
X-MS-Office365-Filtering-Correlation-Id: 11cc8220-eb50-47ea-08ea-08ddbe829839
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWtBUnZPTFM4SE1MRkhTc1JoZmNEWFlGQnQ5YnF0clJGczlaNEtlc3BBSi85?=
 =?utf-8?B?a21DeW8reFAvZUdlcXBLWi96YkVaazg4bTFIOHdmNDZUMkhscVYrZDVZM0cx?=
 =?utf-8?B?MTJxUjEyVUpOWDVGcFRFNmkrbnlkR2FQRGpvdG1UanhCakNZUUR6SDFGbWFq?=
 =?utf-8?B?M1lCcW9UcWQ2dE82N2ZJWUlCNzEyek5rdXZDd3hsMDFOa21TRWkySzd1MFhS?=
 =?utf-8?B?QTFSVE44WkxjUmxzWlUxK3JMV1JBUHRRcDJveDhKS25zajdyN1hLbUoza2Nk?=
 =?utf-8?B?VDhYNVA0SUpDZzdmZG9MRWZ0QzJQNElEMW5FanpWVWg1amtVV0VpOVorRGgw?=
 =?utf-8?B?MTlNa09hR0NrcU9Gd0M3MFpYVktpZWtoQ1FTSVRYVEJRMzgxUEJoQVFIcjF1?=
 =?utf-8?B?SSt1WEVxa1ErUkFhMWdDK1F6V1lnbzE0clErZkJkd3B4c1pBV2NscGtuWjFa?=
 =?utf-8?B?dFhnejM2dGd4OHZRd0UyamVJQ1RMRGlxcktGclF4eEJwb0tjNzc3dmY4QW5h?=
 =?utf-8?B?RkFJbVhET29jTTBtbFJkUld4VW52WUtRZjE0bjU0UWNCZDg3UUEzWGpSVGJa?=
 =?utf-8?B?TU9qem40cXoxTC9qVUNoVlpvSDlITVEyUGptaWhBNE1zSk4xQkw1MlBjMy9X?=
 =?utf-8?B?eVpSRVY0QXhxc3N5NGFLaWpPQlJIQjBKeS94OTdIb2FCNHBERlVnVHBGaVFC?=
 =?utf-8?B?bGIwR0NuQmpWdzlaNjlsRVJ3QjU3N0QzYTJ6ZjhvTWdqRnpiUi9PQk1sSzA0?=
 =?utf-8?B?V2syZzFUTFVCMStqb09zcld0VHRQUmVXNnpXdlI1Y3ByRkJJa2xhTno0bjJl?=
 =?utf-8?B?d1ZHa1luMEJ3ZmJqSm02ZEU2emFIVjZPb2pzZVp0VFRFRStvUEdpbnkyMVZs?=
 =?utf-8?B?WHJlRksxWEdDNjlkUFMzckNqZmlnL01PVk5ZZGQwdHNNaDVDSGhKbnF1eXg5?=
 =?utf-8?B?dnh4NEtpZWxMK1haWnRHTDVmSWxxcWk2bkgyRERIS2ZNcHoyNFRWS3A1bGhk?=
 =?utf-8?B?UEpTRXhabUJXN0lmeDVJUVo1MGtVVWpEbS9HK2grbjdGcHdFMXkySVNkY0dN?=
 =?utf-8?B?Yng2alZFR3FQYTZQS1dNakZrYTdnT3UwZkNZbDI3MU1adlFHb0FnRU5mZTM3?=
 =?utf-8?B?NnJxVmFTamN1RmVvcFhKNUF6UFVJVnhmcWkrNWdOTkdDeDh5L1V1R2NBT25y?=
 =?utf-8?B?NUExYmhqQ2NKVDRRS3hhelQ5MDM5NXJKb0NCb1JnOUhFWWxNWVd0VTA4YzZZ?=
 =?utf-8?B?Y0JDV3Bhc0RsVUp4c016WEQ5R3FjVHlQMXJqaWNJMDRRNkY0amxxZDAzRzkv?=
 =?utf-8?B?cXZGVEtPb3Fib1p4MkVSbGFxMEowc3YvUnRKVk0zRmc5K0sybjZDbURyQU44?=
 =?utf-8?B?YlVCTXpzeTJlNDNkcHhvOTNFZTlVaCtNaU1yTURuR2VjRDVtMzNBa1d5Vytu?=
 =?utf-8?B?Y0t4NVFkcTg5Y3B6K1FsR3BMTGM2ZGpOVEMxL01iUUpiZUxlaXJWM2tLdDFH?=
 =?utf-8?B?TTVyYSt5T3dEdXNXUThVc1czWEQzOVhUVTJpRW10M21aVmErZk9aeGtHMU1N?=
 =?utf-8?B?WXBCd3MwOE9WUGs4cm8rZG44bnRrdTZYTHJpNzNnMC9vbjk4T1pIbVlIeENt?=
 =?utf-8?B?Snp1Y3pXcVl2Q3BGOENsWTJ6djhmQjg2NG5kSEw4L0lLS2VmWm14bjBQeHFw?=
 =?utf-8?B?ZzBvZWJqdFkrUVAzSG9UMzNKSkc4bzNvOExpYzBqN1AwUXFhU2JzL210R2ZF?=
 =?utf-8?B?RWxoUXVpVUw1Tmw4NDJYbHpZOE5hUG95dVI3VWZ5WUhaeW1vclB6SWxWNHlj?=
 =?utf-8?B?L0F0eVgxdU5WbWpmNGJtalRXSEVlWnNRR1pmSDFDSHRJckl0OU9Ub2REOUxn?=
 =?utf-8?B?T0FzMXhxQ0hpOTVjZkE5QTdqTzRVYkRQTkNIbC91ZklwR3RhYnRYa2cyK3ly?=
 =?utf-8?Q?Fha1E0ddxZo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjAzL3JzM1FYaTFzYzVhSVgyTGlkWFdZQnpzWHBzdzBQTXZYYllSNjRNSVVn?=
 =?utf-8?B?SzIrcVJZRnBsMWUrdHlNOUdxR0VhekFDZGRibUZwRGRXdmw0ZWpVN1ZrTEl2?=
 =?utf-8?B?bUl1Ui95OVRYcHFBUlVSWHBlaUoxVloxRlJXeVpBTHlSTExoaStYS2huRDFv?=
 =?utf-8?B?MWxDK3BDaE9Uc0Z2RGdRL2FPdldTaURyajd0Wk9ReVcybWN1cS9nNzQ1QkFS?=
 =?utf-8?B?c0ozUWFUTkRCY2tyby9aeUJIdHdyN0tkUS9COGhXUmFRWUZaTzZGckFMclVE?=
 =?utf-8?B?aUg2MVZJdm91SUpTYlZPdmdyOVZHd0Q1QXBpTEdKRVdIN2dsUkVZcWtZS0lN?=
 =?utf-8?B?d0lZTldmSGtWOWQwc0Rlc3ZPdlN6c0ExZjdkcTU5OEZOc2pOTHFGZmdWT3o1?=
 =?utf-8?B?YVZOUWlDdi81cEQ1TVZYYXpGSjFpbE51emNvUjhKWVF0MGRDdlJnYkxTa3A5?=
 =?utf-8?B?eVBCVnZtZUMxOFFOTnVYc2xFanhtRGdRVVBaRGF6RkhZQ0FQckM1cStVL1Ny?=
 =?utf-8?B?cW1nMlozUHE2NVBINjlXaGJ5dnF6L2pGejJyaEQzOWI1UjA4REVQWUVianZs?=
 =?utf-8?B?Y3lydzQ1eUd6N3hZZStnNXVvMWZ3clNXYlVUL3dWM09wOVg3cGQ3OWpYT0gr?=
 =?utf-8?B?cytUVEk3d1FFUkJxMk10MFQrNndsbVp3YWQrc0o1RmpMaEp1T1dkclF6Tm1J?=
 =?utf-8?B?RjdQeDFNVjBnU1RHQWxPM3RJSUZQME1Pc3FtdTVoWXYrTkcvNkNHc2htRXNM?=
 =?utf-8?B?ZHYybUc0TGJ2Yyt3ZGRBVGlVRVEvU3ErN3QrQjR5Vm1xRXcvVUo0aXZnZmhK?=
 =?utf-8?B?dzZaa1Ivb3JWYjlyOGh6MUxKbXMxV0FnQnpyNXVCeXZCZlEvcUVadDFZYkli?=
 =?utf-8?B?Zk1PRE1zTHZNNXVyODYxdWZhUFFlM0RVTXBaRTRhaTJGV0xJVlVBME12S3Ez?=
 =?utf-8?B?NnJzdm9qWHlDSVpsSW9Zd29vRUdzWDBwKzlMRDdxYi8zc3JLRWIvVVd0VExj?=
 =?utf-8?B?cTNYSHJnMi9qc1c2eW1qNEc1MTRvZ0tyOGlHMmVtZkVLRDhOdWJteFY0SG4r?=
 =?utf-8?B?a0ZtVS9lR3NUejNVSi9UMi9CTXhHOCtmTm1kVVNKWkRBYndFOU81bUFDQU1Q?=
 =?utf-8?B?dndwQ1VFUTNXM1ZSV0Fkc3VxTlNUQmQ3dXRjdXRRSkllQy84VEgrNGY1cWJH?=
 =?utf-8?B?UW5xamtSeThTZGh5ems2bmZPTnJoN1JkUUI2cmNxc3RVcEhoR0lmV2g1SjZM?=
 =?utf-8?B?aUJTQWN5WmUwczdhRGRUUHRMK2dyRlhYV0pKa3dyVzJyc2g0OHN2KzJwZlla?=
 =?utf-8?B?VmNyWnRxYWxkcGh3bkFUSmk4SEJSYkpaS1ZuNjIzcTkrbXUvVFZHOFBGUmZC?=
 =?utf-8?B?MXpDdkRTKzE2K2NpQzRYd0J4TjZmWHdrb1ZhNkU4dXRtZ2oxcE5GM2V6V0Ft?=
 =?utf-8?B?bTE2cGNNc0h6NVFQdG5jSUgvVE1qRlYzcVZtWUNUWEN4Wk1SUURBVVpJSU9y?=
 =?utf-8?B?dUZhNUlqVEtiS0VtdllYeGFPTFo3aWJhWXNheWRxc2hZTTJ4ekRTMUtJUEJT?=
 =?utf-8?B?NW9EVEgvbXIvUWtzZkhmeWl3cmtDL0NLQUlHVUR0cVhFYnA5c09VOHE4OUFG?=
 =?utf-8?B?UlFqL2FQVUVYa21HY2FiYlVTUE53QzdEYU9NQTBwbXBKdXJHU0JneVJ6RHc2?=
 =?utf-8?B?ZzNiRUJoNnhIRTlBdVhSQW1ILzdMWFFZbXJjdGxuaWZKR2FodkVvbGNCYXdC?=
 =?utf-8?B?MjhETEhHMkluaGZNWUNqR0JqVlJBbklWLzVxVE1zUzBCV2Z4dHc0enA4SnUx?=
 =?utf-8?B?Z0NIVTFndmc0MGNqc0lHNEZaNHA3N1VNVmVwLzVIenRXTWdOQURPOHRIMEkx?=
 =?utf-8?B?VEhsajh5VWNpMHZhclJzVE9XN3FYUXVGeDN4TWdEV1l1MjEzVUJLdmo2S1Zn?=
 =?utf-8?B?MUNpN21ZaTJsY1JkZWx3emVlWGJEM2hRRERTMWg3UmhKalMxZ1IySUVLejhX?=
 =?utf-8?B?bFZPZVFPLzdpcDgxQlFZTEFKNWNYN2JjQkFqNXoxTWgvTzUwelpFQ1dpOHVL?=
 =?utf-8?B?aThUcVJqMDhBSHBSWlQrVk9RSHJ3eHlQbFVoVU9oZG1MSGF3cEtkajhqOWp3?=
 =?utf-8?B?bEtOTkFGYmsxelZ5SWFaeHlJSE9iRkd2UmVFaWdFWDE4WXF5YjlVRk9XWStB?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11cc8220-eb50-47ea-08ea-08ddbe829839
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 00:50:26.9542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vaVZODRR0VLwUQGgh0lrUaXKcjSJEqOOrgsb8EOg//Zg4H/grv589lkIemJ39cxeDkI7fKO5Nf80g6GNVHZz8rdgHBBO2nryah/GqvtjZ7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7882
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752022232; x=1783558232;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=h3OoZeTJnbUJUxwJwJfqMy/3A5n7Ams5KsS54nomeOQ=;
 b=DjZI6wkxXMe0DVPmuv4Cc8Z/7cykWsVWq51G2+xvgxJQBXmbFPX3GEBj
 VYJCtlz9gVQHF1F3ikHkKTnHtebGW7Wye1iPo2EtmnA6JXLk1Hv0Rc5OZ
 0EsxhyIVasBLloffch48nFioCdGrg4eAmvTbJMn2PtPGZTVnruTCXIY9d
 e25iMEHJlWzg/dwhduN/uQn0IAJFYLcs9YZa5bimQjSLS4R/xz/0B1Qvw
 WS/15mFbsNyA0j5xhLjg3G8yq3yrVfsD8ZuWTxq4w/6EM0XxQWoYk1Zsl
 D2o2fs13RP4CMpo+eeXw+OdAd5IDCVsvZIQXK48ohucNt4HCDM81+NS/O
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DjZI6wkx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------ojVJDDYBbyvl0r81ShAMXUsc
Content-Type: multipart/mixed; boundary="------------kNlAxPnNOGb9XrM3qAb0hvc6";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
In-Reply-To: <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>

--------------kNlAxPnNOGb9XrM3qAb0hvc6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/7/2025 3:03 PM, Jacob Keller wrote:
> Bad news: my hypothesis was incorrect.
>=20
> Good news: I can immediately see the problem if I set MTU to 9K and
> start an iperf3 session and just watch the count of allocations from
> ice_alloc_mapped_pages(). It goes up consistently, so I can quickly tel=
l
> if a change is helping.
>=20
> I ported the stats from i40e for tracking the page allocations, and I
> can see that we're allocating new pages despite not actually performing=

> releases.
>=20
> I don't yet have a good understanding of what causes this, and the logi=
c
> in ice is pretty hard to track...
>=20
> I'm going to try the page pool patches myself to see if this test bed
> triggers the same problems. Unfortunately I think I need someone else
> with more experience with the hotpath code to help figure out whats
> going wrong here...

I believe I have isolated this and figured out the issue: With 9K MTU,
sometimes the hardware posts a multi-buffer frame with an extra
descriptor that has a size of 0 bytes with no data in it. When this
happens, our logic for tracking buffers fails to free this buffer. We
then later overwrite the page because we failed to either free or re-use
the page, and our overwriting logic doesn't verify this.

I will have a fix with a more detailed description posted tomorrow.

--------------kNlAxPnNOGb9XrM3qAb0hvc6--

--------------ojVJDDYBbyvl0r81ShAMXUsc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaG28zwUDAAAAAAAKCRBqll0+bw8o6CvA
AQCt/Qw80vmB1iPjuxn3xf74fcyPYv9Fg34MiU6NaKVdcAEAlSIqzxQvrlCOpuwwKGFNFUuyGluJ
VwLvFvAzrVoncQM=
=ChyH
-----END PGP SIGNATURE-----

--------------ojVJDDYBbyvl0r81ShAMXUsc--
