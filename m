Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1A175DA7D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jul 2023 08:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1634C402E8;
	Sat, 22 Jul 2023 06:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1634C402E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690008680;
	bh=zQfjUU/+I3v1v2gwON+3uUr7jSjn0LH150HSzt5FoOU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gKcxQow8yo2Ri69ox5DFlWNPtj8y9PDaY/GMww/d/9cfGGtht5WSOrssQzHrauhGn
	 A8m+6nNSwdsNj6Nc7zCou0m5cQGebH0vGYVsi6H+S9nSOOyO/5PlwADR7d6OV+K3qR
	 WytF8gA0YAEv8h3cQw62v//4WVK/o1V+PPcZZQ2I4H4HhX6wFqejcGSZkdX/76DtKV
	 JzsBXpecT+FYxZEvHNJzF6q3m2OhPyvC5lyKzYo0z4SAywmwRjVBempCU7VpcVL7dH
	 pU055IT9G+xn44lwLDxBy5BN38/j1KCCYem6HzmvrdCHEUpGB4lKyoktbuEGi/xDp2
	 vX/JPh+2MvThQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2RwDqjsbD6C; Sat, 22 Jul 2023 06:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E69AD40201;
	Sat, 22 Jul 2023 06:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E69AD40201
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 156121BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DED1141E08
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DED1141E08
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R9TKbeclBgl0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jul 2023 06:51:11 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1B2E41BE0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:51:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1B2E41BE0
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="369838670"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="369838670"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 23:51:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="971683471"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="971683471"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jul 2023 23:51:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 23:51:09 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 23:51:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 23:51:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 23:51:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oLWh3vY7YBhzI3UsJmEhYgnlixvf1rqS/OHe9pr7ZiKVlkpJC408QwmOiT7Muw8yE05lOkPB2Txp3kbnrox7HRxPIeKzcJp5aQJ98IG1O1TzK7CSpxWLQEPUAB/olGlk5oXGx0djjE5EnocGuDojQLBn3SeQKQOc07poCPyU/tb0XKToVIoXoXSbtolslTy47UyvtgDeTh1GxNN5nfOoxl2qSVttA8kvGCiZIVxAjZSQfF1Jdl1Ldmx37JhbSH6T8kIDDJwrrQ7wKfFrkyg3Bm1QpoFrs+SDllCMXfw/MKlCXOV2bH8B0bTdsmqEyL8El/F9tvnWHct+aqysb5iUmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/q0Y5VcE15CytOEsa+MxwsZWVxwltuBOLEC+VHi8r4I=;
 b=FlJ76lsJ6+WWE3CaesvLJrwf53CvrG6kKU4amDHumawKANoRiYL4Sjvf+A6CxmGxmAMVAGvTmT2NWfHK0+umiYKkjC7H/rH3jJNzG7uu2UyqIXJ6Mt5NDt8/CF3FQAnM9Kjina1OWxFNq+AFljIfBYCt3KucwbRrsPz/3E3QN/RcitNXObeuW/WVvn9QqYDNWWahANW8hI5P30WR9Vz+smnSc3IGltgbdJVhx0TCFTzXV7ad1falRIAFqeD/WVpf8oJnjt8DnjhIoRqgBWdZcxJJFvAKM09AHGLslotO1LvnL7qjYXZLxjH4rNaxKnVUahWlMJtwXFcMaU74Tgw7RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Sat, 22 Jul
 2023 06:51:07 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6609.026; Sat, 22 Jul 2023
 06:51:07 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 11/12] ice: implement
 static version of ageing
Thread-Index: AQHZtLD2e9KIfI8k+kGMocgVDtAL0K/FaFDw
Date: Sat, 22 Jul 2023 06:51:07 +0000
Message-ID: <PH0PR11MB5013B0273D2FB86BFE9FDCA1963CA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
 <20230712110337.8030-12-wojciech.drewek@intel.com>
