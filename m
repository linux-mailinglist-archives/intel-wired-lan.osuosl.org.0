Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B0ABC2BFB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 23:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E87140B57;
	Tue,  7 Oct 2025 21:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iAZoMbu-Q_tX; Tue,  7 Oct 2025 21:29:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AA1B40B4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759872582;
	bh=c1MVHs33iF9g556+6GyuILW+ds7NBJrVhpulhNQxnf8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R4UiwiRaNRL5Wk8JxLrz5RIy6jmHOMTqmImKXBYDxpu05xjmUAW2DeT/cGQX0rKOH
	 d8VinagPyfP7GsOfQvjQFEs4vOhabwOK/vF4RuJ6nAOg8qUw0RPIrLmf2yWisihgrF
	 0qogUJvVEirYk/8XfWATQLCUPr0cYE4JXfwou2/5QZPKiz5qgZmxOebAVkLQmAjPK9
	 rjt8FNyU6GgfCqyx4P/IW10ilsEIvQNmYwDoFZ6tZsUtXeXMvofJOx25Tk2Fr6gzDC
	 AZji+87rYP1dwHPyg+LwZx0PGssn4hajG4T26W+N+fBoLwEqnrBFsIhygfhTDtV+xY
	 kACFbcyT48wPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AA1B40B4F;
	Tue,  7 Oct 2025 21:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 08DD7226
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 21:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E378940B57
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 21:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Th347a7eD4Nq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 21:29:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 62E9040B53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62E9040B53
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62E9040B53
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 21:29:38 +0000 (UTC)
X-CSE-ConnectionGUID: k4S0IZ/fTMKPTTMIz5vzBg==
X-CSE-MsgGUID: vdJX+aWLRqa0Gl35r1jEkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="72324696"
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; 
 d="asc'?scan'208";a="72324696"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:29:38 -0700
