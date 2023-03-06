Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAFD6AD0F8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 23:00:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABB2C40A38;
	Mon,  6 Mar 2023 22:00:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABB2C40A38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678140047;
	bh=aBWrSsq4apEYMh4QGLovWa6lkQDMw5jZVSMJ/Nzap5w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ci4BsYtkJGom9oD6aIqxe/INF/VvXxwb6hFkozyJNaSZzlUp1I0wwdLOW+RgutyPv
	 PeX/SSM/k4c9wNGBFVx/F+Cxmlu2bvYmM1bfkCRha1UysgEpbpzxDs1WXfCOaxKTiM
	 71kAKnvFZA4dq8z0EEHGiBggHRvHGsYAQvBFgfb8zfqNfTeUY4b7QdBhQYq03r2N6o
	 VdbdQ9KFMdw9BM1mQBEtgl4LbzyQhqwpnm5YwtvEabnK2KZ9mQD1LpXSanhS3w+07A
	 3Y6NqukZfOTT+RNREG8N2ILeCXem7JluWddPKpIuGBvxiiRBPDAgQELI03sFWbEf8m
	 wA5t05qoMszMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ta3twFf67oGz; Mon,  6 Mar 2023 22:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AB8A40A35;
	Mon,  6 Mar 2023 22:00:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AB8A40A35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 423E11BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27CA740A35
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27CA740A35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LIrG3Rwvmnis for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Mar 2023 22:00:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 667D040116
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 667D040116
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:00:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="421962813"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="421962813"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 14:00:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="653739266"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="653739266"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 06 Mar 2023 14:00:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 14:00:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 14:00:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 14:00:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 14:00:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WGRUKbG+7t//+J7RnwPRXH7qzb9uMbK6FSpz1SMX2TcBGxKp/l2KjoWW3gBXq0Twx+zFWyY5455VrfYbNA2msZp01YUgaW+lP1txy60cJ4/7qoV6zMxaFCrfc3qK4y3qzspOAduVte3trTkiDjF/sMiJhYLmzL1ecgMdvxYsXyQYTqtMwPK6ISPhYX677bvCMUIIntrsnG6NQecrEUC/XMK4WzxLewrkbGu5zMerybqzwcRUb5gvc7GevJAndYe8/uKNJRSxYAO3j05hvmaGn1OIsriBb8PRompglCjMwaiQQCtpiQuJSyqw3wWOtsiYhOo1IqDHXoT2j16chmzkrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vb2mjPM8oUWpdpPRXCxraqCNb77kskwAgIVrsEtcQWU=;
 b=OaXeg0zUZZmfSYKWA2+nN6knxGaEQyw234Ga8Apnl8C73pqUhk/zkaSPOlhm1KBsbPLnl3LCZJvG/K0sqqOya5rS71BjPs3PPOeZIkkSuP6I3CM/tEUd63siGiPNBIi5BU4qZl+27lyyshmEKLrVffwgI9NkKvzU6RXkqQ9YIGuhTyeooGlMciojWEvzNhn0A2974eF/wAOig/tf6o7W/67/jjr8fBbXCItMqoGGk7tgUwwzGNB4QeYHSUkvq0tqWCQCVReQYoxMZ6GuYLMc/q03oIP0JAvvZFz4rtabM/PiL2c+oMph6c5Qxhny4mDEDPCy7Xk0qGtRetWqt0JLMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by DS0PR11MB6328.namprd11.prod.outlook.com (2603:10b6:8:cc::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.25; Mon, 6 Mar 2023 22:00:33 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e28c:6ed5:f47d:3e32]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e28c:6ed5:f47d:3e32%6]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 22:00:33 +0000
Message-ID: <fcd14f4d-4d30-cc90-aff4-62eeab6d8646@intel.com>
Date: Mon, 6 Mar 2023 14:00:30 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-3-paul.m.stillwell.jr@intel.com>
 <e24a43ff-e411-87c3-dfe0-f45d463aa3dc@intel.com>
Content-Language: en-US
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <e24a43ff-e411-87c3-dfe0-f45d463aa3dc@intel.com>
X-ClientProxiedBy: SJ0PR05CA0077.namprd05.prod.outlook.com
 (2603:10b6:a03:332::22) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|DS0PR11MB6328:EE_
