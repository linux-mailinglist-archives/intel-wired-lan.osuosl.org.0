Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1C55005D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 08:16:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40BB460BAE;
	Thu, 14 Apr 2022 06:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8GNCJ--Yqq67; Thu, 14 Apr 2022 06:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B63360B06;
	Thu, 14 Apr 2022 06:16:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C05611BF85D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABA0840432
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qL10jKXBs4ox for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Apr 2022 06:16:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B89DA40157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649916965; x=1681452965;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9kEXqnBdESRUg4KUzWcY5VWbF1fcwZY+/maUHzl8Wy4=;
 b=HNCx8EqbHlhpdAn30Qyfc8z2YDIAWb2vmkf/gI2K4aQlD2+C1aUx17iV
 AQWkE/KkA2iRBwVzrW013yL472CLUh6xaJro2BT3sJJYiFLdLStV/zfcc
 so8gT2DaNSVWG6vx88OXxNQdCdkGWCBe14aqvP0VFGdkaF+02BqGKv7Zt
 RFzZSFuMFP5FG/ZCDXr26ifX0VeRuIc1QmCqcSz7djBEDlPS4bjjYMx5H
 OUkTEMs05rc2X4n4gSrgcaD6bznyHKuEVlYswZjrQG0RwK1Ce9LsU47gC
 0kOXHhHJXacPRrfUTPxsY2UgV2GjbtDyNz2FMQJ4j6yg12gDkaXDa99TS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="263035514"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="263035514"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 23:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="725231531"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2022 23:16:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 23:16:02 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 23:16:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 23:16:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 23:16:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gBNj97p1TGkgs/z9u8nYec2MNJ4Jvz1FZonmxyT5MvxKZQG4zfm+jBAT+j/IDtp6V/hosBIHNI6Jho/8RKMfp+wq7eyrtpYEKXpHfDFu0pnBpNUYDCASKT3f7H1kE3vlBqDUIHB0iAkBf20V8CbA5nPt+/CfHvoYhjGBj9Y4UmS38R/OfxksVcVJ7WlllzF7za4yeeRs1v0Bh5kgju5GGflC/z6yrUtV9Xg20h3J84MPGYABXUa8nvP+BbmGT81l/ub4EHRPMGx6p3VXNNe7px4QTXeNesglzL3WNim5LjtOFehSEm/090UszEJV2B+35C2lwi8oZG2c2h42gJzd2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J42O5Ac02A95+PJI4tVWeIXspHkWeFQjSXmaN1jp1S4=;
 b=hzp0uWzG9/iYPZMk2cQY1hxHAnFk/Nm9+qDSoJete3zLchOOT+jAAf3QeWbta/bjP7VRPAq8ykIL6vlClaXLUyf+1ZJ/1A2kj9xwnuKkVenv2vMii3oyVgpYRAV//uHdMj4ENlmUkPVKyEdRJt/6oyejl+qVesGIBc089xuzRQQU00riWz7dPzStApfQ536G2tGP/0xy5Y6BcWLXwzZ8HyTE1B0pY3hJZBhQL7zpKnAbwHCpt0vVEHJcrEixtrEl2LcyFidtYJdB6CZkQ9z5iSrZWc7V7gn0FMW0Q+/M+1W/5/XW7mfnTQwzPfqAXtARpOU7WbzpD19E/+lwukG4sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Thu, 14 Apr
 2022 06:15:58 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::758d:b6d0:2a6d:54e1]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::758d:b6d0:2a6d:54e1%6]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 06:15:58 +0000
Message-ID: <3bd66d57-25bb-909c-4106-c4c46be45ac8@intel.com>
Date: Thu, 14 Apr 2022 09:15:52 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220413053317.3297670-1-sasha.neftin@intel.com>
 <716d73f5-3e2d-0ed9-d9b9-356406988010@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <716d73f5-3e2d-0ed9-d9b9-356406988010@intel.com>
X-ClientProxiedBy: AS9PR06CA0560.eurprd06.prod.outlook.com
 (2603:10a6:20b:485::10) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a61cada2-46a6-4fb1-7e53-08da1dde3df1
