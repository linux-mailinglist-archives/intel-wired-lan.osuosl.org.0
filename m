Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC934FDF42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 14:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 687C240591;
	Tue, 12 Apr 2022 12:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVgObV0CtScr; Tue, 12 Apr 2022 12:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0805840382;
	Tue, 12 Apr 2022 12:05:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 883D71BF863
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 12:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74D5440A95
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 12:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D3j8E0BL-gUT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 12:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 418B0400CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 12:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649765105; x=1681301105;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fDpA5JwO3xEWO9jkjNBX0lHVYws8tqQ6VOs8QH1pzNs=;
 b=QN4JH7BSN+a3eNiKIgbqTSzCR4/in4JMiDkunPXi4D0w3JYxRQaoqTrQ
 yBUU21sI9WJNOOyPqUH5asCgh0kwhA9cLg8sPFAPoNOdVZCjf9jKvGwkF
 DfuVhFZE+K1C8jyq9LaS8c5V+ndq+OtrfgSX4Mso6YTPuAiu7i/8zcGC8
 kdgfcMpjAb36ntBg5UFPphTIEKvAt45OUxmCkeBsrHnFQaRQ9KeacGbW/
 qg+C654Egm22N5t4KIbS2c5ilBbh2GIbmcB2dFK1q1Smt/MogL9Vd3SnT
 v6DCwiOY0SzmHFr0FUemvW9vJ/M8qpUc0iJd9khD28y547bm1FLFKt0Nw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="249643412"
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="249643412"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 05:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="590302294"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 12 Apr 2022 05:04:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 05:04:49 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 05:04:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Apr 2022 05:04:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Apr 2022 05:04:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yw1Fd/X3jacH/6D0fqOYqzSlV6uNfSpAz06MvaRRmXI0xv6YKStyJL1juZ8gbErv3hmxM/+l6x2olZSW65R2GZ5ccYvzdS4ch87IEYXEKhyPFCE+UIoPbs5Ru/ZVoDXwhQ1/DYNyRf6869YGk+YMjAZ0LvZV2L1n2E5GquWNhptR0rNJAuSRGPnSgbNft3iY7/DqsjQmltqcFjvNZ2uulnLvWXAEw8qmkgKmW7rEdmAG5VpcHtob9vrCw/zlGPyHsdLXWAqfBCOinZJPojX6Dht4SaPd9vykpdtn2d8kFOSVyJvsJdHWLXFD2MkkY4Ka2NdSC3KTm4ambRWm3tWfMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kgj7kJ1fZfMpOHlNCSTNW4SGKt4nxgLSjnhoamIi8Sw=;
 b=fa3VEFb+aGzM+KF78ZQRiLqPwu2KXW3IsJppfKvgoZVV2Ie0Vp1EsXRILaTj3NgzGuSLPdRoPegfvMJ4fkfbKyXZoszG37uWwn0sV2ug8TxIjkuNST248NYfPo2jQdHqA2Y+H71AuAQX63KCX8qTiL1ZFVrg0du2jD7JVaAa62EqBBxOdguSnXTe/kjI9WfqB+L2VJ4/N3h65yUwF4ZsUxscziJsJyCgoGJcjPSI7d9C0cB8iBhnrqEdOB+ewriFZgwMJc3OrGbOzK1CCebT6/hj2AbVJVmFUtiaAUONDzyWOGTf7ct4Gv+/rV55RKcKTWf3Y6+cwuCZ7ZEadggMuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM6PR11MB4284.namprd11.prod.outlook.com (2603:10b6:5:205::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Tue, 12 Apr
 2022 12:04:48 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::302b:8e15:32a2:f9d7]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::302b:8e15:32a2:f9d7%8]) with mapi id 15.20.5144.030; Tue, 12 Apr 2022
 12:04:48 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing
 ring parameters on ice PF
