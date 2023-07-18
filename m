Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E69475860A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 22:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87F6C61033;
	Tue, 18 Jul 2023 20:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87F6C61033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689712027;
	bh=VwTj6VwsZtW4d2VuuPgs2bir48OcuJjIdnJA+fC0C5U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GEByVMcKqjmzD5mx+QBp+Wggp2EHN0Zw2APbMeuI0cbpHZKClk5naVZbZRSX8NLbw
	 QNfSRG+WFASRQmT31LPQDEDtmOFLLe3FSAD9P2ifudvQwsG3Jl0kg0p/mFcDmgBhAg
	 WOw3s3RnOGCZwBr4Z3nKUR1Mg0MCXKZsTSABRmQuRvPowctGoQRi2+vkUwpZZuVzRJ
	 qTq92Ipy/SLiLzI3uo5mmpUMq0LK6TDKfdjEzCYmMsMX07ojnI82Jm7egbrl5QZvsW
	 VKzaJeu/atIHbEgq3XpP3DQrv808pkW19vONIXyGm+5PSWq85nBT0sDVBbbLzoCMlF
	 XGyWQhFJWfedg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C7pN-vKZPkC6; Tue, 18 Jul 2023 20:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 383C661025;
	Tue, 18 Jul 2023 20:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 383C661025
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1114B1BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 20:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD0DF61025
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 20:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD0DF61025
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dtb30u55Rg08 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 20:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E72E16100B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E72E16100B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 20:26:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="397153460"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="397153460"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 13:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="837396822"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="837396822"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jul 2023 13:26:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 13:26:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 13:26:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 13:26:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 13:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NAug+a+upxpfkRPeyjiGg4/V6ztUFBOzH/0doSbkGnUsFB0r3FR3lXPejotJjmyPdIET2GlguDht8quGY7SMkQ3sH4frqO2sZtdQllNG6RbwbBxrT2s1zsZ4Lq5RW8s4Uyf3eR6ke9VQJ60gga67KFes0/mM4+hUGzT9OZl+zjVDtHIfSd8QbmKUQk/K53cquGYyvkek8wqJJgcAJYK9jQ4AvMKQM83FHd8kR5nDzNEJZrXeyNOOp6AvleoaPQGyrm/9OBNRLrCdHk5PiOiUJVFxL4TdgrzQGMcRCI3jH7yV6mkd+g3MocQ8mrY79r/vjI+M01UBK9N2NayDJNutkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DW47uY2ovtbqu2vI5MNFl0WDG8B+hGOZJCutbOFZq3o=;
 b=PzmiiA8nsT1BbU+hidZGevRD+jUQ4bjQslEw45VdcqQLeXCc81RUnGHroQxp9SY5plDYArmzhVODu/MtH5/AcJXhuybggBD3I6DpPQ27Txo9RsEOXQLo2Goz3A7ihgg2ELxI4HvqPM6Zrtc2QzFTOwHTjE9ZzDcJvVrgNXOoVopPh8iNcYS22Ef/MAhYIzQyPucl3ETxqX9IGNBuEGW54MQeKLHkPhGuC0/z0X04qgG9NAyq84ORttzn8c2BuTS9kSVBkEr93zTQMgz6SqAdcFuk5DJ+gLrofZA2utq7nUA5w2HzG2FdnRWg/J5NOPCpT9zLM6lZCF0QdFllyzI91A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 20:26:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae%7]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 20:26:47 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next] ice: introduce hw->phy_model for handling PTP
 PHY differences
Thread-Index: AQHZuPx5Rv4ocumuZUWQmlR4f3vroa+/2VCAgAAgtrA=
Date: Tue, 18 Jul 2023 20:26:47 +0000
Message-ID: <CO1PR11MB5089A50BB1766AC5B2D03C67D638A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230717221713.2249044-1-jacob.e.keller@intel.com>
 <f2b59632-8c75-38a7-2093-7c167c9a2a19@intel.com>
