Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A944DA066DD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 22:06:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5629D80592;
	Wed,  8 Jan 2025 21:06:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QFv8dAviKK2i; Wed,  8 Jan 2025 21:06:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9226080597
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736370391;
	bh=oN+i5PZb7pUBB+YflJAEND4DpaFNQczMSzJbF/5qIeI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p32I4EMJa1Ji/nVSxfSz+DFCAaJMbaFucTRFv3kMFk32B+tPDr0bam3dcHZlzUiyl
	 Riq5m/cwHjxHEAk7KhIRo+R5dR5Qns+qkXFRY61znuKhymFXXrzzETC7O7oxZY5rLl
	 2OecYfRMV3mxZky5jWZQmBz2vKRKcjmzDEi64UV23TwKAowMkMh0uAWl/y5JNPyJC/
	 h7Tifx0t5kYNcypkgl0elZ+PFqIIC2j4pXPTOv/ZtgESTCzxsucasuwjrkAGZGf44F
	 KW7IcjhbE1xP+o5oKjzW6td+6Guf3PsHHE7vwuI3hiJvs/fDXs1Yp1BMkQYGcScsVH
	 b59YQ0G5v86vQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9226080597;
	Wed,  8 Jan 2025 21:06:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7A317AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 21:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C576D60872
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 21:06:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ialWJNNr_btV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 21:06:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EA21B606A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA21B606A7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA21B606A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 21:06:28 +0000 (UTC)
X-CSE-ConnectionGUID: M/zzXzOOReunMkIxRTnX8g==
X-CSE-MsgGUID: VDDIwPAcR0ish9iN1XTjZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47282981"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="47282981"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 13:06:28 -0800
X-CSE-ConnectionGUID: +sBEKH+BR7q0/PsbgY8VBA==
X-CSE-MsgGUID: nBgVm4GXQ0Otu5SU3oYQpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="103165398"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 13:06:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 13:06:27 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 13:06:27 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 13:06:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bX3nZT2IojVY5GQ+T4q3p7W1ZW0LU5kIWM2zb9RDLpMpAOFH/wziV4ct+ufJY70jrBdcj6W4z3f/HcjJTGhcZ8pF7CSxY6wrlAIAlwzJ1LfFBECozKyaf7xMzc8dwbC06T6hbRJZkD1eFuoKGyAaFvSqTjhMFyNLEh5uxdT7j1HkSKH82N5FgFFc2EiMHI5HiKrcIylKfqITn31543Ajp4larD/G9n7vePbebiqwBIDaV0BcJdVaYgvK0YxyfiFZuZPAaom08uuRlQC5DSM0aNITowFVPp5qKltP+/P9E/APW1WWGxkA/uEZMg1FTMh+3YRMu/EyAQ5b+4T2DaZgsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oN+i5PZb7pUBB+YflJAEND4DpaFNQczMSzJbF/5qIeI=;
 b=PJHLMUiIgBqTpb1b1CUwW3pp0xUcgCmIXlBBTY6j6U2F9i5UyH7EMyuWZq1iIbIOOdaEmqyGY/aEJbwEE4CB6IugdaoPv6SbQTHAIYchOUfc/T0va9Gu2mIsJE+IePa/E72x0F0eRBEidQu+aaMryrxEAXQexJklUtsQyHr/HIjqVx9rkr8NcU3HVYKdJUTz9lKOmp/R+H4pFv76Sbx47T/M98v0a9S1JH/jSZ2+CXICDdkk405aNraHu+8zTyW35aTrq4PrlLBedrWefSBDzVfiKPyWcpcwLpaDsWr8Sxle6U8HXSyhwn9XNTbo8wqrDv/6cI6H123CjFzDAbI7BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB7758.namprd11.prod.outlook.com (2603:10b6:8:101::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Wed, 8 Jan
 2025 21:06:23 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 21:06:23 +0000
Message-ID: <bb5dbf24-ef80-4220-8b07-40eed9ac15ae@intel.com>
Date: Wed, 8 Jan 2025 13:06:20 -0800
User-Agent: Mozilla Thunderbird
To: Haifeng Xu <haifeng.xu@shopee.com>, Edward Cree <ecree.xilinx@gmail.com>, 
 Eric Dumazet <edumazet@google.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
 <0d98fed8-38e3-4118-82c9-26cefeb5ee7a@shopee.com>
 <32775382-9079-4652-9cd5-ff0aa6b5fd9e@intel.com>
 <1ade15b1-f533-4cc6-8522-2d725532e251@shopee.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1ade15b1-f533-4cc6-8522-2d725532e251@shopee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0262.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::27) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB7758:EE_
