Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF85D875E7C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 08:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DCDF401BF;
	Fri,  8 Mar 2024 07:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YMxVFBhn_Gw; Fri,  8 Mar 2024 07:29:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39C2D4022F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709882971;
	bh=2Iu7YsVr+qqPRs63XEslZXwpFtr2P8M27iIeh/c1xeo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J2Jtj1o5rAnmUgLzwoQQLv13Le9SiDgiVAzejKh0F3Znx6QR8PyDwZxB51YXQwdpe
	 yZ9UO8xWHt/hd1h6tifA0+OklnS2h0Yyl7hv3OQoJDSNAdDsFzgZQIEnr5i3gnMZvz
	 I5WDoXruNCIhjaOUbzMHc5Cq3nRfudAmjV4OxxwAjbvX2E6S/pHrn92v1x1nasguyv
	 bDq6Ihb2nWhliWC0wLQoS4/xDbAUtEd0y0E0sBZGNwLaqMZmXPu62Hcjd7d+Oq8azQ
	 lKwm+pIl+VSuEB4oaIG4R0MvOsN0+VyJPDIB2OBuBRxs7UCzZ1tMpoqFJNteHn6KLj
	 SrehU6tTD3I+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39C2D4022F;
	Fri,  8 Mar 2024 07:29:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64E201BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50F3D40543
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FYIsn2J014sw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 07:29:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5EFBC4016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EFBC4016B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EFBC4016B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:29:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4451296"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; 
   d="scan'208";a="4451296"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 23:29:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="10261614"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 23:29:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:29:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:29:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 23:29:17 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 23:29:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OjqCqOgdfz9TlFy+9V9mozm+EwJ0toR8igcm3WgtqjJ8w8vBG2qUTN7UC5T+WKW5ARvISZI5BgSfYJRA/6jNyJ6zQdlxVm2r/86oWXOeCmK6X13m0TeMF9ObCYH+IhxSNxpFjUe3M5XCajolcn3BhJ1QElT0rpeDCvq/LpAPr6934s+u0MZFwmbfYJroNNBCZIoiFk/kcu1VgiEXBkITd3lQDOt5thwq65ycrmB9Z9IrNM2N7FZ/W8EJVf0x7dTJl6rzxuiXYTowJidWSpbDRBzgaDd0RsYrnZ3tdNWCwFmL56VPX04nG44cdiCq1nePLWostVYizabJmbpd+n1V4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Iu7YsVr+qqPRs63XEslZXwpFtr2P8M27iIeh/c1xeo=;
 b=cNM5UoEfWGJk7ckDdljg+XQjY8ECxr+QWcM73S5kTYMg7cUk0St5+TlrRGV7x9F1sRWJHM46FpVivF/DDWzpYZ3iQmi3uO9qmDnKmDfnXUzTSyucdaXwi+etjJyoj8K6G3EDeKiR/vXyGr41e9UU1J/ZskbNLEubKSJoPSYIhe27HWdshrzukkPmjOp0Ww/tzE0HQytB3UvBf0d5XNXTPvkwr2z0AmvXOhPPeULiGqi4UTMiGeNB8puADWUzMWWCzQdTITM/QfM7CMnM0yVFJWdwkkCETPA4X4PEJu047hGvsY8D2BtvwYAg862s3TtcOmOJp4ikzakKP5+vG1QIGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.8; Fri, 8 Mar
 2024 07:29:11 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7386.005; Fri, 8 Mar 2024
 07:29:11 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [iwl-next v3 4/8] ice: control default Tx rule in lag
