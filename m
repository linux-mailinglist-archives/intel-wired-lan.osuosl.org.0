Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0559A2CA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 19:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E48BD41D09;
	Fri, 19 Aug 2022 17:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E48BD41D09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660929079;
	bh=ivGLbox+j8G8Kxmchp3rX2ovdCukkP5unmA9ErIp7u0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LI1lb9AVdYH8/EnjiLfLrgGcBi/AoE5CyAmoAK4ZoEzESoat8woqdxh7euekMfb2U
	 Egtzhrj/BS+Ow0AICJh9TB2xcO/Bys/f3uwRbya1CezSb04xDBlXAL42n1BZnEh0YW
	 ja6TJVd9N/qi1mKCIL+R3XcFbFxRt7eZlY/YUqOeO4p+CQpZenph/m3Ud9QmUgprRU
	 GdYySqd6NuurXV1l8yW+UOEVD5Iy+JhrO2xpThAHVUlmB2hBX3IXJ1chgms+A1pQGG
	 3SlgMePpYrrmzhAsRdCfk9L9uer0LdtLn6LAPo9qvuecnZyRgiwOv5fUcl9aVIsOEU
	 UOeyokTtjx39A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vfIPBLmEbheR; Fri, 19 Aug 2022 17:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A743400A2;
	Fri, 19 Aug 2022 17:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A743400A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 212F41BF366
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAF21842EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAF21842EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFVR3Dy4Xcyl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 17:11:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0951842E7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0951842E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:11:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="294334071"
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="294334071"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 10:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="668673118"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2022 10:11:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 10:11:09 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 10:11:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 10:11:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 10:11:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cr5q11rptG+H+8pU81wSLDN7mh2yqSvfy1Ae/DRtUjoDo2L0LVuMgPAkY6NEEOBkr/xJFmsHtBl2zKdAH80X5troFery3Ec6PQsn843N85CGijZnwej3vUhuO6McZdtCZmrUz5+KVDiaHgb2Fbf9GwDgk2s66QJZff+eF8Le5qfWFcEAZ2npzMKRgmZIyLoPCQe32/ppUzUt0SmQV0aoh4aIM98mXdNVr34POBp9U3qgqpK72e1PYZZCsTG7szjom1JGnUP7nNMvZheHsYt/ia2lXLhGXoy06dmrEnANB443wBqnPiP7x3PpFuWDLl+bJP7gB1oYilLUGh7RYEUxeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=to6BxavW5Nt5fQeGHe5fUonOb2REG9aBS/NP7/uGOts=;
 b=MzoViflsMauN3JT3z3JBtu6BBgq8PtHn2WBAIVbYjZBhzbM0fQCOw+fgxUinurh5vNM4Mc3NHQlQB1Vxim5zvOyv1SzuymAs8QAgGADvYpgyFJKD4aXLvV2r3dEhfn4RgRR/bEQPmLVGjMEK9f5pSHoadp6FO8QVp/3VKA7cC/+hQK7yHWT74dKVuMaHLqpNb7xKXu82FzgV8Nn7FE9srKILUJKw2jkAut8eEauBuVtlVrEcxdWbyVaTbBzWXtkExaRuzKhhiadpljy10Xdyno4Ufwmocmg6zViqOUrehbzcmfOHBJG+LbdA5Svveo3+rmZbQp5zEbQXn96R0XaOhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB4048.namprd11.prod.outlook.com (2603:10b6:208:153::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Fri, 19 Aug
 2022 17:11:04 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.018; Fri, 19 Aug 2022
 17:11:04 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: Add 'Execute
 Pending LLDP MIB' Admin Queue command
Thread-Index: AQHYrj4ntYnCB55lIEuMgoHkgnimea22gL1A
Date: Fri, 19 Aug 2022 17:11:03 +0000
Message-ID: <BYAPR11MB3367327B7EE286EEF3D43A42FC6C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
 <20220812112422.1083684-2-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220812112422.1083684-2-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0889b8aa-dac2-487d-a86e-08da8205cc43
x-ms-traffictypediagnostic: MN2PR11MB4048:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EgP3vVOHHcZoeJN6pyimPJuDZ5wG4cpOH0OGZRTSOEBE4pM2544LauXUcRzi+Llqyw3z72Ziw/AX2xliKUC/TPOJl5P/vHLNQVmYh8P7gW/Iw/7renF4ZQPGrXeAl6YFp5Hiq9xVKzdPWhdzmCAud3+qW39k43bBDJK+OeFk+49QHmXSgZBj++JR7ZiIgcteNvF7BLWPEeUjY0K1bqb6vXbEI4yZ9EYIdC5ormzF+2JYtFIduC1B6899TSwyfR2jayztor4EmCISqA37W3akgxPJvSv/Z9CuxLG0Bg8Q4huf5RFAwkt4DtvCfMbHV1WmpHoNi/PyTVoJNT8mPvXvcyTaaZWsGuV4y0I+l6P7K3+5xnk6jk11xKf2lSF++jefGRlZJGrvWpwBEN6MamVHbNJKFt9A9S+1er83//uEcY1/lHlWX6mY34n5UyBc756kPPGvG59Xg4Es35jHCDGGxGsEwn2O5s59Xx668z38qz07dlqbKMqPMhmd/lUp8mdpb2lTFCw2FQorJOuIxhL9+dpvI/1tzCe8/q7dio1o6aZlylVY9AcGJd+S2kzrzzrhm1UgJhqNt3p5jObUDnUh5bExUS871nLkQwLoHsh8cVM9FvitiS2Iy93fBM1rqy4DGRnPnw6f3SanmP0sTI3tB/eL/3ss6XdeYIVJc9CPpGLhQWMVhoQgGNGWVDBUei4bA9FiUPKF6egKu/hUjlvN9nxd+cVUs2khCyYC8iE69pUnQ32csK898hHSLd1Et3Ma2NIOwZlJO35nA9dS87H2jQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(39860400002)(366004)(396003)(86362001)(478600001)(71200400001)(55016003)(2906002)(33656002)(110136005)(38070700005)(54906003)(107886003)(316002)(41300700001)(82960400001)(7696005)(53546011)(55236004)(26005)(186003)(9686003)(52536014)(6506007)(5660300002)(4326008)(8676002)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(8936002)(122000001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RFLG5InlS4VciiNf3V2wRGT3FL+s9qTSkVAQDqy2qcfpeWWN32dnF7NSzZMb?=
 =?us-ascii?Q?7V0jf2UnWrWmZfvsoLi3f3FRsHm60/7i107K6T9/nieFROaneNakh/f8cYO/?=
 =?us-ascii?Q?Jx9tej+no5AwCc412VYl6NQnk0YCeo0LtCpDFjMfGz0Pb+ovVbofpBl4ARV3?=
 =?us-ascii?Q?9H4dIPH8uRaMFSh8oGFuwr0lLRH2Jlh9vhvAtjWrqy4m3kMcQ90PBLULhvwC?=
 =?us-ascii?Q?n81aC5bRcYvrdORNcINUhCqYRPFKX39KONskpE324CleWe2ntD6IN4JeiagX?=
 =?us-ascii?Q?WQG4Klp8tyLeDjq9y4eB8hXmzUTMAEqSmyy54kqFcTLh/D/Lnd7cRrZUhzCs?=
 =?us-ascii?Q?HllJdOR+O47iiFCocIfW+dHNc2VHFPaT9nr0sbroDue15+gr0Y3Gl3E39/o8?=
 =?us-ascii?Q?ALwahCqxdfPcZTYXlztSxJaHoyg61TU2RsOkI8KKw9A7irVEhsdsI4eRJ9rR?=
 =?us-ascii?Q?HPJx/zvVqqKWf4lRFZEeeQSCzRMMx5qjIGUQvShgDRsGYA0oqez8f0wzXsAy?=
 =?us-ascii?Q?Jkb+Dk9uwuvJ0hPm+RgqUKFxNZNDjqrrXHRFiyi5ADQUjw8ojqOtb5zYKV11?=
 =?us-ascii?Q?A7n1DY64GkqgXJgb6/IWknuvDjqnMt9JXZoXl5k5WztkAmqIjTTIQsB61iGI?=
 =?us-ascii?Q?62yHHvmAYj70hBgPvEI8VYlUhVZk3eq0NLxj50l7aurlrkUW0zd/yAel34cy?=
 =?us-ascii?Q?EM/R9Mym6y3qKrqY0bicOODscJGwFMFy3s5eXpqGvuYbnkpZbb0KNfHiooxa?=
 =?us-ascii?Q?BHCRThyxuxjvfavBLaL6goclJ06wL569L2z7M3I3I6ZvB9XXhwv9SESkwAht?=
 =?us-ascii?Q?avDQ0rjosy56MdovvfSLg/5vjaYNepgEA4T5DYOY9mE85F9Kf4hB1tG1bLic?=
 =?us-ascii?Q?tMIiS/+i5e4uYM/tz6Ues3IUajuULVMZj+TquNF0q4bdRBvMiZ3DtPxmZQEw?=
 =?us-ascii?Q?DIjwUgspu2oenyY5zPwX9TrjPkSFqAbR25rkvb3ZTHyUyye97HpEQR4j7Bwz?=
 =?us-ascii?Q?B0wWWL1j6h9qXOl7+KbnJn3EDpuTkzlUCVdPV2vnmcy7yupiGosuBUYJiHs7?=
 =?us-ascii?Q?CVGvvxZ6HCo/9/QbYPbRAwGlhY/zTSF/188BDuweaTTgFjSZehIKo8afsxxF?=
 =?us-ascii?Q?Ow8mx4slShqvNdF/+Vf/Ml3mJiNVYJU+OppuSH+r9e3IZEWngL3LduIp0HNa?=
 =?us-ascii?Q?vHDFUVsrI5akIHQy2Wxmm+idR9jIntsCqaxs9ecXHQqVtgoo7TtYmZhUm48M?=
 =?us-ascii?Q?NJ2EFn2zODDFq4LD+cgg9+tlY+PRMauiHFQFRAE0ocFU0sbnPf612YZUek82?=
 =?us-ascii?Q?/7lHyzDOhfmk6MowTf9bj22IzY7hWnVwNlWpRuL35U1DT3qp+bU0UpSYTq2r?=
 =?us-ascii?Q?4RIESSDJlNKSbVTD43qc+HbUJsW3kzW3Hfh8B+01m+bEsxF4bOmlNbTBdD6s?=
 =?us-ascii?Q?+dRFc1oj6Udqw6sXgksMW9+x6yXp8QaqLMjB2hW3sRqRHhyCzYhJM0d2C7o2?=
 =?us-ascii?Q?w5c8afr838E+cbmB4Nyu2SDoHGfQxatijQoBOw4gjwPPcuwsTBW1EFqovWEN?=
 =?us-ascii?Q?Hsb+v1aVS7KBdd6wGX+KiiWbYaxpHLLOKUYKadLt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0889b8aa-dac2-487d-a86e-08da8205cc43
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 17:11:03.9154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R14AJoONROZ2KqiC4VMvCacS1S59jK1a+3YjcfCM0e6Qy2Kg7V3V85N7oNB8dp+hwSId48zYQYXgGhb0fmQH4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4048
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660929070; x=1692465070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Svy+00sMYLOBXQbzaJEGgNglsxvsuMEdzJwWVkGEjkY=;
 b=J2REMcTBphctEziku39knOTGfMs1/KM+sCJ3XoBIkgfim42c6G3PDEmc
 cpY1iOcDEDm5AbefTKrGCR6mNjYlZnkTdwKlpBl+1BF9xf5x2rFhMpsiI
 3C+Rx8AVHT5OYdVkmHptm4f2R6Bsph2T+S34K5pOB7Im7esQb5hpwm4YB
 d9+GHLlpkmGtxLSMS1bz7DdWF21AwwnMKaSWNVoldB2182DXD/TR+UfE6
 7mWU872dagGZWfbslzf5QXM9NMMfkOg4dVsrQvOLgDDvIUbt+xBHie7zT
 DG2rO+b/J/tgHjFiAG9+F3WL2RM9JbMFExkNp7+acxanXNNCCyKQsodz/
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J2REMcTB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: Add 'Execute
 Pending LLDP MIB' Admin Queue command
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
Cc: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>, "Sornek,
 Karen" <karen.sornek@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Friday, August 12, 2022 4:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>; Sornek, Karen
> <karen.sornek@intel.com>; Gerasymenko, Anatolii
> <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: Add 'Execute Pending
> LLDP MIB' Admin Queue command
> 
> From: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>
> 
> In DCB Willing Mode (FW managed LLDP), when the link partner changes
> configuration which requires fewer TCs, the TCs that are no longer needed
> are suspended by EMP FW, removed, and never resumed. This occurs
> before a MIB change event is indicated to SW. The permanent suspension
> and removal of these TC nodes in the scheduler prevents RDMA from being
> able to destroy QPs associated with this TC, requiring a CORE reset to
> recover.
> 
> A new DCBX configuration change flow is defined to allow SW driver and
> other SW components (RDMA) to properly adjust to the configuration
> changes before they are taking effect in HW. This flow includes a two-way
> handshake between EMP FW<->LAN SW<->RDMA SW.
> 
> List of changes:
> - Add 'Execute Pending LLDP MIB' AQC.
> - Add 'Pending Event Enable' bit.
> - Add additional logic to ignore Pending Event Enable' request
>   while 'LLDP MIB Chnage' event is disabled.
> - Add 'Execute Pending LLDP MIB' AQC sending function to FW,
>   which is needed to take place MIB Event change.
> 
> Signed-off-by: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>
> Co-developed-by: Karen Sornek <karen.sornek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h    | 18 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_common.c    | 13 +++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_dcb.c       |  3 +++
>  4 files changed, 33 insertions(+), 2 deletions(-)
> 

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
