Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EAD479392
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 19:09:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9785884CFD;
	Fri, 17 Dec 2021 18:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wELsCNQtxkXH; Fri, 17 Dec 2021 18:09:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EE6684CFB;
	Fri, 17 Dec 2021 18:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1B0C1BF321
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 08:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEB7661022
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 08:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 156RDt5gp0D4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 08:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A52F960A98
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639729762; x=1671265762;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dpvg5J+T6SmSAaziK1EXvgaEBjHLiRMJMdiV5bPQqX0=;
 b=gmeP19wZ96lx6xhWTMozIHPU60A6rNGYM9Wh4YzywCBcCV7bN8dPq+b4
 fxCWSjqTl1QKnIVG4UaqE54/+yz8VfN0DPnvoG0q5aAqdfQBuxpUGxtzH
 8gE2+A/6zohuuWkoq1lf8+Wl42yg4CuGEVaI86H7ZMf9h4Io3a3yJ/NO1
 oRRR5dyDjoxTEPqhiHCA5bMlsvhWrZyVfmErapnl/szFR8wSwKfUFBHwf
 DLORUoLlDCjwKbx3aF1g6SkXhO6py09wg7zUo0/VwyLELohtUJOegkmMc
 AKIGz7zQeoMgldDVqI/5cKJy0d1soShsccXGc41Vh53g/b1NkYiPlt7A4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="303087362"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="303087362"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 00:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="585517994"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 17 Dec 2021 00:29:21 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 00:29:20 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 00:29:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 17 Dec 2021 00:29:20 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 17 Dec 2021 00:29:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ghMENRVPgo0hPF7ohm0wynK8A0uYOpf5izk3XBuo5xD+RoBGQ5UdScwJagAgnCUOc7lq4yZMSJzciR3cnNyW6iGRihOw0HJUQVTZLoBBWzcwDbSH3OK4Fr72fBwqCzJyBQP7IbCQqCrBZS/IXQTZmiaU+enbhbBgnETPUTeOSnqRnieiOqqdu1bYg0JmrdghsiMQ3edGBeJaGpuCqvUuS909RfWAto5ZVw6vhNhqQYJNAUhZtxh58LIHGHcnLAoKO9ZeE8hTRFxmfZx1AB856AroblHAzrPtETWYS1LQcTDa2PWLp07nEfxDGHmFHBcI4E7Qqwq9heFn1Q5JLD7wlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/I0+fECc8Bmc6bD/N36B3w8xpdbJcgJuyMoJwZEOXo=;
 b=Q/cv/AUnEJ3nim3MQJaEgVZlyXKQHZOf5kQBkTbKQ4DkXvqrjWgDcba3Ga0YjILXy7Vy6ulVcJlrq50pXeWe++NIGe/HGqYTazGusJMRtVGVaPi1xBnT58BvwBZMuvA9dcsEWfx7eK8guTd4cgu4mTbECFXYw5nu0Mquab5CQfO3BSEm83urOr1p+4eVWgEBwKvNdXSHSoz/OoI5tFg+D4pYYVc/qRg/2vgXNEPF7+8NJcnjQvVYu6Cq2SQ0vau7T4ZhzlLOiH/ELlPtcqVgdjPd3WA3/lYkUnbiEQPuAJAqGJPRwzc4FKWlEeqP8dOZkZKuKg9A+5VXxxth6OnP4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3113.namprd11.prod.outlook.com (2603:10b6:5:69::19) by
 DM6PR11MB2875.namprd11.prod.outlook.com (2603:10b6:5:cc::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Fri, 17 Dec 2021 08:29:19 +0000
Received: from DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::5845:f902:ce2f:7f8]) by DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::5845:f902:ce2f:7f8%3]) with mapi id 15.20.4778.017; Fri, 17 Dec 2021
 08:29:18 +0000
