Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 028C7CC83B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 15:37:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EC77837B6;
	Wed, 17 Dec 2025 14:37:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kzpPhgd0_ADM; Wed, 17 Dec 2025 14:37:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA05D83709
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765982242;
	bh=ua9V3PPgTatksiLuTGS8ixPr1NteIIGHVMaUuk5koVs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uWAs/WzKP8C6ALyOgqaUGs+hu0qyDs+BTINWRpdP9eFZpIjj/+CFCe1VHYE7rNB59
	 +HRywnmINkFO1H1HJC93ObGQOY2F4mC9ScqNZtA75EXFdazxwmR8QKRXgS6GQwisPi
	 tqxmBSdkZY1dimlbK+5QocY+ijtOlmd5jXNsyrowkmuO5BcAJJH5zMIbvryhXxmXOF
	 pqkmuiaKIXcFkDS2bzV3HFGL+62pQCdRN5vawpFWMPpvMUvHsaohpBqnDv/I7sDPSb
	 LJoFq/i2KC701pGdyxTjDPof3l8bEJAFVkxQerOhV0vBAyUNyl3V6TauEOvlyZnrOH
	 2Im/mVFcb/7bA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA05D83709;
	Wed, 17 Dec 2025 14:37:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id ACD17372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:37:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9214760A57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:37:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H5TVeHO00hxU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 14:37:21 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CE99B608D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE99B608D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE99B608D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:37:20 +0000 (UTC)
