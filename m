Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 411CB4A7DB9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 03:13:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9F7160745;
	Thu,  3 Feb 2022 02:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MM8LxFG5bE1P; Thu,  3 Feb 2022 02:13:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EC6860736;
	Thu,  3 Feb 2022 02:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 767501BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68DF7400E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EBB0Yb-OeFBu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 02:13:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8E3F400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643854426; x=1675390426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HVRLFlPBBBi7j2abI4Wp6kNGi/o7cyCDAnHLMvWdKHg=;
 b=c4c/v/cVQ7a4OVtvJMR04zPhgjD6OH5+Ch4Y81tLjbxwKPw3VaxCVl9x
 wy0mWlJ/3YdywBIQTlZhYAGR+LAioCvkkNf2va8s4LnWM9FxZvJ3u8wKL
 ce35C5081hAw0WI/fKgOZbflXxmUi90CTgGHgahPLMH9nFrSjY73WBNAq
 +DW9xdRyprk8lZbbz1fckIeBm3HrHIkDHZmrHgayj3MeSom+CSiD3L9YA
 qTGb0SXtuqkE7iIbqyyT0XSW4v5Os/Xtes1NcK+PUBa1G+1yJ7H/GUbsr
 A2Cq4ps/X8ZheEJNlftRIMJdljaS4HNQqrGex5nItJYZtT0xcUcUW8Ip9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="248279105"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="248279105"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 18:13:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="627284533"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2022 18:13:45 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 18:13:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 18:13:44 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 18:13:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=niv2nA9F7APEdjOc1X9Z2ddyzDrWL4mrnbsfgzJ0Xb/07995lO5vHrbmRQXuv16uLwifOEYcn9IYjXJ7sXR6uGEiWqA1cicFoc0wkuUBJHYJG2PvxUnxNAIpDKQstHVQdWV7SlzOML6ohY27HHvOxFBnADZ+jUTqR232WKmf1OaagKcEOZHiM4FXblkvLhC/w5JE00BT0o1Z7rn0uTjmD659lqMPdQ9Vb2ydHsS9CqHEdXb2jeOZ1r7vEdZPHA3gM4HTgws1rJmEjD5vjGgj5l4Oos5G/+/PM0WE9PzvXE2VTtizEEfAszIGU8IAdQnEhyjL6Y2WHZJ21kCbeBHFjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vCH1Ro+YC5Y5x5b6W0r7AC4iI67mhQ9vD6fTObeyNrw=;
 b=iS+2fK2tqlIAd/nGL2/SabWkbliYpqAv/vBqYd7CCsJyloDAj3VCp7+AHkg3VEpQTO/XquAM73XWTBMDAZwuffRmijE8n2AKGxB1DbSW363AblWhdhBBqLB4/T/glPs1lS/71Gt+85EPphZdGhem6COiGEpAZUPT4TFVx8R9ihdQvEcjtSf9KerCPb5n+JX4iVT1mAs7KdKwMagtyWjpUTD1ByGQ0cwF2uqescsNMWE08VTyYK0ID3jKXIKQfW2NXr7L6JM1seC3lNXo1mU3oNMPh/VJ1klKH8sU6wDY0w10pabS/7xyUPNOISC64DdjsjzsbL5H8IZSaGLWlgRwWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Thu, 3 Feb
 2022 02:13:41 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 02:13:41 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 15/19] iecm: implement ethtool
 callbacks
Thread-Index: AQHYE97YZosVA4qDqEav0ovphHm2Pax4vc0AgAhZ3yA=
Date: Thu, 3 Feb 2022 02:13:41 +0000
Message-ID: <CO1PR11MB51860ACAFD75EE9B29D9856F8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-16-alan.brady@intel.com>
 <20220128181338.29738-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128181338.29738-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c1e828e-76b0-4780-2dc5-08d9e6bacc30
x-ms-traffictypediagnostic: DM6PR11MB4706:EE_
x-microsoft-antispam-prvs: <DM6PR11MB470605FED06D392E04C07AA88F289@DM6PR11MB4706.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:153;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: byOAzOZHZnrjXZv6NOtPe7j5cqdVKeSL9sTt45ETq3SO2qRQCkzaIfwzZr5/wwyEfE4wB/neBGIy7U4Ew2k7jVdS5NBsxHzj5C0YtspeVLbvbCfRquEkM1WXjU26dFcD3Uexy//lIhq/IXYdYtGl3fZscyV70K5TaPAbJ4YQI8zAoPb5UY1Qs45X9+OvFDK+M4Dg/aycQQ4I0UxA5oy+UZ2NBnQ7rUenHAUVXAUHqwdoHwbLP2AwF6POdK6VNb1rLSV/ijHqbCAuV9v0uhlYZKlIE6oUHiOpmsJpULYsqNDm1tFST4ZFHKJ9h86vRJ4yTggnAOZUCPNT/2bx5KnKlzpLlRIFOmiwS3lqmm3sP5QZseQZhy3NhXyBdxP2m40Qlv3+2JQudkM+QMxmQikAkjyOpBMgTukJVmF/40OKL5sJP1oycyO6m1u7G99wG31MvrSz91yhQHFrYxvXgmTbiPNWKMzsOHtKcRtYLh8Td1l85B5ztwBdOO5YZFCtDjfzewBJSMWvckFi5IVlODyZanNkq1bfTVndzwNVY70oTOivlWZcv3Wz/KLM/sqjD8HTt3T4zC0FpK1fD5Ur09Eb/KBEmIyZslWxZLqi3WDS6HNfnXaAyZXrXRS46TgkEYXmp7+/gplRLnxBLMzd2K/YifY9oh8kcNLJ5xdfZZTu23DOhRR7EzaMzav1hz7ldW8YYHtUe6TD1nL9l3yLSfiKCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6862004)(66476007)(38100700002)(64756008)(8676002)(4326008)(55016003)(83380400001)(76116006)(82960400001)(33656002)(53546011)(9686003)(71200400001)(2906002)(8936002)(38070700005)(66946007)(66446008)(66556008)(7696005)(6506007)(52536014)(107886003)(508600001)(122000001)(54906003)(26005)(5660300002)(86362001)(6636002)(30864003)(316002)(186003)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NIeI7GM1yzUxryvalthZbY6kbGoHrxEgCLA5+9SVfO50xvhLg2VhiXXe2+DD?=
 =?us-ascii?Q?iyF2mjLHC1XsMrtIFskQPUm4Wa250iBccDfRdAx0zqsXCqRmbfUhwZ5618Oe?=
 =?us-ascii?Q?nYSKIfcouhBd0UQkBj57fgOPAzoTNBUhdnx9ILD9OaYaiO4uUxj4Goag2wH+?=
 =?us-ascii?Q?gruI0wZin1fVuSD1BiqQNf8I22h3Tb8AW/HqzSqMedcKQfvHNgkcfOBqR0Gs?=
 =?us-ascii?Q?hoR87QIW7JZ9d+i4p8obrFRWWq3F5HrfuqBJwYJQ01XcYmxlYUM6GbWYnosE?=
 =?us-ascii?Q?/gnZSd1UKYXFFl/GMlc9gOIi1Y0fANr/RQBMPpXcYTtOsMdeWW/hoBqlypg0?=
 =?us-ascii?Q?7UOSUvqqVTkQ2i2U84LX0hjgo4v9LDVMmETmWqsBdbv5epqU1GgCWhpcebWA?=
 =?us-ascii?Q?ENL7um9smBaw6AjSAouwHHN3MXFzCPysHylDkpIeQfW0pAfqJGFVU8poJ/ks?=
 =?us-ascii?Q?U70Gk544ixMZuVPbUtDfF8cG1U9yq1h+4ZR/en2e4CnpX1vyxMbUGEiIPMxY?=
 =?us-ascii?Q?zRXnLVqmXRu3L4RqtLJxw0vVc+SOF/bTvxRzvypPUXBMSSinAkECO4cYmOza?=
 =?us-ascii?Q?hAyoghTWR76icyTGxWhOgZceW7dMAUDnrGrC0cUjbTcul00Y3EriIi50MUCX?=
 =?us-ascii?Q?0bd/Vi9F1yeSDP2o61ABvqOWgh+wgjYiUM3jn8RXo267pnbhA/gupRYkkO/A?=
 =?us-ascii?Q?F8QqyDDSYIRQ1t839npghWvsuyRP24so4y5aLVpLKDLy7XxPtq4QelEKiubC?=
 =?us-ascii?Q?Qtajknu1XB3XLqUTDsCuE/ynbs7uAdAW8Ovp+RB0onCwDzQhDs5Wcan77XoK?=
 =?us-ascii?Q?YL1my/jm6N7tzQO8K5KqPMeyjfksdg+yycmlxWlBxeB3B1JS40ydzL4ijUCN?=
 =?us-ascii?Q?/t6a/ivwzW+0PmJaPaH2J5gixYi5+HswEOF9wYx+boDm3xLReDovuWhiSi/i?=
 =?us-ascii?Q?P1vkOUAxHPeVgqNRVNYKj3H78xcHDtRh/PqykVDMtCeSM5gyyfs40+grvB95?=
 =?us-ascii?Q?P68oU8+GyPHjj8ojosAtZEHQd0bsh0ou2fwRE6Z/JNyLNx8n39yHhV4rGS2x?=
 =?us-ascii?Q?G8CAnBEZ9DuF//c0I9crMSjHzDJ5Ej+ep91Psm8f0vts+2H+lQA1YHFhAfHh?=
 =?us-ascii?Q?d5DK2iWb//eJZhQ7lAqoVyq0FAUiTEM+4rWIB+XOnY2yN6f+i0UD2ociX8V4?=
 =?us-ascii?Q?Ny/Nq9g3uGR6qR0HpuiCyhgYLawiUrj3kIcrZ9RDLVaUhMGBc840mjBtWoZI?=
 =?us-ascii?Q?3CAc/mhRYcz8JLZB0W2IrbdE+BNkbAw09y71JsLFNwV280s+CTFLSH4Zqd6G?=
 =?us-ascii?Q?UCBFqJTIueddoqtls7AwKwBiTVxr9dWCIZDP8f+k6T0kzIBsFU9Xc8xmHbwo?=
 =?us-ascii?Q?7VhWGXOBAwVTp5FZgYREAYeZNp0+4trfbvhTjHbbKRyX38ApY6A2yYyhpNMQ?=
 =?us-ascii?Q?OgvJDdr6fF4TO4jVxgDDgTypb8pgAuVvbdGtp2OpNmmV9glg4Lt3F47QJ30Y?=
 =?us-ascii?Q?EWRmiOi2KyQgFCKz3tyV3zdEvO3mVeKmlyHkydF07QJ9vU0JJGMfo16PzxlV?=
 =?us-ascii?Q?XnIkiN0oPBF6TdiOb+HZMLL3Wf+Ii4h1+tkb6Y1UDDhJR5tIaldVa/3M+5RK?=
 =?us-ascii?Q?bcUX43sn9BF8YtvgUD5AzQ0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c1e828e-76b0-4780-2dc5-08d9e6bacc30
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 02:13:41.2401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CgvyJR3C+9rvvrh91ghLlqjruP3GqTiKwRvBihoEjjU/BE88qb0hFRdxjw6xlKmlhfXwMJfzadAOPhgMY5nWyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 15/19] iecm: implement
 ethtool callbacks
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 10:14 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim,
> Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 15/19] iecm: implement
> ethtool callbacks
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:10:05 -0800
> 
> > This does everything needed to handle ethtool ops minus a few stubs
> > for cloud filters and other advanced features which will be added in
> > later in this series.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/Makefile      |    1 +
> >  .../net/ethernet/intel/iecm/iecm_ethtool.c    | 1325
> +++++++++++++++++
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |   11 +-
> >  drivers/net/ethernet/intel/include/iecm.h     |    1 +
> >  4 files changed, 1337 insertions(+), 1 deletion(-)  create mode
> > 100644 drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/Makefile
> > b/drivers/net/ethernet/intel/iecm/Makefile
> > index 205d6f2b436a..fe2ed403d35c 100644
> > --- a/drivers/net/ethernet/intel/iecm/Makefile
> > +++ b/drivers/net/ethernet/intel/iecm/Makefile
> > @@ -15,6 +15,7 @@ iecm-y := \
> >  	iecm_virtchnl.o \
> >  	iecm_txrx.o \
> >  	iecm_singleq_txrx.o \
> > +	iecm_ethtool.o \
> >  	iecm_controlq.o \
> >  	iecm_controlq_setup.o \
> >  	iecm_main.o
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > b/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > new file mode 100644
> > index 000000000000..32d905fb1bb6
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > @@ -0,0 +1,1325 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#include "iecm.h"
> > +
> > +/**
> > + * iecm_get_rxnfc - command to get RX flow classification rules
> > + * @netdev: network interface device structure
> > + * @cmd: ethtool rxnfc command
> > + * @rule_locs: pointer to store rule locations
> > + *
> > + * Returns Success if the command is supported.
> > + */
> > +static int iecm_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc
> *cmd,
> > +			  u32 __always_unused *rule_locs)
> 
> Kernel Kbuild system tell compilers to not complain on unused function
> arguments.
> It's pointless to add __always_unused here.
> 

