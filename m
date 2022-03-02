Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3A34CAF06
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:47:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B63A4408E9;
	Wed,  2 Mar 2022 19:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7wN-XtykwTP2; Wed,  2 Mar 2022 19:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BF36408D5;
	Wed,  2 Mar 2022 19:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BA821BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4827860F1E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MMG1a_ZSE3Y6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:47:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95A6160D58
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250459; x=1677786459;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=slb8LXbzALF2ip5KCkKrfN5p6SdNHawOvx2cwr8X3i4=;
 b=OIe0otzJ9rX7ssvToNKFnNvVBarYJ18eLVQqpY0vjjNc0hhJtJS6oRE9
 5dJ1MzoRmR/EDyC0OHeME+s46SA1BUriU/IR01eoyNG5Oby9g+FJFE39u
 kpazCF1I7A7UNYx6bPxF2xDmW5/sXdndlzIlCcfm29myzGGKpXStACIDG
 wEhJv+Gq1KIf5rCL++Fbmb0+xFoYdRL9zIUZndrViHwSzlyWDAR1vI7Vs
 HO9C9Iq95zXVCvHQjw4cLt2q7JC9mzhQUassVTy6IHPXrBruSingW1gVy
 IbZaPY/CqGMdn0vclDsPaLT7CsEbLjeBj9A24G7m2c8xs5cYoWxiZd3NO g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="237001896"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="237001896"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:47:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="535517156"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 02 Mar 2022 11:47:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:47:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:47:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:47:38 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:47:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kwaKr9Nbf2/iVmjiw5Ux1C5Qpmpn02Y8DyQcf8Ec2XLBzYng7hThTywiuWMQwUX5dITeihxwzed8X9GVTRF+kh9OrPv6KCmSzD4KfoUMcLfpLIaL+8ss1/LN3e7DK9e43nYZ6YSaWaiTr5JorNf20Dds/QKSh2NZmsyIy1CErp1/Xd/lkslpvZgslPD0UI0xt8w7nbLbRnkhAkFEorqFjI9jwM9VCIVySPgBvlKwW027mbyiX9vcJU+Xz3F7PjTBt4Yb0sL2xvym4CzjIZ9hL8mLq5yYiGGC8hVtrGaCkcLz0o/xVKsqWEar0Zpt6Jhr/OkKbOpDS4f37/a7MU1PYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tZu4DaQAEMD/QTLnbzoqZCzWDPsayKk1MhDFwfrnrdI=;
 b=PKkoQwBdukl5xtBDjh2JXnkwzFIVXo5tCkKtULxH6iXqDpvX5gyYCtoQ2+EFrf1vWTxiKdZ+M8Kjmy7RRxUrjoAWzpMhEb0r6h2XA1mdKXrSJz/a7eAytJMqbTEzD3CiOwhiIYzESbjC7gZnsb4X7+kPgZy9Fj3jWvYFjjGJI1RgT4ymrxCtmJ6j3mPYUQeL5UlgJ4ayt8oHTzHvG2cEQeVavnvnY5oYRlKTKhUgsp1xCNLy0r1KNZuODappmakQUi7Y2jjvZoOMffnjDYbrMha9INmhvWtHekE3tYgiM5jGHiQYBU1xhQQNv/EinivFPzeTVutWQIvSpIVmNQeppA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by SA2PR11MB5195.namprd11.prod.outlook.com (2603:10b6:806:11a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Wed, 2 Mar
 2022 19:47:35 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:47:35 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 17/25] ice: drop is_vflr
 parameter from ice_reset_all_vfs
