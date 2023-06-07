Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0F7725493
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:44:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F87B81EB8;
	Wed,  7 Jun 2023 06:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F87B81EB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686120265;
	bh=wqZU0+bdWJOIGWvy10lTFyKoUf7PPM/Djw96Bpxo37A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o61nTYxq7tpRS5YoK1spXPLaFFi0FDAprCc9SR+OD5WaHHmuwZ09YKOETAKTr9f/b
	 etvCZmBFbsWuubq41EMlh/iJuJsT7mk9l+urOh1ApXG13rKQQkcSXYlR3tR3dYFT7G
	 IwX8z76HixsGNF9L2iMBymyJzV7L3xso5JoFZDmKCrTg42UWzcrxUVgCX0kLg6bzkC
	 ii59N2TR41xvdo0/q7xrcd7g4VBxG7NFyBPCz3eZ5ogwg66fTDefBjbYI9B9jd8/AP
	 Ok9x7OOnElTLzLMU/WGJ8jwzjJyMOAgA1idYtaZ4DpIXHJnLEun30j+du+jwTeu1u6
	 D4bt/ykz9UCtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KyLagjaUYplJ; Wed,  7 Jun 2023 06:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BF7A8140D;
	Wed,  7 Jun 2023 06:44:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BF7A8140D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4436C1BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1607141933
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:44:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1607141933
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aHDc1bVfHdgN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:44:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7F82418E2
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7F82418E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:44:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="360228065"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="360228065"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:44:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="883619309"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="883619309"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 06 Jun 2023 23:44:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:44:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 23:44:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 23:44:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ef7x/+P8Ms0YKppMyHTwq1YEN39uw5TNb1lyLI7kSW1WjEY2MeU2CiVbDBw1trm1zcaCAOiWM320ynBN0t3LU8GB1JXGPKM03evxEBjNGHeBIzcpc2+1YMMLDqVPuFKhTCN32HPaLjsY5MEj8O5KhAvs0jWHqSDEoNP06yXxBA8q9kdYQOj7yeNh/rbHwsr93s/axIyXygb2ZweKzgEgfjP7TD3qiG1qAM/IfpCv/4oGTHOwLLQUbEeCnFDBpDQTS75pNkOyGYlBBEYcbmdYtaQ8GRSQHJP+m6r7UoVQFKE5CCR1cqjTP6uTsKpNr95ikiWJO5cQofHXfiFhb9ddVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AT1cwVr9mDWFZqxrItw9vFch4ZIQ78VSuyOJz2k+pj8=;
 b=Rr+mvIzXPCdECdf5BMS7hn5+suJiy9+ya6WnJ4SmvWwvTM5VCR9gSav5xLAPtNFkkw/iTLMGqiDOgLJm0d62lniHTGCS3DkwCaJxGBZh6xg7bQXDLO9pM5dWmPky9UVWmS+5qV98N0Rg3isywBd18xT3ZQ6U4BIXrPNhYheKGl0ZDqTS1YKwYDArPnu7pF4Px5v2vxRv0vURTRa+n3cUCPpl+/NqRmlq9L4IOhTLFZJeUTgLhZAFz6r1WwCXHXEREA0ZSL66JZI9o2hzEMaQlPgd5CNGMlJTc6dsqADv++DAkl3YbXPYmIdPlcXn8XZZb/W6kBpEwERySNzJLNIT5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Wed, 7 Jun
 2023 06:44:08 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 06:44:08 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Fix mem leak when
 creating guard rule
