Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE668734FD1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 11:24:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A1BB6113F;
	Mon, 19 Jun 2023 09:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A1BB6113F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687166684;
	bh=giwoTzWdpeh1wF/jJ+e2/oHN7CNhfEIzAry5CgajMlQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tm3LkVAGSSbCUTONncQg4BYI3olVREvoKV4AUcjL+IjRn2xAx3mLVz/iOMIFWxtMW
	 jgjp7n3Hr2qIW1SvAV129MEi+XV+bELuHnThLHKdu/8k8X4y9PMlGdYNq7Al5Q+Eej
	 jaZ3JL6jSthDnapP9oLoKp+roQb4XGS+EgNV6IsvA99EHQ1uaXLh6eTYFrieQIv+2l
	 oHg3jcM2jnSS9s0RwcxqY5r+YX0T+1moWlQdeP3dhnXbhP0VmW2NsQxo+k4Hk9Xulx
	 FwK9lkgKYwJcn9ehYhMmIyfzW48k80Sh5j8ohznGtV3QeM0P4YkJlGCdtS4aLS1LHA
	 Eq76RxiMreZyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a4wJzNNezYtN; Mon, 19 Jun 2023 09:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4050260F78;
	Mon, 19 Jun 2023 09:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4050260F78
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC65E1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E3D2409C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E3D2409C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uy2MlT0Olk5G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 09:24:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6ECA3409B1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6ECA3409B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339924547"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339924547"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 02:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="803558282"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="803558282"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2023 02:24:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:24:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:24:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 02:24:33 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 02:24:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWMSaAyUqs7s1W+dKVyk7ajTiL4IPIjbV4DDaQ+9rz8yFkYp9wI679S6GsEFXfXvJU98KwQ8bpIGy1vpKZEdyul+FpTemBTEM3zAJvvJ62DOAGHYHKrsRIqQOhozMBNXUlzGwfc1a0hXXujAVC+d+gUw02K9R4g00IUYPGYVQQJ+OJ1tHlyCF7qKy44Qjyz2Vje2g2iQbde7N0w8idJgxPEIf2qLjvA4Q7dnkFhXu1nDgzQhhmWTQei3TChJYRnlRpBxk3dptpwNGAf4M5DOXgviS6momPoUl7n39u5BeRo92R9h+Trt7xpzO3GQzs1r5Wv/+HF8R4CKZxHwFQlYmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HKSGglMraddvIkaWrstoiYtOfDTh/IgKtVIwggSafNc=;
 b=Eq6Z+mVnzwnYq0ZQ58zxVtjKe3IaSaVavOQ/QoDWrbsUkLd3zg++fQED7IfRsu101dg/Sbr2cbhAow0lkg7L16dsBoatA0eqJhCErzbyoDEnZ1MHt15hsot8fq76fSRJwlYahrQVqIe+U9xVo6L+LZo9HYDI8ohG9qZqkD9I4LHEzjJ/PDJLcaz6DIN6oa7Izyg6Ny+koLu76J4ftBWEOlbFaL/zNSXsLVqiwzkUNJCgsEevJZzlguCAJqx6f+Ze0pUVnKDdF0UXtBxMeoZsGCSZ5EyyKYO6PjNli8lufCyc9b+CDlgkfjzENLL7WWpZJt/1bjY4/Mh4yzXduX5SoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Mon, 19 Jun
 2023 09:24:31 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:24:31 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 03/12] ice: Don't tx before
 switchdev is fully configured
Thread-Index: AQHZneAIkXn4pxDmIEeAz/KNfMrgZq+R4+Pg
Date: Mon, 19 Jun 2023 09:24:31 +0000
Message-ID: <PH0PR11MB5013CF080141B914000EC3C9965FA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
 <20230613101330.87734-4-wojciech.drewek@intel.com>