From: "Laba, SlawomirX" <slawomirx.laba@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net v1] i40e: Fix reset path while removing the driver
Thread-Index: AQHX8xgHB6M17J6b20Gzoc1dAc8C9aw2Wb5Q
Date: Fri, 17 Dec 2021 08:29:18 +0000
Message-ID: <DM6PR11MB311322659381EFE07DD5200687789@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20211217073216.257633-1-karen.sornek@intel.com>
In-Reply-To: <20211217073216.257633-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3994be7-3924-4915-164e-08d9c13751c9
x-ms-traffictypediagnostic: DM6PR11MB2875:EE_
x-microsoft-antispam-prvs: <DM6PR11MB28756C65229E5F9C7089342D87789@DM6PR11MB2875.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XXK5qx95MtZVf960KYD+6RFrfhpSCixvTTMKfR+zS3lXxVo+uCc5O+nDYxq6JnLkkDZvSErnKMCFRzb+yZKOdBq7S9LM7k5JZ5NHAprOVIEcGbRt9pemSv5y1l0AHRXBNB6tXS672TnPCzxG9Ss7M6dxXeHSQwDldBfTXc8iuQs30MOdeTKIgaP7ge/FdGrCZHRQiYTYMPhy1aoNMY1vMnD9T/pS9HKOuIvn9xlh01FsvIKTO4ehks1d3xq3xaScoskSyaI5BnDXI23EzgWDNGMD0inqLqYF5+qEwIdxo/DKESAIIlhY4CF8JPUyQrt1yzdk0IUP1k9OKAMwBGJIBrWNuKyOLSoD63JcGw3paIMLmESzeHlCBLrIdqvAreLAy5CabQsbOgz4zgbX/zAeS/wfcaxRh7VHz1G5S0Fe86HeKsOiqnY73YAs0d2/QOPvOGK4pUCcias7uP2p8NEzeT6sYYkJ5gHAaKT1MkvW+FkPwI9zgnuBE92WbhXjjuLX9vGBiGPdf0InUBOV+IgtiOESScS58T94XpOLIYKAvl32BqaFx8nj/I8a/UnmD28C9HN15h66UyUj7V+bPmjvg7frs2sYV4PyXIFoXgdpFiGTrqtg08cqzvl38xO7k2chI6006Zfi4WbN5a1P1P3rb9lXwIdShjDRRGtuxeUKkmTnICJaNHTkGIeoe/INuWtWO25mumNMWaNoQKMWl0QgJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3113.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(33656002)(26005)(8936002)(66556008)(107886003)(76116006)(66946007)(66446008)(38070700005)(4326008)(110136005)(52536014)(66476007)(83380400001)(9686003)(64756008)(55016003)(122000001)(508600001)(7696005)(8676002)(86362001)(82960400001)(316002)(71200400001)(5660300002)(38100700002)(6506007)(2906002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3PetfAVu+L4wtpj68RUuZvWTPyFNtFkmhiaHe1fC/121VZqxtCJkWuqmg5KM?=
 =?us-ascii?Q?zO3z/a2BrxPHehoE3+bxxJTaqcs9OjoFya1eoS6YbcZsQSJW+0ye8GtfmXnW?=
 =?us-ascii?Q?7BM+U0GBiS1cKORu5D7d8tMWZwqo9KDkXxsWTrMyCeUyQqkBHWY34aKD0D2u?=
 =?us-ascii?Q?R9LP9gf9KVAM4NcReclI3yObo5Axnm9qw0fFO9CMzPz/XpPxBLKk3VZVu8Fp?=
 =?us-ascii?Q?+TxFJmJaZOq8oD5n3eVhnLCIvZkkhOvAN1cHIHgHnpa/83yw+i66Yt3Dk5nG?=
 =?us-ascii?Q?s9DA/7k8w7dtFDSTNV9Wz8XwvAoTILY0KqfGFAl2OQhVvSFuKHdMvbFp8SXH?=
 =?us-ascii?Q?3Y4fymhTg1yTcne12177y+sLmiOzQg92cKdV7uaPAzaIrI7oC/Qg+D+idoL1?=
 =?us-ascii?Q?VPMEkz5kj/SuKMfOAD1aheQzD2/CfxAVWSIubG8RlTb/+Kv+J2onSadeqzlL?=
 =?us-ascii?Q?Yi0HKQd8oCwFTJffodcimZlXhsQVx9cxEPqC/GLbzkWaY7ThlCOrLsfF5a4o?=
 =?us-ascii?Q?wDTW0jEViB2DjLQZgQ/HDCaRFJ4rv+JMzhJwSVKGukCYW+BjABQcz1NuPdcr?=
 =?us-ascii?Q?oIfuQpAH/zFCcrX05Y9eUmphch0zFtWrEMBaaf+JqsnR3m0QRxzvGV0T7k7u?=
 =?us-ascii?Q?S3l3y0iJBlB4pz+3gBsNB09TIVZl6cRsxrlobjAdpPvzF/HSYaDzqXzDYh9u?=
 =?us-ascii?Q?7JKvGW238WGzHan84ydCyO4bVlMHijK03k3i9bdu33Wv4L79D4/x1kMYxBMr?=
 =?us-ascii?Q?YbQdJPCTVmAmDj7Z8LoLXI6YwBrnDbxxXjypHvXjBVwtdCQ3M4XIzeWoLjeM?=
 =?us-ascii?Q?ilcZier97rsXBf9boBmxk6LA9d7Mdty8XLC0CW2foRRUEH+6QvX70MLXE76/?=
 =?us-ascii?Q?F1tdKknBX0bc6lABynS3oI8oJnNZ6miQW4Fbgn2tECLN3MuqjzR3PEME5tkn?=
 =?us-ascii?Q?8r28Ryud+ZXrsRnBoOyqj+AB0n5e04Ih+xcb/JVs6rSDYbIGug9gC3h996NL?=
 =?us-ascii?Q?xZ/j5fx4wK6UZ9aP7+Z4CSoshqyVqx/QaZ46xdPDpiG52G1d/AR5KN2cZb7u?=
 =?us-ascii?Q?a13xKV149LSXo09KoeVxlBOLMsfOTvLzkBm+GGCosK2cAB+s6/0Nn4t3Ioe6?=
 =?us-ascii?Q?NSYgY9ZyYZp1H6/Se1v4RLNXLUM6GcJwNbqeDvcT3h6ltiA2YSCILRnHRrpy?=
 =?us-ascii?Q?dXrVrXcyAIBso+o5RulLFWcRnirTpI/KHUP5DUpBPBMehI3tGTWR0fqnVige?=
 =?us-ascii?Q?eWMKpeiG0jLzCmvpotiAA7uv2h+8MSG1XK5XNaI2q28DP3yfU95RzTYXRNCm?=
 =?us-ascii?Q?3Y8tzWAJL4uJ7iK3DYcKfe0fV3SkdHYJiwyArWktU029M2Zzb4jTune0uIa/?=
 =?us-ascii?Q?SRxnEmozFbE3ID3Fqk3iV+iHPGonnJ9Iy3jMaC3z7VUj/D4l5hKMJLjm3bzX?=
 =?us-ascii?Q?eb531da3NUkAzMZ7MkkzPdtw3EHhv+HUuaqd6triAeYnghmCHXSt3JHIwHo4?=
 =?us-ascii?Q?t8tfsZSiATKga+7Y8sOqmyJJxjT2S95a1aTynswC/KLGMxZZBoII2tg2RLY8?=
 =?us-ascii?Q?w8DEn9Z0AyphDDOcwhumOPApgf8yo1Qw0Vcs34IYbXImHmxJMM8jVsadRdWs?=
 =?us-ascii?Q?tjrvfcOnR7UGPTH9mA+XM+eIkPx/iZo7rNzqkEjCW+IFa6jRHEMXJQhh7I0K?=
 =?us-ascii?Q?0lH+2Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3113.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3994be7-3924-4915-164e-08d9c13751c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2021 08:29:18.8349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nEZQtu1lsh6clXRn5kBhgkdzC3hk2kJB3GpSR5rUi7NPxIeqzNvX6HGEF0c2zzjZmPANDFZjU1p4HLIQgxxuEjdQPWXjr5cno/gkpgd0B9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2875
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 17 Dec 2021 18:08:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset path while
 removing the driver
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Karen, we need to submit another version of this patch.

Contingent Worker providing services to Intel, employed by Mobica Ltd.

> -----Original Message-----
> From: Sornek, Karen <karen.sornek@intel.com>
> Sent: Friday, December 17, 2021 8:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>; Laba, SlawomirX
> <slawomirx.laba@intel.com>; Dziedziuch, SylwesterX
> <sylwesterx.dziedziuch@intel.com>
> Subject: [PATCH net v1] i40e: Fix reset path while removing the driver
> 
> From: Karen Sornek <karen.sornek@intel.com>
> 
> Fix the crash in kernel while dereferencing the NULL pointer, when the driver is
> unloaded and simultaneously the vsi rings are being stopped.
> 
> The hardware requires 50msec in order to finish RX queues disable. For this
> purpose the driver spins in mdelay function for the operation to be completed.
> 
> For example changing number of queues which requires reset would fail in the
> following call stack:
> 
> 1) i40e_prep_for_reset
> 2) i40e_pf_quiesce_all_vsi
> 3) i40e_quiesce_vsi
> 4) i40e_vsi_close
> 5) i40e_down
> 6) i40e_vsi_stop_rings
> 7) i40e_vsi_control_rx -> disable requires the delay of 50msecs
> 8) continue back in i40e_down function where
>    i40e_clean_tx_ring(vsi->tx_rings[i]) is going to crash
> 
> When the driver was spinning vsi_release called i40e_vsi_free_arrays where the
> vsi->tx_rings resources were freed and the pointer was set to NULL.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 12 ++++++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index 8b2edacb0a30..707805c339f6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -144,6 +144,7 @@ enum i40e_state_t {
>  	__I40E_VIRTCHNL_OP_PENDING,
>  	__I40E_RECOVERY_MODE,
>  	__I40E_VF_RESETS_DISABLED,	/* disable resets during i40e_remove
> */
> +	__I40E_IN_REMOVE,
>  	__I40E_VFS_RELEASING,
>  	/* This must be last as it determines the size of the BITMAP */
>  	__I40E_STATE_SIZE__,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 5e01875c7961..a850a75adc69 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10763,6 +10763,9 @@ static void i40e_reset_and_rebuild(struct i40e_pf
> *pf, bool reinit,
>  				   bool lock_acquired)
>  {
>  	int ret;
> +
> +	if (test_bit(__I40E_IN_REMOVE, pf->state))
> +		return;
>  	/* Now we wait for GRST to settle out.
>  	 * We don't have to delete the VEBs or VSIs from the hw switch
>  	 * because the reset will make them disappear.
> @@ -12122,6 +12125,8 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf,
> int queue_count)
> 
>  		vsi->req_queue_pairs = queue_count;
>  		i40e_prep_for_reset(pf);
> +		if (test_bit(__I40E_IN_REMOVE, pf->state))
> +			return pf->alloc_rss_size;
> 
>  		pf->alloc_rss_size = new_rss_size;
> 
> @@ -12948,6 +12953,10 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
> struct bpf_prog *prog,
>  	if (need_reset)
>  		i40e_prep_for_reset(pf);
> 
> +	/* VSI shall be deleted in a moment, just return EINVAL */
> +	if (test_bit(__I40E_IN_REMOVE, pf->state))
> +		return -EINVAL;
> +
>  	old_prog = xchg(&vsi->xdp_prog, prog);
> 
>  	if (need_reset) {
> @@ -16035,6 +16044,9 @@ static void i40e_pci_error_reset_done(struct
> pci_dev *pdev)  {
>  	struct i40e_pf *pf = pci_get_drvdata(pdev);
> 
> +	if (test_bit(__I40E_IN_REMOVE, pf->state))
> +		return;
> +
>  	i40e_reset_and_rebuild(pf, false, false);  }
> 
> --
> 2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