X-CSE-ConnectionGUID: tapF4rm6SlidhKqIdSmBQA==
X-CSE-MsgGUID: BmK/K6AGQTqo1jfPVpzHLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="79289004"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="79289004"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:37:15 -0800
X-CSE-ConnectionGUID: XmfOwOJdSByScaTjvG8TWQ==
X-CSE-MsgGUID: AeQ47STXRJqlonLwiFGy3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="235733437"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:37:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:37:14 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 06:37:14 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:37:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LMda5XUscaqQLnOJECd7wFOS/OJ4r1blBse9z0OQIlRRTetthLvC9aOdXCBsYuklfG+8fODtLJn6iSmpxXsBXhLfBzG6GZt86QanDITLqLttb8MxejkEHlvWkin9EJFhisrRH54AWa/8717yx2Mkh7ecfNpkDnF5TEkdIkuagLBXGnsaF+IMHX0T/kjLwYOLVyWl4eP8gafmPg4BoJRPgbq8WBELH4rb2XoawU9Fv6xp2SkoDkBxYNAWM+nD3ybZ9bNEg6FnoAoffQtfB45JNJANVt0OqWeqCCQTvC7ZSbMZirVgrrYAMAFQ8FWpdz4nPsPrK7BV5H75cZhzVVE3FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ua9V3PPgTatksiLuTGS8ixPr1NteIIGHVMaUuk5koVs=;
 b=SavYI3YmZW9GR2HojXN0uYwCSf5PGqu7A20pyXhp9SmGJJ5vz1Ge57reWgFQojkPP+ZBThwBiSD7IjwrI91iIDf6e0+cfyOnZvin85gHFT1yVj6QPK051RIjiU9rsa84vrisxYdjs3Juioez1Bf5svYK9shfj6GXJ6ZlJvSx1R7WC+hsohTmOIhgw/N8EzNoNasoKxwjyUFCdN+vGb91mE6BuHeSs9tZyGDMh20MUfawofC7t6+D3zFKYAZQxFzdZluDFpvt9BIiluadlrlNvAAwEFBkqUMguCLq+4aoCBClyIEhc4MzYjkoTz0mODK3umGQm2D96U4i5hrpc6BJzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB6528.namprd11.prod.outlook.com (2603:10b6:8:8f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 14:37:12 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 14:37:12 +0000
Message-ID: <e4946f5e-49a8-4e52-832b-b2e62d7d2e0d@intel.com>
Date: Wed, 17 Dec 2025 15:35:52 +0100
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Mina Almasry <almasrymina@google.com>
CC: <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, YiFei Zhu <zhuyifei@google.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "David
 S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Jesper
 Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20251122140839.3922015-1-almasrymina@google.com>
 <c2580ef0-3e44-468d-8675-203de5c82ac9@intel.com>
Content-Language: en-US
In-Reply-To: <c2580ef0-3e44-468d-8675-203de5c82ac9@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VIYP296CA0011.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:29d::16) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB6528:EE_
X-MS-Office365-Filtering-Correlation-Id: 5213cace-9c77-455e-2b19-08de3d79c3d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODY4M1Y1OVRCREM3Q2xJcDZVUEw0RCtzOTRGdExua25uT1ZCdU5HcFcvY3BG?=
 =?utf-8?B?TmphemlFWHZZM1FEa253M21xK1BuMk43SkN3U1JJNTVsY0ZnZkdnMzRKbGUw?=
 =?utf-8?B?czNjdWpqZXpFaGpLU2N5QkRBOE1YWmFjaWpZSVE2ajhTSDFjQnU4eVFxK1Fn?=
 =?utf-8?B?Y2diZHhNYnFWckM4eWF0RVZINEpXT08vaEdldnhOSS94akp2NG5zRFBjNDRX?=
 =?utf-8?B?bndNUFRMWEd6MStXNStPSllOaG9STEtaRHdDelNYSmNTOW54bUh1OGZ1cnlz?=
 =?utf-8?B?cHl1UnBleEIveSttREwxQWZhTDlLaEUwT1dSWE5WTFFuK1IxRWhpMFh3cm9G?=
 =?utf-8?B?b1RFaWNkdnBhTVBURjZodythWDl4VFY0S1ZyejJoaXJkcUJKTnJ4eE9FOWRI?=
 =?utf-8?B?Qk4yc2pmQ2Q5QXBuM2R5bm1WcThTYy95YzZZQU1MRVI0RXVIQ2Jidk4yS0hj?=
 =?utf-8?B?aE51YVgwVWNVOHkva25obzMyN1EwdTg1Yi9VNFljZUgyM0cvSGs2djdsMVNh?=
 =?utf-8?B?K0FGbThMckhSUmdIS3JVS0Y3SzVnK3FpWWtUaUpiWXBJOWRGSTM3V0YvWFZC?=
 =?utf-8?B?cnQ1YTEvNmF2R29QU2lyZEFkTy8rd1ZhTmlMbUs0TjZyTWlDZURDWHE3YW1x?=
 =?utf-8?B?NE9KeUE0VFVJckJYa2NzQ3Eva3JMbERmQkFEUmt2Nlk3b3JRRTQrbTZSSnRN?=
 =?utf-8?B?NTNZUjVaaXhwOURqY1FQU0VtZVBuN3hRSkZ6eTVhT1N5OWlTRlpBMGVYdXZa?=
 =?utf-8?B?YTUwTmxFUlZVRGR0SGN0NTNiaWRKYjlBcFduSXo1dTdwT1VoazJQclp4RzlC?=
 =?utf-8?B?bm1KMTBhMHZHSXFWZWg3Mk1ma3hoUWE5TWthTjVRYnl4Y1RvVFF6QWFyMXF6?=
 =?utf-8?B?VWM4QkhzQTkrRkoxUFk4NlllcEwvQk9KUEVuTnRZRHNIU1AxVlhYQzdrWUI5?=
 =?utf-8?B?Z2xoS25IU3U1YjhzbU9wS2EzSFVvU3g2cUlFLzc3WkR1QXVUa1U3L0ZsVlNT?=
 =?utf-8?B?U3NEckVNSG1lbjBmWWw2WlE2VXY0Y2xtdTBrL0FOQTlOMkY5V0JSRWxBUEl4?=
 =?utf-8?B?U04xNURKVDBjTlRacDd3VW1rYlVjQXhVa1NGUWsyeStaTHRNUnI2R0VZUDly?=
 =?utf-8?B?bTJiY1I5R1J0akJuZGlEWWRDdFBLYytoNDlDZTAzaVVsSUtvQ290Z1MwSkpN?=
 =?utf-8?B?RVJYN2JUKzJLNGoxT2xKK09mT0xZZ1A1UDBWN3BIZXFRYnFRWlhXOEtYRHla?=
 =?utf-8?B?RnNSNjRrbTV5d3dkcEtvb004cHNTOTJFMU8vODZUeEl0U0VUT3NlK1lRV3NY?=
 =?utf-8?B?a3ZmZzhaSy9IRGlFNkdZSkJVdytDMGdqZjhPTjRSSUhDTTBQZUlRNXV6dUxz?=
 =?utf-8?B?TitHSUswdW9kVTh0U2llYU9uSWJWdkRyRG9DYUtmZTFZRzAxMW5kaGU3ZStI?=
 =?utf-8?B?YW1saUhNelpWK202dFV1a05NUDRYOEFJektzQlBpWkhxWElmd2ZUR3BhNUlE?=
 =?utf-8?B?eUFSOFpzV2IyS0cySjA4YTR6bDZuQ2lrMU5TZjlicmJZWnlyYi9Wcm5IekU2?=
 =?utf-8?B?cUNMbG9SQWdZdmRZZGFCS0xOMkpHakJuT0ljRDR1RW1CUkorVmRONVZWY29o?=
 =?utf-8?B?N0pZUTllbEFkZ1BpWU9WUnpXRjc2S1hNa2F6eWVyVzQwTHNmSVVOTzd3bEJO?=
 =?utf-8?B?cUR0WFI3eXhzNXVXU3ZMREUvTVk5VXNMVHRHUkpSakw1dVRsUm1nSE9RS3dG?=
 =?utf-8?B?bTQ3RXdRZlRJdllVMVB6NWFYNDJPQVRBVXVYZFE3aTdoMFlTS2dMV3dGTldm?=
 =?utf-8?B?R2pwbytiaDBnNHRiYVJrc0xUR3dkWThCekZHUnBuL1VRUmNTbG04UTFpYjA4?=
 =?utf-8?B?eUYzWlBkZS8yQk9NYlBLYWl0cUdHcXozS0xSTjFhbDNZeWlKU3pwcHZpWXBj?=
 =?utf-8?Q?n3ZjE1ZDwDRbhNsgGxJKbErZBUgU8RDG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXUxbUtzd2JCK1hhVUIyVXVkV3NrbHRVbXcva3hMWmgwaWQ2TzJNeFhPZ2Zv?=
 =?utf-8?B?RjNCdmgyeU9XaW5IQ0hKZmIyZmdmMHdEY1JFSlMzcUdhV0lKVXQ5RWtJNHNM?=
 =?utf-8?B?K0RzTTdKZFVpamt4b1RWV05qT1o5UFJLYlpXRTFGRHNvWVN5QTVyQ0lqWm5C?=
 =?utf-8?B?cWNINUUwYVYybFZVVElpc0hVMkFGSjVGNWVQS09PZDZ5L0FDNCt4M2xxck9s?=
 =?utf-8?B?ZnZQUiszSWwzQkNVWlVSNlJVQStQRG5mK2JIaE9EbFlvV00xcGdsWlhTaklL?=
 =?utf-8?B?U0ljVVlSRFVTMW5tbGJ4SmMvaDVXWlloVUdWWnBnZ201MWZWek9IN0dvczRa?=
 =?utf-8?B?UVlPZkhlVzVaNmhsREtHYUo1N2F2S0d2UHgwT1ZjcVM5eFBBZzlvdGkrcmE4?=
 =?utf-8?B?R0UvZHdBUHZoaEJ4Q2lvb041YmZTWkhrdldieHBEazFuQzNxZkd2UWtaMXJu?=
 =?utf-8?B?Q0lXLy9lMHQ0b1ZpbU96SjUreG9aRCt3WEJ0M0NQUG9ZdkZOSTFEWUx4MWZt?=
 =?utf-8?B?N1hZTG40QkwyMTFmaElDT1ZlZmR5UFp0QVA0aXplQ091dGhhcm41akQvcGRl?=
 =?utf-8?B?Vjc3SUpNa1FkYUU5dWxHVjA1WEx4ekZmeDgrL25kaDNNbVd4SE1uOE9xUVhq?=
 =?utf-8?B?aHJraGJxQVJqQ3JzOTZqdm9MWHJNZ2pBNkF5RXZ5Q01ISWpSNlFjeXE5NmVY?=
 =?utf-8?B?SDVWRHBFUis4Nm5zajRYWkExQ2pkSGQ4UEJRYkphR1JIOWx4TkdUWlhuL29u?=
 =?utf-8?B?MC9hVEQwKzZZbHQ2QVR1Kyt4R256UXpTdUF2azBlbk5JWFN6R1czS1l2b0dC?=
 =?utf-8?B?THp5VmJMdGpiUCtMTnFaL2h5WVI1Vi91V1QrM3d2dmpuV3VyN2QvdTRoVFZq?=
 =?utf-8?B?WkhXN0VZY2RTaURidENCNzhjdTUzSTdjK3ZmWjA3R0svYVc4NVQ1QTJlclpm?=
 =?utf-8?B?WTZlb1A3WmhIanRqUm9rRmVxaHF1V2JTUHM0bkVWbVE4YnhBTiswRVgwVXpN?=
 =?utf-8?B?VkVJRTJMOEJNREJNMEhyUGpBR3daTzFpaXEwWjl4WjkyYXUwZUczb1oxajNB?=
 =?utf-8?B?cTJwSW1jNXFlS0gxZXVENFNCNDkvRjdoK2RHaXdGZ0RRaG9Dc2dyTWdVQWNB?=
 =?utf-8?B?NzZEZGlQVGUrTWZFT3JSU0NxLzNwOVdGbTlrMGJIZzIrQUhIZGgwbXYwaWl1?=
 =?utf-8?B?d1N0OE1YY1dkRnlGc3kxT3NWUFhtSjAyWlBwRHB4bHJMSTJ2bEJTWEprNFhG?=
 =?utf-8?B?YkpHUUF0OTBDLzVGVG93SzJRWkZQTHdjcGhMbTZtS24yakFxbnpmYi9PdG5V?=
 =?utf-8?B?aUd2WUJDa0dodTZkUjQ3MkJtN2NsUElqaUdBY0FXS1M1SDBpbTBIeUdIQnpy?=
 =?utf-8?B?b0NybHB6RW44cEx4NDBVNk1BNTAzVzZlMitENDR5NVRiR0VaR2drWERKVEpr?=
 =?utf-8?B?TWk3aW9xRVlsN0x1TUEyRHJaZTJuK1FFNmdEWE9HMFI2QUIwVVZGdVFLOWFV?=
 =?utf-8?B?SmZmQ0hYK0Z2TkFaL2xUOHVNMlZqY29ubTU1Q3BXYXJlVTV3STQ1bTJucTZG?=
 =?utf-8?B?Ykc2VXcwaWdGbG82cWNUNTQ0SXlNd2dIdC96MytCSTdCSEU4TWJUaXB0S3VC?=
 =?utf-8?B?RS9Fb1hNSm5iRW9YNmtLNmNJTjlKb1kzQk5EazRWVk9uRUlqVjRYRjNOaERH?=
 =?utf-8?B?SXptQVREalNIc0ZEbVVYc21RY25iYUc0MXVHTnhYaEVlVmJHL3hRUk5Uai9v?=
 =?utf-8?B?em1FSVgwYmtaK1Y1cFhURmliWHgyTTFhRitUT0U0VDM3V2M0eDVuQUlYT05Z?=
 =?utf-8?B?UW1ZMHNvZ1Bldm5rUkViZmwrb0xsMy9MMVUzUG03WDB2dmt2bzBJbHJ3Y3Uv?=
 =?utf-8?B?UW92SUlLOWExSE45VjB2S2txUmNucXJ6bXFwVUxCMlVFQy9hSmMrSThVb0hi?=
 =?utf-8?B?Z0VlK25JbWsxMzJMaGVyY1VadmZHNElFa1lWTFBCUXZPSkRDMU9HdnFMaUNS?=
 =?utf-8?B?L0lFaWtxWS94MzhMK3BQNmVnWWhJMERaSm5PV3JJQUljMVJucHlFa3VSck9I?=
 =?utf-8?B?UjdpVUNwYXZHRnJrZ0RCTUVzbS9zYmg5Z2NQbXN3NjVSN09XNWJQb1RqUTcv?=
 =?utf-8?B?Q2NIUEN0RmZtanBwNUl6bXA0eEpwTFRWTUJTaWpkMEsvQnI0czF4bXhDYjlJ?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5213cace-9c77-455e-2b19-08de3d79c3d4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2025 14:37:12.1257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p3aACWZhyv6UCxeU03w91DSs+PcNDovRGMGw8+O+osfJR2MrfXMZtzVmm00HSxSdRWau6owpAlRc5syzibGsHFVHoUqOegeztNkuDMnbvXw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6528
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765982241; x=1797518241;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=akTyNKalMZ3GXynKmkzUBe24MOa7iR+0B4zQOlZF9tI=;
 b=ZaHMDSrJnkaRttZS9NAaVF6AvK4rSa8cu4yDevLsThhN1C7tOp7jlLCG
 lkdJ8/krbPW+Ncby7r5qho0SPRR/X5HQc/oHsb/XSfAuHAhavcb4ayx6f
 739UPFj26DTh8lzOCHv1ohADgtobxsRy63hQh6+5pCpfUK5OG8AuLoUvZ
 LdUPoOyKxpvZfvgp0cLim5ycJjOIpN/Mgy42rUkkJ8Cor6koH6VwhIzX3
 phUndYH0WhRHPMU88Fpo1f8lgXakGH6CglDH0NOER1aZ2BpGILE80lBu8
 xccbXcuEKium+dWBsG//h2ybWhhlyKrq6AkpgxazstgHBmQsGIFyG338d
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZaHMDSrJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] idpf: export RX hardware
 timestamping information to XDP
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 17 Dec 2025 15:33:40 +0100

