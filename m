Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 172ACAA0B81
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 14:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C92A960718;
	Tue, 29 Apr 2025 12:24:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g3IMiDCrurnu; Tue, 29 Apr 2025 12:24:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE8E36074D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745929453;
	bh=IlLsOIEDMtArZU93UyUGhQwI784qm474u9GEUhUubAc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JGNTuj6nMz8ha6Ba7mqoPeF2prpXdmzeejkpPlBiRHCHvTLHztnW2JBghN4HDXqdh
	 otpTf5strTPMh1ZefXRgrhvcN9x++oY/+OxzM7CUekavQNRcD7I1v3wRi5eOI+XY8w
	 PeoKHUg1NP1weeddVch9mOXF4asTZywGji7QYetCUq9zR7SMch7LaAR970h1f7K056
	 QhjZUC4NJ8O1EV5a4FrntzkUsNx9/vjN7bEY6e43LkVmOOForpaVhoHfR7qKFOkLoe
	 eBjyc5Y26XCOyOkM0SGYI8XhVvjSxqWDXD9mAY1UV8fbHd6wWZhIu3Ut4Vl9OOiXsf
	 QLP4dKlD/aT4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE8E36074D;
	Tue, 29 Apr 2025 12:24:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C980E1E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 12:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF277814C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 12:24:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C8fUZeakrofO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 12:24:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D479C80D26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D479C80D26
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D479C80D26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 12:24:10 +0000 (UTC)
X-CSE-ConnectionGUID: mf8yAHVRRXyTUBFM6b+9ww==
X-CSE-MsgGUID: GQPseYYZSDiM7PXSHOnmow==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="47640828"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="47640828"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 05:24:10 -0700
X-CSE-ConnectionGUID: 6jEqrhmvQGmjw8+OYZsBvQ==
X-CSE-MsgGUID: DpqthSsGR+2s7IWlrudJ3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="138612132"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 05:24:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 05:24:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 05:24:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 05:24:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T2hpsKJV5jU/51fRJ6DLhAex9X5L6v/QuFcGaV8KpkxJ555JlT+kM6/m3uYhEwo/lr5aG2TYqUH42iGrZrWwnmKm3jPxirxiQyUChYbjIg0Lb1nh0fcArqtEugjisi/qDGbTTEVOiZtX7jbRZNgr0/mhlfiBh/7mprJi/JB7dtLAawyV7MP40myQA8rKM6gQzv6u9PCKOp5aV07g4f7gpe+17Z5JMEOzvkbcgNBXzNFmi1kt4MTrNnVjeKHinascAdOuLfaoEP8tuT9k98WdPKOjFqBeIL1o36ekldbAGIOHgBLDp6tDBA4xX8dwX3KSVS0vUcNvNFqyVsUpz3n8pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IlLsOIEDMtArZU93UyUGhQwI784qm474u9GEUhUubAc=;
 b=Is43xHL3yl21LRv9BJ9BdHqRO0eVsGk/mGIu1WmS7IjVNKDdBKXBiDLW+Pr9KFMZszZFuOB9z/fOUbbfdqhmkO0qqQR3XzRSzZgaq+OoNJQudQJk2I1aMP8WWI+AP7Coee0knVJ2JKQFl+cIjPrYsekod2hcgO5XJQZe+1a7TnLhQnRltF9Ac54leEubkF4awFw3gUl1LARtmbHzhu+j8XhbOP8i0ASkc563b12EzVe7mDCmt/mvUDONyfVYLciCYBq/AHXLpAHIOToU+bXOCeQxX5t+b4tYsR2oQe1FwjC3P8SB9t4zvcIL59ZxXAGHA9inr3ZFUrEJbPnbiHNfkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SN7PR11MB6873.namprd11.prod.outlook.com (2603:10b6:806:2a4::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Tue, 29 Apr
 2025 12:23:25 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%4]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 12:23:25 +0000
