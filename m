Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DB97082A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 15:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2433B428EA;
	Thu, 18 May 2023 13:27:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2433B428EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684416449;
	bh=ibCxnM0z8bgvbahGL033htlzZeo8tkHp7I6sLiUuY3M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RzapgExiMVS+Y+ZZgAq9t8Yzn7Y0UQ8dUx/pQpEVHmInbmaYWmX6/n3m8rCn/1Yc+
	 FCWvfkyWTefiQqw+nE7l7uxo2Z8xe/CpXdCcpiubUTXVnHO99IldqgIpTFmOhv9GVL
	 R67njS3usSeJZ6cR9YVrqeFAjzJOCOkOAjMwc6ZU9ZgKzw0SnxH8Hg23sN5m90ha7q
	 bDnq2mCRLC0QJbvaiRMmvdB2wuLMyq62ivu5+YapqlReWz/99x46TAs01BVzmDyWS1
	 UyOaE6ESvsWJh+QO7oV28GQEBPi9uyClYccMmtELBvbpw3NKtkj91yXVcQZVBz3E+m
	 uebLkdQBp/xWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aoWhCEKkcmR5; Thu, 18 May 2023 13:27:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08D18428F5;
	Thu, 18 May 2023 13:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08D18428F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2B0D1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77D1A610B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77D1A610B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5E_ScU9jGtYC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 13:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B653761080
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B653761080
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:27:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="438405732"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438405732"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 06:27:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="791973807"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="791973807"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 06:27:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:27:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:27:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 06:27:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 06:27:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BTjrhMbJ+7EckVcwqWeBJqJEp0NLWY5OjTsme37z1St4LrXqejytYSarR2L/BLyVgnz3tMB9xDq7a0TrA0BkIlG+fgpO+VKftwh3rno4br74F7U0ckKQ5xuuuK2v/4VfMI/WqYWgR0HeggzQCF+2PrqrHQQmhmfVW1bCZpg1lsVsDiyQbw3xLMF3ScoT4qecskPo9kPM5AvYc8EzexIaISInaAoc9l59G8Fvv93ixRwWwVBEO2oCp6w23L7xa7/GC+N2rHw9I6aaITMam+6AWIvRHYR1GcwY0Rbi4/7YGInOHrFw1UQmqMVw+QClYHzOqfBpNNsc8umtmgTpn3BqYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CgAjGcAB2U6SIkmId8wbtmMF66TELO7fU3IVO6AoLgo=;
 b=iy2Yt6e9ZQ67PpN85bdWow0MVXimz/cIH6f8SOidNsQ8ejXVkhWRn1Nu8gs1ig2R4HJ294zv2d93QSmzm8Q/dzkAF727QuaUmfdGaEtvVK09EQ5J6WHK2yfO7AJrVF0YkAl6KusYZOKe0aJ5s3+8BWBorstPWMevzk8UjF6sHMXgIbeyyBohpefqizPGMyVNFZwjfz0LTXrkcZPr35mNXuxnePAlVq8nvU+VctTvPhUrlxDipufKzR8BPV4xagchGSnwyM9wD5cVFaDZW5rCd7+fuTnxi3hee3xZTYBu31M4HhmoRDX3UtMmCYTFxLTcH9a2SICgZGJcGZOU1OjJng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB5037.namprd11.prod.outlook.com (2603:10b6:a03:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Thu, 18 May
 2023 13:27:15 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 13:27:15 +0000
Message-ID: <313c4834-bcee-1182-7094-4feef800c312@intel.com>
Date: Thu, 18 May 2023 15:26:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-7-aleksander.lobakin@intel.com>
 <20230517081458.GA32192@lst.de>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230517081458.GA32192@lst.de>
X-ClientProxiedBy: FR3P281CA0045.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::16) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB5037:EE_
X-MS-Office365-Filtering-Correlation-Id: 4151938b-3a70-4a08-d225-08db57a397e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9yKft80fP7VDA/1Pu0Wq908A0QctyHxbr1CYcIRt4clPfeLjEE7vezBfmvLoovrIubFUOxIQfmUQ0ZTPmFoZgxQ3iybTGU6N0OC7py6ec1nlRAVyYDFCAUb+wK51H3gS2UG6WYRiuvYpvfbmUZhCPVGT8lJHFvJsjn7IyO5AaUd0UMa6gtqlkmUApMlGJwPuXFiVQnGFY+v65OkrScLiEJ9S8y42WKKJF0AFr+Ojivrdj+9/jHd12nFKI9k7q3UBcQ+2GEcjIsBU3nOULq4IOfp+MI6+6dBTbmk7bkF/MnUUsP2/ayztEJOpSMZ0TxnawqD2YzjCgrShGXY5ce36rITKBi/neNt9EZ6vi1EpAauZXJSohSAMdj05nz9HjZ3KUjubHgTGWJckjCk1qmdNhRf/D2V6MLvF+AuoVVB85/1+fnAaQsAmuYpQ3ZcM2t5iZ/LPYYam3gwZlZFspzzEhHmSxaYqSveZyfAfuhEXIwfBsYB9b8jqLWg5ec8bSTPfOOIJJvC9N66lLVP1jPCNLQLupRJHZTaq9r7icL2z72QBX0uSqzo8dZ1UCnIYHoPjR2EmS3qtvEeWwvTSIMvM2zkwnZyatbZbrkr2Mu9z2AsG4U1BJaT3JSKPHU3DohP3D6DK/lKCP4kOAgL/QA4cwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(136003)(366004)(346002)(451199021)(38100700002)(186003)(2616005)(54906003)(478600001)(6486002)(6512007)(6506007)(26005)(2906002)(8676002)(36756003)(5660300002)(4744005)(6916009)(8936002)(82960400001)(7416002)(41300700001)(66556008)(66476007)(66946007)(31696002)(86362001)(4326008)(316002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1FLYU1RZzltdnNTbDhFcmFNdVJpb0t4QTIzcjNXaXV2MlhmTlFFRGVJTWQ1?=
 =?utf-8?B?aFA4ZWZVUXBDUTBaMmJnOUc1SWtZM0szY0FhbDUrQmlCckp3YnQrejc2Ky85?=
 =?utf-8?B?QnQ3MUh3RVRIN2dIaG90RW55OWR3d2NxcDRmRzlCVkVscEpGT00vd2RONVA0?=
 =?utf-8?B?STl5bXUySnQwL0xxV01MYytFOHdLSUZPQkpRTVhERG9xRUJVUldzUzlWZjF2?=
 =?utf-8?B?S0VRUnk5RHVUdkJITENOUFBFNDJmbHFITmQrekwvSDJUWVh1UnV4N1A0d1Bw?=
 =?utf-8?B?TlhmblZSUXd2QmlRS2FQaG1ZN2JCTld1VmVYN04yVkxUQlNzOXQ0VTdHdVFx?=
 =?utf-8?B?T1Q1Lzl0R2QxMVJkZjJPRmo4WGRtSEpsSzI5N2dGYUI3d3lRVk13UW5ycGl1?=
 =?utf-8?B?eUFFRXNqb0V0eExLclgwUVRWWE1hMWtOTHRBb0N4T3VydC8wTDgvRXJkenA4?=
 =?utf-8?B?RXl5TTliVlJnR2p4RWZMRUdhbG4wQkN6ZEQyWk9WdENmZmVMY0NEN29Nc2RB?=
 =?utf-8?B?WFFzdUZqdmpqYU56cEZJdi9kT2ZrRXowWFQxYWxXUC9aMXMxTGdhc3pTaHdi?=
 =?utf-8?B?RFc2cERYQzFCSFJIU3M3TWhhMDlpdzJZcElvQytWV1d1bmtndGg0YzE2ZTN2?=
 =?utf-8?B?aVhGcktPeXA3dW9HVWViTjI4UVpmRXBCRzA0UDBLWG1aUDlHMmszaTVsSEF3?=
 =?utf-8?B?amF3YTNzeVROVjl0M2Rla2p1WGZDTTRXUGJ2d1pycGVtTnJjMkdFSFdYNXZB?=
 =?utf-8?B?QXJQK1FGU2ZadXNHMS9aZld3ZCtXVXFCV2ZuUTlXQUwwUkpIWk80YTloMlpL?=
 =?utf-8?B?aTd1TVREclYyZWdaQjQvRnhLSy9mTUFVOWFrbGFoekRzYVQ1ZnRTcVFkV2xj?=
 =?utf-8?B?RXI4Uk9MUVRjdkFNWDFzc2FOS1Q1cnlQYU10VmxNWlNqdS94dERqMDNDTlZQ?=
 =?utf-8?B?U1Bxa24za3BNNWlCdW9mQ09QaUdiSUdHQ3I3UUE4MVZadmgyMjJ2WWtiOXVC?=
 =?utf-8?B?K21lTFZTM0p4VkhTNXBLVjNrVndDU1I2cXJqNysyVW1EM1h4ZTJLaFNPZzBG?=
 =?utf-8?B?ODcwbmJVeFJxSGVhZUw1TkNwMmM3ZTNEVU02YUNSSkdiWlR2aGNlZ2FzTkY3?=
 =?utf-8?B?VWlnaU9FNGVXZG1VeHVoT0daa3V0NW91d05ZME0yZTdMb3FSU2lBUGZoZHpW?=
 =?utf-8?B?bFBCR3M0OCsxckVBbktqYTZjUnNVMjdhc2JhaG1xR3lyb0h4aUxTbEVpblZa?=
 =?utf-8?B?UWp0WEFkcGhzWXlSOTVaMms4cHgvQU9IdUtxa0hCSW5QWGF2ajdCTHBKMWNQ?=
 =?utf-8?B?MU56WFVFMHp4YUVqN3JuRm43aTBmZnVNcjZTR0pqUkNWaFZRclZHWFI1WWxm?=
 =?utf-8?B?N05HaU40YW5kK25IK2tKM1BTemhmaEYwaklvdGNRYWJQZ3FYL1NNYVU5NmJP?=
 =?utf-8?B?bkV0UVpwYWVrZU1vdG5vQ2NGVkExU1M1eFg1dUdGcHhWWXl2aDhXQ0huTnNo?=
 =?utf-8?B?SlJLS1E5SExkN3RFMUxjdkdmQ0c4QkdaQVRycEg3Yno5RHYzVGJZQU41OTFq?=
 =?utf-8?B?S1RURWZIUy95MXhZbnJoWUNkc1FFekRxZW9ERkMvOTJqUis0ZXNFaTd1SXR2?=
 =?utf-8?B?TnIvUU43RDVxd0lTYWl3SWdTTzE1N0MxbVZaTzRaSUQ5M1B4bUpIMGdwb1V1?=
 =?utf-8?B?Ri9zVGltUnhYTEkya1JpMlpJTmRNcnMxVTl3eFJ5S3JUYXovckc5NGxTeVY2?=
 =?utf-8?B?dzM3VWQ5bnA2Q2NDNmpDUDFOSTUyKzNhV1p5UmhSUU1abFJ5TGNYTldHSDYw?=
 =?utf-8?B?czVuaFRvY1c4TjFmN0VabHNWa3c4OE0rOU9SZTJ0b1hyTEpKRkwrVzBoUlJH?=
 =?utf-8?B?SzJlWWdIeHJzQmtrb1Z2VHFJVHppR0IyQTVvRjN6M09hbFZwcVRHMXBEYWI5?=
 =?utf-8?B?Zld1UGZxL0tETURUQVhiUUZPSHhLQUtJck43bWU4dGRqRmNwWWMySVFZTjF3?=
 =?utf-8?B?VjJWeHpyQzYyd2hnRWlHUVZVL1RxWVpUVFJteUVZZjNtUWdjOFJFQmRVTWJs?=
 =?utf-8?B?QjU3RzVMN1cyU2ZnN0dUZVVIQkVGYUR0bk5FbkgvWStsR09IVkdpUHY0VkJM?=
 =?utf-8?B?REVRUUU5VmYvbUozWlh5S1FlUHdUOGpSV2pmVXBKeXZuS3pDU3ZZOTNYZ1NQ?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4151938b-3a70-4a08-d225-08db57a397e8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 13:27:14.8324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WP+OcRxDwuZSlFmtdzoozS3Lp5Dc56uXKuLxH9aKsxWzIBmTDT/3aiENJ8r3ODg+2ryiHQtNnXaOoa5KMrH6Ryk3aIj3XNjgkz+JO+ahv3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5037
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684416440; x=1715952440;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0MbzgNGEDFHZv80yx2X4syApoBhyXvFFcyC9ihnfOrg=;
 b=VPNxQjWxIj8TRB03ojy9M6KRYO+eL94OS8+rfdPe/RoKpzWHpVBpH0Wc
 7G+TSXlByoxFDZt4+LvXltbnFekMiHY8A7a7vUPhWepJH8wdS/i0KZxsE
 +ieCtpCve6N/sWCv0eqxJ1DTVZOsyjn10Iw/cums7S9oQZhbdxZHUubzE
 NKzWP7ST2lTmcvZjjfk27UUHb08KjQkJ0b0V0sUInU70zMsFCMklUqb4i
 w+T5QcIA7n7Uyt+WfOfGWbUQun19qsVFlA45WmUvcjbuld4gHxqaCfVJf
 t7FwgWsLv0Klu+/+DucqAHsrHo4uhAGc6hUv4hcb8h+L8Gkx4g7x5FGh+
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VPNxQjWx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/11] net: page_pool: avoid
 calling no-op externals when possible
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
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Christoph Hellwig <hch@lst.de>
Date: Wed, 17 May 2023 10:14:58 +0200

> So while this looks ok, Eric Dumazet had looked into some optimization
> for this touching the core code, and promised me to come up with an
> even better version a while ago.  Eric, what's the state of your
> optimizations for no-op DMA syncs?
> 

Hmm, his last proposals were for avoiding indirect calls when IOMMU is
on, but in fact we don't need to synchronize stuff -- DMA IOMMU on
x86_64 also usually doesn't synchronize anything, but you don't know
that prior to doing an indirect call and dma_need_sync() won't help.
I was thinking of adding .dma_need_sync() callback to DMA ops, which
could also be called once only on page allocation, like in this patch.

Also want to hear how it goes for Eric :)

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