X-CSE-ConnectionGUID: PAh45bOsTOObYwulx8nemA==
X-CSE-MsgGUID: 1cq4hCT/TPWd7fN0Jt0ZzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; 
 d="asc'?scan'208";a="184307863"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:29:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 14:29:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 14:29:36 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.66)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 14:29:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Akiy09uEsUjcR6JiAEEMCEtBcOTH8MucGVQGji0yMnxdjryp0N7/J3+dm0i6U5Fwx1AQE4eWPxIIqDFydimmPYmtb7FWw5phuW13IworLll6GW6N812a6Ii3qmHUDBxNNQ7qTSSBLxdL4/6EIBx1KLEw/TH3AQ4Pht7f5fHuQ6nkM2LxsJJ/NpzLx77i1lZphMpb1ti++XK9uOrkI4uVBttR+MiAVXEJn8pLs3Yd7RH+LIfATrzXrix5kxXZm1hN52JDtT4XY/uSgXkIKlnFKKo3/TSWJt6sMvzQw7649uzs0c7AsZlVdBT/WwQwEJJMYGZz/5xHtiADDNRuWHprTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1MVHs33iF9g556+6GyuILW+ds7NBJrVhpulhNQxnf8=;
 b=baFBVqDh7h46raZrTbfOrRk95k7ynzVK7W253bocxxBc4156IEJFLYiQw3vd5+hfF1AH4insBPaRWQlWh+2itCqTBz63xW+Y6ESYp9G+9FH52es8cNU16YJsac0MrLLOu6P5xiZXP0G8hBmAdODRmEXRjzrQhW/ddd3B2tF4/gXnLWwZH3EEfA83I3NQy/Pw3w4IzkY2VXjHhDTdho8BJPbyNOq2TH5vcdFsCKEZTq6EcKhF1CVLK7Oo9Yx8zyh5KWq026QXCc0IUMJl1wNqS2jD0+4LU21hlMvR4herEKgGuBtbF2uAUdRwYLIbatAeLA+TD6xXzRn8gMR9/H7+ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB8206.namprd11.prod.outlook.com (2603:10b6:8:166::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 21:29:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9182.017; Tue, 7 Oct 2025
 21:29:29 +0000
Message-ID: <5b62fad1-d325-4169-a34a-4bab4dcf198a@intel.com>
Date: Tue, 7 Oct 2025 14:29:27 -0700
User-Agent: Mozilla Thunderbird
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
 <eb18f157-843e-4168-8d66-7602611b61b3@intel.com>
 <IA1PR11MB6194AE9A51693D9AC3E3E534DDE0A@IA1PR11MB6194.namprd11.prod.outlook.com>
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
In-Reply-To: <IA1PR11MB6194AE9A51693D9AC3E3E534DDE0A@IA1PR11MB6194.namprd11.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VNaqYx0ulS6sdfCRWhtfq5Aj"
X-ClientProxiedBy: SJ0PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:a03:333::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB8206:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c996b8b-c01f-4908-cd57-08de05e898fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3RPZmNGei9tWENSMktOZW1zY1BmYVhBN2xWU3RVQ0FxWU5ybzMxSTZKa2F0?=
 =?utf-8?B?R1Y0bHRyVGlXQkRTSmpacjlzRDNvSHlxV0x2RnZtdXFNcXh5WkpGVlBVdEpp?=
 =?utf-8?B?cnhOK3VzOXpvTS9hdHZOa3JoVlQ4M0JZelpvSWQ1aDd1RVArbzRpMTlvUUow?=
 =?utf-8?B?SERzODg4dGR6VE9NNzZyR3ZiaC9TT3ZQenkrWUp0UnpaQ1ZSbG1EMWlYUU5q?=
 =?utf-8?B?N2tCU0tXZjd5U0MrZkZSYnhmRmpSdkpTdlZxUFVtL1JnZU1OUG56UFpwdUJV?=
 =?utf-8?B?b0VXaHJzSlYyS0RPeU1uZE9vdGgvbHVoTExnWElIT1BqNmVRYXFHUjR5aUZr?=
 =?utf-8?B?a3BVSXZBTGNJdnhOZjhPalUvcGIrek5FTkVObnBkVlg3bk5wSENRMlVjczE0?=
 =?utf-8?B?ajg0d1hacVhOcFRQQ3p2SGVCZS84Y3hVeit5VmxIcERZSDQ1N0VWVFFPd2cw?=
 =?utf-8?B?S1lOR3VyaENFamhtUXJMSG1SdTVyTnhpd21SUk1IaUM3b2lkRmtHMUpkeHVi?=
 =?utf-8?B?QWtDU0dpelpkdE4xQ3BJV2FGUUhIb2gxOGFNYkc4SUVGdDladkxaUFpBaGRW?=
 =?utf-8?B?VHNQZGtMeDQ5NlpZS0trVE0yZ0FUZm1jb2dRZGRUOWhhK1hiWGdUd3RYeS9J?=
 =?utf-8?B?QzVVTXQ0dXc2ZU5wcXdGSDN2Q284dlprdm1IR3ZSNVpJOEpnd1d5bnJsenl5?=
 =?utf-8?B?eDIyYnJTc1d4UkZBV0k3WmNlNkFZUENyT1NuRVBFZlFFdWp5d1FjSjhEaUxl?=
 =?utf-8?B?NS9jWHNkOFVGRXovaGpFNE1ZeTRtZzJVa3FBMUxVZ002dmpjaUJjZG1lbVNI?=
 =?utf-8?B?OUZDMnFpMHZmS1BtWXJ5YnV5WngyOVl1RmFGUWlGcitKYlo5S29DeFJqSmdY?=
 =?utf-8?B?TFdjdSttbWF4NmY2a0RBSTBVbVRNRHBnaUxrLys4ZytqaEh3empBbjJOTURk?=
 =?utf-8?B?MkU5a1RKVVBUZkZ6Y1FqcHd4UW5UTTRINVkrNThhRE1zNnlOUCsvNjgzYjEw?=
 =?utf-8?B?bDFwVGJlV3dGTndhZHl4a2tUWFZyT05QZ3NnU3hXWHJHRXR5V056aWEwdnpR?=
 =?utf-8?B?L1p3WElRVndROGUyVXBlSE5WNmV2a3dCeG5UMEJXc2UyYy9CbmFnOXBhSGF0?=
 =?utf-8?B?WHlNWWg4QTFTbjdNekZRaGZLRVFRdnM0blFzSFZuMDFRQjNidUhkN0k5Tisz?=
 =?utf-8?B?VGFPTFFvTmRCYjBRdzc1SzVtTmdyUnQ0SXZIOFZiSEpXakgyaHNSd0JjTm1r?=
 =?utf-8?B?THdVVVU2aUxqamk4WmNIQW1XeDlPMkRTTnB5RjYzWWlWNDlIM0REcVhxTUVO?=
 =?utf-8?B?a2dsRkhIQ1ByMlk0MzJzWmlpWWVWT3dRa09XOUZvNWlxZUVDSWtZYjFYMHFq?=
 =?utf-8?B?K0FXc0NvdlJrUTlOQ0VsV0NwWVZGN0ljVVV6R1ZTb3FFYnl5VHJDY2VYdy9D?=
 =?utf-8?B?ZlR5R0wrVW1FcDZFeFdiTml3Wmw2bEtBVWEyT21rNG9jWCt2T04rNDlqR2FE?=
 =?utf-8?B?azJMMkRIK0lrM20wVWRrcHpXNlgzTkNNVFdLQ01jdWo5MUF3d1M3ekJSUUVt?=
 =?utf-8?B?c2M1NENXdDdPWTJhL1RjdzlEbFJ6YmVzdi9jbGN4VEVVNXJzZWthRktRWUtx?=
 =?utf-8?B?Mjcyc2x2b3ZMZ1JuTk5PdDdaR3BGYjlYQ3FCK3BCYmg2TXlsdFdYNnJPOS9k?=
 =?utf-8?B?K0lMRVcxbUFDeWpQWGc3eVFCWGhMOVJHWjdlSjZkWU1iMElBczZWaEkrV0lz?=
 =?utf-8?B?VEZQckhKalFoVlR4eXpPbmVFWW9NQnBQM1VqdDJvVTBSbElyL3IvNjZGMGox?=
 =?utf-8?B?azNXRURERVBQemhmSEtwSnlmdVZZTk5MWGNYVnBqQjJ3aFhRMDY1ZjBkaFJF?=
 =?utf-8?B?dWZXU3RIMFZzbnQ0Z0lqNzFyYkhyeFMycU1hMUN5ZzY2a0JGUjFoR0lCaWNF?=
 =?utf-8?Q?lx/J+WB01+7pq1Fe350WsPEgDs9DXCfl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDN1YUVZeWVqM3k1R2w3d1VSM2tDdUxXT0pJQTF5ZzJIcnJVTUZQcVh1VGhM?=
 =?utf-8?B?R3Qzb3hUeWxURjhoM3VYZjlsYzZlQzdpYzhvRTlPZ29tNE45R04rbjZtUUZY?=
 =?utf-8?B?VzdEOGk1UTYwaElBeFE2ZzFjbUt5M3FhWDZGNTF0Z0YwTXM4YjBuTS9HRlJ4?=
 =?utf-8?B?YVRHdkZGSHF2TzFjY2cwOXRhbnJoUEpYeStBVjQ4OTZ6ZmltZGJydVpkUktL?=
 =?utf-8?B?dXVWUWZtV2xRSW9FSWEybzFoSGdqSndTQ21rb1YxS0gwczUyYzVLVjhyZ1Ez?=
 =?utf-8?B?SE04am5Ma2xjckdXZDB3OHBicXM4RDExWlk0YVlReUpHd2lwckdUSHdXNHdu?=
 =?utf-8?B?YXpmTlR0RFJNdUt5enhINU9wZmw5NHl6blhyalJ5aEUzVm5VTitYVEJsbGQ2?=
 =?utf-8?B?bkVoUDNTbU5QS2ZyZlV2SUIwYkFtZHVCRCtEeWhJL0piaUI1ZDBrWUtZOGE4?=
 =?utf-8?B?UkRONVErNjV4TDFVVmN5WDFSVXhzbENTR2FWS09mVnNkbkx3OTE5MDFzUFdV?=
 =?utf-8?B?MUZMUWVkanY4Q1NTTW15VHlrQStUdTVYcHMwUjQvM1ZrZ3NFZHBFeTJyYzJM?=
 =?utf-8?B?cFZVKzRjcXBIbzArdW1xSUlnM25XZjFOeEdXUGJXRUVPRkVZN2FqK3NxT1Aw?=
 =?utf-8?B?dmp0UWNQMW43WEpRaW9oVElpbWxwL3BqejAzNUhTV0JoTE1Ia2lrYlFiNG1x?=
 =?utf-8?B?VW02enM3WGNSWUxEUDdLTjJ3MHJxbHJTNFhjL1Z0cUJDK041UlJOMnJyRmRG?=
 =?utf-8?B?SlB6Wk5rZFIveWgxUGhudm1kbWg4QVVqYmZNOEtvZ2UybmtnaytQbEZacjZt?=
 =?utf-8?B?MGh1VWZDV3BOMStudmZ0QUJoenU1NzJqTWlIQmtkWmRCZ2Z6bFlxdDBrbHpF?=
 =?utf-8?B?TlZRQUZaOUJ2ZGM1NHJsbUVuNVRRazhuWVc0SG5VR2NUN3JROHZZTnhhelJj?=
 =?utf-8?B?WU8xK3Q3Y28vZk5ZTGVGc3hSQUlEdTZsZWhLNU41K1RVeWNEWlRDQng4Ti9M?=
 =?utf-8?B?aTZsN09xWlNtOHB2OC93OWRvMDNRSjZwZlZHUkJZKzU1TmNJWnZYanZtbG1N?=
 =?utf-8?B?c2h1TnlIQllSNm9KcUNhckRselFTQmZkZTJIUnE4Ym4xcTk2T0YzUnRZdkM0?=
 =?utf-8?B?UkZRMXVQbU1rQTlweEgwUi95WWlOMXFPcXNDOHIxU1VlSFNLcGNRNHA0VG1m?=
 =?utf-8?B?SnRJVmxUbHFaV0cyQkthbXFaaEdINHBSanN3SncwTVpTU3pnRWZ5S1dWaVhJ?=
 =?utf-8?B?MzBRSkNYZ3FsdGNmVmhjWTl6T3daNHErT0ZvMTh2N3JCcm15TzhkSkRBWnp4?=
 =?utf-8?B?OGZOTHB0VmVUbThJUWR3aVNacUJUSGpxMFJJTXhMeGtNcndmVTFxV1lJcnJN?=
 =?utf-8?B?Y1dFd2JBS3NCWFpWeGxwSWlBWE04NXpxSGhQbHJJUHUreTFLOHJuWmFOazMx?=
 =?utf-8?B?VWlSek5pY3RYa1Zmb1JOSzhFNjFwTFpNbmRVNVVoZjZ1eHhOUHdtaUZOWHFs?=
 =?utf-8?B?VU5odTBiVEh0YytXTVdaTGkyK29Ta3VPNXNrVG1SNHUyR2dCSDVLTXRqUUx3?=
 =?utf-8?B?N1k4U0x0d3RlY256TlpUN1lqM0o5TFBla3BpSDhXMzQ4WkNER2Vjb0JaaDhF?=
 =?utf-8?B?UkhsNktFeW82V3VFMGlhQzJ2S1lJZWJ1SE9LYTg0OGw3TTl5ekFoakdKc0Fv?=
 =?utf-8?B?YW5XVnZYaG1tY2krSGp3ZTJqYkV6UGJBTzFJZnZxUmpZK25jL0o2Wmp2UVRH?=
 =?utf-8?B?KzdEck1QTHRBQW5UM1RlWndpcjFpWFBlSWxsWEZTMUJTbGlHcGJBZzVadkUy?=
 =?utf-8?B?MktVQ1V2ZFRnTzMySFVRVVcwNnNVeGRTMjJZc3hCMGRSS1lMbi9OTXIxOWpy?=
 =?utf-8?B?RTVtOVRqdlkybmlwaFppQ09aNUIrbjMzU0ZySHpiazh4Nys1czk0OXZqcVNU?=
 =?utf-8?B?QWprRnJ3SVUzeHdidWxtNlRlTGI1cTA3WjZRMVhYODNZZFBCUmFRMlJ2ajVR?=
 =?utf-8?B?SkJRMTZWU284Q002aDc4RWVQQ2duTnNMbUlzUm91OHErUEZ1dURtWUpaaHBU?=
 =?utf-8?B?OVFDQmgxZTQ4RlZxa00yVTF5MEVxS04ydUptM3MzK3gwRTgvWXF3UEh3MXdw?=
 =?utf-8?B?SHppRitWUVRiWVJLLzAxRWw5Mm9jNVluYzM0Tll2R0FNeFRWdHpFOG53bzUv?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c996b8b-c01f-4908-cd57-08de05e898fd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2025 21:29:29.2586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VqpRiKjEk+vAzdoFjxqlxKFnzOVtG+aXkK80/s1yJ26tcoA10SkPsH5Cnu/6dH42HmMSOanIPSL5ZKP8UwafiHVyEch0ELJHMIWcFC28F8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8206
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759872579; x=1791408579;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=GQTj8NOkad5y3jZNwk4N+Xi2XnTUwXt6ty8PPSKHNtQ=;
 b=iu3mwyS0Em/h99HAuG/bfI480In2EqpAIHCQ8+t0U6xX5mSOyrQlJVpI
 9INIuU73z45Do4G326YCPIqgQh5aT2z5v2HiQDmqw4dltGdzrdLDSxuUY
 3oJVFqb594efxjnfk+y3E3nf8lryYGweLRPwBiS3urkxQWtWMSWNTZ3UG
 AwmIoczXebIIgRC7ge1ud+rawVuxvdlAoNp6EnjGuP4XLOurchlBiVYz7
 nAFOo/l218Rn80YiVmCC1fbkW421g4GrwZNBufE68detYQD2PWZ77K5ZN
 q7PNNJqdcdWfrhDho75rtJEA3+Qbvir3D2eI8Exu8l0HnfHZ0ByhtExCI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iu3mwyS0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
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

--------------VNaqYx0ulS6sdfCRWhtfq5Aj
Content-Type: multipart/mixed; boundary="------------gauuAQT0tTpoWcj0kJUgMmcx";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Message-ID: <5b62fad1-d325-4169-a34a-4bab4dcf198a@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for PF
 traffic in bonds
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
 <eb18f157-843e-4168-8d66-7602611b61b3@intel.com>
 <IA1PR11MB6194AE9A51693D9AC3E3E534DDE0A@IA1PR11MB6194.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6194AE9A51693D9AC3E3E534DDE0A@IA1PR11MB6194.namprd11.prod.outlook.com>

--------------gauuAQT0tTpoWcj0kJUgMmcx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/7/2025 9:40 AM, Ertman, David M wrote:
>> -----Original Message-----
>> From: Keller, Jacob E <jacob.e.keller@intel.com>
>> Sent: Monday, October 6, 2025 3:59 PM
>> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rule=
s for PF
>> traffic in bonds
>>
>>
>>
>> On 10/3/2025 9:27 AM, Dave Ertman wrote:
>>> When two E8XX interfaces are placed into a bond, and are correctly
>>> configured for supporting SRIOV traffic over the bonded interfaces,
>>> there is a problem with traffic aimed directly at the bond netdev.  B=
y
>>> conjoining both interfaces onto a single switch black in the NIC, all=

>>> unicast and broadcast traffic is being directed to the primary interf=
ace's
>>> set of resources no matter which interface is the active/targeting on=
e.
>>>
>>> To fix this, add a set of rules into the switch block that combines b=
oth
>>> target MAC address and source logical port to direct packets to the
>>> active/targeted VSI.  This change will not touch traffic directed to =
SRIOV
>>> VF targets.
>>>
>>> Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event=

>> handler")
>>> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/ice/ice_lag.c | 101 +++++++++++++++++++++=
++
>>>  drivers/net/ethernet/intel/ice/ice_lag.h |   5 ++
>>>  2 files changed, 106 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>>> index d2576d606e10..7773d5b9bae9 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>> @@ -17,6 +17,7 @@ static const u8 lacp_train_pkt[ICE_TRAIN_PKT_LEN] =3D=
 {
>> 0, 0, 0, 0, 0, 0,
>>>  static const u8 act_act_train_pkt[ICE_TRAIN_PKT_LEN] =3D { 0, 0, 0, =
0, 0, 0,
>>>  							 0, 0, 0, 0, 0, 0,
>>>  							 0, 0, 0, 0 };
>>> +static u8 mac_train_pkt[ICE_TRAIN_PKT_LEN] =3D { 0 };
>>>
>>
>> Is there any way this static global variable could be either allocated=

>> or made part of the LAG structure or something?
>>
>> You're using it as some sort of storage from what I can tell, but I
>> really don't like that its a driver global and open to a lot of
>> potential race conditions.
>>
>> For that matter, its only accessed a couple of times, and each time it=
s
>> used to copy a value into it and then copy that into something else..
>> Can you explain whats going on with that and why it even needs a globa=
l
>> variable like this??
>>
>>>  #define ICE_RECIPE_LEN			64
>>>  #define ICE_LAG_SRIOV_CP_RECIPE		10
>>> @@ -29,6 +30,10 @@ static const u8 ice_lport_rcp[ICE_RECIPE_LEN] =3D =
{
>>>  	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>>>  	0x85, 0, 0x16, 0, 0, 0, 0xff, 0xff, 0x07, 0, 0, 0, 0, 0, 0, 0,
>>>  	0, 0, 0, 0, 0, 0, 0x30 };
>>> +static const u8 ice_pfmac_rcp[ICE_RECIPE_LEN] =3D {
>>> +	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x85, 0, 0x16=
,
>>> +	0x05, 0x06, 0x07, 0xff, 0xff, 0x07, 0x00, 0xff, 0xff, 0xff, 0xff,
>>> +	0xff, 0xff, 0, 0, 0, 0, 0, 0, 0x30 };
>>>
>>>  /**
>>>   * ice_lag_set_primary - set PF LAG state as Primary
>>> @@ -1336,6 +1341,89 @@ ice_lag_reclaim_vf_nodes(struct ice_lag *lag,
>> struct ice_hw *src_hw)
>>>  				ice_lag_reclaim_vf_tc(lag, src_hw, i, tc);
>>>  }
>>>
>>> +/**
>>> + * ice_lag_cfg_pfmac_fltrs
>>> + * @lag: local lag info struct
>>> + * @link: is this a linking action
>>> + *
>>> + * Configure lport/MAC filters for this interfaces PF traffic in the=

>>> + * current interfaces SWID
>>> + */
>>> +static void ice_lag_cfg_pfmac_fltrs(struct ice_lag *lag, bool link)
>>> +{
>>> +	u8 lport =3D lag->pf->hw.port_info->lport;
>>> +	struct ice_sw_rule_lkup_rx_tx *s_rule;
>>> +	struct ice_vsi *vsi =3D lag->pf->vsi[0];
>>> +	struct ice_hw *hw =3D &lag->pf->hw;
>>> +	u16 s_rule_sz;
>>> +	u32 act;
>>> +
>>> +	act =3D ICE_FWD_TO_VSI | ICE_SINGLE_ACT_LAN_ENABLE |
>> ICE_SINGLE_ACT_VALID_BIT |
>>> +		FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M, vsi->vsi_num);
>>> +
>>> +	s_rule_sz =3D ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule,
>> ICE_TRAIN_PKT_LEN);
>>> +	s_rule =3D kzalloc(s_rule_sz, GFP_KERNEL);
>>> +	if (!s_rule) {
>>> +		netdev_warn(lag->netdev, "-ENOMEM error configuring
>> PFMAC filters\n");
>>> +		return;
>>> +	}
>>> +
>>> +	if (link) {
>>> +		u8 broadcast[ETH_ALEN] =3D { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };=

>>> +
>>> +		/* unicast */
>>> +		ether_addr_copy(mac_train_pkt, lag->upper_netdev-
>>> dev_addr);
>>> +		memcpy(s_rule->hdr_data, mac_train_pkt,
>> ICE_TRAIN_PKT_LEN);
>>
>> Here, you copy dev_addr into it, then you copy that back into
>> s_rule->hdr_data...
>>
>>> +		s_rule->recipe_id =3D cpu_to_le16(lag->pfmac_recipe);
>>> +		s_rule->src =3D cpu_to_le16(lport);
>>> +		s_rule->act =3D cpu_to_le32(act);
>>> +		s_rule->hdr_len =3D cpu_to_le16(ICE_TRAIN_PKT_LEN);
>>> +		s_rule->hdr.type =3D
>> cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
>>> +
>>> +		if (ice_aq_sw_rules(hw, s_rule, s_rule_sz, 1,
>>> +				    ice_aqc_opc_add_sw_rules, NULL)) {
>>> +			netdev_warn(lag->netdev, "Error ADDING Unicast
>> PFMAC rule for aggregate\n");
>>> +			goto err_pfmac_free;
>>> +		}
>>> +
>>> +		lag->pfmac_unicst_idx =3D le16_to_cpu(s_rule->index);
>>> +
>>> +		/* broadast */
>>> +		ether_addr_copy(mac_train_pkt, broadcast);
>>> +		memcpy(s_rule->hdr_data, mac_train_pkt,
>> ICE_TRAIN_PKT_LEN);
>>
>> And here, you copy the broadcast into it, and then copy that into the
>> s_rule_hdr_data...
>>
>> But why not just copy directly into the s_rule->hdr_data instead of
>> copying twice? Literally nothing else interacts with mac_train_pkt
>> introduced in this patch, so we needlessly copy, and result in using a=

>> value that could be modified by another thread possibly even on anothe=
r
>> PF since its a global variable...
>>
>> Please fix this.
>=20
>=20
> Yeah - I think you are right.  I originally wrote this following the pa=
ttern already
> Present in the code, but with this packet starting with all zeros there=
 is no need for
> It to be a const.
>=20
> Will rewrite this using a local variable.
>=20
> DaveE

I still don't understand why you can't just do this:

ether_addr_copy(s_rule->hdr_data, broadcast)

and

ether_addr_copy(s_rule->hdr_data, lag->upper_netdev->dev_addr)

without the extra temporary buffer?

The memcpy is using ICE_TRAIN_PKT_LEN.. is that not the same size as the
dev_addr? Is it because ICE_TRAIN_PKT_LEN is 16 bytes, and you're
copying a bunch of zeros over as well?

But why not just memset and then copy the address in?

memset(s_rule->hdr_data, 0, sizeof(s_rule->hdr_data));
ether_addr_copy(s_rule->hdr_data, lag->upper_netdev->dev_addr);

Thanks,
Jake


--------------gauuAQT0tTpoWcj0kJUgMmcx--

--------------VNaqYx0ulS6sdfCRWhtfq5Aj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaOWGNwUDAAAAAAAKCRBqll0+bw8o6Prr
AP9yq/SpSZpGPt7vDNegkm6XyeBv6yG6BraJ2gVC2j6alAEAu6UdYr4vygLC6OygbwDgN/VITf70
WkeeB2BgLQmvEwg=
=BmMb
-----END PGP SIGNATURE-----

--------------VNaqYx0ulS6sdfCRWhtfq5Aj--
