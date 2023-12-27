Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 699C281EB7D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 03:17:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E68F60AF2;
	Wed, 27 Dec 2023 02:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E68F60AF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703643421;
	bh=urB71nFwhtVbO3tYYdWnmr0nl44MNw126/wj1wd1cO8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W7JDOmDagGuDuZ5To3qNvfJXtulvxE7BM+PDC81gaD9jZrKG+QHaP28M09Gigbo3Z
	 Zl9BBjOZHK0IUsw/HKDPTZDEHxHCncPPIqwLSlBYAzE48Ob2Ja3zKKcDlLtmezJmdn
	 58D98iQBNNb22os6B5Jc7s0O1s6FA8W8DOoBBPiisgcr9ALKmolawYBLfp14yGNAas
	 52Hknfbqk03mYaF98WHKiTNIGCW/nJpPbrwLOJZqfo7+TXhc9TlcYAK87dr4NP7z8A
	 d7Ir2WJY1g25ad63IRm9q1nH1KmhwsONx3VVilnRwDARUZJxh78jMr/0Tp/35qunVA
	 tepg1oJabiqYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGpSPZtHIev1; Wed, 27 Dec 2023 02:17:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9AE560AAF;
	Wed, 27 Dec 2023 02:16:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9AE560AAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57D701BF681
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 02:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37C7760AAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 02:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37C7760AAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nds6c-1jwKMQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 02:16:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3264760776
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 02:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3264760776
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="460733383"
X-IronPort-AV: E=Sophos;i="6.04,307,1695711600"; d="scan'208";a="460733383"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2023 18:16:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="771310363"
X-IronPort-AV: E=Sophos;i="6.04,307,1695711600"; d="scan'208";a="771310363"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Dec 2023 18:16:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Dec 2023 18:16:27 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Dec 2023 18:16:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Dec 2023 18:16:27 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Dec 2023 18:16:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FrbIKsl0K2JqNEvbAJ7AAjKH7nUDdkNEljXM6NP8YxQfWdojWZsD9MxnBQlYYgB9rJ7f23KpK+Acn9PSEDtPZDNzsME5JOndqpzCREzDlQr0FW9zQjSTqLv/kS0pbJPMAopvbagWlyVrVnsJ/FJCaBn1V60JbIHA0TvOWuAOPgk3Qe8zqqg5ZR6AiMd5LOEHYouzy5lL93Z4/jK50KjDrDerT/6OAp3MSG3tM+rITGm9p06ioGziDR0t9WFjIFWSheuaS0q7EqOuRFqZ1MdK65E9dlgpI8NHXLt/zT5Uzyl3lB/NuMrqI7Q5ZBXpLtJWJgWmpRGd/VYG9cmkj8uRFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=urB71nFwhtVbO3tYYdWnmr0nl44MNw126/wj1wd1cO8=;
 b=h9cvgBOOcJoerVkJR4cBxMo4j6zC7qkk6vCzP+/YmSxEEs3DOZeYI4pmtrud6bNBSXJtjVvYl21jBp4B603n27mCwU++T8ezzslaIWGPMo7CJ550RwvgJVTQC4O4BYyrJXpnjAT/FlwPvJ7nuMoUhDRKIgRtW/6TU9/uPDS6Bbvm34ffXq5UUPZoRb3xQt2NXHtmIedmvfK7yRrMXWVHtndeSjO0bsf6f+ADPsTvx+rh/K8S/C0LzylmYJKTOYb6UWQO7rc9wFuFrrT00RAjAEkajsnKVSz2J5aqhM0WR/PL/3DRmCrmroayY51/IxayWT+XgvnEAQMuSeiUFeXm8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Wed, 27 Dec
 2023 02:16:25 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7113.026; Wed, 27 Dec 2023
 02:16:24 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix
 link_down_on_close message
Thread-Index: AQHaL0ZyuxEKnp5hN0qB2YShql41bbC8dmfw
Date: Wed, 27 Dec 2023 02:16:24 +0000
Message-ID: <BL0PR11MB312210BBB27937AFF31C22EFBD9FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231215110157.296923-1-wojciech.drewek@intel.com>
 <20231215110157.296923-2-wojciech.drewek@intel.com>
