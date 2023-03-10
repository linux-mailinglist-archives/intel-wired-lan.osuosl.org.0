Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AF76B4000
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 240564040D;
	Fri, 10 Mar 2023 13:15:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 240564040D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454140;
	bh=Fl1N66iawNk37WqRb5h3tBg2pVVdtSuTF9bjNtK4jUw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0T866Bmk9huQRq4ZdeEMX2cTjYnRIasZzRjjSqk13IyNfiWaMjfzkNl8OecUcWOOE
	 UfAAj3hRJYeAFXxgA6LwzAmZ5mMhphFcR8fxv70eSamXONae9XTpNjEwZRvTkEmTjG
	 Q0oswixxNL/c7o2bfnmdvQTJXznB4PjuPWGcKpP81MFdUokkTSKTdIAEp+qrOAaBlB
	 pzaEn0MXoDlKMsDzDHYc+3S38qJOSgOaTPj1GsWPYVwLxNtTsF1En+gdhk/jgPbecl
	 HSWMnKNe9MFEpIVI0/c/7M5rhP46K9qvyML41A1ZfrFBVAeoS5zS5voX3V+F8pDauy
	 KTmTkFLk7ZnKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AjS689iIOgIy; Fri, 10 Mar 2023 13:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5104040123;
	Fri, 10 Mar 2023 13:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5104040123
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A93401BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 833994040D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 833994040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d4hpRLIbJcuO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:15:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DFB140123
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7DFB140123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="334199880"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="334199880"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:15:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="677805177"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="677805177"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 10 Mar 2023 05:15:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:15:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:15:30 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:15:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M8JRR08cPmSCL7c1kXTmoUoDV1HixdZt7fLlqmUvCt4woufJCjOLgCPemNTB2T+2PVN3DimnfzherhHxztBgrDSTR3w475h7EgQNhhLTaiZjeF8roTlCwxasHRv+xPE1eH3kmRdgDbsNvcPdDHKjFvb8mPSNBNOPFoddF8TM1hxNHQbugXzASpIwNm9Wp1QEoxwgVIKvrVSzBeMoj1X4WwgMKf+sLk5VwwXooMf/z24OlO11KpBb5UBgsfRZNzwVr/VeTATneNIqLrj3qp66qIZgijxLLHMtp9Nqhj9WUbmFv4AfjZWn4gGZsHM2ll9MWkTIu+gC7Gw7ixDLEH/rcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bzwriwWBoUE7OHaJ61p0rZhTvbNjWFpwpo49E3q1lAw=;
 b=RjXjn4y/zVqpUhUzfoOUS06wBPUEAJBpGvRdBX+sOb/QUbBe4poCp8mcDkKRlmjJ3AvxhL4NTTbzOkQ5CeBeRH/CCu8B4lEh1rLnU5ETebTKmyxreFPxTe7gw9+4B+mheMlKt9paO+d+AiWwYnL1mKV5NRchf3aeYy70bd/xwuD65wSH9VcSB+qxFCIwXlh6HSe8a6KoxaDboq8QzIAzqmY6q5afpPaSvzm1vBtAO61yeumcfH+vAvbsY5EEnjgufZgJdfwjfzO+162vjkgvsMPUVH+xrDsVykTZzyA+j6N3+PX8TSojgJ+WnIsadKd0Ys+dHU1wjcpQK9Cq3ULFmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:15:28 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:15:28 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 02/14] ice: convert
 ice_mbx_clear_malvf to void and use WARN
