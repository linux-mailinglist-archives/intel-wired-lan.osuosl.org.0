Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA9C6E2040
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 12:06:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2398F6FED8;
	Fri, 14 Apr 2023 10:06:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2398F6FED8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681466806;
	bh=JUYF/P41Ap3zH0Tm7g1MbYJK3Xk9Z6FYLNCdfnSam5o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2HUS35RZSiT4xl4Bk1RFfFbwFCvDYJkYmR9pH0OigaRlW2ZvGk3EJAtPykZqSP6+0
	 eCnraX7O3IMgfVXqZa/EkGa1YpW4MqqL9bmA5hRLZQN65OS33W445VBpeVCw07VMVn
	 9NPBgmBzCnsi3c4Z1dRPDrFpYytRNIr5qo1QvnbKOBZDfEj1x8gN84tevRa9bToWoj
	 aals4we85/y8tHXCv1tNPM1a9eXJ/n9JcDMZKNx02rp92ymB9Q0IUQvh7NNtNhC/ad
	 rWRWCDxhJ+vWu5Z1j5o9tzuUn5Rki4I5qjPVCymFp177cTDaQkb7TtUzqU1Xwk27Zh
	 Rv2sR1bwqkEQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3ZB8GqSahUK; Fri, 14 Apr 2023 10:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E62AF60BF0;
	Fri, 14 Apr 2023 10:06:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E62AF60BF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7545A1BF350
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 10:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 465BC842F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 10:06:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 465BC842F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j0HizD5l6ayo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 10:06:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 787C084042
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 787C084042
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 10:06:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="347149268"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="347149268"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 03:06:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="813820549"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="813820549"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 14 Apr 2023 03:06:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 03:06:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 03:06:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 03:06:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zor3HhlhSZLq/kdkj3QVl5Hp7TR+l6OpmhmIkoIrc8iT9A4St8dgQ+BwnPqC8OL1YxSsJJi0YlAtlT1cZaLsgOAOdSEIctORbmk4YE5my9W9U7/6kAhry1LS2S1WTWaGdoHfFWdydfdiFTqEosAfmWT7NMdosBylgOJhkaHmpkwSDZRdN/rzZ8JXVemEO3k6vlVE7a9FytpqbZQrQYk74ydqV8TWAL/o8jayJyH+UB/+L1YVNoVnp4/2tq0aBxtG1jXnYv8JHXjGPdi9m0ey2eWupKVDpM4dUfkg+nLphf6nB+JDwwzMyEI+RB4cvAjSsh93D8NSbVXjhlW5wJVOig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqHkfU8xHVRnVMGroximQJMS/Vjsu9bfSRuABwmrvuo=;
 b=ZqPOlyKC7S8BF9yPGVjH9PzjMn4sNmbls9jQPg8SQvEPx5WydPvD1BqUnTHSyRMZvlBuDZTKcJl0onuc+tyTR3bxz8hFUMfEa7+qITymIibOrSCGh+z1/EvWazoKlPvl/FoI179sOHd42luQ9SW1U3rxZ9YcWqTrqdMzbhgKAZyDnQ5HNNtl+/wpNo0FLbFg4L/bD3Wq9o8EXFKSz9SMJIrL7DiY3DKOyypyQBlJkrLBFGsU4lK+bRb0fTG7Eas++l8ACNGUOQq/jnP938+izsrAYZgSpPyvOAYazs4seAVnUr9ITkCXckgv8WvWVtPZC4TJPMkL4939wR95kU3h8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SA1PR11MB6687.namprd11.prod.outlook.com (2603:10b6:806:25a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 10:06:35 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8%4]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 10:06:35 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Leon Romanovsky <leon@kernel.org>
Thread-Topic: [RFC PATCH v1] ice: add CGU info to devlink info callback
Thread-Index: AQHZbURL//7N1kf7H06LoNzMTKXBn68pOgwAgAAM6+CAADYQAIABGW5g
Date: Fri, 14 Apr 2023 10:06:35 +0000
Message-ID: <DM6PR11MB4657E9390EC16B7BD47AC4979B999@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
 <20230413131726.GQ17993@unreal>
 <DM6PR11MB4657BB5D26421ECA7709C79B9B989@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230413171710.GW17993@unreal>
