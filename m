Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA825A7B51
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 12:24:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A15814183F;
	Wed, 31 Aug 2022 10:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A15814183F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661941497;
	bh=gZdURM3cZGI3BCVrJLvd9HoGwCr8GeG+R/fokEX2nRQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4kX6J2JLoAk2JTPaWQ+SwYvAhutEX/KFvu/0SAobWdo8V8Dx5dDlwRf1XAf18CKmx
	 Ug0vgzaqtfETw/z9l1rOYNKrqDPx6HmjpsLdgVdYr8tMm+pCLGA8MegglYC1ZJlH7i
	 tu9lTe78Uqh9n/RMYXzWMWYeSywdmsqjfp9S9n8GyIGJx07jVNaD+aiFcycBzswqWK
	 3QTSJCW14UAPPcFiVisjJnePJRb9P5lJk+wD0VH8ntycYkPDFxEVGTgPHUG8Ab3j7v
	 rjGS2mH7Uib+JzQTL7M/au5hUAmJgVwMbv/4cA49o3xRzeY9XGrEAVH3lU+DmEQM5p
	 SEpkk3b5VfQEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHPTmx5nlNKT; Wed, 31 Aug 2022 10:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 263174183D;
	Wed, 31 Aug 2022 10:24:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 263174183D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B34F41BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 921B24183D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:24:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 921B24183D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86rg12PkmO-h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 10:24:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F5FB41837
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F5FB41837
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:24:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="359377616"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="359377616"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 03:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="940389145"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 31 Aug 2022 03:24:48 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 03:24:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 03:24:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 03:24:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BztyxkOJ5X5gK0lIU2aZz7HZG6WSLL7smKMdtav5210yhqlNbfsGftY9cJtZx196RCtC4w7J57/DAJLUeUaVreBuUvyg2S091EeeCx/XyguZTFRIjGPiS1oIr8LEQpoN+Nm9P5wdQuBlwKp9TJdEGfUaWU3bYOX1DPt8mOgDshw5bEUlPBSbbirdiHgDx5mG/NNI7rvbo5AzcD+Dc8W5AlDJfpF20QqyZG4SXVidDNcdcRW9VtNtjqYmZ5PXcbV9xqQ4n8OToHPqHGYr7rtVLEIdt33kdmp3tBJ2cosKWFDb8MsSknxwB65Wk1CEwIeDy1v2F0Zx7YUpDAd/yYREYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ONigyMwFwSXHx2cmkFVH9KXalX574ARBxmwRBkal7is=;
 b=k0hGF92D7LaM516/eW4Pt3tLcpkbDLZKmZeHNsuLN4RiXJ/z5AmBQLknuS2n9zIoiyOl0iD2ppQwFlQ6mxEkuJ5/4oRp0w/J/25W/VjAhJn5vFcER6FtTjsoD2KcwUSvbt0OXVvThEUzELTmTe5eGXUN2zNnU8/jq//aNQL5z+1FOtAVeidArncimjkgF/PdThpB2SMkotyJXwYmaxK1f5cC7K2NxEZwFoKROByqwJ8qpsdX7Cff3+/Bit0+7minK83dw+OUfcNT+goQM1B9qdURqIvK8v/KvuSGiM2vQylNSWjcDmdqRUkb5Cg9A0JqTvif+BCvGj62j6xxkP5jPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.16; Wed, 31 Aug
 2022 10:24:46 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::545c:d283:fbee:973b]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::545c:d283:fbee:973b%6]) with mapi id 15.20.5566.015; Wed, 31 Aug 2022
 10:24:46 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Guillaume Nault <gnault@redhat.com>
Thread-Topic: [RFC PATCH net-next v2 2/5] flow_dissector: Add L2TPv3 dissectors
Thread-Index: AQHYvSGMcCiTCb59OkquR0usDh2oZ63IzMIg
Date: Wed, 31 Aug 2022 10:24:45 +0000
Message-ID: <MW4PR11MB57764352D74749A0045B1212FD789@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220829094412.554018-1-wojciech.drewek@intel.com>
 <20220829094412.554018-3-wojciech.drewek@intel.com>
 <20220831100715.GB18919@pc-4.home>
