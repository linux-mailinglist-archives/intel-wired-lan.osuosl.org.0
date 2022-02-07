Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5774AC9CC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Feb 2022 20:48:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D3DF8177C;
	Mon,  7 Feb 2022 19:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PozqA8NLjYtP; Mon,  7 Feb 2022 19:48:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F0781765;
	Mon,  7 Feb 2022 19:48:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9DC81BF28B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 19:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C66AD400C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 19:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XB-sTnmcBp2Q for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Feb 2022 19:48:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1E31400B2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 19:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644263301; x=1675799301;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dymykzyfD1GkOq7rXvWc7QWTWUzEVAFEHx0QXlZ/hOs=;
 b=jy1J5UaRsEhtKJwOXCK04WOxGGuFHRujnIvkXEw9CVVtCFSB64VjZlFX
 Qy9FO+9ysOrLXwU1wJFBFGM8GzyVFLczP/5NYFC1PI+PpOXR7c0+eDpy3
 xRLM90DgPBPcv0AoTz4kMzs1fJmaYJoBzYLl3qzPsdmPRbzX/WM9jbvzv
 YxyE77GX5v/LfxoqsbDF4ZZ9GtQD3WyR7uqKhBSlGc3M9oOLraHzoAHDG
 uL0Pb32Gw4SYM8ElXiyW4+W2UorIN5tr4XKdCNzTc3CfvbKl5nRW0jdWN
 Tx6TrFj4ZAVFj2eFUxNoKeTVDq7eUSXAyonUW4oEo1TUAUSUhw/r4S3qs g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="236200473"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="236200473"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 11:48:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="499315696"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 07 Feb 2022 11:48:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 7 Feb 2022 11:48:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 7 Feb 2022 11:48:19 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 7 Feb 2022 11:48:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHdGuan9/sz4Kf/nOKPEH4jkXrD+Q+Uq+ofoFPwQgf/ZTBdpePWklDbkwBZuU5UQbs33z338TSxESXrE40hbRRo5zSbD2V+P4cDJfm1E15Hyv9aBLiaaW7V1rdlIAS9sXPrxEYz7C5a25oZJ7/Bvf4wkwbgqjPdrKQwRJekBph19rzWHe2PaBq+lDx+htbSxwHGjC4C2jjpLg1k/DfD79Kvzo3461U4zW9W++L3AbFIbYhyW2brjz63Wdij5Zbo76xQQcyhIxMMG1GVFXIaj7v2drkgNWSh4OV/GY0WqXo7lujIb9+dsuySaR+c7lwJ56+Cch+qiIZ7/CH0BTk5RDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dymykzyfD1GkOq7rXvWc7QWTWUzEVAFEHx0QXlZ/hOs=;
 b=G3LQNjUX/U79gRm7t3Idh076fDYZF+3d9gxuqeNzt/Ft9M56REZWFERVkassDUIxxqklxlZ5Rx6gewWk9rhiGJFd3YpnOynzl9xleTaSoM4cRPnIszbIoUzssiRv+Pc81ddIIcB7/Li8XvpJ+VjkJtHPLL5YH2z8JIm4R0GauuOsAlNTwE8MUnWaSkBWGPvlGEmqQ3KW6S6b0vIq47tAnZPQOeJT985Dnf0eHmyKQt8K2IZtMOIHnlxB4FkymZeKkA2rVxMg+1T9ORIjN8FQPn2jSDgvnFyj+KklYQY0+onVxzg37ic+TtaeZxAcyf+BmULglHBH/YQPVjGDALTdOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL0PR11MB2996.namprd11.prod.outlook.com (2603:10b6:208:76::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Mon, 7 Feb
 2022 19:48:14 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a%9]) with mapi id 15.20.4951.019; Mon, 7 Feb 2022
 19:48:14 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: fix concurrent reset and removal
 of VFs
