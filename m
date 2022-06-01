Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC6753ABBC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jun 2022 19:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AF4C404F9;
	Wed,  1 Jun 2022 17:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KVAXgd_ANuLG; Wed,  1 Jun 2022 17:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DC6D404A3;
	Wed,  1 Jun 2022 17:21:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4A041BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 17:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AE15160C30
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 17:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxYHgfMxQ7Hx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jun 2022 17:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AE3D60B16
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 17:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654104083; x=1685640083;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ynDwjsHRM7JILoYcvrU1KQ2DD38GExj662VgR9bPy7I=;
 b=e3Pa+7ZZVnV1F3g4OvxJD3G4RjccncB4/ZqS3dcfYhQWpKKqcuWzc9vO
 nRWa+UpkErD9Tl8Kn+OsHaTT1rNQua2WKRbB+vpD8s51c/q58Ycf/nv+H
 XDYYXtwgoN47HVGMmEfzlbgNVVbqf2CyN+tO3NRsvJGXThkDcO4nbX2zD
 ZMYlBqD4INj2K0UEKTqhHRZFXoYcX/cuhNi7069O9lE+Py6l4l2qGvuat
 QMaPDQic2klgGZG2BIiPl91PWF42yCnmcQJKesR7K0TXbBqbKrCULshyd
 U0YqoUzoP/y0erkSjpOkbwRrPpBr27DmyV0n65lN8dhLDIHzGERejNMdG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="301020972"
X-IronPort-AV: E=Sophos;i="5.91,269,1647327600"; d="scan'208";a="301020972"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 10:21:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,269,1647327600"; d="scan'208";a="577048344"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 01 Jun 2022 10:21:22 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 1 Jun 2022 10:21:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 1 Jun 2022 10:21:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 1 Jun 2022 10:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQPzieSjBPeXEcTVq0bwYFygDAY7iLVGqskT8VGzCB7zBcp6HrRLkjxs3FwC7fgrlOyvm4I6rB0aMGlmi5QP+0zLEW2hj0U5Isdtj9GEsB1LXBWG5qSwG5pq7LvJC00xE1cHQHa103ICp9drkb6iVJ2lmoLjx30yhgtZ1yX8bBnOuSrZYTtRpHh7xja3LK1P1zaYxgYttRum7BxyGwBOMh1FdZYemQv6azilBoCsu6et6CfZ1tbASRDo4Pfrw1e40Z9nRbeuyi2UkfhxicZ10TLAD+WmM5HrYOE0HYhCvJ0pXNtt+2gM3UJ9U9B2tRJb28mobxUjdp0tHbGsaasuLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5KemtDYatycfcWh+phwD6PBQwM6DM3YwLxn6b6T3FZU=;
 b=EPXdw+GJGDLEJy3VkNM24xmdrumeT45eoixMMBVeJGCM6JgvC2uwGN97zw803p3l8ymTDVvXY1qH4NllrjfWIwGMdH/bIIrA8FO3cjmRPfTihd+k8Z7HROLzdwt8WbhtOimmXcr0AkGZ3fwJFCuK30Q+JUZtxJ1YIA6A67XuTQFvoqXFsdLuJApPhUv6FiFQRGHx9R2EfZp9cgkiLVbaUmWcTm7lv/QgqJ+wx9QazDPkZ0sL1pUL6pHLy2VhomDKeGwcb6SOgjpr3eJA8tC5YgIdEB2LqooATvgY7daYv8Lz1aRfxfzbjGgCWA3V0j++Ipo00CfrqYAsLXiF+NZZFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by PH7PR11MB6404.namprd11.prod.outlook.com (2603:10b6:510:1f8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.19; Wed, 1 Jun
 2022 17:21:18 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::90d2:de25:1fa0:24e5]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::90d2:de25:1fa0:24e5%2]) with mapi id 15.20.5314.013; Wed, 1 Jun 2022
 17:21:18 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for
 ethtool -s <interface> speed <speed in Mb>
