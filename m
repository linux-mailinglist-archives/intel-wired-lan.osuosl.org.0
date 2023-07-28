Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6F77669AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 12:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 376DD42C66;
	Fri, 28 Jul 2023 10:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 376DD42C66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690538553;
	bh=OViL8c5X5a7RmURJKFVMoqoieojLnv5pXx3YOAHBHsw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6JK7ZxQjfwnNCDCxFba+jZazgmVEgzgMUuKui7qf9qW58l7550P0s1oJYTYIAPSjy
	 aXvtvNvJgtzYyjqvXbf+i3x2IhRBcQmRvdbquP54m0vYtdpEsM2OTEytIUK9+WHulz
	 Dpdu7XNQMk7Hh/LUpuLsaDpCoiTY7Bn7moubcGgoCtfm8ksnpb9DtPuw+QfPOcfH5P
	 JRAGWr3iCNBnpV44mTELdWtPvQEDUS/pTupG+ixwvGE0REaxfHveYNcbsT7oihS3dQ
	 Rxy7avQvE7EdNflGuEKlfpHkbajs2XAf0hNN2QyGE05k5GhGAS+I0n7lzNdM8epkaS
	 UljO+L6Yvc68g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 61uom6Yy-09e; Fri, 28 Jul 2023 10:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E25FF405F8;
	Fri, 28 Jul 2023 10:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E25FF405F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF2381BF426
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8062342067
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:02:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8062342067
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fApMnyEEZXSf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 10:02:25 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 28 Jul 2023 10:02:25 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76F5342063
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76F5342063
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:02:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="454915313"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="454915313"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 02:55:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="792874749"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="792874749"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jul 2023 02:55:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 28 Jul 2023 02:55:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 28 Jul 2023 02:55:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 28 Jul 2023 02:55:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmsFWl7aS8CznqQuQKvmJBQwS0b5lvDN39T/36qY5B1HEIWl96/6yyEJetYHGmvmdjXf+42lJ0jqFyRFykHS2GAUjENT01vL/MC5HLcTCe9QMiOLYibu4XWHg+yYoywHHlXLa5HtBad9YsfHFz8EBRBamCVNI5jl8pjhFhIjN7ZOQI6XI7L2YvhGdiwn8Hd8cM/QqsmaBEg0tokdcRd8p2lPkrVNhBbjHJhWJBfGdACNklH30WQcddVAM1eX5MaHQZsBi3Q1jUEH2UWWInsCbteU2ZttYwONd9QqEvqamXVbBAwzeN8Q7d1Iuy5EkCnTNogOBXjoHHTBY0sqrLuqDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1OmnQPMoXZt/TzDOykdmCXNuKgxi35ktPqla2lfWNds=;
 b=A7GSWTNLic8HeLwiJ3dg2QVrSaZx1OVFpgwlXoGt7zEOOrxvwU7NeejhQ1bxWfR/5DpfEz5Vb1Q0Nuupk5IMMXa+po8UCS4LmuDl9ABvPjaZgvDxeZzY8xYXQ2NRkGzLW0oK3OZFifDBY2UfsJZo1XMtqiKvVwecPDZ8xwB7sLpoKAjiulDIfHPvWzlmXRtjz91Zj/Aon/6DsQYvubhMdQdlemAvDrFDLLODHTXR78ebvXTrOpWjpnQ7g6UxGR80lYkpWvi35h42HrNgt28Dggj+GJmf/DfM7a/bvAjtUr5F4Li10P6xIPb5qOA7Nsz4b/0e7o1XCpCxIPV2kFY38Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB8124.namprd11.prod.outlook.com (2603:10b6:510:237::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.29; Fri, 28 Jul 2023 09:55:13 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8%5]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 09:55:13 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Thread-Topic: [RFC PATCH v9 07/10] ice: add admin commands to access cgu
 configuration
Thread-Index: AQHZpdAYC1znvtigRE6MFYa5Ra1vVa/OU6cAgADLGvA=
Date: Fri, 28 Jul 2023 09:55:13 +0000
Message-ID: <DM6PR11MB465760932106C0719648B3FA9B06A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <20230623123820.42850-8-arkadiusz.kubalewski@intel.com>
 <CACRpkdar39x8nd5cWEDiFDHwLqHghUQZqkR0rEcv2-sZOZZ0KQ@mail.gmail.com>