In-Reply-To: <20230413171710.GW17993@unreal>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SA1PR11MB6687:EE_
x-ms-office365-filtering-correlation-id: 665f79c9-4252-4de3-5d9b-08db3ccfee04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R1hh4uH7a2GGey4XpWbEy/a/O1Nib3mGDp7JJK5MzxivKBNB6FX42b/8i+GB18bo69OnMRdl/ZTKPfGIgcXAWPvyxoAJw9eR/HRYgW5qhS7qVkA5c+t06iP0E0gXbqMNdqhF2l1fFYpfyNtPuo46wL83uV8rdtVOYqdqPf3+aTjWrQ229adeGGzD8eP3yg4woibmL6CekgjbfEn+ityjpdBwSFmI760XHRybt0WqqB/3r/cEv7UWb2SFjv99TZjNjCY2sNzFwiR4VdqQBzVH2SIh4PBG0eyRe30r8su8P84Tv7IcZg9rxxv/T1pbSuAxfgIsy5OqmTvyeRzDifj/gkc5I5UDE45lRADZAiJB+mIASic7nmvGtuT+jzN0tPeWq4tT/hI9U5VFgw+l334QLn86jXnpE6O35SnXO8LvLc5DpNuklRXLuTCRf7Eu7Chm9Sq3G8yKlE1VBQlVJismVTRrzUxXKKA1/hjJTH8UKBj0YfaIqPKpnckVq5bk5xSsFCF84GeaNrExA4X2JdgDIusOR9PMjlTG+nolt36mHMXJwUxB7ik2xZVyJlf7Y8lwprCF1wXfZIY44G3lnSK1gSC4rmrj+Aj3DRBLnmjvkk4S/9NTJNI09yZZc7SKExNv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(39860400002)(136003)(366004)(376002)(451199021)(71200400001)(7696005)(6916009)(66476007)(66556008)(64756008)(66946007)(76116006)(4326008)(66446008)(2906002)(7416002)(38070700005)(86362001)(38100700002)(122000001)(52536014)(41300700001)(82960400001)(5660300002)(33656002)(8936002)(8676002)(316002)(478600001)(55016003)(54906003)(9686003)(6506007)(26005)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xutkyTeFEUAeLu7yIcp4kqvM6NRsytAlJk3f6uTsL3dM6Rxw69yrn83uUA55?=
 =?us-ascii?Q?PcJgt3gtAGLs8I9gAUVnE04EcxUYUcp3oGpIHo67n42/dPCFdg57BrtqTafe?=
 =?us-ascii?Q?5eRX3znzwcryJXN8+acoMBshAMZiIax+YZ/+nmDAGtzvB1MUZpwehFXGFcR8?=
 =?us-ascii?Q?7T1b4rUcKzfQj/cZuUWQsoeqKpbn9ux/b2ldvN0cuWAE9U28+aqPiVdJk2zk?=
 =?us-ascii?Q?g/1uloDh7+byelItomwUdLQIysvszoVslF2+g4UOsJt/R3aepVQgpBiM72Il?=
 =?us-ascii?Q?uGPHh2LCqI0fDGoYx+rY3JrPaFgvOaFb/zWNWXkDTv/jLELW6J6rn9K6DIjT?=
 =?us-ascii?Q?bDWUZPuSrxwCKKpGOqAPrsWezkwK7kDAFhvo+Cm6WOBYHobd+0KC7NXJG5jk?=
 =?us-ascii?Q?Xl9IOCKohYYZScuTjbnSQcPNit+CDP+HD4YNW14r3EM9xl0eH1Rgx7PVMmBv?=
 =?us-ascii?Q?Fowni0cTkjogmrPDSomLak/BEwS8IorArxnjwQCvqDOYn7xQ/meViqkuGytW?=
 =?us-ascii?Q?5v8zxdxqStjYHd8OxTmf/ZTuK7tvZvcYMjQnDf51Z20wDGSjA00xDbUcNE/U?=
 =?us-ascii?Q?A25aFpFbXqbbR5at96OgEXej3BKSqFaxaxPV63E7BJakh6G/6APgbRlUVbT9?=
 =?us-ascii?Q?ZSM6ZU2TQxnQr68ld7Vklv0iiEN43fG2DVIT2yIFCr99lk2KfWgZqz+nMAcf?=
 =?us-ascii?Q?L8Z6zXseg6A3+ZTo+mrBJQ+Kaxsbe2FtKHOgJIdXdjnrB+3TEW88SgTyCu99?=
 =?us-ascii?Q?TNMIZo+/I+YNuGd/JzC5VIhJpFUhnODUggw2VBl+wewxWx7XA+nobHNkXenB?=
 =?us-ascii?Q?Iz/azsdS5tWrPksUXKCM6+1Z2z4f4PFdvE9M4bzuSl6o05Rz7pvpIjuEiMfo?=
 =?us-ascii?Q?5RMSpnTLlx/qfgDNtMww7zOSmgoClalN8ffdDvtfLL+1p2LFJsPyroG5p1IN?=
 =?us-ascii?Q?6/ypvjBqEfznRW5esAPxOT446S5wPP7uUWUVpk78969xWlW2qZBCR2lnxP7q?=
 =?us-ascii?Q?CAiebs8jgdUjj3yP3IhP20PcIy8qaCIcGIVkwwPDxUWnzSsJbq56viD9BTHm?=
 =?us-ascii?Q?9KvmqSx1BN7TsO/7S6oMV3mX+KsEEPFpzVEJ/z7kIbC+7Q6DrrcPxRffBs4f?=
 =?us-ascii?Q?2mpXmDGytXeQFvlVBD0ftdFNSXiouzcrYdpcP8nOquFhn+ny3aoXpuezmvB6?=
 =?us-ascii?Q?XNd54p1e9lGAlG7e3sNEV/hYti6iyvb+yTqoE0FGgYbdsATO/V9j7Aftzs3m?=
 =?us-ascii?Q?8mhp2CiNO6CUraZkrHiHQsCh7C+RNGp+jykC8Xl6SVk1cMmcCHaBZmPvIs6a?=
 =?us-ascii?Q?G37Nf+tTcSZZqt3UP9Hm4MVK+vuggotqF/7VctUZg7V8RarwM3IdM1eCXtob?=
 =?us-ascii?Q?b2EjZ99Y1UiYG8jeWY9DWI2MUs4HdzQePs5NxTYr2a4I3Ex5E0zN68uuaAfs?=
 =?us-ascii?Q?uUcpmFDIknCHJH7y9OPjpBid0Opmv1RX7faMiwwtpELmrG5saXn5ljc/dLdV?=
 =?us-ascii?Q?n00f+y9zq6o/XFIUEXtF48xGUJQ4NiGNRgP8ZtmDO50vYwCMqoeNVajsaHt9?=
 =?us-ascii?Q?E+smvE2FQmrfv/V4kNqOGRY3CJJ5eyua5joY5T663f9l+G2WADbiA952/+0/?=
 =?us-ascii?Q?oQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 665f79c9-4252-4de3-5d9b-08db3ccfee04
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 10:06:35.2213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5n4JfIOclP76kI3DyZlTrX/nvIhKVrjfv2tDBTKq+zc+2AOMSQb2WdntvPW3DGGjSt/tlbKeV1vtt3PmD+4/GT3CS7rd6hI4qC6Uta9q0LI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6687
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681466799; x=1713002799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r+Fj9VwAfcQHot8xVn93CVZVyh955gQ+bxd8unlNhqQ=;
 b=mz0QDUEzwZYuXEYb205DmJzAGpW1GQIQ1ujaC3Ch05Tc4KEHUo3T9ofn
 +sDdoF0sQ7VYOTpK0rgScda3WPZrfzW2pXm7TZ+cKZ98BTy/v3uONrRuL
 XQtzivaRx7m5lV1H8oebJNPyy7dt9wOD/pK4JMDXMjxFMPj5LAbX+hDyH
 uDIj+aVWSmthKA0P/c88neu4qfc6DWT2kY5ZieGygKy1Yebhsvh6AR/Lg
 z9432jZoaxjuocEDbbq4xErsHqKv1G1DkVrBl5yRp5JI42S6cInTOycfF
 mgRsSMCwO5kvcO4R5fO24nKGxUS+Y/edCGAvGLAH61TWBgoCt2gjpi45I
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mz0QDUEz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Leon Romanovsky <leon@kernel.org>
>Sent: Thursday, April 13, 2023 7:17 PM
>
>On Thu, Apr 13, 2023 at 02:04:33PM +0000, Kubalewski, Arkadiusz wrote:
>> >From: Leon Romanovsky <leon@kernel.org>
>> >Sent: Thursday, April 13, 2023 3:17 PM
>> >
>> >On Wed, Apr 12, 2023 at 03:38:11PM +0200, Arkadiusz Kubalewski wrote:
>> >> If Clock Generation Unit and dplls are present on NIC board user shall
>> >> know its details.
>> >> Provide the devlink info callback with a new:
>> >> - fixed type object `cgu.id` - hardware variant of onboard CGU
>> >> - running type object `fw.cgu` - CGU firmware version
>> >> - running type object `fw.cgu.build` - CGU configuration build version
>> >>
>> >> These information shall be known for debugging purposes.
>> >>
>> >> Test (on NIC board with CGU)
>> >> $ devlink dev info <bus_name>/<dev_name> | grep cgu
>> >>         cgu.id 8032
>> >>         fw.cgu 6021
>> >>         fw.cgu.build 0x1030001
>> >>
>> >> Test (on NIC board without CGU)
>> >> $ devlink dev info <bus_name>/<dev_name> | grep cgu -c
>> >> 0
>> >>
>> >> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> >> ---
>> >>  Documentation/networking/devlink/ice.rst     | 14 +++++++++
>> >>  drivers/net/ethernet/intel/ice/ice_devlink.c | 30
>> >>++++++++++++++++++++
>> >>  drivers/net/ethernet/intel/ice/ice_main.c    |  5 +++-
>> >>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 12 ++++----
>> >>  drivers/net/ethernet/intel/ice/ice_type.h    |  9 +++++-
>> >>  5 files changed, 62 insertions(+), 8 deletions(-)
>> >
>> ><...>
>> >
>> >>  Flash Update
>> >>  ============
>> >> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >> index bc44cc220818..06fe895739af 100644
>> >> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >> @@ -193,6 +193,33 @@ ice_info_pending_netlist_build(struct ice_pf
>> >>__always_unused *pf,
>> >>  		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist-hash);
>> >>  }
>> >>
>> >> +static void ice_info_cgu_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
>> >> +{
>> >> +	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
>> >> +		struct ice_hw *hw = &pf->hw;
>> >> +
>> >> +		snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);
>> >> +	}
>> >
>> >Please use kernel coding style - success oriented flow
>> >
>> >struct ice_hw *hw = &pf->hw;
>> >
>> >if (!ice_is_feature_supported(pf, ICE_F_CGU))
>> >  return;
>> >
>> >snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);
>> >
>> >
>> >However, it will be nice to have these callbacks only if CGU is
>> >supported, in such way you won't need any of ice_is_feature_supported()
>> >checks.
>> >
>> >Thanks
>>
>> Sure, I will fix as suggested in the next version.
>> Although most important is to achieve common understanding and agreement if
>> This way is the right one. Maybe those devlink id's shall be defined as a
>> part of "include/net/devlink.h", so other vendors could use it?
>
>Once second vendor materialize, it will be his responsibility to move
>common code to devlink.h.
>

Makes sense, thanks for this explanation!
Arkadiusz

>> Also in such case probably naming might need to be unified.
>>
>> Thank you!
>> Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