In-Reply-To: <20220831100715.GB18919@pc-4.home>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe697d8a-c006-485a-3f3f-08da8b3b06c8
x-ms-traffictypediagnostic: SA1PR11MB6760:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P5I8n76vRP2VF2Tvt9D15Tpw6r7tHwpDEl6bhWG8TKuaFFdVBPxS0Y+/jfRmhE/V1ozJo8R3A4mm1E+D2omecqN5tMlYz0Gh2pwUUkOlIkYj5n0groLfU3VuvcyNz4rYC6KoErPt+YvfbC2jnsMoc1cDy+Umqg022+LO7OpBgxYD/SYhpo2q4ZnLP26xFqZgzWtGjmOQ0V7xsLMjc7nZ9BGY/ouTCTTezoPovCXkhtQac7feRLqb0sOmFxUj9HVL+YeH32cxBHE7iCsvFO1396/cNLmBr3Q7voGzR4wX8daRQh80eHbWfbKXrOfXzePtC6RxCmxjz8Jn8PCIOQnjGyVyPEHG+fAhRy8IowZhHUoi8dlpW5H9+lzOBwoA9iwBqf+caU2hofbkB2BfC9iuO/AQn3QVRD39fzgGhqiTtxyiNKakjmcwTJLA329Ra6hCwK4LF5vTDGCWhUPqQrpF+hrVMJdJ3wdCnqckbPgU9dMLBvEYDHvb2NSZJJoB3f3I+DvQKQVCf3rU3YKvm5OJiJfkkNQXiLVVomWK1HuoGGdsUvlvOBsrdfMk6wJTHj8G5IKb81kW+SPC65f5uaj+yaz6ThSX/RooA6yUKdbYH3ccrY11AGpGH+YJ3tCQFgvR62Upo7b4cqiPockT9cQkN1BYvVB3+gj6GXzMSsyWopqQMpRIfsITzY0h9k+rlx74ChIytG/2XdcqX9RoRl52DNWUbRX4g5YSjLaTWrjm6ktjz7c8e871LcfyczrI9SS7CpmtCQ4D0XnwlVEmujOi5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(396003)(346002)(366004)(39860400002)(83380400001)(38100700002)(6506007)(53546011)(7696005)(26005)(9686003)(122000001)(2906002)(186003)(33656002)(55016003)(66556008)(6916009)(66446008)(66476007)(64756008)(66946007)(54906003)(8676002)(4326008)(316002)(8936002)(71200400001)(76116006)(52536014)(38070700005)(5660300002)(7416002)(41300700001)(82960400001)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?97MyL+zwxZUkB/Rt09l+ex7wRg9ijgSHxfocpq3Inqbo9xkUrGFCJreWgM?=
 =?iso-8859-2?Q?WprFS+9NnOqDzq7YBqOO8aWmLvVyjk3Y6MF7B76deK7ZyQhsY7MqJksjgf?=
 =?iso-8859-2?Q?d6ncoE0AoDKidSL4ZDQlafdA5rl5fE2cyH46GIFrdQJIput/rOZQH8OVvT?=
 =?iso-8859-2?Q?zsvYX2X8ur5wlNg7ckZKwJnimFd2mcQF4x5WjpSw4PJ0ms3rueTR1tjNld?=
 =?iso-8859-2?Q?6EJvuZVKZ0ETORh8HYyYw/5+mD+jPxhxoDIkJGQOurO7RMEAPCYKG5Z2/2?=
 =?iso-8859-2?Q?/oI0e6viX2tuaqbKjGkLxvlE1l/0Sfpt8yrBNSuXPensquN9GPkK5NPv3d?=
 =?iso-8859-2?Q?5Y2lzhmVu8dfR7+LMah9284Mma0GQAP3NcpBmIh/8ZfhC3+Z7LCn5ldXki?=
 =?iso-8859-2?Q?I0ZaXsccxLBXLMSrPfiUzUgJNdtiVt/cYgH7h9TbsIoKGgOcZLuxYNDb7c?=
 =?iso-8859-2?Q?BcNDNSOKUnMhEmC/CPtjsIAJTtwYoPEZzXbyhaVVUdZq43P2YSeEEoxrnJ?=
 =?iso-8859-2?Q?EoCuzGR/5YnLd14tIJLPI76XJVqZmVERh4DcL+ey0fod2tbc9MBjLRs6c3?=
 =?iso-8859-2?Q?HsugJIleSSFo2KKR6kGg05EDzxa1b5aBvyM3ZH3jXcXRoQ6hA/dccHU95V?=
 =?iso-8859-2?Q?JLWv8+01AnY9a+/05zTRD12bMmZm5cmc9vOc1hHgP+8AnKCAx8wrHLH408?=
 =?iso-8859-2?Q?jsys87g96TMa1Gs6DmmtEXTlm4GJmOlucAFvFuCa4o35bfaaC8lPGTA+3o?=
 =?iso-8859-2?Q?O5iTIGAUxCgWR9mj/rFFxyQJS9/Z3Pdzpp7h1ciLfxwmhpt9l/h50GIk3k?=
 =?iso-8859-2?Q?UI8JdZG4ROnn/xp9Dhw907puUHB3gRNyS9asnMt3xaV5tdMYOf9nHI0og8?=
 =?iso-8859-2?Q?MPlr8rdMj4SV7KAGfS/Ft4qEmMC9GhGNwe6JPn+vIrV+eFFNSwMUXaBBbC?=
 =?iso-8859-2?Q?U1EzslnE+XfTLapf71a6sGrlZZDwVG8obG8CRuJ5XhzmBiJSbgGSkmdkBP?=
 =?iso-8859-2?Q?JpBB2NoUShM1eEJFs8IPdNH/3ZW1axBpB4GvzY4CqqsQmzIdYZ7iFxDc+A?=
 =?iso-8859-2?Q?Nh4un/KNPqqUec3voQkBJn3/CgHoegI6LgMC9GV2rRzRM75/PH9xnOmGjD?=
 =?iso-8859-2?Q?pSCHSRnooqJ+F6JngcNhdtgwH7WITMysMGHa0+2+Mt6eMEszvf4a673CRK?=
 =?iso-8859-2?Q?eFTGWwtsIp9h0S2u/Ovc/E39oh1bYAXW8+gbi8NIsN1ZeswpPE7VgQxpSa?=
 =?iso-8859-2?Q?CTIbSFHB58lcOXYs9KU0S/fj/KyA7AiOAOieNB4I/2h4IVNqwVkklJHnwb?=
 =?iso-8859-2?Q?wAW1wB+9D+V+d4TvSjx1B2sOZIg3XQaHcOU/k18hYXypvVIBqVTMxIrXWw?=
 =?iso-8859-2?Q?Qm3ztdmH7NzsgQu5WQOO6AmQANgfdV/ocxZjGHRP8GdBa/RO+XwVmQ0q0I?=
 =?iso-8859-2?Q?8p7NR8FfTXUZ9TO+xBJyXbxqvJpjElgsES5ObRzxh5zHetLd7IgfekApsG?=
 =?iso-8859-2?Q?Lynqdg/hiZZOlNn8DEso20Ojw5Cd5yq4AwelGsXRJbshEyZRxIE33ZRSQ8?=
 =?iso-8859-2?Q?2Hh4kYu1llRiDhTFIZFTIo+J+/u1EIQtYHpocRTET0tDEM+LXW3khjm8jt?=
 =?iso-8859-2?Q?jsrzimuf/yxTevjHy+j//en/56YrIWoRtA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe697d8a-c006-485a-3f3f-08da8b3b06c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2022 10:24:45.9151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pf9TZ9Uxd8UuCDEeRehBJ/l2eX5midNfgE3vMh3DsRhdK6nRE6l2xb2YXZXc4QXFmS1t4nhHvAnPrsm0DLokYyfdfJ1K9XWvQzh7HeCvHDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661941489; x=1693477489;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U50G5sdFV3fasvoCs04SJfJyHYSf8vKbQU7RTiD2Ot8=;
 b=F3AKUYi0W597qebeVy6pX11IOa0cckrMAn2jO/W3D6qS8XZhVCuVkyOa
 VP6RgMDe4BWXmjNNvi03SB0CQm3U4wfr/UVdfEeJ553vh3Miom9HgQi+w
 EJq6oXIoXAGpGmtpkhZ15eGK3u9W/Vdi54KtQME4b5JIhg+NN0wmP9kxx
 OKw/e5OM2VzLwpyWOAImxk86d0REepcOx9eL8mAwtIzfGCmr8YKqQ2IY4
 C8VWXVmegSXDqaCt9dje2SsJPcP12pQ/M1ITF4wv+EQpG/yTblyk9y9f4
 CEPPeljCVcr7adqVnkWaRxRRyCu8VM/kbrrFdF5C0fbSffDruFTaloeZ/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F3AKUYi0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v2 2/5] flow_dissector:
 Add L2TPv3 dissectors
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jchapman@katalix.com" <jchapman@katalix.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "louis.peens@corigine.com" <louis.peens@corigine.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "maksym.glubokiy@plvision.eu" <maksym.glubokiy@plvision.eu>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "paulb@nvidia.com" <paulb@nvidia.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Guillaume,