Thread-Index: AQHaa86e8i01a00FukWLNGBCnWIeILEtfPKQ
Date: Fri, 8 Mar 2024 07:29:10 +0000
Message-ID: <PH0PR11MB501312B60BC7372B3F5C465196272@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
 <20240301115414.502097-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240301115414.502097-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: d24c773c-da5e-48a4-77f0-08dc3f4172c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7uGZ/e+WK+NvCqXhYSFv4i06d2fyeclK4bHyuX94jX/4oA6Gh6IOtwvRyx/5WyoMpM6yvj9gB9GKHZ3tit9JRtd7S5oecMsrdYdXfIcC3/v4prPSFGp6HmIPJgiMqB9zTikQmISbiT9kNOd1ZqA1JbeERP7u2XnKiBZ1FWd2OWMn8idOjSdLFB3kjQfXMrv/lDew/2a8BHl9A3XkcbU5uxE1nv29C1RH/7OTRWgpwcap63B7VtrtjH3nzh/DGURbIIpHACKaLKtWOCVkNzazio8EeAkzZxVXcAlZ6nsx2+/OJ2DXnj0EwtWoYS40w9u0cdFfB720yhIgLp4dYRFiUB7fTHzhcg4HH7DgVvlKQh0RJ8KZ/M7SkyoU4cuBXnq4//BE/j3N/6V1hYrmpD2inmGYSFI79wuPZ3NIPADDpDtOZ/swGewLBqYrIaUmK4e5Y0S9ChroIesSny6TZay1eu+UGiKKiLj1Fa9rpGPcQb2/jUTqJYQIwHnf68kBh5VqHq1mKrr9FWj50SjHC9RnZxMf7MDhK2ch5ahb1wA8A2BChqxvPhOGCTMAWX9x+s9+/3RbA5PZvdsaJGh8u1zC8LihvRPrs/1JE2U1UcjcER69msRbAf51Q2PhVvETZMQG/nBh5pGH9EmYvTUi68BtWjbuJ2TBOhEUEu+HMAnbywPx15emlBnB7VkFIllIFeNUaWxdKw1FekyYS0/C2eBAuA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gE2L+5fCu4a75VWMMZEQiGoIINhQ0czsta34uYL++3pIrbrsW/M/ZIO7EIGo?=
 =?us-ascii?Q?lDfQDymYyn1jW21xYURVaf3TZ1C0zcgTr02o3XpavpRcLDjLuESjA5LEYg9c?=
 =?us-ascii?Q?krTPFZbnrj0foPQpQEVZ0GFtwk8qcGjNkmmfleQklOKAUu/wi5qZYi1V4WX4?=
 =?us-ascii?Q?TpcIilA4gl1IgUJBpHDQwDcDoa/yQvxudMu7KCI1fpWqxj9EDyNNkUZaWvwU?=
 =?us-ascii?Q?8AySwVwW6ktnqI2MCPaUHVzT58CZL8bbVAp/xgOJTbavL8Hvz0m4VDymgjCv?=
 =?us-ascii?Q?c5bHAgKOUGB2n8p5KS8doPmjoNavNLLimI1aQsaWYVc7CkyZw1JJ7/JOs/V5?=
 =?us-ascii?Q?cexPoMv0huBswVZwFRFYGSdCPuOxWLdntEvLnj+dmPlvfHkrOBvMyV8/I/Cj?=
 =?us-ascii?Q?rfAJxC+epCAx8A/m/m3rqk1IA2IRYJS4VFXiy55SwUhDFg3J1hx1O2qRDrfd?=
 =?us-ascii?Q?xQZ0XSqDIpOr8iKmLlkEzlAtoWZIIr43GUSJWyOGGMxno3Hnn8BvxoTu+0hr?=
 =?us-ascii?Q?4YWZ36+DdLt/UGfJOw4knW/pWWCi7P11glgtxT9MSjcMSChOZKRzbAqH146p?=
 =?us-ascii?Q?qkB+Jm89Hk69DC5q8sihAt6nL9Wgy4RE55w7g9Gih9iBdptE6qKlXK2cYYcK?=
 =?us-ascii?Q?frfP+kCUX2ad6UqfDep1b4vgHibC9GG0ZasDQt+DS2QoBi7ov5IuoRKPO73r?=
 =?us-ascii?Q?7sL0XaKxFkwG49Gf+PIm1OMSL//ML35UO5geTaXFYfLZe6khFxQ43sG94GCj?=
 =?us-ascii?Q?5p06Xtc/tjG2ie2ppOMMc4vQIlhINmlzZhxkCNzy963xVAAnX7D7dVPPGuU5?=
 =?us-ascii?Q?mmTaa8AKuslSUx090Ctl7vDd+pGyaOvEwujfWzGnB8+rvk5+gzzsqPnAGMKI?=
 =?us-ascii?Q?t2PfkSTY/jsy3kI+piIo/1Lev220RosZNY3tULcZoUEeZYwivKGZelVAuc6g?=
 =?us-ascii?Q?BtZze46OG2wV/nYXqnpy66SO9MFsZzdwwniu3Ev5JovpJuJkTTzWCjVMuGlt?=
 =?us-ascii?Q?vseclouniWckXq7J7Scc8xpOfJImesgzyPXbqt3QVUuvtbBNM1faOIoxcZmP?=
 =?us-ascii?Q?q+DmtBh3YOXd/f5mC8uyQofhRg8sexwLpdgK5qxqP10NjrfvhVf97KYWG8Qr?=
 =?us-ascii?Q?3sNj8sJUZVPY02aeFey5KF9rkqxCPcccpbPP0IUr/2c3oNvi/ajYYDgoiRhh?=
 =?us-ascii?Q?lFBc8bBjw6luSZ0YxsOcixYH5s1uMnXZTlwHfOqaJ3Jd/oYhoJdpBtNELWdJ?=
 =?us-ascii?Q?QMShWk5bVoq9AdxoImElevkIy39HP4ncZhCsXPQ/rSDRHJbC/nsjSL+/uOQh?=
 =?us-ascii?Q?yV9Ys8LKVjT1y1wxVCfvJlCBP2FuBrWM69AV1kW8OA+2dIQ1zgwjbuPEjYi0?=
 =?us-ascii?Q?fRcugr/3x/bXS7B6MPrFmdbl+lZgVIN6MPEqOD4pf4M3PaQzt4m9q3W8HONJ?=
 =?us-ascii?Q?q9wfMANBefQvVmK4u8hdR6iB+wR4gu5FhitDpR/nwxopPb/lXBOB9/w8Myra?=
 =?us-ascii?Q?gXw7OrhE6Kdpq6XiFVHhkE/LYkS+1+Bjo6cg0otHc7kEkRVG5O26GWz7rn83?=
 =?us-ascii?Q?ZhwjuHORAX5q8J3JMossfrFFlFceFd6bNjjOyUvlr1jRvjKATWIDwdr2Z6vV?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d24c773c-da5e-48a4-77f0-08dc3f4172c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 07:29:11.0261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bTTeuhyZg7KWjfcDamd+12RbjVnhBNZjOfLJh4D+5eH/ngHJsNYLV8EXCKWp5aF+zdumCgT5OwYwjSEqxPkEwketk/mUh18Z5ZuZP9H+xsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709882969; x=1741418969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xpOPvv1DMn0QbtDmGwQt1dCT3fcz64+XUM/JL24QTRU=;
 b=bLhamUpwetDfWtbQkLbXTfjDMiTL9B5qajlsXY2tJDzQPjvvyny4g/Lt
 PYJbXRemKgztqmLwXsjJURozDLa3fJEqebbvGZhYgV9PD/HwGdrmr194q
 NSbMDU0gTQYuW5qd2tsnedYR+5FCHmewSaoY9ZvNBzpXV/g2qQ+agz/Rl
 jgBR8J36GsyihB61DZitk5nTFK9CGswXzZzcCpGL5UcbE5rSl8ywlWlLG
 2RgO3rYOVCN7bRN2KXOFDF8yQsUTID2Mcv8FGhubcV+8IAZyfNZGoWBN1
 aEIB6KJRUKZra+slnt97l6srisL8L6YpZzgGULNUBNpoProCmY8nEXvYi
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bLhamUpw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 4/8] ice: control default Tx
 rule in lag
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Friday, March 1, 2024 5:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Drewek, Wojciech <wojciech.drewek@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; horms@kernel.org; Buvaneswaran, Sujai
> <sujai.buvaneswaran@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [iwl-next v3 4/8] ice: control default Tx rule in lag
>=20
> Tx rule in switchdev was changed to use PF instead of additional control
> plane VSI. Because of that during lag we should control it. Control means=
 to
> add and remove the default Tx rule during lag active/inactive switching.
>=20
> It can be done the same way as default Rx rule.
>=20
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 44 +++++++++++++++++++-----
> drivers/net/ethernet/intel/ice/ice_lag.h |  3 +-
>  2 files changed, 37 insertions(+), 10 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