Message-ID: <b1c44be8-3a46-4eeb-8dac-362a524a90b0@intel.com>
Date: Tue, 29 Apr 2025 15:23:20 +0300
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Dan Carpenter <dan.carpenter@linaro.org>, <christopher.s.hall@intel.com>
References: <20250422210309.1474002-1-jacob.e.keller@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250422210309.1474002-1-jacob.e.keller@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::10) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SN7PR11MB6873:EE_
X-MS-Office365-Filtering-Correlation-Id: 6adb988f-1737-4afc-f4cc-08dd8718a3c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFZtU01CR1ZMOHc4UjgwUHNYNTVEMnBKb3p0RXdGTlRFcGYrMGFOdmNLV2xE?=
 =?utf-8?B?dXM0N1hiTGc4YVJ4SmJ1Q2Z1MU9TVVU5SEMrK3hBUWN5Zm1DUG02cllpWVF4?=
 =?utf-8?B?S1JVdFdiVkRkQXBMZDNEeXNzVUhLRHFZV0JOeEpCZGpPdExhMUNOQWl2Nm9p?=
 =?utf-8?B?bWV3RGdoM1JLa3ZiMG5CTmd3NGVSbHdIa25ORUNYeG5CY3RLUi94ckx1NnlN?=
 =?utf-8?B?aHF0RjU1cFh1TlA4VDJQcytSL0luUzJuRVhxaHFDdit6eHdSa004S0FENDVV?=
 =?utf-8?B?MlJ5NFU0bkJIVDJxTGhrRlZ4OGFFWHBJbjYrWlhESHFROU9wanNDQi9vUGJN?=
 =?utf-8?B?SVZyNXlLUlI4eXRXUVluZDFObnIrUW5Jd1R3Z3RlT2lJWFlLZWNWa1lsNTVE?=
 =?utf-8?B?SkRMcnVMZitrQjc2RGdmSHMzNm1zelI1Q2JDOHBBSzgrS1A0anVDWmhmL2hy?=
 =?utf-8?B?L0FFNXRneWFERllObndJS25YOGI0ejhpWURUL3loM09adHlKRlVyMXlGWVd1?=
 =?utf-8?B?RXRoMDZJTVJuOHBJT0czQmxPRmUwb1BJL1ZYaDRVYVcyT0hpSTMxMFhoelpm?=
 =?utf-8?B?ZVQvbGVvUkNzanRQQTdGUVRBeUpvVEdTdWkwcEpvKzdNcEVzUitiUExCUG1y?=
 =?utf-8?B?ek5sM0hqd0VWQXVTSUw3VHJXNjdBbkdjNy8rQmRWcW9lREQ5aUgwL1ZUaE80?=
 =?utf-8?B?ZjRUWHZ4YVJzSlNaN1NJNGZEdnl2d2U5b3JrUExNMjNHRHBVZWphYmdvNFZo?=
 =?utf-8?B?Z0R0ay9ucG9EdEo3OE1aYnYyR1BEMDZiM2NIczY4czZJbmp5QVNlbURHbHZS?=
 =?utf-8?B?MmFtM3NIY3pqd2duY1lwUTZiSzB6ckFCblpnNmdnSlVubmhUSnRLL05tOFY4?=
 =?utf-8?B?aXB3NlhYRG9GUHpzWHR4MjczcG0vMDdRSHIvcWVBWmdMc29xcHZCTnB2QVZQ?=
 =?utf-8?B?VHkwNlQzR2NPWTNRWUdhbzltWXNTK1RmVXdydC9FaFczbHlTSVJaK3V5a21s?=
 =?utf-8?B?Y2ROc0trSTM1cG16bjlySkdBUFczeDNtQ1ZpZUNkbXp6Q2ZYKyt5QVQ1NGtz?=
 =?utf-8?B?bGhEWjEvQUFRTmRnMmpHRmErL3NvWkVYRXdCY0R0M0UweDY1d0FxL2dlUlQz?=
 =?utf-8?B?TG9PQmhuUEltS2JiZ3pDSWs2bVovcEtZalY3VFEwTEtFbmpjTHdGTVdLbVlq?=
 =?utf-8?B?VG1UeDJHMEtRQnJWYXFXYWFYY2dqN041ZmM3cEFaVkpzY09LUWoydFFPcGhD?=
 =?utf-8?B?eG03UHhVNUlzb0NOMStCRHlWSWFjNStRU0VRVW9CV1hDWnZ2MHptQzBCV1lN?=
 =?utf-8?B?T1hFd3RCM2tUTnlSbm5QZ1YxQy81NnYwQUkzR3JzU2tiaDR4MGJTWkMvSW9y?=
 =?utf-8?B?Y3dicGVMMEc5SGJtU2Y5VVg0UjZEdm1WV2F1VjU4NG9ZaWVDK3NMU0xOUmpS?=
 =?utf-8?B?Z2FWWWk3aWxGUHdWZDIvZXVtSXkxaDhSTjY3TTJEeEQzMHc5dC9tWU1JMFRy?=
 =?utf-8?B?aXc0OU1GWGxQRUxQV0R1bW92c2pCdmJreHlDci9xRDJOOVFBVlZ3NDdZZkhV?=
 =?utf-8?B?WUtDblpZQnpQWVBEMTZzbTVsYVpDWkoybUVDOXpIcDV4V2NFU01FQXI2MmFi?=
 =?utf-8?B?UlhQNmluakQ4WnZXKzlTaGRaVmcwUmVZZldoRHJvZWtzZzViTW00aEVvaTRP?=
 =?utf-8?B?VC9JYjA3V1RpbjZxWC8xb2VHbmE1dVlXZU1hUGZ2ZEVJMGxqQkNGY1BRR25j?=
 =?utf-8?B?Ym5BNzhPeUhDcktCbWpSd05zUHVKbzdSanNTV3BqS0NXUkpzanZNSXJNZUdY?=
 =?utf-8?B?ZGNkNDd1VzE3aUNqdDRDNTk5N2tVWXdJdGFGVnlkQTNKdFRPK3VXazFzUWZQ?=
 =?utf-8?Q?2aTp8AZzbBrP1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTVHV3JWL2xmWllpa01nd3VMN3ZUOFM4RjhJTGQ0Nnp0UEZtOTdrdHJKWEx5?=
 =?utf-8?B?TmpiYjFGSXJnVzRaVERaT3hHMVVuV2RUZkkxMGJDQlBXWkZsb1FhQ3p4R0Fy?=
 =?utf-8?B?NDNlN0hHdG4wNW1YT1p0aWZNbTlQSFZLdFRLT3ZFS3A1UStWVXRaTU9jRW84?=
 =?utf-8?B?MnE0RktjZUlVLzZJd2xZVTFuWjVtYUpRNjBFQ005UDRlZFl4MWFxWHFRYk01?=
 =?utf-8?B?MmJVMDFCREMwVkNmelZwOEJmOWl2WHBIYmRZZjBSQVcxYUFlNnc4cFVrQ2FP?=
 =?utf-8?B?eVB2Qzk2VjJDTG1nR1pJWVdZc3pIMUVkMlpOOFhXbkVPQVRjYUdEUkZad1Nm?=
 =?utf-8?B?VUlnZVhvZFMwZWtTQXcyWWRwOHJmbXQzZGpvREx2MktUTXVCNS9CSG11akU0?=
 =?utf-8?B?b1lPbTFkSHJxRzRFWXJpMEdTY2I5MlBVeVo5WEM3T25VUmRHU0tvS1ZqOHRQ?=
 =?utf-8?B?a2dPazI3Z2RWUzFUcHVIc2dPODJjSzZXN2x6bUZoUFZZVm14WWVSSHcwam5u?=
 =?utf-8?B?MGZacGRraW5QRmgzMHQyL2R3ejF2eklZa2lrbmxnYzBwUS9xYlNJTmFNeEFh?=
 =?utf-8?B?V1V1aVJ5M0hwK1lRd0pTd0lmSFBhVDRuTElBWXV1UVZlbU1aaUJGZFN3c0k2?=
 =?utf-8?B?TFprQWIrMXRtYk4yb0JiQXlGK05uWWhhdXJoZmpCWDVna2dqZ2dWeGt3RGJF?=
 =?utf-8?B?RDlqekRBTTZwZ3grYTAzZndKaWRuYVg3VFZycjlLelNQc0tZdTYvS2FYcUd5?=
 =?utf-8?B?MGM2OUJwMFArb3Zmbk1nWVVZOVU1UWtSL09KQTJKdXNmVDZ0UGo0VitTR1pk?=
 =?utf-8?B?dHAvSGxQR0ljaVo3OWtqQi9XS1dWR2hFemdwbitnMEsrZ0g3d2dkb2tyaWJu?=
 =?utf-8?B?MFMzdWtaU2hWL2QwejZzUVFIZnZMNTlHdGI4WGppQkswamJsRlRDUjJQMXFV?=
 =?utf-8?B?VXF3aFB1OG0xR1dkMVpSa0d1Tzd3VndFaElpNGYrdlFBWE1pTVlNTWl2eGsx?=
 =?utf-8?B?UnhWMkkzWmVFU1pUV04zRTZIUkwwS3NSZ01DNmNHZ2JlUFZnWkhkYWtFKzhU?=
 =?utf-8?B?UTYvRGZkVEVrcVU4RkZYakxSayt4RUFWS1dnUVNtSkdRWk11TU9sSS85RUd0?=
 =?utf-8?B?dUVBTU5EOTlXL3VySzR1SDFDZkNBMmIxVlBHaEVCejhSMVdoS09aamo2QVQz?=
 =?utf-8?B?Z3dZYUo0TU83NFFqNmc2d1F4eVFpTWIxbEE2Z1MvMnBMeFFlcDNzWVl2ZjBy?=
 =?utf-8?B?NTdWa0xrUHB5SU9pY3Jqc1BMSDJYbThWZ25iMm9xRE5oZDlvcVJPZFVBa1FD?=
 =?utf-8?B?SWw4YndTbkVVU2todUtrUHZCcUY5WVFxTDBzallvRVVEK3pPN1M4SmpzSHhZ?=
 =?utf-8?B?OFp1dW1VY3hBMTE4dGxBL2R2TStJVHpJU3ZxTmxsOFIrN2ZZZVBYek5uRUZu?=
 =?utf-8?B?cEVOVjNRRDdnK281OWJHaFBCNlFLSjVQSHA3R2hsejEzRjJMeGFTSUw1UHFW?=
 =?utf-8?B?Z0VCWGx6NkE2dHhUZEFmZy94UGpsbC9EZGR1U1EwTTFWZTlTYlYzL1JDejJO?=
 =?utf-8?B?OGZVVDdJengrMVdSaDhHR3gvdFZ4WTEyMmZIR2R1VnVSRmhGS3c0MU9rM1Fz?=
 =?utf-8?B?MGMvQ2o4K1dUSHJxMUU5SFdBb09uTTJlaEI5Ni9qRlNiaExvSzR6cXpBb0tq?=
 =?utf-8?B?eHBpREpQenU1cmRaWUNGck1pbEgxdkV6NnJVaENQTDdhMTYyMXFOL0xQamxm?=
 =?utf-8?B?R2h0RDdLODlwZGp4NUIyelN2MC9jbTE0TkxLajc3TlZJYUpkUnF6bXlRWHVi?=
 =?utf-8?B?SUNYWlI4Wi9lUVhzRmJNZitBWDhBdmRjZExISUx2eWsrejRqNTJ5Wk5xOTdm?=
 =?utf-8?B?eEdJUTB5ekxhQlVHbWg5bXpVK3NuWFdHNlZXdGh0QVIveGxwVkhJSHIwT1E5?=
 =?utf-8?B?aGVUclB4NFNDb1FHMnc1RXFYTGZ6cVRIc3E3MGxwL0I5WkFTUUZLRTNnVVBi?=
 =?utf-8?B?Nkw2cVN3enRZUTBDK2VKSU9pb2lQQ2dpNkp6Vk14cTdxY2pjZ3ZkRHJlRko3?=
 =?utf-8?B?dndXb1g5amNGemF3UjlwcFlKTTFTVnVVNHNOLzEyOGxaL0RTZnBXQXpzS1pi?=
 =?utf-8?B?a2xhZXg5KzI0bGsrY0EyTmxEWG9FYXh6eXpydXVraDFQS0JFOUtBM3BFS0pZ?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6adb988f-1737-4afc-f4cc-08dd8718a3c4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 12:23:25.7448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4mQuZ/+RFfwl54Mfn4sfsnJG/6QNq+tRKcW1VESazOMIdTdxq08N/bC8my6Lyou+gwjB/GXGVI2tSuwcAYR5Jo7/wQczIGzt2cxkLxbN8KA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745929451; x=1777465451;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sC3EJg19KXVFkzjddsFoUdRDnAJsBo4T+B9Angh1iLw=;
 b=Xh3BaTtpqoyxO20F0OdZJ7YM+/+hstSiKC2LnKBVF1beK6eIsXhTTCfH
 DMRCE8mOywkmMSJQ+12e3ojG6Yb9BlYMbvi01jqZA7NiPuuIO3fMlhs2x
 OJ5fbahsCRiWVZVTqN0dSAimLWZWSeYky/FeqUgWoBe5bHNP5xBcxi0rU
 HO3+dxxuIi6XYJeTpRXNfcXxRtTcbLjq31zIF1cOZEFRWkt4rWhn8Zvv9
 u7idhYry5JGWPcsQAbktkLxOEnqjjIfzzoDuB5XAwmx2SRikJUae2wTD5
 iFkRz95U/lsSoD9H+HgZjgj02Tol7+qm1LRtAP2I+AGI6uNklQ96v79kQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xh3BaTtp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net] igc: fix lock order in igc_ptp_reset
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

