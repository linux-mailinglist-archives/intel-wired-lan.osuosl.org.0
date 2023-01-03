Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E241E65C072
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 14:07:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AFE94171E;
	Tue,  3 Jan 2023 13:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AFE94171E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672751242;
	bh=t+QdGyYGEL+xPmLJlMmOmOvlJIn6FEkVzOHUSPIM7HM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uotuq7UEGLLnittkDJW7+flBxhBpL5EaDfspvoNQzQ8O5BQhlcrvfDDAJ02JZZ4qm
	 U1PgkIT9uSuhqGz47DFD+HadNoZp3UCHqF/fORO9JcZBNoN77V6iW6GvinKcbcwQkK
	 WoElbxjqKedFADVrZdvjuq7BLf/Z/fc68eQTwovhJOIM6yH6PA+S6m/UH78OxW0yoA
	 OPQ+ZHR9M48h6ZG0SWFzHtCudl17NODF10tUilGHF2yqfrOFPpw/6oVdleqEGJ2W7B
	 gFXDBybG2gO4E9szUs9djIf7Ty++WP5ENZErOoBU3+WXtBjGraOmXZA6fUyDTMF1Cr
	 w9CaYCcWqQ4jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s4VY2-f7KuDX; Tue,  3 Jan 2023 13:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFD57416D9;
	Tue,  3 Jan 2023 13:07:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFD57416D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EC6D1BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E765541674
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E765541674
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hRZAjOcvlgcj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 13:07:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B53FD41635
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B53FD41635
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:07:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="319361120"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="319361120"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 05:07:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="687177230"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="687177230"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 03 Jan 2023 05:07:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 05:07:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 05:07:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 05:07:08 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 05:07:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CgGgZSkx5v3H22DRGV60A/Hr7vgs8begGfHg9t88PfzspwFIy1UNH67MYiwGwAc2ib4PtE37zeLP4xXk54ORiEKES0OTRTBKwyNBbxqrq35AxdsYL7PoKOMDzY4r9FoF1lK5GxtVwkTTI9dN4DgC3ENSoaLnfRNHMS1lOL5SIOBbW6k7HYzWNvumQn6yrBNcEpuSMjWWYbUJHE2i2QAEglnuCUIJ8GsZ6H7UOZDOZT3a/s3Q5t0jyebaaq2VLv3kFXKpXscuLZBbUtF9j0T4l5Q49hcZsQVxY/wwjX5ubb06cEwJUypuyn2UIAd66QA5Sosv7lkYAUOuCzgu30qMaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XwRjO94Y8ncvKXam7b3aOlSkmSU7ZhtTb44XmK5K3Vc=;
 b=KM+Bxnc571Qwt9ixde1X3DAj9PcnWM38r3MpjJ69Cla0y6WXdfvBJyNLa3alCBSOo3krcIft4a5Ctn/xghCeMEGt5+QaNeEsMOsDW6aoO1sSj8cg++0NlucaIfRL5nE3DxkevAh9Q+24Sd18tybOSSXMxE5IO5kyREiM8NhMZU1PZhxIK4PgDVhhapDRzQ8k+xmvjSKlgIwH4Gg6co3m3kNJq6lr9nk/ktuS/TgO+J28dWKlNCoBPncY7E1zp4tatA83Mp38hJOvQuLd/DYuotSLEY5wmxdMcr1LLR6QFhZuHYv+U3Fwnfe8HU13Wt0lmjPPCExPpvPu0c2XxTGdOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 13:07:06 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 13:07:06 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 4/5] ice: disable FW
 logging on driver unload
Thread-Index: AQHZEdWGGNtgVGLEFkyAiVWObkHE3a6MxMcw
Date: Tue, 3 Jan 2023 13:07:06 +0000
Message-ID: <BYAPR11MB336733C7D95A46EAC09D2AEEFCF49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
 <20221217050714.314-5-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20221217050714.314-5-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH3PR11MB7842:EE_
