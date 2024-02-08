Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A974084E04D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 13:04:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C55F56FA18;
	Thu,  8 Feb 2024 12:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AUs7buYTIQu3; Thu,  8 Feb 2024 12:04:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2D0D61B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707393868;
	bh=9P7O7vmUjhSWTcostT104o4dy7dJTQPKUsMsCVL8Yec=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sIERK2qb7wit/H0mdufDim6dzPnfc+c3OTX2UA1K65yA+EVdsAOl5XKeS9XL9w+fK
	 lUfYfub8pQ7R9y9pHMRwEERoO5++ifjGSykGJRFMTzdaLT8eYd6JtZFGHhM/jFJO1I
	 ue5dv+aug839VBnKhAon6KqJed5WNmAb7tQvTh4q7aksRy2rjBZDMaF5J0TtSVA9Y2
	 fX0qp/HFb9dVXUueQ8JrPVYU1jBMkxbgIjZWualgcNbO4twwx1ZkE3D1653hWiZbz2
	 Eizq9zrS0GCyonP/HV3RNISBqC02labHBVZxICk0uV1V19+fQGGt+1JzYDFU8wgy8k
	 es/t0YWEb4yvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2D0D61B13;
	Thu,  8 Feb 2024 12:04:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 664AA1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 12:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5178A42FC4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 12:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oCqLLU25Crxt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 12:04:24 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 08 Feb 2024 12:04:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CA5842FC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CA5842FC3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CA5842FC3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 12:04:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="1089147"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; 
   d="scan'208";a="1089147"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 03:57:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; 
   d="scan'208";a="6265244"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Feb 2024 03:57:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 03:57:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 03:57:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 8 Feb 2024 03:57:17 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 8 Feb 2024 03:57:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CyoelcJJfumiKqsk4xb8Y+sCy8hnALDD2szUnAGLqMyKjd+c8nFvEjybljpDmI9HjMNoUNMFQbE7RAp/a9uhkH2pUWyqJ/bHcmDh13I+5q6/Qt3BAexTDVZ9GgRMY45QbpFLNgB+jVe4KsF/YyCrezGCXtf6L4n9gfh1UME2JatmJo8W4nSTZJzV/vS2V4EFtcMmWn++KywlStmIHgSqjjLs63o0fBD4FvjlidYQU6f44A+dUBofY7tdVnlPKDNXx/Gm3KcXmIMmFPCkIEsGTZp1O5a8pAhPBuNuHjIYVR3wZNVi9BGv6zjpHmf5FJyLeWiYsvRdTMHJsSpV5Yk1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9P7O7vmUjhSWTcostT104o4dy7dJTQPKUsMsCVL8Yec=;
 b=YDT9x0jDq1gQoD7yG+1LL1LVSqpNi/9/QNyv4MhrthA2grqzDoCF9Pa3UZENxAEF8B/LKc+caqYQOBt379FxuUlY9DquAkQvn9MTSkjJkbW2c/w6Y5djk3hbbvcgWxL1w0TzfxAftAr4oqiDRjk80fGAkbqWchS1szdL80s20upzYfhrUvA4xV9DA9cp2h0vmXznOJNinGr50Y4b4NJKsoCwUAK6LmsBadHxgikPpaZ68nL1ZtwhJoEwVxSD+sPYP8/Uw5NICFpzKtaMaubPoK5x9rAe0aeMnVPrEWemqaGZN8cWmsc0nbfxihDxglmA+W6x4wcOjy0tCnqJB1iLQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SJ2PR11MB8565.namprd11.prod.outlook.com (2603:10b6:a03:56b::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Thu, 8 Feb
 2024 11:57:15 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7249.035; Thu, 8 Feb 2024
 11:57:15 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, ivecera <ivecera@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Do not allow untrusted VF to
 remove administratively set MAC
Thread-Index: AQHaVEf5VS5h9VRQmkOA7cxvQbQI87D3AioAgAlhHVA=
Date: Thu, 8 Feb 2024 11:57:15 +0000
Message-ID: <SJ0PR11MB58652DF7738CBACACC7B8D9F8F442@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240131131714.23497-1-ivecera@redhat.com>
 <20240202124304.GQ530335@kernel.org>
In-Reply-To: <20240202124304.GQ530335@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SJ2PR11MB8565:EE_
x-ms-office365-filtering-correlation-id: ed1b79b7-60bf-40cf-15d7-08dc289d1817
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GQehOXI8ceO/yQyFYr8NhcLnSkh3J8NGkuIZrAniixMadtRJ1UzgDEBGnrM/o5h25n7HjXpIVNPx8YBXAVCaupL68M6DszIUpIxEjMNvk34DYMd1kzc43pqjmXRC0sXXRS0g1E2CmJereqzmFhVHn8vsDREHjtVXMbROhrhOSh6P2qDgRIICw+vteJ5sUHZnjkPWuFcMX9KFup3yhaTUX9VMCAS9DBRZRh9mVy21mvIqHAOlAs7uzis9xiN6Lm/3mCSxGNn/Jx2iRdhJpD0b3vRJl3aJeRPVqT0cuH9+m7bYe4C5oax2CXlcUXrFNj43HNWW5s9ISnPODQpJXQWC3LHlI1a+dBkot3alY4HOYBM3YU4k+jSR8x8AwkJdUgKb8oPKRxCAySscJ4nTtFv9KWnKLK6JKKwhuZvCTZB29tw0/6aZG9Ws2OZ3PEgvYv1Wi6X0c1UZZbi7Jg6/X6MbNYAe+uZfSED1OXH9oN9SDI52A3avFheL7XcjNZBSDNTEcsDg8/dhBEBxI7OE50jWT97jbtdoKNSF9DqdLxqnrKUwJfd3QDi76gkELuWcpV/gctXCV9uTI4KPGDoNPXgQE2sib8J/jDfsAzNBjhRphjfTvGUY/dLGDmTfmCnKc9C/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(366004)(39860400002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(2906002)(5660300002)(52536014)(55016003)(26005)(38100700002)(41300700001)(82960400001)(83380400001)(122000001)(86362001)(7696005)(33656002)(9686003)(66446008)(66556008)(478600001)(66476007)(6506007)(71200400001)(110136005)(8936002)(76116006)(66946007)(54906003)(64756008)(4326008)(38070700009)(316002)(53546011)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0kmgaF/FtEcyOqtemW8o+BAmwMsIVYLvhQB/2YaVTvCg69t+B8yETEDiRt5h?=
 =?us-ascii?Q?nJ2njb+FvG9Sf9WdI9KIYTyzp1Iem3akxVU8DOwWbI/7BV+KkK9Sa1aalz8u?=
 =?us-ascii?Q?5eGHNzs/WB6n6JSJSTo3IWb37zQnNAbi03yfrx7LDNLS/Dh+tchtpabPyr6l?=
 =?us-ascii?Q?4a9d5n8jcTzuCiJqh0D87WLUtGZWedRfj+Rg4DG79VJfH8+WlzbghxclW1JQ?=
 =?us-ascii?Q?wq1zocnsrrgGhy1GoKO3d0Uxf6JlKG4SPDjnyGJ2TDeFnZ+ZQF6ATT4UPqUX?=
 =?us-ascii?Q?feqCD81f8Ikwvkk6kxAQVwHTJBO7TvyFiTX1EVjeLtp8NZ6A6G7wxUulqQ2W?=
 =?us-ascii?Q?C462nmnoBjLcZruSVHu/tydawT4PpdqS7J0V8fkE7pitd+fhgX3N1DMfBkQj?=
 =?us-ascii?Q?+2mI3Ppn4bxV+2FByGQIDYgnmiUtI7xw3Qf80jIml+PucE7P6nmVpFBZpYFW?=
 =?us-ascii?Q?trKJKMxCQs9PZeWlK1SjlAroQ5NIAdC00TP7QBStkiuwtCReU/rUbUUZlTOY?=
 =?us-ascii?Q?Wr3N/3hZ8wZLmdDl3OzAHtxrgyMWXd+nBJloJXVm+IRHS9pc2dUd1Wo5Y2i1?=
 =?us-ascii?Q?f5zGE/8UIo8+h72hJrwgmO7jQ0Tx+m7fLCbkllMtMaRf8AoYdtQ89Gso6gBO?=
 =?us-ascii?Q?2WUwPSihz8203dPcw6evtYh+pLWx5oRJqVi5Jxwd/tjSiUtW0/ilJYy1ESf7?=
 =?us-ascii?Q?rWQEhGtmcA45rlJZ3yc/tAE3h1iT4BEuMg88pfwZaoasbYFBm/3fL+0V4bVz?=
 =?us-ascii?Q?sxLabI7eOrFZzrc1P7vIq7LZmbiLP8tNbvJZ0tJ6Af8/zKSvJaqQ5fxzmhZs?=
 =?us-ascii?Q?vKJ+Aalws1qpb64SyFdfTDDZGEsDCs3Qu2nrbjUxckj57IpN1xXGho+4vpva?=
 =?us-ascii?Q?xIrapOluy5Xczq3YJlz1QYYPU/T9WxFP2F+T1U2RkQDqNM5//ZxXh2YkkLHG?=
 =?us-ascii?Q?1ux1gtrlFXCtt2ZB9uYteAhMAKkTucjbUtf7++blZ/ZX6MDkmWR0FgB8Iqw+?=
 =?us-ascii?Q?hFXMMSiErYrdiZJxR0Jj7o32TittX2tgKSrMj6ywcreUam4/EoE5RxZ1tcfm?=
 =?us-ascii?Q?ru1C3AyyymM6pMOu4vX/bc3+TNRK/APLEvZFe3aumwPLPgoniaA6f1cxeIir?=
 =?us-ascii?Q?GBwG58n63Neih4i4d95nOE953mxDQO2IeaYjP5OvW7gAv+kz+au1BBfcPMZG?=
 =?us-ascii?Q?fXQeGVbRcl5EMEVAQV7ogF2shEL6z6nE/gx6ojA9l8jSdaLwZE6E7pldVkmD?=
 =?us-ascii?Q?mQHZFjVRYyghN9buiFNglC6/m5iI4+bwAm36rMIauXMuCZeZpibZhaMaCPDN?=
 =?us-ascii?Q?wrBFFfvxMEtkG3KCl+DzFYGM0+CfPgeurFT9k6W/fxhiFVZ2zA860xiqLbV9?=
 =?us-ascii?Q?C62h9H4pFiB/EhWCIhbjts+EMTwfmUA6V3dENEKzcDy5qzR1mY/MvKy0st6f?=
 =?us-ascii?Q?XJZN5LkzBPvyXn5i1XcjLGn65bljWsl0Ct+q7jFip8MK8JGDh6WEAaouUigM?=
 =?us-ascii?Q?e8TZkztBW7vk9s6yeX0+qJx27Q3/me9Gkr/Q/73xjUziotUZNdK6zY2Lgdea?=
 =?us-ascii?Q?0fXhJ68T4N/gisVBY69T9m2B0DKT3o95yCZlMoHC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed1b79b7-60bf-40cf-15d7-08dc289d1817
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2024 11:57:15.8868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /G767KZHday7/dfXATCQ7IkeB+3hleX7Oh4FF17ekIsOPrScwKNuFjz1KEK+Ss8Q+drG8OTMoU7POGwl8t7zytl5lEhC+MtLeMlVIPOuudU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8565
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707393864; x=1738929864;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r5A9ohtK0hw8op7987kt9qoEXZDXNbXQVPJ4n+JWWG4=;
 b=lxUBeBToNdzfqpFNFJjq5WN43KXbDthqKbRtIyvbytBvV37VAZB99vyI
 Us0h1Tylus0yQYu/+y/qyA+TvVWzieyXwnXveVImEXMSJvk7QDrCkn7fF
 JwVguiNOQyU2Lzxyoe28KaUF2bh66oRiC+cNGbllPeRwPfCwJ2D+oZ12L
 5u4Tw24+L/mpasoQki9N4oomlGBWaJKrC133fbGw63v8ckx/P4xbUPNsK
 OCG5wjQi5wQxKu4a04k6kTj4ZE+5P/jvU0u6YT6RQyqPxXmFQCtx09buF
 1b5Lj/SX4VwJU+6/EaVz6uiSWgPHZHWA94Y9nO2ffMfFdlvRCaIardnHN
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lxUBeBTo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Do not allow untrusted VF
 to remove administratively set MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>, "Williams,
 Mitch A" <mitch.a.williams@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, open list <linux-kernel@vger.kernel.org>,
 Eric
 Dumazet <edumazet@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Friday, February 2, 2024 1:43 PM
> To: ivecera <ivecera@redhat.com>
> Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>;
> netdev@vger.kernel.org; Williams, Mitch A <mitch.a.williams@intel.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; open list <linux-
> kernel@vger.kernel.org>; Eric Dumazet <edumazet@google.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Jeff Kirsher
> <jeffrey.t.kirsher@intel.com>; Sylwester Dziedziuch
> <sylwesterx.dziedziuch@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paol=
o
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
> moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>
> Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Do not allow untrusted V=
F to
> remove administratively set MAC
>=20
> On Wed, Jan 31, 2024 at 02:17:14PM +0100, Ivan Vecera wrote:
> > Currently when PF administratively sets VF's MAC address and the VF is
> > put down (VF tries to delete all MACs) then the MAC is removed from
> > MAC filters and primary VF MAC is zeroed.
> >
> > Do not allow untrusted VF to remove primary MAC when it was set
> > administratively by PF.
> >
> > Reproducer:
> > 1) Create VF
> > 2) Set VF interface up
> > 3) Administratively set the VF's MAC
> > 4) Put VF interface down
> >
> > [root@host ~]# echo 1 > /sys/class/net/enp2s0f0/device/sriov_numvfs
> > [root@host ~]# ip link set enp2s0f0v0 up [root@host ~]# ip link set
> > enp2s0f0 vf 0 mac fe:6c:b5:da:c7:7d [root@host ~]# ip link show
> > enp2s0f0
> > 23: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc
> mq state UP mode DEFAULT group default qlen 1000
> >     link/ether 3c:ec:ef:b7:dd:04 brd ff:ff:ff:ff:ff:ff
> >     vf 0     link/ether fe:6c:b5:da:c7:7d brd ff:ff:ff:ff:ff:ff, spoof =
checking on,
> link-state auto, trust off
> > [root@host ~]# ip link set enp2s0f0v0 down [root@host ~]# ip link show
> > enp2s0f0
> > 23: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc
> mq state UP mode DEFAULT group default qlen 1000
> >     link/ether 3c:ec:ef:b7:dd:04 brd ff:ff:ff:ff:ff:ff
> >     vf 0     link/ether 00:00:00:00:00:00 brd ff:ff:ff:ff:ff:ff, spoof =
checking on,
> link-state auto, trust off
> >
> > Fixes: 700bbf6c1f9e ("i40e: allow VF to remove any MAC filter")
> > Fixes: ceb29474bbbc ("i40e: Add support for VF to specify its primary
> > MAC address")
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>=20
> Thanks Ivan,
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


