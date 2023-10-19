Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D1A7CF4F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 12:18:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBC1F42EAE;
	Thu, 19 Oct 2023 10:18:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBC1F42EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697710718;
	bh=knHtrtus2OPceVfWbpkRL9x4A06tLIL9ETU7JNmhK4Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GsnNdqJuot9JqCn24JTfGNjk8jF4n2PJUc/13KLM9Y5FPdlGu9nuMZvNx8g8M0ZUl
	 sLQGuESg1Xoul2xQFZAELLQ5CWlFyUu6vlEfkZhkyepIVx0kZ0xYWR/ehKaTfT4ycZ
	 9yHnD4M4VkcpR0Z38XmH9huVg74XbDW3FbTG+J/95MEuaWEilLBr09XZF0Nq1DWMWH
	 XalXpPi28HDnnyo7GP5L8krKzwJHDFNSgChZP9Kk9LAQrAyQNvoRpsRc9UR68DxWFg
	 T3c+U56OK6iEeZ5jGtQpSXwsEC8oreU8xMk54HgdXUji26zVIlBGrhInl00rpLejY5
	 /lM/xOXDWt7eA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4trttjNkrFA1; Thu, 19 Oct 2023 10:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AA964060B;
	Thu, 19 Oct 2023 10:18:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AA964060B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2A9B1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98822408BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:18:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98822408BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sLeKriM8vIxB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 10:18:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A48E405B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A48E405B1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="7771182"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="7771182"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 03:18:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="847630805"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="847630805"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 03:18:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 03:18:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 03:18:29 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 03:18:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DxLUc32BtFb+68fbmpLPeFSmnN5QAAisQmqqv0ZT6dXH45O9JnfO5cxx1Ichz4Bv3maBZyr461I+zo1Uw+s4UDRrzAGIQnIj2TdwPiDkaPAEZiNtHMrFgl23K0PspB1qlhm0dUaADQfSaqPWlWeeDjtrxxZi5bLCcPW3wkbKZSczVZANAFc6V0ObQRz5i4NIiDPTb8bW8kufvxBWs0e2+W+XNsLnjuMacAk7og5pP9oENQsLIx+pyfgxi6o7Y4wJ+SRk/SmMBEgMlPfyVgI2GuoQFfaLdbwRu3qv7SPAe+wVHpsp/ACIBZnX+AplHdS9epz8Or1HSlApiyCa5qqUkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GqYr4J5xaYWN6Uzap2ZzVi5ccp97jKsUqc3lCkH5nvk=;
 b=aI0/09J2lGmJWYLBdbLTudVuphqZlLx9q66HwnOJ7LzbcCOKk0893gWQB1/gxb/NXzsxT8Ukfq5rKjrEsqkwat1PFbR5QrtPvzisTnuktqY1gHkJOKsRX6xGtzH+HsCJF/RKApkwokFGS3biQczLeOa9ScDB7j2SCypSugrbPHtvUnLoE7Zhs70o7tg+iVHBKG6DILZOcrObujbE9wXA7Q/3xs7ns6gz4xUyVbmbcQxUGVH59ljIQAYsL05fdIAcwbP+PZSCl+OHnjtba/O2Zm79ZtL7LbjhtOOflKkiXQIZf1SOqw+wFPI7T4A7nm6tUWfEzRpjWjVzJINBRXU4WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by IA0PR11MB8353.namprd11.prod.outlook.com (2603:10b6:208:489::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.23; Thu, 19 Oct
 2023 10:18:27 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 10:18:27 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 0/4] change MSI-X vectors
 per VF
