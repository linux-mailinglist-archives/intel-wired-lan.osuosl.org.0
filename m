Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B97285BD7F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 14:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02CA64150E;
	Tue, 20 Feb 2024 13:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BhYYIHq9kBc9; Tue, 20 Feb 2024 13:47:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA0DC41517
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708436870;
	bh=Drkt7ZzDMI9RiNHr4ADtYEhRttccwf8j9UIKhKRnBV4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mZnQWRl7dds8ZiyoZqcdl+hrsTpgQ3gHG5FkllGNhIIH5Ht4lXYKN6wYdj+LRFXaV
	 KHGVjo4bxOp2mWmiw1GGqvGWxPYTbjX1hV2F2aIi6+0n4lVMg0ufF79O2pRbQh382w
	 H6pG1hieLPDD3WhPPzyLjyBANuep1kuQ3UiqtfearyaU0O/2OsWdMLzDNZyJnqFtGX
	 Fo39ehUA1OBDIJteqjFRaVManCnAMNkIbDryeBMFozCy6jAXxqwE7nu81RCpy6tUg1
	 yYPdW3zyVZg8FNvls8NiwadDZowH13Do/kQOXHtLJqGMZuGIHRp3P5/divZAjhjgci
	 KlrDyAlB0O23w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA0DC41517;
	Tue, 20 Feb 2024 13:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 306A51BF573
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 13:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AD30404EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 13:47:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBFNDvFwKEeF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 13:47:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 918AF40108
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 918AF40108
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 918AF40108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 13:47:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="19974355"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="19974355"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 05:47:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="9426787"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2024 05:47:46 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 05:47:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 20 Feb 2024 05:47:44 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 20 Feb 2024 05:47:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MDAu05UdNEK7eG7gTrUlLWbllWfVkvvbAn9AbfJIZgCI+Hq8AuWiqBg0xhG0yi/Dn69xG3ME7km6bdjRZMyK0CEcuYzgpniehHyK6hJZjSkNYOqLo/LpPkgCsbvqrs6kJPeSb7kWMvELfgUCCpG32MH9BmQiL/5INSvaefWCgm7AXU+PV7ojkYT4vEUEQjtXS8qJ+i9TmEL3+KyeDbFN29q7y+zMOuDqANbm1Ez6AbVp/eRGHYIEpOvEedr+hP5XCgjH85tCSFKDmBGIJuO1TwAx6VKsLbRh/aTO7bf65k1EXL7HJQ9+mGEuCNmjMCyF7mykZ+AZTufVMgF344Q0cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Drkt7ZzDMI9RiNHr4ADtYEhRttccwf8j9UIKhKRnBV4=;
 b=MmGXGBWwj2isc6MR32fxB+qhhUybl7EcCfpxJ7jKajRZHeIdSPJxXd0hEqRVxiQxYtXbllb41nHxKT3VS0YizPSPGhbnyzIaPHBpIewTbBllmmUToe8DNffERIeqHnSPmXWr1U1bAbAbkyABl1e3BWFzGnQVXMceuf/K4Fza9HmhRfcv4oEJgGe76/TSUeBba5vC2MPSbBt4JBS5VWuYb0wBeW2aNPHHNbsQvdytvTKx/sR3zzamv1lRYTTg6gNzOj9D/7+eGW/FsXS6O/r89kKQT0pp0K9+wSXl/1T/5fYX5dh1tN0UiRokfXEbK4k4DENns/wgGHEQDP3E7pqIzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MN0PR11MB6087.namprd11.prod.outlook.com (2603:10b6:208:3cd::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 13:47:42 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::93d9:a6b2:cf4c:9dd2]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::93d9:a6b2:cf4c:9dd2%5]) with mapi id 15.20.7292.036; Tue, 20 Feb 2024
 13:47:42 +0000
Message-ID: <ff4ce794-3c0d-43a9-a991-91aadd44760b@intel.com>
Date: Tue, 20 Feb 2024 14:47:36 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
 <08e761c6-d79a-4a64-a61a-9536dd247322@intel.com>
 <04033c1e-c3f8-4f05-8c88-f0cd642e8c55@intel.com>