In-Reply-To: <CACRpkdar39x8nd5cWEDiFDHwLqHghUQZqkR0rEcv2-sZOZZ0KQ@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB8124:EE_
x-ms-office365-filtering-correlation-id: 2c43a8dd-4dd4-4822-a917-08db8f50bcd1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hGtTaIp0NIV3tOpUDL4bmWopnpOuA6fo6zKlEzzY/PEBFIWz+nzZDHp/CT6go044AXnsM95M76b+1oz/S7DSo2NxQBpLsIx/Xqq9QAULHuVB7b058An+he/KQwYlYXT5J6IgrCfwdJLAhUW/iyKyMm+Rss+cnH/QRzqs0j6HQHYyQKcLmVCfUFPzxK3QCPcXyULRGjtLgaFjaByaynKUKZkzJ+xzhANfbhhkrweirRGPS0rxFBTIVLK9WA+876BeH9+FTLLs1LdVGvBWTkLggya8/9KpyjKFxHJ3d/agTQ/tC1PbFGqoLOE+FVLjJ5/s/Jc/To8oYfrWG9gMwGyOiOLlqQiA2tK0CD3BzjaHO9gJm3ro+3DphRHrTZzXazxKzTxF37/GQqFEb5XjJ79CL4/grfkxXkg/SYzddEavCk1FuCfd1dOex/C3S8OTv+Ao8ZwcPK5Y2wQt0vj3mxbRu2Odxk+kb0kfiLSYSuvfvptCKNSUNchJIDUgNsaZAxQUcDbkudBTaANlbOBoOdlX+/Q+4iJ6uqXQ9GEsXj1NEs0uNkKv/NLVUCvp4R5b+6KD5GGgr8c+JFGXTVU/mYSgT9y5/zKb43tfLa61mOUN5qV0mel3AkEWVBJ+kP7Vamlu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199021)(8676002)(8936002)(86362001)(41300700001)(33656002)(4744005)(2906002)(6506007)(7406005)(7416002)(186003)(55016003)(5660300002)(52536014)(82960400001)(7696005)(478600001)(76116006)(6916009)(4326008)(64756008)(66946007)(66476007)(66556008)(66446008)(38070700005)(71200400001)(122000001)(38100700002)(54906003)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzU0VGQzZDZzY2p0YzVaV1NGclFCWEJsbEpUM3llOXdBSGo0Q05xUzdyV3Ru?=
 =?utf-8?B?N3dhN09zK1UwN0drbFJKTzFQbEQydnFPbWJjR1JRVVk0WDI1TlI2cGJ5V2tG?=
 =?utf-8?B?UHBTLzZFWG9tZU1DQTA0UFZzakhFenZPdFBESTM1TU5IM0N3NTNIYU1DMHMv?=
 =?utf-8?B?VStxUHdEampiMEJGbXpNZVJHK0VUZTZWOWx5NGNLR21ObkRkWFlucjF0d29X?=
 =?utf-8?B?UVp2Qjl4ckxZSURMMG5VSElTVW9IVFZMQUpBQnozNTkvRE95V2pHdGFwTHpB?=
 =?utf-8?B?NjdFNVg3YmlQd3ZBdExNNDVHWG9UbEkzRlR3VkdLblV6V1MrS3hpNlIrbGNI?=
 =?utf-8?B?blpiSlJ1SkNZQlArR1RVTjhHZVNYVjcweEF2bW9KYUhyYzVFa2VSSzF5Nlh0?=
 =?utf-8?B?VkRJN21DNlJnd20vT1hoSlBwcHp5b1RGZGNaRVE5aGVGdGNENVFOQ0t5ZHNP?=
 =?utf-8?B?ajdtRHpqS3VaWWNXSzhBbDI2eGQrTEN6aU9LcHM1dnBKNEhUeitIeHhDT1ZY?=
 =?utf-8?B?aWtiTHR4NzQrbmkwR0gydXdmYlhNd0piaTdMT2VST2JLeGx2ZGFzTWRkQ3kr?=
 =?utf-8?B?VW9FOWU1UytvY01TV0NZUzRHZ0FoYnNvbXljUXA0NlgyZEoyQkRJU080QlIw?=
 =?utf-8?B?UytscVFleXJuNjBqTTZOSVlWZERZbnlPYUpUM0ZON2s5MGg2MFVhZENHNzZL?=
 =?utf-8?B?NThNdDliVmQxQUlobWVaZ1QxK0tVd2JGL2Q5dEs5ZDJFa1ZCaXk5U0FUc3Rj?=
 =?utf-8?B?cnE3b0VkOU8wNUtWMmk0SXlDaEhLejNOZVZUMWdyckp1WDdrcTJsVFduNXRM?=
 =?utf-8?B?TEt3bitFTHpyOTNUT1g4czFvaGVVR0EvK1ZESStUKzVmdmZGaEZna3FkS1pq?=
 =?utf-8?B?ZTZWT0YrQm1xdDdnNDVoZGlFcmg5TlFPQnMyYkxDN0tzSWRMYmhXc0ZSMm9F?=
 =?utf-8?B?am5uTHR2cWRIVjdnMGFjaTlEWW5PbklTR1NOMHRia3pIK1FGZFlVSXpMcTN1?=
 =?utf-8?B?QjJYSVBzY0NmdjdHenBIMTB0L3g1eWtySzhnc3I4KzVrdVh2MGtxdmI0akNX?=
 =?utf-8?B?SWRIenJ0NVNvbnlHSldwcTFwendzOERaVlVicHJPQVRYWkYrbGRwT08zeHVG?=
 =?utf-8?B?U0dxREVWc3JaRFNTTWtSMjF6aEJ6dlpHUG5ZOWxxZ3VtUFBmMWFibGlPaktM?=
 =?utf-8?B?Qlp6RUtUNnRHOWJnM2pUSVpUaDB2d2JSWDkzQnV1cFhpaGM2TmxUUTkzOEwr?=
 =?utf-8?B?Rkd5QlFvb3hNVld4TU5FWWw4VW5oejZHZWZyc3lVU2lZS21GNlhlRGErOG1N?=
 =?utf-8?B?VWZTRzZvbVZCcjN5TEtGdWtZNU0rTnlvOGhtYk9paXkyanlJbk9EeVlBZmlx?=
 =?utf-8?B?WnRBdzhVb210anQ4TEc3V0xqcjczVklWMFViYzIzejhyVGhJc2Z3YUdSRFRO?=
 =?utf-8?B?N1l4TnZxNldWakF1T2NMckxPQVFFd24vQUNDT3VtTHUzS29LQld0YmFqYUVQ?=
 =?utf-8?B?N3czTjNQS1VFNU1mZDJGZS8wQjVFSWJmL1hYMWllRkVBb0dmSVBhbHNTS1Zn?=
 =?utf-8?B?TDhaZHVuMktQYUZLYnZpU0VxaFZjSDQ2UnpIQjhtZldqZXR1RjJKU25oTjhN?=
 =?utf-8?B?QmN5Vk5LVm9FOTB0OSt4TTlkYWJ1UWhoaHNHTXdkRFFnbS9VbVg1ZDNyMTc5?=
 =?utf-8?B?WmN1aG5ERE40RUNmTm5Fd0JVL2g0ZVpBN1R2dnVUK1J3Z1pvc3F0WDlFUWZa?=
 =?utf-8?B?Mmh6MktZZXdKQWVGRmo2L05vU05VNmEyZ2s2SEFoMkpuRnQvRFp1RTJRSDlk?=
 =?utf-8?B?R3R0TGtkUnhCT0FLaW1ybDhTNUtIYlZqODZOMXQwV05VTGlzV2RlZHdtbTlm?=
 =?utf-8?B?bVZRNld2dTdReE5pbXptdjNvU3gxbEMxVWhFKy9lc0pFcUlFZE1mSGFPakJX?=
 =?utf-8?B?MjFlNGd0VE8yeG9qMUlTMUJEblBtSm1mREE4ZjgyaktzY1pOZTM4MzQvNzBv?=
 =?utf-8?B?ZjFaa0N3WTZMVS9NYjNSalVRbUpXWE5XT0V0NW9Ub2dxTkltWkVrM1RUczBK?=
 =?utf-8?B?VDRaR0tyaU5GMUNpVGNCR3ZhTFlidlJWbjY1cWNjZUY2OEplSUY0RTRMazR3?=
 =?utf-8?B?NnUxNGFEWVJ0Uzhob3ZVVWJXR3RSemtrZG5raFJtdjBKU0pJQ2M4MS9PV0hx?=
 =?utf-8?B?NklnbFBMQUdsU1liTkVJWEx0bFp6dGU0b3NjM0ppNys4QmN2cHIySFd5T0tX?=
 =?utf-8?B?NkZ0Qy9yNlorUVpxVG1aZjZvTEJRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c43a8dd-4dd4-4822-a917-08db8f50bcd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2023 09:55:13.0561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FE2H+rQ4/2qSuZVKn+t0rQqQji2qWOdu5QhBLOYMdmifjTVqNuEuU8iQUPluGQmOmtXVWw1wqTnAXc44fnttRGSDINbEAt80bHHmvtATprA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8124
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690538545; x=1722074545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1OmnQPMoXZt/TzDOykdmCXNuKgxi35ktPqla2lfWNds=;
 b=VB/QQTYL57MJMyqUJkkbaY83nrnTT6eejyE89dCRPJWRyvS5eRSkgLzz
 Z71Iodq7BmQ9E3QwE9rD52O537fE1RRGxROaFF3SgSsGImWzf/jOnhdCo
 JVmG0pFs12k/Rj13UZ1bvxRdMbov6oGxNZM+6j6phTfsqTHcSukzC0V8b
 8s+ItdY4obsUPChCY5+VClVxBCrxa1PNo69CEGbLkZVGMK8UG5NGXeLDA
 hCvxH0hTsXYehTaC10yk8hJiF0B/83pEUs3/na1wrCPSLCP6iQnQ8yGGx
 aBoTFRmEgcwNR9/Snsw/PAh9pKf9zW1wn9PdIxk7eyFPsBMy4g/bfzNPY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VB/QQTYL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 07/10] ice: add admin commands
 to access cgu configuration
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "arnd@arndb.de" <arnd@arndb.de>,
 "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "airlied@redhat.com" <airlied@redhat.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4NCj5TZW50OiBU
