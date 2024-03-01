Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C8B86E3E7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:03:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E02060650;
	Fri,  1 Mar 2024 15:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhx4aR6MLgqW; Fri,  1 Mar 2024 15:03:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C331605DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709305403;
	bh=DevKUNriW/5oFPIMSSwRdcLgctzQe+pStgug8Ki5h3E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rrtYkBfDEHqGoyBHb/h1qfGujiSIJKgPQz5gAEmM7bkKU04qCEV6UBCzZ2RmJciGp
	 GEnCK3wf2gir3ZS+LKOddHcBrta/A5hZ3+G5rhNjAxy0iiZzoY0/Xo2ADJ1Joah2pT
	 UnwB62UpW+iKtkD/mUPRGJzUaDpeJcAXG9olyV7axV5A4yFKveoIjZ8/ECHyd8KP+r
	 ASrrq8LGMU8cmIy4IY1S5VbDEmWIs2jc15BHlR2X0KhZDFLTuIGsrq4Mg9bURvoh48
	 h90XA8Ue+h6ziH8dGpr5PQk+m9NEUOCea3eCFXhddj3eVL2g9zCRhJCt99zqrpBfDL
	 49uRuhKpSfwyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C331605DD;
	Fri,  1 Mar 2024 15:03:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42B6D1BF427
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2EFA560597
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:03:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h0ZifksE5gGU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:03:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 409AD605D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 409AD605D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 409AD605D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:03:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="7658728"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="7658728"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 07:03:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8119246"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 07:03:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:03:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 07:03:19 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 07:03:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwuzZGpLVmODBLK2SROOQPtEgTHjFY/ti43x1EFclDZbZHWYlOgKkiOarX6vHBtKQ4ZYheQ7N6y7r8W05UCernBqCqrcBGK1t+rOGZArSILvsAUxpLQ+QTXVwPBdLkTHZPIOyrlaF3YPXfa7g4knDMylSr2ne1DRcVFQJOurnCqCgNpv3mn/O9TBOuQvM8G0Dpsi+3BHz1km+GvNTXbHMpY6J2QcvFvbzXeGqUacB/j0XlxfiFie5COfjwzXRCareT193bThM41dazPu2N0JOJQ2un7sSBmLG7//E/0mWD0SLZIz3D8pWeUS0IQFxSXOtj7K+auzo4HT+lHc/IYVhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DevKUNriW/5oFPIMSSwRdcLgctzQe+pStgug8Ki5h3E=;
 b=KVqOYrQjxPjszpRyrFyt8yOE10H5MP2pE1WuQtP3s3uJ58/sJ1upcP5EYfsdJ1wSznoxIPpTwVOkXfzRM7n42mRhJfhgjp2Z6UGOdjGiowPsBkD9vfjPnbb6eWjSsfaFyzalvgWVgCBeU3Uuhgfl2Nw/7TTH46pAXLOV2NLVq7EL84HuAHCdfiRBkV/fM1jij7R2+tSsjsbqUYZPEpUqURxB4gvNT9Mrx+W0Ee+7/MDt/WD/0bglepODmO1NDkvNzmbzSAklJKaXVa5XGEuK1ps/0At064qw6CkHEzV3YYdcUOs2saSiX7N8xOVVKLbVxBNdLCZvj0/+3SzC3rnSvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH8PR11MB6950.namprd11.prod.outlook.com (2603:10b6:510:226::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.16; Fri, 1 Mar
 2024 15:03:10 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7362.010; Fri, 1 Mar 2024
 15:03:10 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net v1] ice: reconfig host after changing
 MSI-X on VF
Thread-Index: AQHaZiKsnGOqupAHq0m4okfESov9r7Ec4NOAgAYl+oA=
Date: Fri, 1 Mar 2024 15:03:09 +0000
Message-ID: <SJ0PR11MB5865354748B57DB1DDAEA6A68F5E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240223064024.4333-1-michal.swiatkowski@linux.intel.com>
 <20240226170925.GF13129@kernel.org>
