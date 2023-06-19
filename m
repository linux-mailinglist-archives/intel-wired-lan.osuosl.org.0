Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A98735001
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 11:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 037E961142;
	Mon, 19 Jun 2023 09:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 037E961142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687166874;
	bh=JvH5Cgi0Qg2bc/9uUOF/GdnKtNqGP7nJGOnWFyTrg7w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f6PlBhL1WXLK96FK06V2Ylh2VbbiJfCcB0xaHZih5tuXsBgvGCAA8tseNzL6oOpej
	 VklD8Y7uBUbKSRUsvgIeZ2E2nvsj0n4l3txsepT6M558VdfZKAq/LB/LJbn9XBuLcr
	 yqboXAT1zlaRHoFruXNc4+NtjFyEtXJpnwctb4Zy6n+GjFb46QXqip9D0zU242OKHS
	 XnD4V6GKNEh+CCMM6PYare5/5oaycNcixrfMbwgN4sIMnGlwuxD3wmUjOb2fVAv5kU
	 4hxtjxM/+ag3BC9Rfa7rbLIG9ARNPvEOe0d3OVWH11KSTGRbZ4TocIzFZ8vMZP14pe
	 WW2S+sExiRgTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id keweHUgY85K6; Mon, 19 Jun 2023 09:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A526F60F78;
	Mon, 19 Jun 2023 09:27:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A526F60F78
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60B061BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C902409C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:27:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C902409C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KcA-2huEXOKW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 09:27:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EFD7409B1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EFD7409B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:27:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339925365"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339925365"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 02:27:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="826534220"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="826534220"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2023 02:26:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:26:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 02:26:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 02:26:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EvpDGmKjXx+UHgvrodwlbN6CeYU8x4OEpML9SURblLCRMr7PCna2a2R0bKxGkHuIjgaFo733GVm1hSf6w+brNNNB6NGyl9RSobKz/AZwcCbrC6u1mF5TkgTeG8VVA4IcxvUwnOAlOi3Zxl7aFtUsIYkrH0i1/F0FlwpcO2zdQOK7A2k9JuSu94gXKrj+jdAvL7azIbzL/AM8hbPLi7vGlOrju817jdChPnhP9U12JJY5QV+Yv4xYbeDMnD91BzL8ueMbr/4MBv+46hV43XMr0vITzjjTR5yX7Fk8IiMdG3O1Vh2Wvgj92d5oE9mMHvfURxbDqQPLQmapR28yN1KT0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4BKTfZgmV0saY3V9LYtn9J5rE7xRQ1MjOmEcYCxZ3ww=;
 b=aXfI5e3tPSQf1qnQ4F6EQYoJ9QOQhsneGkR/cjhXKuCfLqNiylA+yrKY/TSIAabSixmimgDXDGEJZ3d9lPAJ7b6XOK6LLkOG+N+641fEeUR3f2XGy8Y3tpCvw+W4AODuFjSHk0TEtnwRCY9fwpeOE0j21RuueDmsM6rFJq3S4bJrg8WKuf3QpetoydwUQ5C8nM8JjaiIQZFhkShTBm7UFF4z5Kf5PRXOiiQ7nXlcDFsxFSIMtX1Qa17pxrGFme4vTjE/W1dw2/yER77VkN3GQc+kcbnYQ5z22TBRHZdnjtpDBncKsz2R2pZjAg1FRYOyzbhZYPF/9ycRQlKhGGqfNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Mon, 19 Jun
 2023 09:26:52 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:26:52 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 07/12] ice: Switchdev FDB
 events support
Thread-Index: AQHZneAVOvFLCJzIo0qysUI2WSMEHa+R5IZA
Date: Mon, 19 Jun 2023 09:26:51 +0000
Message-ID: <PH0PR11MB5013C83C5434EEA9D0144E71965FA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
 <20230613101330.87734-8-wojciech.drewek@intel.com>