x-ms-office365-filtering-correlation-id: cec7d1a9-29df-41c9-bb54-08daed8b6a2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0glEqKHv7uh9oq1p6NWqTyFYInkZe1qDrQAVVO82I7q6JTqxUIdZjqn4IJrVpBy6NqmKf6LTGXjKBTp5erhi0USkNumt0OOtKRH0o+CIQhXXwAjP/LunrcURyB/cMeKOfgNg+7+GXxiTv9xxC5ZstycbfocvNLgpnYDnAAqLG0gCEMrBvDj1M04sFt0+7nxv5+ATeFsy4eRSiNJDnJvf+djBa2kLxrhnAHZBuuxspDqaA2AFBQbVjOFo+LBGJO0B4rIsHZEBI9f5iug6pp4nFxPDoA9Z53DdyXlQqDMyyVBNlMfFS7SSbmDZVR+qBodkh4TZpg4nvimngvptI+cYQVktVy01dOsEoBwrFjTHdUjAB9JjoUjm55FreJImfY+AdWjWYUbq8bCgmnmJ6j3QgBOET3EG6SK6savMy/InZVit8Tf451EgTOSYzva3Av+q87ZKInU4BPV9q1edFfGTucoOOoiMRCdmsgX4aQBRyB9Fw8UOICLXqrLW4O9VoRSrwD8qmUFsdalDqX1UTn3XSJ22gH4BkQL2Jf4MtHlcTDuHsSiOhFOjMA9aqiMg1eYo/R2zhmfRtKONnIUS3zYFTPKi/d7dh+XcYboqSfjRQFK0GRkoIKCZwG1okIRIxKz8/pBCi/dVZ7ylNm9mw9apl5uKdE+h2K6fQ83WSN4R77dcYSNbGqZ6pO5/b/YlvHvaH68hWfrawr+ILkeT2CKAP1ARRYsyZGP55rY2PdEArJw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(396003)(136003)(376002)(451199015)(83380400001)(26005)(9686003)(53546011)(7696005)(55016003)(33656002)(6506007)(38070700005)(86362001)(38100700002)(82960400001)(122000001)(186003)(478600001)(41300700001)(8676002)(2906002)(52536014)(5660300002)(8936002)(66556008)(71200400001)(76116006)(66946007)(66476007)(316002)(110136005)(64756008)(66446008)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d4ME/fGf2GYrqhnIFUe9ZJm0AltNRMYB78iCrxCA4n6UeoQuelfb35WQxP1T?=
 =?us-ascii?Q?bqnKIoytPh6cxvp/OKuyZKnUZE2DYED64NXt91rC0gMuF7YitZo7iajIEYQG?=
 =?us-ascii?Q?+Nh2cCSr6P9A4VskjjvfAtx4Z/GIl564ojD2fWhbUecIWfH9rw/9QQWPPDE1?=
 =?us-ascii?Q?9niXgaEbW+BPAKusJwfrbikMOx3y6HSZIXnwz9ta/oBS9jdw7vsepCympOlb?=
 =?us-ascii?Q?2wKlGbAVtH86ZbBeiQ10kOGSXo7gtZgCIHJEXZVFhTjTjH7dg0zs+ZWM46tz?=
 =?us-ascii?Q?31YT6fCdMPNd3p4teZ5s4X5EONDdH+HVAyZQYLvpEyj0t6ljFSOjh5odGbyV?=
 =?us-ascii?Q?oxw6+gb/PIhSwcoICZwFluIV0ra8ng7kjKGmcw1Z/cNW/BblVkYJROHfJyeH?=
 =?us-ascii?Q?Y+eMsLYeMHSLAFUJe8UPsrdsGBonw2Se70AvpLdRrN+eNWE07C/ck9JZIeMU?=
 =?us-ascii?Q?EaFHHZkyGB3o0reDrRjaDtbW3/1z9AIldAbktc6092mkS3y7hEHsX40BYYMg?=
 =?us-ascii?Q?a78a3vHCGYS9WxV9AGmFWTjoZ/AT8+EelGkGSf2kYrqvHKwJ+fBES4Mslk9g?=
 =?us-ascii?Q?oIRmnMVUgBFQY6dZGoJGdn/dq9dmUVgBQYcnH3J/ynBfkrtZ//wRsjFGrjzn?=
 =?us-ascii?Q?qQmBhTkuhExaYEY+oli62LrJlvANkt/dgqiwwsJG9lPOFgfl4cw2BtG1LbiU?=
 =?us-ascii?Q?HIazkxOi20Uc24hSrjGuQGGF67OrjBzM1sUHshvaSbFTw5FrZ1YAQSTVcaHi?=
 =?us-ascii?Q?21orF6whO2H7nvowrxsUQFvzMeJBKXKaRu9eEYcDurtVlz0PDphoVRYopmlB?=
 =?us-ascii?Q?qTvum6tLf7UfOmNkVWYyWCTrE+ykghmu+rRSeJU+fyHesAL7xGLOSH9dJkHw?=
 =?us-ascii?Q?DLufoneKAXzlqfa0VWC+7SaivaznEEHhwYocKQrSQUhwaacsfviiXD6tR2q6?=
 =?us-ascii?Q?dqH4Arc6c7FwYGr9uhBLTm/4tMlCfefGFnk8qULOXTjqthUKGjD+yEr2V0zl?=
 =?us-ascii?Q?NfTLrUPWFYwFcZQSGVB0IY8B1VhRaZGYtSB5u0D9A3H/b1rNtCLsdSDgonCb?=
 =?us-ascii?Q?kXlzDH8EjVu5ROHqWEn34WcqJNKLcx2i3BRIzPFacMAr26waOKChl8GSUvDi?=
 =?us-ascii?Q?R2WMr8BRQzW9GzARBZNXqBFp+wOf6aPyCjLtisLYSKatTLgCQpDXTBpqqggO?=
 =?us-ascii?Q?4mjXDBK5RrPGumzMO1ODBICtG3pRsuRFC0kqNQMV+SGQYvdOIHQD+j0U93dr?=
 =?us-ascii?Q?5VTU52a0rrufTp6SglpmAn7tnsaqVwhqhYmaRAJcdSv2r+VhxgAZU9PlHIWp?=
 =?us-ascii?Q?/6g7BtaF4VYo6gXHYlfXmVzK4ts0E4XP1mFSJ/Si4hV0VFaYKPCfDjfnRQVA?=
 =?us-ascii?Q?O6rTV5o3vauWFMFrILokfkNR6fv2lF9+DiqplHkot21gJJ/z4p7MFr661BE1?=
 =?us-ascii?Q?nUxFGZKQVw+2gDRnusz2OOdC1OOtxnNmYKQ1Vo3tQUO0iqDQJX0++DBkfsBp?=
 =?us-ascii?Q?MsHDVdxlXMY4CB6/doNCNWGmVkxVvxLeNotSAEwnxHi3QZtmq19BLskmx7Kw?=
 =?us-ascii?Q?D4yL+bDrJb47yEesMDwD0Bp2UjJqYzGtUHMinPh9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cec7d1a9-29df-41c9-bb54-08daed8b6a2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 13:07:06.3653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4TvJxGfEF8oX1MPC8fZATd9XUa6G7ICIywXdOhCuEEaICMACGCo1WdWa16xLQ+HV3kHN3uUl0C1aOgdG6ktC7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672751232; x=1704287232;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NLuDRaXL+HoX7qpc4LY/ZD0215G5KYioG2Xr2lZuXRE=;
 b=kiSoiOzaAChUG68/Zk6vTLOmT0ivbA55xh1d/MUjrGDRygdSwIOFKmqw
 IxeibCULKqosk9a8k52IAbXAWAjRt+yZjrrQyfS/DeZFvoWzUMDvXf4cK
 cKm454x05qd0fXWoU89gF9kebm6iAk7VZdpPUphXG3f7s1io298K9AMFa
 SKV987ZzugztPwDouJo8giJlYYTVMXmA30NriykDbBlwn3YjnrcJrL73S
 T8vW5xsAj53f5djFL4Qa768GF//kAzs/81d1pLN00/Q6p+cTEaHh6xgv5
 kMKR1lpdRSrwhBy1Zoc6RzMvIqWZzoNM91V/iQa9gNeuC8xkGk11aq1ul
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kiSoiOza
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 4/5] ice: disable FW
 logging on driver unload
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Paul M Stillwell Jr
> Sent: Saturday, December 17, 2022 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 4/5] ice: disable FW logging on
> driver unload
> 
> The FW is running in it's own context irregardless of what the driver is doing.
> In this case, if the driver previously registered for FW log events and then the
> driver unloads without informing the FW to unregister for FW log events
> then the FW still has a timer running to output FW logs.
> 
> The next time the driver loads and tries to register for FW log events then
> the FW returns an error, but still enables the continued outputting of FW
> logs. This causes an IO error to devlink which isn't intuitive since the logs are
> still being output.
> 
> Fix this by disabling FW logging when the driver is being unloaded.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 29
> +++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