On 23/04/2025 0:03, Jacob Keller wrote:
> Commit 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous PTM
> transactions") added a new mutex to protect concurrent PTM transactions.
> This lock is acquired in igc_ptp_reset() in order to ensure the PTM
> registers are properly disabled after a device reset.
> 
> The flow where the lock is acquired already holds a spinlock, so acquiring
> a mutex leads to a sleep-while-locking bug, reported both by smatch,
> and the kernel test robot.
> 
> The critical section in igc_ptp_reset() does correctly use the
> readx_poll_timeout_atomic variants, but the standard PTM flow uses regular
> sleeping variants. This makes converting the mutex to a spinlock a bit
> tricky.
> 
> Instead, re-order the locking in igc_ptp_reset. Acquire the mutex first,
> and then the tmreg_lock spinlock. This is safe because there is no other
> ordering dependency on these locks, as this is the only place where both
> locks were acquired simultaneously. Indeed, any other flow acquiring locks
> in that order would be wrong regardless.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Fixes: 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous PTM transactions")
> Link: https://lore.kernel.org/intel-wired-lan/Z_-P-Hc1yxcw0lTB@stanley.mountain/
> Link: https://lore.kernel.org/intel-wired-lan/202504211511.f7738f5d-lkp@intel.com/T/#u
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