In-Reply-To: <20230613101330.87734-8-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: cecbd4dd-949e-48a1-810a-08db70a750c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vZcI9hnkQeyFIdLpD9AkiAESfkIGPFBJ959HsUIgD/0e/MeOYyfPBpmbzIIyI7kSJLWJR280G4C8NS5dg/wUvWrXfLorji8SqUlOMTP/bzlu7FlVD0aKR+YTGdhDqIOxj8CiQqjk5U/WO3t8N6ScY4ijvZkFDqch5qpISvTAk8zogojS3Crm1QI2qtIJr4xb4XHi1//YIVf2gp91sxnjwmHwv6uyrxo4kfbhR0jixfGlyPb7PxnbaZNNXDFaB3i3FQa0iKq6TVzJ7Z6dg8FCxFpq3SgwG5od7liFxthBeid1mFrWG6fqCQOuvBDGgF0qIyGG0DVGTXeZZlH28OCnKHh+QbBzPfDUlEc3Tau21lNAKhkyGr4JV14pEh5bTRdRpG4/dV4Mv1ulUL+ehBgEUh8/RNAHC4fsALhAtU3SUuTcOdoPVE4GccrsIQf56PBeqM3qyI7IrSm26w1Y/BG18saCfcc9vGVCh4YktQipPEtzw6jYMARBAiwJrmyD1ZBgF559qOXq7l2mXqksg9GR4Vcf1ZycFpxNjHlovWNWlKh8kZuFOL/3D58SGH0QSmKHSWy27R+Zfm5sktaiRqo7nsMSSthwYRLg6GWynvfeS2rp9ajD0cinxewatF+ebpVs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199021)(53546011)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66446008)(66476007)(38070700005)(26005)(186003)(9686003)(6506007)(82960400001)(83380400001)(41300700001)(38100700002)(5660300002)(4326008)(316002)(52536014)(54906003)(7696005)(55016003)(478600001)(2906002)(33656002)(122000001)(71200400001)(86362001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GqzRUIHAayliU0BBtphUzbsWoMNnx6dd2iW74IZROpNElpnBgKINunUjCNil?=
 =?us-ascii?Q?uaiO7mdrZOVnexwwqqNQaUQ6kpHVPppIwvgex+5Cum6wqwgyD6OzGswdzyMn?=
 =?us-ascii?Q?9txBvMbj+T6ISltiuVSPRJoLYXQlWjPZDuqg+tzflXmV3l5PZm7j5fn/iNZ1?=
 =?us-ascii?Q?fBG/6LykujR8MbBBlcrtAj1RYTrTk0QI3635gcqcOwEhn0JwXYcSKvzHka4p?=
 =?us-ascii?Q?G3jNlAEszkaf/nLV+doWrNpbl5j7j6LR2ppVV4wcYWlAttChWWlefTR+uFgN?=
 =?us-ascii?Q?tMsdR6jPfbD9/H4CL9W2fq32MvlZNRBBYjgbOWiFxWr03sl5/QyHQAc8s+NU?=
 =?us-ascii?Q?KCwrB/rCuKbjDe3TaE4g0bomntgSCpZBDZHLsOCUgwaPwpgH1SNeHw4rg1RW?=
 =?us-ascii?Q?HTrC4e1y+fP6YuFsVhu33/UHAgCRpHaKFLn0kb/E1y4EIt+Ef3hMZpy97Dm8?=
 =?us-ascii?Q?PpScLR7M6iTvST1S5S10jK1MT+kogh/6Km7aTB8Gc0eJDROU789Jho/phb8o?=
 =?us-ascii?Q?GFXrz2J8pSiKQcIRKLZAaoEzna8LZr8XKTrgJRYUg27zpzRje38PohZWMDRj?=
 =?us-ascii?Q?5zrsI+5jdl8eCnqgS7fEHWx7G1oNyI+vdau7SPcpHR7FiYtWBsMR8meDluDI?=
 =?us-ascii?Q?Jumn0QYSqr8muC4ps6U4yTKDJ5zyakPPGLTRqwCKiPo7UqrUrxgd1g+3z3mk?=
 =?us-ascii?Q?5G9M+BKB+B1IF/OZzv8BDwsxOUxucUaP/CjGAq4qUgxT7meleXfUy/GHxo7b?=
 =?us-ascii?Q?OSe/k1GgeBQQN983l2uSsbeOFkh04VBIwGTnrxIldAI9gV7LGEze9atnTlCf?=
 =?us-ascii?Q?PaenysYxgVMW2fobm79C/OXWz3NH8P+r6NOkaknj3YQl8nKyPZ5n7dA4lr5l?=
 =?us-ascii?Q?O6bUbhzr5LBPPLQPm10vWVka5FKNFKGv2YuPQun2rRj/ntatnGW6/gm4O0+2?=
 =?us-ascii?Q?5WpQi7v23oy9MR+QYvVv0ipRt3Ba2SqE9QOTODNfv+JMA8DmuWJUXoAUaRjp?=
 =?us-ascii?Q?h0IVd2gcB+2mMsDVKb2MDg18Vddg4iqbgXOprhX3a+gw9sr1i77BVd7OA1Ls?=
 =?us-ascii?Q?CFXyIc5DpukQjct+7CXZ4LPsRig+eWCZvKZ0UnW7rn0HkiqpFMZNeithQeNV?=
 =?us-ascii?Q?kcnn412aqzTZ+C6NCaEP8wGCsH3RbxO2A3Y0z1ZEbIvigKGmn6aPdWvHPLJl?=
 =?us-ascii?Q?oGOhpNDuvUDVjodeKyH6DAhjmamGdYZGD2GPa0r3STpF+Qv+J0ryrakuQfNO?=
 =?us-ascii?Q?ZB9itMlgJM/m5BQ4jl9mAn2YPrdHjKbmKLnpQkYkuPVcTpzgcvPXtnP3R+cd?=
 =?us-ascii?Q?9s/XssOOUC9F6j26cTEXqWTu4jnwfXgOgIhJVHxxdYliHznMxNp/r+535r2H?=
 =?us-ascii?Q?rOyXvxdHzyJddA/0EtXwGWDbGcBjxl+8uw/lYqGq6J9rlerI0KZmPgxZYOn+?=
 =?us-ascii?Q?te4P3o9fL0BHVI48BV1zyORk8frHo+mts2vUL0t4A5MoSs7Xf0GfnxM2p9UB?=
 =?us-ascii?Q?ohsj3DothJMmvvd2r0QGWeTu5y4DOLdHwnOKKaM+12fztddnhcmhmmh8i49A?=
 =?us-ascii?Q?seXZtcw74CL7ileua4iCbm/Te5GWp0t0f5W3cQVv8lo6sp0Rawrcr7iCZ4Fr?=
 =?us-ascii?Q?Wg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cecbd4dd-949e-48a1-810a-08db70a750c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 09:26:51.9671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IiFjul1ZWWvvFCuMVKbhWXOXEUQu1ESi8BPkWMOTqZv3z17KEZ5wDUFRafTKTBlb/393jzEQ2FWQCBcd76rlAtL2kP7QPbFNV8SuBJzWm5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687166866; x=1718702866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H4GIrmL0qSD0QTTOmvGLvDODU8C3N2n1bsRpSx02JsU=;
 b=nQfkRc0Rf8gufb0a5AdnrW57iOpk+zXz6b+NDJUGXWmwZ767p8A3FCkP
 7JZmB4LGgPrzRulZ/8ph1xeppPlybTsTRw8nDCHREqsCcS+G8HxV0GPSs
 BdWD5xJzS1egaG0sjvEvcDskciOeDXU2sltIJphXSwkKkzBPEnT4WCunZ
 DhvMlfltlndUGMAVkEAnRDZxf5tr/ct5YL66enZab/V+pvd3HTEI3Lws2
 pDdvms+iD37ilVjPBnO3OqunmwsoA0kNfLyweLFAHDTXyX38MfqHljdGG
 bBmKiwflH8e9djNWiq5M5X43Ci6x7/nF+tHO+QG7Gr303XK143TccWe7I
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nQfkRc0R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 07/12] ice: Switchdev FDB
 events support
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Tuesday, June 13, 2023 3:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 07/12] ice: Switchdev FDB
> events support
> 
> Listen for SWITCHDEV_FDB_{ADD|DEL}_TO_DEVICE events while in
> switchdev mode. Accept these events on both uplink and VF PR ports. Add
> HW rules in newly created workqueue. FDB entries are stored in rhashtable
> for lookup when removing the entry and in the list for cleanup purpose.
> Direction of the HW rule depends on the type of the ports on which the FDB
> event was received:
> 
> ICE_ESWITCH_BR_UPLINK_PORT:
> TX rule that forwards the packet to the LAN (egress).
> 
> ICE_ESWITCH_BR_VF_REPR_PORT:
> RX rule that forwards the packet to the VF associated with the port
> representor.
> 
> In both cases the rule matches on the dst mac address.
> All the FDB entries are stored in the bridge structure.
> When the port is removed all the FDB entries associated with this port are
> removed as well. This is achieved thanks to the reference to the port that
> FDB entry holds.
> 
> In the fwd rule we use only one lookup type (MAC address) but lkups_cnt
> variable is already introduced because we will have more lookups in the
> subsequent patches.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: declare-time initialization, code style nitpicks,
>     use typeof instead of full type name in the container_of
>     macro, use PTR_ERR_OR_ZERO in ice_eswitch_br_flow_create
> v5: move dst mac lookup assignment from
>     ice_eswitch_br_{egress|ingress}_rule_setup to
>     ice_eswitch_br_fwd_rule_create since this was duplicate
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 439 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |  46 ++
>  2 files changed, 484 insertions(+), 1 deletion(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
