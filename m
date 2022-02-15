Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5B84B6238
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Feb 2022 05:45:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 968DE828DA;
	Tue, 15 Feb 2022 04:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AIFvdUtni3cA; Tue, 15 Feb 2022 04:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 984C9813E1;
	Tue, 15 Feb 2022 04:45:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B03F61BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 04:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CFCF813E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 04:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nHT3KVZrs3lu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Feb 2022 04:45:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 446DA813DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644900322; x=1676436322;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zaZKs7RbEsSOPyACAO7VmnhZPHJFHb4r5ql18ciPpms=;
 b=dxGmoxSDK6ivlWqZi8QQ/TwyfUoLJHDWEITcX3g+Dfvd9c2TUQNcMrLy
 7HBI84PgbFHgnAeu36+32YP7OOTibRV9uVWqn97yzOlgl5kyr62/Lugf1
 +8Ztyw3X0jpDLdbHZILdRHHiRPtsiACIjAsIzZsdQRQ52UXHKlEWmIhQj
 0Q+IMYSBo0BLVDk89GWujJT7PWt/Qh40v6TZtMttbdPDGEd3WoYKFf252
 BhSBVIFccpz937SitjchNrFTiD2gJr9A5yO0GaQk7FCTOAjT84D6/kLrm
 WrgQ1mznM9J1jlNEIRkpWQ+Lf5cyr7RPzKtXsyrZrW82JkzPL8ihM4haN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="237658824"
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="237658824"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 20:45:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="496755443"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 14 Feb 2022 20:45:20 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 20:45:20 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 14 Feb 2022 20:45:20 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 14 Feb 2022 20:45:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=blHEF0BUqsEpz1A/mORAVhRBqYABBz9UGhsEA+qxlczq+p14vk0b2k60TYWzJYNASvfLh+IzWqYfeqR9/NE2B9XtWcZ/xb3f4tV5xCKviitnJcMdblwPcFNUatIIXCGoH2gir+Xc9ZhyySnR3pj16pWCPdTCI0yAZKZ54BWXgIK+aGNJ49O8RKM8NC4zuUGiUOOrPn+8XU2M+9BVduIvaIinh37kSvUwNQQXrQUInGUTwrVSZMm8rr3Zp86rdsTtfFSJ9o6szLsU6foMykxxNTQUDiVughE6jA3qUrs3SlCGzQ3c5drgbXFtYeCswHG62RToe9jyRM4tVciONtsf0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeFhCbFyjw2rus4nXrJV6ATgDYJVf9c8+805xPQ6hVc=;
 b=B3dpx+lNgm1yJbF0WMxqVcu+3rPjvS0QHeHWmPO4or116EyQwlsggEG9LRZAIOE4XkUeYPxx6lyj4ZuikmagTzJfkjrC3UAZ8I4L29luxpcGQnvMTw9yRk2s5UvdJvTQvkmyGGPPaNau9lY+eDRaqOX+vpOqkEuzVtg+DbEUNcxWMusCs6+vElkiiBIfdS11/Ch2/ANIxFAGAfnSRBbc/U4xjTdYhwTZKHcX8cF1xcRh3BZsBXg4NZiLSPz3L9VZMlhoe670QaRyaZbJAaqpGhZ/hDp2iPdzqnkhYge+o4QDUUjOjQb0EQXDZXpYLVJWuJsOgGakB61fvfuixTA9ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CY4PR11MB1573.namprd11.prod.outlook.com (2603:10b6:910:c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Tue, 15 Feb
 2022 04:45:18 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%4]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 04:45:18 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Match on all profiles in
 slow-path