Thread-Index: AQHZ6fwywtcgECosrUS5L/qCDv6wEbBRFyTw
Date: Thu, 19 Oct 2023 10:18:27 +0000
Message-ID: <BL0PR11MB3521F9C69BE9E9D636D5D1058FD4A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|IA0PR11MB8353:EE_
x-ms-office365-filtering-correlation-id: 50c71e03-257f-4cc5-a4d8-08dbd08cbbff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HDSD0rRuM9bJHYE9FJTPykMIm1uh0daod3H7SPG7fawOePPqjS/UEY38JBbuheDWDgkBQ5wqX0tGYex9MSsV6vIKchtP38nzXLUOIritN/0aH3Zf1een5h2nxYqVNrB2AxXycbadUnDE9gWRgQ0aZZhlp25Rapt5v9VOJjb2VF88vbaBqJ6oGwwtHUpIUmni2bw5zM70yXH18YuSPTEK4aQpE7+kAzQJv81hsDAkWBTaVILf2aXZgQMaIzugXC7yGn6aQGeWuzTjnN/K/dKXBgJjlj7jH6yvcJX+hRujhq2cI8iY0WaYK+f77GrJdM8rPyir9nogJmj4RkYPFCXxfxmYZ/7/RiPoSA42wyz/J/h616W85ip54sgToQu71VI9ogUeM2jOGQdb5WSmE4pjy3hlFgjFfTrj4yobBrr1iDBBKQUP+QFuuJ+W4vVlvCr8NOVtxFHTk6QezUYT3O8XM7rq4JP7MKmtsz2LKAcH9QpvOHe0o+KE00D9GhnG+eqK0O1GzVwMU39kHiIeXsstM2DOmJCLDOfBDRlK8oLqivtadu1a/QowaS3MszVFtwevlgXTjvEJkSYcW3o5VCnqtyz4EjY4fNZ7DNd8H8bseToz5kTSaQM1aadDbjYsmoI97HcZiGk4qevsSnNyFCg5jA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(966005)(478600001)(6506007)(9686003)(53546011)(7696005)(83380400001)(71200400001)(54906003)(26005)(316002)(41300700001)(2906002)(66556008)(4326008)(110136005)(76116006)(5660300002)(8936002)(66946007)(66446008)(66476007)(52536014)(8676002)(64756008)(122000001)(82960400001)(38100700002)(33656002)(86362001)(38070700005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eXB2L/yJMJx+MExKRvEBZU0GOy48HTaIlo72KNQMLvC0z5gO27vBEYNTLTL5?=
 =?us-ascii?Q?A2fCDeZfd5QBQUQ6RzRqOcwjy4Bx2hPHfI6c/n5vpcJF042wUtgJeWp9gGe2?=
 =?us-ascii?Q?S0/kTgN6xUNRSNa665YczG30oeGWwG0vPKQUshiMb15xbzAUauXiSRlzeZMq?=
 =?us-ascii?Q?ZmpGvmpt8VHxvgp4w6QpwErLm+fsclBWPBkkQjTlDz7erjz1IOupuAP7VMdw?=
 =?us-ascii?Q?JMrEgbB+eeGVHo1MQWvcp2GV0tg5skJEgiQWbQXrTO837NTQWaeEnwSQcpFT?=
 =?us-ascii?Q?D2Tym++FBC4oaAo2dmGDQ1S2j1gQywo5VoPoxgFzvsoxBcfb9umevRd8APx+?=
 =?us-ascii?Q?eYCIL4Im7cwui/XRlhFpmIlvgL6rb9YBP/XneAjunTG6mIT9yH3iBb5LMH1l?=
 =?us-ascii?Q?YZ2hGbhMg3evjeB3erLvvZ70YvNlb8fQ+EfKbuxn/MrvAU6q7XNscNzYu3oE?=
 =?us-ascii?Q?jEsQ5DQRGYnv5XydYKdKfMbcyx0d35yLEPdvtAqQ9EUoRr0yg6FsCUDpsExo?=
 =?us-ascii?Q?Buon2DRlhBPGgrxy8JyJswzA0XEcHICZJaYXLpcsXFxI4fU7iTLD/YpJjMfs?=
 =?us-ascii?Q?zC/d9lyB3TZgG7ZSnF1dp9yxmNfq8ioblIJpX+D4fW2U/HMiyg6bbtcKeLE1?=
 =?us-ascii?Q?Ucu6mW8JCKGJojTYQR1BYa7hjQRKQaM5zwYtzVTjbxlnNu0M2Ws9ggChTir8?=
 =?us-ascii?Q?36FVkho+8ztk4wSHcaY0TpPcDy69LBMru1PoF2l4OfoOfelDSvd3S0/8+M8H?=
 =?us-ascii?Q?9KfQAtYNwTU0jpZAYEJ+w2ULZIfxI9CVj7OtpbsZofExeYzSO2dH28l8RVPC?=
 =?us-ascii?Q?Nj8RSXgI/N3GoSC4HCfEXGUF2PK1v0LY0h7Uh5w6S73V0jaQv58pZGL6O0gv?=
 =?us-ascii?Q?yN37olh3MGQjS4JwNW93jVn7cnP7wOl1wu4ToNx92yiEYXX8j3QDbID08O2N?=
 =?us-ascii?Q?DuacPskTC+hriCI33zYiZ5NQo+/jEjpe/2UyqgqHmvXMY6eze9gu0VtI76De?=
 =?us-ascii?Q?5csf8y1Jnh/HioVwTTs1psqOOM/XW0pAocu4Gn2G3GwcGdhG0n2TfeRUZxO8?=
 =?us-ascii?Q?bnm+vBi8i9J9r67t6D3f8YsAWeJhDpTcGNk0hgtIazkIV9k+02eHSDZCXsgv?=
 =?us-ascii?Q?yNFK1qAKAAwU2N8OQvjTY1U8/bWoFy2LvwOrhK75sLvCs0eMNUk2vucJP5B5?=
 =?us-ascii?Q?uJCoqcU3NTQPjUeaLVLypZYGGoYWn/QcA+Llulyd6gU1gw/JhXk41ja8uZan?=
 =?us-ascii?Q?pNMl17Mpe8kLKLomcmqroS17UGOmiBt+RvL/HebB2iCYSrh/RvUUftFrGWwG?=
 =?us-ascii?Q?ZIyH2UFzTc2/NGjL2lJ/inBjT2qdY0wU8elVHKkRoKpyKKVHIlFKX8VVgaBC?=
 =?us-ascii?Q?HhYJAAhjY/d5LKdjMbMaIsNnHl/u01f0RufpYI3bAo7eAmnHLgse6odyHmRM?=
 =?us-ascii?Q?rK24iP9V2AbYaYpj96uaM634Z2yJQk4ToQd9j+y6YA7BNNd+zG6nNoqepahs?=
 =?us-ascii?Q?frtLF8E2PwXGvfNYHVzhasrG0LN3lekgWbFWpRAr8+f5l1gZD65zcIK8Zmcz?=
 =?us-ascii?Q?66U6q4CTrTcu7q4hQa0xGHACRZRrx5OwF7U5fl3Q92I+JUrUUEC/TKncAF6H?=
 =?us-ascii?Q?jQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50c71e03-257f-4cc5-a4d8-08dbd08cbbff
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 10:18:27.0563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xd3XbtTtLR6kcVJFDS/hUsHwse306jsg+ib4dMdmYfLlKGt4qh9juw+Q4zzL8FacdnjFA/Xvp0JGAvBwjqb69MS7KdC5O1/pFVu/+cDmA/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8353
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697710710; x=1729246710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bv4H+dMPbCqMn1Wtj3xw1o9MuhnWjcdtJyrMgqjE/5g=;
 b=ncWsPwW1DS6aTRfJxBG9SYvUmaSfW5vpcsrY7uGk77YgpRc4S8Apc6MJ
 7ae47uLUpoiIZJXlkOc6SitDlUrD/SEEWOnxG5XLHHh+t+0aGTZpUTOlf
 rUeIApRGGFuDEM25uwJSCoDSDPjrEPf+dfO9Gc6cYLqWiShCXoMNwtK/w
 UY7nlUXA+tDhCzp5hFVxhXEQpM/JXLlAxyJ+QHd1CHaj626IXmKCnZ/jP
 rB/xUzsfuUagdEygvbjeSde4wKJvaKUIy8ntfFOY1UP1l/+AxMkgpH4Zt
 3m06fUVKPER0STa/zasgTwpS9kXLTyq1RcRvLgyFazTXOpPtaTB72z99g
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ncWsPwW1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/4] change MSI-X vectors
 per VF
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, September 18, 2023 8:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/4] change MSI-X vectors per
> VF
> 
> Hi,
> 
> This patchset is implementing sysfs API introduced here [1].
> 
> It will allow user to assign different amount of MSI-X vectors to VF.
> For example when there are VMs with different number of virtual cores.
> 
> Example:
> 1. Turn off autoprobe
> echo 0 > /sys/bus/pci/devices/0000\:18\:00.0/sriov_drivers_autoprobe
> 2. Create VFs
> echo 4 > /sys/bus/pci/devices/0000\:18\:00.0/sriov_numvfs
> 3. Configure MSI-X
> echo 20 >
> /sys/class/pci_bus/0000\:18/device/0000\:18\:01.0/sriov_vf_msix_count
> 
> v1 --> v2: [2] (Sorry for long time between versions)
>  * rebase
>  * reword commit message in ice: implement num_msix field per VF
> 
> [1] https://lore.kernel.org/netdev/20210314124256.70253-1-
> leon@kernel.org/
> [2] https://lore.kernel.org/netdev/20230615123830.155927-1-
> michal.swiatkowski@linux.intel.com/
> 
> Michal Swiatkowski (4):
>   ice: implement num_msix field per VF
>   ice: add bitmap to track VF MSI-X usage
>   ice: set MSI-X vector count on VF
>   ice: manage VFs MSI-X using resource tracking
> 
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 257 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_sriov.h    |  13 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
>  7 files changed, 258 insertions(+), 24 deletions(-)
> 
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