In-Reply-To: <f2b59632-8c75-38a7-2093-7c167c9a2a19@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH7PR11MB6676:EE_
x-ms-office365-filtering-correlation-id: f6171297-a09a-4735-5c99-08db87cd4f65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +HliDVdJ5FDEfSLDUJ4bMAXxszcqV71HQuvhWK55UepSzRdt1Fh/W89xFOPaqEiI6M0Te/4Cq7GL9Gi1RHVB019sgIBhpyXmbGOlV7GWyVluBswnNKXMTHny2ndXWbnqMze0S1GB7QWLut5wRsg+XP/zF5H6Fn0lSyVPREvF16Z7KiTF/y5PK1vveOw19h93iMv+XBCD7HGYPdGJbCUGr06K07I9SzRhc1mTe79nt7YesubpcbSAqV/sjKsEjOIRDI6IkWuKdPhtLKkfHvZ4AAKm5+Pg5t/IuksWbsZ2qBYcRa+Od0UC7jndNhjghic4NjAQe+h2Pqtr4/ngRNDG2ApW+JD7VQ11eBgV1S0mZrnk+0Y5oeK8Z1sVMfWEeJUR28qTr2vjDMOPvYJ++aFbK1lDqFkOoCsLOvwatRQYz/V7YEhHWvtqYJJnqB/RslRWHqwkEb16/P6tHNrM5p6RR8uXXcprRRmYFEl/02Nj8oTaYewKdCoI3UFg0jxO1at0qU8XuiyAIIB6+2mJ8VK3l4kqJI0V8ElnWIHCp80RlmTjEMJemtLdKN/bOZvvHcWTsUwvHX4UgMXIqSvD6bsSEquoHUg+yC782ecFWVqH/mZVI8vKzVWw29eOUpBePeJc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199021)(66556008)(478600001)(110136005)(7696005)(71200400001)(6506007)(186003)(316002)(9686003)(53546011)(2906002)(52536014)(66476007)(66446008)(66946007)(41300700001)(5660300002)(122000001)(8936002)(8676002)(64756008)(82960400001)(38100700002)(26005)(76116006)(86362001)(38070700005)(83380400001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXZoQlNRTEc3c3hmRVJvN3FVSVVsU1BHYkFmWHVsc3kybVIvQzh6UkZGMzVR?=
 =?utf-8?B?b25oRStaYlYvVzhCR1RZV1ZuMlM4SitXaWJlTGcwMy9STWVXVjVaVTFySkMy?=
 =?utf-8?B?V0VnUFdPTUpBUmRHRXA0QUxrZ1JmMEpPN1RURmhPVzk1cGs0bUpRakVGYWFV?=
 =?utf-8?B?L1o4amFxbG5yWmk3VmFLdllldGUyN1FOVWJCNzFsSWFjb0NGVXBOODd4TXRE?=
 =?utf-8?B?THc1QlFJRWRyaStoZjcvSk94QytoWG5qVnFVSlo5elVhOFBvekxrbUFkZnB0?=
 =?utf-8?B?QjI0NzI3WVlMUVJSYitqVFlLNDVOcU9LNzgwamIzVmNOUWN0dTVGblhWZUJu?=
 =?utf-8?B?Si9hVEJnaWkyYTErMkwwNndRNCtaL0JhVlE1dXdWa2lGcFFWd3BLY0RLd0Nw?=
 =?utf-8?B?NVR1KzBRMFZ4MkdkZjRGV3cycWI0cExidm91cnlWbjZsNmtFdEw0QWVjT2FB?=
 =?utf-8?B?cTdIb01zRkJtSElHZnptek56WWR3dUxXS29MZWpWVGV3aVRUU3ltZmdhaUlS?=
 =?utf-8?B?ckIwSDlPQ3k2Z2psSGdUaHNIWDB5OHg4aUhCMzdmUnFxNENPbnBZZDlVeFVF?=
 =?utf-8?B?S3BiaTVUTnh1ZkFvaXpqTkhIbk42Z0tRZkZkaVpGMTlBcHN6WVNiazJML2tw?=
 =?utf-8?B?aXZvSkI4eUtBTS9ZNkNLSm4zT0VjdWFGQTdPeUZlZ1BnWUlnSHpRS2lFdTFq?=
 =?utf-8?B?cEJjVCtubThKNm9zR1dXa1hNdk5VWE50SFF5aENXL3U4SEtVZTI0YjdYNnlE?=
 =?utf-8?B?Wkt6Yk9YZVMxbTNGc0txaXVNR0puaTVlemRKYXhwdStmY2ZKZjc1Q2xLdDJ6?=
 =?utf-8?B?WG43N1RWQmcwa0FsOG4zZjlEbDJpRmk3bEQrRDErLzFyR0M1RENlTUIrMXFi?=
 =?utf-8?B?NHh4R3h5MlpwS210dmg2MWlFd1haWGNRZnRFa1FoVjFZMEdjOHNrMjM0SGR4?=
 =?utf-8?B?bDBXR3pmcHc5Mk4rNkE3cFc2SHFYR3VRa2hIenh0Q2xlRm9FQ3VuZnVkdEFH?=
 =?utf-8?B?aEhiNG45dERWQXhCc0ZXbjY5S25kckhUbHl1azJqdUZtUzRQeUp5RDJFcmNa?=
 =?utf-8?B?NUlxWUFlaTZ1STJxM2tZRTM0ZU1TK0VlK3Q3eVpQWWtxNU1sUjRySVZpTkJR?=
 =?utf-8?B?SzBXUEtGalpMdy93QUkrNGFoNlVkbU93dWErS0IwS2MybDRQZkRINEh2Z0lM?=
 =?utf-8?B?VENaNFA2NXBCUDhTaWNoWi9NVW5mT0pBZ1ZyaUVMZGk5K05rYlZxUFZKM282?=
 =?utf-8?B?MVVQWFpRZjU2Qzh1S2xaeE1UbGVid0hCSm1uMWNNSlNzSDllWWpuSlpzUHFO?=
 =?utf-8?B?KzFnOVRqYjVRWkFwazFWSFZTMHVvNzFZOTVYNXpidnZKQy8rWDVINHdSQm1M?=
 =?utf-8?B?YWxLZ2pMbXJTZ3lNK1loVVBldXZ1dllHREZDSGprdnl3aC9XeFNOMEpmT29J?=
 =?utf-8?B?TUdwdzNBOTdyVFc0MjNSTndxWWRrb1dFNnB2alZsVEpEa0dhYUVEVGVQYThY?=
 =?utf-8?B?bU5kcEYreERvZE51WURPY1ZQOXpLTy9NYm5ZNWN0YkhPM0hpZ3Y2ZUhtS3R3?=
 =?utf-8?B?YUlqSmZMTHEza25sSk9YSURhQlM3VURXUGFOaVlPUytwSVIvaHk2MkhXVG94?=
 =?utf-8?B?R3RjK0xabDIzTTFiVDJhN2tZZFd4MmVVekZZT2piN1ArM0hUSjJQSmtFUytJ?=
 =?utf-8?B?MEh2ZnY4MGJXUUhzeWlTQ08rdjZnNHE4VllQblZQZFoyR3NqNGQycW9iSjA3?=
 =?utf-8?B?UGJwalQ2LzdWeE1KVHlYMWZNcFNFRnl6N25lWWYwcVQ4ZDk2SzNXVDh5RDlM?=
 =?utf-8?B?a2Vvd3BrOVdJTHl1L2RmbXBtZzRic0x3RnQ4RjBjZzZQcFRVWDF1cGNnL0lJ?=
 =?utf-8?B?a3plVWphV1h6NzVvYXZ4cStHdkQvZkdxMDNzTFg4TDRGZ0IwVW9zNjRRMm9u?=
 =?utf-8?B?NVRjQ2k4c0VkYzNvbmVNWlVNWTFDNDhuOG1hcXFvMVl5Nm14U0xpMFFkLzFG?=
 =?utf-8?B?VWxTOTBzeHhMOUp0dmhocEliOFlVbXZSMVdRYWpBWlowUVhYOU1oMHMrWEZY?=
 =?utf-8?B?S0Z4d0dINUZmZ085ZXRQQXQxdEIwdXMyQ2U4UWdwSUZxcFo4Vml0RkUybkVR?=
 =?utf-8?Q?V9m8elwz1r+n2Nc+nSoDP22Js?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6171297-a09a-4735-5c99-08db87cd4f65
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 20:26:47.2746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mbucsyod/iEGHYSboJPppMRCOwJVGtpsUlrkorEOHohIExiM5JbLWhvEJg1bDzFML8cO0pf9Oo6N6n7hzBp+PsY8/1pod0KY+N9H3aps2mU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689712019; x=1721248019;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DW47uY2ovtbqu2vI5MNFl0WDG8B+hGOZJCutbOFZq3o=;
 b=BjBfhCo1T3W6R5F83GTGnUxSzbEwsfSJJTwyG/Ied++UelDjilYMwF1Q
 HCnRxH44+C7oPX+7z3fsCyDfW5/XUskzonn+eX1VPVR2v0vHfzejAIhLF
 mgXcHsdRaWVqoj90mlXPcjON0pGhCeokNl0tuEpV1U9fOWL2vt8wU0x8N
 jYemjNcr6+Eo0CDsEd2nRax0Sq9aY3wZh68ra1OqkvjPxtR47EfgDjOUr
 CvtlU8Prr2at/9lv9Ss/jlviRzNQOGUzjMcWqH7wB9yS0C5Xo3Zvu+fgB
 qZx6ZBViSTZOAvYA9CRXGs0nGAXpQJDGV9w9OmJJLuqA49Zw8MjrW2rP3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BjBfhCo1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: introduce hw->phy_model
 for handling PTP PHY differences
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDE4
LCAyMDIzIDExOjI4IEFNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT47IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vv
c2wub3JnPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0XSBpY2U6IGludHJvZHVjZSBo
dy0+cGh5X21vZGVsIGZvciBoYW5kbGluZyBQVFAgUEhZDQo+IGRpZmZlcmVuY2VzDQo+IA0KPiBP
biA3LzE3LzIwMjMgMzoxNyBQTSwgSmFjb2IgS2VsbGVyIHdyb3RlOg0KPiA+IFRoZSBpY2UgZHJp
dmVyIGhhcyBQVFAgc3VwcG9ydCB3aGljaCB3b3JrcyBhY3Jvc3MgYSBjb3VwbGUgb2YgZGlmZmVy
ZW50DQo+ID4gZGV2aWNlIGZhbWlsaWVzLiBUaGUgZGV2aWNlIGZhbWlsaWVzIGVhY2ggaGF2ZSBk
aWZmZXJlbnQgUEhZIGhhcmR3YXJlIHdoaWNoDQo+ID4gaGF2ZSB1bmlxdWUgcmVxdWlyZW1lbnRz
IGZvciBwcm9ncmFtbWluZy4NCj4gPg0KPiA+IFRvZGF5LCB0aGVyZSBpcyBFODEwLWJhc2VkIGhh
cmR3YXJlLCBhbmQgRTgyMi1iYXNlZCBoYXJkd2FyZS4gVG8gaGFuZGxlDQo+ID4gdGhpcywgdGhl
IGRyaXZlciBjaGVja3MgdGhlIGljZV9pc19lODEwKCkgZnVuY3Rpb24gdG8gc2VwYXJhdGUgYmV0
d2VlbiB0aGUNCj4gPiB0d28gZXhpc3RpbmcgZmFtaWxpZXMgb2YgaGFyZHdhcmUuDQo+ID4NCj4g
PiBGdXR1cmUgZGV2ZWxvcG1lbnQgaXMgZ29pbmcgdG8gYWRkIG5ldyBoYXJkd2FyZSBkZXNpZ25z
IHdoaWNoIGhhdmUgZnVydGhlcg0KPiA+IHVuaXF1ZSByZXF1aXJlbWVudHMuIFRvIG1ha2UgdGhp
cyBlYXNpZXIsIGludHJvZHVjZSBhIHBoeV9tb2RlbCBmaWVsZCB0bw0KPiA+IHRoZSBIVyBzdHJ1
Y3R1cmUuIFRoaXMgZmllbGQgcmVwcmVzZW50cyB3aGF0IFBIWSBtb2RlbCB0aGUgY3VycmVudCBk
ZXZpY2UNCj4gPiBoYXMsIGFuZCBpcyB1c2VkIHRvIGFsbG93IGRpc3Rpbmd1aXNoaW5nIHdoaWNo
IGxvZ2ljIGEgcGFydGljdWxhciBkZXZpY2UNCj4gPiBuZWVkcy4NCj4gPg0KPiA+IFRoaXMgd2ls
bCBtYWtlIHN1cHBvcnRpbmcgZnV0dXJlIHVwY29taW5nIGhhcmR3YXJlIGVhc2llciwgYnkgcHJv
dmlkaW5nIGFuDQo+ID4gb2J2aW91cyBwbGFjZSB0byBpbml0aWFsaXplIHRoZSBQSFkgbW9kZWws
IGFuZCBieSBhbHJlYWR5IHVzaW5nIHN3aXRjaC9jYXNlDQo+ID4gc3RhdGVtZW50cyBpbnN0ZWFk
IG9mIHRoZSBwcmV2aW91cyBpZiBzdGF0ZW1lbnRzLg0KPiA+DQo+ID4gQXN0dXRlIHJldmlld2Vy
cyBtYXkgbm90aWNlIHRoYXQgdGhlcmUgYXJlIGEgaGFuZGZ1bCBvZiByZW1haW5pbmcgY2hlY2tz
DQo+ID4gZm9yIGljZV9pc19lODEwKCkgbGVmdCBpbiBpY2VfcHRwLmMgIFRoZXNlIGNvbmZsaWN0
IHdpdGggc29tZSBvdGhlcg0KPiA+IGNsZWFudXAgcGF0Y2hlcyBpbiBkZXZlbG9wbWVudCwgYW5k
IHdpbGwgYmUgZml4ZWQgaW4gdGhlIG5lYXIgZnV0dXJlLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1i
eTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jICAgIHwgIDMyICsrKyst
LQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8IDEw
NCArKysrKysrKysrKysrKysrLS0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9wdHBfaHcuaCB8ICAgMiArDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3R5cGUuaCAgIHwgICA4ICsrDQo+ID4gICA0IGZpbGVzIGNoYW5nZWQsIDEyMCBp
bnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jDQo+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiA+IGluZGV4IGRiNzhiZjE1NmRmNC4uOGFjNWFm
YmJmOWMyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfcHRwLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0
cC5jDQo+ID4gQEAgLTEzNjYsNiArMTM2Niw3IEBAIGljZV9wdHBfcG9ydF9waHlfcmVzdGFydChz
dHJ1Y3QgaWNlX3B0cF9wb3J0DQo+ICpwdHBfcG9ydCkNCj4gPiAgIHZvaWQgaWNlX3B0cF9saW5r
X2NoYW5nZShzdHJ1Y3QgaWNlX3BmICpwZiwgdTggcG9ydCwgYm9vbCBsaW5rdXApDQo+ID4gICB7
DQo+ID4gICAJc3RydWN0IGljZV9wdHBfcG9ydCAqcHRwX3BvcnQ7DQo+ID4gKwlzdHJ1Y3QgaWNl
X2h3ICpodyA9ICZwZi0+aHc7DQo+ID4NCj4gPiAgIAlpZiAoIXRlc3RfYml0KElDRV9GTEFHX1BU
UCwgcGYtPmZsYWdzKSkNCj4gPiAgIAkJcmV0dXJuOw0KPiA+IEBAIC0xMzgwLDExICsxMzgxLDE4
IEBAIHZvaWQgaWNlX3B0cF9saW5rX2NoYW5nZShzdHJ1Y3QgaWNlX3BmICpwZiwgdTgNCj4gcG9y
dCwgYm9vbCBsaW5rdXApDQo+ID4gICAJLyogVXBkYXRlIGNhY2hlZCBsaW5rIHN0YXR1cyBmb3Ig
dGhpcyBwb3J0IGltbWVkaWF0ZWx5ICovDQo+ID4gICAJcHRwX3BvcnQtPmxpbmtfdXAgPSBsaW5r
dXA7DQo+ID4NCj4gPiAtCS8qIEU4MTAgZGV2aWNlcyBkbyBub3QgbmVlZCB0byByZWNvbmZpZ3Vy
ZSB0aGUgUEhZICovDQo+ID4gLQlpZiAoaWNlX2lzX2U4MTAoJnBmLT5odykpDQo+ID4gKwlzd2l0
Y2ggKGh3LT5waHlfbW9kZWwpIHsNCj4gPiArCWNhc2UgSUNFX1BIWV9FODEwOg0KPiA+ICsJCS8q
IERvIG5vdCByZWNvbmZpZ3VyZSBFODEwIFBIWSAqLw0KPiA+ICAgCQlyZXR1cm47DQo+ID4gKwlj
YXNlIElDRV9QSFlfRTgyMjoNCj4gPg0KPiA+IC0JaWNlX3B0cF9wb3J0X3BoeV9yZXN0YXJ0KHB0
cF9wb3J0KTsNCj4gPiArCQlpY2VfcHRwX3BvcnRfcGh5X3Jlc3RhcnQocHRwX3BvcnQpOw0KPiA+
ICsNCj4gPiArCQlyZXR1cm47DQo+IA0KPiBuaXQgKGlmIHlvdSBlbmQgdXAgcmVzcGlubmluZyBh
bmQgYWdyZWUpIGJ1dCBub3Qgc3VyZSB0aGUgbmV3bGluZXMgaGVyZQ0KPiBhcmUgaGVscGZ1bC9t
YWtpbmcgbW9yZSByZWFkYWJsZQ0KPiANCg0KWWVhIHRoaXMgd2FzIHVuaW50ZW50aW9uYWwuDQoN
Cj4gPiArCWRlZmF1bHQ6DQo+ID4gKwkJZGV2X3dhcm4oaWNlX3BmX3RvX2RldihwZiksICIlczog
VW5rbm93biBQSFkgdHlwZVxuIiwNCj4gX19mdW5jX18pOw0KPiA+ICsJfQ0KPiA+ICAgfQ0KPiAN
Cj4gLi4uDQo+IA0KPiA+ICAgLyoqDQo+ID4gQEAgLTI3MzAsNiArMjc0Niw4IEBAIHZvaWQgaWNl
X3B0cF9pbml0KHN0cnVjdCBpY2VfcGYgKnBmKQ0KPiA+ICAgCXN0cnVjdCBpY2VfaHcgKmh3ID0g
JnBmLT5odzsNCj4gPiAgIAlpbnQgZXJyOw0KPiA+DQo+ID4gKwlpY2VfcHRwX2luaXRfcGh5X21v
ZGVsKGh3KTsNCj4gPiArDQo+ID4gICAJLyogSWYgdGhpcyBmdW5jdGlvbiBvd25zIHRoZSBjbG9j
ayBoYXJkd2FyZSwgaXQgbXVzdCBhbGxvY2F0ZSBhbmQNCj4gPiAgIAkgKiBjb25maWd1cmUgdGhl
IFBUUCBjbG9jayBkZXZpY2UgdG8gcmVwcmVzZW50IGl0Lg0KPiA+ICAgCSAqLw0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYw0KPiA+IGluZGV4IGYx
NzRiYWM1OGFiYS4uOGFmZWRkMjhmZjk0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+ID4gQEAgLTMxMzgsNiArMzEzOCwyMyBAQCB2
b2lkIGljZV9wdHBfdW5sb2NrKHN0cnVjdCBpY2VfaHcgKmh3KQ0KPiA+ICAgCXdyMzIoaHcsIFBG
VFNZTl9TRU0gKyAoUEZUU1lOX1NFTV9CWVRFUyAqIGh3LT5wZl9pZCksIDApOw0KPiA+ICAgfQ0K
PiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBpY2VfcHRwX2luaXRfcGh5X21vZGVsIC0gSW5pdGlhbGl6
ZSBody0+cGh5X21vZGVsIGJhc2VkIG9uIGRldmljZSB0eXBlDQo+ID4gKyAqIEBodzogcG9pbnRl
ciB0byB0aGUgSFcgc3RydWN0dXJlDQo+ID4gKyAqDQo+ID4gKyAqIERldGVybWluZSB0aGUgUEhZ
IG1vZGVsIGZvciB0aGUgZGV2aWNlLCBhbmQgaW5pdGlhbGl6ZSBody0+cGh5X21vZGVsDQo+ID4g
KyAqIGZvciB1c2UgYnkgb3RoZXIgZnVuY3Rpb25zLg0KPiA+ICsgKi8NCj4gPiAraW50IGljZV9w
dHBfaW5pdF9waHlfbW9kZWwoc3RydWN0IGljZV9odyAqaHcpDQo+IA0KPiBTZWVtcyBsaWtlIHRo
aXMgY2FuIGJlIHZvaWQ/IERvZXNuJ3Qgc2VlbSBsaWtlIGNhbGxlciBjaGVja3MgcmV0dXJuIGVp
dGhlci4NCj4gDQoNClN0cmljdGx5IHNwZWFraW5nLCBmb3Igbm93IHllcy4gSSB0aGluayBzb21l
IG9mIHRoZSBmdXR1cmUgaGFyZHdhcmUgd2UgcGxhbiB0byBzdXBwb3J0IGhhcyB0byBjaGVjayBz
b21lIGRhdGEgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgaXTigJlzIGEgY2VydGFpbiBQSFkgb3Igbm90
LCBhbmQgdGhvc2UgY29tbWFuZHMgY291bGQgdGhlb3JldGljYWxseSBmYWlsIGFuZCB0aGF04oCZ
cyB3aGVyZSB0aGUgcmV0dXJuIHZhbHVlIGlzLiBJJ2xsIGNoZWNrIHRoYXQgYnJhbmNoIGFuZCBz
ZWUgaWYgd2UgY2FuIG1ha2UgdGhpcyB3aG9sZSB0aGluZyB2b2lkLg0KDQpUaGFua3MsDQpKYWtl
DQoNCj4gPiArew0KPiA+ICsJaWYgKGljZV9pc19lODEwKGh3KSkNCj4gPiArCQlody0+cGh5X21v
ZGVsID0gSUNFX1BIWV9FODEwOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCWh3LT5waHlfbW9kZWwgPSBJ
Q0VfUEhZX0U4MjI7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
