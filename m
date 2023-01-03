Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7953065C2CE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 16:15:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83FF640993;
	Tue,  3 Jan 2023 15:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83FF640993
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672758923;
	bh=j/D4RwhfvZzdLlVRImbnjP/6puC3MbWFD2ZWwhSeK6Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=01CLwB8cp91RmxpHRdmAsRHoSdpMFjxwZn4C9Z5NQrM8SAuYrHERJ+INK+cPjigkY
	 fkfdWUlhK2HfHwDWzhJ7kdM0uBj2pVanoprE3OCYitylNEasFPWWSKb0hIpUJKiXka
	 PZi0rBFvfriXtd8NENY8lmDfz5HM6AQqpx2VzidZOWpJo0UeME29O1yOKNbrBgtmaP
	 Ibrfu7JP1AVf16hks2jF5CHCfV/rROkIj8PVcBo3lmQuvhINt4y09XdDypJG6gVxr6
	 GV59NfxOXaxOJlMc5uPIkvGVSdnMfQL6R6IVRWsaMS0IJh6r47Oq5xJ5iESXLT+x0Z
	 kD+pk1+T+TNDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDb1Eiqrryi3; Tue,  3 Jan 2023 15:15:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61155405BC;
	Tue,  3 Jan 2023 15:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61155405BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 012141BF57C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 15:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6FDF81467
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 15:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6FDF81467
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CtVZxtiNYoYb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 15:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC99981437
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC99981437
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 15:15:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323666487"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="323666487"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 07:15:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="778886530"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="778886530"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 03 Jan 2023 07:15:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 07:15:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 07:15:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 07:15:14 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 07:15:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fueRsYGzmrUFQ5Hm+6l/ffikZ1g/DStLm6sg6AauAdiaB6uhj2ooCgIC0Ff/5xT1LZW+WHaJC6Qu5qJt9+qdgWtYyh8KteV2FdeGNt/y88znfdLDwTecI/H1C3Ds+G766X9066XoJo0zuyZ9pXkaxh9w7eQflUQ+kQkt4wVY1s1vNxI2wHwv8pMYyjC9DqedURbxfu4eLw37mc7/IVOZ0kI144c5WKYrwVVKJWzost+rP+gpkpEYyP281PJ2mvEjc/+d6EjFbeq3VZ7nxcnafA30y3bh+E8Su29A7hefUMc0ozROU7s57uNrqvYMjEWXHP2XiEP0Q50Mi2yUGxi8PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jp1ay4O/6N07Bi01i62P+y5tkIm5QZYgWikprwo1bPw=;
 b=M9s0wvAuHQpEq0Oea/M+0fdP+7iok/8V9a+ArmJ7OlcuZWqLvez0DQLFZDz/7Y+JlGl8n7HV2pcEn40MkRZl+11cTe2gzcanpWf33lLupWr1JniEnzfVQ+OgAwdVrc+XvWreCSyRKWZaZDEiUO1sxjBDeUnt3LjB7r3tdJK0/AOH508dSMSf/tNVjKeaZx//GgczAcPH8caRnGhodXkrmHDTmi6nHbxyC1t52RqlbmgLAU3C3J3m/UB5mQ8o+P0dl8yZgDfp4GdiV9Inb0mZzdByJ18SYnGDSfTBDCG9vMQhxzzpdfL+KweV3KK1F2N+Fl90sXCvKZ+kPu+mlCKppQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by CH3PR11MB8186.namprd11.prod.outlook.com (2603:10b6:610:15a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 15:15:11 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::d1ba:9469:d15b:991b]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::d1ba:9469:d15b:991b%9]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 15:15:11 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
 card to increase speed
Thread-Index: AQHZFUALMBVKsfLhWU2iyB3X2Un/Sq54djkAgAqxnmCACYp1gIAALz+A
Date: Tue, 3 Jan 2023 15:15:11 +0000
Message-ID: <BL1PR11MB5288569AFF63268989928D7787F49@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20221221132502.1099843-1-mateusz.palczewski@intel.com>
 <de860700-d302-5ac2-950b-4363f6a55c56@molgen.mpg.de>
 <BL1PR11MB5288FAFB1D586D4EECAC4B7E87F29@BL1PR11MB5288.namprd11.prod.outlook.com>
 <b0c70529-0f20-fa80-d688-485ef8470b26@molgen.mpg.de>
