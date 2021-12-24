Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE33847F094
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Dec 2021 19:34:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5455D404A4;
	Fri, 24 Dec 2021 18:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uYRxsgb-UbSp; Fri, 24 Dec 2021 18:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE42F40497;
	Fri, 24 Dec 2021 18:34:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB2AC1BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9294940497
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L2q8jRJ4dGK7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Dec 2021 18:33:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 492524048F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640370837; x=1671906837;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EHHcO4tNyxJ+HqbQovzqEIdjEGcc7LFgESPsJMRHSjE=;
 b=R0fcOofFGZS7D8IJXcoVgWpSSV/AnPx7Xtzt++7Sljj20PNZv0O0lyv0
 32Yc3fPPqPzRGLn+vqDFUQtvikXhB9Cqk5Bnt5BWX2GrNbovqHstAuDxH
 kMDeZbAZwDdcLRLRjEyk8RL7zsI/aIBW83gFZimf39KX2/SVYcY5C0P+Y
 qs0YWOFT0fm+31iO+ugUz+AjBsituyQ9yaVfx2gK6gMDJQZGo5w51PX/9
 fXH2L7dbwTS65iKQQx7Lihi5oUEKevqDb/yvFoBMTkDIBKePPBCacMQ+Q
 Jv2QvGlTupyXHLrHA4fyIJ5mpfre1KzddR2KgWq4aX5ml3a7+W45L/4KJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10208"; a="239783069"
X-IronPort-AV: E=Sophos;i="5.88,233,1635231600"; d="scan'208";a="239783069"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 10:33:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,233,1635231600"; d="scan'208";a="685718706"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 24 Dec 2021 10:33:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 10:33:55 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 10:33:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 24 Dec 2021 10:33:54 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 24 Dec 2021 10:33:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UfIQP3K3RuwI+atUfCgdrOaolDg9cmmzlIp0fOeRF6F4MWPqlOVB21ZLTcH+ICJFeBqxh88c+uaPZMjUhpS/CfB7vEzlETPcxQ40kA6g0pHKXIbY0gxFoP2Lly15b/Uk9c16HpQNcK5jltbzMVCaEsY5P7Air3XSDOAB8JuEWqafWbTP/Bw7LGZgTyQqVAmCZVgDvmFbrkUOlgcA12jkBVk0wjQEGdx0blbPZ7uk+9llqwNOYTUwuy3zlY0O0KJnEsdsnLih0BjjDih6x1hdUx7uDWcYQOrOJwbG9TsVFSGrpL3Gli5oaomFpdRwiqMx4nkOjHgUVvEkuOIRmFuL/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKHy71N1xVZaYBAGszegOVeZlwIEc4Qa8wGjOzEj5zs=;
 b=Of8xpYrvMcxDCt5DEWo3meFUAPtooILFULQKmEB6e9IMJ5OeZaWa7xx9AOvLOZcqnHCcue5CcNLorOxzfNq2MWcuZaa+5s807upO2xdZ7Wwnql0/XvMGPlLTHKICXpnSmwbsVLhzuHuN9R/FrblrAV1cVTFcdrrkEKl6ustYkkL4XrIIeAuMwzIfNc5XQdRxTROIw75x0lQY+pdOjQ25Xf+xK/tDW9kON65FTSXUL1ISnCQ/7XtQJBDdtWWM26Duh6EV0+lwzzVNndgaFLs4kuCTQ+CT9lyyfpER0HyGvazdwO/2x7rKdWsfBpvjJTLgNP2mWzWNWvynbpfM9fUfPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Fri, 24 Dec
 2021 18:33:48 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4823.021; Fri, 24 Dec 2021
 18:33:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 08/14] ice: Add
 outer_vlan_ops and VSI specific VLAN ops implementations
