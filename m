Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNreHChMemmd5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:49:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C735DA72FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:49:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72E10402A8;
	Wed, 28 Jan 2026 17:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y6FiWi_izbfu; Wed, 28 Jan 2026 17:49:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D086A402B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622565;
	bh=mgawRSGxNs/8bAoR6pMZKyjpUeuit3L+Fqdx4EvaL08=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I8+DtF2Op6R0RyLLcTkZb+0gmbNEtxqXhyGH+3itfmDHxAC1+JwEXUnvAxdWN73KP
	 9Is2dE76fAclv0wMb3wiIPhE9jeXYKG1pJrEq/Hc1q6JEs59kSAKxE3eWdQZQnl4oH
	 yZtIpdk3pYTd0jecxTIiIttDvtZ+z2dDV+4PQrNUNBSc7nx1YKQFRJD57rUUR25aW7
	 APn67M1wYme+sLfw0n7a4fBm0UvchwML2U8P9EpbIgJHaqV75KGcPDTS4HsL+BWsPw
	 UYaAz+nLRsUDULJ//2344N32sF1c5b3sAyd0mbhMnz3R9ykZsZDyU8pcspzuzGETxm
	 4ciNWLHPUijcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D086A402B3;
	Wed, 28 Jan 2026 17:49:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 56902118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A5C140184
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RL8FftEfM0h2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:49:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 232E7400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 232E7400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 232E7400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:22 +0000 (UTC)
X-CSE-ConnectionGUID: YLQw5VzES+e4Dio1vHfmBQ==
X-CSE-MsgGUID: vZasjFc1SNGzFtUBKBLxsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70898204"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70898204"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:49:22 -0800
X-CSE-ConnectionGUID: QcwU3EGBTW2It+y0AZnzpQ==
X-CSE-MsgGUID: /kcZKk7KQpenDIKoqlUBhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213197254"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:49:20 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:49:18 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:49:18 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:49:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=scrR0IfkzmJLygb9btOXscy4Xrjai4BWd6MCH7qsvQInUSRrfJrRYSKxLupS16YUu1mF8/pwtXlz6xOV0fSUQNd1jQKoSokw4I3epNpiMjcFeLR8/c9oa4RP6oqowcuLRBWGTVtgGpB73jKJJYhNTx5u4Lm8E0WDYPDRlUSJR6h8O3a3brS1yx3gXsDisUHtIUvSXhgPDp7/SNimxmFgXNYDi+5TSK96LPcjZp7SvDHCWYViVJ+VgciCDWyU9iVn5A7i6c+AQB6r9ukclXMzn+yKaH+x7mLNGrL7uucZrqPjDp/yEISl0KM30uyV19fpFHzja/1tV3z0QwpVC2ig3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mgawRSGxNs/8bAoR6pMZKyjpUeuit3L+Fqdx4EvaL08=;
 b=iTcgtmxxu5vd7GQzpdEtLfuwgpi1ULlnapLLg98USKCCPssW4swUSpjm68hv8ViYgkPRX1QvNOkZ/TwLeZMxfqcd/DmdXq7n3AaWsOLsjFW2r/TT9p2IRVQdS9786CWJro4QKFVWuzBTILmbi7lBZTucyexGBCDO1nsmGPP7Q19sWOwSV2m8hIxpuJ15P57dPspfwSBr0v66RFg9whQcKioPJ5yKht2gMS1/wXcroPqcB1MNcH2mmmGaCJgN7WH/HYoWYKzefRsEGGVjZ9+3DfRhAVqXfHrVmq9miMxAN8iaPtzerEId6Il4Xw2Iy/bfM5uSlT2wgEImF9u4Xewg1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9160.namprd11.prod.outlook.com (2603:10b6:208:57a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 28 Jan
 2026 17:49:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:49:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 24/25] docs: kdoc_parser: better
 handle struct_group macros