In-Reply-To: <20240226170925.GF13129@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH8PR11MB6950:EE_
x-ms-office365-filtering-correlation-id: 0c30010b-f2a9-4349-ad17-08dc3a00b58c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XXvGz/oQfnqpEn1OXS0nTYltzIyoAaAvAOO4hApzcBztlzPUSmbF94Ea+HjO42F4Pbmko7+n5p6VWnFytTcUEBVQ6wETheOFgX0Kk0p7OQbzlGRqiFOORudLjAtPeLuSD8Kn0z7XyvFYIWgvpnT93ThoMht7825ovQbd6cRyq3afrKasJzXcNeumAVbw8UM6nv5S+ShdyQ0YNtMMIhE58PdpitD99kmx2mhCsxSirFoPHEp42jj7mMNoSUurSLCT9hUW9HZwWKM6MrGkcIon0K9JIqvfPFCEoocLCC+wuxt5mBkp52rjkJW1AjaErUuxt4dTTpLFdC/u6b+GkRNKpDTa1bS1lWONNgEfqLx9dHP0ojqv0errt7usU2LdjAkpfu/TUSw317/Nu03TvQcfXyfp8hapNSb8lUKMpl1UOk2Q/YI7lfabfvmYYDMRMdpwikX2H0e61viFuvxTd3e7NLGGqQ5X/9YRgfLkFDDFcJhGY++zLaArT8k6FhdScdPOrUwcE4qotljs6APLrVD7mewPiUg606v4Dng/cB79k/Jv599FpIi74bz3KvELeqCCG+u5+7ooHFRcVD0XoVwwuzhzOuzylV6/fsjRhWCZZuTO+BDVbMeEbJiLXcE8AkfSp2Y/VO/mTlzSiF+AGuCFd2Z0QB3oyrmX7AW4a2zT6ZXep7zcNfxn8TAO2JGAPW1PyDlN2EsuPeBz+v9ccb/Go54XeL/QfV61rbO26r+fSwA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BuQg48XEaXVPFlzfimMK72EQOAfnELbAqr0IMj7UMmCKBDKRora43iV1fSZI?=
 =?us-ascii?Q?OvtPxBVfC8kmGGEnV7VbPiQ8pg+8MvvVXRseEDoX7GkLdPGjgphT5+9oak6s?=
 =?us-ascii?Q?Cid9oFsrjk2jyOfeYIo/hRQ+WAYgO7jF/fMc7pXqcKITRDEeb0tbXXeKP7kk?=
 =?us-ascii?Q?8kSXPgQ2oKVLKkSfetsoUUfzUb8ZEfmkPPNEJ2puPcZmvywY7eDa6ZMhl2w3?=
 =?us-ascii?Q?ACnsC3pw4aA/mUlVpUFni/rMhbz0NcSSJRm/3kmsJMHVasWAU48MQZPgfFKu?=
 =?us-ascii?Q?BXSb13pEvwUCx7swmuxUokt0qaGvuz28eMLHAKxqwPdho/LuC3Krz246j9ky?=
 =?us-ascii?Q?veBoK0kdlc7M1egQlTdlFI59YdIANlelcVeSDnDw+ucKFyli2DZ261CcvwPW?=
 =?us-ascii?Q?pxiR6AMOaGTj95Qzc1mTtQCI5e6QH/7pwYgRRE/fSaMgxAydKY3cYVUb//PE?=
 =?us-ascii?Q?JtRD7ZkB39EHMkLCG7MXlLPXoUCTwSmsyW+4GN2gDNGELluVwpJeWGDTDcYk?=
 =?us-ascii?Q?cqFstHytj8BXpbZOirl1E4NlzmNPz4Yw/gBwMNURPfDuovduspOD0EeZwfwY?=
 =?us-ascii?Q?vuO1LZcW5DcjmPk+jL+jt1XuJ6FqZl/mfVAMrYe3YwNeneZwXxV2LsSzXHn9?=
 =?us-ascii?Q?wCdOUif+//LLeNvOKx+z11k09FYGYPGETLpLr+haRY4dY18rGCbfPqLtMRRO?=
 =?us-ascii?Q?4iynqnp+Cag7Odng1snuiGQfz/ZtiCVGhzDs2PS6H93xWT/ZEXgB9VGxdv0Z?=
 =?us-ascii?Q?SIZ8WrFLFwgj0sPcwwQSIT5xJgnhX8dzcirYMBYn6nQfAErPzAPfHqd6viqJ?=
 =?us-ascii?Q?o9bMmTUU+MdU0A0iXYgrkhKpMUFqbbcor2WIXXoWrJWGBeYmz3s/J/OQmjVg?=
 =?us-ascii?Q?33NpoT7Z0fHhJDQA85M2OJkE+wM96RTmFEFVYuy4pOkHzGJ2waQLOh6USsgZ?=
 =?us-ascii?Q?TBDeQ4CxD5aX8d6FZ0g9Kny/jkfXONbwkN1zXUBNoEjXm9NxksJgbgK+zimD?=
 =?us-ascii?Q?R/606yPrWwd66YXySrthROwO8+TjUBnvRiOjR+3w6XBDQTcHGnyws7hQJYZL?=
 =?us-ascii?Q?1sI9KdZJFCPORdQ32momoZMvP/NEgkWe1QehSgSFpK6e80oBCiHdIfabZUNy?=
 =?us-ascii?Q?CFqLbCDC75+HvtrugzB67arI0JopPMSavPA+QjWsaERVk7vkJtPplyoq6VLT?=
 =?us-ascii?Q?CllrsaJjCtnMWn3vc4oRbqOSmpdUIeq10dphreM0k2yCfrwAnYi46lxybX7E?=
 =?us-ascii?Q?pOKSFMC+5pGhrF/MXLPaR3FM3om1THpcOUxCpeWpUH4qT5hxyyuDkiw1HOXo?=
 =?us-ascii?Q?HpLgrXUNJIHKSEqzRUWP4GO+FE7zZon2Fb3Au1/Ey0LlO0v1R0X+oTEamAV4?=
 =?us-ascii?Q?2iZEzvr8J9xVKLn1FDpq0Ac1dVlAxKQ/QcPRCdpVhjIJj1sHai58cl6PbOjw?=
 =?us-ascii?Q?0RoHQDpGhIeR0+WMhEgB55pWHGFOeRN9esp+mT+/DtLQG0StBy8uOIXYApzQ?=
 =?us-ascii?Q?vJ5VO70sL46JMvhWsGd6Z463aRfMFbqJQZaYIYALES7zoimCQ/8xbnBphkwy?=
 =?us-ascii?Q?7ut5/UwqkkYzDwWrGzd3vHLzdxvlObhUflf0zODv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c30010b-f2a9-4349-ad17-08dc3a00b58c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 15:03:09.9942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iMnZsR1j0yLm15/44DUca0JIqMT3tm7YL3XtkzuHBWJsR4M962gOGfC1BM2fAO+rmxS4UCHZph4oK79BGgF8qbvTKdjR5p4lsC0ckfJDneE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709305401; x=1740841401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DevKUNriW/5oFPIMSSwRdcLgctzQe+pStgug8Ki5h3E=;
 b=XfT0//PhaPDmrRxquBBOV10cWtZf1zMeoyGTNhP2c+qIDnrNGwN4lZE2
 Xjaeb7jlppJ12udjFXoi5TzSeA2uePibeC09og3bSKm1dGAxJES9ZKtJy
 bDtPVttkX1IGED5oaRgPXIVmIjH0Vc1nC0J4AO+7+dPmbt8j3hluGxKbg
 CdpKaCx4bu7JUJj5U7q5aEVVZ/4UO7zjYyDaFVA9HfIyJCVk6TqrbYz5y
 f73KGzp4Vzx48zYdojSUeM+7JSbwZh0jlis1Ns2eIdxue96YidpFQthDp
 viYpwi+owMYQ5VbUVrRLKlI3gxpc20sIiBuDm6GMKR3P5Lc+2pOia24yE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XfT0//Ph
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: reconfig host after
 changing MSI-X on VF
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Monday, February 26, 2024 6:09 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; i=
ntel-
> wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: reconfig host after chan=
ging
> MSI-X on VF
>=20
> On Fri, Feb 23, 2024 at 07:40:24AM +0100, Michal Swiatkowski wrote:
> > During VSI reconfiguration filters and VSI config which is set in
> > ice_vf_init_host_cfg() are lost. Recall the host configuration
> > function to restore them.
> >
> > Without this config VF on which MSI-X amount was changed might had a
> > connection problems.
> >
> > Fixes: 4d38cb44bd32 ("ice: manage VFs MSI-X using resource tracking")
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