In-Reply-To: <b0c70529-0f20-fa80-d688-485ef8470b26@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_|CH3PR11MB8186:EE_
x-ms-office365-filtering-correlation-id: ff55071a-3bbe-4cef-dbda-08daed9d4ede
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r7OGrOnwrPzK3BhGjUNtM3A9mkntti8oQdguP8x7yP3OE3GrI/a3c+srD+MbCIstT8UbJe/qU5nRA2WSg/FjydHrTuuIrTLF89xHCgHpS34b9OIWc+oObDNKphuLeKpC1/YAw481qzMDKcF3oBE62wPSyTIiFRhWMClMyWKoEgbHMW9Y0KulH/NNcLztGtqsc2r7qB5jr3BwM2BELkloxc8LkpkKk301qDckE+rk0vTIv6kjr4UFfwPmz6XBKdBJ0oFntKWDfIEq/H7Z1qwAIONqbYBQPQGzSIoErjyq2qsEfpMeD9SNeMxsDUPg/xSI3PBe+eR4Lpb8Dm48MATQjlWiOi33WGSvoD9ntNbTBKdAE6Hj76fn8z++x980OrFzTyemNkN3Jt6wpZObsqUqkOva1zRL42z89Xg9B2GD9lmdmAN41i66wHZzR+7kAXvL9xTVV8RWVw/zbP8kOrUpkF3kuZZ4wcQ2g32HBjBXN6bmh2XUzj/W7H8ZTXUZPTi3paAnShUisWocSxcvgLTwTThMy2irmY4Y+0Es+Si8zsg6fPX5WbOpkFtkx6PUJumEqYqWe1Jycr54U2yDJGrN4aqRgbNizxrXrX0YXOPeYodHPkWatI0KJ0XuS9oiCW3itp1WRhTwh1IxNKreY9pv3nf7cb62V27lYkB0yNrPjYQn/QSouMmaAX68yvmQAfHuG/wRJHumDDxBXfdX8+xCPqnBJqEPPA8rI19BCUkTQ1I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199015)(4326008)(8676002)(64756008)(66946007)(66556008)(66476007)(52536014)(5660300002)(66446008)(8936002)(316002)(6916009)(2906002)(76116006)(6506007)(7696005)(71200400001)(478600001)(54906003)(41300700001)(186003)(9686003)(26005)(33656002)(83380400001)(38100700002)(122000001)(82960400001)(38070700005)(86362001)(55016003)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWV2QUpKcFhlaXhPVmZONHFIZDBENDZXbkVYZ01rNFZNZTd1NFY0SDNVbFdn?=
 =?utf-8?B?dURhNWZEMmpjM2RjcWdGdmF3QkxUcGtWdktWN2F5ZURSTkt2UEtzWXd4eTEr?=
 =?utf-8?B?amtEZ2xySmNlNTJYK0dKZjhQQ0N3N3NVNVYrMWI0V0JrbFFzbS9UWVhiejh0?=
 =?utf-8?B?eXhnZEZZbkFJZnJXWWFSZFFUdFQzZjBiZUpzd3M3L2p3eFJBaHpzczIycEc2?=
 =?utf-8?B?amRtdXVvY29WYUNHNTh6TTh5WDQyUVdQK0RYNVEzdS84TEd5cWdmMllkM1Mw?=
 =?utf-8?B?S1lHUHRDQ3JYSmxTK09GTnJPN3BWNnJuV3JpSWN3a3pIM1lUaU5jczd3TWcz?=
 =?utf-8?B?T3dBODJ1ZjdDNDB6VEdsamFlQWFLRjY5dzdtbjRhR0RlekNIbVVBSnd4bi9V?=
 =?utf-8?B?cnFYTGhsenhKcVpjR29ueU8zSXh1eTdKNUh4NmlGSG5hTmZCNDgySlYrRWZF?=
 =?utf-8?B?dy8xdlBCY2E4Mk0vU0J3QU9iYUNMUWdDZ2ViM3NGSnAzTThHSU9PVnV4TXB5?=
 =?utf-8?B?dDczQ0I0MytWbHhGVkJuQzdRU3FYK1RRbVpMbEpicDVWd0NINTVPRWZjZEpn?=
 =?utf-8?B?MzdsSGt6VWpNbktKSE10SUwvTmNiQmd1UXVPdDZhL1FkQkVhM0FBeVU4aktu?=
 =?utf-8?B?cHgvKzR5VFE0TVJ5S0F3akRoZUxZZHNWR0hPaXVDY0hTRVhMYkRuWFFkb3NH?=
 =?utf-8?B?U3dOaG1ScW0rUU0raFVSdjZQbnpzSmxMdzFNcFpua2pJS1dFSnMyZWVVb2Ru?=
 =?utf-8?B?WmlmV0RSRElVT3dTSTlpdVV1WUViTVpwcENTVUNyVXFKVjgzdktFdEJOUFJn?=
 =?utf-8?B?bFBzcmJUcXl0c2VlVHdVYkpTY0o0aUdtMGdGV0tGUEFUeEJwU1dQazVadkho?=
 =?utf-8?B?LytKc09BandqamVHUURyWC9BVWt0R29vOHhUM3Q4MVU2akZiYXdTL0ZvTzda?=
 =?utf-8?B?dzhQNXA0ajBwdVc1dExkcC9ra01XWmo2UU5MS1NFYjR6Q3k0c2FqWkx2N3lJ?=
 =?utf-8?B?ZytDL2VSTHF1OXNMUmR2a1FoaVJpK2xDaktNeEFidW1XYWFQSDFaNHp0TS9p?=
 =?utf-8?B?ZFRyQjhwMklDTXE2Z0pZeG9mRVNOWW9VVlhrejB4TU9zaElzMmdOb2hpUCta?=
 =?utf-8?B?b3cwS1VJbEFubXdwNk1jamJKUXVuWnZsaW1zTGVXQ2pRWDJvVFR1UVVrazVY?=
 =?utf-8?B?dzNsVSs2b2Vza0YvdGVBRWU3VFZlMDQ1cmMyM1VNQmZ4cll2RFRXTXphMEdG?=
 =?utf-8?B?a1FhY05UUkVyREV1VkNic2Q3YzJrU05HMlAwK3NYRk5nV29nQjVQZHE5U2ta?=
 =?utf-8?B?SGJIc0dwUEhvd2dOTVlOMGpBUTFFdDNlNjhKZUdYeEwrYlBHbzU0aVJidUoz?=
 =?utf-8?B?U3poRXdYaEorcEF2YlhTU3lXRGVuZytIcG93TzJQTTRJb1VETUpFR0pyK3pr?=
 =?utf-8?B?ZkpVUWlvS2dTekVlbm9rbDNpYVJDc2hiWDI5WEF5M01mWHBzek1FdGYySE1j?=
 =?utf-8?B?Snk1Rm03UDJYbkREejR1ZkFGWWs3ZXFpaDR0a3kxWUxTT1cxcU9obFVtbkpt?=
 =?utf-8?B?eUw5Q2FqZ0J0dVBGREkrVGNVNHdDTjhRUnpCTURYRW5rcGI3bFpQdmg4MmFO?=
 =?utf-8?B?bE9FKzNNeFFGcUF6bFZoNWNqN0NOVS9DOXhtVkZiTnVIWGxDSUFXeld5Qnhm?=
 =?utf-8?B?R0JKQ2hKVmc5VVo0N2EvTy9KTjZld1R0aklzRjVvajErT3l6SG1PbGErTFU0?=
 =?utf-8?B?TUsxT1RyMHFqdy9hUjZCcXh0Rk90RkRNRkMwYzNNVXBPcisrODRralNGVnBQ?=
 =?utf-8?B?SWs5bVI4N3UyNlduWk0xRmNHRVBtMFhFVWVqTDN1RmMyMFkrSG9vL1gzWHFy?=
 =?utf-8?B?VnZ5MGtUQ3l1YlFjUm5yREFpcy9QK2pFWWlmSldTenRhcGUyYVMzVUlieFdX?=
 =?utf-8?B?WE9GREpoTHVBcG9aSGF3NFlvT2pHY2lCN0pFUnFXMkYxMDF1NWpNL0JicTJr?=
 =?utf-8?B?MU5PRGYxZEQxZU00OXdOa0VpZjc4b0ZTMUR4aU1hNmZORk9ER2NxeXpaOEoz?=
 =?utf-8?B?NW93ZkNBUGZoQ0tFSS9OUkRSTjRaMCtnd2xxcnpPN1dBUk0vV1UySmoyZC9u?=
 =?utf-8?B?WERGVnRKVG9CSEl4Vk1tM1hRMnYwTUVxSkVUL2ZJQ3I3OHFNckhlOVF5cjhU?=
 =?utf-8?B?UlE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff55071a-3bbe-4cef-dbda-08daed9d4ede
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 15:15:11.4598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PoVUuHUQkrD47dpI6tGkpGF8GvxhI8RVHAJHOD9UIbLJOdvnE98gi/NrxcBBtQPH1qhVSsS9zqDw8JE4vpVjUPADJH7TB/iOmqK9iiUlmIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672758915; x=1704294915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jp1ay4O/6N07Bi01i62P+y5tkIm5QZYgWikprwo1bPw=;
 b=ISa17TKPWDJpMcs2Mw4LlTVOQH/Q4uQlZZu0O9iRoaoxk+0ctmrUaLeR
 rAhFU3B8eai00J5psQWm1a15G2MZIfXC97V6/NZ/lxlIUv7rP4rVPskBG
 nLbPXVAKRBHEqoxBc7xVqSpfpPyE2mMO3QZLzC2Yt9BjCDk9VheWatrwO
 Aw+1k0h0T59dto97DBWBgYLIKsLv50QEBLzRqm5IVqIx7f/2waqdwz0ie
 /u2IMOU3OkhD8UxVeqyiK9TZ4BBCR6CtDJYTgFQndaMThiQv0sm9bTerm
 pokcbXUV9RCN4YJn9RwJ39hV5DVZ9HVuFm2d+11nwGQtirgOkQGdLRJEe
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ISa17TKP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gDQoNCj4NCj5EZWFyIE1hdGV1c3osDQo+DQo+DQo+QW0gMjguMTIuMjIgdW0gMTE6NDMg
c2NocmllYiBQYWxjemV3c2tpLCBNYXRldXN6Og0KPg0KPj4gc29ycnkgZm9yIGxhdGUgcmVzcG9u
ZCBidXQgSSBuZWVkZWQgdG8gY3JlYXRlIG5ldyBzZXR1cCB0byBiZSBzdXJlIA0KPj4gdGhhdCB0
aGlzIGlzc3VlIGlzIG5vdCByZWxhdGVkIHRvIG5hbWVzcGFjZXMuDQo+DQo+Tm8gcHJvYmxlbS4g
VGhhbmsgeW91IGZvciB5b3VyIHJlcGx5LCBhbmQgc29ycnkgZm9yIG15IGxhdGUgcmVzcG9uc2Ug
ZHVlIHRvIHRoZSBob2xpZGF5cy4NCj4NCj4+PiBBbSAyMS4xMi4yMiB1bSAxNDoyNSBzY2hyaWVi
IE1hdGV1c3ogUGFsY3pld3NraToNCj4+Pj4gV2hpbGUgdXNpbmcgaTIxOS1MTSBjYXJkIGN1cnJl
bnRseSBpdCB3YXMgb25seSBwb3NzaWJsZSB0byBhY2hpZXZlIA0KPj4+PiBhYm91dCA2MCUgb2Yg
bWF4aW11bSBzcGVlZCBkdWUgdG8gcmVncmVzc2lvbiBpbnRyb2R1Y2VkIGluIExpbnV4IDUuOC1y
YzEuDQo+Pj4+IFRoaXMgd2FzIGNhdXNlZCBieSBUU08gbm90IGJlaW5nIGRpc2FibGVkIGJ5IGRl
ZmF1bHQgZGVzcGl0ZSBjb21taXQNCj4+Pj4gZjI5ODAxMDMwYWM2IGltcGxlbWVudGF0aW9uLiBG
aXggdGhhdCBieSBtb3ZpbmcgdGhlIHBhcnQgb2YgdGhlIGNvZGUgDQo+Pj4+IHJlc3BvbnNpYmxl
IGZvciB0aGlzIG91dHNpZGUgb2YgYWRhcHRlci0+ZmxhZ3MgJiBGTEFHX1RTT19GT1JDRSBjaGVj
ay4NCj4+Pg0KPj4+IFVuZm9ydHVuYXRlbHksIHlvdSBtaXNzZWQgdG8gYWRkIGFsbCB0aGUgaW5m
b3JtYXRpb24sIHRoYXQgdGhpcyBjYW7igJl0IA0KPj4+IGJlIHJlcHJvZHVjZWQgaW4gYWxsIHNp
dHVhdGlvbnMsIGFuZCB5b3UgYWxzbyBmb3Jnb3QgdG8gYWRkIHRoZSANCj4+PiBkYXRhc2hlZXQg
c2VjdGlvbiwgd2hlcmUgaXTigJlzIHdyaXR0ZW4gdGhhdCBUU08gbmVlZHMgdG8gYmUgZGlzYWJs
ZWQuDQo+Pj4NCj4+Pj4gRml4ZXM6IGYyOTgwMTAzMGFjNiAoImUxMDAwZTogRGlzYWJsZSBUU08g
Zm9yIGJ1ZmZlciBvdmVycnVuDQo+Pj4+IHdvcmthcm91bmQiKQ0KPj4+DQo+Pj4gV2h5IGRvZXMN
Cj4+Pg0KPj4+ICAgICAgaWYgKCEoYWRhcHRlci0+ZmxhZ3MgJiBGTEFHX1RTT19GT1JDRSkpIHsN
Cj4+PiAgICAgIAlb4oCmXQ0KPj4+ICAgICAgCWlmIChody0+bWFjLnR5cGUgPT0gZTEwMDBfcGNo
X3NwdCkgew0KPj4+DQo+Pj4gbm90IHdvcmsgaW4geW91ciBzaXR1YXRpb24/IElzIGBGTEFHX1RT
T19GT1JDRWAgc2V0IGZvciBuZXR3b3JrIG5hbWVzcGFjZXM/DQo+PiAgPiBJIGhhdmUgdGVzdGVk
IHRoaXMgb24gbmV3IHNldHVwIGFuZCB3aXRob3V0IHRoaXMgcGF0Y2ggSSBzdGlsbCBzZWUgDQo+
PiB0aGUgc3BlZWQgYmVpbmcgYXJvdW5nIG9ubHkgfjY5MCBNYml0cy9zZWMgYW5kIGFmdGVyIGFw
cGx5aW5nIGl0IA0KPj4gc3RhYmxlIDkzNCBNYml0cy9zZWMNCj4NCj5QbGVhc2UgcHJvdmlkZSB0
aGUgaW5zdHJ1Y3Rpb25zIGhvdyB0byBzZXQgdXAgdGhlIG5ldHdvcmsgbmFtZXNwYWNlLCB0aGF0
IEkgY2FuIHRlc3QgdGhhdC4NCiANCiBJbiBteSBzZXR1cCBpMjE5IGludGVyZmFjZSBpcyBjYWxs
ZWQgZW5vMSBhbmQgaXQncyBjb25uZWN0ZWQgQmFjazJCYWNrIHdpdGggb3RoZXIgY2FyZCBpbnNp
ZGUgc2FtZSBzZXJ2ZXIgZW5zMWYzLg0KIEkgaGF2ZSBjcmVhdGVkIG5ldyBuYW1lc3BhY2UgdXNp
bmcgImlwIG5ldG5zIGFkZCB0ZXN0IiwgdGhlbiBJIGhhdmUgYWRkZWQgbXkgaTIxOSBpbnRlcmZh
Y2UgdXNpbmcgICIgaXAgbGluayBzZXQgZW5vMSBuZXRucyB0ZXN0IiwNCiBicmluZyBpdCB1cCB1
c2luZyAiaXAgbmV0bnMgZXhlYyB0ZXN0IGlmY29uZmlnIGVubzEgdXAiLCBhZGRlZCBpcCBhZGRy
ZXNzZXMgdG8gYm90aCBvZiB0aGUgaW50ZXJmYWNlcw0KICJpcCBuZXRucyBleGVjIHRlc3QgaXAg
YWRkciBhZGQgMTAuMS4xLjEvMjQgZGV2IGVubzEiIG9uIG5hbWVzcGFjZSBpbnRlcmZhY2UgYW5k
ICJpcCBhZGRyIGFkZCAxMC4xLjEuMi8yNCBkZXYgZW5zMWYzIi4NCiBUaGVuIG9uIG9uZSB0ZXJt
aW5hbCBJIHJhbiAiaXAgbmV0bnMgZXhlYyB0ZXN0IGlwZXJmMyAtYyAxMC4xLjEuMiIgYW5kIG9u
IHRoZSBzZWNvbmQgb25lICJpcGVyZjMgLXMiLiBUaGlzIHJlc3VsdGVkIG9uIHRoZSBzcGVlZCBi
ZWluZyBjYXBwZWQNCiBhdCB+NjkwTWJpdHMvcy4NCiANCkJ1dCBhZnRlciBZb3VyIGNvbW1lbnRz
IEkgaGF2ZSBjaGFuZ2VkIG15IHNldHVwIHRvIGhhdmUgaTIxOSBjb25uZWN0ZWQgdG8gYW5vdGhl
ciBzZXJ2ZXIgdG8gYXZvaWQgdXNpbmcgbmFtZXNwYWNlcy4gVGhlIHJlc3VsdHMgYXJlIHRoYXQg
dGhlIFRTTyBzZWVtcyB0byBiZSAgZGlzYWJsZWQgYnkgZGVmYXVsdCByaWdodCBhZnRlciB0aGUg
c3lzdGVtIGJvb3RzIHdpdGggZTEwMDBlIGRyaXZlciwgYnV0IGFmdGVyIHJlbG9hZGluZyBpdCB3
aXRoIHJtbW9kIGFuZCBtb2Rwcm9iZSBpdCBzZWVtcyB0byBiZSBkaXNhYmxlZCBieSBkZWZhdWx0
LiBJIHdpbGwgZGlnIG1vcmUgaW50byBpdC4gQnV0IHBsZWFzZSB0ZWxsIG1lIGlmIFlvdSBvYnNl
cnZlIHRoZSBzYW1lIHRoaW5nLiANCg0KPg0KPj4gVG8gZ2l2ZSBtb3JlIGluZm9ybWF0aW9uIG9u
IHRoZSBzZXR1cCAtIEkgaGF2ZSB0ZXN0ZWQgaXQgd2l0aCBpMjE5LUxNIA0KPj4gdGhhdCBpcyBi
dWlsdCBpbnRvIHNlcnZlciB3aXRoIEludGVsIFNreWxha2UgY2hpcC4gVGhlIHJlc3VsdHMgYXJl
IHRoZSANCj4+IHNhbWUgZm9yIGNvbm5lY3Rpb24gdXNpbmcgbmFtZXNwYWNlcyBpbiB0aGUgc2Ft
ZSBzZXJ2ZXIgYXMgd2VsbCBhcyANCj4+IGhhdmluZyBpdCBjb25uZWN0ZWQgdG8gYW5vdGhlciBz
ZXJ2ZXIuDQo+DQo+SSBvbmx5IHRlc3RlZCB0aGlzIG9uIGRlc2t0b3BzLiBQbGVhc2UgZ2l2ZSBt
b3JlIGRldGFpbHMgb24gdGhlIGFjdHVhbCBkZXZpY2UgKGBsc3BjaSAtbm5gKS4NCiBIZXJlIGlz
IG15IG91dHB1dA0KDQogIyBsc3BjaSAtbm4gfCBncmVwICJFdGgiDQogMDA6MWYuNiBFdGhlcm5l
dCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlv
biAoMykgSTIxOS1MTSBbODA4NjoxNWI5XSAocmV2IDA5KQ0KDQo+DQo+UGxlYXNlIGZpZ3VyZSBv
dXQsIHdpdGggYSBkZWJ1Z2dlciwgdHJhY2luZyBvciBwcmludCBzdGF0ZW1lbnRzLCB3aHkgdGhl
IGNvbmRpdGlvbiBhYm92ZSBpcyBub3QgcmVhY2hlZCBpbiB5b3VyIHNldHVwLg0KDQogSSB3aWxs
IHRyeSB0byB0ZXN0IG1vcmUgaWYgbWF5YmUgdGhpcyBpc3N1ZSBpcyBwcmVzZW50IG9ubHkgYWZ0
ZXIgcmVsb2FkaW5nIHRoZSBkcml2ZXIgaW5zdGVhZCBvZiBuYW1lc3BhY2VzIHRoZW1zZWx2ZXMu
IA0KDQo+DQo+Pj4gQW55d2F5LCBJ4oCZZCBzYXksIGl04oCZcyB0aGUgd3JvbmcgY29tbWl0IHRv
IHJlZmVyZW5jZSwgYXMgaXQgZG9lcyBub3QgDQo+Pj4gaW50cm9kdWNlIHRoZSBwZXJmb3JtYW5j
ZSByZWdyZXNzaW9uIHlvdSBhcmUgc2VlaW5nLiA+PiBBbmQgbm93IA0KPj4+IGhhdmluZyBkdWcg
aW4gbW9yZSBpbnRvIHRoaXMgY2hhbmdlLCBJIGRvIG5vdCB0aGluaywgaXQgY2FuIGJlIA0KPj4+
IGFjY2VwdGVkIGFzIGlzLCBhcyBkaXNhYmxpbmcgVENQIFNlZ21lbnRhdGlvbiBPZmZsb2FkIChU
U08pIHdvdWxkIGJlIA0KPj4+IGEgcG90ZW50aWFsIHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb24gKENQ
VSB1c2FnZSkgb24gYSBsb3Qgb2Ygc3lzdGVtcy4NCj4+PiANCj4+IENhbiBZb3UgcGxlYXNlIGVs
YWJvcmF0ZSBtb3JlIG9uIHRoYXQ/DQo+DQo+SWYgeW91IGRpc2FibGUgVFNPIHRoZSDigJxjYWxj
dWxhdGlvbnPigJwgYXJlIGRvbmUgb24gdGhlIENQVSBpbnN0ZWFkIG9mIHRoZSBuZXR3b3JrIGRl
dmljZSwgc28gbGVzcyBjb21wdXRlIHJlc291cmNlcyBhcmUgYXZhaWxhYmxlIGZvciBjb21wdXRp
bmcuIA0KPkFzIGl0IHdvcmtzIGZpbmUgb24gdGhlIHN5c3RlbXMgSSB0ZXN0ZWQgd2l0aCwgaXQg
d291bGQgYmUgYSBwZXJmb3JtYW5jZSByZWdyZXNzaW9uLCBvbiB0aGUgc3lzdGVtcywgd2hlcmUg
eW91ciBwcm9ibGVtIGRvZXMgbm90IG9jY3VyLg0KPg0KPg0KPktpbmQgcmVnYXJkcywNCj4NCj5Q
YXVsDQo+DQoNClJlZ2FyZHMsDQpNYXRldXN6DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
