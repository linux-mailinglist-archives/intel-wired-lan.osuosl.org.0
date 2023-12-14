Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36732813739
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 18:05:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B42D81253;
	Thu, 14 Dec 2023 17:05:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B42D81253
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702573543;
	bh=dlwuO6beX3GnUUP/7eXW+DMfZf1AY2jujzIxkOv/5IE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WnopidZbIBwO2ndZ0PfSUIdxnL6ZOHbxIz2kfpaT0FCqimV/8+AvhKEgG3tlUs4xm
	 CY5NNhk+cVGWslNqd/riIyADkLgzJInrSHPi2VwAKrxS9c13Xo3Kx/W0QWxxxZVrRc
	 EGwc6OdGe+qFkm6EtqmIuRh3Za8xthS3Nc4V8+CdAdAS6WrHjdJbSwItDe+0tbxUjr
	 bLCnIia4d4MI0GTXbvMmkASbAZXHk09Gg0kDHtgbsYwxrEmcwsuQ9fzWAFlBhEJRpq
	 xqQjcs887YT4qbbt30c9xJr2fD/nTRSlzZVwIx/nxPiy8uikNndh95V40s1U558cQr
	 ipCkAN7s43U7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uhRORvY9ZqLq; Thu, 14 Dec 2023 17:05:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13DA580F5D;
	Thu, 14 Dec 2023 17:05:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13DA580F5D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB7131BF41D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 17:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C40080EB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 17:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C40080EB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9q88kHaD0XN9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 17:05:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4278080ECE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 17:05:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4278080ECE
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="481341416"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="481341416"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 09:05:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="897802005"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="897802005"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 09:05:34 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 09:05:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 09:05:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 09:05:33 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 09:05:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eGuy6Pyua8115TDSazlxCnSTTib/fI58lwrjmzDjDH9A1xZ8TXJ2vr2Z46RPQ3UB8581xOR4REloERcmDmHQ1QsT6N+UQuWsr/ZdrU/AMq0VZuuXQI+ZGTTF65FkZVimkMSUk+DMEA0Ba/DSDq48KWGXOKuPyYU2SMuLbw1Alagu1q3hPP1Yt+w+jfZ5DtgYFlpldSYNJ9tcJuzRPhZ5pjeD7/583mysJ5cuAmacL2a8XmOoBOJ5Dk9ezKc7RYRzAajo7p7takr8NekP/nWImsll7bnSD+rl6p34Vf3CZavx4smkjj5zqhVYqEvSL3/Mp1iwlnhUbj5vB4tgjLx6jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vA90DD2mRyueIbivYnWSNLXrgftLRiG4jITfsLshRM=;
 b=SEJO0qUiabE50G68rUfCc4kF/zNQqs0qxuasauiyJrwDZoOWtl2vQvjt5VkyaWYCsFhBrOQr739KiGNpa46EkgyGxZQyFk+Hg/T5eTskc4dn2Y+AaETjg4FmWCVPBeO63yv/J3Xb0RAYnmPBHwAZEGBFhjcTvkDCn1x9rV0+JwFsNsOqM4a6De4IMr268N7pOe+HyF/VJVCb6UDAjry/L5IO1dzqnJdX0qD52ztiUer2oYpPFAMe0/h2B2AtvsdRTHdA3CAZKPNcTONREP94kxIASUBPpgqC5/T6o6QIimWxEzHr4+kp9IRfjRHwW1ss1zhq++z2PxAxOdeJJekFvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by IA1PR11MB6292.namprd11.prod.outlook.com (2603:10b6:208:3e4::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.29; Thu, 14 Dec
 2023 17:05:28 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::a418:4b7b:4567:eba9]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::a418:4b7b:4567:eba9%7]) with mapi id 15.20.7091.030; Thu, 14 Dec 2023
 17:05:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: add trace events
 related to SFP module IOCTLs
Thread-Index: AQHaLpdF8v2kFFa/PE+8XBRQIzxqILCo1BYAgAAs5dA=
Date: Thu, 14 Dec 2023 17:05:28 +0000
Message-ID: <SJ0PR11MB5866232ACD93F2E2AF880F12E58CA@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20231214141012.224894-1-aleksandr.loktionov@intel.com>
 <ed0ebf46-1c24-45d1-a841-7733a3b70966@molgen.mpg.de>
