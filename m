Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 063C665FB8D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 924CF60E29;
	Fri,  6 Jan 2023 06:37:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924CF60E29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672987074;
	bh=SMvjppIF0NU2Lg+UCKwtmWG/PvJSUJ9RvVwmn8p+KkU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8keBRQyo0//DXKhGP693HcfpSfIf4b/1LO6KlxktsWLDkShZ8xtTUd5so2wFI2M/S
	 zhXaVC2G8z4qkpegz4lY20kP7PXYOnVJKR3w9NtgeMgS8sbDo2GXYOYI7X5oSJDpmZ
	 4+FO1fPlMN+Qb9Lqn/qBWPplZSuaguhWGsWtOyKTEGlciBKOEnDVY1RQfkhSF2UlDJ
	 KYbgPGgcjQ07z5QV1uAcpHNwoFWsV8WIN0db1uquSJ2Kpq/SdMv1wdrCukCfqDq4hY
	 f+8AInZFCrchuvffA7W0pOIUDxLwwwbcHN8OTrCOk2Kkz77X9cXFe8GM0HAQu3V6IR
	 g+RZ0NgiKWdtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mzDzGHHi0RhC; Fri,  6 Jan 2023 06:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98C4E60BB8;
	Fri,  6 Jan 2023 06:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98C4E60BB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ECE91BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57D61402EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57D61402EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MTBTbQLNrjmI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B118040017
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B118040017
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:37:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="349630206"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="349630206"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:37:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="829823046"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="829823046"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 22:37:46 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:37:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:37:46 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:37:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:37:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGmEus0wfYATiwXNEQaC5nNhqB13QnhujdGOIEeZi2vMGcGulSyHu6Ga90wtpX086zYhQMI6UW/ntblRnXs+JfvJ+V0e1o0v688PVSmfqGsWvsJjILa0n2s6yhvD2opt/2sCPYj6uFrJt+6O0vebrK6ZSbwfd6MnGxY/8C5tC6RNFfXoYMD4nmaaARkXLBDDbFq1RhnqRfcTgiBQPdSHQv7+lYS41OJXxD0pac+UI+vrWMcSJPgYrqX6QQkfpnvVfpxsUNQO5taUXQTGlumSkXA6uNYNjI0FZno9uztfdj5M2zZcnMrSyt652A2/6hevB+lVIMy1CCzJesfdtf9H6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oZb6jrl2/Xd9vqbv5+f253radKUjAj2af8Z1ZWvNoFY=;
 b=d4Plt6zThaA5cPiALRHCN2TakVHAQHcPxCUsWODooXWXjv60Z06U3fmrB1HMXKBdULrFd00WIbmx6dAPGHcTxzTAwjG3d4tLbUDQA+jaOGXqM5f2mAr5tkSKHW5NmS0CqUiHdivF3BP6/U/zugBc/30T4Q6HWv3uOZqWcjcBz5jYXTgHmoLLbCINYL9ft3YPwplro4t7dQPhPOm5kRSmTrNJul+3FfnwY6lAutPk56HHkfbrgeruMReF92S4M+3CZFtGwQSZccCBF+MFMAL9Capf4y9zfqLyyGKo2Oo7Vyy9GtcX9VMr3W/4zYIzK9/cX+GuoqDC9sXSgx0A14Ye/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:37:43 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:37:43 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 10/10] ice: implement
 devlink reinit action
