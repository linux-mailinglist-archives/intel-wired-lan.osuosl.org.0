Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ADFAE38F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 10:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1498A81F67;
	Mon, 23 Jun 2025 08:51:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SuoSTqp0RyIv; Mon, 23 Jun 2025 08:51:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D85181F62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750668689;
	bh=ZjGRGNgCid9T77+QTpWyckmXOeyXWz/miPpMyBAKMNw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B5RoWGG/jqCm5Re0DuDvvArjPzqDkqfomRIVXrHnH93jBX2LrUuyu4Vyag6+09bhN
	 3lRMD88I//SosZbtf0bMir96DDggEWwocmsFT4wqmbnjCZ9JSbtfnk4Vj/Df3O30c/
	 6SuwvNoOlX2NfaUzgJx4+4OE0BYTgVKZG8+TvvkZNgVwyfBEgr/RPp1tKtdCxQB4r/
	 tMjsf1XxPH8sLy4eSchOFESZH7wql9ny0w/HaoQIlm5CzdZ9rAYsMRSOKQwYmIEljl
	 J+H5jasdoHPibmkjTsBmnQTU/SWfiC/eu04g7u+2CTXDRFZNA8VNFs0UDF8IYfJj96
	 1BRjqv1bc3ZYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D85181F62;
	Mon, 23 Jun 2025 08:51:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DFB9A154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 08:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9ADD40323
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 08:51:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pp4MthgMnJVS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 08:51:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C62A840209
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C62A840209
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C62A840209
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 08:51:26 +0000 (UTC)
X-CSE-ConnectionGUID: Zp9RptuuSGidHbG9I9O60A==
X-CSE-MsgGUID: iv3dGJwBS5WLptqAEi6PtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="52733518"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52733518"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:51:27 -0700
X-CSE-ConnectionGUID: fYhrbRzDTdCg1hGAjGMTBw==
X-CSE-MsgGUID: dIxKk4MdRD6R4gYX3KnV3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="155839985"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:51:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 01:51:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 01:51:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.51)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 01:51:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W/gwnrQ2ZGxDFZk0/peHJT9uZ66MwNqFG5OUe3fb13Uob4zEk3jo/CgqLa7vMYMhMdGurxOGdmsgePK5QAwc0lO8kRkLIsiHnyivXcDPb4QzhcCTTbYZCrSBzqD+aW+eENpUfvivdXwpNOCUjdZKIQTFvQib2EJ9p3TPRNeqtcvEvhHIHl5kb9VXSubO3hvZwap+m+vlT38EqzBpuoO6nsJl5xdpYOxLSnmvsFwEEDqHIskm1iYVqo1urARbq9cqVdPkCAIlrOVfLo/v+cDFRNDq/ubBbOmNmIa0EXF2MM4Jol5tES998+Pi3Jl2fZX9JhH3hgodEQ8RPR1MEYWYLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZjGRGNgCid9T77+QTpWyckmXOeyXWz/miPpMyBAKMNw=;
 b=Ou89xFGOmYdiO6jrCVs7IQd4JPsZn9sekL5p+fADGW4ITOBoiU2yZBgzfNCxmGqSoSBt1SNAfv9AtTpHLLWIpykic6fRZX8MkXH0cHMAGxiv9J2uG1jtVngbmTz6P+idY79sUHypX/XfH7xudG9DIwoM1awKXw/HwREL+606jdrOzNGWe1c4RrKd/tgWCV+AguwGRBfPrWF6yCBUrXEjj1ZqRh/ClDnl4YC27hykE+3UWP0/qzhM6K13VvIPJ7jx8OxiOSzk5QOWoAD0EDoMtGECI3xpTjujvC/K82P3tZEMTuADB2iysqqQor4jlxFcNnIt8enVmnB4liVsLbt2lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB5948.namprd11.prod.outlook.com (2603:10b6:806:23c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.27; Mon, 23 Jun
 2025 08:50:36 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 08:50:35 +0000
Message-ID: <7f86080f-5cb1-41a8-a031-2664eb0591d5@intel.com>
Date: Mon, 23 Jun 2025 10:50:31 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Jesse Brandeburg
 <jbrandeburg@cloudflare.com>
References: <20250618112925.12193-2-przemyslaw.kitszel@intel.com>
 <580ed7b6-1045-4347-a88e-edbf982cb287@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <580ed7b6-1045-4347-a88e-edbf982cb287@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR01CA0010.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB5948:EE_
X-MS-Office365-Filtering-Correlation-Id: 788cff73-e200-4bdf-0e66-08ddb233052f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SW5ldWRCQWhreVV1Ym8reFNLbGQvTmVmaDdWdFQzWFZsL25nWEwwRllUVU1S?=
 =?utf-8?B?bi9wMlBmYUVFMjZ1b2djZ2tBazJBK1BUejdlZGdvbzA2UzJBOXpobFhJaGEw?=
 =?utf-8?B?YU5pTHZXUlozZEJUeGtjSk95MzRTdEdPQk9uOUt0S1o2cUNUTVVjVHNHUER1?=
 =?utf-8?B?WTh5eE85ZHRwQmJLT3cxVlBzZ0c5aENSVVVPOCtnU2RJS283cTFISkgzN1dO?=
 =?utf-8?B?WnIrTDFIV2xoRnZ6L2RKRER5dWU5NmV5WWgySm1ROTQrSGFxZVhuRmVyS3d5?=
 =?utf-8?B?NHY5dkdtQ0xYOW5kMEs1ckY0OHJ5SnMxaGFSTE1YOS9FTFRuK0VGWkdxNFBY?=
 =?utf-8?B?UzN6MnZNUldpL2NYUndpNjhpbzVralZkc1FBeFZHQ0dpM3Y3WW9Wakh4ZXF1?=
 =?utf-8?B?MmFLVTcySHhtQS8rOFE3Si9sSHpqZlo3RGNwWGpLWEV3YU1sYlVHaHZBUFFa?=
 =?utf-8?B?RHNCZzNRKzNYQ3hndllhamoxdjBjNlB2SGlmZHBocFFIVTFuNWcrWmNBZ0pi?=
 =?utf-8?B?aDUvTWhsaTREQTROaEZQU1VmanZBYnBIS2FHWUwreHk5R0RvbmI4aWdDek5I?=
 =?utf-8?B?SnZ5NFpIRHlCOXZLbVRNM0ZObmVrb2l3SktndFBDeThKdnJVWGI5aHFISUlw?=
 =?utf-8?B?V1BQM2h0Qjd0RDNPaXJIenlhc01qeHlsM0VicFJYaFJ0SDJORVZuZnIyUTBz?=
 =?utf-8?B?YTVzbVl6T3B5RlpnMWdQZnRERmpNYUNpaUtYSzg2WmZ1ME50MmpBYUpxYVhs?=
 =?utf-8?B?aGtPRUg3QllER2tCRFZmd2dRSk1tZDVBd2EvMkMvMytYOXM2MUJxRU15SGFi?=
 =?utf-8?B?cDJoUXZpRi9RVzFSb0lZQ2xQVTlmTlhnbnBPMUJmRUY4dkU3VC95emppMENR?=
 =?utf-8?B?NWxsZVhRY2FJeE5HMVZiMERCRGlqZXJ4NDc2OEpDTy83Q1R4RWpzV3N2aldS?=
 =?utf-8?B?cERXYzZLTjVtU20zdU5LRW5GYlF4Wm9qS1pSaURiVzE1Zi9zcmNCYm10T1Uw?=
 =?utf-8?B?di9iVnE4YXdDVmIvV3JQWTZUMGk3Y2szQ2VoUzg5TThYZnJPUUhOeVhmUWRY?=
 =?utf-8?B?Z2Exdnc0QUdiVVd0bDNNSkVhclB5YUJ0elpyTUYyandGRWVNL3B0dVR6NGI2?=
 =?utf-8?B?cGZKZnFJSTVDbGZOQ1hNejNLNFpWQjcxWVg4aWM2MTdoa0dWZ1plcDNnR29t?=
 =?utf-8?B?T3VHK0lWUldCZDBNMjlIeHJpRWZ6R0xMVFF6UEZ6ckpBL0Q0NmFSME1NL0VV?=
 =?utf-8?B?Wk03MzdDRFM3REJIeE1ENnJXWlBOWkNWckprbnd5M1dzcFoxVnBBMGJ6bDNZ?=
 =?utf-8?B?eEJNMVpETFRtMXk2bis2TnhwK0xLY1hqcFAzOXFibVlIRjFMamNjS1lMYktE?=
 =?utf-8?B?Qm8wYUVmQWlHbFdaRzJ2N2dTUlh1dk5TS0RrZDluLzQxSTBKZTYzSmRGZ2ta?=
 =?utf-8?B?b0xuZ2x3ckJzR01YRUJWazdKV2Vlck5lREtGWm92ZWgyZXVMelQ0SFdnVXlD?=
 =?utf-8?B?OEx1RDNleExJNWNJN29VYS9adEtqOUt5aHlRVEk3MHZJQm1JQkFQRnQvSXVs?=
 =?utf-8?B?S29QckxEbGZ0UUxIblI4UGRKSjZBTGJaVnJEUFR0cEMxZlBvVThQRkVET3ZI?=
 =?utf-8?B?ZldyNndaSWtBQ0RCN25jajJKRkpJNlpZVjVDTWJmRlp5YU5UWFkzcUdzM014?=
 =?utf-8?B?U3RncDEvU3pzMk9raWZmSjBtM29KSmVGbDZGS3F1dkc4WWtGM3BZb01nUFAw?=
 =?utf-8?B?aEgzN0RaTU5IN2hOMlpiZnVBZkFNYnduVS80V0JpOFkyRlFhRUY0aFRjZlZa?=
 =?utf-8?B?THdWaEhsLytQa2dZY0lFaXNQdnV0NkpuU09MaDBUc3NUcndzSktrK2RWTWVz?=
 =?utf-8?B?MUNpZzNET0ovSHhPbG4yRE0wYzZFQ3FSMTlOWVR1QU1YS2IwSkVvRURHb3U5?=
 =?utf-8?Q?rQjgjqTcAYY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aElCb1VoZDBiVzJwS0drd21oZ3hya1h0ckphSDVNVHlWa3JhZGFNN3kreGp6?=
 =?utf-8?B?S2pLN3B2aVk5WnNUVG5ReWhRbllMS0tSYzVGQjRiZE50cjI2RjRSUzVLWWZL?=
 =?utf-8?B?T0JIVVVEaFlWTWlFRjBEYVpjYzVRRk5Odnl6S3ZHTk82bXJxYnYxOVVJUFZp?=
 =?utf-8?B?b2dNMndzbExDZituQnZaNmFMQTB1QnRJZUwveDBGR0hkYWdZQUJVYXBNOFEw?=
 =?utf-8?B?d0c4ZjNsWmtPQU9hUG4zVk1MczJTbVVBQWxaL3ZFR0RFY3FzeEZmd3A1bERn?=
 =?utf-8?B?L2ZGZmFlQW53WEVHdXBHeHEvZTZLOFBNbml5dEw2NkgwWXlYVkdZcU5nblll?=
 =?utf-8?B?U01YY0xwUktxYU5VdTFWNnpCVGFjUlp6WDYyMXhaU2RKdzMwa05qa1dzUnFT?=
 =?utf-8?B?bUhlbUY3UlpHcFpwc0NpNU5ETE9LaSs4bmVxR1pVeUlkNWd0OGU3RXZVYWx6?=
 =?utf-8?B?WGY0VU9xdU9mQ2FXam1GOUFPd1pkN2lBcFVCTlFzeUtJdDRkbXVyYVAxWWtJ?=
 =?utf-8?B?SnVvOVhxUk01TTEwZnVhNlVJcjhvQW5HRlpzWE5QNUVkbjFJUHF6bWd0Ylcr?=
 =?utf-8?B?UnE0YUZrMHJkcDhXL2Y0MTdlTDZRRTV0WVNLbTVIcC9raTlHMlh6NCtPYks3?=
 =?utf-8?B?NmFwM05Ga1VUWlVIVGxJQUJGRjlKd1pMbGxzVElZS1NxRnRPTmtPaHREU3k5?=
 =?utf-8?B?aG9vSVBieXhwdlF1SVVEdG96anZGY285ZUs0bjNKbzZUTjA4MDNZTTVUYjhD?=
 =?utf-8?B?dDRyOW5tVHBRTWZZTEEyamlJS2pIWXY1bmNOQkFvKzNkOC9KalpING5yd00r?=
 =?utf-8?B?Y2NRMTdyV0I0QmkzUE5BUjRmSzcwU3cvRUN5SXBJQnBVdWVSSzBMMkdWMmZM?=
 =?utf-8?B?dkRwU1RGSHVFWEVuMU5MZVRZaE9WdWZLak5oVk1kV3lnTUs2NTVwUVpRWElk?=
 =?utf-8?B?WGp5bE1XVnVobkowV2xnVWMrM3MxUUhxOUJVNmEwb2IyL0Nra3FpeVNla0ZZ?=
 =?utf-8?B?YVFETXNHdExMdW96WlBQbjdZdVlmRjgwbk5XV00xcDkwMlRyVkZxTUZkVDhM?=
 =?utf-8?B?NVI2N2tCaHQxenNXM2NQVmhnWkdadXJQdE5lZ0lwV3ZWOFJsSnNYVHlwWWVS?=
 =?utf-8?B?K09tRGJEWDAzRXkyakZpa3hGTE1IbUpqVnY1eGtweVRvZkFsY3JqSmJaZWRv?=
 =?utf-8?B?c2NqQ1M5a2x6NzQxWWV4aDVqczRoN2hNNGt5UjhjbHJkQmhYS1dGTjd6MkNT?=
 =?utf-8?B?T0QvQXdLWjlSVGV0b0piNlphS1R2Z3RIUVA3bkRTbUJpVVFCcTE4WDhxb29l?=
 =?utf-8?B?Y3VtckJhcDVSTnZFWjRMcHBlcXFudHRuZit3OCtRZ1lkQzV2U1A4U2puM2du?=
 =?utf-8?B?Z1NlbXJ0L0pTUmo2bDNscThYc2FsM1VGcllCcnBNVHYrQmxVN1JONXkvdW9z?=
 =?utf-8?B?c1kwdG5HTE5TcXBJUWM0K2N3OHVFQ1RNRXcwL0pNck5nZzJQZ29zMnF5bUVu?=
 =?utf-8?B?MXRFSkgwL2tNV3RxNVljcTQ3S1VsbW1IZ0JIcjMvMGpIbVVZaTJGZnp0bGc2?=
 =?utf-8?B?Y2J2ZkhxRkFWQ25ZT0VTOWY5TlN5L0RyN0JwdDVuVzlxbzF2Rnd4Tm14ek5y?=
 =?utf-8?B?bGxtaGYwQ0dRQy9UYzdXY3R6YlJmWGJ4TFhTSURkVXg0OXhvUWJzbE9SSmlI?=
 =?utf-8?B?MmxNMHV0aUh2NHFvVnZpTGZRQWJCbWdNSHFzMzFNa3RqckV4Z3d2ak5GK0Z2?=
 =?utf-8?B?RDE3UUJqZnQzK0REVWNLQjBVRjU4cnF4VDRxYjQyc3djdTBLMHBORnpNSUNZ?=
 =?utf-8?B?UERlVkl4Z0NrTStSNUgxUzRXQnVtdVpGdUtFeVBRMkROZUJMcm15V09YLzhr?=
 =?utf-8?B?U1pKT2F6MHJWS25qek5uVUFjRENJMnpqUnF5aGhNTXpFS0pEbzlONTFTa0ty?=
 =?utf-8?B?MmVmKzB0ZFlFNENVK0VkdzhOdjcwRjlMMXBnSk9vSVAxOW5vZG5HQkp5ZFcv?=
 =?utf-8?B?UHJWU200VWM0K3MwbWM1aENlbUpibnhZdEE2QVMwdXFaSGVuUmZQS3lGMksr?=
 =?utf-8?B?UWtEc3VVRW5SWEdTT0lFclNzTVo0VGhtRk5aWTZuUmNvTmFMYmVTbHdFMW90?=
 =?utf-8?B?K1Nhd0p1YmhRUktKejhwdy95b2Y4OGM0S3NhY1JPZ09HRno5bi9zay91SzR0?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 788cff73-e200-4bdf-0e66-08ddb233052f
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 08:50:35.7810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tk0uIPCI1X99wzTx+D9mQrtZU8NRNSgavs3gEfhZODRcq4Os3WZN5oQEXwpCAwrYujDBBgGaSiGnCeAex3mB0ihWSZT7fRFUo54oOdAmG+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750668687; x=1782204687;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XzP0IYsMtM15+xEntGlo/eISHDgb/cuoPg5WmTLkFc4=;
 b=NlpsrlpG+UDZVJHVLhMj3FSaxQjLEXrEgimilJ8CxbymnFB6TZR8bWaY
 Psl0ixP7f+XN6MZlnHoccPHDhiE5DxPemZ1P6upxek63zm/N7nW7PTF59
 8ejbiJG9pOma04DzOsEtOA/xg9CbFKptrtgcv57KeBvHPtFt8T3J3W2eo
 dFv3/wENkyttRXk7YdonivYT8bwY5vv9WxAzML4vyXVh4IMfw49ZNXDX0
 l/Llwn0U5Qt33s1Okk0PwcSz1hJ5ij00fpMuQVqxDMmu6qaNhyu05BRN1
 aiLADfa2J74RNWB727ultw23dZIJdHVvfNXBfFXV1vGj5FvnF+ogV5dlc
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NlpsrlpG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: convert ice_add_prof()
 to bitmap
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

On 6/18/25 13:54, Paul Menzel wrote:
> Dear Przemek, dear Jesse,
> 
> 
> Thank you for the patch.
> 
> Am 18.06.25 um 13:28 schrieb Przemek Kitszel:
>> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
>>
>> Previously the ice_add_prof() took an array of u8 and looped over it with
>> for_each_set_bit(), examining each 8 bit value as a bitmap.
>> This was just hard to understand and unnecessary, and was triggering
>> undefined behavior sanitizers with unaligned accesses within bitmap
>> fields (on our internal tools/builds). Since the @ptype being passed in
>> was already declared as a bitmap, refactor this to use native types with
>> the advantage of simplifying the code to use a single loop.
> 
> Any tests to verify no regressions are introduced?

Hi, nothing specific, and nothing that could not be inferred from the
commit message, if our VAL would ask me, the reply would be: please test
against FDIR regressions :)

Alexandr has this patch included in a bigger pile of work, which passed
many tests, this is also a form we have present in our OOT driver for
about 3 years by now.

[...]

> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Thank you!

> 
> 
> Kind regards,
> 
> Paul