Thread-Index: AQHYRN77xZ5dvSjgkUG3SGirox6UEqzsQSug
Date: Tue, 12 Apr 2022 12:04:47 +0000
Message-ID: <SJ0PR11MB5629781422BB7F3B1C397703ABED9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220331111526.1333801-1-michal.maloszewski@intel.com>
In-Reply-To: <20220331111526.1333801-1-michal.maloszewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 017bf58e-5d5c-425b-f926-08da1c7ca40f
x-ms-traffictypediagnostic: DM6PR11MB4284:EE_
x-microsoft-antispam-prvs: <DM6PR11MB4284A43571BBFC91D0C0AC94ABED9@DM6PR11MB4284.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E/LP0yOCXFesupJ10i+TFj/v6ODohOunrNt0dwjZwo9pbVJxke86qWuWaPbkrd2WKR+CXl9CLByrKwOomXGZbPNS/1xE5atRse8Zpi3IeDe53GJEPTRZabQoM2zs5S+2G/gQDyPiYlYFxtEYs0cJ8jbFUaGZK+W4gVEAujNhHunMCbtkCjAT3RCxHdJ9P0Nhg9L2DsBfA9QXHiE5SVC2mm9ejV9BzHcy4Lzz9vUM8aPeTmFoq674NSx0yz8SDhwPIh11fFJ1tcesGnvdm2sdfDNPg7T/1cDVcS9vHT5lIn3MZAu595Z9BtI9dun3xaRmbPcQ1hyBQ+uwBmkOx58fYam/WYqMQ7JF1DMZOpHTCufjQ2QPm9KnrWJYpKhHUT+EsVKHiISQD+FXaLhJYsyvpVk67/cnYxtWb4GnWDp4Jb3AexW8lPh3OdZnxq0yXBSRifNFke5cG84MpGQFoYRXjVXnEsuUMvv65Q3tqSvnhHXO+uRH8G7gztTpuJvCX/iuAwTgmqt3Fvnag3p6MhZzTAZL3GpD/wfD8Ikihzvq8XKvIiiZW5bUGA46T5uOQ5QPSdk3i5CGcV4eEYw452L02iSpCHo0AbOcFlYhKd1BoGPF9QtGFgpajI5R+W5o2JcTObAWd/h2SrUxuMtr3ghAJKqKjin+5daubR0S+b2HEQ5863lJlphkmAGGRpYgnNMtRlddsWuwamLddPa0Eam9tQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(66946007)(86362001)(316002)(66446008)(110136005)(52536014)(54906003)(66556008)(66476007)(508600001)(76116006)(83380400001)(122000001)(38100700002)(82960400001)(6506007)(7696005)(53546011)(9686003)(71200400001)(8676002)(107886003)(4326008)(38070700005)(33656002)(8936002)(2906002)(55016003)(186003)(26005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7Xe5+Ulyx70d7Di9fDbWAwvEUBns+FsbnwmCnSU0NZhGVWo7c/YyLVDOwQvA?=
 =?us-ascii?Q?/d5ydoMnCMK904cAyWdSjwA9XErgYDC5gX8u7jDFKGh0XIkg7n9jmQ7stYXp?=
 =?us-ascii?Q?Bu1iQkc1OHDjB0tuxDxgOXh6LX7/UP8WfD4cj0gxMTHa0LsDegyO7/7NBcU7?=
 =?us-ascii?Q?JCwwnAjv9Qmf3FfE+sxDLd6FfMrjDFPQekGIPEt//Icyb1udY5nIEpuRaOfd?=
 =?us-ascii?Q?ZBmXxH3jsX8tBWv3jLZRAoteOMWhaJ1I1XIl/fmeVFcN8pJly1jdMlOQ8pfN?=
 =?us-ascii?Q?JWq/qP+k6rhKKuL8wqgEkfZc9peeiZPYzWqiM37xtyEOtr4P658ijjyHxhhE?=
 =?us-ascii?Q?O2RiZYBFlbWgsPN7Ja4k83Fvz7iP/ZXZp4aL4aJigmzMl/pqn6xvXmG00NrY?=
 =?us-ascii?Q?NCNr6onPq2wb+4ZEdiFthxAlU2uJ/2zmV1i+EqC8jggAkv/5lN3y4oRxdjUo?=
 =?us-ascii?Q?rtKcQ+/JPwaxdURuwMNfULDV03FxRyrjdG+JmgOCHOh66uKL7RPuh6TzemM1?=
 =?us-ascii?Q?3XVs3DIhWMQcUpCFqrR6WPx9Uv1fRWYN9rW3j8idRhoUvinZHQ//fXvWTF3B?=
 =?us-ascii?Q?IgsSwX9g0Bak9kM6TYGhV8q/Uq+P8iE3g5oNYy3uylpv1KoEW++jbOI4d+lU?=
 =?us-ascii?Q?nT7WtXD3H9cEwZ0fgD5LjvXTu7nSimzkK5vaYfFC/O0wVDarUX71LhZ7O33O?=
 =?us-ascii?Q?oTbqTQAZ9cyfvLth1oFFckX+HLWb5QQXMouEuMPV8mWn/g1OwG180FyPDweg?=
 =?us-ascii?Q?TjRMmX/aGBhXtd2IBHrkMhnC0HYBezdAizJWJxrLdANjb0Axg1AoRqgu7YRp?=
 =?us-ascii?Q?82FpPohLNU9zfjxj9tzo5WXc+FsN6Lso+yZ8DlYGvk1sdCTtzP2INsm+jkqb?=
 =?us-ascii?Q?Uo8WiQg7BUygCE/FxdCTDF/LNNt6YBSKPoLOq2+cxbJ95LKwl9ukK2qqtUnO?=
 =?us-ascii?Q?vRmAIcWtp+/FzCNz+UfQJPFuwtitjyfk3ybC6pHD2y45uKrA+GZfiLPKd9QC?=
 =?us-ascii?Q?gmFWIPKAQhXnObU/BH0XJcVnkhg5GYl8i0qhu0OhluyZH9zWrAbXjv+oxd6A?=
 =?us-ascii?Q?CCJuboPZVQf3iWopphSXDMErhSoyzl58G4aWB4JVgj4sgv3hGDUPo7wavd9m?=
 =?us-ascii?Q?z+ghyQMagr4D5EHTEPnjceivDeArQNn6gO4g1wTUzThD/1g4mqCPxu2JxhvG?=
 =?us-ascii?Q?PwgkF5nEaliyZOhkrxhnVA2rHqYf/mxtrWp0fFCdjXCBphqatFhvKbwpUtDO?=
 =?us-ascii?Q?A3iHh/WblszAXe1inZ+gXI4LvCIuZ8OrKHcG5f+FHAmzPS5OuYKsz9q2bdok?=
 =?us-ascii?Q?Ge8FRkJn2G5wGl2iav1RT3p/itbIdoxGM9iy2sJ1knKzr+trNYhi6pCuLum3?=
 =?us-ascii?Q?7jHIFd2SaGjyLy8OjkojYPGnLcyKJc5v08in7XwUEnCGT+vriyVyLa9kU8hO?=
 =?us-ascii?Q?kybcUaYEW3Vr1Oz5QDynBjPKkuAbrZa3Tad261rFWmAXr7OqJnY8x6n23rIj?=
 =?us-ascii?Q?awp61uN3QxHGQjArMMS55tWVEVSjeOXS+TBIXuPieaBNfoveN6dZIqsIG7li?=
 =?us-ascii?Q?uq309/vQUv6qp2Z2OVXqYGaXzk9EhX77y/PPY+AVRKRtF6RSX993BEqR7vsP?=
 =?us-ascii?Q?IVK1JkLbTlvEK3BvYt83elDFW6Tv9zLZwBmdmoTN+7WQr2WwjMESDNL3huh9?=
 =?us-ascii?Q?sUQZLRVHz61WnuAEjITjYb7NKTfJq2fs09/8u2GTPl5sGzebkAzjP/t8GI+k?=
 =?us-ascii?Q?ZGjkwKdqMMOw6Zolk90QRwrvK2ZL/Vo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 017bf58e-5d5c-425b-f926-08da1c7ca40f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2022 12:04:47.9088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7snjzkTIpm1+4+SByzBApDO5cfiIOL2QlfxYkmATOSwgOBxQSMPS7TJD+qEBmPmKTerJtZ1cIOuMdG0IDe8bcPJHFwmb3I2pMKy7DJR4HGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4284
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing
 ring parameters on ice PF
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Maloszewski,
 Michal" <michal.maloszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Maloszewski
> Sent: Thursday, March 31, 2022 1:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>; Maloszewski,
> Michal <michal.maloszewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing ring
> parameters on ice PF
> 
> Reset is triggered when ring parameters are being changed through ethtool
> and queues are reconfigured for VF's VSI. If ring is changed again
> immediately, then the next reset could be executed before queues could be
> properly reinitialized on VF's VSI. It caused ice PF to mess up the VSI resource
> tree.
> 
> Add a check in iavf_set_ringparam for adapter and VF's queue state. If VF is
> currently resetting or queues are disabled for the VF return with EAGAIN
> error.
> 
> Fixes: d732a1844507 ("i40evf: fix crash when changing ring sizes")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 3bb56714beb0..8213bf3f8dfc 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -631,6 +631,11 @@ static int iavf_set_ringparam(struct net_device

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