Thread-Index: AQHZFTMRKxguikwPcUW4g2g88ASQC66RCD3w
Date: Fri, 6 Jan 2023 06:37:43 +0000
Message-ID: <BYAPR11MB3367125CE830CFEE4EE92336FCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-11-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-11-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: 2effbd58-be8e-43de-3cab-08daefb083f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pBf3r/5+UnvG4tT23ZedOX0n2Yd/Eu/na/UYVI9flTfuPCrFRAmykHlittzl2AIAZx0xw9KqWfqZGoNdWahCQiqocwhEH5rkss6kQXQwxRTQTvwg95WXnW0XiZ6vGRNr0PIRs7Zxsl3dLzudinby99GEs+l3wdjCWkBfu+XmcHvo78MF179XpN9dLLwEF+nXQeHKJ1kFh//C235fILuji7MTSCZ3nioZZoOVdn64OdEqZS4CL7s8JlIG2GXCrZvYG20k3iBaDujGLl5cp0+Fnitw7YSQKlTH4jOYT2keiG9sq2XNlC40QY3ZBcwsOtRVibaGnpKkRNEMb3QeU/Fy7SKS0KZWAXEE2pZiG5ErC/NazFb6UFprXskP3yEuC0E92IXifZ8TtLfBX6MNPYBelkqCca2MYiE+bHFQKLZUNygEYPe+YP2yRrrnSdTmQxvzbSlhqyJOosJjsRVDqoUOb4/GtZ4qZrMDZAj6NcSaB+MeHFTHADiuLOjVDMZwraYAfY9GomuAx9tX4T7D878/CIrySbjfJDm+xRxBFEz84WHd/43aU4MEgI2SHe4XCoGJ21ANC6D3y86uO2k8FAEK/jW/asZiPQmukZFYB5x5iiAIFUG9dUpKFy+WKtfRWfyxe/fNU2xeeLJBKDBx/WI+gPBmmbsytASV/qddSY4IOUYiuIe0vEBEGvlxT4z68Tg+QWPpFLcdUiuZQIMrBKFeKg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(2906002)(5660300002)(52536014)(71200400001)(8936002)(41300700001)(478600001)(4326008)(316002)(4744005)(8676002)(66556008)(76116006)(66476007)(110136005)(64756008)(66946007)(66446008)(54906003)(9686003)(55236004)(26005)(33656002)(6506007)(55016003)(83380400001)(7696005)(186003)(122000001)(53546011)(38100700002)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3JP+YwmioUeAQDXB9BapQjsbwq89TQGj6TP4aKaC7O+yM9fqGALvdnqlQddS?=
 =?us-ascii?Q?rx+o57qvgidtiEdQc4mW5aMt68MaaP5yYQJLyc839NU+xPYBzIqto/50l+q6?=
 =?us-ascii?Q?YqK2aJANjIdcKlqgm8Wy1Xfn5lbk4ogcCo1NaebbKyNl3OZXJ6MLbEz2DQft?=
 =?us-ascii?Q?oJFsSr/9DHm5pLWUpLRCpcRtC/Qhwa0oXgouTwVoDjP+26Vd3txXOJd4U/F1?=
 =?us-ascii?Q?awTVNl6MpkxwkjY6I622dXCIEOeMftng9oAJfzjl75UCVOg9W6k3fKAp0Xq1?=
 =?us-ascii?Q?29M2WMzDaoXxML7cj1dNg9GbAjRGa52Yvy6bPz6aC9Lo/w0k0r8L5r2lNKAf?=
 =?us-ascii?Q?jMdC84Ik56GsuYc64gXA9y0i28nyTgDoPBHMOUc1/wIVx2hE0WcRLhfFNWCx?=
 =?us-ascii?Q?Yrpr7GBU2rvWlEMb3oGhUv3SdbfWNXrYsEJgleYTRoZrOADCOz+YYZqIXHhO?=
 =?us-ascii?Q?yizKegp7bimLWxrFHUxHdXjwf68MAzzsKjig0eiZj5EeOTuh7/yPvqqO+4cT?=
 =?us-ascii?Q?PHhErJeIq8wVV9Qq33GmrLsWIh+cQZew5hFUswXky9P1fQMF2IFQwqV7UqHA?=
 =?us-ascii?Q?n311lrlpHD212ZENZWjzg6h3Qj+BKBdlX9gGVvCu4T0Le7a5e0mSP4+qs+OU?=
 =?us-ascii?Q?/1ZNROjLr9Qqs6ufYwOzD1Fg6YGNBBGMNopyBWijPtt5dZxYLP+8Ylb0biSt?=
 =?us-ascii?Q?86FhbEvoT5HHu/ywwDDYrPZXNj9WCcY/KdHuykOHRNhMXfl0UP06D3oFR41N?=
 =?us-ascii?Q?TleeoSLa2qPPc0Q239ZGODsHC9TGoPFWguF461PQPTEMzUbvGbEI28t9SZJz?=
 =?us-ascii?Q?K3kY4OWOxmBc1rJ80KSsPOo5e/LiAVx1978HNiVhTBr5ljBp43ArZsh0ixfR?=
 =?us-ascii?Q?pTG9PiszvQr0ZuwXL/KPXKZFQ/zPBKdYNMNmM/ZpVD2RdabOt0obFZybo3F3?=
 =?us-ascii?Q?25jbkHjRH3cGW4UBL/HUOn096TsUdRqGNKkv0T7YGc0Oz+N3hRD0cVtgODUN?=
 =?us-ascii?Q?krZgsgICn4DsmC3IRdt1y7vuaZh3WPsubUsoFqnuRxsGAMhBQEQ5EZ5D+wa/?=
 =?us-ascii?Q?Km86U5rsYBO5JlCIz5EtLcTJZET16sDoBPZ0ut4OwiUkusLD66bwJxz5QWGy?=
 =?us-ascii?Q?whW0kuq2qA1v2QhXBxFBMY22WVEPhuHV2AQaI/9I+Kd2soeTqjH2lZRFicxS?=
 =?us-ascii?Q?Hov+aY2HASvCUf25aacdiU10b4i2RyXDR3u+XFi0XkHuQ2cA62fnYGDAR9w9?=
 =?us-ascii?Q?3DPwQR0WoPuJY90ccwRUfTIZXk+R0PYnKFdITSbHdML+yhgiTwLhjH6uWnXC?=
 =?us-ascii?Q?rRWzMiN83NciMnxQhj2QisYW9npPJNJh3/QfFgw4skXzjoDrZyo+iN92mq4C?=
 =?us-ascii?Q?xCv2VIwLLPkJ1tUII162qENUXEeOQhQMpisrcbhqGHOTycwWRA9JnieNk2yn?=
 =?us-ascii?Q?dvYBLXrRqpOYh3NtnB/brFtv58Pr89Wn447ZyIx4Ocsp/WaC+uCxetqeyV6e?=
 =?us-ascii?Q?XoSrxZjaROpyk0TYDAFQS7p0k9DqBTxvD0WmrAKU+JwkrdXmCicSJv7lzjTy?=
 =?us-ascii?Q?rMyPoSseO2+57a6n4/wTTfNHzVaNSOMgxFXdE7SG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2effbd58-be8e-43de-3cab-08daefb083f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:37:43.3153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m7ryRTATt4UzHOaZGdgzf4VOPdw0KIWatWKM43XdiAJ5bvbRkTa72F/hwGDH4J0GVmRmUkHyO6xgDQ5K8kcjRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672987067; x=1704523067;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AMXRfrvvTDlkl13thAIT4/kjqUCegWbfMZNA4LFUNSU=;
 b=URJ2PUQF8XvIn7m/KYJQbPIQ+Iw3ndLakr8VNK9VhWw+6Y/vs8/b2sl3
 ulJStNaFOKXg+rbzb5HSYSqoY4ipJNeaQD9MlGQTJMqdO3Iu4FZlQ2GVS
 LvUXg51CUuJMoYLp/CE1ONuJflVof2hreTpyYx45dFmXexmyQn+bfOo0U
 iAxlfj3zC8shaDIw06SqHHQhLc2j43IgqI6iJ0rbIMby6Fp+RBt6N117+
 az3uxGRRaGM4FvdiwkQ035Zf/2/NMzFA+W1jcKkkuFuYGBDHR9ndcnX2d
 hl9Qi+BIcUYu0n9GUNFIoQ7JHoMiddGTEFi7RNL4C+V3nJjhkkY5lBO3m
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=URJ2PUQF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 10/10] ice: implement
 devlink reinit action
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 10/10] ice: implement devlink
> reinit action
> 
> Call ice_unload() and ice_load() in driver reinit flow.
> 
> Block reinit when switchdev, ADQ or SRIOV is active. In reload path we don't
> want to rebuild all features. Ask user to remove them instead of quitely
> removing it in reload path.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 103 +++++++++++++++----
>  1 file changed, 81 insertions(+), 22 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