In-Reply-To: <20231215110157.296923-2-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|LV2PR11MB6072:EE_
x-ms-office365-filtering-correlation-id: 7432deef-d06f-4e5f-fa34-08dc0681d338
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HWN/De8XNXSfGH5R2bk6/au9Ov/R3t62SCyDnqNtMIYg2FiONcAQdmcbr04AOGi0Nvu8iCjhr494xRjQHNrFBOmzGogbJwUKb8K+v1VWD8KWW5xTuYo853twRZFbk7JrkAy/aoEyyVT0XfUOO2VbXAma1IfdK3LIdnUIyH8aUy8vAIGI+Y01wc67xGJRASMks5mW4tMG+R4w3cFxhRNfDPKda6sSQtCdgGOTkTG/yzCKnTpgl7z6AI8M2pc2Ot+qAIG0u+98qT6zPd2Kk5OHzNQG5LV0CW6rIW3W0fyOIla+6yW9G6fQ3LRqwwsMlBrCa1paxfmJtsXG2AXjKArpl57D+WGWbvnNdJGJy313rl1m/48UirFuFSQ3r8NU5GezWyQ1HCcmJZ5Kcwy41X2XdXzsShlh27bbHv3Et6UDjHn+6C9c/suTOIga+tV/g/9fVQAAQ58oOVdON925Q0/EUHn2QcKEW+uwABoKQUuazU4UVX+e96qsC9R2nMGW9B44puD6zV6Jb+SWJ9062wvv3nH4BPDuwcT/La8SXdmIlsKcqdsob9S5L092F6mgm2qZCoiUXMKI24jvn/hs5dhSQmHNUylEmDCKaGmB16W0kExs56LTzvJQuSjWOc2KsWag
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(366004)(136003)(346002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(55016003)(33656002)(71200400001)(6506007)(53546011)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(86362001)(38070700009)(9686003)(7696005)(38100700002)(82960400001)(26005)(122000001)(83380400001)(41300700001)(4744005)(15650500001)(5660300002)(2906002)(478600001)(8936002)(8676002)(4326008)(316002)(52536014)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2L8xXaffR3OEH43cmS2PcpVUJZ5g6Gsd3EQsCstIRTWBEYTePXFKEOjHKN1f?=
 =?us-ascii?Q?meB8qN6SrwUNbgJ4x5LX1IdvYg/1Cmo/x/VgDrMVuz3hog9Q8nc7X0Hcg/V6?=
 =?us-ascii?Q?Ccz6DfrLeGekQtC58zwh911AZXiraCeC8BVzlasgtaS1tvmZrYpu0V0f3MVe?=
 =?us-ascii?Q?dDPZ8FbT7fVim/yZQWFR0E2pEyNU9asvb5S0BgeTthx6ES+bQyp1igR3nrtD?=
 =?us-ascii?Q?6soS7cxJbgkR03XJ4VvE1ZDOMBx44sGqzUblDo/oHmj+V9TyWT0gfrdNR/28?=
 =?us-ascii?Q?ev2NXgLCrDcEeEFq3DGnepcVkMKEC/xcLJ5O3cB8Ne0G9/jHK1iBN3wxOmr8?=
 =?us-ascii?Q?Fr8NZeq9jXLwZV4Y6bpPjKj08AfmHlYEkCjH+gSbs3pJp8EdyVj8A9SV0xjv?=
 =?us-ascii?Q?Tx841DojWRZjusJ+6YjO854D9/ptXinNjqza9qelyqxPnGb474ZoVxWBOi8+?=
 =?us-ascii?Q?iI+IHorKD0U7lvWlf76ExZrhcdjLn83fQifBZTeTpkR1pKau72E79lrkLw65?=
 =?us-ascii?Q?Nv03Pzkt9JS1/sCzlVhAyR5ngFeE7Z6ZtOWt0xYpVwIE1TinNgoIftI1gv9Q?=
 =?us-ascii?Q?J3duk6PXJ8DzlV1jCyLWY6Dd4Yhsl+sLfwZiiYAocw3MtZlg6d5M/mgzV60D?=
 =?us-ascii?Q?oEBCMbHWdtaE0PlehKfuWiUMOqxrQwxFeNn3LVfw4LQTpJv4dgPo2uFwsyEn?=
 =?us-ascii?Q?VMJdslVllT/iqnhfBpkljlyNUzeZ/J8kfNLdBSPwU7DsvroYwt0kYhrfBu57?=
 =?us-ascii?Q?a3oc+S5omZhSDNKiBvhyFd3OFlGSGvzg5XqNZeH7VHlEwY68Pz/gbR/GTFIt?=
 =?us-ascii?Q?sDTxx3KcnFbL39dXup2m1sm6eHfF9U0/1cKoor5qwmC0ne+lNKwjXETTc6mR?=
 =?us-ascii?Q?lWUFmN855/T6mhfxQnmCcEP7pa9z28AmRp9RNx+DdctVqPafd+9pre8SkUr7?=
 =?us-ascii?Q?L6w//Dm0EsXofQXrk0fSTInEieJ2M+IPZ0/J9+Zhl3mZ9XT7BICUYFpx3TnH?=
 =?us-ascii?Q?+Z7PXk29bing7bNb2Z56iwfgpPtRajSsV2SwjyK7uwxYqHVPNoAOPOwsCM7y?=
 =?us-ascii?Q?aP4IeVcb1+QxJGrwzHW8SKPTOsSgOKSSEj7VD0GF7oFQ6DgQ/9Iwu9DFZf7l?=
 =?us-ascii?Q?5qTRqRmbECC9gtFIpNbwaWb+nPRwHe+qPPUingaOH/jU4NDU+VXsD6PuRHq6?=
 =?us-ascii?Q?olVXx5BQQLggLPvpZZeK1ddcX901aCGKKTQz2b4SR4eEWQlHHxNxsibdrnEq?=
 =?us-ascii?Q?Vta20I5miiUkaEXNetKirgS/AmQw2BQh8xrPqXf4Kd4UVKZwdGCEEUEVI0UP?=
 =?us-ascii?Q?a5Td0Rce17B8RPsprbpFLYTKwQ1rNDtP31WRq0JMZ89McjvMA9TdleHU4OPo?=
 =?us-ascii?Q?+XtBmFUq+3q6iAL6onY8v2zTdTJAFQ7AT1Vs89tX4zxJMa2B4eVHPKi1AuoJ?=
 =?us-ascii?Q?f5K3BuBeNBirXyyPFxzSmeqJqu5pc0zq5HF1b7ceN6HCw5noDC+KYRfMLaVH?=
 =?us-ascii?Q?2KwNnTjeIm9dZJPMPDZsdcT1xyKlOie8YyvLLN5ezypWqmInlMtyxy0RKTbU?=
 =?us-ascii?Q?CQbn2Y3/FfngcUA1PLG9qbxaMlTa8fcva+SpP9+3FSQYxTpdLQBYflu6/Uxh?=
 =?us-ascii?Q?6A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7432deef-d06f-4e5f-fa34-08dc0681d338
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2023 02:16:24.3820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dQ0rXEI6oKZ42AesD3leydkcEwfoFiaFiaAEjQwEWBMUGou3cu1nmGb8WR1RG482J0rnoOiVrdUH9G6mIMQYkbvgzDcR5toEBJJTV73G26iel238YlxLFZwGp6a9rm4p
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703643413; x=1735179413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8+oY4ZgNvZqDbyQSnzS2TLhD0D57cUdwzAu83QERzog=;
 b=MPgdyc3k2t25SWR/1+aQ03XzvFeRAHky0K3DwaysRhiFn3GFiR44z78q
 Y6GSk13Iba21ZYzKj012Qdw9RN5pxB2GNqXTKpBG5DYGg/Xq8APLUFIDr
 fMA6h0m8a/3//FqZkcJGUaYRVCixaag4bqkK1ZyQSfKzZIhvaz6lcTOJl
 TezPwbhtP34HzFRUoA3LrYpYNtDK2KMdDhb2doI+CDqC9UnsqoYjqBoAF
 jJpJyUpOysv6S+GTMwVwiSYC0L4wRDkhbtjWjTQt1O1wIthVgo/Fj5REs
 jiYLrqTxiM5/tmBmM2A07amv+GVT/Y6pIU2Z1eB8uE3fX66CjAv9YN6hX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MPgdyc3k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix
 link_down_on_close message
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of W=
ojciech Drewek
> Sent: Friday, December 15, 2023 4:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix link_down_on_clos=
e message
>
> From: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>
>
> The driver should not report an error message when for a medialess port
> the link_down_on_close flag is enabled and the physical link cannot be
> set down.
>
> Fixes: 8ac7132704f3 ("ice: Fix interface being down after reset with link=
-down-on-close flag on")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