Thread-Index: AQHX55t/9cDxKWMpJUSYUp/sTZyb96xCGezA
Date: Fri, 24 Dec 2021 18:33:47 +0000
Message-ID: <BYAPR11MB33675D6D44105A244A17F5B4FC7F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-8-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2784ddf-8f75-4221-0c12-08d9c70becb6
x-ms-traffictypediagnostic: SJ0PR11MB4861:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB4861AFCAA4E33C9508D67E07FC7F9@SJ0PR11MB4861.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9uFoLJkYyB2qObhlSZYcSKXzbGJ6BDKdVSX4zSw/otqifrO8NnUHQvF3oTh2V2haye5vQ8YDAETiWPgIhALSGlSH3YKxqmPOO34XUB6OfpdE71Xv5dzQOyn/yzrkdNObpcKwifPr6K/1uIXckSqiZhIVpuaYJEZc3FYBMb0DYnDITE/DPb4jW0HfouE5OX2mPEdEeccG7Fa7ov1b9C5f3SZgpOB5/4REHOqCYRWPX6oq2NADFlKvn/eFM8AqsPLg+woNwgmPy/ST4dKDmJzUz4DS2UxLRBsGNwruIZnQrXkLdR00bqUKpbDmCObCJ0EYFNIO/uddOn+faiRQP8deaVlGERL8hGzA+acFhc9Tu9HmgAJvdDlMa8CsCKoY4tk8BdqpBV8RUhCpxXbG/GHQqrNQys5cupzVMhFMMrk7UZwhqi5fcgpRdMFlqTxPS7wUTC4RY+bGJEdavvpSZJ8wKUgQALyIEMfcZ7C6hygpv/gZtDXBNbCllOiWfC6xYej4ORkVwVhxfJfgAfvYXck+qvy7Y86j6Fm9WhBbHe4yb0SaIvkigeXG68C2DEbGF0c6og5F0g6PhffmKSBEdSwXymPq0PQrBhEFyj99s3Q/F5iN1/yYbNyl81sNPLl39S217sMOk0kz0u/D06Ka7WAzP3mTnMCGIcvzYNXhKfj0ZdkN2bEAOrIpDEgzOtV7+PRfjaUfLAYKjDujL6nL4iqJ0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(66946007)(71200400001)(9686003)(66556008)(64756008)(66446008)(66476007)(6506007)(5660300002)(186003)(76116006)(26005)(53546011)(7696005)(83380400001)(8936002)(508600001)(8676002)(110136005)(82960400001)(122000001)(38070700005)(33656002)(316002)(86362001)(2906002)(55016003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WNUR8ApeJXqCmCPi0RDOAPojdlU3U4cuP7pY1EVNGfjwt8AZQvQVhGngB382?=
 =?us-ascii?Q?dAtlQmh+dRnYRch/PyTzru7iFh43vlDzfbsQ8FzVVvXGE/IEXY4WpgOYX1dy?=
 =?us-ascii?Q?FZWS/13lF1IWE8C4C4AQT8j3yCXfyDohhzzmi7kyPrB64xkZ4R9aaERQ9rYv?=
 =?us-ascii?Q?ddTtCCzbWyo/VzLhJKzHgYMxnXjZC7xoTz5by0FddWcjdtFFKJs+B1zG0LLt?=
 =?us-ascii?Q?BrcMyOXzMfqsJz2NtJHqnk1lXmSFWF21BNqjyVxvQbgLbLEeSsNyaeR46LrF?=
 =?us-ascii?Q?WMIMvjZpaZ0dxoBghrDQnFztv5so3WEDt3LFLPEgFH9esKGbCPUUpk+8N6wA?=
 =?us-ascii?Q?GmWLuT5RwAZ0Fm3gYHPNpap0aeF2B+zo3/FQJZBo1VXwIjCsV3M9b0szyhBf?=
 =?us-ascii?Q?QtDPN0manLVV97s5R/B4n6JtXFJeslYi09EW1PD1zOQQ7g6GmXhL2IKCsAoG?=
 =?us-ascii?Q?dzL+Qd21l00V6jDbZdWHrOPrcpuTfmTyg1KA2ZONagIU0F0RuHrH+zmK8v1k?=
 =?us-ascii?Q?FcnPSb7LpZuJr/2IjWQLf0l2xUeV2nV/FKvWv77o5Rebu50q331FExL0eTzJ?=
 =?us-ascii?Q?7OP7zQuBhixJeMVSzxqKNNi+FvdDDsRKVJ1eQrQaZSmwWfqhLPmoivi7I6aR?=
 =?us-ascii?Q?W+CPRj2D+ziLoiCXEBgEkzJNJwZq27kiuJnQXwQmPlp/GGAHPdAFuW/8Rff8?=
 =?us-ascii?Q?oahjdV9sZTu8phR7jDI0piVQf8aQJvseAwXIdDf9SgbOlAyb5sYyJA9OU7k+?=
 =?us-ascii?Q?8D3QfQC0LP4thKaOb1i5X0UgGkYcKXbx+JkbrDG/d9XMoNJOmvEDLb6C5U/W?=
 =?us-ascii?Q?mdcglTyvtK4txN6L+fM3/U+/Kr+7g2hndjqWnn6IABDNV+dgfA3vB8qffAiF?=
 =?us-ascii?Q?UY3fIPuWTE8bTQ4rt67J2vdCN0NVsFo+Wy9i2KiDWvCMe8ChtzxyRhTH7FNU?=
 =?us-ascii?Q?lQ7IykcNI3E/QZf27/SeQULMwWpwTZ8tvBwVXt93XAWXma6Lnd2MnQd0JRb/?=
 =?us-ascii?Q?SH2yOAHGWncygjL3InQ2iDF8l7HITbvxfn9vQtf29CpMY3dxxIX1IBuwkPSe?=
 =?us-ascii?Q?boZcmm7MqSsIlYiq6gb3JU0fbX3jcaYgdk50TqIA7vGF7pOar0dBiKWerC/4?=
 =?us-ascii?Q?AfDBftvZxtTq73OIxc1HPW0FtbhYaDf0NH93MZ/vNvlboT0nY43L4VcEkdhG?=
 =?us-ascii?Q?y8h9kNcZOoSz1FlBvXS26LIeBmmjfKXt88+qW6lOWpp/8uapH/3c+2cpBTVE?=
 =?us-ascii?Q?QNLPXVO2njUFStaEkTD2VOdv26s1H6+PzxItinGYoC5jgFxcThxgO87tuIMN?=
 =?us-ascii?Q?5v7+3Ou2wbyk+hpA4VnFUAU41r2857skyekGzoR6ckOPIq7e2oyAdA6jikWQ?=
 =?us-ascii?Q?DAlQOw/IKQDxgWUsYFg7AElE5vu2SZL3yyi0SfuAVg7YQEto29b6kg1L6H57?=
 =?us-ascii?Q?lauig+B4llxMj7dxx33Ad97fgtInRSLNo5r0bnUQTfIIDXK/U0ImOj2eKXu5?=
 =?us-ascii?Q?94c5l15xWdXIDQup3/tkm+AnUMZi5B67Adh/BZh5/Z+TePwyz3P060t4e2wF?=
 =?us-ascii?Q?Fr5/L3xQGfiFFKCh6qBeA4ux69dhIfd1FO3TMm/NORO2SAZBswenL4nINDcG?=
 =?us-ascii?Q?Jw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2784ddf-8f75-4221-0c12-08d9c70becb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2021 18:33:47.7369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dMVrUBgpDoE4TuAS3imjdWWGRHwzFq7rDSHIICmaFGcEwFI6d4BZ3v4i1JOzFiW/SA1S86pGiiXt3ILnfOIm2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 08/14] ice: Add
 outer_vlan_ops and VSI specific VLAN ops implementations
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 08/14] ice: Add outer_vlan_ops
> and VSI specific VLAN ops implementations
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Add a new outer_vlan_ops member to the ice_vsi structure as outer VLAN
> ops are only available when the device is in Double VLAN Mode (DVM).
> Depending on the VSI type, the requirements for what operations to
> use/allow differ.
> 
> By default all VSI's have unsupported inner and outer VSI VLAN ops. This
> implementation was chosen to prevent unexpected crashes due to null
> pointer dereferences. Instead, if a VSI calls an unsupported op, it will
> just return -EOPNOTSUPP.
> 
> Add implementations to support modifying outer VLAN fields for VSI
> context. This includes the ability to modify VLAN stripping, insertion,
> and the port VLAN based on the outer VLAN handling fields of the VSI
> context.
> 
> These functions should only ever be used if DVM is enabled because that
> means the firmware supports the outer VLAN fields in the VSI context. If
> the device is in DVM, then always use the outer_vlan_ops, else use the
> vlan_ops since the device is in Single VLAN Mode (SVM).
> 
> Also, move adding the untagged VLAN 0 filter from ice_vsi_setup() to
> ice_vsi_vlan_setup() as the latter function is specific to the PF and
> all other VSI types that need an untagged VLAN 0 filter already do this
> in their specific flows. Without this change, Flow Director is failing
> to initialize because it does not implement any VSI VLAN ops.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   5 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 111 +++++-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |  60 +--
>  .../ethernet/intel/ice/ice_pf_vsi_vlan_ops.c  |  37 ++
>  .../ethernet/intel/ice/ice_pf_vsi_vlan_ops.h  |  13 +
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  72 ++++
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |  16 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 101 +++--
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   6 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 344 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |   6 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c | 107 +++++-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |   6 +
>  16 files changed, 808 insertions(+), 85 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_pf_vsi_vlan_ops.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_pf_vsi_vlan_ops.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