> From: Mina Almasry <almasrymina@google.com>
> Date: Sat, 22 Nov 2025 14:08:36 +0000
> 
>> From: YiFei Zhu <zhuyifei@google.com>
>>
>> The logic is similar to idpf_rx_hwtstamp, but the data is exported
>> as a BPF kfunc instead of appended to an skb.
>>
>> A idpf_queue_has(PTP, rxq) condition is added to check the queue
>> supports PTP similar to idpf_rx_process_skb_fields.
>>
>> Cc: intel-wired-lan@lists.osuosl.org
>>
>> Signed-off-by: YiFei Zhu <zhuyifei@google.com>
>> Signed-off-by: Mina Almasry <almasrymina@google.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/xdp.c | 27 +++++++++++++++++++++++++++
>>  1 file changed, 27 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
>> index 21ce25b0567f..850389ca66b6 100644
>> --- a/drivers/net/ethernet/intel/idpf/xdp.c
>> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
>> @@ -2,6 +2,7 @@
>>  /* Copyright (C) 2025 Intel Corporation */
>>  
>>  #include "idpf.h"
>> +#include "idpf_ptp.h"
>>  #include "idpf_virtchnl.h"
>>  #include "xdp.h"
>>  #include "xsk.h"
>> @@ -369,6 +370,31 @@ int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>>  				       idpf_xdp_tx_finalize);
>>  }
>>  
>> +static int idpf_xdpmo_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)