Thread-Index: AQHYHFAENoZzyQxu506h9EwJxzfJpayIa4KAgAATD2A=
Date: Mon, 7 Feb 2022 19:48:14 +0000
Message-ID: <CO1PR11MB5089041B8D2D69D262AFF2F0D62C9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220207182329.2078272-1-jacob.e.keller@intel.com>
 <bb1dc3f7-492b-0410-1fe7-ee66e4a8a506@intel.com>
In-Reply-To: <bb1dc3f7-492b-0410-1fe7-ee66e4a8a506@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 670d4347-bd9e-48f5-1f3a-08d9ea72c75d
x-ms-traffictypediagnostic: BL0PR11MB2996:EE_
x-microsoft-antispam-prvs: <BL0PR11MB29965D86E52B62F1655482A0D62C9@BL0PR11MB2996.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6L2EpS8q+41e2C5h5GvxwuVW/bSx9EkkEc3xynffcrSkRgCpOBxAfu8yBPyXhrvV9vXtpG0WCriP0MTjsmXWcfYjg6lBirAEwU/V4cWJDHfuR4gJqQkCEjS784DW74bT85sQEWbHkKidtzoGAVW07s5sb3JzsOla08RvPo528Z1xQfv5bQQUv3erT+LdWixifwdL0V8ewqkxl3tceR1FfufgRzEwT3hB7DhPfFKaIJD1JaQlzLb3IQxw2cFBa2XISpTtGaOYPdpECZKarAd4XfUMFGuJvmiretO9Ze+Gm6dqH60B/Wf/7I0sajbP8//IQC5eB4LkmfwYSt2CmDlEAyrtyj9Ph0D6aby/H0eQSI6F9XV6LlDq1TDWvi+urvgvsCNZ36oIyvvaANI3LnmID6Io2TdCMmeS6wd/L0oE1Mj7Ug8N77ZQCuwkeB5xLWBSCmqhWkoMkq9Db3napE42HOqXF/hn3h8X5NGhUzxRoOXMAIcpNr0S8qVTlvtMg3itNMpFZRe4WWd8eDNcP7S6+9SrHk5yl7S//yZ+desv4S3uuYKJLVu2iGL5M+uGPJ6ChJewmnDKXpPcFOMucO5hwcTRWPG5bsDlbgJrxVRxYNO3dKjAl4W3i/tpZ1ln8kR+oHQyIkzN5Eg6sL+cobZ9Gsb/fsjr4F4tXesEo6rNKwJEM0TX8aY6hVIfAiCGG90vEV59dg2UHAtKiqxBHMKCbQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(110136005)(66946007)(76116006)(9686003)(38070700005)(55016003)(33656002)(316002)(508600001)(8676002)(66556008)(66476007)(66446008)(64756008)(5660300002)(8936002)(38100700002)(86362001)(122000001)(52536014)(82960400001)(26005)(53546011)(7696005)(6506007)(2906002)(186003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2I5MWFrdFlOWlJqWWp1R043Q3FPaGQxNklmRmtpKzU3QzV2cDJlNWJJQ1Yz?=
 =?utf-8?B?bXNCU2ZkcFcxTlgxc09Wc2FUcUd0VFNoZHpiWFQwRmwyaWpoWnlqS3hvaUxF?=
 =?utf-8?B?azY1ZnpXVEcwY2x2MkUybjhjaTZGbmZlbjFKS2w0OWtsakZJQzBIUlhLck00?=
 =?utf-8?B?TldtSXFkRmdUbldTYW90WTZ3VVlhQTFQbjhUYTkwNEpZK3FFb29KVm5abkhH?=
 =?utf-8?B?aHd1MmdqZEVINnhHMzlTSEdFNzlCY2NlOGwyMWNaVGlyc0R3N0hCbWY1OWRs?=
 =?utf-8?B?dHdzaS93VGNQeTZuU2Y1UjhhenYrMk9ZU0NPWnpKeE1VdFM0SC94TnhlSGFS?=
 =?utf-8?B?RkZYLzNpVVNPUjI2QXRUTmozRlpJVGo5OUc2ek5JeUFQaDFwREVnY0pMUkZW?=
 =?utf-8?B?TE84SXd4WlBpSGRwRnhhd1o2QmFaQjhhTzI3eWNSSUlsVm9xVlI2cHlFNVpL?=
 =?utf-8?B?bndYV2R2RzVRcGdpZ2xqcHdYODVSM2tBOUpQY0xuc0NmcUhsQTVGMTRXK1NR?=
 =?utf-8?B?em0wUElXM3FuVjZkRCtKZ0RyUFc3MXhVYmhVZ1pmYmI4RkFia2lyc1dFWUZC?=
 =?utf-8?B?RmhUYnBEQitseGNKTmozVVcwclFGR3lxZmpzclE4SkZvcS83dlpxQ2Ryb2JS?=
 =?utf-8?B?SGZKcytRREVqNlJqa2swT2JvdXdHQTZzeVVjZk9nbUlrRnFERC9rK2dxdUZh?=
 =?utf-8?B?dThhd011Z2JtNUs0NHhsNzhyaTRFd1JEZ3NKWllXZHZCQlBJSHRGcFA4dndr?=
 =?utf-8?B?L3dFQTU4M09ULzkxTXFvdE90Z1ZPMXZzT2xJbm9EU3Uwa0ZGbjl6LytzOThW?=
 =?utf-8?B?VmdiWXRqZmhvTmR0clV6ZjhiN1pjYzJBQlNTalpDQ0VML1FjVVhiaitBSGQ1?=
 =?utf-8?B?clFId2oxK2lENEN0M0tVc1dySlNBV0o4K2ZaVGtIbGRTdlQ0S2k4YW9MWkRF?=
 =?utf-8?B?WFpsOWFWZ0VRTDBkUFR3Wk1Rc0tqRHQ4bndtL0g1ZSt5UlJnRWJONWJSZ05L?=
 =?utf-8?B?eG82dGhtSWllWVk4QldaWHk4MEl1b1RoL09wZTRYbFY3Z1dVcEN0ZVA2Q2Vj?=
 =?utf-8?B?M2VPVmd2UUQ0MlVReUVPUlBRakJkSnRmQlFUNC8xN3RWSDM3YkM3TVIzS29I?=
 =?utf-8?B?SWF3OFFJbnJKdFM0bkh5bm1IZGkrTmd3c3ZaaSt1M3NqaHl5Vy9rSGsvUDZx?=
 =?utf-8?B?ZTg1NGJmd0lqWjVxMTdSUXhZK1A2Q0RVRXBkM2VoTENOYUdPb0ovN1BSQlBk?=
 =?utf-8?B?c1M5eWpLUWUrd3UwclhXSmZOb0hud0huK3FTWXF2akxyUWZ5OEo3UDBxOTRm?=
 =?utf-8?B?NGt6emNXYXlxZjNyelYvNFJVTWdQTjVIcWMzZG9oeHgzNXZlbVRrZTVWdVU3?=
 =?utf-8?B?T0c3TVBJcFlaeUswMXdoOHBqNXI0SDFjNWRaWTVhREhqeE5JcmNYRncyUEVT?=
 =?utf-8?B?MjZLQjBlb0dLMWVMWlFNQjM1RXRTbG5ueTMwTG1MR0ZGRDA4TVVPVnNtKzM2?=
 =?utf-8?B?OHpQQm9wbjJSMFVJNHUrTWZjS3dtV1hncjJ6ejZjL0lVRlhmR3FFWlR2dWkw?=
 =?utf-8?B?ckxDSGFKTG04THVHRml0bm1LTi8zSkVQVWF4ZGd5aUtveXdqcXhTSENLeElU?=
 =?utf-8?B?Y3dkRFcraU5XQzZEbzlneXBsOEpYcExaU2Q3YVJrZVJYV0hpdExxSHRiY2pB?=
 =?utf-8?B?b3htY2xJa0JDUUx6RmNhMkFVR0k0Q3loQUVvVG0yZVJuSlhVa2loT2lIczRY?=
 =?utf-8?B?Z1QrRnFSeUhORHg4QkZaUzhoOThpYnJQNUxTSGdnUWxSOXFFYzdPTjRlYjlC?=
 =?utf-8?B?Vk1wNXMwcUQrQUFYdlFNVzhRRW1oOFlIQmtKNDJZYzVoSXJvbWlNaVdUMGtF?=
 =?utf-8?B?WDdSOHVqQnl3RFliUmo0R3RSRXh0RFlLdmlkUmRrdDlzdFVqbUREUXI3T2NC?=
 =?utf-8?B?Yzhlb21KMi9pem5XOXJUdE1QYkpNcU9kMVV4MThPMC9IcjVuUjQ0MjN3d2Rq?=
 =?utf-8?B?czZpUVEwUkVabjgzbzZQdXNJMnZ1aS8rMjlBWWVEeEtLQ2YvYXdLN1BhK2pM?=
 =?utf-8?B?S0k2NzRrQmg5OXc3T1F3M2xhRmNETUpwZW91OFB0ZTFqZXhsS1hQQTNVdnBD?=
 =?utf-8?B?NVBxZyttVERwZVVvRy96U0szQkc2dURPSWVocWNxRkQxNHZkeFRHUThXTnYr?=
 =?utf-8?B?THFVWXB3dTdjMkpEN3FneVczUkZtYkdLVVhwR0UxRWsrbDJmR1JUdVdDQXgx?=
 =?utf-8?B?Ykp2ZXFWaVlJdFYwOVB6eUdzV1FRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 670d4347-bd9e-48f5-1f3a-08d9ea72c75d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 19:48:14.0794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nlrb4oCxCXBpCqNshTyhh8JL02vquZ7ofx65c02LZjhOJDa/eGR1UPu22cD8e49JVjtS8nM6u7jtTm2gwEfoJJt/+YJJtJdCl0JLJst2QyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2996
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix concurrent reset and removal
 of VFs
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
> From: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Sent: Monday, February 07, 2022 10:40 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>
> Subject: Re: [Intel-wired-lan] [PATCH] ice: fix concurrent reset and removal of VFs
> 
> On 2/7/2022 10:23 AM, Jacob Keller wrote:
> > Commit c503e63200c6 ("ice: Stop processing VF messages during teardown")
> > introduced a driver state flag, ICE_VF_DEINIT_IN_PROGRESS, which is
> > intended to prevent some issues with concurrently handling messages from
> > VFs while tearing down the VFs.
> >
> > This change was motivated by crashes caused while tearing down and
> > bringing up VFs in rapid succession.
> >
> > It turns out that the fix actually introduces issues with the VF driver
> > caused because the PF no longer responds to any messages sent by the VF
> > during its .remove routine. This results in the VF potentially removing
> > its DMA memory before the PF has shut down the device queues.
> >
> > Additionally, the fix doesn't actually resolve concurrency issues within
> > the ice driver. It is possible for a VF to initiate a reset just prior
> > to the ice driver removing VFs. This can result in the remove task
> > concurrently operating while the VF is being reset. This results in
> > similar memory corruption and panics purportedly fixed by that commit.
> >
> > Fix this concurrency at its root by protecting both the reset and
> > removal flows using the existing VF cfg_lock. This ensures that we
> > cannot remove the VF while any outstanding critical tasks such as a
> > virtchnl message or a reset are occurring.
> >
> > This locking change also fixes the root cause originally fixed by commit
> > c503e63200c6 ("ice: Stop processing VF messages during teardown"), so we
> > can simply revert it.
> >
> > Note that I kept these two changes together because simply reverting the
> > original commit alone would leave the driver vulnerable to worse race
> > conditions.
> >
> > Fixes: c503e63200c6 ("ice: Stop processing VF messages during teardown")
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Tree target (net or net-next) wasn't specified in title, since this is a
> fix maybe it should be targeted to net?
> 

Oh. Oops. Yes this should have been [net PATCH]

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
