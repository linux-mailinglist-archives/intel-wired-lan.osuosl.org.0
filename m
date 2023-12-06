Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BCA8078B9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 20:37:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBEA060BBE;
	Wed,  6 Dec 2023 19:37:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBEA060BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701891461;
	bh=NJPkp5+DgTy/DVFkZrG+m0jeyh2g7BL/AEBcLUdN1p0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZQJC2B558mvI+eOEcTTMG8wcSyEexn1Y6cdDmbYQoRRd1eM+y/wdhtz6N6c5sJQLd
	 RsOBp1UxxKzxohY8pl74ksGqjJyEstQspRt88i0S0EGDr0uGedbi60bvwE8HJWPPbm
	 a95Iq6laxhFYPz61mo7HdiRmzh6W9YEV4abKlNdYM/iUyuB02ETUtHmmnoTjuBndgv
	 bgl8GF3njFJMgkhj7uscd5oToZRYFBTNuXQfasvhLAE5ZIn/Rzuac7kE7rWBm/abCM
	 ufgihprHqtUgd3I6fQc7QMC4bzv2vHHSYaJlTZjScpRdFnAdGTGXqXkLgt1mBC5nnV
	 4XsfxRWjbAMNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jsa85bWlTDQ1; Wed,  6 Dec 2023 19:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE7F060B00;
	Wed,  6 Dec 2023 19:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE7F060B00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8425A1BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B50660B00
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:37:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B50660B00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fm2KO6PK-QJq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 19:37:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49D9360AD4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49D9360AD4
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="373593010"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="373593010"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 11:37:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="915297856"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="915297856"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 11:37:32 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 11:37:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 11:37:32 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 11:37:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fNqkgQuHNKDTJyRnxJ1gaISV7vWKyU2Gk+wPTQ9vo7fb0+FzW0WalAERECtZXqg3yeBeAk6GF/8JrMW/fzjB2+Jz9pjA/0ssA9mFNdvg+gCI0YTiR16jjlS6f9G5ps+4/ak9/lbbaKDZW7QV7n1dOCK3vZjqH+DS2OzewDTo0xAE5NMXWU5n3bDL4IEPSXyicqtQnL4KxOLny37LD/xejK6H5iB3IRqCmZBULr1Mz/zVBQNI0MeEbulaknpPJz6wJ+hRMS6MxPRHGFCRQMQZCw9hA0QemongOn+qIb1mN0FeyFPudebkTAGpUF6Vs1l/O8zn6AZZMBmPzvfzNl+eOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Gs7amhEnAI/vGk4y+eDusMX1p5m16kpr10K+88YgtQ=;
 b=gKLt54n7B+iIJDXigGgvinT2J39APPFBaWn8CKQztdGc1yMKw8xp6aSW0/DoQe/WczBmbLpsSvVSzxZTd9oTtMK/V91l+0RDXs0b8vskErcDdBEM/EjebQCLWi0iAsktWm7HqwWHHmGEnh+2RjyVFtxTE3qpyiBpRS6Z0y1xOZxialOPcFnF/SpRlDefHh/M7J/KqYPntjds4HjWnQyT1HePD7juj87w439Jx82TU1sNek60d6ASWmTTUJrvuYzA+FCnaD4TSQzFzq3qf+MdH7eVaFeHhV6w8mw6m+WQf+OqfHM47BZlCPZRP1iqt6I0v62ipmOgVCA2d0OqxjXNHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA1PR11MB5804.namprd11.prod.outlook.com (2603:10b6:806:237::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Wed, 6 Dec
 2023 19:37:29 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%5]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 19:37:29 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Fix VF disable
 behavior to block all traffic