X-MS-TrafficTypeDiagnostic: MW5PR11MB5811:EE_
X-Microsoft-Antispam-PRVS: <MW5PR11MB58114C654A4BCE9295A7944997EF9@MW5PR11MB5811.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YvnQYQnciDcyvG9QtsGXQgyY3aTwp8rfQWx8dlNMeTID+aTHlwBTFpcNqiV9sZ1Kx0dRJlk3jxHkqv1hGCFzvKZ9Kd8sh/W7ayPOjRF/0T0ehP20ER6dWmmOiWBlsIAAKQN/C578oFWUKyCs7ZfihqslyppRbJmK7bVlWU9MmkMgd10OEtNeNNIsadalzVVawau4qyORgjJQWBiYNLt1LAUngidWFloH9a29qLqaZgsSLGtR95S/eCNl+k2OAr8A2jTbQOiQGQFKwGmdglIO3JPi6qGDcMpRhhc7XTVS+T0OimalBbopWaxPBgh5Y3dNxG4Vc1b5R4c5itcXjdJOXNs7kOh8rbGDXsbSfukvamb9Dn3l2z+DXy2S2L7w2HJwKudy0kirFuH7fETrWllQqjP3P6rxSm+YnOmxY8xqv+4Ceod+tXrc7ssj/Sfg1xx1i3WOnD9w8NlPwZX/kSlh+kXHTA8uednzQxt/eCrzqzLhe6bn3VPpx1bOO2Z3szI0xl8/V+lGF9sSIpmpbpy5iIWYA/ywYkmP8BBUxw3j/n/2lKozjOK9YhKJE54GFwOQlaNJ0Ug6SQYaGZ2FfhsJYvq89DWXg/P4vo8Q8oA1jLU0WtV5rb3hchZTySkHgIIzLOfAbCjzQk8FKBmt4rMCVCiVYOFAWKuh5EUlJS64c6xXWQyk+LoadSLb73HYziVgt0RZ26TlbcqEzMnez999lb6wN4v8uzEEfzUN5Po6531pQRcNUgG0SD4ju6iJj40T
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(5660300002)(86362001)(8936002)(66946007)(53546011)(316002)(31686004)(82960400001)(36756003)(2906002)(6512007)(26005)(186003)(66476007)(66556008)(31696002)(8676002)(4326008)(6486002)(6506007)(6666004)(107886003)(2616005)(508600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THJ2MEI0d0Y5cnNDYjV6dC9zWVYxc1ljVnpkOFhKUTdCSko4MGs2OS9rcWtq?=
 =?utf-8?B?L1VlcUdqWFhnbFVzZkNlb3pXcXBaY3RORCtQNG11dzY3WElheXJXbkl1MG5o?=
 =?utf-8?B?aTZYTTJjR1QzWEluS0M2cmxsOEF1Z0RxWHRieU5ManF2RUI3WVZHYjQ2ZUJi?=
 =?utf-8?B?RkxoTlJKRGdMbXRsTG5TSlZ5M2FKeG55SWo5eDNjbVlqZ1AyUDRDMTllTm5y?=
 =?utf-8?B?M2t4TDc1VXR1eFpmRDVvZ3lEV1hycVBjNHd0K0YzUHNqTHliSVBBb1hNWnN4?=
 =?utf-8?B?cGphOVZwMnpzRXFGK0IzdVlxeFFweGFMK1FwVDQ1TkhkS3NYSEZwVUFkYkE2?=
 =?utf-8?B?NFVvTjNSVEdMbm1vUlNmWkNHYVV4dW83MVpYV2s5dG1uYjUyemNpaFRld1Nh?=
 =?utf-8?B?bmZrN0hzY0xQelRWWmlGZXczaHl5OUJueDNmMWprNzJ5bEVPN01nMHhtbytJ?=
 =?utf-8?B?UU0zdndjV2p4WkxFeExoNy9LbHlMSlJ4UWlyWU1HMGwvcWhCaitmRU4xK28y?=
 =?utf-8?B?ZGJuOUdkKzdndWJtNG1TaE0xTHFrMDIyN3VJUjRzZXl0OHJPQ2tGcE5XQ3Jp?=
 =?utf-8?B?d2lESU9BaEx4NTVpZnIrWTdNU3drMzg4dEEzT3pHUG5rVzBMLzl3MXc1bFF1?=
 =?utf-8?B?QmdGdDNpaWpKWVlUSHVUcmNUeEp4THREeVBGTit6N09HckFpU3dxbGlLN2pE?=
 =?utf-8?B?VkJHQ3U1dnVUUFdhWkRmaHp1VGl6aDE2RG9sTndUSjNVZzV4OEVpTllQeVhw?=
 =?utf-8?B?OThPMjhIZ0RiTnJqQmRRVnZ5ODVMQkYySkQ3dXRNeGxaR1FFMDY3RDltOWU5?=
 =?utf-8?B?KzVnck9kVjNRVkJlMldHT25PZGZlV0NlR0VIOHlIUWxvUllPc3hUZ0I1Wjl5?=
 =?utf-8?B?ZWh5RWJNcUtScDNlS21waFNvbHpNaCsyaFdHUHVBTTBldUtSODF3TmlFVmox?=
 =?utf-8?B?YlVkcnZFbzdzZ1FZNXBrMVdUbHhuTGZ6T1dMQzNPeU92MVdDME9aZDM3RXlU?=
 =?utf-8?B?ZFRMQjIzOENxNmRLM0g3NllreXNtY3BBYmc5ZVh3RFB1clR2dHpwSC8zZ2Fx?=
 =?utf-8?B?SG14MmFYMjVGazZpN0RFL1NtMDE3eUtQL0s5N3lpN2c4SlQ4Q2hjZjM0Zkhu?=
 =?utf-8?B?cGEwSXZDNkpVMEJTSS94STdWc0xDa1NqTXBLNUdBTVY3NUdhZU85ZTg0TzYr?=
 =?utf-8?B?MEhlRk5VZEZHeFUxK1BMaWUxVzdUYXgvelBsSDBId0VMT05PeGJ2NU9sQVlH?=
 =?utf-8?B?R3d0WVo5aUZSeGZQT09IZThkM0VmQ2dTdnJWMHlxNFc4UnY3UUxsbkQxNEhI?=
 =?utf-8?B?T1JkWHZxUVlMek0xcmkySHNMR2pPeFI0bEVPa09XVVdRbzN1WTcrTzFCekUz?=
 =?utf-8?B?dXJPTnBHMUpKOTQrOW9KQ1hINCtMc0lURGVjemNiTmhHUnJuOEtCcVFybHpJ?=
 =?utf-8?B?c3l5VWY2aVIwbGt6OEdMMEVua1BENXc3ZXJ4UUE5dXNjUmY2OFJ6RVpZL2cx?=
 =?utf-8?B?eUgwMzFKUUJUak03d0xBZS85bjZpWEt0UzFVWEZOcGVnN1dpc3o1RVROMDA4?=
 =?utf-8?B?bVRiKzdMSkQrSVlDTCt3L3dFZUpKcUdwK3R4V0trdnRQcnMrNmc1WEp5L05t?=
 =?utf-8?B?U0RSUEsxUzZoejNBVGM4cERKd2pLbHkxd3hNWjUwRk1KaTU3TG56NHY2U24w?=
 =?utf-8?B?Q3hqcW9zSkFEZFJUazRndlRTdHV5dURHdUtXdGFUSmpVbXNxckZvakpJNUFz?=
 =?utf-8?B?bGNibXNseThGdUZHU0tpZXhrSkhacnJmckZzY0xaNHNuUGVjR0k2QUJzY0dp?=
 =?utf-8?B?Z2Z2ZUk2SmZ0aW41RWhqR3J3V2ptaFdpa2JjaWJpNE9EMUpNanl5VXVXclJ0?=
 =?utf-8?B?Tk9IK0ZrMCtOK1Q3Zzk4U3hDOWJtcnE0TFVhZ0hubzhCZlhJSVp1Mm5wWjZK?=
 =?utf-8?B?czU5eVBMR0F0Qjlyd0lBbkxIS0I4UzZjdE4zcjMzOFhTL1dQaVBTV01tN2N5?=
 =?utf-8?B?YisybFhlYW53VGRORmtSb3hSajc5MVEyb1JQTWtoNzlRUXF0WjErckJ2SnhJ?=
 =?utf-8?B?Wis4VWhhL1E2NHFrVTNlcERXQ2tPRXNIajk3aTVUclZ4dVNSSTRMSnEwVVF1?=
 =?utf-8?B?UXVFb3RRVklEcE9oSlMvRTVQNmo3N29sZTVkcVM5czVBaDlnQlBBT1pLcC9B?=
 =?utf-8?B?c01WRFczRmlUSS9wR0VKUFBOK3BGMWx2Sk05OWFJZFk5ZFVGNytFSHBDQVgr?=
 =?utf-8?B?VldrdzhLYmY3alZCamdsamtyL3k2ZXJlUDBFNllCdkQ4cWJtektmK1lYM1JO?=
 =?utf-8?B?aG5LcEdIYmI3RE1rdXhnSkpBdmtTcnN6Zm9SZXVCeXNLK1VTNDV6SGQ0S1Q0?=
 =?utf-8?Q?xyQ2ErsqQOlR0IUI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a61cada2-46a6-4fb1-7e53-08da1dde3df1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 06:15:58.8496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VcgsmX3L5kk/nYG101AWmIr9qsB0g+zuWWfNKn2/B419jPm+cGr7dfu/wpoqcZFJqLsHIcvEENBS6YoKLxN9xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused phy_type
 enum
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8xMy8yMDIyIDIxOjEzLCBUb255IE5ndXllbiB3cm90ZToKPiAKPiBPbiA0LzEyLzIwMjIg
MTA6MzMgUE0sIFNhc2hhIE5lZnRpbiB3cm90ZToKPiAKPiA8c25pcD4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcGh5LmMgCj4+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19waHkuYwo+PiBpbmRleCA2OTYxZjY1ZDM2YjkuLjRm
MDZlNmJiNjhiMSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19waHkuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Bo
eS5jCj4+IEBAIC0xNTAsMTMgKzE1MCw5IEBAIHMzMiBpZ2NfY2hlY2tfZG93bnNoaWZ0KHN0cnVj
dCBpZ2NfaHcgKmh3KQo+PiDCoMKgwqDCoMKgIHN0cnVjdCBpZ2NfcGh5X2luZm8gKnBoeSA9ICZo
dy0+cGh5Owo+PiDCoMKgwqDCoMKgIHMzMiByZXRfdmFsOwo+PiAtwqDCoMKgIHN3aXRjaCAocGh5
LT50eXBlKSB7Cj4+IC3CoMKgwqAgY2FzZSBpZ2NfcGh5X2kyMjU6Cj4+IC3CoMKgwqAgZGVmYXVs
dDoKPj4gLcKgwqDCoMKgwqDCoMKgIC8qIHNwZWVkIGRvd25zaGlmdCBub3Qgc3VwcG9ydGVkICov
Cj4+IC3CoMKgwqDCoMKgwqDCoCBwaHktPnNwZWVkX2Rvd25ncmFkZWQgPSBmYWxzZTsKPj4gLcKg
wqDCoMKgwqDCoMKgIHJldF92YWwgPSAwOwo+PiAtwqDCoMKgIH0KPj4gK8KgwqDCoCAvKiBzcGVl
ZCBkb3duc2hpZnQgbm90IHN1cHBvcnRlZCAqLwo+PiArwqDCoMKgIHBoeS0+c3BlZWRfZG93bmdy
YWRlZCA9IGZhbHNlOwo+PiArwqDCoMKgIHJldF92YWwgPSAwOwo+PiDCoMKgwqDCoMKgIHJldHVy
biByZXRfdmFsOwo+IAo+IHJldF92YWwgaXNuJ3QgbmVlZGVkIHNpbmNlIGl0J3MgYWx3YXlzIHJl
dHVybmluZyAwIGFuZCBjb3VsZCBwb3NzaWJseSBiZSAKPiBtYWRlIGEgdm9pZCBmdW5jdGlvbi4K
VGhhbmsgeW91LCBUb255LCByaWdodC4gSSBiZWxpZXZlIGl0IGlzIGEgbWlub3IgbG9naWNhbCBj
aGFuZ2UgLSBpdCAKc2hvdWxkIGJlIGEgZGlmZmVyZW50IHBhdGNoLiBJIHJlbWVtYmVyIHdlIGhh
dmUgYSBmZXcgc2ltaWxhciBjYXNlcyBpbiAKaWdjLiBJIHBsYW4gKFRPRE8pIHRvIGZpeCB0aGVt
Lgo+IAo+IFRoYW5rcywKPiAKPiBUb255Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