Thanks for the review!

> -----Original Message-----
> From: Guillaume Nault <gnault@redhat.com>
> Sent: =B6roda, 31 sierpnia 2022 12:07
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: netdev@vger.kernel.org; Lobakin, Alexandr <alexandr.lobakin@intel.com=
>; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edum=
azet@google.com; kuba@kernel.org;
> pabeni@redhat.com; jhs@mojatatu.com; xiyou.wangcong@gmail.com; jiri@resnu=
lli.us; marcin.szycik@linux.intel.com;
> michal.swiatkowski@linux.intel.com; kurt@linutronix.de; boris.sukholitko@=
broadcom.com; vladbu@nvidia.com;
> komachi.yoshiki@gmail.com; paulb@nvidia.com; baowen.zheng@corigine.com; l=
ouis.peens@corigine.com;
> simon.horman@corigine.com; pablo@netfilter.org; maksym.glubokiy@plvision.=
eu; intel-wired-lan@lists.osuosl.org;
> jchapman@katalix.com
> Subject: Re: [RFC PATCH net-next v2 2/5] flow_dissector: Add L2TPv3 disse=
ctors
> =

> On Mon, Aug 29, 2022 at 11:44:09AM +0200, Wojciech Drewek wrote:
> > Allow to dissect L2TPv3 specific field which is:
> > - session ID (32 bits)
> >
> > L2TPv3 might be transported over IP or over UDP,
> > this ipmplementation is only about L2TPv3 over IP.
> > IP protocold carries L2TPv3 when ip_proto is
> =

> s/protocold/protocol/
> =

> > +static void __skb_flow_dissect_l2tpv3(const struct sk_buff *skb,
> > +				      struct flow_dissector *flow_dissector,
> > +				      void *target_container, const void *data,
> > +				      int nhoff, int hlen)
> > +{
> > +	struct flow_dissector_key_l2tpv3 *key_l2tpv3;
> > +	struct {
> > +		__be32 session_id;
> > +	} *hdr, _hdr;
> > +
> > +	hdr =3D __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_=
hdr);
> > +	if (!hdr)
> > +		return;
> > +
> > +	if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_L2TPV3))
> > +		return;
> =

> I'd find it more logical to test !dissector_uses_key() first, then call
> __skb_header_pointer(). But that probably just a personnal preference.

Makes sense to me, I'll change that in the next version.

> =

> In any case the code looks good to me.
> =

> Acked-by: Guillaume Nault <gnault@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