Thread-Index: AQHckHZz+LubFoRk+kuKmyxitRcd07Vn2+Dg
Date: Wed, 28 Jan 2026 17:49:15 +0000
Message-ID: <IA3PR11MB8986C86B054ED61A4CBDA14AE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <d75c01aa92b61e1934e62efd9492986b69a93129.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <d75c01aa92b61e1934e62efd9492986b69a93129.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9160:EE_
x-ms-office365-filtering-correlation-id: 0ff94704-a2ae-4e16-fec7-08de5e958dba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?S3p2ckx3NkdQckM0TldCNnF5TkV4RUJLbEU2emF0L2pCQ1dyTjE0ejJ1V1hr?=
 =?utf-8?B?SnlvdERuQXBjeGxXK0hjQ0lMWktIOWdjc2JFbkpOaURvaTBMQ1lMY3dNcHlS?=
 =?utf-8?B?V1VrTWs2d0U5UEJrbnRIUDU0TzNsYmpMR1JCRjAyTHhkUWQza2gydURReVl1?=
 =?utf-8?B?UGsrR29TU3JyVHdRZ2kxcjFVbk5Ia3IvUGxRbDM4RFArUStJeVlEdnJvYzg5?=
 =?utf-8?B?QmVFZGtucnQ5QTdTM0lPOUJUdUo3dnFOMk42YjRlTzQzWDVaQjF3eXJ6Tis3?=
 =?utf-8?B?d1FjRjhjQTJDT3B1MGxiUk8xMTU3TmFmYjVBOFBIT3Fsd1pvZkpiL0ltMlFo?=
 =?utf-8?B?S28vWWpmK1lzcjdmUDFxWmhvVFkrUTArcHZoWGw4d2Q1MmFQYVdFMEtKSlZn?=
 =?utf-8?B?a1doSzd4NC9MNlV0VGFkQ01ZMGRrcGRLcHJTbWxndTZDN2syQmVaeUN2Z20r?=
 =?utf-8?B?TkNONmJFakd4R1VqZFZJRkk0M0xpeDBlV055VWw3bTBTckhib0hFQmNpUkpv?=
 =?utf-8?B?c2tXK0lCMWc2SFVVMWdBcTlOUEpUMTZnZFFoMndyUkQxWE8wbEx5NDFxOU9k?=
 =?utf-8?B?K2lVQlVQU0JsNFVNU2VDWStnTFJRUFNKMWRadXlCSTJ1MGN5TEZlR3F6dW9y?=
 =?utf-8?B?dkp3aEVMbUFSamgrSFZKc3FJNlFzOXVIUS9uSEIvbTkzTE05SzRWZ3hjYVBI?=
 =?utf-8?B?d3pTb3V3YWVmbVRkdkYzcklxeTNjNDlKNWs4Tm9ZNE9pS0NuWGc3SFAzVGFl?=
 =?utf-8?B?c3AybEUzbWFVZlZlZUgrVXg0ZkVFcFFuUURvN1ZZMDJXcmpaYTdJQlp4akVh?=
 =?utf-8?B?YWxBbnlmZmNiQUdncjhNcGpGa1dtd1JmeldScnh2Q3BNOW9NNFJGOVlXZVBD?=
 =?utf-8?B?bHhPVmdjMnRGM0hmYlUvbHI4Q1ExVkQ2a1F1dWoyRGErNzdUOWQ1TVlHWUFq?=
 =?utf-8?B?U3RrN0hCdjJxR2F1N0RsVGxHWDMwWDFlOHFNREE0NGVhNGRjajQ1S2J0NUpE?=
 =?utf-8?B?RXlWeXZMMStNem9aVjF3aHF5SUdXZGNVQllhZ3BDdy9wQnJ5RUM3N2tnbTY3?=
 =?utf-8?B?Z1lCZmI1WUJkYm1wZjBYSXNjaU9qM0JLbDhhUU5SMWFpLzFzdFVwS1R4N0ky?=
 =?utf-8?B?QWFOTTBJNGtlNVlSOEYycE9PbnRNbjZncHVjTzdZZW14TEsxZmswR3hnNmYw?=
 =?utf-8?B?MlI1dkV0MHdDS2tGOTRGRjFPbUUybk9FeDVtdjhtM2ZCZEErZlRIYjVoSGF1?=
 =?utf-8?B?dVZiRE5yL0RjTkhoZUlvVHZhQkFna3kvUXVpSTdHUjNYZ29udDFheDI0bXFJ?=
 =?utf-8?B?RTRWRTdVc2JES1JCYm9qYkhKVjVneVdNZ0F4eFNCZWdxT05LUFNGc2daeHZR?=
 =?utf-8?B?R3NqNE1ieWZacnZOWVozTUQ2YW9sWmc2VDMvZ1JoMm56aTluTU9iSVRuMGds?=
 =?utf-8?B?aXV6V0w3MWYrdVIrMlhiOWtkdExCbk9OWHFDS1dHbVlCdXJ6QVd2amFUNWlQ?=
 =?utf-8?B?VFJXaHN1OEZiZHJqTlhxeDNmRzBYbVEzaWI5UURReHE4Wkw0MkVkWjgyLzRW?=
 =?utf-8?B?TytkVnlHb05KZzZMZFFpdkJBQTl1dldOTk5XVWRaek1makhFT0dQVnZ4VktM?=
 =?utf-8?B?WVB5T0NKUlV5YTVpQUdiVjlRVm5iZEFhcGxZUXJwNDJVWTZCdFd4VDVWalhD?=
 =?utf-8?B?Unh2d2JjMGMzREFPSjZsd0VJVlR2cUwydHBjamZYTU1PV3h0d2lack9JUnVv?=
 =?utf-8?B?ZzYxSWlTMzI0R1JIUlVlekZMU2I3bDJjVzEyRjRFN3hBaGh0UTVWdmowTGNO?=
 =?utf-8?B?dEhoR01PWlpnMXBvcy9ydTJwOUJZQzVmaDViWDhNaUxicDM0dmowenFBWXdx?=
 =?utf-8?B?UTFhRUpLVDUzSkVuckp6bHhwK3NheW1ib3JTZHA3bmVWcUdkclhjalVzNFgw?=
 =?utf-8?B?ZGZsVG9oWGkxNUErTE1WdElQL2Z1b0grWUtPTGFtS2N3cHVYeGo0MUNzU0VZ?=
 =?utf-8?B?bEcrbFJDY29WZGVoUnlFdWhmRURzQWFXaVVBVHIzUWNWc24wYWh4Qitza3Jp?=
 =?utf-8?B?c3lDNjg2RFNYU0d1eHJ1bWRqbzh4UkpqMWRvS1ZWTjhJRnFRTnU5VTVTYXor?=
 =?utf-8?B?L0RQQUthQjRPVDQ1dHZzellWVzMvQmFoTHpDYlFEYXc2RGw3bjRVbmhpS2ZW?=
 =?utf-8?Q?LWB/7PI3W+lYNOAU2KFSdLY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzhZaEhBY2tOLzJHNkRqSlUrelRSckdqNTE1ZUxMcUVZQ21SckhrZitMTlVs?=
 =?utf-8?B?Ym45N3JyeDJ0SWc4MnJQcVNEL0x2dUYvUGZyVVpGd0FIUWZYK1pFSEVpeEwr?=
 =?utf-8?B?SXhZU29vS0czRUxWeWFCRlhUdzIwTFB6b3lrR3YxbHIzcktBRmtESUo1WU5U?=
 =?utf-8?B?SUFjMC9pMmI5dHRuYWJkT25uYUxJQ2Z6QWZiT2cySUZmWEplVlBWbUZVazQ1?=
 =?utf-8?B?RGRVL1FKa1hWL08yR0pBZDVZa0NwK2YrQVYrL09TTVU2Z3prMTNWdmN3T21T?=
 =?utf-8?B?dGZXcytlTjlUZnR5QnJEQngyR2UxUnoxVnZQUVdnK3RYeGxTTWFlNnpWR0VD?=
 =?utf-8?B?dzZIUHRkSDVJRWtLazZKOUZHaGdHNUllUEZCOFlBM3doUHFDWGgvanpJUGM0?=
 =?utf-8?B?Y2dwZndlWDNRUmp1VDN3RVpyaVJUdit3M3ZpL1ZwQ1FFTlBmRHJMWVorU0w1?=
 =?utf-8?B?d1Zjc2dobmVmOWdEYzNFeE1CbjI1azJwVnRKZlhyUzBNY2N1WE1STjJuSHcz?=
 =?utf-8?B?bU1VSW5tMm44YUJLWWh1bis4aElPWnFFVkxMQVBlb3RGSnhkN2pwSEVLOTRU?=
 =?utf-8?B?S2szZ1IwVVVBbjUvczdZdGJpaC9JZnA1eVQ4MkxiNjd5V2lQK2FWakExcE9L?=
 =?utf-8?B?ZkxzRG9xWkdPQUVONW5yZlYrVTVUdW9FdEd4RFcrU0VDeElJcFgwSzd0Y1h0?=
 =?utf-8?B?ZVIzbDl4VDBnWENKY1JoV2ZOZGxmTEoxR0l3R3Bsa3BlNXpVMVZqTkRhUmR0?=
 =?utf-8?B?dG9QaStBYUlCcEtNaEx0WUVFQTVSKzRCYUhoS0ZYOFF4UkNaeUlDSUxzR21u?=
 =?utf-8?B?RFFXMHhDd0w4VEExZHNuZTRsdWhBWHdtaUpvU3ptVjREcmJuWDZwcmt3SzhC?=
 =?utf-8?B?ekp3Ri9oK3dJTWVESjBkTW91K2kzT2l5UEF2NDBYMGtzMkc4RkQzVGMrMkpx?=
 =?utf-8?B?QWY3VDhJcldUaHlURWpiZlNOazB3eEkvUmVlemtNbnZkNU1LVGt0OVlrSFlH?=
 =?utf-8?B?V0Jtakprc0U5UXY3bzgyZE41QWhVQkRTMVREbFBLUlVnMEtGajFSQWNiQnJX?=
 =?utf-8?B?UGEycG9wOWdLdGlHcjVqYVVwM2hCcjJ5TjcrUkFWRUQ1R2RnWVpIUGlGTnN5?=
 =?utf-8?B?Y3hqUnJ3QjNqbUF6UU5Oam1nVUkyZFVsOXd5cFlsaUFkVnlJRldtUEI5MzJ2?=
 =?utf-8?B?MWc3SlA3dmwvVmV5VUM1aC9VSWdFMmprbVBwVDhJQWFtU1RaQ0hZcmNrZFRW?=
 =?utf-8?B?aGZUOElNb1ljaW10SjNqSkJtMzZQenkrWGk1NEJJbE5CZHd3NFVLVkFGdTli?=
 =?utf-8?B?VUlkUmVEeWwxVW9ROGJkYThIdGdmMFg4L29IVTloNU90R3UzZ2RTcjh5WlVX?=
 =?utf-8?B?VjJPSEgrZTJ1UkpIeTFIVENVV0w0OWw1K3p5ek9UbklFZG93SXVKRjNTR0U1?=
 =?utf-8?B?TDU5ZFBhU3F5OTVXd0NEcktta2U1SjUrRkNqcWhxY3dhb0JPT2RubjZobU95?=
 =?utf-8?B?a1ZiNUJRSFJZQkI2VnB4d1AxVk1Ua2RuOEkram55UUViRzB2VGtEdXEwYndW?=
 =?utf-8?B?U2tvTXB1NTU4K1p3TzE3L1owQStrSVZ2ZEVaeS92U2hzck41aFZDTUhIaTFV?=
 =?utf-8?B?RnNKV21MNndxNU5XZFVJMTFBYi80Y0NtT3J5Z2pxeVhwTTRsaDZFamtldWEz?=
 =?utf-8?B?MXZPa2xBbkNOa05VZ0RRd05UVkswQUxPUEJ3V3lydEJSSmVWaTJjbjFOb2Zi?=
 =?utf-8?B?bGhDOEdXaUx1dU1nWC9JZ29mbzlNWHBNM3FpdGJNallwMXZmc2hmZjJScWhx?=
 =?utf-8?B?MlJuNjdobnFPbHN5c1RDOWlGZjlxelN0YUpEakM4VENyUjZpQXdEZnBBcEMz?=
 =?utf-8?B?bCsyeVNDTlJLVlZCc3NBanNjbW1LS1VGL1ZtNC82SEhuL2tJeG9kRThDc1Mw?=
 =?utf-8?B?c2tVUWtOdFBhcCttYUZoZWVEdzhZVWtzUFVwVGNoZTgrK3BUTkdGQ1IvSTBV?=
 =?utf-8?B?VDBwdFRFZzlIY1RrTmVHK2ZXb0VQNDRTYTZHZHdrODdreTZiOHNuR1lSM3dh?=
 =?utf-8?B?YlRCejNUOWlqRmpJVUd4ZU5ONmV6bC9zL05vc25Qc0dZSW5xNlVmUlk2Rnlq?=
 =?utf-8?B?VEtMRWM5NTI5N3M1RjdHbXpheWFtSHczUGtncGJUaDZCTGZXUmI3SHdPQzFC?=
 =?utf-8?B?azZjVlUyb1BHQzFjcWE1UEZrNnREeEYxS0x5YzFrTXBBQnd6c3VyWmUyL09R?=
 =?utf-8?B?NTVvVnNZQ1JmWlVFakxnWUE0Y2V5K0tadmllZVNyOUpwODRLbEFPUFRTK2Zo?=
 =?utf-8?B?b2l3ZEswdGJsSExFRitFLzFLTTdKRmQ4K2N4VlZXblBnc3krQ01oQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ff94704-a2ae-4e16-fec7-08de5e958dba
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:49:15.3991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4LkyZw62kXaE3HmEikZ5pGHiaTC4cYeotH2Gfrs8KPkuPUDO3DNenQxPXpcocID5OVXiiAzztTwaAK3BfjcIR8DV5HxceNf/M1qOX3X/uno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622563; x=1801158563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mgawRSGxNs/8bAoR6pMZKyjpUeuit3L+Fqdx4EvaL08=;
 b=ZWfuQn6rR/ojociivgL6Vikh0ln6WBrkkVcoeoNZjzRhEMwzXgOMXsJ9
 ckHO32i8wHly1Mxi4bpHf1MRK6e+GTRxaQGfdzdSSxEpEkrhl0nj8H12T
 wMYSBp4G5cTrBxd3zE5gMT4c2gKGkSZxDHHlTZrE7a7NVTonevHNxH7Cv
 1ZDO92fNJbSMz2YulvEOAi5V2oh7ExsYgom8TAaSaqbO5vdaDQ+eNQI8i
 /eRlqrn4DNfQyu3CYkIIIl6n/eKaZ74qt6cpDTfJmueekMz9FfBm1fqWq
 aUijJJBlSqqVWF4ZoQAx5RfxvSB38gAmy5o+mPUb4qI72eemnhvl2KYHQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZWfuQn6r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 24/25] docs: kdoc_parser: better
 handle struct_group macros
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,auug.org.au:email,infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: C735DA72FD
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAyNC8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGJldHRlcg0KPiBoYW5kbGUgc3RydWN0X2dyb3VwIG1hY3Jvcw0KPiANCj4gSW5z
dGVhZCBvZiBjb252ZXJ0aW5nIHRoZW0gb24gdHdvIHN0ZXBzLCBpbXBsZW1lbnQgYSBzaW5nbGUg
bG9naWMgdG8NCj4gcGFyc2UgdGhlbSB1c2luZyB0aGUgbmV3IHN1YiBmdW5jdGlvbmFsaXR5IG9m
IE5lc3RlZE1hdGNoLnN1YigpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8g
Q2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9w
eXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDEwICsrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
dG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhv
bi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGluZGV4IDNhNTYxNDEwNmFmNy4uZDJlYjkzZjlkNDg5
IDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4g
KysrIGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IEBAIC0xMjQsMTAg
KzEyNCwxMSBAQCBzdHJ1Y3RfeGZvcm1zID0gWw0KPiAgICAgICMgbWF0Y2hlZC4gU28sIHRoZSBp
bXBsZW1lbnRhdGlvbiB0byBkcm9wIFNUUlVDVF9HUk9VUCgpIHdpbGwgYmUNCj4gICAgICAjIGhh
bmRsZWQgaW4gc2VwYXJhdGUuDQo+ICAgICAgIw0KPiAtICAgIChLZXJuUmUocidcYnN0cnVjdF9n
cm91cFxzKlwoKFteLF0qLCknLCByZS5TKSwgcidTVFJVQ1RfR1JPVVAoJyksDQo+IC0gICAgKEtl
cm5SZShyJ1xic3RydWN0X2dyb3VwX2F0dHJccypcKChbXixdKiwpezJ9JywgcmUuUyksDQo+IHIn
U1RSVUNUX0dST1VQKCcpLA0KPiAtICAgIChLZXJuUmUocidcYnN0cnVjdF9ncm91cF90YWdnZWRc
cypcKChbXixdKiksKFteLF0qKSwnLCByZS5TKSwNCj4gcidzdHJ1Y3QgXDEgXDI7IFNUUlVDVF9H
Uk9VUCgnKSwNCj4gLSAgICAoS2VyblJlKHInXGJfX3N0cnVjdF9ncm91cFxzKlwoKFteLF0qLCl7
M30nLCByZS5TKSwNCj4gcidTVFJVQ1RfR1JPVVAoJyksDQo+ICsgICAgKE5lc3RlZE1hdGNoKHIn
XGJzdHJ1Y3RfZ3JvdXBccypcKCcpLCByJ1wyJyksDQo+ICsgICAgKE5lc3RlZE1hdGNoKHInXGJz
dHJ1Y3RfZ3JvdXBfYXR0clxzKlwoJyksIHInXDMnKSwNCj4gKyAgICAoTmVzdGVkTWF0Y2gocidc
YnN0cnVjdF9ncm91cF90YWdnZWRccypcKCcpLCByJ3N0cnVjdCBcMSB7IFwzIH0NCj4gXDI7Jyks
DQo+ICsgICAgKE5lc3RlZE1hdGNoKHInXGJfX3N0cnVjdF9ncm91cFxzKlwoJyksIHInXDQnKSwN
Cj4gKw0KPiAgICAgICMNCj4gICAgICAjIFJlcGxhY2UgbWFjcm9zDQo+ICAgICAgIw0KPiBAQCAt
MTUzLDcgKzE1NCw2IEBAIHN0cnVjdF94Zm9ybXMgPSBbDQo+ICAgICAgKEtlcm5SZShyJ0RFRklO
RV9ETUFfVU5NQVBfQUREUlxzKlwoJyArIHN0cnVjdF9hcmdzX3BhdHRlcm4gKw0KPiByJ1wpJywg
cmUuUyksIHInZG1hX2FkZHJfdCBcMScpLA0KPiAgICAgIChLZXJuUmUocidERUZJTkVfRE1BX1VO
TUFQX0xFTlxzKlwoJyArIHN0cnVjdF9hcmdzX3BhdHRlcm4gKw0KPiByJ1wpJywgcmUuUyksIHIn
X191MzIgXDEnKSwNCj4gICAgICAoS2VyblJlKHInVklSVElPX0RFQ0xBUkVfRkVBVFVSRVNcKChb
XHdfXSspXCknKSwgcid1bmlvbiB7IHU2NA0KPiBcMTsgdTY0IFwxX2FycmF5W1ZJUlRJT19GRUFU
VVJFU19VNjRTXTsgfScpLA0KPiAtICAgIChOZXN0ZWRNYXRjaChyJ1xiU1RSVUNUX0dST1VQXCgn
KSwgcidcMCcpLA0KPiAgXQ0KPiANCj4gICMNCj4gLS0NCj4gMi41Mi4wDQpSZXZpZXdlZC1ieTog
QWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
