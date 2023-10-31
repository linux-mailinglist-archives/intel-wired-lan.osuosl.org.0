Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 169757DD038
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 16:15:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98E76614BE;
	Tue, 31 Oct 2023 15:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98E76614BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698765319;
	bh=amsUvMiPPPziXf14KbVJGl/u+eQ4mL/YIq7E/GwvA0w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YcJBmMglfIankJPbZRPjE5JoU+h0kA9zLSRMhglx5PMGr6FlJEq1WKQO05HCeQJ5o
	 lKPv2yf3b9TB95d71vjeqBK1/OsCU9j+AjW6zbRTYeJc/P7vl+1vj08FgYfIUl6FA2
	 pB12hD5HPJecciQYOu1K4vLeuGMV5Adf4y4aCZuoHSLvzDeQLPMy+QdBSWAptt4Ij1
	 YB5wAeFIVJHLlwuYOUKEYTH7aNV5g+XI8VPm51asoH+TVibQHI0Xr8AE/KMIkszRCT
	 UQu1wAVqNvpHjNRTzqiT4YhkBaVgrbbvD/83vZVIgp379qdLRCIjJ4PB8kZRfQZfX2
	 +s7gR+hkq5Ncg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QdiofqaHgmM1; Tue, 31 Oct 2023 15:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F893614A8;
	Tue, 31 Oct 2023 15:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F893614A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A4181BF322
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 721DD614BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 721DD614BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rx_iUvL98n_M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 15:15:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C457614BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:15:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C457614BE
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="378698912"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="378698912"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 08:15:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="934143066"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="934143066"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 08:15:09 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 08:15:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 08:15:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 08:15:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fin1DYt8jlwv+BcWs+H38i2dDBKfPARmFx5DnRGrxiOC8jHJl4wuGV+em8Q6PjcynZMzIMGDyzJCuv4HNjnH6vWj2CGobv/O2FmMtKUrFrlLx02LhJoRa3BLakr311fCTnknnxBAHBhGCm65Vxqg8NCunPn9sULoxTHBWYgZ4mlb2XJSff13IWSaAZtAcGCUF2gV0FmiaNcStWwUtpcXhtV1/O+bjvtShCXgPWxKYPl/fPZ0gkqfEkiUy7A8+MA9I0Bm7Ag7HIZI05en8EWCJFnzQAAnxxcwuKm04CAoxmcomDAZS2Z/cgPaxsoXpTN+w7D096+q208U4F99suM0sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=28EIKFYMxgAFdUm4njcxVqFYoMcPx3qXYI1/g11nIvo=;
 b=Cs6HH2gU9MhpOvXWDvoN3KqAhcLEta6x0tlp+K8/gjOPg58RmY/1Zp6QBPLqmGGgAjUazmszwPnCtdy+ycqYTAWFLfH34zH/4ebpm49gJeEkPz9i4DPIzYxiBcJQeNqXAmolA2OmUHrgm34SILrazRGARiJgShOCh1sJT3nND4k/gCJmUHUrYkvdDa2vD7KCsHMb3tVWQ9IXhN1fRbg3iENwxzBztsV6QTFb/3+m90zHB0O1NZFICJE2kTj2iRZWlvo2HixszOdtpjncib6ds0PO5Yd+dXI2WVu0vb575wGO07VyvCO62yIeUD7/59Lb2GoJm7ArKC9P8StPchioPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.30; Tue, 31 Oct
 2023 15:15:07 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6933.024; Tue, 31 Oct 2023
 15:15:07 +0000
Message-ID: <e7679b57-af11-42b1-91c7-b18cbcc70119@intel.com>
Date: Tue, 31 Oct 2023 09:14:58 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Gal Pressman <gal@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "Alexander H Duyck" <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
 <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
 <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
 <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
 <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
 <aa1dd347-a16c-44f8-95ad-5d50bcba8f34@intel.com>
 <70132b6f-542f-4fe6-971f-ab9ea80acbe4@nvidia.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <70132b6f-542f-4fe6-971f-ab9ea80acbe4@nvidia.com>