In-Reply-To: <20230613101330.87734-4-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: d5d81e62-f204-45a5-2ac5-08db70a6fce2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l7TmHhNvzapvkGvz/qraOOso6WrxOfridiuRqOdfQZkrsMCqThsDg3a5C3tHMnVOv3Vo56kND+pYha8H/tbM4kKX9QSuiMvkQPiwqK0E/mHEhzz22SXvmratIzs4FGwbYeGbi+eC390l1mEgeCz94UxVf3pENdoK2PiT8GBIpyNkdkG7mwa/fHhtKWyw6tfLV0Z5bE8ZHYj3fXzVccc1yjH3UP1OYPetMecY3iAeYKm/TEkoIHWDzD1g74L6dyFNFo94wVqWazE0OphPneO7wCBniwXe3XffxtCGMJb7L41b26fw7AJ4wTj7JHKWynVbEZPcKRz0kFXHoWhfkzgnVSLI3TG0NCra5sLtcwENLBMkCvw+cEyCV+dlqe0ctcwTE07Ejdylrq2p2dxd/sck/S1G5O7ttDBdAECXcJBeGhR8Zu3Qn+69Hkz6i8jTdyZ7w2jvrkHQm1PgNy2d7YxDzVG9fMiLRRpnh78BANGsMGjOhcf/1+QBaeJLAZtosu2rB4C+yKyVT9i7qwdLElfnsZ2MW6u57uYgr1Q3h/Qdo8Mo21JaGYMnyTIxp49+0TDMmkGScDDDlDOVp4o/iDyVx3aqdMgCcTOh21Kw8u4ObNHHAz7MtsxQesnxvXbyEmrS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199021)(53546011)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66446008)(66476007)(38070700005)(26005)(186003)(9686003)(6506007)(82960400001)(83380400001)(41300700001)(38100700002)(5660300002)(4326008)(316002)(52536014)(54906003)(7696005)(55016003)(478600001)(2906002)(4744005)(33656002)(122000001)(71200400001)(86362001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mQ7X2Ux+lVyNVW0iaXqGGRzAk95u/48VB7cH6k6uAtfbCozjsHNoz1A2E2WN?=
 =?us-ascii?Q?AnRwLLrlXvJcpTF2owZU4uYo22lK+RZezCzVPEPljeCr9TvnoEf8tNr6ZnId?=
 =?us-ascii?Q?UWLr2Sb2Aw7Lo8sCB53R+EZYmUdhB//RfH9xuJhnZ/9bRoMKQhDCL+QuBC9+?=
 =?us-ascii?Q?MCuCN5MlzOvlllFRcEkgPGG23P5YcRfynK+PITB/RsW7C/PGXGloGfw+ZjDh?=
 =?us-ascii?Q?rE3fniebygmaJN28YlOecUFaRjNzRi+SKa4Xjc/+UKpCupG73ehsQjjngVmn?=
 =?us-ascii?Q?U9jQ76l+VmGTePDdB+WF1DkMtp+oIg/cPB8GBnyG79hDeuQT1AA9x5+24brg?=
 =?us-ascii?Q?n18v2yMWsOmPdwa0+8LusFqijH+Dz9g2MVjgr8iQR0sY7CTeBT+xgrS006s2?=
 =?us-ascii?Q?Ilr8/PI/eAmIk5sF1sb936aL8gedjOsc6GjeOwj9tvEV8ljUoJRDukb074KG?=
 =?us-ascii?Q?12cYbtxro0fLPBISb5KxRyeK8UawAET2O9+hWTrrj8lgt9yiNm09fU7N4Q0m?=
 =?us-ascii?Q?OkDeCctkxxm7DCVfDq17T3oaRd5GNzWiTl6aeXMzl/xvIGmyM7LU9CchWjfW?=
 =?us-ascii?Q?UYwBC8OV0xcuahb13c3DrGZXidKI9FtJSpE3/JCYYdC+p6jJynVuD590ANl5?=
 =?us-ascii?Q?QqFUXNbWVDupFA1MPFoftEzMeJvwmb1X1oA6AvYec18S04eOjC50zRlBEHiw?=
 =?us-ascii?Q?mdEvJ2rpnzsequdLfXLytmMCqcMP4IdexyWGOS3tVwQgOHxVNQk/PVPoi09S?=
 =?us-ascii?Q?TMDvpeJJXZvvbIYg5dxwR7D4vmfC+F0qczLaWJMUQPUIh+2NOwymEx+CabJg?=
 =?us-ascii?Q?Ndk1Zwn9HNWwFWB/59csUboj0visor90MNwkaWnmLf5LJ3ud+R3PFeBZwPdM?=
 =?us-ascii?Q?9HcLFvj+H6Nio8olconVoh1qOyEr2X0xqdUFIbaO68RCyBr3LHJN0ObQlJeT?=
 =?us-ascii?Q?5zyEvw4HZBPqJn+SW0pZMsPCWxsF/9N17gH9AXcgwOTBMy27rkciMztAIGMu?=
 =?us-ascii?Q?Rv2It90ma1I9N3tNy5P16D+4MtHCrs5+hx2Fa7QWIV/SO3EQRfP/78+F/9T3?=
 =?us-ascii?Q?L4p4wjZ3N0Lyo46s+0Gf5FAq3GZEVo4No8EVsIBRwWhNouw7LxtFJgflM2CM?=
 =?us-ascii?Q?iiVs3zVc0TTeGpBc/YuzqhRsZCJCi0jv2wGQmsJVLv/G+GXCOvMYkmrKAI+p?=
 =?us-ascii?Q?MgCYqCDMXQrKEKcFCHgYjyezFjBVKM9mwfHHLor8B1Sytyn9uHNN8D0DSZzf?=
 =?us-ascii?Q?8nCBzu6uPyQAhyjx1tdMB3Srk8y8eMz2NOZSJGRKWdjJiEe1dIFGJSTneTeJ?=
 =?us-ascii?Q?Y40eR0mfnX50qXwYk6k16j7tP1U35PSZf5pduYk2rkXX7q2o8kVJ/8yXtx0k?=
 =?us-ascii?Q?tnsqyDStPiNrFdatkc9k8mkESq67HCRNmMzdlS/0rgHUhl6PsgEWgyR0Z437?=
 =?us-ascii?Q?I7U3hYjDR6I5Wo8sbPsvOd8eaTSJav5hvtvj30jr9sV0/mAXK3Mw9TJrtKp+?=
 =?us-ascii?Q?thTZFzzGzc0Y9kKwcN59M28wXEljQrst14W77cG5h3s3tAEqz0v5f9Qglv0n?=
 =?us-ascii?Q?ZuxnPMzFtMBvSNIYSwisxXWo5o55SY94Y8IMhSDRmlJIIt+fg5IILM4DVG3r?=
 =?us-ascii?Q?4A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5d81e62-f204-45a5-2ac5-08db70a6fce2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 09:24:31.2487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MMuFJ6fQx3+UFb7BQjhaPI2mW0+b/t1XVVOOF2S+t7chqxcLue18F32m9ADyfBnMYAR3edd5vRSZhLHVn1YxcmykJb9SZakEk+WDXf9T4Lg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687166674; x=1718702674;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LUciKXmyNInzPJCDEb0NQpQPAEjQcVUaEx69QMw+Q8k=;
 b=S8DKeelzKoReSh/ISS1elDFUyaGQMGZsroBoDb0Z3oi5GZu045Vn9Oi+
 e6TPcvaHI5QKYWEZUS/xOmOvGaNo9mGa3IdRcydrhqnplFcrAqGyJ5uUl
 NrI9MxOoHZDkFi0cqh/2WIj3dGJB6EnGfOIYwPP7i7g8lBwebulEgRiSE
 b+VzOHU0UQsV/vZClDBXjKWi0o5oCmBU9hBPpO6zOYFuZ6gWGTGzmfOAG
 7xH1n257KrxyYXodugzzEQI42pu3hZ5V6qbCgZAL5fO2MvyvXauHV7wRF
 F8BRT82xni7H0DwSFXoSNHFJrvV2CC8GQxpaM2iRFm4dJ0wr48kKUEj/m
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S8DKeelz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 03/12] ice: Don't tx
 before switchdev is fully configured
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
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 03/12] ice: Don't tx before
> switchdev is fully configured
> 
> There is possibility that ice_eswitch_port_start_xmit might be called while
> some resources are still not allocated which might cause NULL pointer
> dereference. Fix this by checking if switchdev configuration was finished.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
