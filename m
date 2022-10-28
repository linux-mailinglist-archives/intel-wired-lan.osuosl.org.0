Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B8A611C6B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Oct 2022 23:29:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BACD8408E1;
	Fri, 28 Oct 2022 21:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BACD8408E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666992567;
	bh=OdBnH86wJSED3bd1LXmNg2wS503P7lNWcCcBBTdJwJQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7335ExSyGm7Vjm/8NLlTB+nmxXfJG2wxes4Uo+OZhjT2vkhfjAxfULA3YBE7yvOj+
	 SeEGhlZKXpdLWX0CYhjhho27Ng1HZ5X/kvvzDmn4Av7cXR4lj9Wpg+Qxf0eR99wCdg
	 YP1Hm/CzGa4OJEq+hnKCF8s1vpUie+SA3nY2THnOtg1SFrZ0M8+sQnxHm3gXMEF7TH
	 YQmmWMX0uRTWBt1MbEJWClFXAyR9KSQKpFn/JkhNVGZQVMbS+0cb/gqRqO4wOfL3Oy
	 zAhS1H4O87aYRB0iVdN317ZSQdAGYRiGvMT9JRuExR1NUijuYiEcAhAteN1fP1lxx3
	 ICp4+1Z4Qx6HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3GiA5QEHCqV8; Fri, 28 Oct 2022 21:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B625408C1;
	Fri, 28 Oct 2022 21:29:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B625408C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EA211BF855
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 21:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 775DF60BC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 21:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 775DF60BC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wmO87JHDKgv4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Oct 2022 21:29:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97E2960B3A
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97E2960B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 21:29:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="310291649"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="310291649"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 14:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="635447544"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="635447544"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 28 Oct 2022 14:28:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 14:28:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 14:28:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 14:28:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBllyv86OyAVQTCrCX/DQqwsspGn2JRzk+h+vO6DF6gcGKAyzLUEHwwkcllqiL4GC5g4fegZAKQi8cr5T3w6YlXu0bN9UTLXQqFDT+3e4eUzjf1FsF4trUFRyDOOHu6dZPx3yJKENw/NeLBffEfx9+AV4EiLfUo9Zfy7AkM7KfCud1a3hL7NDWUaje9ja20P6bwOvKQQ0x42MgSb3yr4BK91qD8ZjdZAAhTZpnqTRAq+4Ml66P0ICSEgPXVVqudUN9L0r7QZ+vGE7Gpsovca60lZU0pgSycmJVeSDtODWbiAItEy0twlKfNkgyL9DWz7Fd4NPp+Pd0fPoO7hd++aBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l2s6ix2pGtNWfis+8e1pFhYELr8AVHdEsZOkpy/QOik=;
 b=VID9OZeDxJJ1UX3ye/83JS7x9zLtVcHUUwfmsgqTfj862UsdXaS88hpVHSzCjxQpKnPVS3XgMamuoeHyIbbG33lh1gADmi3joxhy8sEZDwflF44yEGHQM23v1avdarjj1Vq7tyKYqZ/T5jvU6EJhObRPcUtrJ6Uzue6Yv4qt2MJssy1gBwZdpss6kpfV7zzCo07ehHRRywoEddEbHBbWdSYEhmGvnYC1ZJbg0yMJrr11EnnqGS/uXi79YWziaRxRlJOycgtP3tin0lORY+4wuQwprm6dEGhxzvwoO0uBtTyCwDBPJ0VynJZpjv0fWRAvQ+MF0bGqqKwdAmHWk1yJdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1293.namprd11.prod.outlook.com (2603:10b6:300:1e::8)
 by PH7PR11MB7549.namprd11.prod.outlook.com (2603:10b6:510:27b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Fri, 28 Oct
 2022 21:27:59 +0000
Received: from MWHPR11MB1293.namprd11.prod.outlook.com
 ([fe80::2851:2533:c049:2ad4]) by MWHPR11MB1293.namprd11.prod.outlook.com
 ([fe80::2851:2533:c049:2ad4%11]) with mapi id 15.20.5769.014; Fri, 28 Oct
 2022 21:27:59 +0000
From: "Nambiar, Amritha" <amritha.nambiar@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [PATCH net-next] ice: Fix off by one in ice_tc_forward_to_queue()
Thread-Index: AQHY6t52mcROrHVVakCLv2JfLsv9da4kUjVQ
Date: Fri, 28 Oct 2022 21:27:59 +0000
Message-ID: <MWHPR11MB129389DB1967551B1DEC341CF1329@MWHPR11MB1293.namprd11.prod.outlook.com>
References: <Y1vvAJ6jOmKEUZue@kili>
In-Reply-To: <Y1vvAJ6jOmKEUZue@kili>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-reaction: no-action
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1293:EE_|PH7PR11MB7549:EE_
x-ms-office365-filtering-correlation-id: ebffc798-cc2d-4ead-ee51-08dab92b4969
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 86JU+omUCdiKgkQhugZ4hNp7VfY258JQXwUELs/Af/fbR+jodtw/7cQuqEGwUuf/VkkZYMiue4jza2EVK2ugxZWP9bpIfw3sGpAf4nn5hgWvKvUv5Ef35+gusjBhzlEzVAz3xjKtI9cKibUtHQKCOzT7UCaJLTmjpDHzLgxbhr+UtkAmO/+uItfQCqKpS10cKSCB8OlY4J3BxGA1jGnzRyZN38lzubt1fFsQLtxOX4yeJC05KGvPLJH0A8Q24SQ+uY+k3NA+XGvqr0HKaEBWNU6vcNsVbYcHYCT8LcX7uWnXvmd/ifEO7EPqtT95wi8KJbRFtDxOHiJB9O7bAUuh3Eot64fhou+7FMgC7787KISifZs/mObUAWBoGmku1AKUAT3Uo3blIyRJRFEJnbgndVC4me8zS8Zf5b0XB8FbCBColVH5zrukD2CRLl7cAZBhnq0cVZ9GtCHIIP0uVBLK5bHbwp4cy57/KruJr4AY3u9LdW8YnxsIUWURpTAyFfGlnKNjTtLa29gzxff8eYhVw6CH9rvYLQxMV3BgfyuNBle5F8p+xdhtfOmO9B3b7rE2ccVocUI1ObFQK2DFejI/+9gkbT6QlZ+eOlBvb+0AieVkr2viwCg1BXyHFBEJYM+Eble8jWzheI0hlAaWW56Tqi0VWW3Y+14CxRFbs5z4PGpphV1nYZTz8K3AevEmgCd7+hoGyEQVRYrE9r4h0qo2MfUhk1GTKnxDW2id1nD6MH1nJ2LfUAPThw8qI4gnQJSl7UdsY6em9kl6YSjUO2Va3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1293.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(39860400002)(366004)(451199015)(86362001)(122000001)(82960400001)(38070700005)(38100700002)(33656002)(76116006)(186003)(83380400001)(55016003)(2906002)(478600001)(26005)(9686003)(6506007)(53546011)(7696005)(6636002)(71200400001)(316002)(110136005)(54906003)(66556008)(4326008)(64756008)(5660300002)(8676002)(66946007)(41300700001)(66446008)(8936002)(52536014)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jiT6DhZF/6xWuixfZCwQQC3PNT5Bbi5SstLMrS/I7PIUTeFG/ijdWWbyxr62?=
 =?us-ascii?Q?FmL8ZYmHgonJjI9xcwMDvjeMleWbSk6xukNO4qS96iq3C5bE4Stav0GUI12k?=
 =?us-ascii?Q?jWPs5PqkBFS+F3XVhIYrhQBx4mzC+jtdmhr3t+yOSGCCWONeyiVHwr3MBPXO?=
 =?us-ascii?Q?y117GjpJMTTVxtdK0Nilt5gNalwoMYE88a9ma0kl72j4PuPo9QvEUNYkPhRR?=
 =?us-ascii?Q?ukVU+HWlvTlDYqR4mk0KicGFKOwbpz2WgNkIqTMI+hANCcY7HAli+PLTOHCQ?=
 =?us-ascii?Q?ZnaG0PW5o5AfNeYZ9e3k/HIrM1EvlBDrNgA6jDELHaZUh4nuwxNLa6E6vDK4?=
 =?us-ascii?Q?QgpufYhVoFUHX09zOV0Fh7aCfNWe7VjKpxFP4viIW2Fa7xcpFcmYvS09dN6T?=
 =?us-ascii?Q?5G7rFdCfvCdj/AorGHCbs3stbKbxm3GGYs8t37lZxbHllbeW0A2pUSThxebG?=
 =?us-ascii?Q?qIduLq65gM/dGH8c8fmEs7H/8POzLXeFN1EJvPWjIP13rMN2Lff4HiutqQwO?=
 =?us-ascii?Q?dqoQ1eTizx9Ds6VHrN1QkiYaTEUNuLx4lJRcU0g56ICenTNisfVxYlzo8qAu?=
 =?us-ascii?Q?Q4QCMN801BhyxRG0vM369tvOcde/1FO/yPnhAfgmMQJ8z4H57i/W1Ao049pj?=
 =?us-ascii?Q?xbyY4yzhuZvkJQnkUBr4jCbHXdlhCyjb5bIh+yP+XP6F61JA/UOQqChx/AKc?=
 =?us-ascii?Q?BZ/bHUSGR4XsGAglkRQClsA89qB65dPmZhyDljrfTwgpEAg2+5MXBawgD0S2?=
 =?us-ascii?Q?AYrHfJo4KcsHp0Cw5cQN3ByyqcArsjC56Izx5PArG9l/hd5G5Krkwd5jkLTv?=
 =?us-ascii?Q?doE7KB2Y/tmGddQdu2JqIJIaOpy2j5eDNLesLsYBiHvhK5HljXGEHmDdJ2rd?=
 =?us-ascii?Q?avXAer0tc8+6Py+D/RaR4buIKufxCM8jA/HRjA1hm+ThJy8wz9wb1aclXYcT?=
 =?us-ascii?Q?vOEJejw8+Dhz7wycIRZ1yx2dYfF5VWB/+xMbCwwFqtF6uFF/1+AXdLQxnw0h?=
 =?us-ascii?Q?iQZ2Im1dO8zwQYw9n6BcukBpKQe9IhY9xn6rG1ZPpI1JN/0iSwrsvcxBk5cb?=
 =?us-ascii?Q?9YoJKUojTE1sWIvG/IDGSf6K9tZaHz2AyNoDim8p3n3gjT0zcU8lTBSXwYza?=
 =?us-ascii?Q?wYHqqr2R2BTWo1qMNhwzfX1l61GOCF1tOsypxxHLZut0p974muCmSODI/ZPO?=
 =?us-ascii?Q?jUs8gfbhJ2+SlIgPQXwxcTBpw/PQP6CYWtI3iUDyVcV6i4S3wjzLgmxzOQdm?=
 =?us-ascii?Q?Dl5agDfzqd5lQjdzLawbIGXCXCr6MSuOhgAmIb5SFCe0p2o6rB0v0wYpC3am?=
 =?us-ascii?Q?iX6M9W0B45R7XamIRl2etag0NZPKGomhEx8rJdcjIWJ159ylOtcYbcKtsh7N?=
 =?us-ascii?Q?whEps6aWggavzCIoNbSeivz0VvgyZp0eIzONT7343VKnfCjlmvdcDKnvppeZ?=
 =?us-ascii?Q?U/tlLNc2Mcl9gX8dx1MtCG+WfVo9SSEYp2+I+7VWm1Dj9rey7KWDF0GgvqAS?=
 =?us-ascii?Q?0uWcKQ2uagiGGBGCHLB3PhReU6h9l6K9u+9V9xSJVaEvcABARYTD4fEAk2mc?=
 =?us-ascii?Q?oKbiWUb9w9+m0Tew0iXh5GDThKOqqlrtbpD9ZGvKJzqcWmWZa86/dMIG6BMs?=
 =?us-ascii?Q?yg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1293.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebffc798-cc2d-4ead-ee51-08dab92b4969
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2022 21:27:59.2289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: piuNqZmOVyuk2co6HdETmd060ss201etIE2hIxyvWksyhUt4cPMNl12s0vS4uxmGQY4nkeV9bq5rb84TikZu+1AaGEuh7obzm9Zy6HiTGa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666992559; x=1698528559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tLBcAoif5PAdb53TFOXF4iIel7M/WHAYESR5mdFG4H0=;
 b=AG/ny3gWAdf9fsWRDaL/wU9ZMYU54bUyaCuAmqU5PkEGMhcF3nEEzyN/
 oooRA9LNveC/z1G6eb5nmLRp30CiZ4dgqlfHCbZJUSR4JhhKaapqMiJKf
 gNZqYArHDcSe3o5H3MrtVHFhS5haVcBTJYuBnWaxMEri4WpnaCRKZSMl1
 JY039kjVgARf4nzcHJw2kXgV9fclTmC3aXPNp92Pmz0WlilsQ/5luq92m
 JO9hrDU89NuDQortJmiQpxSggGJZU+0ZYmmoeig227QwF4BYycW1xJiiF
 Q0NPLfUGPDO9WnHISTI7fGMo8t4wCNkHgVyfpI1JBjYnwdRWFMpyN+SPh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AG/ny3gW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix off by one in
 ice_tc_forward_to_queue()
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Dan Carpenter <dan.carpenter@oracle.com>
> Sent: Friday, October 28, 2022 8:02 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nambiar, Amritha
> <amritha.nambiar@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH net-next] ice: Fix off by one in ice_tc_forward_to_queue()
> 
> The > comparison should be >= to prevent reading one element beyond
> the end of the array.
> 
> The "vsi->num_rxq" is not strictly speaking the number of elements in
> the vsi->rxq_map[] array.  The array has "vsi->alloc_rxq" elements and
> "vsi->num_rxq" is less than or equal to the number of elements in the
> array.  The array is allocated in ice_vsi_alloc_arrays().  It's still
> an off by one but it might not access outside the end of the array.
> 
> Fixes: 143b86f346c7 ("ice: Enable RX queue selection using skbedit action")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Acked-by: Amritha Nambiar <amritha.nambiar@intel.com>

> ---
> Applies to net-next.
> 
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index faba0f857cd9..95f392ab9670 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -1681,7 +1681,7 @@ ice_tc_forward_to_queue(struct ice_vsi *vsi, struct
> ice_tc_flower_fltr *fltr,
>  	struct ice_vsi *ch_vsi = NULL;
>  	u16 queue = act->rx_queue;
> 
> -	if (queue > vsi->num_rxq) {
> +	if (queue >= vsi->num_rxq) {
>  		NL_SET_ERR_MSG_MOD(fltr->extack,
>  				   "Unable to add filter because specified
> queue is invalid");
>  		return -EINVAL;
> --
> 2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
