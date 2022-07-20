Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE47157B05B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 07:32:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36E1A61019;
	Wed, 20 Jul 2022 05:32:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36E1A61019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658295122;
	bh=5+WoMDAKg0D61mvMP8poTzFruPi+X8+jGG0FelWD73w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fFXDudVLlpzlIfOr4uAMPPcquMZoQP4dgqAwpnP45p2h17ftfJjPvGuxtNxd19RVm
	 snAgqPOZ7ifJex8eCaKh4vjGUqd2R07i5/XoGPAU4Nz03KkkpUiTvNFGehN3gSaGmv
	 mPRtB9TQKz1FQfHpslSCaoeKmJKVQd+rClrxz7BPc6LxbReHfnFnzL9p/1/iBCBfHv
	 ES2s4fAZeNqg5uoJOAXkiFG5EAjsSQouJGV+rS/MaF4G5PzLdUCfODAFrO6osv+Er8
	 WtYoQuyGnI0D7CouxmMH5HZQNnWP1KhKkt8fbkR6QOfOfVUwX7xwIE3YegupGBW6wP
	 Ulg3kQ9s+xuSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5_hAMZHuKHV; Wed, 20 Jul 2022 05:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 124B660AEA;
	Wed, 20 Jul 2022 05:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 124B660AEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D4F21BF957
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 365B6403EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 365B6403EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpquWFve3wgL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 05:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBF484027A
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBF484027A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:31:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="266459000"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="266459000"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 22:31:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="665725516"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jul 2022 22:31:53 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 22:31:53 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 22:31:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 22:31:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 22:31:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDWmKPryn/6aIsk/2vbI2GeGvWYeXZFHSOjQokrw7tX2ZO48x3k+NAHXaputYUVZv6Y+tcwcUIYc+RTPZHUGDIlvVGXmEnFtkvCiB3so+RMcuopNFNP5LW7npMKVCOOfMSqwEW1CGH8aL8FkgdNMtPcQDk0mmvZXfZo4l7dmBkWXXeQQx8V2QmhjQs7BESGAYozlhI7e+zHmhCRIu7fvTG8RqPEL6C514k9HiuhHh7I9aaficafn6HB5NzEhYzwiuO24kqdErdWncgqsX7/Tlrnt3zsvZZcwr0Qonx7Op6esYwoZsnbBGmxS9yJ8NGhlxAzdgZzOLE3W5GjXLe5R4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xINmmeaXR2F2q9EUcpkoAnkuBAxzA/5+hDj/pFeyqWo=;
 b=blzxIVlbkUzUTyGvOX1trCUtSzPLkyc2NYWKKo1ubT4z4gre4+SRwzIsWbMS7YDEP5xylK2+8XIIeS3SkNMsiyMVY3fXR98i+EA/D+ru0kfemncYLikLLHODB3I/uxws6l5b+EZ844k5DuuSRr+YHhYzjsLaqt+5JkVxWT8bkobRUrzZWTfkfrrbesvyQ9GXz88nIxUZ/FL0I4AVzpKYJOLw/NlZEl8F98jw0SQmT7Gg0TucNh79VfjxE6+/o+nv/uQwhghGDT7m45OXlys5xGci7u8k6OdeDZJpCIlVg1PzJMXDs36duxHlSOvS6CmiMVajC3eo4NrZu4VAhuQAaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.19; Wed, 20 Jul
 2022 05:31:46 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 05:31:46 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: Implement FCS/CRC
 and VLAN stripping co-existence policy
Thread-Index: AQHYlR+gox6zG5J4hEeV1jbHsZr1mK2GyESQ
Date: Wed, 20 Jul 2022 05:31:46 +0000
Message-ID: <CO1PR11MB5028F5C4109A71428CD11F2BA08E9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220711121047.111489-1-anatolii.gerasymenko@intel.com>
 <20220711121047.111489-3-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220711121047.111489-3-anatolii.gerasymenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df786aa7-028a-428e-f7b9-08da6a112310