In-Reply-To: <20230712110337.8030-12-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA2PR11MB4828:EE_
x-ms-office365-filtering-correlation-id: 07756995-e2b5-4f94-5069-08db8a8006ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BokopWPAHYgcSsCy84hByjK60GO83v/4CJlHaScUWa1DqHlRndQtmRqjGnwV8kmPPb2Yn3xWJBo52cjfAy34VwSFujycwduWBSoGeNs+uWSXqxdgjMv5GaQLbG/alFgTDOngw9V5JFsnhAFT0GYnCcHGewINUbLUm4lFclX8LLILMHcmWXN9Dhd2ES+ro8AG1sWRc0Z80zWF85CtGpMVZoxYGi0l1nl/dt8lJS4SDKpAxvoQEMqcmrQTKv0YfHs0WyUI/W1Hohcpow4WTxid4oIBd0HndXGLJUNV+ZU4Ty6JzIsI9jtFAm5mSjSfbElqfjytVsS529zTTPypcr2M0WsYkvyKnSPMLl9qonaj6n05xUwV5FDcvdliJzf8Rs2l+MYZOkcSqGmhxyrjBArP3OpQi1hlSp0NgY1uzIBcFQWNg4hMYlcnpFMh29hP71utSlPFtoQn4Gmomtk8UMoVzskqLoHk/WuOdQmBa3aDfU67w1r+JEN1F6XvUcQyvnmORDAOYxq+PEXvDS1+rPfEgbiwDhUD4grINqsh6PvTYFFy24T3r5qOii3zKDZ45dHQLeGBjbei2ljY7Kx6cgcjqcrytM6+pay9LPVq60kVYn7kplbK9LOdiX2qWmddC/rj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(2906002)(4744005)(83380400001)(38070700005)(86362001)(33656002)(82960400001)(122000001)(38100700002)(55016003)(4326008)(64756008)(71200400001)(66476007)(66946007)(66446008)(66556008)(186003)(76116006)(478600001)(26005)(53546011)(41300700001)(316002)(110136005)(6506007)(7696005)(54906003)(9686003)(52536014)(8936002)(8676002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lh3X/mpXK9XVvcjVchhkSl22tcXI0FCl0RW/K4OD8/4AvHNOceJtlP1/b+ez?=
 =?us-ascii?Q?+pjROcri0qjCGliyZ6V+4+vyonwEJgiOssC4YV265Lwd89A5gJhh3pTsvfTE?=
 =?us-ascii?Q?lWdoEj0kugbewAktEPh0bsbWigyAKPysw98BUal8z1wmY0tID+pGdWYWeXc1?=
 =?us-ascii?Q?VFgURNLFmVac3Su8llnZ9INK+ETVJkQbmFi1PVm8RU4WE0TUvcSPAZX3CZME?=
 =?us-ascii?Q?lFa5/2RGlmKTM76DLrsxSREsm8CUyeRrOBzpH8B5mRnrxpCZG3+YcQmRtvig?=
 =?us-ascii?Q?ceAl0BgahGdsvmZ4fl5ShzigINrDzLITndEBBLqB5b8u1u2EceXgjNH/moXS?=
 =?us-ascii?Q?l5I6yuhM30TwyOlsV6Di28G1Ln91ZP7nNt9trIuH1gjE/0s69tBTBNXFVJ2T?=
 =?us-ascii?Q?6stlg3/BHJn5mnYw/MFC+pC5At0B7W0W0Cb6QiJiYOXOfGigd/KtUnZRvmne?=
 =?us-ascii?Q?SnIx1gnPlBCD2GP9DfHlFWcmCxmusTTIjKM3uDDKSoiFh10CLugVEbguX/9O?=
 =?us-ascii?Q?nBNX8Qd9CVAy1yPEzPNJ+aECJvU8cIXJCI1Pn08xW4cPFVSafSnf5FCCM7Es?=
 =?us-ascii?Q?nxleheJQuKQANX5KE0LDlVoI78iCjdvoavGI0hxOMIQSFK6NwE5KNbGS01Sv?=
 =?us-ascii?Q?x7CeMCC98sxw0RyLNU+/uFLEbESwHKTvOjp8NgkkXMwsRYBQ3TKYb4bQSqic?=
 =?us-ascii?Q?nLKsB3I7EskKhypfYKJcgAUeHQQpzHsbHq6GmXwOTDmWVbz1DfEc09UndLSh?=
 =?us-ascii?Q?sDAG+1prV6uOH94Zg8V0FV/XYgtKHZ+CYhABf+UV7+wQiy8+bM/KoTz5SR1z?=
 =?us-ascii?Q?lHZj2/C0d2CdGpidxcA1RZD86H8QoG8kt+eRaIaIYtQDnm53s5fE1FjUo+td?=
 =?us-ascii?Q?9IloBZ9I+Wy6ICFJWb64cGrMp+eVi8PJTbO/ZjRKTb5Jinv9dmicg3p4WAF8?=
 =?us-ascii?Q?bqraTEKA8GYrfYJPhmj6BZYl5oEoNfzcQnpQqDs5wKnueU4IIv4DZeY3sCes?=
 =?us-ascii?Q?e0LLLIZBCjAn9GdS5J6KZFlHGvlz4+9A9cIqjgTSNI0rSdU2PWkjPwo8uMfz?=
 =?us-ascii?Q?N2DcdFc8Js1qdZvEnKg4PHA/DSJ96C4W8MDQPOM9ilcAHBEzJk+ZGjb3FHCw?=
 =?us-ascii?Q?HXDZoVqu5NwG3PyvLeMONVuggFDKQQLvFkA80Yan5NBJ0+tRRIwbXLXTIhdl?=
 =?us-ascii?Q?HW/+fpsFjJtOvmLCvck2kVgqe9Zq1O1+RgRZ+8Z7Ijnd7oDU0uialyr/hYM8?=
 =?us-ascii?Q?1rFlWlpUvam1/KPHPDcTnjMKU79NNXoF/sBMhTZK+msDRTO9dT59PHqwzTwP?=
 =?us-ascii?Q?y4ezyAU3fkIlmhswAuNQ7nTNIWo3esrq55uaNpgFr5c7p+AAOoV5u2DXGq/n?=
 =?us-ascii?Q?PA/4u9GRitfyNKJM7FWvUUcbGSRSKHWKQYiJwUU1OG5ZaF4PsQYs6zdTOYed?=
 =?us-ascii?Q?0lz4e73MLVSPKJZe+DY9nKlfLomejZXZXWi6O4e7jaM8Rs1u3BZkFK+FPZas?=
 =?us-ascii?Q?Cbjz5ddSEeife4/i2pmSG9zbHBL1WGWZYdHTp35yiAej1LNnFIxvbHrOESp3?=
 =?us-ascii?Q?lknw37fwgS1Z3Aj3Ts9uepryM/peE/K2i0pUZbJXj2j0d2xNgbPFeOKyeNqS?=
 =?us-ascii?Q?YQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07756995-e2b5-4f94-5069-08db8a8006ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2023 06:51:07.5994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lh6gIXUXTwANNq99qYMi9pBkp3SRj4WbfI1TCACOTbWCt9XUIr87qCLnV2I7n1ZDJerzuwbU5fal3ddJRAuI+xTuokUxoRHUqvF8gbu1FI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690008670; x=1721544670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v256a4n98bDQ2c21tyFj/l+1EdK+H/6oh5wc8GWmhyU=;
 b=cLbnpc8icwWeE/MucOnUf8BBzDMUpR20gu+mXVExXN6eUxbNyynzBStB
 CG8o/6Zrpmqk20Odr6q8UMWUwyC1d6ZhGfWlYTQFAbJIRUjlY1wfj6Dhd
 WY7xX3WZ9QDAJRnSUEwJ9dx0K5OFGGRMBrBxBqH9YEcCEIK8NnZ/RoCco
 OLarfgRQ8bm7nKFsLfD6VmMpMU0LTBkIIsunb+NPBNIdIwyvqB8LWMAXV
 mwyQH5OIhaGj6pEr9KWBr219upZHHDQWGqPGV7HfinWqpfd712ikt1FkR
 OOxD5/0TJ5wCisYrJOb2BXyfs3afSRXkHnWjOcFRYm6xS5iWnjdBFKCXc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cLbnpc8i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 11/12] ice: implement
 static version of ageing
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, July 12, 2023 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; vladbu@nvidia.com;
> kuba@kernel.org; simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 11/12] ice: implement static
> version of ageing
> 
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Remove fdb entries always when ageing time expired.
> 
> Allow user to set ageing time using port object attribute.
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: use msecs_to_jiffies upon definition of
>     ICE_ESW_BRIDGE_UPDATE_INTERVA
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 48 +++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   | 10 ++++
>  2 files changed, 58 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
