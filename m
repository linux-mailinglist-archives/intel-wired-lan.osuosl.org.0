Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B76589FD1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 19:25:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35D2841C36;
	Thu,  4 Aug 2022 17:24:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35D2841C36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659633898;
	bh=QuG4K3yJDU89XnsBVG7H44ITj17Z8vdMOc9HN3YXOwk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ydyA+upOrvZnsinBjYYqzuwJ183Rf1tOkqX6HF2swKEfMLVkyPyy05J3G/xmGbp8r
	 cOWiGVXXNe4gRalqcJ5fXVJJ8kwkEjoGpXxZbWwgeiKQlne4SD4pb8r2LTs4RDsIcs
	 t70l0nbm2q5Bmf8jKXVobPG7Eb9YEoSs9Gtjci1hU7ysvz9uQxFjJKpZSFW/OSyI8s
	 CX+rIy0UukiPr7C39Wgys6OWlorffZS/kAGbaOva7DKhHeJDovyFoy9KmDyXDKF9Zh
	 XKsD7oqXQQe0NE+eZlQVtXdsyvmslsS9XSiVMwX/JBZ6YXEWK6Y7884TFtHxRrTx+p
	 lXFQe32RyE29A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E_RkrtZ-5hwX; Thu,  4 Aug 2022 17:24:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14E8C41C13;
	Thu,  4 Aug 2022 17:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14E8C41C13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9861BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 17:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14726831AE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 17:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14726831AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxYxfgariEE5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 17:24:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DF1983126
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DF1983126
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 17:24:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="353994493"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="353994493"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 10:24:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="692712345"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Aug 2022 10:24:50 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 10:24:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 10:24:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 10:24:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5R5+JfkeIc+3UUqI1usmidhFVB9yJkTVszyxhwLzVDzWtEmNOKWB1I9092tn7lx7rXDoxJH03GeG3xwMb8GofgxbcYE3UwZ4qjHrlzASw94o/259OH4UN9zQR9RIA1DyOWWQNiKoCmK3SXfWnC8gU1YAXfJ5efro60kN+EFD7KweiCVxY5Xjb+Ju7LXMrwgAsq+6Qaf2G88mycXPp48/AbUM6y95Fyu1bVQMp+cdPGdCtaNBOL4Q+2y4FjZxohlR8IRHj/86CzzgA+lQ89STv88zsvXS3vLLRKMhV2FEN5TDdfVa11STph9SU+ywqLsOtB1ZLmA/XLZSD3yEp+ALA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XjCqXeEhm32uKubAA/XYUhV4W0LayN9dF/fUVgUkYmg=;
 b=nBWLQThhRejW6IffXFgikixpDhxQQ8Is+jfLzdXQp//bGr33wNawCb6CCmcjrXOSQEA/bf+NDqnlMeGsahlfrsQt9+O7ft7UNcQKEMiJFBue3kXDUwttlTOJY/hBxhyhiZNAVqk3MZnGfekByN4E9GmwZG8yjA0moWDJemKUxt2SvjR/Z+uBuu7GpEKiBB4hxa6q31WbIXP67oRaqMP1H+sUQYt3K44i1/0mkHMPvky4MRS507rt3PENYAlmL+D0l1Wh1/gb79WP5CHbXvYvksXw4ZOWVeEZvSg3IXf7hyyYWPXjZjD3R+hQZeS3jcqgn0O8DkhqBc/EnMG7e1JE1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4193.namprd11.prod.outlook.com (2603:10b6:a03:1c8::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Thu, 4 Aug
 2022 17:24:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.014; Thu, 4 Aug 2022
 17:24:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Implement control
 of FCS/CRC stripping
Thread-Index: AQHYoYpbjtDvvEaogEqu8h1B8GVy5q2fCuxw
Date: Thu, 4 Aug 2022 17:24:47 +0000
Message-ID: <BYAPR11MB3367F1139ADA8B06290ABD7AFC9F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727072406.597424-1-anatolii.gerasymenko@intel.com>
 <20220727072406.597424-2-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220727072406.597424-2-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58bd31df-e61d-449d-2f7b-08da763e3b06