Also please put this function *after* rx_hash() to...

>> +{
>> +	const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
> 
> Sorry I know it's a late comment...
> 
> Could you please you the optimized descriptor structure from idpf/xdp.h
> instead of the regular one? To be consistent with the Rx hash timestamp
> function and give more room for optimization.
> 
>> +	const struct libeth_xdp_buff *xdp = (typeof(xdp))ctx;
>> +	const struct idpf_rx_queue *rxq;
>> +	u64 cached_time, ts_ns;
>> +	u32 ts_high;
>> +
>> +	rx_desc = xdp->desc;
>> +	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
>> +
>> +	if (!idpf_queue_has(PTP, rxq))
>> +		return -ENODATA;
>> +	if (!(rx_desc->ts_low & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
>> +		return -ENODATA;
>> +
>> +	cached_time = READ_ONCE(rxq->cached_phc_time);
>> +
>> +	ts_high = le32_to_cpu(rx_desc->ts_high);
>> +	ts_ns = idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
>> +
>> +	*timestamp = ts_ns;
>> +	return 0;
>> +}
>> +
>>  static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
>>  			      enum xdp_rss_hash_type *rss_type)
>>  {
>> @@ -392,6 +418,7 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
>>  }
>>  
>>  static const struct xdp_metadata_ops idpf_xdpmo = {
>> +	.xmo_rx_timestamp	= idpf_xdpmo_rx_timestamp,
>>  	.xmo_rx_hash		= idpf_xdpmo_rx_hash,

...keep the alphabetic sorting here.

>>  };
>>  
>>
>> base-commit: e05021a829b834fecbd42b173e55382416571b2c

Thanks,
Olek
