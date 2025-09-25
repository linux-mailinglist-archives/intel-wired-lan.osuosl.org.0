Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 865C8BA0CF2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 19:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D4B8414C4;
	Thu, 25 Sep 2025 17:22:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lU8WZNEucutL; Thu, 25 Sep 2025 17:22:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D29B414BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758820945;
	bh=1xp7ClbzUkIM8N/tXSnwOY085gv8k0AyAU6Rub/+Nys=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rX9FH1z0M7g2tXy9mKdh9PAYcEz4+dLYGe/cSxwn6wLiHdokZA7I0pOEiwY1QePOW
	 ea+Fokl/saFiWBH95AsN6pWg/PCeED08w84Kjq/3yM2zyKUpNInOsMK0Q4jHtPA0F0
	 BAaGKjLaj1Goe4O0vgqVYy5EbwtkwKiOM0Lz5LFsA1Ad9qoViFLoqjx4JQj6zV8i0U
	 DrAIRE3aJzp0Rmo1UNmVt+iMEbyDta4HhqHatpN+fkr8IGp47DswZ4gdeWYwX0JBO7
	 d7fGyKiEiVW6TyIfcq6EysFfK/hzwfKGvC07ciNHcTxEN5yYEcw78ZNLKaHzc51Kxr
	 UXXxQndOwBVnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D29B414BE;
	Thu, 25 Sep 2025 17:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A92F12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 17:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0191D400F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 17:22:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id khfNNdT_AH2T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 17:22:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B55040095
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B55040095
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B55040095
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 17:22:23 +0000 (UTC)
X-CSE-ConnectionGUID: CBBnGMlPTWeMvA6pn77dJg==
X-CSE-MsgGUID: WNManDRPS6OR/WRhUUNZOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="61259860"
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; 
 d="asc'?scan'208";a="61259860"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 10:22:22 -0700
