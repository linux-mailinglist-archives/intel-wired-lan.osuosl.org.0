Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B04FFB3257C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Aug 2025 01:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A89740E83;
	Fri, 22 Aug 2025 23:55:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPqGSk6M1mGm; Fri, 22 Aug 2025 23:55:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F01640E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755906947;
	bh=C7cyqyv6LBZyKVU381oPjLRNcsqOa5scGa3JGAFFP8Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xCMigpKkxXqJmiwkgPvregeLFnGn2I/IVuBteQ4CvPlsteERdQb2czR3C4u+JkCmk
	 J4lIhTr2PQRDgaB3x4UZuvcZ+OHvm/oTCzEjCUtwbgf8Skh2Ne0rlomZQdosdWjvcN
	 TAFUiH2MtvgoP58YdMn4qA58eYAqMjdQV++f5qKNlnKg0W0ndDwxADfbjmtEjN4wT7
	 MbNIdg7/5b+2Je04FU0Lc/niUp0ssnfrRTj+pUL92DDupRzKG6kytwNHICoS3+ff4c
	 N1ILKKnOsvvXB7Yvq0APkKpfqL4Qyhw8Gilum3YmEefhHy5N6N+PQf77dA7f7WX2QI
	 UKkH6PCZHdaww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F01640E18;
	Fri, 22 Aug 2025 23:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AA0C843C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 23:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9049D40D4E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 23:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fgo-vdCjQFZ8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 23:55:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AAB0640D4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAB0640D4B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAB0640D4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 23:55:43 +0000 (UTC)
X-CSE-ConnectionGUID: Zbx19L9LQg2wMM1TwaYm5A==
X-CSE-MsgGUID: n4amrYW1RVG8F7/nrjq9oQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="69586021"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="69586021"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 16:55:43 -0700
X-CSE-ConnectionGUID: ytkqt+1xQh2XQqNRYz2fzA==
X-CSE-MsgGUID: GcwQjqVlSxaKfCUF0U59Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="174130421"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 16:55:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 16:55:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 22 Aug 2025 16:55:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.73) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 16:55:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BnbLkQq8i7JU7AW60m6I3JNebwordMGw2B0UNZfKilOJZDXsNgzwuzzCvADu8eM6nNBR4iY9aer+4plQDX3ov6zWp8WoeQAcamD/jm1O7FLN8ATI3hR2vds3LOVn4qP18W2XwtKxUaxxMJSrdSqNQZNBIQEIUkDK85HCpNYFGYV+yUQDEDGc+NDrB1m8sQZz9t6b9szONLKVUTKfrRRDa8BmxnShu9E6EFIQvy2PEelbbtmrxpulgHR1f+t/7g7PFRMtBk/gJ2gQkR5tMvdwhEDPHXebVgW3mLyCvdgpQAVmVueyTuSnwS9jWkdZfqbMTZ2UwQHfANodPZZdLes7AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7cyqyv6LBZyKVU381oPjLRNcsqOa5scGa3JGAFFP8Y=;
 b=Lf54MaD9RxywZFb2rXmn1IJJ3OiscH15Rs8NAFbwZsvliBTZ0LGTuVt1F5gs6jssb/eAw0mB3j8Figxu1Crtksk68MGC5tZaHhM1mR6sL9KKki2v85OqXxlU4Cd0pt9S+WvJprPW6Sj1M8qkCLkgPRv7ckHJA0kh6N4Ji+Sl5nzNws1uG27MiRqt8XjSU687AM89hOF2DdgKxOjJX5Mh/MIMsTGINAxXrh+zpPqOPKUvXcOAjkisqSRHExgUCQWAnPri2oBFzHW2D8glLmtpshCDB9gVC41461mB3OpUSbtKDa84CAvy+iTddAqDpywwspf+Q3vG+u2m91nEY7Mz9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Fri, 22 Aug
 2025 23:55:34 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.014; Fri, 22 Aug 2025
 23:55:34 +0000