Thread-Index: AQHaItDNlF4HpncJo0a+kDqmuP4PibCcsZbw
Date: Wed, 6 Dec 2023 19:37:29 +0000
Message-ID: <BL0PR11MB352169553040F0B56CAAFB508F84A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231129142412.3214380-1-andrii.staikov@intel.com>
In-Reply-To: <20231129142412.3214380-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA1PR11MB5804:EE_
x-ms-office365-filtering-correlation-id: 04293339-211a-498c-8229-08dbf692c890
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c3z3R2ErZxDnZ1CzyWfOqCUWYUToftzcsynaWKEWtLh436ye//JUxNQx7Rz24Wd2+1hsifNgg+Q947uOm8FgAGLK5W7qRKRO/DkKnWDUx4VfB8PXLdSDe6HjDlompuY2wEHsybjYTI69ri50UoFvD723TjjlCIhbOgFs+7lBQp2/3rN6RBrrT5UpUKHJPqoGXhllVWkaF52BDe1CiAjiv7miaewxMXCuIB8jsUSaSRvRvMKbwWGLTYAk3SBZDdStCUWUf0zvAN1Ceh2m/mK5OIQ+s9+xWNKU95bO2Q/zbLjpldFsIoT60uROaKgE++rFKBxHQGM/zGWXuuiPxMkOU9ZegTawWYYRiHuX0sDxPcIs/rkZdb6UDugLa1dZdqXxuOZ6WnAdLjzuD0BrOJ2EZfDBzZC7ojt4oqoGibmBmeG0EfRhPHs3x+bJwfS/tgWjxSWBFa40cd+Caf1O8gjj1snDR1DLmVM+1wBAjp36AoPlAjECh1EZ2aCLnmvktUa95aKwjmy6BspMoVlVEutc6qkzkeBARwnM81TRvwpHHFm0Xeak/juvFBNP6FXa7dxaJJY07vJvn5NCv4dRTQi9rXMnSCqtvJT+9j1/WZKQbuBoWJTz6U0y1TW4R29ofV5z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(346002)(376002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(53546011)(38070700009)(9686003)(2906002)(71200400001)(6506007)(7696005)(83380400001)(107886003)(26005)(316002)(54906003)(52536014)(110136005)(66556008)(66446008)(64756008)(66476007)(66946007)(5660300002)(4326008)(76116006)(8676002)(8936002)(478600001)(33656002)(55016003)(122000001)(82960400001)(38100700002)(41300700001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wQj9v5rmHmvqzyHQARXYEDZrtsnS8JSCL4aODsdpfL9pqIB9+6sEDxaNgzLH?=
 =?us-ascii?Q?K7vZPAG7g7VB3VtCnjYdPpcyM0WgnWVaM79N0jskA0c+NXNXwJPJsgxuapCS?=
 =?us-ascii?Q?BzwFcTYe1mW4ZOec6askPepP5ZeuuAWmyMlSS1n9fv9gIUEuC5supuxriJfs?=
 =?us-ascii?Q?85pSWlQteiChQS6BnLvodTm3s1YdUD2akcWAJ/SJHFGJFyZEuSwDM8S4RAJb?=
 =?us-ascii?Q?LCY2HNyg+nXEsyvnV/1CpC2KCL44YHnKkQK64408o6zMw44sJnVKHZpqmdu0?=
 =?us-ascii?Q?AQMSIL5v5zhkw5SmmMATad+7GXt4w+M0UzpXoi/hi9mwBLJ8jFcthhKQGMVn?=
 =?us-ascii?Q?nv23ZBk+Ank2Q2yWNGbL2ihQfkm5Sc9LoPSDnaroDDXYqVC2elLew78x800K?=
 =?us-ascii?Q?JZX+nIV/VzNohYG8oozrrK8I+Ap4rfEeOpFgvxzhYoKAgSR+Z+UYy+gxPZB/?=
 =?us-ascii?Q?3eP5y8IUqazqQnaUH/SK4xmEuYmPcTj0vi7hE2jQ7GQxMsTcoDveTv0tXv60?=
 =?us-ascii?Q?yMiTTDwt5vOnnpEqyKA01+khbktRM3IoNBAO7uPdhHTpRf81MluffN+v9br5?=
 =?us-ascii?Q?nZawC2OfHd+sawnwHR4wv19c9x+X9p9tWlP98TZ+vNWmZIvFX0Do0cTE2A0h?=
 =?us-ascii?Q?FL/W+QEL5I1P8QjeKClxgHHhBN1KuJpfdyO3PgcAu/U3Dc+p0gUKkFxCvS5M?=
 =?us-ascii?Q?YXJVXLFKBsuC/d5lqbnnoA0B+qNFFIV2oh0n0QyVUeXJBL3hhKlgUMLIXHzx?=
 =?us-ascii?Q?Pt0BP/jH2snVkzddBg2h9Ia5M98IchsH2lkqniWThZBje7zM092fZhfK7LQO?=
 =?us-ascii?Q?xHWC7O+3YbgDpkrJs9Fi/gY9RJc4JtYZXlMqi3zJdNAcbB8lvAL5/mnCRslB?=
 =?us-ascii?Q?jySAaBjqkjdlognD4vvttI2Kt4Zd9b9OGsQlCbK0qYNalwoVe4pKTCHii7Bt?=
 =?us-ascii?Q?guPzLbEs/oLJ0W8fDNcD1wV149JF60v8FKoytdap+L1mFaqmMFBgYsVs6d4Q?=
 =?us-ascii?Q?yOMUpvrm9muzUur46x790pruY5f+uqQyCxJutz2VQ8gwdLDh1MWB1uHInqlz?=
 =?us-ascii?Q?3EWGWYzla/rf/r7fF8x7Vq7IdLaYDPrwPu28YOhKQ6pPXYH3ZWH+ZzhZtRZT?=
 =?us-ascii?Q?uz8/+e8gEnQfUC8gC5VTtNB3Fba1OQBTECS5eNJfxXGy/samSCLjc3uDrAyi?=
 =?us-ascii?Q?eFnNs6TLXRqP0gGuBDX0pFuPwhWz+USMTm1d49l6iuDOu5r3nTEoTj77GslF?=
 =?us-ascii?Q?Kg9gerXIdWR3YbQyVnhgY9SjR8YCVkpcPAJmnLeicWP2PsL9Ur899lgHxvXx?=
 =?us-ascii?Q?vqf/oHYxFF/lERdOU8Ln1BeORtqMspkcqAVvvxI7LJ1Qsh8rW5KSKbgE0TcL?=
 =?us-ascii?Q?i7YK0iwRCujcyLz5bj8RIzjWXhK5zRVFfRJp5SDzUnOO8pY1gmeWSBIaWDh9?=
 =?us-ascii?Q?W2adA0miT+EQkTStcCJ5ah/DdlWNQwJQfy6wxKhXwUWKapsn+TB+/iM54i3V?=
 =?us-ascii?Q?a0lXFF5iV/uxfY6/Urb0hCKrr0Bf3rk4HcD3uZ7tK/kSU8R/O4x39mbEt3zP?=
 =?us-ascii?Q?T9DSY7b45WDDO1e6tm2hAS/1jVsmlsxnnkTJmd2EtOWlQulYjb0lAr4MyjEg?=
 =?us-ascii?Q?YA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04293339-211a-498c-8229-08dbf692c890
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2023 19:37:29.3200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D96PMIioohx4srFfW0XoslxtMJS+I+O9512wJDjtTiaZNQx0/4gKwb37J2EJdvX8HjpgtPElKzkSLZiL5vbgytEIWz1/uW1oU78HHAxwtDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5804
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701891453; x=1733427453;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XoSLZHHv4BuQ5sHW9JCkYbvwjmPIZ3wR0Ok09TPK6qU=;
 b=DLTcU5bXT5NzLqqj2eh0RSt7vWgswDgq1LDitYBOWTEwRAYj9Xr4if5M
 4fJXqqQ7wwtJJ811ICzFpHDBswSTvVzj+zMxMQz/dl86dJpXiMTyvb2R8
 d7iLstaWDYGYyFUf2bhO1pEMT8mTs3IepyxCIIhWrv0LCHUzEbXzT0ibf
 807wA0A909+wzXynaxC6svqr6Lxja5DV1rPsg172FP9nen6UWaNp0LyQ8
 9x6jI3AHoScHJ4LJTXraEnfZZ3M0HbSYlF5lhHR6bx0gb3DnjEIJBrrod
 EbEvtQFTf+8WpKjKBsm5221M1VBOtg+VnAEUESX2FqEZIpKb++5Lfad9+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DLTcU5bX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Fix VF disable
 behavior to block all traffic
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andrii Staikov
> Sent: Wednesday, November 29, 2023 3:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Sokolowski, Jan
> <jan.sokolowski@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Fix VF disable behavior to
> block all traffic
> 
> Currently, if a VF is disabled using the 'ip link set dev $ETHX vf $VF_NUM state
> disable' command, the VF is still able to receive traffic.
> 
> Fix the behavior of the 'ip link set dev $ETHX vf $VF_NUM state disable'
> to completely shutdown the VF's queues making it entirely disabled and not
> able to receive or send any traffic.
> 
> Modify the behavior of the 'ip link set $ETHX vf $VF_NUM state enable'
> command to make a VF do reinitialization bringing the queues back up.
> 
> Co-developed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 32 +++++++++++++++++++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 37cca484abb8..ced9f5170ce5 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