In-Reply-To: <ed0ebf46-1c24-45d1-a841-7733a3b70966@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|IA1PR11MB6292:EE_
x-ms-office365-filtering-correlation-id: 650fa8d7-f244-493f-90f6-08dbfcc6df92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 98u0Bu7Z8TeV17GqT8kqDv/aOF0wOWmcNx7cnja7iW6wCElvO7e1mvwdbG5iBabgtKSQhiQxE7MWEUi9uE5pr7S8z7bkWtmgc1N1tGFNLaTDjYjMJi3hyL5f385QZmJ/I9IGO3tQF+ELyDdf2/gnp6uEvOCie+EPCffYF4cmXp3c9Mc7J2GIraS3K+5bPWxyLVdJYHBoQ279oecE0isB08EK70FJrNHUgZLod6exRKks5j+kT54+zNBKS+DvM+iFg9g0oM3++uMbIQJuHjZ1YY0JsZWIxbxi3tqkTgvkSAoIzFv4fl7WIYGL/yzzcthA+f+tWJqWbjIMRVx4jctcCSf5RHp3YArk/VmtKrT4zkFDWExlkRSxraySAhau5gKRdn8EY6AMdEiBkqjpubxix4/1FU8lr0eqVQt/PPATBRiey/QTnuzKX/TniCR0yrtw1qq8hyy2pwhWYZ4rejsXhKYewTPL1F3KVCIJZeLtfL5EtmCI1N6BHmMqHIIaVyEO3/XHVwvWBVTMlkDwtOBjtADcb74oh73p3NF3J7OSdvl4qKYVAx4EJk11r9Tckl5g3T99emsDS0RA5rPh2lq7hfiaVwLh2NP/hv4sWumDLzwRXeAOrOswK2Lcd8d8h8n9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(39860400002)(376002)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(52536014)(86362001)(2906002)(4326008)(8676002)(5660300002)(38070700009)(41300700001)(33656002)(6506007)(7696005)(53546011)(26005)(122000001)(9686003)(71200400001)(8936002)(478600001)(38100700002)(83380400001)(55016003)(107886003)(76116006)(66946007)(66446008)(316002)(6916009)(54906003)(64756008)(66476007)(66556008)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dW9uYjBxbEFkZFRVdDhiODJGQzdoZmxkNjMrcnczODl0d3ozdUU5WjVlSEtu?=
 =?utf-8?B?K0hhVjVjOHlyejBiUXN4dlBQZyszY1Arc0tlYWRlRm9QbEFZdHkybElhR3NS?=
 =?utf-8?B?Vk1GeFJGMVkwMHZQMXhyRHRoODVuZ3lkVWQ3THlDTS9Ybmd6U3lCUTVSYzlr?=
 =?utf-8?B?d05IckhSTjFZN1hPSEpmTlAxY2xKdFBVcHlsbEZESEZFOW1keDdiSnNGMFd1?=
 =?utf-8?B?V3Y2UzBVSDFubno4QkRQdXhpaHNWQXFWdnZPMXRzSC81UzJ1VWtnZ2ErQi9l?=
 =?utf-8?B?MjIzR3czQy9EWTNsZDM2akJLN0F6WGNGbmMwS2R6amkzSEZiTzFsOWlqMzl2?=
 =?utf-8?B?Vit1UVdqWHVNK2ttN1pMLzRTZ3VoY0svS1R4U0xobUwzOVV3U2hnNEF6bVRT?=
 =?utf-8?B?S204cm5RZXZ0NndrSUFlTHltc0RNQ3Z4MTBHcWw0b2owYjdwT0ZIbXg5ZWoz?=
 =?utf-8?B?dFRCRkhoNERCajRjOHpEc0Q3TkIxbVZRVitnT0sxVHRVdTBBdzMvOUpYdm1Y?=
 =?utf-8?B?RFBmMFJBb3NESXN6azRjL3h1d0VPN2VvcE5teUZJVUZWVVpXMDhYT3lPcWF6?=
 =?utf-8?B?bHRVYXltSnhRaisybk9Nc2tYaXRtZ0FyRnlPbVd4bDd2VG1KVHFnblhwMmI5?=
 =?utf-8?B?dVNuMnhqWWo3Q0VDZWVDZGhzT3F6ZFFKNjRZamI2R1VIendkMEtzYTdWSk9o?=
 =?utf-8?B?cEVVZDl4RDBMTFJKcEhVUjQ2bGZlUFhKRThnUTlMYU9YSTJzdkxpbzlJNjZz?=
 =?utf-8?B?NEIvK2N5MENrVFQ1Wk56SkFMWE9OODE3YmRxdWNIQjRQaTl5T1BqUGdzL0VE?=
 =?utf-8?B?d204OUM3QXczYzdjZFR0elFMd3RQQUt2elFCRjFDdW91VDl1eVZDczEyN0dw?=
 =?utf-8?B?RzRZTmtHRzE5RW15ZmliNGI2ZVlON29VUDlwNlI2V2kxZkVVSXl1OVZvdHIv?=
 =?utf-8?B?RC9yM3VYTU5LZkZvdmY2aDU1N0lmRm9kWFc2QXBGTkY3U1FvQm4xc2N0VWpB?=
 =?utf-8?B?eHBEMG14U0d0ZEFiT2ZPRVBDNS9EVmtMOU1Gb2xGUkRaZWJFZnZGUGFCUTVL?=
 =?utf-8?B?VC9kN09aRzNjZW04SHhtWmtwdVVCcmFlTDJlTCtoQUlkaFZxVTk2NG81SlRH?=
 =?utf-8?B?aEhIT2FDZVRoaHlVWERwTXRDaDRMSG1ucU90R216ajdJbVFjYjU1MHNwU2RD?=
 =?utf-8?B?aDJhdldMQTBiZHNRNWFYWXNVeWIyL05TN3YzeVFJY29ZcFNvOUNEcVduWC9m?=
 =?utf-8?B?QSthc0FuQ1YvUUJ3QnJjQlRuaGs5bm5OUUl3UjFqaHBzQlM2SzZ6RXhjTkt3?=
 =?utf-8?B?YmJkUCtPeUZYdGt6aTdVYXBudWhZSHZXNWxOV2ZlclNUZk50ckdsTFFHSlhx?=
 =?utf-8?B?NnVRMnV4ZGVPcXB3eVJBM1dFTG1EcmI1bE51R0t4SHlvNEozTkRhTHJaQStl?=
 =?utf-8?B?M2VrekVZcTdxVHhhcUh2QUZPWFFkQ0FCK2R6QjRHbUw5ZlUxeGttVmdBQkhE?=
 =?utf-8?B?WHJ5Zk0vQnliKy9TcHBlK0hCdlJQd1A4K2JJYnhab3JTMFlWazZQOERqY2Jv?=
 =?utf-8?B?U29iSzEzbnpUNTdRRGZQOHlnb3VHUVduVFp0Y0djWWtwZ2x0Ri9ZSXdKWHJV?=
 =?utf-8?B?Q0dzMUlpVVJZenh4aVQ0WWZqNGJYbTJUd3R2UVNhc09HRXNCOGVjMTNDaWFp?=
 =?utf-8?B?dS95RXpLeTF1Ti9GcVNXdk5qdU04UXM3dVltRlZMMk80UXE2VTJNcEJxMmts?=
 =?utf-8?B?a3Qwd283aVI1N2hFVmV4dVVSaWtOWVlDLzEzRnljODAzUHpZK3R1ZzlvQjJT?=
 =?utf-8?B?b2R0eFF2ZHlCY1ZnYkJna2RVTm55QkwwMExJSTNCSTJRNENMR3AyQzNkeTFh?=
 =?utf-8?B?UHdzUE9Oa0UvWWtvWFFSQnZJamhnN1BKTFNqa3lONnBTZUFMbGFCcWwweTRh?=
 =?utf-8?B?T0tXRkR4Mk9IeC84Q3RIM3RMTHIxcC9EYnRqalJ3STNmSVJJMmlKQUNtQlov?=
 =?utf-8?B?ZjZ1cXdXZU5nM3VMMGw2NnpQdENIZmZqSndLK2tHSEdPQ3IzSi91TlcveW4z?=
 =?utf-8?B?SWFmclBrUW1hRjlEK25oaDk2K0dKVldjR2dhWXJxVkQ5c2MrbGtETjN0TWtO?=
 =?utf-8?B?R1UxY3V4Qmthb3NDZVRUQ0kyK21rUFZzNEExMDVDa1V1MlpyZ2RURTEwQmh2?=
 =?utf-8?B?Z2c9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650fa8d7-f244-493f-90f6-08dbfcc6df92
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 17:05:28.7131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ysgjQ+y7p3TlYPARhMNcXWuiaoQUGJBP36yixldvX1Zaqp7xmtsO656vu5ewWBKu2eJPG6XZQcwlZ9PEfenNII08zVuSH9+E6w5mGfQi6hI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6292
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702573535; x=1734109535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4vA90DD2mRyueIbivYnWSNLXrgftLRiG4jITfsLshRM=;
 b=bTZhSSoRgc4D/wECmxHO2LDjwLARtdKoEPVFIn/FppxRy2pllheojExc
 IV21jsb2In/7T6kTTwnC3FT4CkB4p7XJ1DDMxMsNCX4icmZhynxpqf25t
 cVzWt7rDUEgntltEZ6bKWTuG4Ay6o7ci3h/ttTB8BrArt648lOjJzv/fR
 z420b+WeCjYLliJwH1f9CwveyzZlxIc4MRlnrqAk8WCEFGYJWM0wg8dB7
 4D57PoqRjlyKZ5/Xvxlm48hv3sZqqWwRztUz07+6CqMSqbF1Oei9rxFE+
 4+fy1RaNbecT5o7npbpFZbzJU8NnrWfQXR2nygZtCyhXRtrgEJW3HFpqm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bTZhSSoR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: add trace events
 related to SFP module IOCTLs
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: Thursday, December 14, 2023 3:20 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: add trace
> events related to SFP module IOCTLs
> 
> Dear Aleksandr,
> 
> 
> Thank you for your patch.
> 
> 
> Am 14.12.23 um 15:10 schrieb Aleksandr Loktionov:
> > Add trace events related to SFP module IOCTLs for
> troubleshooting.
> 
> Maybe list the three events? Maybe even a usage example.
There is nothing especial about start to use new events, they start to be traced if you trace ioctls.


