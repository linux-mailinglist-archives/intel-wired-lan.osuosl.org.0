Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5730B21BF28
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:26:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A43A21F76;
	Fri, 10 Jul 2020 21:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bozBtH+3l2us; Fri, 10 Jul 2020 21:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7022204A2;
	Fri, 10 Jul 2020 21:26:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CFD31BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 00C2D204A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THq+N5PG4p8C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:26:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 71BEB21F76
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:33 +0000 (UTC)
IronPort-SDR: 4Mz7qS5LI3Uq2YzY6I/iLYpNLuzJALwHq8wzfOANJfsHjnyP5wbi/KpkLfG6Gw8bG/Al9fCDuI
 oSnS77U0Pqhw==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="209830070"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="209830070"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:26:32 -0700
IronPort-SDR: FExtOnBtvrMzWC2WRPTmnzqYeOA7ygvAGfTG2LVqyJHmDMe3bmmAhk1bq8d2dFussVtaSVIh7+
 QGxB1DwMiiZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="428682610"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 10 Jul 2020 14:26:32 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:26:32 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:26:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:26:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fEVPocB5D51CDk9icmW6xaDuCHCkXMZNGbMYloehMhIy/e+gxMZY2cvSOuah+VlGbPfXeOvn4ArQFoSvfdmYMCityaXIJC3vLLR8OyK3YjVBNipXQUZE6F/utk83kmvu8lFkZ1xQLPUDZWs8o3RL7yHSqaDKYOeW2ki5DVCnnmN1iE/7aQfAzoBYQmGe5ExqlrSRJj3LnjRulpczN7OsOFhd49PmVA5XjH3A6W2nWw3MYbTgQXOx7avTXe3fMoMNysM3zUDkU3z2YwaT+b2CouGQ0pnDQQBP0C/QXKflmz1n5swEni2aUWnMXX3Y7+mKA50eq7QE2nk+i43ugdn2zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CiqAT/clRkxuN3sbkb429bQ5N/qPOKdWgJFB8Ti3LWo=;
 b=Qr6R73Zh713d2wZcu8SU+07Wdn6CaMnnBH0ryCels1NNZVgDqzreBtkR794R9zF2FkA+Wgc0VKYT3o1vRi45GIv59tNhaP2uXvdb3+KpixwQReT5uuEtWBlktrGGIx4I5+MC85EcPtIQW2rdSMnydLTLm3Y5GEcVPwl7M4ZoQqo70ELC7/4bJPG1kK5lZlDFTui6Ds9z9q3RCkhNcT0t0h1m5YTuFiC9fEzfQzotysxmVWLNuiURpAeZOwe44sPjUuJF70fzx8nSbVR47c4e/3Wyft/62vsLNxe4F9dhsdKMk+/XXiYy0k+T3rMHRUAH07l7Y8CITB0Ua0rMZCo7lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CiqAT/clRkxuN3sbkb429bQ5N/qPOKdWgJFB8Ti3LWo=;
 b=SmaYliSsZkkI/xLUQDzCN6IkPmTxny2axOeGli3gS0XMiObMs7s0k63UKaSFP4XaIqRkOT/vN9nveyn9wHPAs3EvSQNMl9ssOo/1yURRSDcDoa2rrUjLPjjMBT65bQfJk6aAWe+F+Z+YnadZKtckV1nY+VLdm3WJUV2pzL+2Xao=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:26:31 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:26:31 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 09/16] ice: Add support for per
 VF ctrl VSI enabling
Thread-Index: AQHWVlX33QZ/5cPkkk+wY3WmESXDiqkBVM3g
Date: Fri, 10 Jul 2020 21:26:30 +0000
Message-ID: <BN6PR1101MB21459B0F27F01E04B147993B8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-10-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-10-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be230a94-ab41-4d7b-d7bc-08d82517e9ee
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB36044F522429586B8CAA40118C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XfPHEQGZmrtG8gG+6grg5eiu8FlVN6YZdT96zQFGNYzEdqAbJsPchKDE7bqS0xlhaXaEjNZCDe3ipxbBXJ4dpLksv11AblxJRoiPc4QnuHY6185IzdVL8BJJ5PpOoye7b/MvvF3uHYkK7+TkJr2pgsWXl/UGrP5nwgBDNOIbO6BuEzv8vMDTrNKp+AzbjebWJvXRz6xcdJVrN20iEB16lY58W2lcmrnfMtcjLLYxPWZTbz1esw5mpUb8KruERoVn6xBTfUsnZXJ1etCsrFtV3JMz/287EEJZJmSIWRHTMZQ71GMuT9N3Nu5Vh+yCjuEARPtehEn/NQC59VgOHAUKrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: VujLALU5nZhXMbrpuZxBGz3RtXkPmuCqicE5GihmvOW/tVe4z44lyPzmTxISYqUBt2cwF38UrzqVXZT4ge/CH2tBmwESCKDBqrckhmol+r6kFexCyGeJaqACE6yjckMtgPp3dUFFc2Vzc9Ckqh5iHpt/Egyziibs5P6a/Ay3nuRC+ixYUh/V+IPRYgcQ0L0i8DIo/1F8Ws+pO9bTmSlwKvz3L8VLkKia8HCUVHSaUMGbABcE2+yn+BSIl/rR34ESIccp95Wlgt+2MIkS+vkSlexX7mxkNwHLGJRwhQYvuKHBCZDvHKKBzxBcKVUPCZVAtyQI+9N8GUPm2vNP/kimksxp9qOMp6am7uHJDo3mT80FMM+7RJXHfVXlOXyOKfhSsVld8pn9hpaIZ3pFKdrC1FtoViFPd843gTGzWNSLunOeDN8sYlL0DVUMIYVxqdZjAW0nw/+AhSAcBEwCINpvrMwo5mrjF/zmYfIZKcNqHtI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be230a94-ab41-4d7b-d7bc-08d82517e9ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:26:31.0085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yypim5Hbo0AkbKrDXOi5SBVbCafX5Y9bjmc4TNJbg2faDjxAZ5ISfobj/bJPsl16nIui76j/km2I4giiXbVZdIF9mGMDS52gKhw1c21fLVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 09/16] ice: Add support for per
 VF ctrl VSI enabling
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 09/16] ice: Add support for per VF
> ctrl VSI enabling
> 
> We are going to enable FDIR configure for AVF through virtual channel.
> The first step is to add helper functions to support control VSI setup.
> A control VSI will be allocated for a VF when AVF creates its first FDIR rule
> through ice_vf_ctrl_vsi_setup().
> The patch will also allocate FDIR rule space for VF's control VSI.
> If a VF asks for flow director rules, then those should come entirely from the
> best effort pool and not from the guaranteed pool. The patch allow a VF VSI
> to have only space in the best effort rules.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h             |  4 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c         | 64
> +++++++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_main.c        |  9 +++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 62
> +++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h |  2 +
>  5 files changed, 130 insertions(+), 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