Message-ID: <ac94c56c-9b3b-4517-aa3d-c3e857699e0c@intel.com>
Date: Fri, 22 Aug 2025 16:55:32 -0700
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Kurt Kanzenbach
 <kurt@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
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
In-Reply-To: <20250822075200.L8_GUnk_@linutronix.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Z6zl6BvFenBzGNQxov8UN6ee"
X-ClientProxiedBy: MW4PR04CA0096.namprd04.prod.outlook.com
 (2603:10b6:303:83::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB6471:EE_
X-MS-Office365-Filtering-Correlation-Id: 60a6d83d-9f39-4505-4700-08dde1d7629d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHdlb3UvQUt1b2JzNC9nWnJzNnYycTZOSGRlWmJUM0o4YXlkRmtHdmwvTTFr?=
 =?utf-8?B?OVZKdlpOc3N1dkNuNnV4T3BqRXFjeU1qY2pHNU9YdUlDK3pxL29EdFR6V0Vx?=
 =?utf-8?B?UzZHcm1BRytQOXJETzZ4RlJudVM4aWhPUGl3R25mVnNaR2N5azRWbThjSnR2?=
 =?utf-8?B?UXY0Qk1panYwOCtSK2s0anMxQlVuY0dqVTZ0YmRMeHJWODJMVUZOQnNKcUtX?=
 =?utf-8?B?c3JGeStDb0tnTmRiOUZGaWZSL1hqb1pQVTZJWlhza3haNTc0Z2hLUmk4eDJC?=
 =?utf-8?B?T2dpcXdMTHF5dm0zWWZ5YWpNQ3FBTGtuSmVIbEdOUDVzUEszODJJU0pvVGkr?=
 =?utf-8?B?UTVVSXBVU1lnL2hPSi9wQURnTnZvbm1qNHNpOXNtS0hNZWt4MkJwdzB5anli?=
 =?utf-8?B?c2F5eGFMYUFSMlFOZzExUjRCdXlKS1FaM2VxNnJHQUJia3pXaTJtNXdEZEZi?=
 =?utf-8?B?T25jaXZjWHJZdlVzYVNQWEtzdmt4N0VXRkJRaUU0cm04UEJiVThFQWtIaGQx?=
 =?utf-8?B?Y0hYZ00vYUk2ZmxBMWhadS9jQlpHMGlqNGtSMVkzVVUwdFJNSTdKSStNNUhk?=
 =?utf-8?B?b1J6clYrc2ZFTkEwUUNPUHZjcVlvSGFlREkzd2xWeS9ka1hRc0laUkFESFVR?=
 =?utf-8?B?UGlYT05rMFpiQlQ3bGZmN2dwaTFNMzIvV21wNGxQOC93RFJMNjI3K1E0R1Vv?=
 =?utf-8?B?b2h6eTZ0dW02TEZ1WFpMT3A2U2x6UTIzeVkrbFpURHJ3RzRVeHRybFkvUklS?=
 =?utf-8?B?UHpjdzgyVm9YZGZUeXo2cTk1K1FDdElUM2s0UjJJMnptcFZwM2ZDS1czbG44?=
 =?utf-8?B?bTFoTC9UbWRycHVQZDRDWTRWU09IeG1QcDVESkpjUTBxRUpJRWNhekZFR1hH?=
 =?utf-8?B?a3I0MUppUjRGQ2lUUGEvUCtxNDRkc0ZBc2xKMnpYZm0xWnd6TWMxNXFuaXZC?=
 =?utf-8?B?SCtJZGZ0aVdIbVcvcXZ4dW0rVE5SemV5WEtlZmR1UmE3K0FvZzFnblJWdkNu?=
 =?utf-8?B?b243Y2NzQlZ0Mk9nVVQ4c1FiUkJ6SjNMRW9DbG1sVW5hdEQ1eDE4NTIwamxh?=
 =?utf-8?B?d2tYdEVSZnhBUzNobFlhOVJadHZHcU5zK252TE1PRmxZTVhVbWFpRm5PVzdG?=
 =?utf-8?B?dzBqK0tjQjlJdkhETW1UR1pGNEZkNEp3TTVUVGwrQ0JaWWdVVUROR2M0TzdB?=
 =?utf-8?B?ZHdFaUgza3QxSTRzSk5zejBuZWxrWUtpQ1NsMDZvK0dVNk1qTDhnNlE5bkRv?=
 =?utf-8?B?WU9pU3QrZGFuMkNMZHNyaDk1MSsyeG1YY1ZiOEE3QmtIdFAyYWtJR3Z2a2Rr?=
 =?utf-8?B?eVpFbmsyL05RcWE5NlNpWE5QYkxNZDJCa21BcXBXa295c3MwbkkvWmZYUWcx?=
 =?utf-8?B?bVFXSktoUFh2NGkvOFJsMHhVK0dESG5TTllKRzdWNjYzYy9FYXdtZ1VLdmp3?=
 =?utf-8?B?MFhMUFhlMHYwaWM0ODNQaTdyZW02QjdaTU13WHpTUG5EcE5JcG5sTVRXVlNz?=
 =?utf-8?B?cUVJVFFlakcraStmQ0Rxd25UQWE5MWFVaXVYTjZTN3lQSCttMytSMEpoa2tT?=
 =?utf-8?B?dEtPUUw4UFU1MW5wUTdrT01OSXNBWjNRMk5rZ2hhdDduNWpRZXg1Ym5zYWE0?=
 =?utf-8?B?clRPVkxTNnRMYnh1VEs1bFg0emgwbWREeXNBWHZKK2dRam9XVlExUzY1d21O?=
 =?utf-8?B?WXVyT0lZS01XaXhENjgxeGsyelVGSXhvWDdCMnZ2Q1ZXR2ZRQTl0ck4xdDRQ?=
 =?utf-8?B?NHZleFZlMHVhdDRpNGl6SmlBQ1R0dWQrQnF0R1VEb21FWFRwUGpIQUl4d2ZJ?=
 =?utf-8?B?YStwV2dzSCt6Q0JwaHpRZkcvektXMVZwQjU0eGF5QjZVYWNXTllGMDFxcGJM?=
 =?utf-8?B?WHYyVjFFczlJV2cwN3JYVENadkQ4Rmg4ZUFtbEFxdDhYa1ZLSnkxL3ZkVzNa?=
 =?utf-8?Q?ckTAEgtOIxo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzkyNFA2ekVrT1kzTmZjaG4rTm9rM1NKT3BnejFmUUZuWWo4Z09ybWZ5aHJT?=
 =?utf-8?B?dVdCRVN6TDZTWUVUc0U3Wml1MWlNS1ZvTXc5UEZXblg0eTNpTFZUV1dUVjIr?=
 =?utf-8?B?YWR5aENrRGFmdUhlZWpCT2RQL3RFcXRaajNpRGJUd2Q4NjNkVG9UWG01RSs4?=
 =?utf-8?B?aVkyLzZzOUNFVHlNNmRCUHVvckRWd2hrcFRLbExGVDNnM0RDQjhwVHNqQVRp?=
 =?utf-8?B?eW9pemV5bUg2cm9ycDB2U1psTHRXUHRHeTJsTkVOSE9XQlBOTGdob3I0YkVv?=
 =?utf-8?B?bGJocDVSQzlhRk9vMkU1OTJVcFMzczNLMGJsby9aeTlsY1lHRGRwWXBERW9k?=
 =?utf-8?B?TWtnMGl4YktRWHBXNENZNXJXMnlNUlZXbnhhVlUycFVXVG9lZ0tiajlXUHI2?=
 =?utf-8?B?cEk4UWQ5V0c4enJ0cWdwMi8ySnZHYmJWNURQVzUya2JaU1FndGpIakZSdm5o?=
 =?utf-8?B?akhpeXV5TENXUlY0a0F5L3FpQ3FEeXNXRHJLOFhocytHaE5Ra3NRMkFOMXFJ?=
 =?utf-8?B?SXJpZmpZbTBCWTZGRS9TMVlsVjhHV0p3czE4NXBCT2ZEYlUwVnMvQVJydmFS?=
 =?utf-8?B?TllBbUpsVlJMREpYS0NwdDN5b25YNjhwbmhURFYyR0dMQ1lZbks2NFZWV1pm?=
 =?utf-8?B?TGFZbEg4MFF6a0NlL2tUSkgrZ0RqS0N3TVZkeHc1ZXVhQmo3bVg2N0c0dFEx?=
 =?utf-8?B?SFJGeGhFNDNGQ3Q4RGJIYkovZm9MamJPYkZDc0M5Ujk1S3VCMUlWOGZlNUxG?=
 =?utf-8?B?dm84bnkxRUJ2MnVsdHVjV2I5M0NZSzh5U3RKYW16dEMveU9kNXhCWnlLeTll?=
 =?utf-8?B?RitPQmxGam9xTFlDa3BGYmlULzgzQ1R3R2s0YkJhSW01QWUvN1BhRkk2dmVY?=
 =?utf-8?B?Wkk0OVpHb1pnc3h6NFRaYUtnMU5BVGtzbUVMZldYYjRYQ1hXTndZWVRSZjlN?=
 =?utf-8?B?RmlQc1NWbG95UzBxbEd2WHQwWnpKMkdRdjlQSmQwemFKS3g3UjlLendzaUk1?=
 =?utf-8?B?UTVxVW1HU3FMVVdlN01NRFhrTUY1dkduTUs2QzNsWHlvYW9sTUVyN1RqTDlx?=
 =?utf-8?B?ZWxMUlZoNDNaQkJSbDJxRkRvNVpOaGJyM08xcTBFQU9zNmZGTUlpaEk3QkVI?=
 =?utf-8?B?azNubjJjcVNCbU9vbEpONzdPSEhBRlpUamRhc1psMjU0cWpKODI2NHkvY1Nu?=
 =?utf-8?B?d3dqczBxajRwUDFOb0VJa3ZTbGhYM09tZlZ4bmJDbHhGWkxOeFJoUVJ3aFhh?=
 =?utf-8?B?V2lKUzhsbkVMcC9POVIwdVBxQkRVZ1dUTm80ay91U2FjT0xNTk55T0laRFpk?=
 =?utf-8?B?amN4RDBwam9NeXU0ZFl4M0MwcURaTHVNVi9kVVVRSU5HUCt4WHMrSnZrNkt5?=
 =?utf-8?B?WlNaZzlnQ3hXZGhwbWpEOTlXaWZvbDJ0TGF5WVZFQUE0YytyZkhBbGVNUUZl?=
 =?utf-8?B?L1RPaTdWbytoL3BDVHBQZ2cxaFM0SW5TUnNaSGVSdGsvOHU4NmsvRmNqV3BM?=
 =?utf-8?B?UXdReTY0SUN4czIyTTB2SUtaWGhVamtFMUdGdFlvUkUyOXBXRmZQOXZrYlVn?=
 =?utf-8?B?ME9XdlNCNWlhbDZ3STc2OWlZdkFyU0ZhL2lZMnkrRnkyUE52bVFKeWZXUFZQ?=
 =?utf-8?B?RmxTQ1RDOUF2cXlBV2lLL083NGRmOXhCK3FTeS84VzhUN3ZxTmg3OEZtUTRB?=
 =?utf-8?B?bEEyTUxFMy91Rm9MUExXYWhHeXB5OVFqUEI3YzB5VjRUeTJMU1J6d3AyZzgv?=
 =?utf-8?B?eExMbEUyUWhoYnZkTU5SajhhV3l3b202bFRZcW5Jc2VJYUt3eWpXb0pCd2Fi?=
 =?utf-8?B?dWpKUGxsdXdVbTlqUDBDMGNOeU1aZW9SU2I0cWhXa2RRRnBGd1BQNUw3bzR4?=
 =?utf-8?B?aXVVTlFYQXU5U0g0NkRFeDFvbTd3YWtST0Q5TVdtd2xrTzU2aWRqczVtbTVS?=
 =?utf-8?B?Y1JHeVlvKzI1c3FFRFN1UlZ3SDcxSVFKWmFuWUg2SmZWc3Vtem5rVCtGdEhR?=
 =?utf-8?B?UFg1eTFkemVOQXYxSXJ4K3ZTZmxFVTJIWm9MVG02enE5SEE3T3YxOU9uL25X?=
 =?utf-8?B?RXkzRC9TNFB6Z3dDY29vQThCamtaQzBsSklWL2RhUCtlNktZeXA4Vi8yL2ow?=
 =?utf-8?B?NWx0eE1WVjZ4VGc1N0xlZEcrSHdWQmQxTksrZ0pYMzk0c3VQTzlRL2M1S2hv?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60a6d83d-9f39-4505-4700-08dde1d7629d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2025 23:55:34.7465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xwLWGtocKFgrFtLj6YB+QK/Bvgi/ssmDRgHRSot7NmCS/W7EK2Oy1nDRvZm2HNBERnyML/8mBAnhlSsb+0qWLsiTzVZOC/UbwNWTfLkH6i0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755906944; x=1787442944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=x+620eS/W7VWmhL5q+EurgxwxmecnR5PRj5IMl4henY=;
 b=g1r26W30PN0Syha4muPOkzVGeOuUsqEXTgcsBYOQMKqTYP+eeVgioys/
 N0iBcqHfWiT0P6LmCbjE8RSMOadhAQllTnSQx5PoPywrKwZJEh9Ioj0Io
 msR98KonB94C3qxUz2dxT39IY1E+O3vsiEe9Bz6/L0pycCwcwUO4gjEQS
 VV590d7Bz1X0+T/+AZIHd0esqlUjdONRdTAHLq141n2c06l2GB6V2V5Ue
 nTbiBIZuItbrQ7FPAbSZWhK2gwSHBUePKSy5VtfPzNLthjt6FQYkjzJdU
 V5HweNmPEICYfj89qDlk3H2t/IE6wprFm4CHBQM3To2eqnDA9jp076SHb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g1r26W30
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------Z6zl6BvFenBzGNQxov8UN6ee
Content-Type: multipart/mixed; boundary="------------D2p0b1uEAXrUvgKeJudH4buT";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Miroslav Lichvar <mlichvar@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <ac94c56c-9b3b-4517-aa3d-c3e857699e0c@intel.com>
Subject: Re: [PATCH iwl-next v2] igb: Convert Tx timestamping to PTP aux
 worker
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
In-Reply-To: <20250822075200.L8_GUnk_@linutronix.de>

--------------D2p0b1uEAXrUvgKeJudH4buT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/22/2025 12:52 AM, Sebastian Andrzej Siewior wrote:
> On 2025-08-22 09:28:10 [+0200], Kurt Kanzenbach wrote:
>> The current implementation uses schedule_work() which is executed by t=
he
>> system work queue to retrieve Tx timestamps. This increases latency an=
d can
>> lead to timeouts in case of heavy system load.
>>
>> Therefore, switch to the PTP aux worker which can be prioritized and p=
inned
>> according to use case. Tested on Intel i210.
>>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>> Changes in v2:
>> - Switch from IRQ to PTP aux worker due to NTP performance regression =
(Miroslav)
>> - Link to v1: https://lore.kernel.org/r/20250815-igb_irq_ts-v1-1-8c6fc=
0353422@linutronix.de
>=20
> For the i210 it makes sense to read it directly from IRQ avoiding the
> context switch and the delay resulting for it. For the e1000_82576 it
> makes sense to avoid the system workqueue and use a dedicated thread
> which is not CPU bound and could prioritized/ isolated further if
> needed.
> I don't understand *why* reading the TS in IRQ is causing this packet
> loss. This is also what the igc does and the performance improved
> 	afa141583d827 ("igc: Retrieve TX timestamp during interrupt handling")=

>=20
> and here it causes the opposite?
>=20
> Sebastian

Miroslav reported a test using ntpperf which showed a pretty significant
impact for higher rates. It was indeed better for low rates, but was
much worse for high rates.

See the following:

https://lore.kernel.org/all/aKMbekefL4mJ23kW@localhost/

In all cases the use of the thread was better, so this improves the
behavior without regressing in the case of many more packets.

It is unclear exactly why the ntpperf test fails so badly in that case
with the higher rate for i210.

--------------D2p0b1uEAXrUvgKeJudH4buT--

--------------Z6zl6BvFenBzGNQxov8UN6ee
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaKkDdAUDAAAAAAAKCRBqll0+bw8o6FGS
AQCQDaRZXUpV3ve4eqWLRRwT0H+fdst7ueIoPESIPColHQD8CwLV+1wYAztTWfdOo6VxXRThzcyA
AL6245UYZbDyJwk=
=U+tI
-----END PGP SIGNATURE-----

--------------Z6zl6BvFenBzGNQxov8UN6ee--