aHVyc2RheSwgSnVseSAyNywgMjAyMyAxMToxNyBQTQ0KPg0KPkhpIEFya2FkaXVzeiwNCj4NCj5P
biBGcmksIEp1biAyMywgMjAyMyBhdCAyOjQ14oCvUE0gQXJrYWRpdXN6IEt1YmFsZXdza2kNCj48
YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPiB3cm90ZToNCj4NCj4+ICsvKioNCj4+ICsg
KiBjb252ZXJ0X3M0OF90b19zNjQgLSBjb252ZXJ0IDQ4IGJpdCB2YWx1ZSB0byA2NCBiaXQgdmFs
dWUNCj4+ICsgKiBAc2lnbmVkXzQ4OiBzaWduZWQgNjQgYml0IHZhcmlhYmxlIHN0b3Jpbmcgc2ln
bmVkIDQ4IGJpdCB2YWx1ZQ0KPj4gKyAqDQo+PiArICogQ29udmVydCBzaWduZWQgNDggYml0IHZh
bHVlIHRvIGl0cyA2NCBiaXQgcmVwcmVzZW50YXRpb24uDQo+PiArICoNCj4+ICsgKiBSZXR1cm46
IHNpZ25lZCA2NCBiaXQgcmVwcmVzZW50YXRpb24gb2Ygc2lnbmVkIDQ4IGJpdCB2YWx1ZS4NCj4+
ICsgKi8NCj4+ICtzdGF0aWMgczY0IGNvbnZlcnRfczQ4X3RvX3M2NChzNjQgc2lnbmVkXzQ4KQ0K
Pj4gK3sNCj4+ICsgICAgICAgcmV0dXJuIHNpZ25lZF80OCAmIEJJVF9VTEwoNDcpID8NCj4+ICsg
ICAgICAgICAgICAgICBHRU5NQVNLX1VMTCg2MywgNDgpIHwgc2lnbmVkXzQ4IDogc2lnbmVkXzQ4
Ow0KPj4gK30NCj4NCj5DYW4ndCB5b3UganVzdCB1c2Ugc2lnbl9leHRlbmQ2NCgpIGZyb20gPGxp
bnV4L2JpdG9wcy5oPg0KPnBhc3NpbmcgYml0IDQ4IGFzIHNpZ24gYml0IGlzdGVhZCBvZiBpbnZl
bnRpbmcgdGhpcz8NCj4NCg0KSGkgTGludXMsDQoNCkZpcnN0IG9mIGFsbCwgc29ycnkgZm9yIGxh
dGUgYW5zd2VyLg0KV2VsbCwgWWVzIGl0IHNlZW1zIEkgY2FuIDopDQpUaGFuayB5b3UgZm9yIHBv
aW50aW5nIHRoaXMgb3V0IQ0KQXJrYWRpdXN6DQoNCj5Zb3VycywNCj5MaW51cyBXYWxsZWlqDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