> 
> > Riewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Reviewed
> 
> > Signed-off-by: Aleksandr Loktionov
> <aleksandr.loktionov@intel.com>
> > ---
> >   src/CORE/i40e_ethtool.c |  5 +++++
> >   src/CORE/i40e_trace.h   | 18 ++++++++++++++++++
> >   2 files changed, 23 insertions(+)
> >
> > diff --git a/src/CORE/i40e_ethtool.c b/src/CORE/i40e_ethtool.c
> index
> > 0838566..e9d9d4b 100644
> > --- a/src/CORE/i40e_ethtool.c
> > +++ b/src/CORE/i40e_ethtool.c
> > @@ -1057,6 +1057,7 @@ static int i40e_get_link_ksettings(struct
> net_device *netdev,
> >   	ethtool_link_ksettings_zero_link_mode(ks, supported);
> >   	ethtool_link_ksettings_zero_link_mode(ks, advertising);
> >
> > +	i40e_trace(ioctl_get_link_ksettings, pf, hw_link_info-
> >link_info);
> >   	if (link_up)
> >   		i40e_get_settings_link_up(hw, ks, netdev, pf);
> >   	else
> > @@ -7219,9 +7220,12 @@ static int i40e_get_module_info(struct
> net_device *netdev,
> >   		modinfo->eeprom_len = I40E_MODULE_QSFP_MAX_LEN;
> >   		break;
> >   	default:
> > +		i40e_trace(ioctl_get_module_info, pf, ~0UL);
> >   		netdev_dbg(vsi->netdev, "SFP module type unrecognized
> or no SFP
> > connector used.\n");
> 
> Is it useful, if there is a debug print already?
In fact, very useful. On some production systems debug printk is disabled. The point to use trace is not to slowdown production as all debug printk-s start to do and start/stop tracing at any moment.

> 
> Kind regards,
> 
> Paul
> 
> 
> >   		return -EOPNOTSUPP;
> >   	}
> > +	i40e_trace(ioctl_get_module_info, pf, (((u64)modinfo->type)
> << 32) |
> > +		   modinfo->eeprom_len);
> >   	return 0;
> >   }
> >
> > @@ -7244,6 +7248,7 @@ static int i40e_get_module_eeprom(struct
> net_device *netdev,
> >   	u32 value = 0;
> >   	int i;
> >
> > +	i40e_trace(ioctl_get_module_eeprom, pf, ee ? ee->len : 0U);
> >   	if (!ee || !ee->len || !data)
> >   		return -EINVAL;
> >
> > diff --git a/src/CORE/i40e_trace.h b/src/CORE/i40e_trace.h index
> > cac0f7c..f54fc36 100644
> > --- a/src/CORE/i40e_trace.h
> > +++ b/src/CORE/i40e_trace.h
> > @@ -428,6 +428,24 @@ DEFINE_EVENT(
> >
> >   	TP_ARGS(pf, val));
> >
> > +DEFINE_EVENT(
> > +	i40e_ioctl_template, i40e_ioctl_get_module_info,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_ioctl_template, i40e_ioctl_get_module_eeprom,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_ioctl_template, i40e_ioctl_get_link_ksettings,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> >   DECLARE_EVENT_CLASS(
> >   	i40e_nvmupd_template,
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