Thread-Index: AQHZki7Su4ivEw395kuV8JD2iiR8A69+8ngw
Date: Wed, 7 Jun 2023 06:44:08 +0000
Message-ID: <PH0PR11MB50139FA882A1D51EB82649B99653A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230529130806.81157-1-wojciech.drewek@intel.com>
In-Reply-To: <20230529130806.81157-1-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB6676:EE_
x-ms-office365-filtering-correlation-id: 70970efb-200e-473d-aef7-08db67229847
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wv2Y4uDaXX0P4tAq1Y3ytRS6QeOdAeJGDDnKzytcFFZKwu9XSBKoexhqAq2UV8aXGucepnANykXp/XXwpLNph3/G57DdR/xdu0dgCOl/63L/0gbspU3BD/pzNLfyZv0clSodZfQgAlW+WjN8EZMw1mCKmeRSD/+HylmnkO/Hm4+GLmkndd6Jk3BkaYjsuOWvs4nR1ur60B3z9ttQv+Z3kvWNVWa+8uXlBvKKJ94vGOWUNP0Wjy19v3RgCC8/gpi7ef5/xDnC3Xvq7/BTZcfA0FCzilbeTI2oi6TQi4wLCNXeQVlFpQMbyHcTWOf2LfbK9MWIY+LKQu/sMj9DT0Xs8yms4LBuFB7hdftKijNYLppBBq3Dmvm7lwUYaa+XY8cm36DfW8dMZwJbXoklWFgnaS9Cm/fEAVHAHINPRNiC4TBQhDmiBybYKuuYt4rGudws0k4XPqjCi/d4dBpPj+Hg45UHHKf7Q8l2pBGvQRdemW1lNGnuZf9ZQWTjsD8cFGLcfLwkGGdhgpgRc5gnDms4c3c1Cw1gmKYhEvLrFbx5dFtA9hSgTQ44QrYmiBUQShDhj88C2jSMJRnfzL7RH68bvjUNIAZfvPxr8f68F/UJbVw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(39860400002)(366004)(396003)(451199021)(55016003)(86362001)(107886003)(966005)(4744005)(2906002)(110136005)(41300700001)(38100700002)(33656002)(52536014)(8676002)(8936002)(5660300002)(82960400001)(4326008)(316002)(122000001)(64756008)(66476007)(66556008)(76116006)(7696005)(66446008)(66946007)(71200400001)(38070700005)(478600001)(186003)(83380400001)(6506007)(53546011)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sxDwNowjq3JAlx1gBSq/i65iHiRVBrq/dO9eGwDWsuenwWBiMwFJ2Z/KlT7t?=
 =?us-ascii?Q?2YHxC/5cakGqL9recoC72WF9b59aetwe1ygvqLW27NKQXoS0mV8MRSdfLXHh?=
 =?us-ascii?Q?mN6lGyE+5IPe9A4nL5QvTcgT6irwMaAcyRmh8yqqRq+rhSITzIF+XVkoDAlZ?=
 =?us-ascii?Q?rpExXBh5dAe46pNKugFC+ss9Ozgf+nKI8RsmGOTun520s+SOPCVesktonE7y?=
 =?us-ascii?Q?f4uI0Q+EFnQ0IxSRusnieUAcMKsfqhEhDMy9P3PJBbLgSZWedpOeuZdFI3ZX?=
 =?us-ascii?Q?owI7ngp7iD2dftotUmmJQWdLaoctjfcq3ir/52/zlJG73rBAZiUO6dqKwMLh?=
 =?us-ascii?Q?yShrlfxiWLg64N59KTnIa91NYEMm/wxrpSjwNFShTw7edRcraYDniedybuSn?=
 =?us-ascii?Q?IBCD5FBKc2NUTaGmQlCAhgC3mRBQmP2PyJBN008ex9OoIawjfWcLByBgwQtL?=
 =?us-ascii?Q?CmyzekD8KF/oknBKEp7cW4r41yvxFip9+7oxUGDLbpn8kP3Z/FZPeAPmwsE0?=
 =?us-ascii?Q?7ss8iZmgJWRo07Ju8xhKRK4HyGWei9YT/+Om/nIG/5LoCElsli8HsuKMGPRx?=
 =?us-ascii?Q?j7Pu92rl7OSSBzMKkVY0uOarUpjCHBiZarEjvs6gPjdbKg9AKC7Dyznewj2K?=
 =?us-ascii?Q?fABvWYS/4QcTFuD+BOzvF7HzzFLDRkQl9eGjVdySgBk+uxM81QqaX0WQ0E4w?=
 =?us-ascii?Q?uNxxNa56oZRCAbIeiAkQthNZxh15iQ+kLXBqODDQeBdkt86vJIPjFiJKNyW9?=
 =?us-ascii?Q?1b49ZIVdEXI2oFMQEuLrfU1qtmOfQqavphtTjlUr+XmdYRNvs+REIbjAlpEy?=
 =?us-ascii?Q?dw8q4uXIZ7zcxZJiSd/tRxvhd/yY6Mgw+EHR//Xu/LbFGX59kgg0gplwMvGn?=
 =?us-ascii?Q?1WcnM6m+t8oy7rD8/BXeByuqI2T4TyPSRZz8Bqxpa/9xIDmMcnHFze9/0Gw9?=
 =?us-ascii?Q?+ADT/9a42UdHg2XdxmPMLjEZyDjJiit3zQhPVhYSVTkICpkwUJ/cswne+B0l?=
 =?us-ascii?Q?5YylrPf+TAlYJVY99cly4tpegyeqFwsKtrqH7eyjQKU3pyK4RgpTYKEZRcPu?=
 =?us-ascii?Q?lZZqsYnY3rDOidjvYpvVedNuBc98P0GXlvRShO7IhGxLApntF88qdl7zWBk7?=
 =?us-ascii?Q?vxoK18kfcRKraJmYiF/ziawo9O3UXCcyL2NrEkLHOpgF6cS6RWkKb2BliocR?=
 =?us-ascii?Q?7Hr7aHuolg4MGLVKxzazUJqX6jU9aIOJ1/Q+ncuRM93YheeHMJJlzZaFatwB?=
 =?us-ascii?Q?Vft3Jtz6B+WS7d7nfrPGYDfJwjRy4v7UpNLiLWXZDbaz6+OLAHHrgw9Bnok1?=
 =?us-ascii?Q?PivE1Pz9ladNS7fVbrLP/o4AGIqGVh3BculBzCiM1t6exEiZnIfutmXQz8Rg?=
 =?us-ascii?Q?7ZSPHvr+9/923TRCSCEFHtH7SW2Zk0Upba4/4S6L/lsToXbJFC3tQUjGlv2A?=
 =?us-ascii?Q?8Q8BtMJhZFWHtPC8YCZEq4R0whhtNfU12c6H2M7VXIKOpJiEik/u4YmNU5fe?=
 =?us-ascii?Q?zThrYdCpWWHodV1+15ZHQpe1GQkbuzJ15EuVgszvbzj4pSkDWjXgFUYIZGOO?=
 =?us-ascii?Q?6Pmk2R3p13ZNhcIsHF3NRr1NBR1j7RX/l0kLnd3UswLiGEAwXk34f2ZH+EPw?=
 =?us-ascii?Q?dQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70970efb-200e-473d-aef7-08db67229847
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 06:44:08.3845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5IoiYLjK8K9/oltDKaUk8eIVyjOrJFG31A6nLH9peAw2IaWF8irv4AnC4cEseASBXLahR+5lKf+wUYQVfYAm1ZLGN+0WpKjlWD5cytZtQzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686120257; x=1717656257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jwo4DrLhc3+QvX2GowbIEea0wGyfsGl7cXYfMgDGCUE=;
 b=OochA/JebVxx7e87YKNcGUAVoknCzUYm/lGHckY5sqShGwpe0Z5dIbX7
 FfdXg3z85NKJ4bqBe9IoHBJM2Iz0VvLyT5rXJhxUmT5UYo385JvMd/5zo
 RB97nF48t3IXVgExXq94PxWjxOGNq0LoztP3FbIXQ4+0lRlMzznPk7nXw
 TLnUb5Usa1jYPDGQcD3zSMTAKYxFsR2RE4EU66ejwIvPHlNwM9MocTT5p
 KlfZQeWFzId2wBUy1yW+VGrzs5Rck0nG05XfozmkHIsxBvwTaBjODc5nN
 ARq9FQ41GT6FiTopMGkf6djm67aPSPwNrRSqmmOVhlmsOUL9Yo2V6KRqr
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OochA/Je
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Fix mem leak when
 creating guard rule
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Monday, May 29, 2023 6:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Fix mem leak when creating
> guard rule
> 
> Free list in ice_eswitch_br_guard_rule_create when rule creation is
> successful.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> Tony, could you squash this patch into
> "ice: Add guard rule when creating FDB in switchdev",
> http://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20230524122121.15012-9-wojciech.drewek@intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch_br.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
