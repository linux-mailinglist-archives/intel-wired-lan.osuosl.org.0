Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33941AEEADA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 01:17:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37E2F41D11;
	Mon, 30 Jun 2025 23:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4x4wqIoudrxD; Mon, 30 Jun 2025 23:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69CE941D6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751325429;
	bh=X2MPXawf7sXb7A6ApIeAz80Yy7QsY0ybzqQGSJiYecI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j728AVUftTXFL4ms5043BsRRf7sJoAkBRWfG5Fb2EYmPLORBEnNsrc3byqtW4EEfQ
	 CH07oo0TtQP8+MBaYDyHl9jP8UWW+pYuLx1o1DV3CCQXKBdM0jXLFzWNdqCEw9EBdH
	 VUFLGwGh9HGN+u/DLoU7aMKM4k84LW7j2BA9uoU6+5CxYM3R0moyQquGk7DiNKROR8
	 CJSXOE+u7tPYVoCwo8tusgpRaHXkJhqpxIM+wfxbczcCjH+fX3o8aPNUjKsrKUtNKZ
	 R8YLTxYzfFCNgOCq2X6+Keh7hAaRLdqdzKfxDTrDgIHFZfeFoxPiPdFVF4Ee3BArRU
	 HZ3LB4xf1YZsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69CE941D6C;
	Mon, 30 Jun 2025 23:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 49E8C223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 23:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CD306149A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 23:17:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MtpjZiUatxzS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 23:17:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 200A761491
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 200A761491
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 200A761491
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 23:17:04 +0000 (UTC)
X-CSE-ConnectionGUID: TKwuMqhFRmq0Lk4mc23FhQ==
X-CSE-MsgGUID: +UUle+rST1uMg2eUhF1Skg==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="79006683"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="79006683"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 16:16:35 -0700
X-CSE-ConnectionGUID: gMGPwO/6QPe+iPmI7I6fuA==
X-CSE-MsgGUID: NH9Xe1ItQzqIaVNT/ulVxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="154118893"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 16:16:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 16:16:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 16:16:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.45) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 16:16:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hhmAZP8ybThPHrcWY6bEcusdx5T64ucBABXdbV+3pGX/bb0+l1g/RRIJ9ug/TfrKxYbmfUck/NUHlJ9eUWExAKGvRMGYjLoB3pU1ofJ2BzzVxpjgL3SXhh6ycB3j56tvQ+Eb6tlgCsmaP6N4JhYgFlw825Ssq88NeGpQ10HIfsKbA8/s629T3hoh8YW+sXInNHUhdExQeTCDNavfPh8zrjHIIvQyLs9lMyX7bj9RUKPBnDBJQMhoMOk2Ar1C5ORHHaA8mwAAZ2XAp8erDjpSQJf1mXwjWD33Xbc+Mlbn42HwgdyBoicf4x7FGg+HYqvIoplgdI4TfTKGc/GpQd08+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X2MPXawf7sXb7A6ApIeAz80Yy7QsY0ybzqQGSJiYecI=;
 b=gtgEwFk1zz5hcrhcbGmVzwEqK9PgglIUA0F/05N191TF16nBIPyGzUxcWlqYWQoMPDUO3vE29o6e/rMU7nttz7+mysZjw2aEP4Qpf8XPQpUYyqWjMcrBxHUVYjpCv0/io+mhAsXgXcjyepxLVNTKMFHpNRX1Avr7cslTLyRqXeQ9EiMJ/cZVs8pXV8YWfiAbtOBHTlmPsOYM7lT97jRZdJzuAv16/UDHL2RTEu2yGiu7D+2PvIsegZyH9hVt9ZFwKnzhlqAclrNT/wy7+nIPv8QoTjIGwW3fLcRjG+XccrNhuHwfa0fjJMKxpLMmAJQ1y0cHmr6oM79wOhEpepkLXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7213.namprd11.prod.outlook.com (2603:10b6:8:132::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.32; Mon, 30 Jun
 2025 23:16:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Mon, 30 Jun 2025
 23:16:09 +0000
Message-ID: <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
Date: Mon, 30 Jun 2025 16:16:00 -0700
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
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
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
In-Reply-To: <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mKFiaKkH05W7x0Zhq30tVXnp"
X-ClientProxiedBy: MW4P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7213:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f96a52c-02fc-4558-8119-08ddb82c1570
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UytlUExsbHJUbGlhNmNnb3RKd25ieE05L1dXbkJxU21ZdjY3eTdFeW9xNDVN?=
 =?utf-8?B?a3FpRXBWU0tkMjFNak00RHE1aWJ2VmJ0ZjZwRXpLSVFicEQxQ04veFZwcXVi?=
 =?utf-8?B?YnJEMzZiVFpaOXJyZnhyWVd1TzNXbkJxT0g5UEN2ZmlObWJ3Z0NORE9maXl0?=
 =?utf-8?B?dEdEeDQrUDdqamN3UlhxeU1uNjIzOHBmQzB5K1ZRZmN1YXRyVnJUMElFcWhQ?=
 =?utf-8?B?NXRtNDVNVVgrZU93dzRscWhxWUNxNGRzcU51UzNXWDFNSk52TytCZEFvdGJM?=
 =?utf-8?B?ME1HTEZkTE5jbExrU0NDWWlaZlg4dDAzYVJDMUJMaVhla1RvY1Rtd2lQVm1B?=
 =?utf-8?B?SjJneW03Q0tnVGhnWXM4QU5HTDBEaElJR1J3RDFVZHpCSXk1eW1zU094UUp5?=
 =?utf-8?B?Z04wSHdycjBtV1lmQVhNczVaczFDalVRMHBNTDRTd0s5RDRGVld0U2J1Q1pL?=
 =?utf-8?B?UmJVUXR6U1NHR0hJT2FtZHJQbzFnT04yd0EwcXpXaW9wY3hFQ1F5KzlFMGJG?=
 =?utf-8?B?Y0dpV2w5U0M5N0VoSmQ3LzhPMmJVNHBZZExFMitBSmg4c1liRVpyeHIvdllS?=
 =?utf-8?B?YTJKNkZ3SjFMVGNCd3JlY1B0cGJvWjZyOUV0S1NobmtaYis0SlhmQ0JZcUE1?=
 =?utf-8?B?MEZobTNGbndLUjUzcnpqaXk5VmYwUm9DcC90RWFYeGorUUVDOFdKbTFqOXVq?=
 =?utf-8?B?dm93cHZ2WnJVWloxK3MvUDcxcjNBdVhmaU1zbXlKRVZNN3lzcnJNbEdnNnNj?=
 =?utf-8?B?MVdRdkJ4b24zWU5IeGRpTHhhRUg4ZkFtUWJFclI1ODdtaCtPWldrS2JlTU1i?=
 =?utf-8?B?SjFRSklUVk10ZUFYSVM0R0lGQ1JXYnkxZXBjOWpvaVh2L2hCRWp2ejlhTjJD?=
 =?utf-8?B?TGxZbldhdEFwMUVsc3JpOFBsb1NqckQ3TzVUTktxRS92M0tBUVYrMWhaeUlk?=
 =?utf-8?B?YWVOWllUMGltbG1QdnlCRlIyU2RMbWNFbzRrV09mMldUc0ZPa1hYeHg0SzFa?=
 =?utf-8?B?cDVXYXdSbFl2cHVtVTcwenVoSlNJZ29pZS9xSTh3Q1IvKzI2ZWlDMkJwNXRS?=
 =?utf-8?B?eWlOaGswVEY2SG9EVHZ4blhlbXMrcWRvWWlOSGtCSGwzSHlxMEIvOEVGYVR6?=
 =?utf-8?B?b0l3bGEyL2RZbVhoMzRtYVZpcVJHbmpXNlI3MS8zQ3ZWRE1PZjQ4dzdMSjA5?=
 =?utf-8?B?Qm1wbkpTcFJXTTM0SXBVd2M3WHNlNHNXcDlCTzk2SU9xbDExdVAzR1QrbkZL?=
 =?utf-8?B?QVRQR2Z0UzErd1lkZFYxTDhHZnNLZXYwL1VTc3Q2dHg3SGdwYklGd2hvTGhV?=
 =?utf-8?B?Z2pieVRkZjcycVI1SDVFbjByUmFVNHovUE1iZE1WUXlvSUdOU2VDdnhDZk5F?=
 =?utf-8?B?a3FjNEVuUWR1OTF0ME4rV0o4aCs2NlZoVUozSWZZeE9ZQS9FYkVwZXNnZDFa?=
 =?utf-8?B?eGUyanE3UHdQUEdlMms0YlpSblN4Y0RpZGVSN2NCUzBQUzN0WHJVekVGNlFD?=
 =?utf-8?B?RG9LRjRPSzZoQ05ycUF2STlkdk5pSThuNDkxejQzR2hicE9jbml2eFdLS0NV?=
 =?utf-8?B?SFd1NXk5dGQ3Q0RTcHZMZnRFY3B1MGZLTmJvQUJabmkzTlNPWWZNcDF3UkRQ?=
 =?utf-8?B?VEdpUWJYK1RucUpJSzU5OGN4M0ZHV0t3eWZPdTVOcytoWHBrZEpzd2g5cFZs?=
 =?utf-8?B?Y05SNnJialJndDl4U0xWVUEyTEc3SEp6RWhxd0ZZeFVEeVBCMUZSbFNDaEk3?=
 =?utf-8?B?Q09hdUVRSWxsUkxEeTloWHA1cmdxTFBGNzl1RDFZWkRGK0pTbUJLZlFhSkdD?=
 =?utf-8?B?REYvcDNrL3JoRFF5TW41MVdKcnkvd0lxN1hPQnpQS1dsNGF6VnBjY1BTSWNj?=
 =?utf-8?B?a2xXQlA4Q29wSzZKS2lVdDdLYmJsTnJzaW1HNlhtOGJxVlFNaEMyR3ZZNXFK?=
 =?utf-8?Q?3nRZBS2VJQk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tk5Wbk00cTVyL2dDY21rOVpBYWx4K0NYbkx1clJWcG5BcVRvTVJQVU5kSU1F?=
 =?utf-8?B?UzlkT2lQMStHV01sMnlWZW0zMDM4OXNuYnhGWWI0cy9IYW9CVG1ZVWw2aHRx?=
 =?utf-8?B?MjZqTmxoeHFHemllV0ZqVUk0TnFuTGxJRllVbElLNFJ1RmR1bFcwV0krSVpT?=
 =?utf-8?B?d1lMSUFEOGxyUGtoeHE3Q2tOeUxvRmNPUnF5eWdhcjg4QVZxeGRiS0RqdXRu?=
 =?utf-8?B?dGV1TmNmeXUwZ3RQdkNpZGVyQ2pwdmZFUVhpNy8zRnlwR3c3N2J6VHBCNWZk?=
 =?utf-8?B?NHpiRU9XWXZ4eS9ObGl5dWJEbzhnWUo2VTI5aWRhd0g4ZWZNNVozcHZvTHhh?=
 =?utf-8?B?amJ5RmhZNFB2eFdOUW56dStDc0hCc1hoN25lVUVyQ2RHQUxMYm90V0s3YmpO?=
 =?utf-8?B?YVRJNU90ODhaNWYzMWkzM3p6WHAwdjVydXlyYWw2T29KMHRTNm9CR0haNzFp?=
 =?utf-8?B?eWlpSkhyZVE3dGVuOFpRR0w1c0d2YUVhOTlJZW94V28vcmRlb1AreUd1aWtw?=
 =?utf-8?B?NGF3ZkVQTThRZjFVTG0yWXdPV0w0T3pVVVd5VzFrTXUyeXl5L1JzTXFVdVFw?=
 =?utf-8?B?Y084Zk5YaFZFNjE1TmhDR2VtMi9vZFR0OEZ0SE9TWkp4RFBIanVpOXFBd3Bs?=
 =?utf-8?B?dStGT0UzblEwZlZrQlF5Y0hkZFZVU1VsTjNRVGdxTXJpdk54aXliZS8vN3hu?=
 =?utf-8?B?bDFhdmxYV0RMSXlVSVJuU2dHSWVGNkNDc2N0S2RMVXRWeXZQTEVHZ1grbTc4?=
 =?utf-8?B?a1MvOGwxai9TZ2ZsTXB2cWNNNjMrQmExUkFrUktTR3IxcVpDUnJqOWZtZ29E?=
 =?utf-8?B?aVhkUmZ5QS81NnpmY3N0bkJ3N0I5eTZoSDJkaythd2JpUlY5dVIyNVJtZHRC?=
 =?utf-8?B?c1pCVUNMS1JmU1l0Rkg5RzZBaDFlbW5hRDlLYUd3aGlzQU42aGd5S3ZRa1U3?=
 =?utf-8?B?dUkzOVZFemJ6MlpCVDVBK2dQdmJZWWdKSnZHYytlOGJYeHlMa0I2U0p0dTBG?=
 =?utf-8?B?cTJadXlubVFoZ2JFVWE4Q0Z0SnlpY21Vc01HcGlJNHRhcm5lV0dMKzBpUlly?=
 =?utf-8?B?T3JHcWtKZEw3Tzh3a01DUXIzMEQxbm1PSHFIaGtWUnptcVFaQ0hIclg5eTkz?=
 =?utf-8?B?RWN5bWFOUHUxVkY0YVZMUm1NSW1jZlJFRy9icnNNS0hpYkF6bXRQVnRpVzhY?=
 =?utf-8?B?YkxkYUl0MUR6ZmVGdzhScjZ6VjBuZXZJb3l6WDBocWxSM1pYWU56Z2Q3VEpo?=
 =?utf-8?B?cFVja3NkODhtMTZtNFNtNFZpancvdXBrR3ZpNWY3WG4zZTFtVEdPRVJCYnlv?=
 =?utf-8?B?M0wvYkQ1dTRtd3VhUnVxTmdZZnVVRmU0UG5IY1ZhSGVndFExTytmZFpINGtv?=
 =?utf-8?B?ck0weTFvaldIb2wzVUJuL3M3QWhvUnRKS1Yya2VCbWRtMzh5Njc3SkR5MW1t?=
 =?utf-8?B?WGEzR1BibkIyRGxNWURTZjlSWFVxclFlcE5kMkdBK3krSU1qUncwdVc5VVdk?=
 =?utf-8?B?WitrVTdiRVQ0SmJ5Ky9zTDVJMEsvRVpzY21SNUFhMSt3cFRxQ2ljYkpoYk8x?=
 =?utf-8?B?Y3F1cFNpbjVpeXA2ZnVicVJTelFWaC9BY0h1MHhvdzV6UlhHVnlKdjhmYWEr?=
 =?utf-8?B?MU85ZTNweGtnQVpvOFVDclJwL1ZHN2lZTXpVM250cjZQbU1FVnVnUWJmWjMr?=
 =?utf-8?B?eVY1bjhlR2NTWlkxbDVRM243NlJwWmIrM3BITTlYVjJyWWlqS3RDNm80bGZL?=
 =?utf-8?B?OC9kZ05TbzdaNllZZ1dORzJmbzh5b1dKdkhaR2FTV1djdUFRWTBzRWRSMTJP?=
 =?utf-8?B?NS9jM2JCVmZDcC9URTJ6UHljQWdHdTI3VlRVdmlxVUN3SU9Md3FXWWVucEUr?=
 =?utf-8?B?cmRjSFZtc0ZtWm9ObGVEVXNXVENhQklxaFJkcDh5UHNOMlZDMmlyaXZNNVJF?=
 =?utf-8?B?Y09lQW1HR2RoMlNJejE3UTdUR0pSQkVHaUNvOS9XS3BtelBQaFpZK3hXeGtG?=
 =?utf-8?B?WDJ6Z0pzelhGNmdpN3NtVDRxNWZzLzFXM0FzbzJJZUR2UHhZcy9EMEp3cGJW?=
 =?utf-8?B?Tlp6MlRZUFEwSng1ZUc3M29nUWsvTFhlZHJDMGdkK3MreU9EMkcrdUdMUG81?=
 =?utf-8?B?Tncwb2prUGs0TzllWTFFZEFYL3g1c2QyT0lVNWhEZ0pIVjFKQWZSTFF4Q1dt?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f96a52c-02fc-4558-8119-08ddb82c1570
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 23:16:09.6436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1N9sgv2EJ3w3TiNxeTpzSNmbj2LsomFIlbsnTIJVycWj772lqWEk+CwZVS608DqUzCv2RPCEivtffaAPdzmxC5tpmIZMNHMzCtogiHiyr1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7213
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751325425; x=1782861425;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=DH8oRRak3c1NHZPnB3GQY/QWbeKXaEo+JYDdGLxwweY=;
 b=NWPm85xeAMeuqbmHqolMtPZQZlSDs9ebHG6hOFiOAhqKXm+cqXn/Agme
 D9qZZtdcDzCdwu4Kqg/cHBArutwmtuKFGOW9aXZIY6NOa6quAF7MQcSVu
 xOpEsKBgot0+WIzMRvWAASXTQopmXe0b2afqRXOdACSpRH8IEi+fP29e2
 wInPznqXNvizsl3BUlE+C5pOho4ZmBUt4Qsa1ZHzrp6iaVraPlu0g7/YE
 X8LKVLgB/DhBbDhkcJH/cbyhXXg3WChLASSuKQGjSbzJvcoILocy5YD6O
 sGQ0sDpfPy0CzFwFolPtCOtOjf+9l3bR+DLMwEdRAW4lSRJgoeIIV6cLa
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NWPm85xe
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

--------------mKFiaKkH05W7x0Zhq30tVXnp
Content-Type: multipart/mixed; boundary="------------XLPXuWAulCILASxZSv55Xon3";
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
Message-ID: <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
In-Reply-To: <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>

--------------XLPXuWAulCILASxZSv55Xon3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 6/30/2025 2:56 PM, Jacob Keller wrote:
> Unfortunately it looks like the fix I mentioned has landed in 6.14, so
> its not a fix for your issue (since you mentioned 6.14 has failed
> testing in your system)
>=20
> $ git describe --first-parent --contains --match=3Dv* --exclude=3D*rc*
> 743bbd93cf29f653fae0e1416a31f03231689911
> v6.14~251^2~15^2~2
>=20
> I don't see any other relevant changes since v6.14. I can try to see if=

> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
> systems here.

On my system I see this at boot after loading the ice module from

$ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=3Diec>
      26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ice]