Thread-Index: AQHZRuGKIm6Q+a5NXE6N5gPivNfsS670FusQ
Date: Fri, 10 Mar 2023 13:15:28 +0000
Message-ID: <CY8PR11MB736411712BF22426342CA841E6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-3-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: d70f82bb-81ea-4c5e-96e2-08db216984b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4GcbM71hw7xbqTXMCfgZOvWZv8Ly/SUPRwfKtvPkW8ohGotyB2QAcKiWJBbvxjomF8dgDbLb6tPq97jl9FDSiaAk+SsAhRsdX2qz12YDHZrNCqan9rWgL3j3iXFjOToXD+WUlffcSA8DrqaJc+pi/rq2hFbCMl7TDkqLZ6/FKdH9Y57afTK4HzrKtOaZyhATQYlCY4MQ6LVsBycbFBM5pUd0aicy1udFb/0dmH+WoQJOXtjWFBH7E+xr/GfJoo/HZT16qxHBhaq+91UgFiUCO3J36oW8LFNYEaCcenVhkO/hDM0WdT1GTrpuvwyFW4FLUQE2qrSGWlVMgHij8cDZYAgaVxd2LudKi7NgENFvMNL4oCPzdIRhjPhCSuxdz9gxoq2w2DRe+XpcVQe3Hw4Vj52BApkwa5h+TqF7AlLEt98yZP//rV2lzh6AsSKANaY04FLW3jxUP1+Y5ZkttAEMLn241kyStJt9B5Tev/jkeYN5BRH5V78NZPWxtCGl1a6UB6mYfYhEzHm8fzeu0uR/nfQr7nx1zQExXnbWOlQejfB6dQ14Ad7YT/aK5hHlKVVUntMiZxRzm3XR2+SoxMlyGsHeLRdP6vjcGPSU8gyAy0jSC8J0xLc/5xZE/+DQ5JkHYhd7AIJ03mdMzWSZifej4Cowj4pKdcX/t0Fvey07OQL9xIdE/TiM1c215OmJeyByqnkWhksnB5G/zWRwrh+Zcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Yn/Erl5EgtY33LKm5+3w/1IoMHn/bXlyWpBP4Q7m2+ZGeO7Q1U1gOG1tWz?=
 =?iso-8859-2?Q?jbawhmZq4fnC0dHtfoA6WeOc9Fup0C3QCLAg2utpEEsORfUv5/7ehkOgDy?=
 =?iso-8859-2?Q?21Hi0PXNvI87T9lPJw0EfERfIAeXWgag73GjgYavH56LBIN9nFlUJtHbY6?=
 =?iso-8859-2?Q?RU+7sIoh5XcWTx6Y9XxqEh7I5Hcz6Qq36b81hT0miMB9o3zJnrNLuTUaqQ?=
 =?iso-8859-2?Q?WhKXetvy47bJ5hc4n2VdaXcR6UbLhFfhLt1g1/I9vSz9OCWDnzYLEsTmEv?=
 =?iso-8859-2?Q?TX7F1qXrCBrvqMiiM4dQpWCAdi1QLaJ0HkC8e6b/sZ3V/5QqLlFesbqhvA?=
 =?iso-8859-2?Q?kMKIdZUchNM5foh07Lhq0izTru1VGzn2qg+QG6p6rSuw5cptj+JD1sJZGN?=
 =?iso-8859-2?Q?q31zZ3C+ShnBQI1rndLf2gmJsUjv9EJ086tDKUKDs/+SkrP2OBgCM7y2+E?=
 =?iso-8859-2?Q?75qD2Gu0lUd3n1T8WziqJwJ/RsyMchw43NZCEduGO3FNJjllBUhqo7Eaiu?=
 =?iso-8859-2?Q?ZlFZ6uXs+AwiX3kwyDHlRj2JFStA0nbKy/AaBHWALqXFGKgZSus6P/KHHI?=
 =?iso-8859-2?Q?GXisdod1EWxrnbjkg3hfp81wIngv9A3Lt60vpr1R3UnwM1uGRRLgwWdki7?=
 =?iso-8859-2?Q?d002QEYpjZrJc7113tBG21fTQSEs4g2ddKeSV2yIkAIgVK0utoIYzYUGa2?=
 =?iso-8859-2?Q?m36BnFFEUAUYZiAAfLLiNEj/B65EbT9go5QVdD6RZHrDSPSmqfM+/aimNc?=
 =?iso-8859-2?Q?NQSedi++Pq5nSmu1bl+pAQRYxx9kPBFk+PXApFtlAg3oilHQao06c3wNG2?=
 =?iso-8859-2?Q?Q8PTxa0lJ8YA2c4d4wp0GHBI451jqIbn16xtIiNma8nzDjaSj1nFTljI+A?=
 =?iso-8859-2?Q?DYRHgA9PjEqeiFWROCQOw/y4vaYrAgxo4HrTtk8iPl1J+jNRjUagdjQlCj?=
 =?iso-8859-2?Q?XGOnP3VLcilmync21KvAxjl9WcKDbmceDBgYrdWLJYUkeenXm/rvbnLOjC?=
 =?iso-8859-2?Q?sBIN5nyqV0lFjjMDB9Eut1xns4oj1MOePygwvAqhUMSf4CPKBTl7oyVHMh?=
 =?iso-8859-2?Q?0Hpg/ZOV21NWA71WXJFa8lvijy4hIdeLvM6qXQANYdLnuOWsof2MUvFvMb?=
 =?iso-8859-2?Q?dk49FNc4t2Y8tnvAfn6GBamMWRDeZRi+6Ck9EnDZisX+LfyGcEIeNOJ0Iv?=
 =?iso-8859-2?Q?JgNpHQnYgzq+goNv75dXUcg6sOwIds6CCxcxHEoirWVyDNiSsP2WVDqp6t?=
 =?iso-8859-2?Q?QIbwT4D351lx1Q9IELhvKL5dMWXAoIOt2oZ8PNY065I5PafVeW2+jI0In2?=
 =?iso-8859-2?Q?3x3f5WmFdydFXbqxCXdYWPDzQR2I+179VMulmnXsZtjtZcBSD9ukF2JleN?=
 =?iso-8859-2?Q?e/IxOvgTPvZerfNJDpEG199PTOKOUXHFJMwz98wU2bX2bxejiu+8/P6x19?=
 =?iso-8859-2?Q?K+/aHjI9Jmgivm5rKKm8GXSbIpoC3G27iK/wopNGyw4lJuHTGCizsaXUMU?=
 =?iso-8859-2?Q?wUKY8IeJB1f8GMb+jwfmdXcqFbKfqC4hm0v2nB3hW+dPRluaYqHUafKI/J?=
 =?iso-8859-2?Q?f3oPpDVdUHy4v1VtXluEFn+taNHlveeSsNujqLRGVyz8BDso18hQKesdpT?=
 =?iso-8859-2?Q?CK8oFAVKyCPcRYjnnDoU7n9jVyOFRFH1E/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d70f82bb-81ea-4c5e-96e2-08db216984b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:15:28.4323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RQm83132QdTNdlZv9kRdes/hZiTSsDAoxh1FB50XvmR/wKEhTQERRwZKFwQzUyTj5yBwdt5CkxVZ7WSAKIZPYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454131; x=1709990131;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6+ghg590vQF8/0Zl87J3XcJg4rqBjn9PHaJ6uM/IHhc=;
 b=KSiN2qPTcj21nBuhiMlMdSutzEzY45uIuUFbPlrJGZlfgysLhoKe9I3U
 MAHbv29Q0+MGj7DDSx2qHocSwQU7r5/xy2Cl35KcvIxGjCCur4Jmd+qlw
 tsMTl6MRoA2eRXcOKLavgohspsnrV71hL60UFquhEx3GG1CZaTMtLYqr4
 NzqEIlbpdEkUlll5J4KgZsnnsbvZFgHpwRe4u4Aq/IH2W9K8S5mnuqWi7
 rCLTNn5utXfVTxfKJNZmn9UA2fw9M+aF+rYuNf2ZsUTCSQkSM6td46Eca
 dPUtlJsBBmw+EEARzJtFm19DQY1NA5LKRbz19kT0sgsu6LQAtoeeiMe69
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KSiN2qPT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 02/14] ice: convert
 ice_mbx_clear_malvf to void and use WARN
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 02/14] ice: convert
> ice_mbx_clear_malvf to void and use WARN
> =

> The ice_mbx_clear_malvf function checks for a few error conditions before
> clearing the appropriate data. These error conditions are really warnings=
 that
> should never occur in a properly initialized driver. Every caller of
> ice_mbx_clear_malvf just prints a dev_dbg message on failure which will
> generally be ignored.
> =

> Convert this function to void and switch the error return values to
> WARN_ON. This will make any potentially misconfiguration more visible and
> makes future refactors that involve changing how we store the malicious VF
> data easier.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  |  6 ++----
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 12 ++++--------
> drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 16 +++++++---------
> drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  2 +-
>  4 files changed, 14 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 96a64c25e2ef..7107c279752a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