X-MS-Office365-Filtering-Correlation-Id: 621fd630-6f1f-46bd-f247-08db1e8e34d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bp1lSWR448ctGxDqVVDBF5UHplZSn6+CsLJ/E5oDUBHk8mu/Ofpi8TvLUwqCkkmIWBkfZev0DTo8C/CvAcEFN/srB4XpXQE51N9MYzwl9emtb+9ey1IgyOaNhf7xx4nyPWH7g15e7dPYLp8OCttpJm4tN46ACpfGEcJ6AkV9qxj4iT6tX47yCuMplfKE3/rTrHryPFCSOYDORtHNjbtyDGdNkn4uf6xVhiy8aw7S3ZVTxzWdJJiT2G9zfHEXxmTgVIlfoR5bdbu7sliMza1nE0kCkU6Q11cHz/fni3k9Q5aHFljqZ0gHPMYdlkdmPlOopJcO67rwYhR6Bnk+bF/J8N5aB/OtiMye+yNP+QxlrT4iHrMUJsopow2NlF8Jmi7RA6haNEhNpRTZtbm+ThQhAiXpfOXEMVyqXznlRLjk7ff7PfkpTmuNthaPMbcafEvS8WrH60sERRpWvwD38eBf80vaVrflnh1OqNmVUO9P7MfRKZc52CERbK1r6+9y5sWhtD9l7zPwdh53OopuooX+HEvGLatmVkIYaQKAVawN4jLUvMtKXuIAXoUuCGdf8iRXp67A+nxEarfcE50kaoq6aRtRAg/ZOEnQQ54YtORHFcj5SIY78v+kUG48x33/KyBqA4PPcVOLdmfEX0b9lppD1Ao4jJiosV7QhDhqaopaP9A3jtmrZNPXivn+yjdv9ZLoNSrVQ1OSjA++P8QRx5p7/i/e+ZAd2Bgyg+I8xMYPqhg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199018)(5660300002)(41300700001)(4326008)(8936002)(86362001)(31696002)(36756003)(2906002)(82960400001)(38100700002)(31686004)(83380400001)(6506007)(53546011)(6486002)(478600001)(107886003)(8676002)(66476007)(66556008)(66946007)(2616005)(316002)(26005)(6512007)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1pKR0xKeHFjY2k1TTI3SXc4VjVJMFV5ZTFpMXZOekhORVZNZlBRNkRVRld6?=
 =?utf-8?B?Vy9RcnczZTdZY2pTdnhBdXc1SDRQR25oSDVKTjczN1ZmTjhkZFBNb09VWkQx?=
 =?utf-8?B?dnZId1FES2xzWVRIQXJmZzIzMjNYODBpdlZyWlZLc0pCRXVWOHdieTB2YU93?=
 =?utf-8?B?Y01uUWloNUdMdDY2U1U4NXZzVnBkWHc5bGNWenhCK2tMUUlCajRjeVNFdyty?=
 =?utf-8?B?OEdXTTNoTlZUeTkvRTFTSGF3RXZUTWVNUlFyM3VOZ2dzZTlzUy9nc3BUc1Ay?=
 =?utf-8?B?SzdFdzU0clVYMXFWOFV1YklxS1p6cEJpODBZaUZTN0V3d0JKei9pVlQxSzJq?=
 =?utf-8?B?TW5SeGdSOGhkdEpTNi9CZnB3V3RKTFd5WTlqalVSbTgvK2xQajVKcEhKVzVz?=
 =?utf-8?B?RW1yWnJoVkRFR2ZWdzlBMFhxRGRiTnkyWEJiT2NpMWlaUERhRnFLNFVPamZq?=
 =?utf-8?B?b0tXdHBweG41MXJoeGxrVGFYVzJzQVBuNnJacUFGYmlFVmtlM1FSZXIweU5s?=
 =?utf-8?B?L1o2SWI4eFhOUktIQS9oSlJZQ1RJeUhhbW5LTHZCU3czV09DaUJLMjBTQnoy?=
 =?utf-8?B?SjFJT1U5Tkx4dFN6VDVsaGxpWG1tOVl0UmZJRzJ4bERNU3pvRGZLWWhhVUFZ?=
 =?utf-8?B?b1NnRmZQMktXWTJSWVM3dWVXRXpqa3FHZ2o3ankwZHdXOUo5UzBkblplejhG?=
 =?utf-8?B?VE9ETGhxM1NFM0w4SkRvRHdwT3BxKzVZYm81RC8yWlRzV2JjR2t3bjhTczVr?=
 =?utf-8?B?MVVvaW5ubEdFa0tMZlBtcjRHck83WWhFMzgyeitreG5tWVRWN2VXS0pkYkE2?=
 =?utf-8?B?a094aW81QkJCbGVQMlNtYklVYmJTeFZFVXFtN2N6WHozSmhqNGtQU2pMRmJm?=
 =?utf-8?B?K0M0bzdqNStnTUp1QXU0RVZaZXpGeWpJTE9ydCswUlFtWFh2WEJGOWM4MitT?=
 =?utf-8?B?eTRSaXhYZ0RsamJLYWtoRnRPZG5EQkV1M2RhTG02NmNvaCt6REtzZmRlTnI5?=
 =?utf-8?B?dUdkSytOYzRzaVFJNTAwTERINFA0TTdWdUJZeHB0VFJBZ0NGaWtKbnlWOVcv?=
 =?utf-8?B?WmZRaG5oaUxlNWF5U3hQTCtFblRlSVJtVEN3RFVrOFRGTjdpM2YvQnlFS2hp?=
 =?utf-8?B?d3VzS2xuVlhzVERFdEZnRnh5UW5Fekc1Y1lsazJmdHphK21pNklNWE5zSzF4?=
 =?utf-8?B?TnR1K1lZKzN2a3BGUWx0ZXVIbzBjZWxGWWRlWVROTTAwUC96UnAyRDlGeEhP?=
 =?utf-8?B?aVlVUDFQK0FUQnlaS0Rua3FySm9NMDAyUVlVbzlpTDMyNVA0ZEdSMjlWVDVK?=
 =?utf-8?B?V1N4T1dyWUluUTRBUUx0TlJ2WUFVNDdOdXlqWE1SUkdNczhhOS85Tk1Uanhm?=
 =?utf-8?B?STFScDhLckFNMVFXOFpMMlBJUHJ4V29DajVIbCtSNi9ud1lpdWQ2WVk1RFY5?=
 =?utf-8?B?aHV0R00ybmRXRkdiQVdLbTVXWXlWWHdDVmh3K0krcGJRczVtUnFVc01kMS9j?=
 =?utf-8?B?TEZlYVppUmFxU1J4ZDhBeUVxR1IweHhsYm10Q2pUMGxYR2xNYmdOZWFVa3Ix?=
 =?utf-8?B?ajd1MlcyM1B5L3B1OTk2V0RNQVJYRWpvbzJLaFU4d1d6UlMxTENBUlRIV2U4?=
 =?utf-8?B?ZzFBV2dORnlaTWdmTnJnS1FSYUVEa1NWK3lIbitiSnVxc05UaWdXQlJaTitk?=
 =?utf-8?B?MWtRSWJyOTdCWjlIY2RZbko5Q3RzeXFZQmRoQndiK2xwYnpjRkFhK2Vsa0xu?=
 =?utf-8?B?WU4waUlkMXZXMGl1NVNIeklwd0VkbWFNd0crcjJ0YnRHYTh4RDFNZlU4TzRP?=
 =?utf-8?B?SnZwbGsxOVVSQ1RtTGIrZjNLcmJzMDdTaVN5MmVWdVRNWFZWTmYwa1UxSGRo?=
 =?utf-8?B?MHNhMHZPL3hJNWxpcU9hOER2UnRKdzRxbEE2dFJMQVFTeWtOeGxnRUhGKzRH?=
 =?utf-8?B?RTVQNU9VaVphdEtNcUVhdFpFZUp2c2R6cEt4Vko5OHU3MzZOcTBobEdudG5r?=
 =?utf-8?B?L2NXdjdtN1YyaUEyS1A0K2grdFRCOG9tM0pjOFErMW12VlNTS21ER0g1L3R3?=
 =?utf-8?B?VFZONVc4NTFOWktCSU5kL1pyRm9hR2dQOTR1VEZwMnZtTjdjejJYRC9BZy9a?=
 =?utf-8?B?dHBpQ2dtYWNPVkFpTjRjeFlrSGtLNXl2M1d2N3ByZithYnhsdW1nM1dDVmlq?=
 =?utf-8?Q?Ll3X1VsJODkdfOnrSJjUsYs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 621fd630-6f1f-46bd-f247-08db1e8e34d1
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2023 22:00:33.6855 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Tm9OD0HqzdPQIoiK12KCjz/H8XEQ+6V4UWsyurSpYMZ/6X1ks1nP0iYY+EsG20qAc1d84GWXG0jKTTPYGYoC1HlDfr19aPzFal3wtb20ig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6328
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678140039; x=1709676039;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2r3RFKNiNjeuiyxuCt7pi/MTQoOsSwbxXA/6Txk/g14=;
 b=iFNv387yXw8itWnRkmfVjP94ZWzWCsgLhpt6a4Fj9s4jVLKO4mZoat8p
 mmzm4XDLZMC4COPUdVviuE56B69HitN1i2UazCGGaEgPv3+d82mrzzaMJ
 4Y/zd+invh3E8zS9JinznokFVO237H02yW95yVA0UJ9xAULSwgZhJZtHO
 uWIz9N0SzknDN4Q8hC9g8NvRdjinf/nhkDpeKsOhJv9srQEgPDMqhH6Iy
 92Cp6OMADj599isC6rewavdAGABoD7vG7FNua8C4AlODTdB2MCpLYgHag
 /+m7dTyVCsH5iAQ+W2+alTgcX1id0NbMPW4R5nYHHL0iauPBQWT+q9xUf
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iFNv387y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 2/5] ice: enable debugfs
 to check FW logging status
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8zLzIwMjMgMzoyMSBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gMy8yLzIwMjMgMTo1
MSBQTSwgUGF1bCBNIFN0aWxsd2VsbCBKciB3cm90ZToKPiAKPiBbLi4uXQo+IAo+PiArI2lmZGVm
IENPTkZJR19ERUJVR19GUwo+PiArdm9pZCBpY2VfZGVidWdmc19md2xvZ19pbml0KHN0cnVjdCBp
Y2VfcGYgKnBmKTsKPj4gK3ZvaWQgaWNlX2RlYnVnZnNfaW5pdCh2b2lkKTsKPj4gK3ZvaWQgaWNl
X2RlYnVnZnNfZXhpdCh2b2lkKTsKPj4gKyNlbHNlCj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgaWNl
X2RlYnVnZnNfZndsb2dfaW5pdChzdHJ1Y3QgaWNlX3BmICpwZikgeyB9Cj4+ICtzdGF0aWMgaW5s
aW5lIHZvaWQgaWNlX2RlYnVnZnNfaW5pdCh2b2lkKSB7IH0KPj4gK3N0YXRpYyBpbmxpbmUgdm9p
ZCBpY2VfZGVidWdmc19leGl0KHZvaWQpIHsgfQo+PiArI2VuZGlmIC8qIENPTkZJR19ERUJVR19G
UyAqLwo+PiArCj4+IMKgIGJvb2wgbmV0aWZfaXNfaWNlKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYp
Owo+PiDCoCBpbnQgaWNlX3ZzaV9zZXR1cF90eF9yaW5ncyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpKTsK
Pj4gwqAgaW50IGljZV92c2lfc2V0dXBfcnhfcmluZ3Moc3RydWN0IGljZV92c2kgKnZzaSk7Cj4+
IEBAIC05MzQsNiArOTQ1LDE4IEBAIGludCBpY2VfYXFfd2FpdF9mb3JfZXZlbnQoc3RydWN0IGlj
ZV9wZiAqcGYsIHUxNiAKPj4gb3Bjb2RlLCB1bnNpZ25lZCBsb25nIHRpbWVvdXQsCj4+IMKgIGlu
dCBpY2Vfb3BlbihzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2KTsKPj4gwqAgaW50IGljZV9vcGVu
X2ludGVybmFsKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYpOwo+PiDCoCBpbnQgaWNlX3N0b3Ao
c3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldik7Cj4+ICsjaWZkZWYgQ09ORklHX0RFQlVHX0ZTCj4+
ICtpbnQKPj4gK2ljZV9wZl9md2xvZ191cGRhdGVfbW9kdWxlcyhzdHJ1Y3QgaWNlX3BmICpwZiwg
dTggbG9nX2xldmVsLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVk
IGxvbmcgZXZlbnRzKTsKPj4gKyNlbHNlCj4+ICtzdGF0aWMgaW50Cj4+ICtpY2VfcGZfZndsb2df
dXBkYXRlX21vZHVsZXMoc3RydWN0IGljZV9wZiAqcGYsIHU4IGxvZ19sZXZlbCwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGV2ZW50cykKPj4gK3sKPj4g
K8KgwqDCoCByZXR1cm4gLUVPUE5PVFNVUFA7Cj4+ICt9Cj4+ICsjZW5kaWYgLyogQ09ORklHX0RF
QlVHX0ZTICovCj4gCj4gVGhpcyBjb3VsZCBiZSBwdXQgd2l0aCB0aGUgaWZkZWYgYWJvdmUKPiAK
CkRvbmUKCj4+IMKgIHZvaWQgaWNlX3NlcnZpY2VfdGFza19zY2hlZHVsZShzdHJ1Y3QgaWNlX3Bm
ICpwZik7Cj4+IMKgIGludCBpY2VfbG9hZChzdHJ1Y3QgaWNlX3BmICpwZik7Cj4+IMKgIHZvaWQg
aWNlX3VubG9hZChzdHJ1Y3QgaWNlX3BmICpwZik7Cj4gCj4gWy4uLl0KPiAKPj4gKy8qIFNldCBG
VyBMb2dnaW5nIGNvbmZpZ3VyYXRpb24gKGluZGlyZWN0IDB4RkYzMCkKPj4gKyAqIFF1ZXJ5IEZX
IExvZ2dpbmcgKGluZGlyZWN0IDB4RkYzMikKPj4gKyAqLwo+PiArc3RydWN0IGljZV9hcWNfZndf
bG9nIHsKPj4gK8KgwqDCoCB1OCBjbWRfZmxhZ3M7Cj4+ICsjZGVmaW5lIElDRV9BUUNfRldfTE9H
X0NPTkZfVUFSVF9FTsKgwqDCoCBCSVQoMCkKPj4gKyNkZWZpbmUgSUNFX0FRQ19GV19MT0dfQ09O
Rl9BUV9FTsKgwqDCoCBCSVQoMSkKPj4gKyNkZWZpbmUgSUNFX0FRQ19GV19MT0dfUVVFUllfUkVH
SVNURVJFRMKgwqDCoCBCSVQoMikKPj4gKyNkZWZpbmUgSUNFX0FRQ19GV19MT0dfQ09ORl9TRVRf
VkFMSUTCoMKgwqAgQklUKDMpCj4+ICsjZGVmaW5lIElDRV9BUUNfRldfTE9HX0FRX1JFR0lTVEVS
wqDCoMKgIEJJVCgwKQo+PiArI2RlZmluZSBJQ0VfQVFDX0ZXX0xPR19BUV9RVUVSWcKgwqDCoMKg
wqDCoMKgIEJJVCgyKQo+PiArI2RlZmluZSBJQ0VfQVFDX0ZXX0xPR19QRVJTSVNURU5UwqDCoMKg
IEJJVCgwKQo+PiArwqDCoMKgIHU4IHJzcF9mbGFnOwo+IAo+IFBsZWFzZSBhZGQgYSBuZXdsaW5l
IGJldHdlZW4gdGhlIG1lbWJlciBhbmQgdGhlIGRlZmluZXMgdGhhdCByZWxhdGUgdG8gCj4gaXQu
IFBsZWFzZSBjaGVjayB0aGlzIGZvciBvdGhlciBpbnN0YW5jZXMvbmVlZHMgYXMgd2VsbC4KPiAK
CkRvbmUKCj4gWy4uLl0KPiAKPj4gKyNpbmNsdWRlIDxsaW51eC92bWFsbG9jLmg+Cj4+ICsKPiAK
PiBBbnkgcGFydGljdWxhciByZWFzb24gdGhpcyBpc24ndCB3aXRoIGV2ZXJ5dGhpbmcgZWxzZSAo
YW5kIGFscGhhYmV0aXplZCk/Cj4gCgpUaGlzIGlzbid0IG5lZWRlZCBpbiB0aGlzIHBhdGNoIHNv
IHJlbW92ZSBpdCBoZXJlIGFuZCBhZGQgaXQgYmFjayBpbiB0aGUgCmNvcnJlY3QgcGF0Y2guCgo+
PiArI2luY2x1ZGUgPGxpbnV4L2ZzLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvZGVidWdmcy5oPgo+
PiArI2luY2x1ZGUgPGxpbnV4L3JhbmRvbS5oPgo+PiArI2luY2x1ZGUgImljZS5oIgo+PiArCj4+
ICtzdGF0aWMgc3RydWN0IGRlbnRyeSAqaWNlX2RlYnVnZnNfcm9vdDsKPj4gKwo+PiArc3RhdGlj
IGNvbnN0IGNoYXIgKm1vZHVsZV9pZF90b19uYW1lKHUxNiBtb2R1bGVfaWQpCj4+ICt7Cj4+ICvC
oMKgwqAgc3dpdGNoIChtb2R1bGVfaWQpIHsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNfRldfTE9H
X0lEX0dFTkVSQUw6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIkdlbmVyYWwiOwo+PiArwqDC
oMKgIGNhc2UgSUNFX0FRQ19GV19MT0dfSURfQ1RSTDoKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biAiQ29udHJvbCAoUmVzZXRzICsgQXV0b2xvYWQpIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNf
RldfTE9HX0lEX0xJTks6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIkxpbmsgTWFuYWdlbWVu
dCI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xPR19JRF9MSU5LX1RPUE86Cj4+ICvCoMKg
wqDCoMKgwqDCoCByZXR1cm4gIkxpbmsgVG9wb2xvZ3kgRGV0ZWN0aW9uIjsKPj4gK8KgwqDCoCBj
YXNlIElDRV9BUUNfRldfTE9HX0lEX0ROTDoKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAiRE5M
IjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNfRldfTE9HX0lEX0kyQzoKPj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiAiSTJDIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNfRldfTE9HX0lEX1NEUDoK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAiU0RQIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNf
RldfTE9HX0lEX01ESU86Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIk1ESU8iOwo+PiArwqDC
oMKgIGNhc2UgSUNFX0FRQ19GV19MT0dfSURfQURNSU5ROgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuICJBZG1pbiBRdWV1ZSI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xPR19JRF9IRE1B
Ogo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJIRE1BIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9B
UUNfRldfTE9HX0lEX0xMRFA6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIkxMRFAiOwo+PiAr
wqDCoMKgIGNhc2UgSUNFX0FRQ19GV19MT0dfSURfRENCWDoKPj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiAiRENCWCI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xPR19JRF9EQ0I6Cj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gIkRDQiI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xP
R19JRF9YTFI6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIlhMUiI7Cj4+ICvCoMKgwqAgY2Fz
ZSBJQ0VfQVFDX0ZXX0xPR19JRF9OVk06Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIk5WTSI7
Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xPR19JRF9BVVRIOgo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuICJBdXRoZW50aWNhdGlvbiI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xP
R19JRF9WUEQ6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIlZQRCI7Cj4+ICvCoMKgwqAgY2Fz
ZSBJQ0VfQVFDX0ZXX0xPR19JRF9JT1NGOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJJT1NG
IjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNfRldfTE9HX0lEX1BBUlNFUjoKPj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiAiUGFyc2VyIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNfRldfTE9HX0lE
X1NXOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJTd2l0Y2giOwo+PiArwqDCoMKgIGNhc2Ug
SUNFX0FRQ19GV19MT0dfSURfU0NIRURVTEVSOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJT
Y2hlZHVsZXIiOwo+PiArwqDCoMKgIGNhc2UgSUNFX0FRQ19GV19MT0dfSURfVFhROgo+PiArwqDC
oMKgwqDCoMKgwqAgcmV0dXJuICJUeCBRdWV1ZSBNYW5hZ2VtZW50IjsKPj4gK8KgwqDCoCBjYXNl
IElDRV9BUUNfRldfTE9HX0lEX1BPU1Q6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIlBvc3Qi
Owo+PiArwqDCoMKgIGNhc2UgSUNFX0FRQ19GV19MT0dfSURfV0FUQ0hET0c6Cj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gIldhdGNoZG9nIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNfRldfTE9H
X0lEX1RBU0tfRElTUEFUQ0g6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIlRhc2sgRGlzcGF0
Y2hlciI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xPR19JRF9NTkc6Cj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gIk1hbmFnZWFiaWxpdHkiOwo+PiArwqDCoMKgIGNhc2UgSUNFX0FRQ19G
V19MT0dfSURfU1lOQ0U6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIlN5bmNlIjsKPj4gK8Kg
wqDCoCBjYXNlIElDRV9BUUNfRldfTE9HX0lEX0hFQUxUSDoKPj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiAiSGVhbHRoIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9BUUNfRldfTE9HX0lEX1RTRFJWOgo+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJUaW1lIFN5bmMiOwo+PiArwqDCoMKgIGNhc2UgSUNF
X0FRQ19GV19MT0dfSURfUEZSRUc6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIlBGIFJlZ2lz
dHJhdGlvbiI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfQVFDX0ZXX0xPR19JRF9NRExWRVI6Cj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gIk1vZHVsZSBWZXJzaW9uIjsKPj4gK8KgwqDCoCBkZWZhdWx0
Ogo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJVbnN1cHBvcnRlZCI7Cj4+ICvCoMKgwqAgfQo+
PiArfQo+PiArCj4+ICtzdGF0aWMgY29uc3QgY2hhciAqbG9nX2xldmVsX3RvX25hbWUodTggbG9n
X2xldmVsKQo+PiArewo+PiArwqDCoMKgIHN3aXRjaCAobG9nX2xldmVsKSB7Cj4+ICvCoMKgwqAg
Y2FzZSBJQ0VfRldMT0dfTEVWRUxfTk9ORToKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAiTm9u
ZSI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfRldMT0dfTEVWRUxfRVJST1I6Cj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gIkVycm9yIjsKPj4gK8KgwqDCoCBjYXNlIElDRV9GV0xPR19MRVZFTF9XQVJO
SU5HOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJXYXJuaW5nIjsKPj4gK8KgwqDCoCBjYXNl
IElDRV9GV0xPR19MRVZFTF9OT1JNQUw6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gIk5vcm1h
bCI7Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfRldMT0dfTEVWRUxfVkVSQk9TRToKPj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiAiVmVyYm9zZSI7Cj4+ICvCoMKgwqAgZGVmYXVsdDoKPj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiAiVW5zdXBwb3J0ZWQiOwo+PiArwqDCoMKgIH0KPj4gK30KPj4gKwo+PiAr
c3RhdGljIHZvaWQgaWNlX3ByaW50X2Z3bG9nX2NvbmZpZyhzdHJ1Y3QgaWNlX2h3ICpodywgc3Ry
dWN0IAo+PiBpY2VfZndsb2dfY2ZnICpjZmcpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGRldmlj
ZSAqZGV2ID0gaWNlX3BmX3RvX2Rldigoc3RydWN0IGljZV9wZiAqKShody0+YmFjaykpOwo+IAo+
IEkgZG9uJ3QgYmVsaWV2ZSB0aGlzIGNhc3RpbmcgaXMgbmVlZGVkLgo+IAoKQ2hhbmdlZCB0aGlz
IHRvIGljZV9od190b19kZXYoKSBzaW5jZSB0aGF0IG1ha2VzIG1vcmUgc2Vuc2UKCj4+ICvCoMKg
wqAgdTE2IGk7Cj4+ICsKPj4gK8KgwqDCoCBkZXZfaW5mbyhkZXYsICJMb2dfcmVzb2x1dGlvbjog
JWRcbiIsIGNmZy0+bG9nX3Jlc29sdXRpb24pOwo+PiArwqDCoMKgIGRldl9pbmZvKGRldiwgIk9w
dGlvbnM6IDB4JTA0eFxuIiwgY2ZnLT5vcHRpb25zKTsKPj4gK8KgwqDCoCBkZXZfaW5mbyhkZXYs
ICJcdGFycV9lbmE6ICVzXG4iLAo+PiArwqDCoMKgwqDCoMKgwqDCoCAoY2ZnLT5vcHRpb25zICYK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBJQ0VfRldMT0dfT1BUSU9OX0FSUV9FTkEpID8gInRydWUi
IDogImZhbHNlIik7Cj4+ICvCoMKgwqAgZGV2X2luZm8oZGV2LCAiXHR1YXJ0X2VuYTogJXNcbiIs
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgIChjZmctPm9wdGlvbnMgJgo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgIElDRV9GV0xPR19PUFRJT05fVUFSVF9FTkEpID8gInRydWUiIDogImZhbHNlIik7Cj4+ICvC
oMKgwqAgZGV2X2luZm8oZGV2LCAiXHRydW5uaW5nOiAlc1xuIiwKPj4gK8KgwqDCoMKgwqDCoMKg
wqAgKGNmZy0+b3B0aW9ucyAmCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgSUNFX0ZXTE9HX09QVElP
Tl9JU19SRUdJU1RFUkVEKSA/ICJ0cnVlIiA6ICJmYWxzZSIpOwo+PiArCj4+ICvCoMKgwqAgZGV2
X2luZm8oZGV2LCAiTW9kdWxlIEVudHJpZXM6XG4iKTsKPj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBp
IDwgSUNFX0FRQ19GV19MT0dfSURfTUFYOyBpKyspIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHN0cnVj
dCBpY2VfZndsb2dfbW9kdWxlX2VudHJ5ICplbnRyeSA9Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICZjZmctPm1vZHVsZV9lbnRyaWVzW2ldOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZf
aW5mbyhkZXYsICJcdE1vZHVsZSBJRCAlZCAoJXMpIExvZyBMZXZlbCAlZCAoJXMpXG4iLAo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudHJ5LT5tb2R1bGVfaWQsIG1vZHVsZV9pZF90b19u
YW1lKGVudHJ5LT5tb2R1bGVfaWQpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudHJ5
LT5sb2dfbGV2ZWwsIGxvZ19sZXZlbF90b19uYW1lKGVudHJ5LT5sb2dfbGV2ZWwpKTsKPj4gK8Kg
wqDCoCB9Cj4+ICt9Cj4+ICsKPj4gKy8qKgo+PiArICogaWNlX2Z3bG9nX2R1bXBfY2ZnIC0gRHVt
cCBjdXJyZW50IEZXIGxvZ2dpbmcgY29uZmlndXJhdGlvbgo+PiArICogQGh3OiBwb2ludGVyIHRv
IHRoZSBIVyBzdHJ1Y3R1cmUKPj4gKyAqLwo+PiArc3RhdGljIHZvaWQgaWNlX2Z3bG9nX2R1bXBf
Y2ZnKHN0cnVjdCBpY2VfaHcgKmh3KQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRl
diA9IGljZV9wZl90b19kZXYoKHN0cnVjdCBpY2VfcGYgKikoaHctPmJhY2spKTsKPiAKPiBzYW1l
IGhlcmUKPiAKClNhbWUgYXMgYWJvdmUKCj4+ICvCoMKgwqAgc3RydWN0IGljZV9md2xvZ19jZmcg
KmNmZzsKPj4gK8KgwqDCoCBpbnQgc3RhdHVzOwo+PiArCj4+ICvCoMKgwqAgY2ZnID0ga3phbGxv
YyhzaXplb2YoKmNmZyksIEdGUF9LRVJORUwpOwo+PiArwqDCoMKgIGlmICghY2ZnKQo+PiArwqDC
oMKgwqDCoMKgwqAgcmV0dXJuOwo+PiArCj4+ICvCoMKgwqAgc3RhdHVzID0gaWNlX2Z3bG9nX2dl
dChodywgY2ZnKTsKPj4gK8KgwqDCoCBpZiAoc3RhdHVzKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBr
ZnJlZShjZmcpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiArwqDCoMKgIH0KPj4gKwo+
PiArwqDCoMKgIGRldl9pbmZvKGRldiwgIlJ1bm5pbmcgRldMT0cgQ29uZmlndXJhdGlvbjpcbiIp
Owo+PiArwqDCoMKgIGljZV9wcmludF9md2xvZ19jb25maWcoaHcsIGNmZyk7Cj4+ICsKPj4gK8Kg
wqDCoCBrZnJlZShjZmcpOwo+PiArfQo+IAo+IFsuLi5dCj4gCj4+ICsKPj4gKy8qKgo+PiArICog
aWNlX2Z3bG9nX2dldCAtIEdldCB0aGUgZmlybXdhcmUgbG9nZ2luZyBzZXR0aW5ncwo+PiArICog
QGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3R1cmUKPj4gKyAqIEBjZmc6IGNvbmZpZyB0byBw
b3B1bGF0ZSBiYXNlZCBvbiBjdXJyZW50IGZpcm13YXJlIGxvZ2dpbmcgc2V0dGluZ3MKPj4gKyAq
Lwo+PiAraW50IGljZV9md2xvZ19nZXQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfZnds
b2dfY2ZnICpjZmcpCj4+ICt7Cj4+ICvCoMKgwqAgaW50IHN0YXR1czsKPj4gKwo+PiArwqDCoMKg
IGlmICghaWNlX2Z3bG9nX3N1cHBvcnRlZChodykpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVPUE5PVFNVUFA7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoIWNmZykKPj4gK8KgwqDCoMKgwqDCoMKg
IHJldHVybiAtRUlOVkFMOwo+PiArCj4+ICvCoMKgwqAgc3RhdHVzID0gaWNlX2FxX2Z3bG9nX2dl
dChodywgY2ZnKTsKPj4gK8KgwqDCoCBpZiAoc3RhdHVzKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIHN0YXR1czsKPj4gKwo+PiArwqDCoMKgIHJldHVybiAwOwo+IAo+IFRoaXMgY2FuIGJlICdy
ZXR1cm4gaWNlX2FxX2Z3bG9nX2dldChodywgY2ZnKTsnCgpEb25lCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