func:ice_get_irq_res
>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:565 [ic=
e] func:ice_init_arfs
>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:397 [ice=
] func:ice_vsi_alloc_ring_stats
>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:416 [ice=
] func:ice_vsi_alloc_ring_stats
>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1398 [ic=
e] func:ice_vsi_alloc_rings
>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1422 [ic=
e] func:ice_vsi_alloc_rings
>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:109 [ic=
e] func:ice_vsi_alloc_q_vector
>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:40 [ic=
e] func:ice_fwlog_alloc_ring_buffs
>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:493 [ic=
e] func:ice_setup_rx_ring
>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:680 [ic=
e] func:ice_alloc_mapped_page

Its about 1GB for the mapped pages. I don't see any increase moment to
moment. I've started an iperf session to simulate some traffic, and I'll
leave this running to see if anything changes overnight.

Is there anything else that you can share about the traffic setup or
otherwise that I could look into?  Your system seems to use ~2.5 x the
buffer size as mine, but that might just be a smaller number of CPUs.

Hopefully I'll get some more results overnight.

Thanks,
Jake

--------------XLPXuWAulCILASxZSv55Xon3--

--------------mKFiaKkH05W7x0Zhq30tVXnp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGMasQUDAAAAAAAKCRBqll0+bw8o6Duq
AQCE4ZDckmJwkQoNTls+j47tPKttHLCNdhJT1sB6GWdIyAD/Qy6bozjDvLe6yZbAJWUee/NQxm98
ohoUmqZV3mqgFws=
=CIfE
-----END PGP SIGNATURE-----

--------------mKFiaKkH05W7x0Zhq30tVXnp--