X-ClientProxiedBy: DB3PR06CA0002.eurprd06.prod.outlook.com (2603:10a6:8:1::15)
 To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA2PR11MB4956:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ea60263-664c-402a-bf2a-08dbda242a6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T0dVLgWBmDYKE7sS04JH2kNF91/HAFymjq0ouuHJAXqpT9O/ibt6Ek2CHD0NgyV9LCG3kKif/rU6F7XDCINRT/uzx53vLhxHAOac6v1EmCC2nWhBy7DppllViQS1+2bOX1FiHxHUuoBeaa10XrQQbwk8CnnXBfaXClssyTRK/SONIJhRrON6AjGTt/CSSbkzR7BLq2nJcfzDtE/IAsn9kVkNcn3/19owqfIoyyOwTRVNeRll53shJzzXCLfspmBcg2mzcpr2SEKtpN//WJvlU3UfBDLlQkDPoBYfVLRP1onxLZf+ZoO9ZAM9HckRwgznsWD2nKPMOKDhD4Y2q079SMaInYfRkJzC9clL46nseHY3S8wgsKQXBLXdAOX8mlaSjyq6NtjtzZ/DaAiXG363+SRJ+3Z5QdhzqDk4Blh40yneXAVdOSIWUWA1HUiBHlwcnCm+NegVgqCKfYIEPsPU/25UI71tQMBeDkjG1Q9S0hHFRhm/3owEn93QjcGL7y4rdIADe2Pkb7pXy4L1wYoxHDLjDtitp0R4oLnmTelEQj4tYeFJyIcd2yahsEbc985wIRYBn+x0N+qzwKXXhIYFaw4mteXB5cHo+Ei9ryZ+Y4fn/+yLWnUQUdLW5u1jQRsaHE/70fZsCllQkLqOmCTc6g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(136003)(396003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(316002)(38100700002)(2906002)(6666004)(6512007)(7416002)(6506007)(41300700001)(4001150100001)(53546011)(36756003)(966005)(6486002)(478600001)(54906003)(66476007)(66556008)(110136005)(66946007)(8936002)(8676002)(4326008)(44832011)(5660300002)(83380400001)(86362001)(2616005)(26005)(31696002)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEY0VkRoUllPbUplUGg3UmJ6Vkc4Ulo1dmhWV0lWL2pJaUhycVgwNTZCTmdF?=
 =?utf-8?B?MFBJOWZleHNwblU5OHYwUC9hZjFUVTJsVUwvMnlLWDNrVWViT0Z2RG1pNUNO?=
 =?utf-8?B?enJUVHkyakhUQWZFbHFkOWF3ZWVNSkNhbklWak5DcjhDRnpncUtqMTJITkg4?=
 =?utf-8?B?RWR2aHY0dzZXN2dPNklWTm1LUWxiVkVxV3IwZWRyQ0RCV0NlbHcxV09BVnJP?=
 =?utf-8?B?b2RzZDRYMDcrUHFoMU81WGtOcHdFOFJ6aGtmYis5QTBEbC9OR2Q5YjlXTmV5?=
 =?utf-8?B?WHFUWHljMWNraEFjMUF6MnJyMll3akJMbk90OG81OWNDOVcwc0x3MjVibzlI?=
 =?utf-8?B?L1E4d3pDQlNjaGlUWWxhWS92dlhtSWlLTExaZjNEeEN3OW5FQzJKSVpmcko4?=
 =?utf-8?B?VE0zWHY5azBSckFIbEFlR3RXT2o0R1JPMkZtL2RWQllWQld3ZDk5K0VHUi8w?=
 =?utf-8?B?NE5yNnhIL25YZkdDdFdyRmI1VmhNelg0TU0zekVhM1RaMWsvSW1VdUlUZDZW?=
 =?utf-8?B?VzZyV2JLM2wxRDlaVThEWFBjZlBtdGU1bmVESDVJbldWbFpzb2xkRHVwODhF?=
 =?utf-8?B?aEhQT2M5TzJsdzc3TzcvWVhNZThJR09Fb0VYbWpTZ3RBUHFqcG1mWFlpM3Y1?=
 =?utf-8?B?d2FzSDlJSnF5QTE5VTl5Y3lYL1JyYVpuZjRsYTNvNUtmMllML3NIdFM4VWsr?=
 =?utf-8?B?YXUyRGxteWNDTmQvVVNmcmxFaTN2NUpHY1JVbEFWVS9KUTFIMmt6TlYwWk5Y?=
 =?utf-8?B?azlUamVkaVQ4Qkc0anlQTjEzcVVwWjZMVnJRbVg3aUxlbHhjRHpQWVcxTWwr?=
 =?utf-8?B?RXF5QldsalUvdklmeVhzRkZCV0hjcm41THFyc0xzZzFQMVlJU2U3UmhNRmU3?=
 =?utf-8?B?UHBpNkdXaUlMVjRnQXI2NXUyem90aVdSTzRWRGU1Y0VRd1QwT1ZxNkVGcEtu?=
 =?utf-8?B?MHYzclF5cDA2RGwyK2xySHZ5MW13YnZrQmg1SmJIZnVBWHI1WUpkVDZ4T1hN?=
 =?utf-8?B?dDRWcWQwbkYvM3VIN3o4OWloaEhBRStYOXUxYVQ3N1ZVL3hwWXd1Um96T0I2?=
 =?utf-8?B?ak5sYStGWXlVQmhuQisvWTc3Wm9lMzBHcUFZVDlhSExiMFJhUWtRWmEzdmNV?=
 =?utf-8?B?RW5YWkdHL2tsUXRMdC9nekp3QXlaa04yRWJlY1JTUk1XUWl2Qm9Ga2krbXA2?=
 =?utf-8?B?TURRUXU2SEtEUnVnMkUrTHl0NWczZG53SkM3Rk1wY0Y1LzRyVGp3REdkVzJj?=
 =?utf-8?B?TlY1MUFyNzlTaFRlak5Qd1BtbEh6ZFd4VUptZEUreTZheVFoczZ4MWF0eFBM?=
 =?utf-8?B?ZTZtK0NDL1d5VlFDZUVWSVhFWWZRYWp5Q2l6VTd0cC9sdUFNdEtWRXNjdU5M?=
 =?utf-8?B?NzI5b04yRUhFSG1FLzZrSzZUeGwwSlZFbStMd0FKNHljamxVUW8xb2FqUm52?=
 =?utf-8?B?R0xXQnhpdFZiWVhOaEQvblc1VEJxaDk5WVRSSWxDT1J4em5peGdBSmlKRVJG?=
 =?utf-8?B?VExIZU5PYnBoczdNT1pMWCtocmVMYkJ2aG5LN0NHL09LWXJpSENjL3hSbEZG?=
 =?utf-8?B?VU1CUCtGeDRRUmRvb3pwWkRqREpndEpxaGNUVVhHUXoyZ2JISkxYazlpd2ZX?=
 =?utf-8?B?RXFLcllmUzRrT3lLb3hSUCtlRVhmQVlLKys0TkdNb0xnd0ZLVVY5bTl5WnRs?=
 =?utf-8?B?OEdQdTIyT0ZHMEExZ2JTU3lwMW1WSnYxV2hWNitjUUtWOXhPR0hKUWNjZlI0?=
 =?utf-8?B?TmVGTnFpdHBQdnFqWXpwM1NzK2JZeVhYQXZQWnkwTFZVSXg5MGF1aEY0eFYx?=
 =?utf-8?B?TUJDL1hkSEpZbGV5d0FkTVdLbGU4SnVVdkJnREswd3ZIMUV1SnE5VTkzL3A3?=
 =?utf-8?B?RVFOZDhZcmRET25mMkNLeVZCYmEydDdOd2krbVIxQkpvdnN3SnlXVWl6OHor?=
 =?utf-8?B?bXI0a1hQN1VWWnBuRUNJa0lCNllPczF0cHpxTnptc0l3VDNJbEMyWVJPSTRO?=
 =?utf-8?B?Qk1McnNjMFByNlQ2M3ZuaU1mOFVJNlBKYzhJRTRlYU8wYjJTUVJNMDhlTy8v?=
 =?utf-8?B?UDBhb0k0elRtMlJoYnVQWWMzRzZoVFdPSS9ya1JMN1F5MlB0WVY5SjNnUmRk?=
 =?utf-8?Q?6lDLbP0vGjceLMcbGuwsnmayX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea60263-664c-402a-bf2a-08dbda242a6f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 15:15:07.0730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cqxrUm6tg9mv4z4rhMwXPdPUtNokbwaIyV3hhtmzVggk5odJ0PVRt1N7qLKb+E8dWz+yS6rQFdL6olaFx5xgNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698765311; x=1730301311;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sAuzb4e2KIEKHN5BAFJWJHoBO79tMx1HQ4juFph27t4=;
 b=jFNMXs+AeKc3x87pVlNxfWYn4h5fhmEGCMbGWhqKJO4xEKKZFOnYAGZ1
 U5gO+Bn9r4lCP9OUVKwquuvC8MZ5pWpuGcjMSKayzWH5VXLxziAieTVdb
 ASLroOOq19wjctnRp76hOwh1R1SpPDWiHrv8pRPm7hyEPd6TiI2AszyJh
 jOPebnrz1H5+h0aReygmoG4SDiFCeKlTTvQpHm4jfoP7wyD9Jaleb078c
 +BapMMs8rqla1sMq+Lk2u30WlpeFMcFibCMCbSUk2yyZmLyJaFynx9zQx
 b003UpZtVS+u4XDHgfPA7l1rkGxWH9IWQgyIcpta8xWNG6oHnd5MCn3YZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jFNMXs+A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-31 08:45, Gal Pressman wrote:
> On 31/10/2023 16:40, Ahmed Zaki wrote:
>>
>>
>> On 2023-10-31 06:00, Gal Pressman wrote:
>>> On 29/10/2023 18:59, Ahmed Zaki wrote:
>>>>
>>>>
>>>> On 2023-10-29 06:48, Gal Pressman wrote:
>>>>> On 29/10/2023 14:42, Ahmed Zaki wrote:
>>>>>>
>>>>>>
>>>>>> On 2023-10-29 06:25, Gal Pressman wrote:
>>>>>>> On 21/10/2023 3:00, Ahmed Zaki wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> On 2023-10-20 17:49, Jakub Kicinski wrote:
>>>>>>>>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>>>>>>>>> I replied to that here:
>>>>>>>>>>
>>>>>>>>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>>>>>>>>
>>>>>>>>>> I am kind of confused now so please bear with me. ethtool either
>>>>>>>>>> sends
>>>>>>>>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the
>>>>>>>>>> interface
>>>>>>>>>> for "ethtool -X" which is used to set the RSS algorithm. But we
>>>>>>>>>> kind of
>>>>>>>>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>>>>>>>>>> "ethtool_rxnfc" (as implemented in this series).
>>>>>>>>>
>>>>>>>>> I have no strong preference. Sounds like Alex prefers to keep it
>>>>>>>>> closer
>>>>>>>>> to algo, which is "ethtool_rxfh".
>>>>>>>>>
>>>>>>>>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how
>>>>>>>>>> would
>>>>>>>>>> that work on the ethtool user interface?
>>>>>>>>>
>>>>>>>>> I don't know what you're asking of us. If you find the code to
>>>>>>>>> confusing
>>>>>>>>> maybe someone at Intel can help you :|
>>>>>>>>
>>>>>>>> The code is straightforward. I am confused by the requirements:
>>>>>>>> don't
>>>>>>>> add a new algorithm but use "ethtool_rxfh".
>>>>>>>>
>>>>>>>> I'll see if I can get more help, may be I am missing something.
>>>>>>>>
>>>>>>>
>>>>>>> What was the decision here?
>>>>>>> Is this going to be exposed through ethtool -N or -X?
>>>>>>
>>>>>> I am working on a new version that uses "ethtool_rxfh" to set the
>>>>>> symmetric-xor. The user will set per-device via:
>>>>>>
>>>>>> ethtool -X eth0 hfunc toeplitz symmetric-xor
>>>>>>
>>>>>> then specify the per-flow type RSS fields as usual:
>>>>>>
>>>>>> ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n
>>>>>>
>>>>>> The downside is that all flow-types will have to be either
>>>>>> symmetric or
>>>>>> asymmetric.
>>>>>
>>>>> Why are we making the interface less flexible than it can be with -N?
>>>>
>>>> Alexander Duyck prefers to implement the "symmetric-xor" interface as an
>>>> algorithm or extension (please refer to previous messages), but ethtool
>>>> does not provide flowtype/RSS fields setting via "-X". The above was the
>>>> best solution that we (at Intel) could think of.
>>>
>>> OK, it's a weird we're deliberately limiting our interface, given
>>> there's already hardware that supports controlling symmetric hashing per
>>> flow type.
>>>
>>> I saw you mentioned the way ice hardware implements symmetric-xor
>>> somewhere, it definitely needs to be added somewhere in our
>>> documentation to prevent confusion.
>>> mlx5 hardware also does symmetric hashing with xor, but not exactly as
>>> you described, we need the algorithm to be clear.
>>
>> Sure. I will add more ice-specific doc in:
>> Documentation/networking/device_drivers/ethernet/intel/ice.rst
> 
> I was thinking of somewhere more generic, where ethtool users (not
> necessarily ice users) can refer to.
> 
> Perhaps Documentation/networking/ethtool-netlink.rst? Or ethtool man page?

Do you mean add vendor-specific implementation details to common docs? 
Not sure if I have seen this before. Any examples?

Or, we can add a note in ethtool doc that each vendor's implementation 
is different and "Refer to your vendor's specifications for more info".

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