Thread-Index: AQHYZSFcwfiIKN/p2EOToz88Nqbhaq067IIQ
Date: Wed, 1 Jun 2022 17:21:18 +0000
Message-ID: <SN6PR11MB35182C4B99E54BB3EB0377B8EBDF9@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <20220511102128.14684-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220511102128.14684-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 650f9bec-711e-43d0-c768-08da43f323be
x-ms-traffictypediagnostic: PH7PR11MB6404:EE_
x-microsoft-antispam-prvs: <PH7PR11MB640450C7628832F3C8BD7000EBDF9@PH7PR11MB6404.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zQI98tSXGxd9l5oCujiQY6WqHDuBu/VmOWhfl3+Ez3e3drZD72drzmgBLnxKix7JXyTh+rFrsfFQ7zYTZI28NSeBuDBtcq8wqoXTy+M5w5806QXdthm5vkCICTPpueNdKSLNJJLRiukgh5wNRcM78WQDn5L3kqFZ4ZOgl5w7he1aDZtXFozt6FvnNPpF7rXr5bRhP2opCysgjkKaYgS1ipZcjnKUWK6ntcf/Vlfq+3Zm7V+jACUNlVs/7ZDzlhGj/fNzamgJbiOHv0/ujEnl/gd9aPLpBaTKsfFRZqJ3yjeKFTxYqAnuPdVylLvc5EIXCFFJwjzSXA/qbJNg7E+NRwgESZsCxRGRL0tDdvmuxf4QuvXorAF+iipjK4EltIUfq+DfAvB4iUN/G9VkeKRPFc6wQToRFsZQqZERczNFbk6Mp8bNIwf+jhD4SqFfJi736jKl8C2Karb2IdNKWEjFNXULkKruc07VfC3FXh5fuC2hcBPdsAfs2wT0QghhRcEcndWK6tk1vYSu6NCd64DyC0nrA4rRNFNX1GqKuvaHlUWAZSSSKZcLW9rDKVOsfWvCTy2Rm7/MAhjMBxM2fFGHDfzXKHR/ksaySCGOFKFbJUB2xcHAU7H9gxaLH0tQ8O9WGG2fCtWGO46UYmcpDPUKxRnn58MQqas1Ff/4aTPfevLm06kmk68joturKtD7H/mc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(33656002)(82960400001)(122000001)(5660300002)(8676002)(55016003)(26005)(66946007)(64756008)(316002)(110136005)(38070700005)(186003)(2906002)(7696005)(6506007)(9686003)(508600001)(4326008)(83380400001)(71200400001)(54906003)(38100700002)(107886003)(66446008)(8936002)(66476007)(86362001)(66556008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7SBlnBM2MNdvAwE7zBkuGLoiZFT2h3kzrSbK5Wgl1qdmECz80E8xzSllfG/V?=
 =?us-ascii?Q?Cvak6pTWXCX5JoL10HLc7bYNdzIceaNPdKxenaSAWOCrdBb4lyJdpv6u8dB/?=
 =?us-ascii?Q?RVxR2EWqD7ixq3InVaDyBXZVNErTwz1gSnMqufJHLNJ9mJmkHqU4Y8URFsyT?=
 =?us-ascii?Q?A7yJ/DQUB1CrfmOodqSVfYqK+JeGBIihiidpXRWMhun5+8ooUZ8nns2F0dbT?=
 =?us-ascii?Q?//gBQRoyad4KrPbm2DjNhu481pQylG5+R9YRccTqbGscYK6Ornnz4FAdLz1E?=
 =?us-ascii?Q?IQS7xwcF4Nn0bR3+ad/wv0Kew0Z28Ao7Skwj6mBP/iy21B8s/umoYObGT/nX?=
 =?us-ascii?Q?x4DlKX96H0L26NFC7rOJLLeLIfjaX5Bi1ZzafWTO1r2WCdlh8KCGWhXY/gCM?=
 =?us-ascii?Q?SV78tw6XPEhDFqaezOn5KCZuLV9tn839vAlS1tlW8tLWAfu0RHtT+/Y8sEbT?=
 =?us-ascii?Q?X++gqUswIQBPrfY8lZOca7HSVsrycuWM8i3XJF2xySmB6Vt1sJ72YMoKf4lX?=
 =?us-ascii?Q?TMoC1ndPVMygZi66lhnI1W6JxT37LVBWS626hK+pkThnmTGJ/wr5ZSXZn666?=
 =?us-ascii?Q?CRh7JTy5G0A07PCVezErGGhsinzD/nXixuhQlfFPRQp8Na/EAyXPR2LHd/b2?=
 =?us-ascii?Q?NJ0hzfUdwLAWLE/tv49SPapUNC+JfD7zYXNzonLvKN0lOdiwwc08if+qBe9v?=
 =?us-ascii?Q?HJjXi4nWH0kYvqAOWzdYsqxoWYF96+06cxnieHknkgaxPPSqmd8rb45hHgYD?=
 =?us-ascii?Q?/XEI1vkIMulbc8kaN99O1+I/RtX+rsN3UH04VWsGreVXH5Iffj6Hp7676djX?=
 =?us-ascii?Q?S4ZSsL8A1tZ+nX2kOZwz2m+h9F3Fvm+eL0h46hPZGupaU0tfLtXQGF3lt1gA?=
 =?us-ascii?Q?d+b/AyQ5VhrCAUi/JwoSca1wWvkrEhHgaOnlvmxhr9sTQrSj/rGYXYH2cuwe?=
 =?us-ascii?Q?C85zGXRJOT+0rXDu847qHK86Gu6D1uT6jYTB2dEHizarbfTlZnxfx5OMicpy?=
 =?us-ascii?Q?ZvWrDtBnrlRN5QQKqgIW08CA7BlSzBOsao9D9tfX0ry+PWf8jZStwuA/C5rA?=
 =?us-ascii?Q?FXLQooWOK0iJoZT3rygw/QxxRIrfcQhuW3jhT023VHdEvxxAyi9dE3LZEdIO?=
 =?us-ascii?Q?KsRLHTg2UEzOiWwLMNZaNlzDux2MRxT15MeiP7J4WWVMF6skZk1yNjIIYySu?=
 =?us-ascii?Q?6aGVLsgtv3h5EOObPdxvKIs9R7tCEEu3dSMCmDjPjs7iwxeHyMuUvQ+oUJM6?=
 =?us-ascii?Q?sLyT7bsEaDGOQAZoxd8uyC4B2kWOBMRf9pAT/z4Jtb9QxswV2I/Pb0vKcppD?=
 =?us-ascii?Q?8NCRBtQwl4wt1gqXV+NUFp71imcIwGIthpdGQpMhI9dRQ01kBxu9aPBF37hc?=
 =?us-ascii?Q?cMBpeE70xF/qDkL7Bf2g0nCbNOsEHb+vYZCOr4cnbIzvnxk7KrVnxOLFh1xE?=
 =?us-ascii?Q?zXUWraLDl0dc7iWoba9Iy8+iHu2XyRQxUYv8Y6EHp5vDJQ0UCdeNuRJd6H1c?=
 =?us-ascii?Q?YszDq8X2Pki8HjLW4EfzxnCyeMKU+R7r6ARXKI5MV812SMF5CXvmLT5ApNTL?=
 =?us-ascii?Q?vgceHBrHulrW4EiBfeEUWTmbC5430zaKYEud714OAXLdxxnFGQkspisSrKfL?=
 =?us-ascii?Q?M4z23MfwCrfimHeJXrJ095p/5SVr6I2OUhbrrfjUvhmYqV0wZEvE0gV40arD?=
 =?us-ascii?Q?rEzpwupXEzH702sfO0VQGq4t+I9zJZpC0iSqJbg5vzj+CvNImL5x8x60R9/R?=
 =?us-ascii?Q?AqLMxjNG8Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650f9bec-711e-43d0-c768-08da43f323be
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2022 17:21:18.1540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qFKYwjpda0/iyueqBa5gK2z0JxmOhSXlYh9GtaxcuqLOvQ6V99AJoDfNHsNgmAmAKrKtsYZ3/YT+c3r8Ya8EGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6404
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for
 ethtool -s <interface> speed <speed in Mb>
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
Cc: "Zulinski, NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Mateusz Palczewski
>Sent: Wednesday, May 11, 2022 3:21 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Zulinski, NorbertX
><norbertx.zulinski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for ethtool -s
><interface> speed <speed in Mb>
>
>Add ability to change speed through ethtool -s <interface> speed <speed in
>Mb> Driver advertises all link modes that support requested speed.
>Autoneg must be set off e.g.:
>	ethtool -s <interface> autoneg off speed <speed in Mb>.
>
>Add helper function that translate speed in Mb to enum i40e_aq_link_speed
>and compare it to supported speeds from given ethtool_link_ksettings. Add in
>i40e_set_link_ksettings hold for requested speed and set
>copy_ks.base.speed to safe_ks.base.speed to be sure that user is not
>changing unsupported setting.
>In i40e_speed_to_link_speed compare requested speed with supported
>speeds. Set speed to requested speed.
>
>Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
>Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>---
> .../net/ethernet/intel/i40e/i40e_ethtool.c    | 90 +++++++++++++++++++
> 1 file changed, 90 insertions(+)
>
 
Tested-by: Dave Switzer <david.switzer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