In-Reply-To: <04033c1e-c3f8-4f05-8c88-f0cd642e8c55@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0072.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MN0PR11MB6087:EE_
X-MS-Office365-Filtering-Correlation-Id: 770d5c4c-5f4d-4f1a-09d6-08dc321a826e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rlj6Wyh3IXPmcK7P/wmgMR/BKdxMlmz/Gwz2lngFZv05J7vtMVykxp56jQ0G93EO3mNxV2GQwrI3Vqkl+y2BIvGSL7qdNsRHBMf66Gmzl5cDZPvSWpWh7w20swZ47tckdfaM7hixmtZ36Oau4mcnVMRKlRUq2ZmR5CbEoYR3cBocS+qrBugmt0KPY3DuEedE4SQei9XA/3Zgp4bSac9OONGFoLE+ci3Pd/pMoMYXNwtVPfVEECbWYQQ/ZdK9z/O7flL84+vKoRtelDuEhQL9iTGo6/SP26QJqmtRVUxp5E+8R7oV0HQV0/czcBEVOVJlwhlXRQfvTs9vLuV373CU7bS/1TTHIkcga1cQEZyfPoG0TZjxbZ7Sr6xSM0mbYWj7CyUbFLyK/kXTtZrF0Lsn9/nPVpjKmI8U2MTO8qtGe7RSRyGaWKog2SSzIkV7Z5t0iq7NIhF3xrJ/HHPpcj03CITxpaaqwZsbieLuQnuDYC7k+c/FH86Zg3u/TU9dOVoBLW4FLogysklgMF5tDsuZ1S3a5OGe+r9R1yxEMmVOYDVzeIFfgdcZgLdp4PF4Wc4N
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTY4NXhkREJaVVFSUHg0d2JwYTlzOTVLejhwVVBUY2dJVUQwYzl1MzRSamJH?=
 =?utf-8?B?S3Brd2JEYmRKQmlZRzFQK24vaTUzdU9EYlZ1SmJVZXZPakxvOFNhQVZIRGRs?=
 =?utf-8?B?cU5CQ0ZaMHJVaE1oQzR5THVwM1djbTlFN0lIbm8xc2NaOGpFNEFFbVVPVUNB?=
 =?utf-8?B?cUJBMXN5M3F3NkdRbTMvZWVHbUhPcHlIL0Q3V0dKUVloYkFrQ3YyY3RaU1lq?=
 =?utf-8?B?ZDkreTZkRmZma1RLR3dsWjhNakdFSllQNVNNcmgzdTg4SjdkdUkrd1M5azJ0?=
 =?utf-8?B?QVBOYnpTZlBYbFV3TFU5THhKS3NYd3daZE5DQ2Y3UFg4T0xFMXlra0FwOTF5?=
 =?utf-8?B?cDZ4czhRQVBvcUFXWDR5MjVGT1VTVjh4VWVzcEZRTFE3Qm9pTTNUSGZkQmRj?=
 =?utf-8?B?cFIvRGZzOFRaRFZsdVhOS2JYM0RwcEFkOTJTQUlMSWtJSmdxcGhlOEZKWDRQ?=
 =?utf-8?B?NTFBSXRKU3NkT2o5YmJQN3E2ZDRIOUErYm4yMEsvZlZMY1YwYWpuWFVZbUI5?=
 =?utf-8?B?Q2hDaTV2RUNGQmRSeG1rS0J3ak1lQjNVQ3NYT2EwbWVucGtmMzRWQVorZ0Zl?=
 =?utf-8?B?M1BocEZnSHJ2Z0kvNnpkNFhSRC9GTHZrSnpaV3R3cXVOL3BVRGpwQ1czZHZK?=
 =?utf-8?B?QU5GU05JdlhMcG5LQng1ek02cXhOTUdBd3dTd0VUWjBHV0FTUFUzQ091U1dp?=
 =?utf-8?B?bnRhbDVzeUlHN3VCcDlkKzFRNTFxS3ZkM2QreWtSbUU0RTQzK2lJT1hZQjhG?=
 =?utf-8?B?QmFJdkduV3lCQ0tqMTNKU0UwT3YrckVUeWVGNnorT2FYRksxRDVCajlyeWtz?=
 =?utf-8?B?NHJWWmlMdjR6ZjNFUDJrdnhvVTFvY1Q3dUJPcURvV2F3OE15Qy8wS2lNOWhM?=
 =?utf-8?B?SUd3Uy9UQWwxWlFYVDBIVFQ3Nk5VaUlJMjdUVzhJY2ljQXBmN0NEWkJwcWZX?=
 =?utf-8?B?VnBMYTNRU21QMXZVQ2dDS2N0d3M1UTVVQklVcEZWcytyWTBiK1ozUUtSWlVp?=
 =?utf-8?B?dzZmR3dTWnREN3ROc0RJSVphR3Q3aThkakVJRFNRREVOWHFDNExpak56eDFV?=
 =?utf-8?B?SGk4U0VUbng3aEZmNERBd3Z1YktuREVCaTBvdGQ3dytNeWlIVkFvaEdLaFNw?=
 =?utf-8?B?SEFhdTJQQ3A0UXdrNW84WS94eXQ2bEF4dW5GWmVVOThYaWRtS0JWVkFaRXA5?=
 =?utf-8?B?MWJqS3NBUyt1L1M5Rm1PM29Hak5GMDFzc09lSG1Ib3ZsR3ovdWxudk9pQStJ?=
 =?utf-8?B?UWtMdEtnK2N2dEpKSHZ1MXp0a3N6WFZHMG13cUNTc204cDk2SXY5YWhoaWhG?=
 =?utf-8?B?Y3hMczNiWmNyMmZ6NDVYbktMSWtxR2FtdzJaN1l4Ty82ZTh1bXM1WWk1dWg5?=
 =?utf-8?B?dk0vSE5Gd2tSUTVCNmpPdk4xUzRhUmVxaXhPUGEyL2ozeHJGZG5OVjNxYW90?=
 =?utf-8?B?aG9telN1T3BMejc3UE5PZlErcnRTRGZnYk50QVR0d0U3bTBGTmNqSTJMVnoy?=
 =?utf-8?B?ZzM3QWMxMnExek12VGZPZ3RXU21QUG1iT3pxcE93NXpHWVFYbWdDV2ZDanl3?=
 =?utf-8?B?RmVOWnd6RUlpRjVHVDFqU0pVcFZJRXlNL216bTdlcVc5Z21EWGlJVEw2UTNo?=
 =?utf-8?B?SCtHUzljNUIyeWsyeXRzSEg2Z0NaQzk1R0hUQXlWZDEzbVFGWU01ekNBM1Vi?=
 =?utf-8?B?U3ZmVEp1VXAyMDgvTk9tV0h6M2FqN0RzOEFXWWtsZUVZTGZjVUlDWVgycmdr?=
 =?utf-8?B?QlUyM3EvUnhlWVJteFJNU1RUNFB1c3ZrNVdna1NETmtsUGs5bjdJOGFLb0Vn?=
 =?utf-8?B?a25HZHlWb0NPRlpqWTVCUitFQ1Mxc3pnaUYrbklFaWNCMldFQkVVYmRPTlJL?=
 =?utf-8?B?Q0lpWVkzYjcvNFREODY4MzFYNDZRMngxRWdBSWJXWlNBY2c4TEMwRlZIQjJN?=
 =?utf-8?B?WGF6azBWOU9BbUZYSE9CRHZTV2ZCTndHZnJkdDNndzdnVjNJMzQ0elJ4d1F4?=
 =?utf-8?B?VmprWjJxMUYzaXIvcm03RjUrbDVrTGlmd002RnNSRzc4NkVCWksrVjgrY3l3?=
 =?utf-8?B?a292WTRwSWh6cHBPYzIvbEIrSFJmd3poWHliK2laV3pkNTVuV0V0VmlrLzIr?=
 =?utf-8?B?SytXTXNXcWpmWlNEdDJ0UXg3ZTN1NnZSbVVLeVROSzk0ZFdKcW44TGpsTFJJ?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 770d5c4c-5f4d-4f1a-09d6-08dc321a826e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 13:47:42.1429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YA6AW4/62c6frODwPWjgjvVVIBz+DS0GHEpyw7trO36FGZwFJ05IVZLUuqamaAHvI54IXUNmGBmM8zZXn87q2YMgZkYZ5KcHEIh58jKZcT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6087
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708436867; x=1739972867;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BpdOrENj2Kv/IYMbFXcWBldt3q8g2Tx1Jc9q3+LE0jg=;
 b=d5cHU97n0fN4P4kDN0Nzy7gElYP9J+osCxidsqrP6GZ3oRK9MWnz39QD
 DRSeMnLVhh9VKMZz1VbiBRX/p5+Qa2EZuYn7hsplZQZMewQj/x/3SYIou
 kMiw/BE8SNmF/y4Xlv97LquOpTouXZ8rTsdaLPrBb8mWBKq/z3w/aOoww
 Ze1hbFYSHrutE03JoT7vrpoA7iQVLpitmo0hD7nlbOmjdw3Bwc888c9gP
 lYwgbBE9zCq7IZNhOoRnVc4gaZrHQnmEeK8YpTc3+/I6wD9WADhRxFpmi
 PMm45XSpQ2EPdXCXNL3I+fvbmcCAinEPon0DknLhb+YmSzIrVvcITeuHv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d5cHU97n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor
 virtchnl messages
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 intel-wired-lan@lists.osuosl.org, igor.bagnucki@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 14 Feb 2024 15:49:51 +0100

> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Tue, 6 Feb 2024 18:02:33 +0100
> 
>> From: Alan Brady <alan.brady@intel.com>
>> Date: Mon, 5 Feb 2024 19:37:54 -0800
>>
>>> The motivation for this series has two primary goals. We want to enable
>>> support of multiple simultaneous messages and make the channel more
>>> robust. The way it works right now, the driver can only send and receive
>>> a single message at a time and if something goes really wrong, it can
>>> lead to data corruption and strange bugs.
>>
>> This works better than v3.
>> For the basic scenarios:
>>
>> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Sorry I'm reverting my tag.
> After the series, the CP segfaults on each rmmod idpf:
> 
> root@mev-imc:/usr/bin/cplane# cp_pim_mdd_handler: MDD interrupt detected
> cp_pim_mdd_event_handler: reg = 40
> Jan  1 00:27:57 mev-imc local0.warn LanCP[190]: cp_pim_mdd_handler: MDD
> interrupt detected
> cp_pim_mdd_event_handler: reg = 1
> Jan  1 00:28:54 mev-imc local0.warn LanCP[190]: [hma_create_vport/4257]
> WARNING: RSS is configured on 1st contiguous num of queuJan  1 00:28:54
> mev-imc local0.warn LanCP[190]: [hma_create_vport/4257] WARNING: RSS is
> configured on 1st contiguous num of queuJan  1 00:28:55 mev-imc
> local0.warn LanCP[190]: [hma_create_vport/4257] WARNING: RSS is
> configured on 1st contiguous num of queues= 16 start Qid= 34
> Jan  1 00:28:55 mev-imc local0.warn LanCP[190]: [hma_create_vport/4257]
> WARNING: RSS is configured on 1st contiguous num of queu16 start Qid= 640
> Jan  1 00:28:55 mev-imc local0.err LanCP[190]:
> [cp_del_node_rxbuff_lst/4179] ERR: Resource list is empty, so nothing to
> delete here
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 1.
> Jan  1 00::08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
> on vsi (1).
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 6.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_rss_config/340] ERR: faininit_vsi_rss_config() failed on
> vsi (6).
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 7.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_rss_config/340] ERR: failed to remove vsi (7)'s queue
> regions.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vo init vsi LUT on vsi 8.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_rss_config/340] ERR: failed to remove vsi (8)'s queue
> regions.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
> on vsi (8).
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 1.
> Jan  1 00::08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
> on vsi (1).
> 
> [1]+  Segmentation fault      ./imccp 0000:00:01.6 0 cp_init.cfg
> 
> Only restarting the CP helps -- restarting the imccp daemon makes it
> immediately crash again.
> 
> This should be dropped from the next-queue until it's fixed.

The latest firmware works with this series -- the problem was there,
the series only revealed it.

Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Can be taken back to Tony's tree.

Thanks,
Olek