x-ms-traffictypediagnostic: BY5PR11MB4193:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rof620tr96ZzoSUtSaDbmeuTKvSvw2bvj+WoJ4H6jzolQclfEVxPvei7iHg/v+7oRKuzlwljNd7EPhL6gB3Rc5Dob5YHOUqr1BgN3rTHVMm02fDQYEJKeRIgPrRkB30L2gXATa/dN1hckPx0ZCValKy8P0smtwQs9INFHeO+EY/00QnD9lheHnTFdWzuGpm5bNC9j1ZEbyQdu7ySe+niFmp88tiY4yAHMm0JnWhehu1WXhTIlJmd9CQ+SjHvunrUxyXFw3tnY1MRx3I8KjdGh4JZabREshDICoXxUbtBz02FPozNEoTiS1dlGWH95yJtqwsFKHHuDsmYGwti5eooCxhow8fuhxyVihKELbVVih/OdNuqlw0gEL2AcIJSbQFTwAXoUOzbsv6ofBadmC/eYkMIVj2/Lg1ag9RWj9Ce2V03vQL5ryaQg8rAlQRUAUqDJehjsCcg85w+CmlFCKHpRZ+rOMldpPILLe5HkmeGVp9KQns84QmgGFI/nLo24lcoVZ+EffWMR97JVcPWkhvPrbTLHKk1we65blfpvFet95UxtsXxyp3Mt5jy6aRWJ/l4SVD2UNF4zLJOLQLoabss4ouR1VwfljS4impsajyM9ks9ibehvFu8ZAJB1oGzIpA3rAcxbQSCgfM9QjhnDvCSBzZwWgiBJ5hOymRBdcrkHN/lpVnu4O9O3Lo5jwZhbbnkWWizj3852bHR7Vvo+cfrDKjAWMuCR/YNdq2y4scAyBMgCCCSFfG3+O7KzO67rue79RfwzyRNZkPM3VXX6rI04XhkqmvXN1yIvQjLWBTDXvILVhAyInMtHMIgp8tpKQ6bk//q2jzXlBgf3on2JH6Gpg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(376002)(366004)(396003)(136003)(26005)(9686003)(86362001)(38100700002)(41300700001)(71200400001)(122000001)(33656002)(64756008)(66446008)(4326008)(8676002)(66556008)(66476007)(54906003)(110136005)(52536014)(316002)(66946007)(76116006)(8936002)(82960400001)(478600001)(2906002)(5660300002)(186003)(7696005)(6506007)(83380400001)(55016003)(38070700005)(107886003)(53546011)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jxq3ix/ndz5C+fCd0ZjXOlAdmh2tZDBdRPy3vHA02Vd4wW+nNPP/4YXGBo1J?=
 =?us-ascii?Q?hd/pq/Kg6yhXhZ6LGPzw0bcEfflO/6nNE0lVbGLrjs2ic4Z6/4y/QShivOLk?=
 =?us-ascii?Q?i3u7ZTu1VGpcZpT8edxMnu6u/i9ZS9OL6vk6jIvRYYF8o+q6DFqBAUrXvavP?=
 =?us-ascii?Q?6HEIyUt1QIEOMDSipcUEqF6K9EIGtdl9wVhvhQHv9DN0tSPVBmskAZ46D6qK?=
 =?us-ascii?Q?ExcCmyEOdep9ZBJsJIrpYQPPgr6DuUmaJjeZ9alpEmSnhlIRtJIe2LuEvciL?=
 =?us-ascii?Q?QgyBieaeLnWR5y1xKydnUYf0o0cSaIikn5eY2LauSymQm9PPCM4lCev5sjQ+?=
 =?us-ascii?Q?La1buglS39EuekxW2L3mYt10DUXHiwlExEu3p1pugjAIXYXS9pt22x4+g1UR?=
 =?us-ascii?Q?4/5CoctGRDm9eTUvxbGJBbPygN6E028o37x2gj7u0Y08ejeMGsxAk56R7yiC?=
 =?us-ascii?Q?pSsywL9BhxJIyaTCbW6XVFCJ73KxASTz09uGA4VQfYDYcl6+bK+bCwfSL7Tc?=
 =?us-ascii?Q?1k26QSksA7MeW+T8Zb4PkSzYh5LmK0fQ0hKUG0aSY5N+VZlDdiN6OPPKyC1X?=
 =?us-ascii?Q?6RSFZi80pH5adGAJprykIEo3ViIHWen4aO9NGIjhmuYdlkV1HtYoN3Y6qIdv?=
 =?us-ascii?Q?KzRFRwfThonI+RQN5y7BIIYIe8MvSkpeZfeo5/H/sqwrlMvN5hHWwbaK7eAW?=
 =?us-ascii?Q?cDZQ1LmIQBiq2oFh7P/7x2+7NHdbx7CnLtlwkpRQpKW0anwLzr2SwuCNmTnW?=
 =?us-ascii?Q?6huSksRj9vKXODdCGnq4nr5hlQX/B8+N41MwQoBK2cd3ZZbQDPvDGg9ndcwy?=
 =?us-ascii?Q?/ae3BVOMwSWatil1vn53REmWrebALie6xmPtQU5kK8MMrIoujj73qTJdxgiz?=
 =?us-ascii?Q?8iRE+sjOfaKLSNBf6QhjwHjt1oXygMhC6AMDO3BmIMBEH5dbnsT94mOe4euy?=
 =?us-ascii?Q?fon0F0wJPbr6LBQoGutQMpxabctdfNhZ3xOrhcxW7VCiQh6EzifbZi0ZsGdW?=
 =?us-ascii?Q?hrGTI52Im1N7WYl+3Km7UTTEr7feUr+8R/pNbHJ+7Zas/ZY5IbCVwe8d4VFe?=
 =?us-ascii?Q?p1dHmKTQoc3NVHt7CVsJmz8TibovpKzLdS8Agk6yKiVFJMPAg6YNWoo/kymA?=
 =?us-ascii?Q?pOTe3onHX7ld+bEExd7mWEtvjr3/kKGad42Ojvv9p8jiel2M9rVAc4DdOY3J?=
 =?us-ascii?Q?/Q1t8ocOzpyi2uX6TbN3AEbDECnbNWQlZRinqM/InX6hsMxQuO1mrg1SmXWN?=
 =?us-ascii?Q?lYN/K1om2A+y/xV6Z2132sUvbiwM7N7Nqia4kqnNjvix7DcnbuXk/5sT90Mg?=
 =?us-ascii?Q?UaPWWR7oUkj2vnnJrW0ul+Xq8CDX4BEDQ95xMj+iTOXteIvjU2/Q9/0NCEUq?=
 =?us-ascii?Q?ohiCnR/LaB2nx4NcUsSqlbMlyr/gQ8nkmxubJ0M+wp9KG+S9Pw79Sv6yqT8g?=
 =?us-ascii?Q?HZql5XYzEs8EJ+0Pjefjg0gUh+3GghPXaumiWOQCkue/qTPg0eSz1TYvB7wj?=
 =?us-ascii?Q?jU+6ek08gEdCjejj1OQXLVnElsMxBlWy+wWUJTl8+K1BahItShrpDVcvsIyz?=
 =?us-ascii?Q?Xz3CBRtFwR/z7euF/qnoBj2H2bOJZabzhOIweu2o?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58bd31df-e61d-449d-2f7b-08da763e3b06
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 17:24:47.6345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OMScNHuCWaoRJPC5AVqIjRv9UBROfO08fj4hfROH+ezwpsnkV9ml3nsXfitq9aXMeKBaUM4j9cZGXyqiAQOsDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4193
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659633891; x=1691169891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+bDtrHiC6eDff1Ms9GsT1L7q/NE9B921xY38M+tipIQ=;
 b=aFEuXI4PZrj8mNAV3gxm92CooEWHND/ZkU5IEQ+43r/LBroZGlVBLB6n
 fNhkUXNym44jzesR/BONLg+u5xv/oUk0vDpKf92r59NecsCeNdOZe4PLE
 WG0dY9MZ9LU6nK9LtTP12BwzbtENS2q9HGzKcjnB3TBT+zwFzQMZ5Tjqc
 RAsAZYWAW9ywUJn36QsW0Bvzx8mIFul6+LAf/IjcT/cTKkrWgwRD7AjoI
 p8GejyALWpW2WDtP3I+7qB4RrMmGEXrvFFxLeCXYptSowCmzO0aKu47xQ
 3f1Huky7TtmRrdnOe68ttVGCClbbn0XRvLrHKJRHlZVJpEagzVheBa6PU
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aFEuXI4P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Implement
 control of FCS/CRC stripping
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Wednesday, July 27, 2022 12:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; Gerasymenko, Anatolii
> <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Implement control of
> FCS/CRC stripping
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver can allow the user to configure whether the CRC aka the FCS
> (Frame Check Sequence) is DMA'd to the host as part of the receive buffer.
> The driver usually wants this feature disabled so that the hardware checks
> the FCS and strips it in order to save PCI bandwidth.
> 
> Control the reception of FCS to the host using the command:
> ethtool -K eth0 rx-fcs <on|off>
> 
> The default shown in ethtool -k eth0 | grep fcs; should be "off", as the
> hardware will drop any frame with a bad checksum, and DMA of the
> checksum is useless overhead especially for small packets.
> 
> Testing Hints:
> test the FCS/CRC arrives with received packets using tcpdump -nnpi eth0 -
> xxxx and it should show crc data as the last 4 bytes of the packet. Can also
> use wireshark to turn on CRC checking and check the data is correct.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Co-developed-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
> v2: rebase on top of Maciej Fijalkowski's patches
> v3: fix vsi->netdev NULL pointer derreference in ice_vsi_rebuild()
> v4: fix Co-developed-by tag
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +--
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 22 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 40 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
>  7 files changed, 69 insertions(+), 6 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