X-CSE-ConnectionGUID: 0WCPHUVPSx6VhHBj19VvQw==
X-CSE-MsgGUID: 5QlWTj3LQj6iBG2nHduGqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; 
 d="asc'?scan'208";a="176518613"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 10:22:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 10:22:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 10:22:21 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 10:22:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YWqfLWU4fT423o84pyRwusZ/vLHAP9+yr4JwAIpBrnve3EtG5JpzmMFb8fhIZFewdzhJUnXb9D3xneubtgfJpVOjKZZhBQt42eu1v62xRTN5TWbqb/2p885uZiBmjUlqNpE2S+n2Yk4gBHbblGNlsjst/bIpaVWTCpx+hJrJ1Jcu1x6E5VIzqXHDqCXu8aimRPAw4Y6irL5tSL4h6xye+5rjvud18jC8FZVN1PM+FS5WJLP2Cqm8BOtFSVdKoJ4XtapghJgDgtD1YKbsAAvZLpiHCfpIY/m4XMrHndLYPg3gt0rD8MyFgUxKtbDESD3hv0CnkXWtQqKgAM2HZ0dilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1xp7ClbzUkIM8N/tXSnwOY085gv8k0AyAU6Rub/+Nys=;
 b=rmMknCWNGhNuh/XIUlXXW4rdRm8o2miiJO3KT34OrNA+IDgPCZlvegn3/wjBv244lF7QbkmKDtuZJUu/CGN09s5r7f9hEziGejc5JX2PnsdzkSr/1LD24TaRN2QnSWqSSti/s8Sn2E1yCZDvouFPJhaV6Y9SQLueiaIzWOiL9hXOQPM3ZndAkGXGg9a8joKI5QFEr+gY4jApi4tPFNM/HSjE7Esl0vriOcO0s22cnv66/MKuzsk2O32BgEAc8KDe6hpiJwDT1qzGtjUo0YdMdDDc4zrgGaDsb9hJcCwnurn+yTzVJBD4T8OQo7jnlJhCF0zfdxelEMKe9zkL3Z0lAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6497.namprd11.prod.outlook.com (2603:10b6:510:1f2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Thu, 25 Sep
 2025 17:22:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 17:22:19 +0000
Message-ID: <182d8f19-aca7-482e-8983-3806ebb837ba@intel.com>
Date: Thu, 25 Sep 2025 10:22:16 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Sitnicki <jakub@cloudflare.com>, Michal Kubiak
 <michal.kubiak@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <larysa.zaremba@intel.com>,
 <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <pmenzel@molgen.mpg.de>, <anthony.l.nguyen@intel.com>
References: <20250925092253.1306476-1-michal.kubiak@intel.com>
 <877bxm4zzk.fsf@cloudflare.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <877bxm4zzk.fsf@cloudflare.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------co8WH5jNKO0IPlHQow4R0VLT"
X-ClientProxiedBy: MW4PR03CA0343.namprd03.prod.outlook.com
 (2603:10b6:303:dc::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB6497:EE_
X-MS-Office365-Filtering-Correlation-Id: 912aaf2c-1967-48d8-9b02-08ddfc5813e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0d0S3NIUWNJOXNLV0VkRlgwWmswY3d0aVdQVit1K3BaODNWZHRqMHQrZ3NS?=
 =?utf-8?B?SlBvUnZjbGhmVGFNNDcvSEdzams4b09FaFdkWjBPcjRxa2I4akpyTzA2MXZC?=
 =?utf-8?B?OERnb2tuaGJTalp3TEpjVzVsdjNHWjJaZStEYmZQZ1lmblBFa3ZNVThCMksy?=
 =?utf-8?B?N1B6N05VM3VsZjVxbDVVYUxzOUM2MFFPQUk2ZFBZekRQQS9TbCtNWFdCaUdl?=
 =?utf-8?B?cTdva3RoQlJSbjZ0MktaL3VuMVZkMXVTZ3drU2NCbmhraTgrMFlnL21tWXBT?=
 =?utf-8?B?MGpEbEl2N0s5aURET2xZdFQ5VW1xOVdXcUphRWFKUnJpRzY2ZDNjVEF1SlAx?=
 =?utf-8?B?WnB2ZUFiYXJjOGcwNTBycG9ldTJDc2p1ZWhNMUZBVUszMEFuUmtjUU5WN1U3?=
 =?utf-8?B?SGl2SmtzL1ltZWlLYXlRa3IyYWZmaGtLaHN3eEpwdHVxYmpKbTNWVm1FSVJD?=
 =?utf-8?B?QS84NGRFV1E0ZThmUDMxaEFKZE1TS0FZWllSY1gwYUg2K1h5ZXliMEltWmd3?=
 =?utf-8?B?UW1CM3o1WkhBVWdWcDRpa3h4Mlo4ZktPSUxEelgrM3B2NEd6YWxoTlhlUGFK?=
 =?utf-8?B?MG12YWtoRlZvNEl2Nzh3VW54YzM0SGV4SDFxQ3d1b2JhbW0vY2VKbk1NMENs?=
 =?utf-8?B?UDh3T3k2MWUzVjNTRXpjNW5vT1R1NkFmUGxyUXZMSDFNTDFidnB0OXZaWFlL?=
 =?utf-8?B?ZEZLaTVUak9YZzJHS1g2UWVEVzB6aEtLeEFvMkQ3SkhlNUZNWnpPUXFGbWNq?=
 =?utf-8?B?T1FBNTgrbVJRVHVXMlc4RGx1OU81V0NsMndaRnJYRlJNUWw4aWJYV05oaXlv?=
 =?utf-8?B?Z2RVWUtZaEtPL0tkV2dNaHA0UFVtSjkraGJNZjNabXdvWXJ6K0M1Vzh1V1U2?=
 =?utf-8?B?Wnd5cDdpTzNndldrV0VQZGFNYWV0TUxPRlY2ZXRWeS9wNURGSnExbEpVSHZG?=
 =?utf-8?B?S09qeDUycGhZK050a210MWNDdVZTWk1HUjdCd0lwNksrcG1lVXJUUnhXbngz?=
 =?utf-8?B?cTlaUU9GUkdDM3BuZDZJSUgwRDd6SXBjdE9xMk9lT2pjbWxiYlNBZHlaclRN?=
 =?utf-8?B?Y2EzelRnWHlLUk0xSDV3QU9XMjkvSDJUS1lVdy82VHJvZUJGTEpVNWViQVZB?=
 =?utf-8?B?L0RENlh5SEl4RUVkVHlSeE5nUE5IYXF4clpCeTlqZGVyWTdZNUkxa0E5NXg0?=
 =?utf-8?B?Y1JUbWNuUVNzcllOUUNtUVo1RU9LSXZlVE9aQWJTc0RnbHViY0FZVkRLYkNq?=
 =?utf-8?B?bjU2UXFGRENoWnNkVDA3MkNRS1ZGTUlOT2V6VUkvcUJTTi9tdkRNYmVJK1Vi?=
 =?utf-8?B?UEQyRVVjMGlCR1Z5K0k3U3NyY1cwSFgyWUN5UlRGMU9kbGYvaUZtOVozKzds?=
 =?utf-8?B?aFpTbVpPVWt0ZVBzbTZid2tYRzVFcmVZM2NKZzZPVnl0cy9KbERqaVJZcFlq?=
 =?utf-8?B?UE1hUUszYW1mZjR5NmNqc2kvK3JneERtUkVuYm9HTmV1dkcxbG1mSXpGMnBv?=
 =?utf-8?B?b3pkTTF4cHFRMThqbnpJN2FOR3VzYTgrQytkemlVVmMyVzAvRHNsY2RtRVZr?=
 =?utf-8?B?NWI5Y3RoVkVRWC9CS3V0dVVIUHRiR3cvN1lMb1R5cHl1cUVudHZubzRlS2lo?=
 =?utf-8?B?bWdJTEJJeUpjdzByQWY1bUlFTm0vbENLc1lsTGt0N3prWGRrUE5XMnROUStn?=
 =?utf-8?B?RlJzUGozOGlIejlZbDA0R1J5T1JWQ2J5aFpvSFgxYy9jek5yUjk4MVgzSlFs?=
 =?utf-8?B?a2JSWDBGUEV5eUJUUDJSaWZURmRzcktTV0VnSi9KSDRxR3BJSFJ1N0x2b1Zh?=
 =?utf-8?B?bDAzWVVqWXBOS3Z1MlV1Sk8zUWxqTFRzZnlnL3NXNkF4K1ZnemphYXVHZW91?=
 =?utf-8?B?WmVaZE4rMmNFN1k5dU9nSldVU01HV2RzRE84QTNyVHEwRHRya1EvNksvbWd4?=
 =?utf-8?Q?euSOSZzajhE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUpiWTZiRSt0bDQyNDV6aFlCOHFudGVYb1c5VDNmTmN6ODdoZTRlRDdFVXQx?=
 =?utf-8?B?bzh4SlM4RHFZQTVuY0VUdklta1UrNG9XUVQwdkRNRUswQ3BqRXQ0OC90WHox?=
 =?utf-8?B?Y3hxczhId2xYeUNhcjZDUThyQzZta1pGa3ByKzB5dTZ1VVJVVmloTllpVHlM?=
 =?utf-8?B?REpDT29JTG9EMWJlRk1HeVpXQWplb3FYRk5rUFI0U2RPd094MGJuQXRQVGhY?=
 =?utf-8?B?am1BZDdVWU1XOVNwaTdHWDVwTnlia1NTRFFna1R2U0RLZzM3Z2tqSmVaRnNu?=
 =?utf-8?B?N3JLeVE2Nlo0QXVWNEZrK0FJSlEwd2FyODVyd2tCUlgvQkExSmNVeEZPMnlH?=
 =?utf-8?B?TWdVSURUR3ovZWFybUtaUnJ0WmU5NGpSVE1LUzc2ZUhkSzVNc3RtcVFGRDY5?=
 =?utf-8?B?dXdQWXFSVm1aZUZJekwxYmppYW96NVZ5akg5d2FSNEtNMXJuVDdZM1M2cmY3?=
 =?utf-8?B?M1FlZjJjNFQwSk5TUkhLaHNvS0lPWDdjMm93c0VqZWMyQUZHa1hzcFByVVNz?=
 =?utf-8?B?Y1RjbmlLY3lERkhnbUpNeWhLV0RzV0ZTQ0lKb2FuVnJWNldYVGhHbUJBaDNt?=
 =?utf-8?B?YnJqTzBVK2lDZDM2VUdVWUtTNHpvSHB1WHFvYzR4Z1JnTzltRFlReWNrNFdZ?=
 =?utf-8?B?VGlBeG1wZlhXTmpjSjkvU2U3c2g0WlRuNUxvazUwdnVsS2NmWm5sYTJQcnBi?=
 =?utf-8?B?a2lkbTk1U0NralhVSFhsWmUzSjRWc08zRVZjZ1lQdzl0UUpaUzRDT1gyTlUy?=
 =?utf-8?B?eVNCQnZYVGl1SnFITWREaDZQRnYzQTdiZFlRSmJHUjRqVEdEMzlqVUdSTUZG?=
 =?utf-8?B?V0ZnMUJiZTliUWxXcHBsRE85MktDVGZCRzNPVFhiaGJxalEvOGRscWV1UWc3?=
 =?utf-8?B?S1c3SVJMRHJXZFZyWW9XMDNrc0VkV1NvL3VybVVrUlBCUzhJQ0tKamluckw5?=
 =?utf-8?B?WURhYU1zTStsRkwvaWhuU2UxUXBES0VNNWhQb2F6ZG9Ydyt6WFpQcXAvNnhj?=
 =?utf-8?B?UDFiNndnUFZRYzlVbThFWGJHajlSZVUvSm5Za2NSa1dqbFI4cWdaSlcvUzFs?=
 =?utf-8?B?WDlMRFBTQWl0MXk2N0hsODNtdEJ1ajBhTy9IZG9HendEeEJIdFd6YWM1eTA1?=
 =?utf-8?B?TS80QUFYSUxBWVB5NVRROHZqV1RwS251YnRQTjhFREJLaGwvNUtSUWNYSTVa?=
 =?utf-8?B?Wk9zYmNmM1hpNmhLZUtoaXg0QlhxVG1Lc2FVd2RBWGRxTTEzQzBPaTBLaStB?=
 =?utf-8?B?eDNQWnk4dkM3Y240NFBkSnNsRzBiZU5ZZTJyRDJvUTdCdTVaam9yV3lTWFRm?=
 =?utf-8?B?L0JxbGtxdG9MYVVJeDV6OHhyN01CZFZMWmFkYmpKbkFwU3RCamlHcnoyanBZ?=
 =?utf-8?B?YkVWQzRtQWM0ajgzeVhoUHhUN3czVlVyTFoxMy9USFYvY1ZWdWY4OEVTOXQz?=
 =?utf-8?B?cWJYcEhCckU5RHgrekhxT1VvMTNhb051UG9aaUhkVjBzRndlV3lBRFA2M1pD?=
 =?utf-8?B?L0lvcFJpalJWSHVuVjc5cDhBN3JFSnQ4V2FQTGFwMU9tcWZJNWZaeDZQSTNs?=
 =?utf-8?B?Z2RVK1BVZ3NiSzFaaTMzUmNZZ3JGZndrZVRPeVZhZ29QVXN2d2I3SVlUem9y?=
 =?utf-8?B?U0E0eUo4bS9QL1FmZ3Q4b2lvUTVUWHo0WmlWUWZGRzVZN2V3VXU1VXpjRTFN?=
 =?utf-8?B?SjBod0ZMRnBYYm9wWnJqZTE3VVg1eWcvRy9XeWl3T2lEZWdyaWpqeGNRRlNN?=
 =?utf-8?B?ejZIQi9iWWF0RXJpRStlZ1ZFVFhSZk9DM01KZzBwMkRYMlFjTDlKQTNBUUZ1?=
 =?utf-8?B?NThvRFllMnhoSkVMOWc0T012THFSZE9KSWF2ZU1CNFVmU0Ivc3BsRVVHQVAw?=
 =?utf-8?B?N0ZQbjRWR3RJekVOWXIxcUZlN0xqelYveUdWazQrdHJrZzRubXNVc2g5WEJR?=
 =?utf-8?B?YkVPQ3BsZ1oxYnZQYWVVQ2hrNk45TjlZakh2bHZrWUxock9CRTN5WXZuUEJ5?=
 =?utf-8?B?bWxlWFRRdXNES3UxczIvTms4ZXk0bVNGdGtKVHB5ckhla1NYV1lVUTJrVDBC?=
 =?utf-8?B?cUE0a3FUMVVDMVcrR2c1T2ZQVHdTaTU1VXhiY241T0tGV1Ryb1l2UlQxejVZ?=
 =?utf-8?B?bHJjaXlMMERrbytKZVUxZEpkekdSd1ZBc1VYemZ0UWdDZG5sTldEcUxta2FM?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 912aaf2c-1967-48d8-9b02-08ddfc5813e3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2025 17:22:18.9907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5MT+8iudkLxV1ZIAQBuUO5x7cnKOGXXGGZ3jbuFCEFgf54108EM+SFgedTtqSJB+O3fr0H+t+U2BCmMPASBAo2F6hBXFFp5WzGaGE6RX/RY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6497
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758820943; x=1790356943;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=XTvPRfLDDg23Go4QnCUPAm5/2k+0uK0ITGnNb3rkKKI=;
 b=gGpISahGAu3v981PqXaQFkXydiXNmWuAtTDYeqMXuH3LRCvgXdWG5sy0
 hT40X7FWBsJv6zQJtNdG1PHIkN1zReDF3d+gV1QI4w1J6ig4u1EGg7Z7A
 Vyx/q1lInYFxg0UKNF5dRONz6AUxDDSy/cN5o1nLncZ9aQZa0DJj83vsN
 4az46boNQcTZhuLN5EDR+mhXsnsZckrjFqDzHfXk7f0yPnJKnKleC9nln
 8pFRwxtct2Diz4gsZ+u0u1gx89UW3dbiRkrcCxXAi/1wAsn9HyrZBdAoV
 8sros3Cg0IckFSerqP9tGOV34ud8EGMhRIVK12masW1EJZL26BNNjwDu+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gGpISahG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice: convert Rx path
 to Page Pool
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

--------------co8WH5jNKO0IPlHQow4R0VLT
Content-Type: multipart/mixed; boundary="------------8VJjCLC8a9eXRWAi9tGtTYG0";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jakub Sitnicki <jakub@cloudflare.com>,
 Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de,
 anthony.l.nguyen@intel.com
Message-ID: <182d8f19-aca7-482e-8983-3806ebb837ba@intel.com>
Subject: Re: [PATCH iwl-next v3 0/3] ice: convert Rx path to Page Pool
References: <20250925092253.1306476-1-michal.kubiak@intel.com>
 <877bxm4zzk.fsf@cloudflare.com>
In-Reply-To: <877bxm4zzk.fsf@cloudflare.com>

--------------8VJjCLC8a9eXRWAi9tGtTYG0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/25/2025 2:56 AM, Jakub Sitnicki wrote:
> On Thu, Sep 25, 2025 at 11:22 AM +02, Michal Kubiak wrote:
>> This series modernizes the Rx path in the ice driver by removing legac=
y
>> code and switching to the Page Pool API. The changes follow the same
>> direction as previously done for the iavf driver, and aim to simplify
>> buffer management, improve maintainability, and prepare for future
>> infrastructure reuse.
>>
>> An important motivation for this work was addressing reports of poor
>> performance in XDP_TX mode when IOMMU is enabled. The legacy Rx model
>> incurred significant overhead due to per-frame DMA mapping, which
>> limited throughput in virtualized environments. This series eliminates=

>> those bottlenecks by adopting Page Pool and bi-directional DMA mapping=
=2E
>>
>> The first patch removes the legacy Rx path, which relied on manual skb=

>> allocation and header copying. This path has become obsolete due to th=
e
>> availability of build_skb() and the increasing complexity of supportin=
g
>> features like XDP and multi-buffer.
>>
>> The second patch drops the page splitting and recycling logic. While
>> once used to optimize memory usage, this logic introduced significant
>> complexity and hotpath overhead. Removing it simplifies the Rx flow an=
d
>> sets the stage for Page Pool adoption.
>>
>> The final patch switches the driver to use the Page Pool and libeth
>> APIs. It also updates the XDP implementation to use libeth_xdp helpers=

>> and optimizes XDP_TX by avoiding per-frame DMA mapping. This results i=
n
>> a significant performance improvement in virtualized environments with=

>> IOMMU enabled (over 5x gain in XDP_TX throughput). In other scenarios,=

>> performance remains on par with the previous implementation.
>>
>> This conversion also aligns with the broader effort to modularize and
>> unify XDP support across Intel Ethernet drivers.
>>
>> Tested on various workloads including netperf and XDP modes (PASS, DRO=
P,
>> TX) with and without IOMMU. No regressions observed.
>=20
> Will we be able to have 256 B of XDP headroom after this conversion?
>=20
> Thanks,
> -jkbs

We should. The queues are configured through libeth, and set the xdp
field if its enabled on that ring:

> @@ -622,8 +589,14 @@ static unsigned int ice_get_frame_sz(struct ice_rx=
_ring *rx_ring)
>   */
>  static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  {
> +	struct libeth_fq fq =3D {
> +		.count		=3D ring->count,
> +		.nid		=3D NUMA_NO_NODE,
> +		.xdp		=3D ice_is_xdp_ena_vsi(ring->vsi),
> +		.buf_len	=3D LIBIE_MAX_RX_BUF_LEN,
> +	};


If .xdp is set, then the libeth Rx configuration reserves
LIBETH_XDP_HEADROOM, which is XDP_PACKET_HEADROOM aligned to
NET_SKB_PAD, + an extra NET_IP_ALIGN, which results in 258 bytes of
headroom reserved.

Thanks,
Jake

--------------8VJjCLC8a9eXRWAi9tGtTYG0--

--------------co8WH5jNKO0IPlHQow4R0VLT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaNV6SAUDAAAAAAAKCRBqll0+bw8o6Dre
AQDOTOPGiS4ETL9lZUbCaDhF1/mHSP0M1k1egyq4JTeBQAEA+eNfKSM6jm7Zi0eoF8D+dizmye9r
vrTgOu1V6Eczcww=
=09l7
-----END PGP SIGNATURE-----

--------------co8WH5jNKO0IPlHQow4R0VLT--