Sparse does complain about it (e.g. make ... C=2) and it's present in other (non-Intel) network drivers. I think I need a better argument to remove it.

> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	int ret = -EOPNOTSUPP;
> > +
> > +	switch (cmd->cmd) {
> > +	case ETHTOOL_GRXRINGS:
> > +		cmd->data = vport->num_rxq;
> > +		ret = 0;
> > +		break;
> > +	case ETHTOOL_GRXCLSRLCNT:
> > +		/* stub */
> > +		ret = 0;
> > +		break;
> > +	case ETHTOOL_GRXCLSRULE:
> > +		/* stub */
> > +		break;
> > +	case ETHTOOL_GRXCLSRLALL:
> > +		/* stub */
> > +		break;
> > +	case ETHTOOL_GRXFH:
> > +		/* stub */
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +/**
> > + * iecm_set_rxnfc - command to set Rx flow rules.
> > + * @netdev: network interface device structure
> > + * @cmd: ethtool rxnfc command
> > + *
> > + * Returns 0 for success and negative values for errors  */ static
> > +int iecm_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc
> > +*cmd) {
> > +	int ret = -EOPNOTSUPP;
> > +
> > +	switch (cmd->cmd) {
> > +	case ETHTOOL_SRXCLSRLINS:
> > +		/* stub */
> > +		break;
> > +	case ETHTOOL_SRXCLSRLDEL:
> > +		/* stub */
> > +		break;
> > +	case ETHTOOL_SRXFH:
> > +		/* stub */
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +/**
> > + * iecm_get_rxfh_key_size - get the RSS hash key size
> > + * @netdev: network interface device structure
> > + *
> > + * Returns the table size.
> > + */
> > +static u32 iecm_get_rxfh_key_size(struct net_device *netdev) {
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +
> > +	if (!iecm_is_cap_ena_all(vport->adapter, IECM_RSS_CAPS,
> IECM_CAP_RSS)) {
> > +		dev_info(&vport->adapter->pdev->dev, "RSS is not
> supported on this device\n");
> > +		return 0;
> > +	}
> > +
> > +	return vport->adapter->rss_data.rss_key_size;
> 
> If you invert the condition, it would take less lines.
> 

Sure why not. Will fix.

> > +}
> > +
> > +/**
> > + * iecm_get_rxfh_indir_size - get the rx flow hash indirection table
> > +size
> > + * @netdev: network interface device structure
> > + *
> > + * Returns the table size.
> > + */
> > +static u32 iecm_get_rxfh_indir_size(struct net_device *netdev) {
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +
> > +	if (!iecm_is_cap_ena_all(vport->adapter, IECM_RSS_CAPS,
> IECM_CAP_RSS)) {
> > +		dev_info(&vport->adapter->pdev->dev, "RSS is not
> supported on this device\n");
> > +		return 0;
> > +	}
> > +
> > +	return vport->adapter->rss_data.rss_lut_size;
> 
> Same here.
> 
> > +}
> > +
> > +/**
> > + * iecm_get_rxfh - get the rx flow hash indirection table
> > + * @netdev: network interface device structure
> > + * @indir: indirection table
> > + * @key: hash key
> > + * @hfunc: hash function in use
> > + *
> > + * Reads the indirection table directly from the hardware. Always returns
> 0.
> > + */
> > +static int iecm_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
> > +			 u8 *hfunc)
> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	struct iecm_adapter *adapter;
> > +	u16 i;
> > +
> > +	adapter = vport->adapter;
> > +
> > +	if (!iecm_is_cap_ena_all(adapter, IECM_RSS_CAPS,
> IECM_CAP_RSS)) {
> > +		dev_info(&vport->adapter->pdev->dev, "RSS is not
> supported on this device\n");
> > +		return 0;
> > +	}
> > +
> > +	if (adapter->state != __IECM_UP)
> > +		return 0;
> > +
> > +	if (hfunc)
> > +		*hfunc = ETH_RSS_HASH_TOP;
> > +
> > +	if (key)
> > +		memcpy(key, adapter->rss_data.rss_key,
> > +		       adapter->rss_data.rss_key_size);
> > +
> > +	if (indir)
> > +		/* Each 32 bits pointed by 'indir' is stored with a lut entry
> */
> > +		for (i = 0; i < adapter->rss_data.rss_lut_size; i++)
> > +			indir[i] = adapter->rss_data.rss_lut[i];
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_set_rxfh - set the rx flow hash indirection table
> > + * @netdev: network interface device structure
> > + * @indir: indirection table
> > + * @key: hash key
> > + * @hfunc: hash function to use
> > + *
> > + * Returns -EINVAL if the table specifies an invalid queue id,
> > +otherwise
> > + * returns 0 after programming the table.
> > + */
> > +static int iecm_set_rxfh(struct net_device *netdev, const u32 *indir,
> > +			 const u8 *key, const u8 hfunc)
> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	struct iecm_adapter *adapter;
> > +	u16 lut;
> > +
> > +	adapter = vport->adapter;
> > +
> > +	if (!iecm_is_cap_ena_all(adapter, IECM_RSS_CAPS,
> IECM_CAP_RSS)) {
> > +		dev_info(&adapter->pdev->dev, "RSS is not supported on
> this device\n");
> > +		return 0;
> > +	}
> > +	if (adapter->state != __IECM_UP)
> > +		return 0;
> > +	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc !=
> ETH_RSS_HASH_TOP)
> > +		return -EOPNOTSUPP;
> > +
> > +	if (key)
> > +		memcpy(adapter->rss_data.rss_key, key,
> > +		       adapter->rss_data.rss_key_size);
> > +
> > +	if (indir) {
> > +		for (lut = 0; lut < adapter->rss_data.rss_lut_size; lut++)
> > +			adapter->rss_data.rss_lut[lut] = indir[lut];
> > +	}
> > +
> > +	return iecm_config_rss(vport);
> > +}
> > +
> > +/**
> > + * iecm_get_channels: get the number of channels supported by the
> > +device
> > + * @netdev: network interface device structure
> > + * @ch: channel information structure
> > + *
> > + * Report maximum of TX and RX. Report one extra channel to match our
> > +MailBox
> > + * Queue.
> > + */
> > +static void iecm_get_channels(struct net_device *netdev,
> > +			      struct ethtool_channels *ch) {
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	unsigned int combined;
> > +	int num_txq, num_rxq;
> > +
> > +	num_txq = vport->adapter->config_data.num_req_tx_qs;
> > +	num_rxq = vport->adapter->config_data.num_req_rx_qs;
> > +
> > +	combined = min(num_txq, num_rxq);
> > +
> > +	/* Report maximum channels */
> > +	ch->max_combined = vport->adapter->max_queue_limit;
> > +
> > +	/* For now we've only enabled combined queues but will be
> enabling
> > +	 * asymmetric queues after splitq model is fleshed out more.
> > +	 */
> > +	ch->max_rx = 0;
> > +	ch->max_tx = 0;
> > +
> > +	ch->max_other = IECM_MAX_NONQ;
> > +	ch->other_count = IECM_MAX_NONQ;
> > +
> > +	ch->combined_count = combined;
> > +	ch->rx_count = num_rxq - combined;
> > +	ch->tx_count = num_txq - combined;
> > +}
> > +
> > +/**
> > + * iecm_set_channels: set the new channel count
> > + * @netdev: network interface device structure
> > + * @ch: channel information structure
> > + *
> > + * Negotiate a new number of channels with CP. Returns 0 on success,
> > +negative
> > + * on failure.
> > + */
> > +static int iecm_set_channels(struct net_device *netdev,
> > +			     struct ethtool_channels *ch)
> > +{
> > +	unsigned int num_req_tx_q = ch->combined_count + ch->tx_count;
> > +	unsigned int num_req_rx_q = ch->combined_count + ch->rx_count;
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	int num_txq, num_rxq, err;
> > +
> > +	if (num_req_tx_q == 0 || num_req_rx_q == 0)
> > +		return -EINVAL;
> > +
> > +	num_txq = vport->adapter->config_data.num_req_tx_qs;
> > +	num_rxq = vport->adapter->config_data.num_req_rx_qs;
> > +
> > +	if (num_req_tx_q == num_txq && num_req_rx_q == num_rxq)
> > +		return 0;
> > +
> > +	vport->adapter->config_data.num_req_tx_qs = num_req_tx_q;
> > +	vport->adapter->config_data.num_req_rx_qs = num_req_rx_q;
> > +
> > +	if (adapter->virt_ver_maj < VIRTCHNL_VERSION_MAJOR_2) {
> > +		err = adapter->dev_ops.vc_ops.add_queues(vport,
> > +							 num_req_tx_q, 0,
> > +							 num_req_rx_q, 0);
> > +	} else {
> > +		err = iecm_initiate_soft_reset(vport,
> __IECM_SR_Q_CHANGE);
> > +	}
> 
> One-liners, no need for braces.
> 

The `if` exists across multiple lines so we would prefer to keep braces. As such the 'else' also gets them.

> > +
> > +	if (err) {
> > +		/* roll back queue change */
> > +		vport->adapter->config_data.num_req_tx_qs = num_txq;
> > +		vport->adapter->config_data.num_req_rx_qs = num_rxq;
> > +	}
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_get_ringparam - Get ring parameters
> > + * @netdev: network interface device structure
> > + * @ring: ethtool ringparam structure
> > + * @kring: unused
> > + * @ext_ack: unused
> > + *
> > + * Returns current ring parameters. TX and RX rings are reported
> > +separately,
> > + * but the number of rings is not reported.
> > + */
> > +static void iecm_get_ringparam(struct net_device *netdev,
> > +			       struct ethtool_ringparam *ring,
> > +			       __always_unused struct
> kernel_ethtool_ringparam *kring,
> > +			       __always_unused struct netlink_ext_ack
> *ext_ack)
> 
> Same here for __always_unused. +lines longer than 79.
> 
> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +
> > +	ring->rx_max_pending = IECM_MAX_RXQ_DESC;
> > +	ring->tx_max_pending = IECM_MAX_TXQ_DESC;
> > +	ring->rx_pending = vport->rxq_desc_count;
> > +	ring->tx_pending = vport->txq_desc_count; }
> > +
> > +/**
> > + * iecm_set_ringparam - Set ring parameters
> > + * @netdev: network interface device structure
> > + * @ring: ethtool ringparam structure
> > + * @kring: unused
> > + * @ext_ack: unused
> > + *
> > + * Sets ring parameters. TX and RX rings are controlled separately,
> > +but the
> > + * number of rings is not specified, so all rings get the same settings.
> > + */
> > +static int iecm_set_ringparam(struct net_device *netdev,
> > +			      struct ethtool_ringparam *ring,
> > +			      __always_unused struct
> kernel_ethtool_ringparam *kring,
> > +			      __always_unused struct netlink_ext_ack
> *ext_ack)
> 
> Same.
> 
> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	u32 new_rx_count, new_tx_count;
> > +	int i;
> > +
> > +	if (iecm_is_queue_model_split(vport->rxq_model))
> > +		/* When in splitq mode, any one RXQ needs to contain
> enough
> > +		 * descriptors to service the 2 buffer queues associated with
> > +		 * it. Since each buffer queue must be a multiple of 32, the
> > +		 * RXQ then needs to be a multiple of 64 to be divided into
> > +		 * multiples of 32 for each buffer queue
> > +		 */
> > +		new_rx_count = ALIGN(ring->rx_pending,
> > +
> IECM_REQ_SPLITQ_RXQ_DESC_MULTIPLE);
> > +	else
> > +		new_rx_count = ALIGN(ring->rx_pending,
> IECM_REQ_DESC_MULTIPLE);
> > +
> > +	new_tx_count = ALIGN(ring->tx_pending,
> IECM_REQ_DESC_MULTIPLE);
> > +
> > +	/* if nothing to do return success */
> > +	if (new_tx_count == vport->txq_desc_count &&
> > +	    new_rx_count == vport->rxq_desc_count)
> > +		return 0;
> > +
> > +	vport->adapter->config_data.num_req_txq_desc = new_tx_count;
> > +	vport->adapter->config_data.num_req_rxq_desc = new_rx_count;
> > +
> > +	/* Since we adjusted the RX completion queue count, the RX buffer
> queue
> > +	 * descriptor count needs to be adjusted as well
> > +	 */
> > +	for (i = 0; i < vport->num_bufqs_per_qgrp; i++)
> > +		vport->bufq_desc_count[i] =
> > +			IECM_RX_BUFQ_DESC_COUNT(new_rx_count,
> > +						vport-
> >num_bufqs_per_qgrp);
> > +
> > +	return iecm_initiate_soft_reset(vport,
> __IECM_SR_Q_DESC_CHANGE); }
> > +
> > +/**
> > + * struct iecm_stats - definition for an ethtool statistic
> > + * @stat_string: statistic name to display in ethtool -S output
> > + * @sizeof_stat: the sizeof() the stat, must be no greater than
> > +sizeof(u64)
> > + * @stat_offset: offsetof() the stat from a base pointer
> > + *
> > + * This structure defines a statistic to be added to the ethtool stats
> buffer.
> > + * It defines a statistic as offset from a common base pointer. Stats
> > +should
> > + * be defined in constant arrays using the IECM_STAT macro, with
> > +every element
> > + * of the array using the same _type for calculating the sizeof_stat
> > +and
> > + * stat_offset.
> > + *
> > + * The @sizeof_stat is expected to be sizeof(u8), sizeof(u16),
> > +sizeof(u32) or
> > + * sizeof(u64). Other sizes are not expected and will produce a
> > +WARN_ONCE from
> > + * the iecm_add_ethtool_stat() helper function.
> > + *
> > + * The @stat_string is interpreted as a format string, allowing
> > +formatted
> > + * values to be inserted while looping over multiple structures for a
> > +given
> > + * statistics array. Thus, every statistic string in an array should
> > +have the
> > + * same type and number of format specifiers, to be formatted by
> > +variadic
> > + * arguments to the iecm_add_stat_string() helper function.
> > + */
> > +struct iecm_stats {
> > +	char stat_string[ETH_GSTRING_LEN];
> > +	int sizeof_stat;
> > +	int stat_offset;
> > +};
> > +
> > +/* Helper macro to define an iecm_stat structure with proper size and
> type.
> > + * Use this when defining constant statistics arrays. Note that
> > +@_type expects
> > + * only a type name and is used multiple times.
> > + */
> > +#define IECM_STAT(_type, _name, _stat) { \
> > +	.stat_string = _name, \
> > +	.sizeof_stat = sizeof_field(_type, _stat), \
> > +	.stat_offset = offsetof(_type, _stat) \ }
> > +
> > +/* Helper macro for defining some statistics related to queues */
> > +#define IECM_QUEUE_STAT(_name, _stat) \
> > +	IECM_STAT(struct iecm_queue, _name, _stat)
> > +
> > +/* Stats associated with a Tx queue */ static const struct iecm_stats
> > +iecm_gstrings_tx_queue_stats[] = {
> > +	IECM_QUEUE_STAT("packets", q_stats.tx.packets),
> > +	IECM_QUEUE_STAT("bytes", q_stats.tx.bytes),
> > +	IECM_QUEUE_STAT("lso_pkts", q_stats.tx.lso_pkts), };
> > +
> > +/* Stats associated with an Rx queue */ static const struct
> > +iecm_stats iecm_gstrings_rx_queue_stats[] = {
> > +	IECM_QUEUE_STAT("packets", q_stats.rx.packets),
> > +	IECM_QUEUE_STAT("bytes", q_stats.rx.bytes),
> > +	IECM_QUEUE_STAT("rsc_pkts", q_stats.rx.rsc_pkts), };
> > +
> > +#define IECM_TX_QUEUE_STATS_LEN
> 	ARRAY_SIZE(iecm_gstrings_tx_queue_stats)
> > +#define IECM_RX_QUEUE_STATS_LEN
> 	ARRAY_SIZE(iecm_gstrings_rx_queue_stats)
> > +
> > +#define IECM_PORT_STAT(_name, _stat) \
> > +	IECM_STAT(struct iecm_vport,  _name, _stat)
> > +
> > +static const struct iecm_stats iecm_gstrings_port_stats[] = {
> > +	IECM_PORT_STAT("port-rx-csum_errors",
> port_stats.rx_hw_csum_err),
> > +	IECM_PORT_STAT("port-rx-hsplit", port_stats.rx_hsplit),
> > +	IECM_PORT_STAT("port-rx-hsplit_hbo", port_stats.rx_hsplit_hbo),
> > +	IECM_PORT_STAT("tx-linearized_pkts", port_stats.tx_linearize),
> > +	IECM_PORT_STAT("rx-bad_descs", port_stats.rx_bad_descs),
> > +	IECM_PORT_STAT("port-rx_bytes", port_stats.eth_stats.rx_bytes),
> > +	IECM_PORT_STAT("port-rx-unicast_pkts",
> port_stats.eth_stats.rx_unicast),
> > +	IECM_PORT_STAT("port-rx-multicast_pkts",
> port_stats.eth_stats.rx_multicast),
> > +	IECM_PORT_STAT("port-rx-broadcast_pkts",
> port_stats.eth_stats.rx_broadcast),
> > +	IECM_PORT_STAT("port-rx-unknown_protocol",
> > +port_stats.eth_stats.rx_unknown_protocol),
> 
> 94-cols line.
> 
> > +	IECM_PORT_STAT("port-tx_bytes", port_stats.eth_stats.tx_bytes),
> > +	IECM_PORT_STAT("port-tx-unicast_pkts",
> port_stats.eth_stats.tx_unicast),
> > +	IECM_PORT_STAT("port-tx-multicast_pkts",
> port_stats.eth_stats.tx_multicast),
> > +	IECM_PORT_STAT("port-tx-broadcast_pkts",
> port_stats.eth_stats.tx_broadcast),
> > +	IECM_PORT_STAT("port-tx_errors", port_stats.eth_stats.tx_errors),
> };
> > +
> > +#define IECM_PORT_STATS_LEN ARRAY_SIZE(iecm_gstrings_port_stats)
> > +
> > +struct iecm_priv_flags {
> > +	char flag_string[ETH_GSTRING_LEN];
> > +	bool read_only;
> > +	u32 bitno;
> > +};
> > +
> > +#define IECM_PRIV_FLAG(_name, _bitno, _read_only) { \
> > +	.read_only = _read_only, \
> > +	.flag_string = _name, \
> > +	.bitno = _bitno, \
> > +}
> > +
> > +static const struct iecm_priv_flags iecm_gstrings_priv_flags[] = {
> > +	IECM_PRIV_FLAG("header-split", __IECM_PRIV_FLAGS_HDR_SPLIT,
> 0), };
> > +
> > +#define IECM_PRIV_FLAGS_STR_LEN
> ARRAY_SIZE(iecm_gstrings_priv_flags)
> > +
> > +/**
> > + * __iecm_add_qstat_strings - copy stat strings into ethtool buffer
> > + * @p: ethtool supplied buffer
> > + * @stats: stat definitions array
> > + * @size: size of the stats array
> > + * @type: stat type
> > + * @idx: stat index
> > + *
> > + * Format and copy the strings described by stats into the buffer
> > +pointed at
> > + * by p.
> > + */
> > +static void __iecm_add_qstat_strings(u8 **p, const struct iecm_stats
> stats[],
> > +				     const unsigned int size, const char *type,
> > +				     unsigned int idx)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < size; i++) {
> > +		snprintf((char *)*p, ETH_GSTRING_LEN,
> > +			 "%2s-%u.%.17s", type, idx, stats[i].stat_string);
> > +		*p += ETH_GSTRING_LEN;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_add_qstat_strings - Copy queue stat strings into ethtool
> > +buffer
> > + * @p: ethtool supplied buffer
> > + * @stats: stat definitions array
> > + * @type: stat type
> > + * @idx: stat idx
> > + *
> > + * Format and copy the strings described by the const static stats
> > +value into
> > + * the buffer pointed at by p.
> > + *
> > + * The parameter @stats is evaluated twice, so parameters with side
> > +effects
> > + * should be avoided. Additionally, stats must be an array such that
> > + * ARRAY_SIZE can be called on it.
> > + */
> > +#define iecm_add_qstat_strings(p, stats, type, idx) \
> > +	__iecm_add_qstat_strings(p, stats, ARRAY_SIZE(stats), type, idx)
> > +
> > +/**
> > + * iecm_add_port_stat_strings - Copy port stat strings into ethtool
> > +buffer
> > + * @p: ethtool buffer
> > + * @stats: struct to copy from
> > + */
> > +static void iecm_add_port_stat_strings(u8 **p, const struct
> > +iecm_stats stats[]) {
> > +	const unsigned int size = IECM_PORT_STATS_LEN;
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < size; i++) {
> > +		snprintf((char *)*p, ETH_GSTRING_LEN, "%.32s",
> > +			 stats[i].stat_string);
> > +		*p += ETH_GSTRING_LEN;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_get_stat_strings - Get stat strings
> > + * @netdev: network interface device structure
> > + * @data: buffer for string data
> > + *
> > + * Builds the statistics string table  */ static void
> > +iecm_get_stat_strings(struct net_device *netdev, u8 *data) {
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	unsigned int i;
> > +	u16 max_q;
> > +
> > +	iecm_add_port_stat_strings(&data, iecm_gstrings_port_stats);
> > +
> > +	/* It's critical that we always report a constant number of strings
> and
> > +	 * that the strings are reported in the same order regardless of how
> > +	 * many queues are actually in use.
> > +	 */
> > +	max_q = vport->adapter->max_queue_limit;
> > +
> > +	for (i = 0; i < max_q; i++)
> > +		iecm_add_qstat_strings(&data,
> iecm_gstrings_tx_queue_stats,
> > +				       "tx", i);
> > +	for (i = 0; i < max_q; i++)
> > +		iecm_add_qstat_strings(&data,
> iecm_gstrings_rx_queue_stats,
> > +				       "rx", i);
> > +}
> > +
> > +/**
> > + * iecm_get_priv_flag_strings - Get private flag strings
> > + * @netdev: network interface device structure
> > + * @data: buffer for string data
> > + *
> > + * Builds the private flags string table  */ static void
> > +iecm_get_priv_flag_strings(struct net_device *netdev, u8 *data) {
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < IECM_PRIV_FLAGS_STR_LEN; i++) {
> > +		snprintf((char *)data, ETH_GSTRING_LEN, "%s",
> > +			 iecm_gstrings_priv_flags[i].flag_string);
> > +		data += ETH_GSTRING_LEN;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_get_priv_flags - report device private flags
> > + * @dev: network interface device structure
> > + *
> > + * The get string set count and the string set should be matched for
> > +each
> > + * flag returned.  Add new strings for each flag to the
> > +iecm_gstrings_priv_flags
> > + * array.
> > + *
> > + * Returns a u32 bitmap of flags.
> > + **/
> > +static u32 iecm_get_priv_flags(struct net_device *dev) {
> > +	struct iecm_netdev_priv *np = netdev_priv(dev);
> > +	struct iecm_user_config_data *user_data;
> > +	struct iecm_vport *vport = np->vport;
> > +	u32 i, ret_flags = 0;
> > +
> > +	user_data = &vport->adapter->config_data;
> > +
> > +	for (i = 0; i < IECM_PRIV_FLAGS_STR_LEN; i++) {
> > +		const struct iecm_priv_flags *priv_flag;
> > +
> > +		priv_flag = &iecm_gstrings_priv_flags[i];
> > +
> > +		if (test_bit(priv_flag->bitno, user_data->user_flags))
> > +			ret_flags |= BIT(i);
> > +	}
> > +
> > +	return ret_flags;
> > +}
> > +
> > +/**
> > + * iecm_set_priv_flags - set private flags
> > + * @dev: network interface device structure
> > + * @flags: bit flags to be set
> > + **/
> > +static int iecm_set_priv_flags(struct net_device *dev, u32 flags) {
> > +	struct iecm_netdev_priv *np = netdev_priv(dev);
> > +	DECLARE_BITMAP(change_flags, __IECM_USER_FLAGS_NBITS);
> > +	DECLARE_BITMAP(orig_flags, __IECM_USER_FLAGS_NBITS);
> 
> RCT.
> 

Will fix.

> > +	struct iecm_user_config_data *user_data;
> > +	struct iecm_vport *vport = np->vport;
> > +	bool is_reset_needed;
> > +	int err = 0;
> > +	u32 i;
> > +
> > +	if (flags > BIT(IECM_PRIV_FLAGS_STR_LEN))
> > +		return -EINVAL;
> > +
> > +	user_data = &vport->adapter->config_data;
> > +
> > +	bitmap_copy(orig_flags, user_data->user_flags,
> > +__IECM_USER_FLAGS_NBITS);
> > +
> > +	for (i = 0; i < IECM_PRIV_FLAGS_STR_LEN; i++) {
> > +		const struct iecm_priv_flags *priv_flag;
> > +
> > +		priv_flag = &iecm_gstrings_priv_flags[i];
> > +
> > +		if (flags & BIT(i)) {
> > +			/* If this is a read-only flag, it can't be changed */
> > +			if (priv_flag->read_only)
> > +				return -EOPNOTSUPP;
> > +
> > +			set_bit(priv_flag->bitno, user_data->user_flags);
> > +		} else {
> > +			clear_bit(priv_flag->bitno, user_data->user_flags);
> > +		}
> > +	}
> > +
> > +	bitmap_xor(change_flags, user_data->user_flags,
> > +		   orig_flags, __IECM_USER_FLAGS_NBITS);
> > +
> > +	is_reset_needed =
> > +		!!(test_bit(__IECM_PRIV_FLAGS_HDR_SPLIT,
> change_flags));
> 
> Shorter name would allow avoiding line break.
> 

For IECM_PRIV_FLAGS_HDR_SPLIT? Sure we're open to suggestion if you have a name that communicates the same level of information effectively.

> > +
> > +	/* Issue reset to cause things to take effect, as additional bits
> > +	 * are added we will need to create a mask of bits requiring reset
> > +	 */
> > +	if (is_reset_needed)
> > +		err = iecm_initiate_soft_reset(vport,
> __IECM_SR_HSPLIT_CHANGE);
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_get_strings - Get string set
> > + * @netdev: network interface device structure
> > + * @sset: id of string set
> > + * @data: buffer for string data
> > + *
> > + * Builds string tables for various string sets  */ static void
> > +iecm_get_strings(struct net_device *netdev, u32 sset, u8 *data) {
> > +	switch (sset) {
> > +	case ETH_SS_STATS:
> > +		iecm_get_stat_strings(netdev, data);
> > +		break;
> > +	case ETH_SS_PRIV_FLAGS:
> > +		iecm_get_priv_flag_strings(netdev, data);
> > +		break;
> > +	default:
> > +		break;
> 
> Equivalent to not having a 'default' case.
> 

Yes static tools will complain about uncaught switch without it.

> > +	}
> > +}
> > +
> > +/**
> > + * iecm_get_sset_count - Get length of string set
> > + * @netdev: network interface device structure
> > + * @sset: id of string set
> > + *
> > + * Reports size of various string tables.
> > + */
> > +static
> > +int iecm_get_sset_count(struct net_device *netdev, int sset) {
> > +	if (sset == ETH_SS_STATS) {
> > +		struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +		u16 max_q;
> > +
> > +		/* This size reported back here *must* be constant
> throughout
> > +		 * the lifecycle of the netdevice, i.e. we must report the
> > +		 * maximum length even for queues that don't technically
> exist.
> > +		 * This is due to the fact that this userspace API uses three
> > +		 * separate ioctl calls to get stats data but has no way to
> > +		 * communicate back to userspace when that size has
> changed,
> > +		 * which can typically happen as a result of changing
> number of
> > +		 * queues. If the number/order of stats change in the middle
> of
> > +		 * this call chain it will lead to userspace crashing/accessing
> > +		 * bad data through buffer under/overflow.
> > +		 */
> > +		max_q = vport->adapter->max_queue_limit;
> > +
> > +		return IECM_PORT_STATS_LEN +
> > +		       (IECM_TX_QUEUE_STATS_LEN * max_q) +
> > +			(IECM_RX_QUEUE_STATS_LEN * max_q);
> > +	} else if (sset == ETH_SS_PRIV_FLAGS) {
> > +		return IECM_PRIV_FLAGS_STR_LEN;
> > +	} else {
> > +		return -EINVAL;
> 
> Check for this at first and save 1 level of indentation for ETH_SS_STATS.
> 

So you would have it something like:

if (sset != ETH_SS_STATS && sset != ETH_SS_PRIV_FLAGS)
   return -EINVAL

if (sset == ETH_SS_PRIV_FLAGS)
   return IECM_PRIV_FLAGS_STR_LEN

/* if sset code */

This to me seems less readable because now the reader has to identify the bottom half of the function is actually for the SSET case whereas the way it is written currently, it's very explicit about what we're doing for what. I commend the intent to shave off indents where possible but many of these indent suggestions are teetering on excessive and sacrificing readability to save a tab.

> > +	}
> > +}
> > +
> > +/**
> > + * iecm_add_one_ethtool_stat - copy the stat into the supplied buffer
> > + * @data: location to store the stat value
> > + * @pstat: old stat pointer to copy from
> > + * @stat: the stat definition
> > + *
> > + * Copies the stat data defined by the pointer and stat structure
> > +pair into
> > + * the memory supplied as data. Used to implement
> > +iecm_add_ethtool_stats and
> > + * iecm_add_queue_stats. If the pointer is null, data will be zero'd.
> > + */
> > +static void
> > +iecm_add_one_ethtool_stat(u64 *data, void *pstat,
> > +			  const struct iecm_stats *stat)
> > +{
> > +	char *p;
> > +
> > +	if (!pstat) {
> > +		/* Ensure that the ethtool data buffer is zero'd for any stats
> > +		 * which don't have a valid pointer.
> > +		 */
> > +		*data = 0;
> > +		return;
> > +	}
> > +
> > +	p = (char *)pstat + stat->stat_offset;
> > +	switch (stat->sizeof_stat) {
> > +	case sizeof(u64):
> > +		*data = *((u64 *)p);
> > +		break;
> > +	case sizeof(u32):
> > +		*data = *((u32 *)p);
> > +		break;
> > +	case sizeof(u16):
> > +		*data = *((u16 *)p);
> > +		break;
> > +	case sizeof(u8):
> > +		*data = *((u8 *)p);
> > +		break;
> > +	default:
> > +		WARN_ONCE(1, "unexpected stat size for %s",
> > +			  stat->stat_string);
> > +		*data = 0;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_add_queue_stats - copy queue statistics into supplied buffer
> > + * @data: ethtool stats buffer
> > + * @q: the queue to copy
> > + *
> > + * Queue statistics must be copied while protected by
> > + * u64_stats_fetch_begin_irq, so we can't directly use
> iecm_add_ethtool_stats.
> > + * Assumes that queue stats are defined in iecm_gstrings_queue_stats.
> > +If the
> > + * queue pointer is null, zero out the queue stat values and update
> > +the data
> > + * pointer. Otherwise safely copy the stats from the queue into the
> > +supplied
> > + * buffer and update the data pointer when finished.
> > + *
> > + * This function expects to be called while under rcu_read_lock().
> > + */
> > +static void
> > +iecm_add_queue_stats(u64 **data, struct iecm_queue *q) {
> > +	const struct iecm_stats *stats;
> > +	unsigned int start;
> > +	unsigned int size;
> > +	unsigned int i;
> > +
> > +	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
> > +		size = IECM_RX_QUEUE_STATS_LEN;
> > +		stats = iecm_gstrings_rx_queue_stats;
> > +	} else {
> > +		size = IECM_TX_QUEUE_STATS_LEN;
> > +		stats = iecm_gstrings_tx_queue_stats;
> > +	}
> > +
> > +	/* To avoid invalid statistics values, ensure that we keep retrying
> > +	 * the copy until we get a consistent value according to
> > +	 * u64_stats_fetch_retry_irq. But first, make sure our queue is
> > +	 * non-null before attempting to access its syncp.
> > +	 */
> > +	do {
> > +		start = u64_stats_fetch_begin_irq(&q->stats_sync);
> > +		for (i = 0; i < size; i++)
> > +			iecm_add_one_ethtool_stat(&(*data)[i], q,
> &stats[i]);
> > +	} while (u64_stats_fetch_retry_irq(&q->stats_sync, start));
> > +
> > +	/* Once we successfully copy the stats in, update the data pointer
> */
> > +	*data += size;
> > +}
> > +
> > +/**
> > + * iecm_add_empty_queue_stats - Add stats for a non-existent queue
> > + * @data: pointer to data buffer
> > + * @qtype: type of data queue
> > + *
> > + * We must report a constant length of stats back to userspace
> > +regardless of
> > + * how many queues are actually in use because stats collection
> > +happens over
> > + * three separate ioctls and there's no way to notify userspace the
> > +size
> > + * changed between those calls. This adds empty to data to the stats
> > +since we
> > + * don't have a real queue to refer to for this stats slot.
> > + */
> > +static void
> > +iecm_add_empty_queue_stats(u64 **data, u16 qtype) {
> > +	unsigned int i;
> > +	int stats_len;
> > +
> > +	if (qtype == VIRTCHNL2_QUEUE_TYPE_RX)
> > +		stats_len = IECM_RX_QUEUE_STATS_LEN;
> > +	else
> > +		stats_len = IECM_TX_QUEUE_STATS_LEN;
> > +
> > +	for (i = 0; i < stats_len; i++)
> > +		(*data)[i] = 0;
> > +	*data += stats_len;
> > +}
> > +
> > +/**
> > + * iecm_add_port_stats - Copy port stats into ethtool buffer
> > + * @vport: virtual port struct
> > + * @data: ethtool buffer to copy into  */ static void
> > +iecm_add_port_stats(struct iecm_vport *vport, u64 **data) {
> > +	unsigned int size = IECM_PORT_STATS_LEN;
> > +	unsigned int start;
> > +	unsigned int i;
> > +
> > +	/* To avoid invalid statistics values, ensure that we keep retrying
> > +	 * the copy until we get a consistent value according to
> > +	 * u64_stats_fetch_retry_irq.
> > +	 */
> > +	do {
> > +		start = u64_stats_fetch_begin_irq(&vport-
> >port_stats.stats_sync);
> > +		for (i = 0; i < size; i++) {
> > +			iecm_add_one_ethtool_stat(&(*data)[i], vport,
> > +
> &iecm_gstrings_port_stats[i]);
> > +		}
> 
> Redundant braces.
> 

I believe this is multi line with wrapping.  Will not fix.

> > +	} while (u64_stats_fetch_retry_irq(&vport->port_stats.stats_sync,
> > +start));
> > +
> > +	*data += size;
> > +}
> > +
> > +/**
> > + * iecm_get_ethtool_stats - report device statistics
> > + * @netdev: network interface device structure
> > + * @stats: ethtool statistics structure
> > + * @data: pointer to data buffer
> > + *
> > + * All statistics are added to the data buffer as an array of u64.
> > + */
> > +static void iecm_get_ethtool_stats(struct net_device *netdev,
> > +				   struct ethtool_stats __always_unused
> *stats,
> 
> Redundant __always_unused.
> 
> > +				   u64 *data)
> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	unsigned int total = 0;
> > +	unsigned int i, j;
> > +	u16 max_q, qtype;
> > +
> > +	if (vport->adapter->state != __IECM_UP)
> > +		return;
> > +
> > +	set_bit(__IECM_MB_STATS_PENDING, vport->adapter->flags);
> > +
> > +	max_q = vport->adapter->max_queue_limit;
> > +
> > +	rcu_read_lock();
> > +
> > +	iecm_add_port_stats(vport, &data);
> > +
> > +	for (i = 0; i < vport->num_txq_grp; i++) {
> > +		struct iecm_txq_group *txq_grp = &vport->txq_grps[i];
> > +
> > +		qtype = VIRTCHNL2_QUEUE_TYPE_TX;
> > +
> > +		for (j = 0; j < txq_grp->num_txq; j++, total++) {
> > +			struct iecm_queue *txq = txq_grp->txqs[j];
> > +
> > +			if (!txq)
> > +				iecm_add_empty_queue_stats(&data,
> qtype);
> > +			else
> > +				iecm_add_queue_stats(&data, txq);
> > +		}
> > +	}
> > +	/* It is critical we provide a constant number of stats back to
> > +	 * userspace regardless of how many queues are actually in use
> because
> > +	 * there is no way to inform userspace the size has changed
> between
> > +	 * ioctl calls. This will fill in any missing stats with zero.
> > +	 */
> > +	for (; total < max_q; total++)
> > +		iecm_add_empty_queue_stats(&data,
> VIRTCHNL2_QUEUE_TYPE_TX);
> > +	total = 0;
> > +
> > +	for (i = 0; i < vport->num_rxq_grp; i++) {
> > +		struct iecm_rxq_group *rxq_grp = &vport->rxq_grps[i];
> > +		int num_rxq;
> > +
> > +		qtype = VIRTCHNL2_QUEUE_TYPE_RX;
> > +
> > +		if (iecm_is_queue_model_split(vport->rxq_model))
> > +			num_rxq = rxq_grp->splitq.num_rxq_sets;
> > +		else
> > +			num_rxq = rxq_grp->singleq.num_rxq;
> > +
> > +		for (j = 0; j < num_rxq; j++, total++) {
> > +			struct iecm_queue *rxq;
> > +
> > +			if (iecm_is_queue_model_split(vport->rxq_model))
> > +				rxq = &rxq_grp->splitq.rxq_sets[j]->rxq;
> > +			else
> > +				rxq = rxq_grp->singleq.rxqs[j];
> > +			if (!rxq)
> > +				iecm_add_empty_queue_stats(&data,
> qtype);
> > +			else
> > +				iecm_add_queue_stats(&data, rxq);
> > +		}
> > +	}
> > +	for (; total < max_q; total++)
> > +		iecm_add_empty_queue_stats(&data,
> VIRTCHNL2_QUEUE_TYPE_RX);
> > +	rcu_read_unlock();
> > +}
> > +
> > +/**
> > + * iecm_find_rxq - find rxq from q index
> > + * @vport: virtual port associated to queue
> > + * @q_num: q index used to find queue
> > + *
> > + * returns pointer to rx queue
> > + */
> > +static struct iecm_queue *
> > +iecm_find_rxq(struct iecm_vport *vport, int q_num) {
> > +	struct iecm_queue *rxq;
> > +
> > +	if (iecm_is_queue_model_split(vport->rxq_model)) {
> > +		int q_grp, q_idx;
> > +
> > +		q_grp = q_num / IECM_DFLT_SPLITQ_RXQ_PER_GROUP;
> > +		q_idx = q_num % IECM_DFLT_SPLITQ_RXQ_PER_GROUP;
> > +
> > +		rxq = &vport->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq;
> > +	} else {
> > +		rxq = vport->rxq_grps->singleq.rxqs[q_num];
> > +	}
> > +
> > +	return rxq;
> > +}
> > +
> > +/**
> > + * iecm_find_txq - find txq from q index
> > + * @vport: virtual port associated to queue
> > + * @q_num: q index used to find queue
> > + *
> > + * returns pointer to tx queue
> > + */
> > +static struct iecm_queue *
> > +iecm_find_txq(struct iecm_vport *vport, int q_num) {
> > +	struct iecm_queue *txq;
> > +
> > +	if (iecm_is_queue_model_split(vport->txq_model)) {
> > +		int q_grp = q_num / IECM_DFLT_SPLITQ_TXQ_PER_GROUP;
> > +
> > +		txq = vport->txq_grps[q_grp].complq;
> > +	} else {
> > +		txq = vport->txqs[q_num];
> > +	}
> > +
> > +	return txq;
> > +}
> > +
> > +/**
> > + * __iecm_get_q_coalesce - get ITR values for specific queue
> > + * @ec: ethtool structure to fill with driver's coalesce settings
> > + * @q: quuee of Rx or Tx
> > + */
> > +static void
> > +__iecm_get_q_coalesce(struct ethtool_coalesce *ec, struct iecm_queue
> > +*q) {
> > +	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
> > +		ec->use_adaptive_rx_coalesce =
> > +				IECM_ITR_IS_DYNAMIC(q->q_vector-
> >rx_intr_mode);
> > +		ec->rx_coalesce_usecs = q->q_vector->rx_itr_value;
> > +	} else {
> > +		ec->use_adaptive_tx_coalesce =
> > +				IECM_ITR_IS_DYNAMIC(q->q_vector-
> >tx_intr_mode);
> > +		ec->tx_coalesce_usecs = q->q_vector->tx_itr_value;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_get_q_coalesce - get ITR values for specific queue
> > + * @netdev: pointer to the netdev associated with this query
> > + * @ec: coalesce settings to program the device with
> > + * @q_num: update ITR/INTRL (coalesce) settings for this queue
> > +number/index
> > + *
> > + * Return 0 on success, and negative on failure  */ static int
> > +iecm_get_q_coalesce(struct net_device *netdev, struct ethtool_coalesce
> *ec,
> > +		    u32 q_num)
> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +
> > +	if (vport->adapter->state != __IECM_UP)
> > +		return 0;
> > +
> > +	if (q_num >= vport->num_rxq && q_num >= vport->num_txq)
> > +		return -EINVAL;
> > +
> > +	if (q_num < vport->num_rxq) {
> > +		struct iecm_queue *rxq = iecm_find_rxq(vport, q_num);
> > +
> > +		__iecm_get_q_coalesce(ec, rxq);
> > +	}
> > +
> > +	if (q_num < vport->num_txq) {
> > +		struct iecm_queue *txq = iecm_find_txq(vport, q_num);
> > +
> > +		__iecm_get_q_coalesce(ec, txq);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_get_coalesce - get ITR values as requested by user
> > + * @netdev: pointer to the netdev associated with this query
> > + * @ec: coalesce settings to be filled
> > + * @kec: unused
> > + * @extack: unused
> > + *
> > + * Return 0 on success, and negative on failure  */ static int
> > +iecm_get_coalesce(struct net_device *netdev, struct ethtool_coalesce
> *ec,
> > +		  struct kernel_ethtool_coalesce __always_unused *kec,
> > +		  struct netlink_ext_ack __always_unused *extack)
> 
> __always_unused.
> 
> > +{
> > +	/* Return coalesce based on queue number zero */
> > +	return iecm_get_q_coalesce(netdev, ec, 0); }
> > +
> > +/**
> > + * iecm_get_per_q_coalesce - get ITR values as requested by user
> > + * @netdev: pointer to the netdev associated with this query
> > + * @q_num: queue for which the itr values has to retrieved
> > + * @ec: coalesce settings to be filled
> > + *
> > + * Return 0 on success, and negative on failure  */
> > +
> > +static int
> > +iecm_get_per_q_coalesce(struct net_device *netdev, u32 q_num,
> > +			struct ethtool_coalesce *ec)
> > +{
> > +	return iecm_get_q_coalesce(netdev, ec, q_num); }
> > +
> > +/**
> > + * __iecm_set_q_coalesce - set ITR values for specific queue
> > + * @ec: ethtool structure from user to update ITR settings
> > + * @q: queue for which itr values has to be set
> > + *
> > + * Returns 0 on success, negative otherwise.
> > + */
> > +static int
> > +__iecm_set_q_coalesce(struct ethtool_coalesce *ec, struct iecm_queue
> > +*q) {
> > +	u32 use_adaptive_coalesce, coalesce_usecs;
> > +	struct iecm_q_vector *qv = q->q_vector;
> > +	struct iecm_vport *vport;
> > +	bool is_dim_ena = false;
> > +
> > +	vport = q->vport;
> > +	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
> > +		is_dim_ena = IECM_ITR_IS_DYNAMIC(qv->rx_intr_mode);
> > +		use_adaptive_coalesce = ec->use_adaptive_rx_coalesce;
> > +		coalesce_usecs = ec->rx_coalesce_usecs;
> > +	} else {
> > +		is_dim_ena = IECM_ITR_IS_DYNAMIC(qv->tx_intr_mode);
> > +		use_adaptive_coalesce = ec->use_adaptive_tx_coalesce;
> > +		coalesce_usecs = ec->tx_coalesce_usecs;
> > +	}
> > +
> > +	if (coalesce_usecs && use_adaptive_coalesce) {
> > +		netdev_info(vport->netdev, "Cannot set coalesce usecs if
> adaptive enabled\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (is_dim_ena && use_adaptive_coalesce)
> > +		return 0;
> > +
> > +	if (coalesce_usecs > IECM_ITR_MAX) {
> > +		netdev_info(vport->netdev,
> > +			    "Invalid value, %d-usecs range is 0-%d\n",
> > +			    coalesce_usecs, IECM_ITR_MAX);
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (coalesce_usecs % 2 != 0) {
> > +		coalesce_usecs = coalesce_usecs & 0xFFFFFFFE;
> > +		netdev_info(vport->netdev, "HW only supports even ITR
> values, ITR rounded to %d\n",
> > +			    coalesce_usecs);
> > +	}
> > +
> > +	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
> > +		qv->rx_itr_value = coalesce_usecs;
> > +		if (use_adaptive_coalesce) {
> > +			qv->rx_intr_mode = IECM_ITR_DYNAMIC;
> > +		} else {
> > +			qv->rx_intr_mode = !IECM_ITR_DYNAMIC;
> > +			iecm_vport_intr_write_itr(qv, qv->rx_itr_value,
> > +						  false);
> > +		}
> > +	} else {
> > +		qv->tx_itr_value = coalesce_usecs;
> > +		if (use_adaptive_coalesce) {
> > +			qv->tx_intr_mode = IECM_ITR_DYNAMIC;
> > +		} else {
> > +			qv->tx_intr_mode = !IECM_ITR_DYNAMIC;
> > +			iecm_vport_intr_write_itr(qv, qv->tx_itr_value,
> true);
> > +		}
> > +	}
> > +	/* Update of static/dynamic itr will be taken care when interrupt is
> > +	 * fired
> > +	 */
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_set_q_coalesce - set ITR values for specific queue
> > + * @vport: vport associated to the queue that need updating
> > + * @ec: coalesce settings to program the device with
> > + * @q_num: update ITR/INTRL (coalesce) settings for this queue
> > +number/index
> > + * @is_rxq: is queue type rx
> > + *
> > + * Return 0 on success, and negative on failure  */ static int
> > +iecm_set_q_coalesce(struct iecm_vport *vport, struct ethtool_coalesce
> *ec,
> > +		    int q_num, bool is_rxq)
> > +{
> > +	struct iecm_queue *q;
> > +
> > +	if (is_rxq)
> > +		q = iecm_find_rxq(vport, q_num);
> > +	else
> > +		q = iecm_find_txq(vport, q_num);
> > +
> > +	if (q && __iecm_set_q_coalesce(ec, q))
> > +		return -EINVAL;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_set_coalesce - set ITR values as requested by user
> > + * @netdev: pointer to the netdev associated with this query
> > + * @ec: coalesce settings to program the device with
> > + * @kec: unused
> > + * @extack: unused
> > + *
> > + * Return 0 on success, and negative on failure  */ static int
> > +iecm_set_coalesce(struct net_device *netdev, struct ethtool_coalesce
> *ec,
> > +		  struct kernel_ethtool_coalesce __always_unused *kec,
> > +		  struct netlink_ext_ack __always_unused *extack) {
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	int i, err;
> > +
> > +	if (vport->adapter->state != __IECM_UP)
> > +		return 0;
> > +
> > +	for (i = 0; i < vport->num_txq; i++) {
> > +		err = iecm_set_q_coalesce(vport, ec, i, false);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	for (i = 0; i < vport->num_rxq; i++) {
> > +		err = iecm_set_q_coalesce(vport, ec, i, true);
> > +		if (err)
> > +			return err;
> > +	}
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_set_per_q_coalesce - set ITR values as requested by user
> > + * @netdev: pointer to the netdev associated with this query
> > + * @q_num: queue for which the itr values has to be set
> > + * @ec: coalesce settings to program the device with
> > + *
> > + * Return 0 on success, and negative on failure  */ static int
> > +iecm_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
> > +			struct ethtool_coalesce *ec)
> > +{
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	int err;
> > +
> > +	err = iecm_set_q_coalesce(vport, ec, q_num, false);
> > +	if (!err)
> > +		err = iecm_set_q_coalesce(vport, ec, q_num, true);
> > +
> > +	return err;
> 
> 	err = iecm_set_q_coalesce(vport, ec, q_num, false);
> 	if (err)
> 		return err;
> 
> 	return iecm_set_q_coalesce(vport, ec, q_num, true);
> 

Will fix

> > +}
> > +
> > +/**
> > + * iecm_get_msglevel - Get debug message level
> > + * @netdev: network interface device structure
> > + *
> > + * Returns current debug message level.
> > + */
> > +static u32 iecm_get_msglevel(struct net_device *netdev) {
> > +	struct iecm_adapter *adapter = iecm_netdev_to_adapter(netdev);
> > +
> > +	return adapter->msg_enable;
> > +}
> > +
> > +/**
> > + * iecm_set_msglevel - Set debug message level
> > + * @netdev: network interface device structure
> > + * @data: message level
> > + *
> > + * Set current debug message level. Higher values cause the driver to
> > + * be noisier.
> > + */
> > +static void iecm_set_msglevel(struct net_device *netdev, u32 data) {
> > +	struct iecm_adapter *adapter = iecm_netdev_to_adapter(netdev);
> > +
> > +	adapter->msg_enable = data;
> > +}
> > +
> > +/**
> > + * iecm_get_link_ksettings - Get Link Speed and Duplex settings
> > + * @netdev: network interface device structure
> > + * @cmd: ethtool command
> > + *
> > + * Reports speed/duplex settings.
> > + **/
> > +static int iecm_get_link_ksettings(struct net_device *netdev,
> > +				   struct ethtool_link_ksettings *cmd) {
> > +	struct iecm_netdev_priv *np = netdev_priv(netdev);
> > +	struct iecm_adapter *adapter = np->vport->adapter;
> > +
> > +	ethtool_link_ksettings_zero_link_mode(cmd, supported);
> > +	cmd->base.autoneg = AUTONEG_DISABLE;
> > +	cmd->base.port = PORT_NONE;
> > +	cmd->base.duplex = DUPLEX_FULL;
> > +
> > +	if (adapter->link_speed_mbps) {
> > +		cmd->base.speed = adapter->link_speed_mbps;
> > +		return 0;
> > +	}
> > +
> > +	/* Set speed and duplex */
> > +	switch (adapter->link_speed) {
> > +	case VIRTCHNL_LINK_SPEED_40GB:
> > +		cmd->base.speed = SPEED_40000;
> > +		break;
> > +	case VIRTCHNL_LINK_SPEED_25GB:
> > +		cmd->base.speed = SPEED_25000;
> > +		break;
> > +	case VIRTCHNL_LINK_SPEED_20GB:
> > +		cmd->base.speed = SPEED_20000;
> > +		break;
> > +	case VIRTCHNL_LINK_SPEED_10GB:
> > +		cmd->base.speed = SPEED_10000;
> > +		break;
> > +	case VIRTCHNL_LINK_SPEED_1GB:
> > +		cmd->base.speed = SPEED_1000;
> > +		break;
> > +	case VIRTCHNL_LINK_SPEED_100MB:
> > +		cmd->base.speed = SPEED_100;
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct ethtool_ops iecm_ethtool_ops = {
> > +	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
> > +				     ETHTOOL_COALESCE_USE_ADAPTIVE,
> > +	.get_msglevel		= iecm_get_msglevel,
> > +	.set_msglevel		= iecm_set_msglevel,
> > +	.get_coalesce		= iecm_get_coalesce,
> > +	.set_coalesce		= iecm_set_coalesce,
> > +	.get_per_queue_coalesce = iecm_get_per_q_coalesce,
> > +	.set_per_queue_coalesce = iecm_set_per_q_coalesce,
> > +	.get_ethtool_stats	= iecm_get_ethtool_stats,
> > +	.get_strings		= iecm_get_strings,
> > +	.get_sset_count		= iecm_get_sset_count,
> > +	.get_priv_flags		= iecm_get_priv_flags,
> > +	.set_priv_flags		= iecm_set_priv_flags,
> > +	.get_rxnfc		= iecm_get_rxnfc,
> > +	.set_rxnfc		= iecm_set_rxnfc,
> > +	.get_rxfh_key_size	= iecm_get_rxfh_key_size,
> > +	.get_rxfh_indir_size	= iecm_get_rxfh_indir_size,
> > +	.get_rxfh		= iecm_get_rxfh,
> > +	.set_rxfh		= iecm_set_rxfh,
> > +	.get_channels		= iecm_get_channels,
> > +	.set_channels		= iecm_set_channels,
> > +	.get_ringparam		= iecm_get_ringparam,
> > +	.set_ringparam		= iecm_set_ringparam,
> > +	.get_link_ksettings	= iecm_get_link_ksettings,
> > +};
> > +
> > +/**
> > + * iecm_set_ethtool_ops - Initialize ethtool ops struct
> > + * @netdev: network interface device structure
> > + *
> > + * Sets ethtool ops struct in our netdev so that ethtool can call
> > + * our functions.
> > + */
> > +void iecm_set_ethtool_ops(struct net_device *netdev) {
> > +	netdev->ethtool_ops = &iecm_ethtool_ops; }
> 
> Declaring @iecm_ethtool_ops as external and directly assigning it in
> iecm_cfg_netdev() would result in smaller code size than this.
> 

It seems trivial either way, but I'm having a hard time justifying this function, so will fix.

> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index cbde65f1c523..c5900723b018 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -871,6 +871,7 @@ static int iecm_cfg_netdev(struct iecm_vport
> *vport)
> >  	netdev->hw_features |= dflt_features | offloads;
> >  	netdev->hw_enc_features |= dflt_features | offloads;
> >
> > +	iecm_set_ethtool_ops(netdev);
> >  	SET_NETDEV_DEV(netdev, &adapter->pdev->dev);
> >
> >  	/* carrier off on init to avoid Tx hangs */ @@ -1150,7 +1151,15
> @@
> > iecm_vport_alloc(struct iecm_adapter *adapter, int vport_id)
> >   */
> >  static void iecm_statistics_task(struct work_struct *work)  {
> > -	/* stub */
> > +	struct iecm_adapter *adapter = container_of(work,
> > +						    struct iecm_adapter,
> > +						    stats_task.work);
> 
> 	struct iecm_adapter *adapter;
> 
> 	adapter = container_of(work, typeof(*adapter), stats_task.work);
> 
> This fits into 79 without a line wrap.
> 
> > +	if (test_bit(__IECM_MB_STATS_PENDING, adapter->flags) &&
> > +	    !test_bit(__IECM_HR_RESET_IN_PROG, adapter->flags))
> > +		adapter->dev_ops.vc_ops.get_stats_msg(adapter-
> >vports[0]);
> > +
> > +	queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
> > +			   msecs_to_jiffies(1000));
> >  }
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> > b/drivers/net/ethernet/intel/include/iecm.h
> > index 97c9935b832d..d118da1ea8cd 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -745,6 +745,7 @@ int iecm_recv_mb_msg(struct iecm_adapter
> *adapter, enum virtchnl_ops op,
> >  		     void *msg, int msg_size);
> >  int iecm_send_mb_msg(struct iecm_adapter *adapter, enum
> virtchnl_ops op,
> >  		     u16 msg_size, u8 *msg);
> > +void iecm_set_ethtool_ops(struct net_device *netdev);
> >  void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);  void
> > iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add, bool
> > async);  int iecm_set_promiscuous(struct iecm_adapter *adapter);
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