Thread-Index: AQHYKExP0vK/cG6X/EWAGJ0nf/PVHqysjAhQ
Date: Wed, 2 Mar 2022 19:47:35 +0000
Message-ID: <SJ0PR11MB5629BCF8504F2D6738B21B2EAB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-18-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-18-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2249b3d7-bc5b-4b62-cc94-08d9fc858016
x-ms-traffictypediagnostic: SA2PR11MB5195:EE_
x-microsoft-antispam-prvs: <SA2PR11MB5195EA3EDD34C4D74D7236FBAB039@SA2PR11MB5195.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T3CpEVuW4RxvuLpNydSE4YTWIP2GytuVG+biN4w91QYoLic+vrYu6Y6El9WPlLaXWgDXknEAAXCaCLHdokyMjmJ2h4vWueCEqlkG+SBz5Cvnr7fU0/W9s3A7HpCv0vfVuOJ/YjuEtGjUdaYMWC/YTiyUXG/CisJ84WEZyUzj4HpdnQz15T0NgIeydWnMK80HsMErKNrFMy15BLXbBCpKnJwkV8TzLMWydDzhqM3iKhHCdymfD71uZjzKZIr4zMpQ6qHr382X1+blgKU6mHiPph652FEHOcQmie2Kj6/Q0Bl9mJ7K0LaFzFFSd7F9U+pXHYlIWUAQK5MEwDJqchKzVEa88+U0Qw8OSaJk3MQbaQ13ibhjtEE8Rx+boLZoaTEBwGx6CK4ZloB/R/8BKQ5GE6L3mjWBNGnHGJ+SpQXHsw1bYs3gCfBCtuzORvThUW3GvW9Vdj4HdBghKCEMne16tzeRPbbWddLOU64JwF/RcyKEPAruHA5nd28ags0LwyeXP5FrhL9OWAofI71SaY2+AwnhbTDYHL0GymVB7QWviVHyfGwsB0jJhKVVF7gCT8R1Ot3sNtIQ+m4m/TRPrBH+Tan1L3E3uCQKmwDiImv7WsJwNM6JpqBP/brm6v+z14f+a3q9669pPSwClQYBD76N49H3/cyfttJAoJptypGD+s2dexlXCvX0ewAJFNr0QjUtwcp9p7RmOox7jitnsNpzhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(82960400001)(53546011)(71200400001)(38100700002)(9686003)(122000001)(508600001)(55016003)(83380400001)(110136005)(26005)(7696005)(86362001)(8936002)(316002)(52536014)(5660300002)(38070700005)(2906002)(33656002)(186003)(66946007)(66446008)(66476007)(66556008)(64756008)(76116006)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fRIiKM5kmDmwfQ1KmzIEPy7sfAv0r5s7Sl/i3l73uwFOcFwFV5+1WgXfoUTo?=
 =?us-ascii?Q?FZHvxs7HRipOFLHySAtKN4kIRmaB58sGbBg+imn0sKdsBv1zGR5xGDXI5ElT?=
 =?us-ascii?Q?wWrdu962h16odS0cRMfUENoRmx0237IFx2/8G13RNPvacgLb7AsgFhdtTcoK?=
 =?us-ascii?Q?iA9KT6UJgFahUQNpChxRn1R8OntmmSIwp2irgFda/CZgXjBh895Y+UKrfMhJ?=
 =?us-ascii?Q?m/hufdCXlXWxFuQf7klL697evh5ehPOQcFNWF1dgiJuYDapJdFl1RZfUC0AH?=
 =?us-ascii?Q?8fOvgq5aTofIcYti0uRD62AfGwYPVHFR+fzen5ul/3hJn6NeulSrtYBfEGOS?=
 =?us-ascii?Q?72mVej/qTwnT8O33i+CxrbqKXolP95ChhDhNtAUiVZWVmUZddp4AizEof6s5?=
 =?us-ascii?Q?w1VNRt3AXeY008hxpXX6HteEF4m3UkcloOUnNPvYWX+U0kQbAU6WEotG59Ls?=
 =?us-ascii?Q?Az2quqKc7ai5OtJnPP8QHAxrTOSSFu5/Z1zf88hbVroil3mvERZ3emnNCBf8?=
 =?us-ascii?Q?1v6/dfWLRfKPv2//czpW8M5TAbHOpvX+5YegOL4vvjvsu2gNuDHQK1Rwt8q8?=
 =?us-ascii?Q?BfVgfnrAAsOAv+g0iWYVwWVtbhuPoJASMPGRgslHNpZZsolrfyQOUu2eJCyw?=
 =?us-ascii?Q?C8sZrIbNT7hGZbn6wADymvg4YXndK+S+9yYmzzd7/Ym/XBc3GlOq6P6Q2/KI?=
 =?us-ascii?Q?PKmSasyrH8AEvVpm1Csbm8r4X/9uH16oXlzNh06ipQ3wK+idYfh6XoZ2j8ZG?=
 =?us-ascii?Q?aazj5KwSO4F+TE1hKP0kx5JujPinoP3yuldXzB1LVttLVxCfX//gbl1KbxyK?=
 =?us-ascii?Q?f51xOXXQ7WnNoupWBZToGPfrzMrFnd2rbfRYJqj8/DefsyrSiXN7dOCCjGux?=
 =?us-ascii?Q?I9Ge35Hir1m+v+rUwRoyOWU9l/MdsPMkgmV1bxd76vSLP6Cd8ovNeEumGfrp?=
 =?us-ascii?Q?51HH9fr5vBtKW5dxLuWAh+KSVcjkYRFp9LU38bfYFLMZssss6u3ZhVViIEer?=
 =?us-ascii?Q?ivwcwJqE3EVSsL6k8EW0Ee/RanbFZsZtHoUEaJN9JEVzxUJAC4F23Adwip8+?=
 =?us-ascii?Q?fsryjNUvhBaRhC72INdxafQKuiPWPBASnc+5p+9oHv6A5+3CDjAJUQ/jrdo5?=
 =?us-ascii?Q?zmPEMeqSJvHAaPu1zKybQuILdixk5Hz/EEDkdPdl3rgl9Ui2RJ39FkrOGk72?=
 =?us-ascii?Q?bDXnih4x8zZ5aNThtlXN4eb2NwOHOaEzbXVTVYB1kSyfL4GX7OL3QnSZF+RC?=
 =?us-ascii?Q?0dXFMbBLqs/gDfZilk8tQsURCErGfx7/Dflb+S/TPymuFsIQLFYh/peywL98?=
 =?us-ascii?Q?ZRu8srSsQOc3/SBRsLMh0mgHfmxkDbwEVQTE72ge/gFcS+jKsQ8O6ANHp8PM?=
 =?us-ascii?Q?TpHN3ZG/tqeV+rUsUmjgJ/tCv14AzJnAcibPKsqRVUBmaaE+ZhC11Zy87NCA?=
 =?us-ascii?Q?gVy0AgDwIcJq4KGQPpEstaq/6IifFYR6z9d2jpubP25zw4jWx2F9sZIB+ydO?=
 =?us-ascii?Q?dZ9lZKdzJ2ITLgoRB2WNghDQXJsy1KqZWpgdt/fxtdEqW3L6ym/6rcyQge1e?=
 =?us-ascii?Q?f0iyyeXGWUKIRi+ST1lznk5bnV6CGq7CxY0oDnjUuhhbdrdHQsJoZlo8giDe?=
 =?us-ascii?Q?p12RjzdxXaCVP/UXLDZNeShY+vHL4yEKftgnf5oFIPTKKgLMSJUcn9EnZO4X?=
 =?us-ascii?Q?6XEwIw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2249b3d7-bc5b-4b62-cc94-08d9fc858016
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:47:35.8682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qvyPwC07WbwXO+0/DBvRvZ8I8xNa0eR9auXzR4l+u0Wuf/2P750MNkkxnCfwdwzKynIYeyzOWWG/nGLbGVQChwD4wGLmX2nDkT2986ODs2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5195
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 17/25] ice: drop is_vflr
 parameter from ice_reset_all_vfs
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 17/25] ice: drop is_vflr parameter
> from ice_reset_all_vfs
> 
> The ice_reset_all_vfs function takes a parameter to handle whether its
> operating after a VFLR event or not. This is not necessary as every caller
> always passes true. Simplify the interface by removing the parameter.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 5 ++---
> drivers/net/ethernet/intel/ice/ice_vf_lib.h | 4 ++--
>  3 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index a628fa9f1442..af4befb22d0d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -768,7 +768,7 @@ static void ice_do_reset(struct ice_pf *pf, enum

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