x-ms-traffictypediagnostic: SJ0PR11MB5087:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZDJPQkQ7TJWL3OVVfMo7H98TbwvfB0wGqy1tqzlQHr6Xmnk9wqJ5oED2J8uk4iRz3kX2xsW5qR+jsQ9JMM8oUYx8YWZpZutEA/NeweGoqUouUbmqehpH7FthUIiDgTd5dLqcvi7yjQNoVmH6cgT3+U+/37d85aEO2DVkFza2VSssAylsURSMxBXcpS/D+oz049sj3TqyRfDvWqVixAjUI7Kvwx/xG+uLavKbCnf8eRI1ZhCHJjYqnptJnzLToXPmDnezE0N3DVI1uBQJS9pbH2St+fLRHOyAH+/ozxqDfr9KhSiebgk0mRSItIOWZLyNQUTCtMc9ohGp7VTWQAowuqp5MeGCvsV2w8tOYepKRjxroENZMCiL0jG5J2zXAI8HYQ3w9UE3I6LAnH+4TBrYK7t1Us/rxxM9ZEKUvPdSA+Lnvnj2bJJlw4Y4jVesHwAv1sTuXiAVu1vkRxVRBFgM1ZRFxU5jB0aGFBMcc1rqfwUc3H5HoINhcJj6BOWdKWL7wWDD6wv4tiU/kdDiIcPvmmW1FuCGBkLghj2DaGm7gz2ZfAfb95SxI+vJYh2E6dQNgUz19IfkmeSqcSl4L7YvAMGv05FKo8Slob5Uy3RKX3p2GLREjuTxsAz2PWx/pD4f0vQVT/utErYhZXQ09/pW7nWMJjR9j8Eyhxg0gUC6Dd+JUJlABzgqqPr0EMPcL/5PLeI5t8DYU9gNx4iO05QkZXbF0dRY9fZM55k7CmD0PyKXra3Y7ZHw47uW6voIG9qREb4AkktWyLPmCXuT4uGP2gHrsoBA5+Dbly6x3q6k+L4jVTRJWOeSUoA7T7h3BfUqmoG1btc7+LDyiRUmeJ6erA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(396003)(346002)(316002)(122000001)(7696005)(9686003)(83380400001)(110136005)(41300700001)(54906003)(2906002)(26005)(33656002)(71200400001)(6506007)(86362001)(38100700002)(66946007)(52536014)(186003)(38070700005)(82960400001)(66446008)(53546011)(4326008)(64756008)(66476007)(8676002)(55016003)(8936002)(478600001)(5660300002)(107886003)(66556008)(76116006)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r0DW+Hb31VfdzmZIo32B1RndpEhTdqTvZbFyHy4HXQnxYIB1unYfmTPSdvd7?=
 =?us-ascii?Q?fjwzVkzwUPV6Kg4xMRbRymTcMqVtAit3sSqmyrh3IlsxPhvR8GbQd5vQy+r8?=
 =?us-ascii?Q?TjpM/vjNt46a6u9t5FCw07J+r3G0CEXoNs1+9R7VlVcrZ5h4rJ1KTmMepK7V?=
 =?us-ascii?Q?YEYNLGWUp+R/LTRswT+/Fkn49kyuwiCqUEp5lvWQpTXFUmbdyw5zpI3oySgt?=
 =?us-ascii?Q?e3dUCCJ1jdtgKNtK+9B962I0Uun2ZzsXNEzSOQIJptpz7MhQyiNWbnIdfLqK?=
 =?us-ascii?Q?pLHFPt39aJtzgPbIhvscctMN7Ka5lol1K0h57fKfwKP5d4q+zEvaDj16xuXN?=
 =?us-ascii?Q?A0X7c6jsbRm+a2J/fhphj8Vfu21Ols++E/AKRXmmyP/rhdQ+jQkL6qIhG+JI?=
 =?us-ascii?Q?oLpPNhAtm+vF+sgUtxvkFGNxb7FM82jI/wOV4MfhPJQwYbNyj85oSjUZOb0l?=
 =?us-ascii?Q?kCbwyxKLy5E2277kcfkSX/tT/5PJIOASJOBZoVFNPsOXdhLIg4RI9A7zggHY?=
 =?us-ascii?Q?ga520wqEnojqAL+mTWEofHwADaDb7MQL0uvuHeXT/t6gXexF977Rp4Jn1PDr?=
 =?us-ascii?Q?ORktM1zWLO9pVOAczR/VAXkCWzodc1MrBQNVX3IZ8/IfU5DTpw2vMYnbtvvL?=
 =?us-ascii?Q?c/aJ3KxisrW2y88x/BqO53bbyNaGSkd9KCn/8i1DvgtzL9Ee7BdOKLVSAQPE?=
 =?us-ascii?Q?JHcb9FjM0EbyUw26PcOJQaRlIQEaRXE1uU2g+tLMbjtnfwDnHwCQPW7//Z2Q?=
 =?us-ascii?Q?xR9LwrNyvadOnxDXohCpo1VFJHXB43HfbQDFrS/D2WqTyWMFCXfxIvcT56Kl?=
 =?us-ascii?Q?zxPfYY+DoLSbbVQBI9+caft+C9v5lHMapLu/Iqb0Y8OVnKlCHE0TXegmuph4?=
 =?us-ascii?Q?cMZscEtfXbvuXCza3tVEDhJYCsPmpJ3byr+DjaG80go8jEJYAKT+4KwwGL9H?=
 =?us-ascii?Q?FqiOziShpQS6j04XjS2x7TjREXp+xgWP793hnKkg1rEnmHdaiJmYpzsE3ZQZ?=
 =?us-ascii?Q?ZAvq4YF6WXhO2a8Y3ke8yWFImrbJQGO7ujpRwIIZCZsLBOJN4+zXA1mcBZX9?=
 =?us-ascii?Q?nWhO1qMOKKtSY+dm+94BdqIoS4BomFbKUKlKeUMxBLefwwgJuIczSNfU286v?=
 =?us-ascii?Q?CqYg/fOJpxYPd8Xn5OMungZ/Ldaa42JMcnnYk+GpYbkFLytiPDbbeidSonmx?=
 =?us-ascii?Q?4iq6CuRPCYP5kCFXRslBbb/dUp1SSjrZr/ga+Bsbj64hEEk13bO11Zh9RDdd?=
 =?us-ascii?Q?f5AUfqKs5Rc/yrU98kTt8rJkrfKgga52SofPmtLPVvPsHWb+d3viFVYG11fU?=
 =?us-ascii?Q?karxC6jE2eXGj9TmI/yY2FKxI6fXSLUbflgUAz13X0v4Q8DWBOLkGgyY6bb6?=
 =?us-ascii?Q?KT2plglHSZ3LTYKmJ+QEOSYoY7ye5rzb6iNbcuFUxWbrbY7Vaxsk41ysRz9L?=
 =?us-ascii?Q?HBCT3To0cepyWiBQhJKSFFtGSnBHiyA7K9Kh2jFKF4aLdLwtqI3XhtC3scNv?=
 =?us-ascii?Q?Qa7cxL4HKC4FnAlwPrwXh191h/wxHr9FiQItQQEblpIm/eRua16bVpMyXfWk?=
 =?us-ascii?Q?OYh/H8UKXAnwKOwQmCTeceD/vaggfeOSzQ1SFwu4Hgq+W12bJNI6X0Q0yafU?=
 =?us-ascii?Q?2w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df786aa7-028a-428e-f7b9-08da6a112310
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 05:31:46.1181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JyH+ftAfh2mJTLMr5r+dqHnDXD7g3pHvNUlfCfDQFDNlYwCRa2Y9M/aZDsKzGZqQwunoj27igek6ieVZgZqXCcbaG5OTZqiFcMRl5uYVFzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658295114; x=1689831114;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TWS2eJgN8yObWMQzethYBarvG2aknwv9zzaU345C5nE=;
 b=Gof1jGc97gix17GY7nGUQIZ28Ey4P3CzPBqPxw4RnlRHxHnxosAG/9Wf
 fqkOSpiibr6q758hTNcR+YFWINCtO8H3SPC/trAJ9dbX4otncbeUxK5ZM
 ERdSPg3P7BCEiq7gh5/EqcQHY0Dg28u+L6EX6gjh/ICDAAE7v0o7+/L11
 Ogj7J6FjM/AtR7Mg8zZ3/AmM8nIomiZ977R7ZOPX5kdNxy31n2XnGDOZ0
 jJrdqAZ7bM7LFhV6HwIgeibsNtq1W3tTIr3VmidomNYCkOSyd3RLURgel
 yJm8OBQsp+V8sF9Z/KKG8pRUK0MWuIlL1kfxtNylKGGXph0HX0PUdpnNY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gof1jGc9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: Implement
 FCS/CRC and VLAN stripping co-existence policy
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Anatolii Gerasymenko
> Sent: Monday, July 11, 2022 5:11 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: Implement FCS/CRC and VLAN stripping co-existence policy
>
> Make sure that only the valid combinations of FCS/CRC stripping and VLAN stripping offloads are allowed.
>
> You cannot have FCS/CRC stripping disabled while VLAN stripping is enabled - this breaks the correctness of the FCS/CRC.
>
> If administrator tries to enable VLAN stripping when FCS/CRC stripping is disabled, the request should be rejected.
>
> If administrator tries to disable FCS/CRC stripping when VLAN stripping is enabled, the request should be rejected if VLANs are configured. If there is no VLAN configured, then both FCS/CRC and VLAN stripping should be disabled.
>
> Testing Hints:
> The default settings after driver load are:
> - VLAN C-Tag offloads are enabled
> - VLAN S-Tag offloads are disabled
> - FCS/CRC stripping is enabled
>
> Restore the default settings before each test with the command:
> ethtool -K eth0 rx-fcs off rxvlan on txvlan on rx-vlan-stag-hw-parse off tx-vlan-stag-hw-insert off
>
> Test 1:
> Disable FCS/CRC and VLAN stripping:
> ethtool -K eth0 rx-fcs on rxvlan off
> Try to enable VLAN stripping:
> ethtool -K eth0 rxvlan on
>
> Expected: VLAN stripping request is rejected
>
> Test 2:
> Try to disable FCS/CRC stripping:
> ethtool -K eth0 rx-fcs on
>
> Expected: VLAN stripping is also disabled, as there are no VLAN configured
>
> Test 3:
> Add a VLAN:
> ip link add link eth0 eth0.42 type vlan id 42 ip link set eth0 up Try to disable FCS/CRC stripping:
> ethtool -K eth0 rx-fcs on
>
> Expected: FCS/CRC stripping request is rejected
>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: rebase on top of Maciej Fijalkowski's patches
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