Thread-Index: AQHX8zqtRX5YIyleO0CHz9ogqSFqN6yUZw8Q
Date: Tue, 15 Feb 2022 04:45:17 +0000
Message-ID: <MW3PR11MB45546CF36D516F8D5F0C3A2E9C349@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211217113625.31128-1-wojciech.drewek@intel.com>
In-Reply-To: <20211217113625.31128-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c8d51a3-bb30-4678-fe67-08d9f03df72c
x-ms-traffictypediagnostic: CY4PR11MB1573:EE_
x-microsoft-antispam-prvs: <CY4PR11MB15732E220E07D3B2874550E09C349@CY4PR11MB1573.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sMCdwstiQ5M1u26GLCnKR2miz4WEKy6ugdYJLlXcEiYPe1IZMhxQdJhBXRicMwBFPahANlpxbzW7X06iaYlrEZjeGsvN15E8sVVfZz1qh6WdCO83hQlrqD2I/FC43P23itPlUz1a598QL0qucNorpDDTANVBOo0cJdE4KKkpaYR2/ry1hJx11kI7ph8uuQBYHMDmo9xkAivHeDygu4IZS5XNFb8UZbHbZ9ORT/RlqJP2dBTAdj7Xh/ERGBygLHudDuFz2QOd9gVXLO4KpEtH1fZ3IMtITf/7izwK3JTKAkuHE4t5pdMwizv/dDKoBbUXg020BmQ8CnrUpVl3QQKT7ujRFeBBJGkDtSFtGA7Mw+bvErTmrAFqTMVH0by7MYkeCrmh/c2Q3X7yzpkzRyIHA4uKi3kbLR12Tf+n/02Ig2nbMNFLiFkp6UlhEaSQsx8nvThRARy8sJmD+LAOAJ0h5bW8yboan/bqq94KZ9rq6Pvozx0m+kX1PMOQij0cZdBYgaFc3FJgKDTqJx/IzG01QOTAJ8L3JWzFj5MKH9dfWLbytkd9/8pqdJG7p+EGjfmwl4xb7a8TudNVbPozpo5WOG56GrWm5q1fBk8AZdVQ5o5yW8usSs8zo7QT67j8rWBgfTwjj8PppgwOs4uioOJ//3iDozsnv/fH4sqJLQhqh4prHzOZkwc4hihfC6qAsRU6mlH9cfWJHhNroXyM034aPw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(8936002)(8676002)(26005)(76116006)(86362001)(66556008)(7696005)(9686003)(2906002)(64756008)(55016003)(82960400001)(122000001)(186003)(66946007)(66476007)(6506007)(38070700005)(66446008)(316002)(83380400001)(110136005)(5660300002)(508600001)(52536014)(71200400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yIBDcGO+UoUlufyKNkvX0+pS71hf1jHzwiO0y39tir+t38V/aIxzcQ4ist9b?=
 =?us-ascii?Q?H1cLxuCk/oN+7CBC6JHKUpymR10tbPNXpwzR+n7VQwQA1mUJmtsC8PITOvcr?=
 =?us-ascii?Q?ZQlgaK+G1zdGMAY2nmPHU6+mjTu2Tt+awSMoL2RlwtKrVcnBcG56p/3NFNgQ?=
 =?us-ascii?Q?xBFV5LkbtXQoCgpLuUSF105+Kgo3IN9SqpalYM7NuV2UZP7DC4P29gSetk+6?=
 =?us-ascii?Q?hxe399vL6D70pfmrtHDUalW8Sr0qShAd3lOi9f9bZ2nwRkQrjSucwcuj4hVg?=
 =?us-ascii?Q?cmx2syGufu8bk+kh0ZYjIdlXhGmT6qn/Q4r0xskNPYJkhgiPfEcamvuIsxGA?=
 =?us-ascii?Q?TaRxZogKn1Tzu5mXiTA0jraqMGmJCwUShZAywKhvvkD3SFE4o0KmFhCawaiG?=
 =?us-ascii?Q?iN9nwXRpjcPLz6411K46PevOWJZQ7GYoeIajj2rhNAkP4kElpj+nvslFhO1q?=
 =?us-ascii?Q?qIU1kYUfniqc+2B4fArsiKd0EURHeDmunzd1joNRzf3bcT5cSXrJKa6kNWFE?=
 =?us-ascii?Q?lAj48e6LHovNE5fjQhhZOttGOBSfI5L9bH5r9mR5RysHuaVqk3DhsSSL3HDW?=
 =?us-ascii?Q?OrXELXqjN1j5FTwGHKH8/uwDN5jEfhFCzXvA2cgPPEoA0rUsM0WSki9Pope/?=
 =?us-ascii?Q?bx67dk6pvLqNFP2rHhKeGRAR88rea5MlYBOubSjXLUxZZOoDb6f52CsyY0E8?=
 =?us-ascii?Q?YtjIpQ2VyswoRH50vjRwRtsZNccaqR/H5MF0Ni/WRDmuIst4XEoHhs3vHG1n?=
 =?us-ascii?Q?QRaiekFkhgr7lcQD5pyRrRm+Lm7Cby1Hf5H/P8zFWFjv5Ff+TEVx9FLUmMet?=
 =?us-ascii?Q?yZS5Dj+I84aW4KRZ/DgPepv7TGHSorjzKDAc1A5WqT7ZthI4eXNsbjvQTJA7?=
 =?us-ascii?Q?pvdLk5MkpBRRXgpoPM2+9D8NstmFYZf5OD2oNgJA6UpAXmWk4I/b+KM28ps+?=
 =?us-ascii?Q?PwJq5WGFRmUgUjYu9Aw9fBqipdVeU8haCpgIr9V2EzqS6n4QgrhKltq743t3?=
 =?us-ascii?Q?z0einlmKefujrgK4mZJyp6ItsJNR3X5WwcpGBamLDDyOcdGRyQQftsoRjpqt?=
 =?us-ascii?Q?FQucPTNQct0wBPBfD91oJ4w7stiVCkGA2I2XpJItSH+OfLcjmKB7OtRxyrsB?=
 =?us-ascii?Q?kV37obvHk1qN9vpHa4U0WbTuNXmD6qyrNHylM3rNRBhT6Sl+0AVgNPdn6AZw?=
 =?us-ascii?Q?TEHPMMyysYfNFxCBVXAbn28VOEGZ6QCcJasotSlYm2seZp35geyBeAVMYzqZ?=
 =?us-ascii?Q?P1Qt5AgfmFWB2bIRKQ0RQ9iRLUujCifbs2fyz24N4KU/WEoPCAGc867vgF4n?=
 =?us-ascii?Q?vI8XP+ZppDzHaSOAqcRvZExBz0vjnwl6kowxoe/dYqk7dNQNmPDUD9TDj7k5?=
 =?us-ascii?Q?ql6R0EaGBdrO1jmF/dW4ROrZsx07K1YmEyFRrm/MGkotD/Hq0RPH7pbXb8BP?=
 =?us-ascii?Q?I7+EBFiVGKZkXV9PeasUSN5R8wRN9C03fZlpw1VlMC4sjvkm2cmC2FNpgW09?=
 =?us-ascii?Q?K6bWdwhQYndNt/WTl7RE4cpN9nPJ5730tjvg/G/bHMpYwX4wt6otgaQNArEm?=
 =?us-ascii?Q?Jbc0XqCHBhokFnZOm3smZ+zqjWSS1Y9cH+v2n5/maa3ylDolycY+wPdkaPVe?=
 =?us-ascii?Q?k24ZTe7Of2Iw8fgPdYNn5vpCROcjDGaxqasOA8E2xLQ5Kc56EyCiHIqsJgFG?=
 =?us-ascii?Q?x11v+g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c8d51a3-bb30-4678-fe67-08d9f03df72c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2022 04:45:17.8823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AbL63oN8EKjoJlw2eAlL4xw1Yaob2ylEaBFlqwepJJxSNpGXy3zh5nNVt4JqAn/vdvH1snbFUA3NNJLbIVbdLRv6/9KE1xNC7/3Z2zoki5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Match on all profiles
 in slow-path
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Friday, December 17, 2021 5:06 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Match on all profiles in slow-
>path
>
>In switchdev mode, slow-path rules need to match all protocols, in order to
>correctly redirect unfiltered or missed packets to the uplink. To set this up for
>the virtual function to uplink flow, the rule that redirects packets to the
>control VSI must have the tunnel type set to ICE_SW_TUN_AND_NON_TUN. As
>a result of that new tunnel type being set, ice_get_compat_fv_bitmap will
>select ICE_PROF_ALL. At that point all profiles would be selected for this rule,
>resulting in the desired behavior. Without this change slow-path would not
>work with tunnel protocols.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c       | 1 +
> drivers/net/ethernet/intel/ice/ice_protocol_type.h | 1 +
> drivers/net/ethernet/intel/ice/ice_switch.c        | 4 +++-
> 3 files changed, 5 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