X-MS-Office365-Filtering-Correlation-Id: 999a074a-28ab-4004-043a-08dd30284ec8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a1pETU1TV09HZmhyWlhoS0swbUlxZjFYa0VyMERETnpqd2xVdUVYWC9rNVVp?=
 =?utf-8?B?L3VjRnBHTlQwL1h5NlhEOENlU0hkMmRiN0JDa1hoNkJqY29XOUtCZCtVMWI3?=
 =?utf-8?B?dS82Q2dGaWlOczFIN093MDdLVUFrMUpSWjB3WVcyZVlHSVJPaFUyc2w1KzJ1?=
 =?utf-8?B?MEREQWFzZW5HTFpDRWVHK2ppL2UzMnRjS2M5bE54MTlBOCttcThURG1SQTR6?=
 =?utf-8?B?WnZKbGsvdXJKWG5YZXQ1MEVVR1c4YVAyZG1VU0pOb0RnckhFUlRidFU5Szdl?=
 =?utf-8?B?VDNZbFI3bzFITzBVdHpvendEZWpKT29WZXBNYVRxRloxc3RuZU8ya3R5V2Nn?=
 =?utf-8?B?RjB1ajhaSGhMSnN4RHdKV0w3QUpDMkZuUEFDeWxoUGJDYkhtb1J4aGJwbEFQ?=
 =?utf-8?B?Z0J1WUovZ1NrSDhSQ0ZZOG1wTEszR3plMTQwaFBPZ3hJQ2JLV1hyaUlSSkxZ?=
 =?utf-8?B?UVdpK0dsdENiZFZWNHVldzNPQ2pLdGpBTmVmbVhpVXFiN1VCanlEeDRGeG5I?=
 =?utf-8?B?NW1PbU9hM1IvVHlHcm4xemJXSXZBNjJYNjBmNDA5TTJHLzlQOWVid1A3ZmMw?=
 =?utf-8?B?U1FISWN6NGR0dGxpVkFCMzhMTitCQi80T0xncCtjZGR5c1FId25TMzh6S21r?=
 =?utf-8?B?eG5MckZaQ0JHRk50OXQ5UFBzVzdLL2RBTXpILzRDTURNNWFSZno5SUdBV01t?=
 =?utf-8?B?cFN1dnlzUkRudXYrTGdOQTFOUGtOK2VETzNBZVl4dFloTzVESmE2K0lSSzc5?=
 =?utf-8?B?Y1l6WUhBRllVcXRNNG9nVzNlZVBGS3NYUTNUVGN6Um1QT3pmajVpWEF2aFh5?=
 =?utf-8?B?M2Q5MDFhRHFGUlBBMUsvWUZrdTA5dys2WVNzL3Q3S3RVaWFUVTNNVXVkaE5T?=
 =?utf-8?B?dDV2cHNzZ0pabnNHbHFWRXBaeC9LK2Q3V0d0Y0hKVFBuclVrSWFPZCsrV3lM?=
 =?utf-8?B?U3VPSS9mVTdLVzl3ZWlNdlBjK2NKa3BieHdmUFBkbmx5REtYdXEvUE5JYjBD?=
 =?utf-8?B?M3ZsdVZmblh6NG5EanBMN0FNbG1Zd1FOQm55aXBMcS9oY0F1N2JlSnAvOTYw?=
 =?utf-8?B?N2hXTGl0YUlCQjJleGpOTWo4a0IvM0JJOWRSbHdheE1Yb3ZySTZqbHo0OHZ5?=
 =?utf-8?B?TU43OEZacVZIT09oT1dwMUtNUXhWVm1xeXFXZi8vTkZTajB3QkNrVGhwNjds?=
 =?utf-8?B?Q0E0ZlowU0hYQm5PZ2x2NU9Oc0lRVW50aVI1K3VxL0JlZUIrNHRIUjBKYkFK?=
 =?utf-8?B?SlkvSE8weG5vTWhKMjA0MklBTWtoc3kyUXRzZnhmbXVncXhmeWZDTXcyOWFG?=
 =?utf-8?B?WkgxRlJQMjhUbzBNL004RitKTnNua0pZU2ZraGRBcndKZXFoektKbmZuM21Z?=
 =?utf-8?B?WHlBaWkwOHJ6OUt2Q3hYeHY5MEE1clM4ZzJZbXFJZ1NBWjVGWUozcFhINmVX?=
 =?utf-8?B?THZLeVRnM1kzR3J2RzJJSmRsekZiaHhyc2d6UTNNSVBCZnhGNFh2VUxOaENy?=
 =?utf-8?B?bTNhdUN1YzlYbjJtem10T3ljQUEzdjQ3ejFjMnlvdUhDbklVYjBWWTFDM3g3?=
 =?utf-8?B?TFZFVmpjZ0JtcExvZ0gvTjZzSjd6anpBQU80cU5HTkJ4N0lOZnM4R2ZQWFRt?=
 =?utf-8?B?bzhRb3gxbkRMeHBVY0tSUDAxdFZoMno4TkIxMk1YZm1hZ250TDhiS2wzbmZx?=
 =?utf-8?B?azdkTDgyTXFQUUE4dlVub1JzUE00NVZTTWVnbG0vc3QyNzdPdHdLdi9sR25T?=
 =?utf-8?B?QWpCZm9zNThvZUlseXB1ZC8rcTBocGdIc3l0eWVYQXp6UXhHRHY4VXdmdE1W?=
 =?utf-8?B?NHIyWjBHbG9USDFJbkV2VTZWcGJCcjllek4ycWlZMDdHbmRHWGhXdHVNbUgz?=
 =?utf-8?Q?sN/a/j9WyuF+n?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHhFaG5yQng3blF6Vll2SE9yVWZManFueWc0NU9nRFRtblJZZnIxTjdFaUwy?=
 =?utf-8?B?WFpheE5TVGkwMFRScnZKYS8zQlk3NGRKTFM0UmdUSVduNUV2azJVVTE0V2Va?=
 =?utf-8?B?Qmg5eDVPMXVGS3FsR3BLR3VEc2lQNWF6WVpSVFN0dnlBd3BlWTRsZWVLY2tz?=
 =?utf-8?B?THZaeWxiNW96aldyOFBXWUVPVE1XQUdlK2lScGxJR2xVaEx5SkZzd3JQbE0z?=
 =?utf-8?B?OUhaUW4yWmtScWdrYkRodjRibVR6NU40TCtiSXJTTlhnakJBMDZaUDByQXdl?=
 =?utf-8?B?WFZLTmlvbW54bTZTbHRpSVdZQU5qMFM1d2ZkU3VPMWhJS3dia0E1M0RXNEJz?=
 =?utf-8?B?a3dWNHpsMG9XdmZSZkpzcU5Sa091My96Q01zcUFnSFQyMVFxckxuRmR3WDVa?=
 =?utf-8?B?c0VpVEN6clRsUm1aN0ZDQUpkbm1RYVo5alg4cVJVUUNwbFJJK016MDBXSmov?=
 =?utf-8?B?VnVkUUZVQ25BY3YwR2FEK1BMN2gwbnN0aGEvYWxoQnpBTEcwLzZpR1A0RUlK?=
 =?utf-8?B?SXB4b0tHRTNVQlFUUXlYdkRJRm13Z3IvQWNVUURaOVVXcTJDaXlpR2M1dWdG?=
 =?utf-8?B?R2FHc2VhQ3lXNmVZNXJNa2RSQk9GSmhzTE16WWZTbU1WMVBtUmd1YmNJejVC?=
 =?utf-8?B?aUxmWTlRTTlsRGtvS3ZUbnFGbGxnVUxHWnFWQnBocndsL0pCZHFoZ3l5OHpp?=
 =?utf-8?B?Tk1tQTRWSlhJZ2VyUysxMmJmMGlPVW01eDg0K0phckt1bHVUeE9tOVV1ZnZH?=
 =?utf-8?B?bEtaSlpjK01pS3I0VlVjWUdoejE4RjNiSURXb0FKYVBCYXg4RVkyMTR0WkpJ?=
 =?utf-8?B?ZFNubmJCaEpVNEp5ZkhPT3NyWGdyUkNVNTBabVVLbVUrSWdvMXZtSWVuZUwv?=
 =?utf-8?B?bFVpaEg0amxEVllqUEY0cWtRbkRWSjNIRHk0b0RDMmFrOFI5QmZaL1ErVCtl?=
 =?utf-8?B?MEdYN2lva2txZXNva1c4SnRRVzl1SmpEbVNBVWxIVkErbHA5YVdRcEhHMEFH?=
 =?utf-8?B?aTlxN09iVjFsWnJieE82UXRKWVJ5SzFWMUFkQkRTS005bUxCaXVuNW1lY2lj?=
 =?utf-8?B?SXFDWEw1RzRPNTJwOEFDMFpoNXU1WUk2RjRudWIxOUhROUxtd1g1d1VEVGRy?=
 =?utf-8?B?eFhBTHlJVTcwR1AyVmxUUEtvYlZiSW54blFjWmNBcmhKYU53dFhucld3ekg4?=
 =?utf-8?B?SGxFVEVUMElFR0lvZ1czck9lbnRwWTFIYkhDTEsrM1FoUW0wazB4Um02VTF1?=
 =?utf-8?B?SVRMeDNaaEZVNmVhbHJLR1J5VW01d3BzYWNHd1VBaE4vc1FBNEdORisrVWtE?=
 =?utf-8?B?QnVuZ3hYMDJ2WXJkL1JydWpxWU51R0M0Z0p2ZXZsV3VxcjBoQUlZR1VIcUtB?=
 =?utf-8?B?Tmowb0Z6ZzRnSEdUeEZtUW1qZjBNT1lzNUFSZ1kyRzBlYjZHNUl1SmNhK1ZG?=
 =?utf-8?B?SU5CM1lsNFFXUlpoMnpVNGpvYmN6dWhQWGk0aGdXNlVJWHRLNjEyWG9KV3c2?=
 =?utf-8?B?bldEZEgyVzcxanAvTHlwLzY3bjViMGRJZkNjR0FmQUs5bG9CUXh3UUJOMVpZ?=
 =?utf-8?B?ZTlKK0Y3MzJHa0pWdUNRUC92SWZ3UjNSVUVnaHNteFFHQkF6dENKWHZVK01O?=
 =?utf-8?B?cXFKcUxKcFNTWThsOS9mTjIrRUlCUHI1ckhLTmkzNzk3YzNHRm0vRkVsVlVk?=
 =?utf-8?B?RzhKQWdzVkhyZlY4UGp6SnlkRFkzMU9ycksrOUU2NW5aV0RaQmJjaGpUK24v?=
 =?utf-8?B?YXJOalE1MFEvNUdqaVBlVWg4R3B2cDhJRkY2cGRsWCtNYVVwNjhwYjBXTm56?=
 =?utf-8?B?azh1S2lGNWZTUmFFSHozWjk2VmNESVF1WWN3ODc1SVlZN0lmVmxSRHVnT2Jz?=
 =?utf-8?B?YmYrV2pqQngzOHFoWHVWWm92cXlwMk4zOEYycDNSaUJ2dG1oSEVOTWxXNGZo?=
 =?utf-8?B?WUZPK05maTEyT2lid3B1S0drcmFEQUpSaURXNnZDcHhjWVQxMmNxNkd1SENo?=
 =?utf-8?B?Q1VSMzR0SGN0SnBROVQ4YlFFVks2ak9HU0Roc2ZNLzJJNTcxNzVqWHhHbEdr?=
 =?utf-8?B?cXRaMGZOeHZPS1dmaGltLzFxRmVGQnR0MTJJRkdXTm85R3VCZEQ3cGhkYlFs?=
 =?utf-8?B?dlowT3JIbEJidUNaMUVqQmRNRkpiMVRoRHlyZ1RzK0syWW9tMUNGQUhuMGhM?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 999a074a-28ab-4004-043a-08dd30284ec8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 21:06:23.6986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IDSmd4ayJaOQuL0Mhsx3fBnuaRluwe5NJ4L8nFyVdZaYJKbLyHt1V2iwCfIgmkVEvwE2yi0e4quzydGs9M1kZ36yKZPvkqFvuwbJXyunO18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7758
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736370389; x=1767906389;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=10kd/EUI7fpivOSjdHQ1nzLWmUJOAV/t5YQ1BBLVZCo=;
 b=oGWJqVpVCdfd6r1XbKvddJeHIHB7WYulY+Q5zntgiA8wBKHLF0G/HXBN
 pyWKS07zLgAbu+Z2l88FBJtojFUtW9G1V0BhYiZFK2wvT5/k38hbWiSSl
 /y/LuGC7wFE3YaNJ54rK04Kl//jtNMmMscucyjlU3lLWwD7BEYf/h8IGY
 Wd0MbD2JlokgExGOQt2nf447A+PGfTVrTzM1o17ZnS0oq4wzmSYIatybo
 5nRGsivJLjETGyek8IW6q0jodyK8WiLUzv+bAiBFj1s3JRtQNk4+/XHIE
 CPFjXYQzLhzTS+GlA9YKw7WuYmnBhQV0kQINaGfbZ/oT61L0d+gBDdwW3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oGWJqVpV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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



On 1/7/2025 7:36 PM, Haifeng Xu wrote:
> 
> 
> On 2025/1/8 01:16, Tony Nguyen wrote:

...

>>
>> What's your ntuple filter setting? If it's off, I suspect it may be the Flow Director ATR (Application Targeting Routing) feature which will utilize all queues. I believe if you turn on ntuple filters this will turn that feature off.
> 
> Yes, our ntuple filter setting is off. After turning on the ntuple filters, I compare the delta of recieved packets,
> only 0~15 rx rings are non-zero, other rx rings are zero.
> 
> If we want to spread the packets across 0~62, how can we tune the NIC setting?
> we have enabled 63 rx queues, irq_affinity and rx-flow-hash, but the 0~15 cpu
> received more packets than others.

As Jakub mentioned earlier, HW RSS is only supported on this device for 
16 queues. ATR will steer bi-directional traffic to utilize additional 
queues, however, once its exhausted it will fallback to RSS, which is 
why CPUs 0-15 are receiving more traffic than the others. I'm not aware 
of a way to evenly spread the traffic beyond the 16 HW supported RSS 
queues for this device.

Thanks,
Tony

> Thanks!


