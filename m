Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE18720337
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 15:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A84898447E;
	Fri,  2 Jun 2023 13:26:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A84898447E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685712393;
	bh=lc9sBJLByFPW0r9zabdtn0A6RdzSqhSaiJK+ZLwZOnk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yT90cy4Y6kOdR1BOPDnf1N9ayDsfDnJWPuK/wjwtexAOlLGHHmJIPSNLNBlCjsvcK
	 g482dL2XDvISAr7tSE+2eFlCuQi7RPyEvzQQAUs+yliR89IrUv5XUumbM5R0dqBOb2
	 t3QBRQaq1BgSejE0My2Of2+JLQ5lrqEfSeKwIVeP00da2pPTWhHG6W7q7i+A7Hvl0p
	 kyGeNhBgbPVuTzp07aGZzKYt17SvugYt3aApfmiWv3E9+lqIXn4FPWQ8cuKs802YjZ
	 liXgLXdcxSooh4qlif7Ohf4qTGT8spC6Jp1br16cz8+WdBJgIYh92HJU7plBR+iKF9
	 ni0f7sA1zkvBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A9kuaO1UqJzC; Fri,  2 Jun 2023 13:26:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91B938447D;
	Fri,  2 Jun 2023 13:26:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91B938447D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B9381BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 13:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78EB261625
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 13:26:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78EB261625
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4C30l90BAn8G for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 13:26:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C65E961622
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C65E961622
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 13:26:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="353361340"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="353361340"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 06:26:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="658274186"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="658274186"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2023 06:26:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 06:26:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 06:26:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 06:26:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JP1MJohTvHZ62+DtnIc5EQKxcGGT1wKeNeCRscgxDn3ZumEjLkYODy2rPC3X2usUF4D9kqh8fxYEnlluYxcKESLvJF5kIVCy/m5+PCT8LliC799axaJzKzTYnGiJz2HUdPMRQ6pI0Tk+/x/C6gPfuIIH6VSuBl8vrxp7IpHSa6TqXqJ/DQ8P1sJF/1bpzhThneLxyXE77iuHf/4TAokPJOY1dsZkBRG0Rkcz9pPRGCNH3K5kyFE6ob2ab+ifYT6hAgidnFA9q7YSOGd9I/CK4nd0rwy5++Lr7df7/VK0mEhIH+BGCG9dqSYwRsdv+7QG5wVqCykihN/V5QF6A2EOOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=okOuT5Oezjntbf8muW8Ukvmp+r+/bMXhJdwL1kwKXrE=;
 b=dYNkaZ7o2DIg9eJ3zIeq7VqUeHyTtRLnHHcfe4ybKoHVooTuPzVCq6R28qDv5TGeAMJalSQFTz9TSQ8HLtxuU452JPLkTuBLYTyF0osznQSXbKYnw/Dgb0hu8HmT/gZcEmwoBoOSBB7fG6yx6L/3CSesjC/yIwxyW3YMDTovDs3UHiYkbp2no9t3qAvS3t5wsn0Na4GoKwMIc7crY2KsGWzTlqiX8fdLtcC0TXTuST6zIfoxFu2GaebazJXGSakJSnvOKcFZPsxCQJlEoVdMJMUaMQk2FsuVnD/OwnYtNL4+06acxowuQ0Fv0ZGxF8iiPj/ufCdAe3b8liUjhPDvtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BL1PR11MB5541.namprd11.prod.outlook.com (2603:10b6:208:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.26; Fri, 2 Jun
 2023 13:26:20 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 13:26:20 +0000
Message-ID: <069f9d40-d72f-0357-f2d1-69defd16d327@intel.com>
Date: Fri, 2 Jun 2023 15:25:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: David Christensen <drc@linux.vnet.ibm.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-9-aleksander.lobakin@intel.com>
 <4c6723df-5d40-2504-fcdc-dfdc2047f92c@linux.vnet.ibm.com>
 <8302be1b-416a-de32-c43b-73bd378f8122@intel.com>
 <002e833e-33b0-54d4-8584-9366850a7956@linux.vnet.ibm.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <002e833e-33b0-54d4-8584-9366850a7956@linux.vnet.ibm.com>
X-ClientProxiedBy: FR3P281CA0139.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BL1PR11MB5541:EE_
X-MS-Office365-Filtering-Correlation-Id: 12d48a30-37ca-4ebb-5df3-08db636cf339
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lmd/00Y0baYiMit5+I3Z7OF9lwAvURTNgRP1Gjk3+iSGD3yyri/nxiCvJwelv9bsOom1TThWn/QHHGVjk/mCkw0wmOSgiGxWfa9UAITvLUX6XsygNts/2jMwyBOkhfZ7sB9omf8fL0jYQtjoVoFcQTAPSLM7QhVPYgs5lvKmJXYTP9HHiVNdQGCidYR7HDvSX/HKcMgxQk80lwme2FFjgPq05scmvtQB9yyz8bP0Ve5ngQtLaLK+3qUoVLKOOMqaRHGRYF4q3aToGMRGEbqIvc43RE9IhQw52S+vr1UBKiSup5ODo39NIn/bQgZfhM3jS2detqLP1VpHBO+8MASq3YEQzvZR+xAjxVR9dTuo47PeyL7o0EH2RmR8N5BaCLbLEhL04Ih3bC7G6s+feaF8reR2mz0LHENj3pCk+eFwToFPrEr2VxrtycDs0IFWfF0AJqocmRTklolGPPhIBtQgQqxWnBoSTTRyQ4aSCw0WksOHG/mv4JamMTE+HWXTIBDbfOIdQ1iY1oe6q5kpJvr2Zx+i33uPoAqPxLXDhUhNdZaXpkiG4HO4ToMgqPi6jDL9khE5wNHGw9hr4AlJ0dYjVIo+/dPqm5qrKK5OEkOenBXjxn7n0Dfv4ofcJewUHlwBUN/DvyYiaD5A86eDfGT0lA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(396003)(376002)(346002)(451199021)(8936002)(8676002)(66946007)(31686004)(5660300002)(7416002)(4326008)(6916009)(66556008)(316002)(66476007)(41300700001)(2906002)(54906003)(6666004)(478600001)(6486002)(6512007)(6506007)(26005)(53546011)(186003)(2616005)(36756003)(82960400001)(83380400001)(38100700002)(86362001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3V5OVJZTjFyQktvam9lYTQ0dU8vQTk0aTAzSW1oSXVTN1czY3NzM2hTNkxs?=
 =?utf-8?B?TTZMUkdienRXMWlaUE5yMElJeDczc1dMcVQrYzR3VTI3MVlXdkNoclB5YTJr?=
 =?utf-8?B?QUxWa0JXaUZwVUR0UWdVb25rSTNBYWZRbkltdk1kRmtoY05wVHN5REUwMklS?=
 =?utf-8?B?Qmo5bnZabHJ5WWVzbm91QUx5MEQ2Sm5JQWs1QWxvVUluOFB6WGRHdnFGUDVx?=
 =?utf-8?B?TlEzZzhDSkpRNmRvdE54SmdxYVBhRnVRUGprODhNb056dTB1UEJBNWxlMmFV?=
 =?utf-8?B?NjBvbElUMjlhVllSNmQ0ckVrbFM4WGlaYldkNGFMMVRwT0dUV21oM2E5OVB4?=
 =?utf-8?B?ZFV3VWpSelhPc1V3VElvS00xOXo0QkJKdlQzNEZ0Zk15RzF1TnRKSzk0ZDdC?=
 =?utf-8?B?bTFDVWM2dDJ0bENQb1EyUUJKVkF4ZXNZbGhWSHpRL3AwcXo1c04vZUZKYlcv?=
 =?utf-8?B?bEsrVzlOMmFnazFQR25yTHBKTURWcWNqTTh5b1VneGpzNnBBTndSa0J0TGlJ?=
 =?utf-8?B?RnVvazZIYmxUVlp2Ni96TVo4WVI3bHYwU0t4eWc0MHhHTW9McjN6emZzZGJ3?=
 =?utf-8?B?UWcramp0djVoU0MzL0szUGloaFZSelBsTXRRN21LL2E5cm1uZTB2NFlCNmFW?=
 =?utf-8?B?c2NoS3poOFRhejVzUlFYSUg2NzJXU09KSmVwejFJM2FKcjlkKzlua09KbHZo?=
 =?utf-8?B?T1c1Z29CVGNwcjN3L0Z4bU42MGo2VG1EaUhaOTZWYTYwUldNQllabk9QN2tF?=
 =?utf-8?B?aVUvdHNuZU83SGxtd0NTUlp6L1lqVUdPa1RYSjBkQ21yamorYnhsVUZzOEph?=
 =?utf-8?B?bjc0RTFwRDhaeUpzTERBMmNyR01sL0wxSGpUZXE0WjF4Rm5PL2hnNmFEclRo?=
 =?utf-8?B?MXI2d0Y0R3FBL3BUTmNBbFQxSm9SU2FlSDByeHAvNnBGWWNZZEhCa216OHJ4?=
 =?utf-8?B?QTNJNWVWNkFmaW5wdXVad3NleTRoa2xNV09PSEF6aVk0eTdPY003V3Z3SDF4?=
 =?utf-8?B?Y2t4Sldza1VRUHNjYmt1b2tucUFucG1OUnpsKzhWaDdsbWxnRXloMmxKdCtw?=
 =?utf-8?B?N3lPQTRpUEhoZktTVG9QTXk5M0IyckdseTUzT0w2TytzMlMvK0NVOEJ1NlY3?=
 =?utf-8?B?bU9MRy80ZjVhZWNubzlyK056UkZhb2VVRTlWUjZFTjhDOWpsek5IaFhvdmNM?=
 =?utf-8?B?T3BYc0JrV3o1bWxub2JMR3hKL3dFQlM5M1prM29zaWJyOHdyQnlyNXpETFlU?=
 =?utf-8?B?RzhQRThYeENRWmowV2twdDZndFU0VFlyUUwwcTh1M1J2NTRrd3FmTi8wNEdz?=
 =?utf-8?B?Ty9tTHZaaUQ5V1ZlUE5JTC9qREltRE4xSXVSS1F4RjZFZnB2UXlvc3hDUmFj?=
 =?utf-8?B?WFAwZlZvR3FRcVVWekVHRURyRzY1eks2WllYNWFQWXN6ZkRRemNjWXBQMU81?=
 =?utf-8?B?YlppRWhlOWo2UDdORWYrY0ZhSkd3NmVpQTZ4aXZTeGpYWk1mNElLZjFXbW1v?=
 =?utf-8?B?ZkZaOFFUcFlmWWxaNTF1cWVwNFVDZnZvdWxmR3dTRkxYbFg3Vnd6MC92NzBW?=
 =?utf-8?B?Zjc1N2hsZWhOclcyYVJPZThISitkaVRFS1V0aXNXNmVnNG1tWWtMSFgxckxG?=
 =?utf-8?B?MzA4MEJuVW42bzAyMDFseGFxMnVhTHU0UkZ6NUZtQnltYTRyYmRaMXNTT1k4?=
 =?utf-8?B?NkhQQWxMdEE3OXhTMUM0cUJQTkVCZnhTYnp2KzBHRHpLTUM2ejU0dURDZkV0?=
 =?utf-8?B?bWUwbWI0YU5QWXBZcjJkM0NiSlpvMUU2Rmo4VGFhVmd6K3FCcVBqQ2NCbUZr?=
 =?utf-8?B?U25JZVdjb0dFVDNyODI4Y2VnMGpjQXBrR3FTV2x4VDJEWTZZYmpNTHlLL3lU?=
 =?utf-8?B?ZGNWeG9iam03R2Z0cmFtTm82TW9qelVWK3ZDWE1SVDk5WXpwTlFJdmpGUUdE?=
 =?utf-8?B?d3lhZjVuNU1WaVpKMTRDcHVSRUhjejhNeC93OFlPQnBsNlJzOW9uS1lmcUtq?=
 =?utf-8?B?Mlc0anpQeHFpR0p1ZG1WQUEvbmZlaUdOZGpyV0ZmbGZiMWJyYXdmNzFsbVVm?=
 =?utf-8?B?V0g0Z2UwUjRZdjlqcDRyZWRvb09aR0IycjhRRTVRdlFQR2l1cVkybkJyT3dT?=
 =?utf-8?B?TTU2M25Ddk9iN0doWmVFcm1RQUlEbWErR0QyUnJPM09Md1lROVNQdkVwQUMv?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12d48a30-37ca-4ebb-5df3-08db636cf339
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 13:26:19.6860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wCxyTFhcvHKffoUjIWeyGZ/TL4FIyC0ZBRD4p4XCZYUXw/KNFwcWPW9iM4KZLfJBkI41urht27YaggmsjXvFFK5lXTualAKTjoJIs3pJ3kM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685712386; x=1717248386;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F+jFBPjA2PM/zdWr/IN8gpY1bay6RM6w6vmRW4jfL3Y=;
 b=YPhf69GZdDaG89GLqAgrqST1qSFIzqr/j/VKgpmGTyR7DX2fpFzplTBv
 7aHlozJk7ya3vesW0JqmIS75S/vooiQxQrmy9+1oBBihA4xDnIaoZxDfx
 BVuyyMwp91B1IL+qLgn6BqSGLKFcIQdMO1fLWvwKGBXTNraUWwBAXSdKo
 6Ry91lVHgxxdoCfvnHtvr65pxLC6hUbcCbxz9dMhqW8twMYW5NjRCkksv
 gxmIxyTGG4sdwZs0SF+yW5HDDTaIRZuY8+harbApD8EIFKKbAG8b+0hgR
 rF0ODdrUhLI+tbePjIHng32OMMbCevzbT9SOuL1b2PhzlkJlfHyGIfqTO
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YPhf69GZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 08/11] iavf: switch to Page
 Pool
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
Cc: Jesper
 Dangaard Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogRGF2aWQgQ2hyaXN0ZW5zZW4gPGRyY0BsaW51eC52bmV0LmlibS5jb20+CkRhdGU6IFdl
ZCwgMzEgTWF5IDIwMjMgMTM6MTg6NTkgLTA3MDAKCj4gCj4gCj4gT24gNS8yNS8yMyA0OjA4IEFN
LCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4+IEFueSBwbGFucyB0byBhZGQgcGFnZSBwb29s
IGZyYWdtZW50YXRpb24gc3VwcG9ydCAoaS5lLgo+Pj4gUFBfRkxBR19QQUdFX0ZSQUcpIGluIHRo
ZSBmdXR1cmUgdG8gYmV0dGVyIHN1cHBvcnQgYXJjaGl0ZWN0dXJlcyB3aXRoCj4+PiBsYXJnZXIg
cGFnZSBzaXplcyBzdWNoIGFzIDY0S0Igb24gcHBjNjRsZT8KPj4KPj4gQ3VycmVudGx5IG5vLCB3
ZSByZXNpZ25lZCBmcm9tIHBhZ2UgZnJhZ21lbnRhdGlvbiBkdWUgdG8gdGhlIGNvbXBsZXhpdHkK
Pj4gYW5kIHJlc3RyaWN0aW9ucyBpdCBwcm92aWRlcyBmb3Igbm8gYmVuZWZpdHMgb24geDg2XzY0
LiBCdXQgSSByZW1lbWJlcgo+PiB0aGF0IHBhZ2VzID4gNCBLYiBleGlzdCAoSSBoYXZlIGEgY291
cGxlIE1JUFMgYm9hcmRzIHdoZXJlIEkgaGF2ZSBmdW4KPj4gc29tZXRpbWVzIGFuZCBwYWdlIHNp
emUgaXMgc2V0IHRvIDE2IEtiIHRoZXJlLiBCdXQgc3RpbGwgYWx3YXlzIHVzZSAxCj4+IHBhZ2Ug
cGVyIGZyYW1lKS4KPj4gQnkgImJldHRlciBzdXBwb3J0IiB5b3UgbWVhbiByZWR1Y2luZyBtZW1v
cnkgdXNhZ2Ugb3Igc29tZXRoaW5nIGVsc2U/Cj4gCj4gWWVzLCByZWR1Y2luZyBtZW1vcnkgd2Fz
dGUuwqAgQ3VycmVudCBnZW5lcmF0aW9uIFAxMCBzeXN0ZW1zIGRlZmF1bHQgdG8KPiBxdWFkLXBv
cnQsIDEwR2IgY29wcGVyIGk0MGUgTklDcy7CoCBXaGVuIHlvdSBjb21iaW5lIGEgbGFyZ2UgbnVt
YmVyIG9mCj4gQ1BVcywgYW5kIHRoZXJlZm9yZSBhIGxhcmdlIG51bWJlciBvZiBSWCBxdWV1ZXMs
IHdpdGggYSA2NEtCIHBhZ2UKPiBhbGxvY2F0aW9uIHBlciBwYWNrZXQsIG1lbW9yeSB1c2FnZSBj
YW4gYmFsbG9vbiB2ZXJ5IHF1aWNrbHkgYXMgeW91IGFkZAo+IGFkZGl0aW9uYWwgcG9ydHMuCgpZ
ZWFoLCBJIGdvdCBpdC4gVW5mb3J0dW5hdGVseSwgcGFnZSBzcGxpdCBhZGRzIGEgYnVuY2ggb2Yg
b3ZlcmhlYWQgZm9yCm5vIGJlbmVmaXQgb24gNGsgc3lzdGVtcy4gVGhlcmUncyBhIHNtYWxsIHNl
cmllcyBoZXJlIG9uIG5ldGRldiB3aGljaAp0cmllcyB0byBjb21iaW5lIGZyYWcgYW5kIG5vbi1m
cmFnIGFsbG9jYXRpb25zIGluIFBhZ2UgUG9vbCwgc28gdGhhdAp0aGVyZSB3aWxsIGJlIG5vIG92
ZXJoZWFkIG9uIDRrIHN5c3RlbXMgYW5kIG5vIG1lbW9yeSB3YXN0ZSBvbiA4aysgb25lcy4KCj4g
Cj4gV291bGQgeW91IGJlIG9wZW4gdG8gcGF0Y2hlcyB0byBhZGRyZXNzIHRoaXMgZnVydGhlciBk
b3duIHRoZSByb2FkIGFzCj4geW91ciByZWZhY3RvcmluZyBlZmZvcnQgZ2V0cyBjbG9zZXIgdG8g
Y29tcGxldGlvbj8KCkxldCdzIHNlZSBob3cgdGhlIGFib3ZlbWVudGlvbmVkIGVmZm9ydCBnb2Vz
LiBJIGZlZWwgbGlrZSBhIGdlbmVyaWMKc29sdXRpb24gd291bGQgYmUgYmV0dGVyIHRoYW4gdHJ5
aW5nIHRvIGhhbmRsZSB0aGF0IHBlci1kcml2ZXIuCgo+IAo+IERhdmUKClRoYW5rcywKT2xlawpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
