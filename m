Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88111419E4C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 20:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C27F6062E;
	Mon, 27 Sep 2021 18:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IIg8JPeNBTuw; Mon, 27 Sep 2021 18:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE2A360616;
	Mon, 27 Sep 2021 18:29:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C16201BF484
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 18:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFC21401CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 18:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZUq7iEFHv8n5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 18:29:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD125400F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 18:29:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310087032"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="310087032"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:29:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="486238371"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 27 Sep 2021 11:29:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 11:29:32 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 11:29:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 27 Sep 2021 11:29:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 27 Sep 2021 11:29:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmcprFIPJ4ISlY4xOh+4OUm38caauw5ApEer2XoEMI7tsGWf8dPSbTUgQNJuuzQ5A2xDtArEKr7C/NNW0r2/vO1qkUkvbUkk4LJgukQiIU8VUHJMCF9qPdpeLVXSKKqeKi/3/LQL1nlip+mD3pxirMeLEep97hDfbKEvNtGWm8Iaf7ZnNtDvnlQppg+Kq/bzF9X1rqJpXxUuW7qgpW+WUb0MueDxf7oPGdX89faCX2k4TPCn1DbpZef1sC5aza5O3Is1bf0mVS/g1uWp4XjmVXY8w64brEKp7J1jWAT/U4ChQLZdXli0ZZs25JfqQF7lZCoG1v8nFeolCgtUTqhDZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=5bAMe7/QCWx/DOwDturPtvkKhEGmjrt+4EXwoSFSFnc=;
 b=ONT/mhKwY4GGtBH2UprTEGOf417c5L/9yfK+L0N5Qqm+s7yAUmxxoBS+t6t5s03NZLpK/r4ARMRcFj/2ZxuU5tlrY4butoZdDBT4aN7k52Enr339Xi2Q7bd/gu8BSc4tjLBNjoZxgAG74Ynes/jLfPuIiH5oIo/MJlMIPcRLUNKLVHPwH9/YeXL7Tthx2VWK5Ipc06kr+qo+/I+ZwBAMgW+yYN1R286YAeVUAMABPI0sOgaWTFccPYwFiiNjr/u0urbxvmYpjSF2fWfzDNS0YFgrjTeHSa+JHIJyoJrlBNSTqs4euwr4Fzk9rg9cT7B65NVlzAG5Y9qI4DNR/v13Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5bAMe7/QCWx/DOwDturPtvkKhEGmjrt+4EXwoSFSFnc=;
 b=UmTM+cZPh4Rfb0ZrW0+jhD3KChnpLCuiT74cUwjx/XPOz8QQ3rrD0Ch3yCQWYG6otVJpbbrZ5XMojNdIJ/L3eBDAAC/incRd1Mgj/Unqt7R7aaSuH/nJQVnmv049FNnsUkaeQ9Q1WSff+Hvzm4M6hWFVWp4gMRW4KqDpY6ksow0=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3832.namprd11.prod.outlook.com (2603:10b6:a03:ff::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Mon, 27 Sep
 2021 18:29:29 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4544.021; Mon, 27 Sep 2021
 18:29:29 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Saleem, Shiraz" <shiraz.saleem@intel.com>,
 "Ertman, David M" <david.m.ertman@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [v2][PATCH] ice: Fix NULL pointer dereference
 of pf->aux_idx
Thread-Index: AQHXowZAFg/Nr5wJQ0+OdXWhYe9CSKuhxjFAgAB0w4CAFgiGYIAAEJnA
Date: Mon, 27 Sep 2021 18:29:29 +0000
Message-ID: <BYAPR11MB336743C0FA7BAE5EE3584DCFFCA79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210906093054.2904558-1-jun.miao@windriver.com>
 <BYAPR11MB3367BC4EBEF0AA2E7D5A2349FCD99@BYAPR11MB3367.namprd11.prod.outlook.com>
 <SN6PR11MB32297D1379E22D787AA8FE85C6D99@SN6PR11MB3229.namprd11.prod.outlook.com>
 <BYAPR11MB3367C9390C83637D3AABDA52FCA79@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367C9390C83637D3AABDA52FCA79@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a96e72e-eb21-4604-387d-08d981e4be72
x-ms-traffictypediagnostic: BYAPR11MB3832:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB383200764AF50A72CC7ED072FCA79@BYAPR11MB3832.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vowyqeCjJWrz8dWJKY7SwPcEe+GIzab32Iv9AuuJZK5U5a3XVWNLD182CX7UQ/Vj3YtXQsEJl4k0EgnsB0CA45b+iquOcSuNQMULtG1FJQY8AKNafq7lcrCw6/j+rCO8ggla0iKt+FfUudF2RxCJCA1u1E6jQ3IJwqTyo2yCZSlcJY8j4DIBD6Q57+8DhHrvdapcWXYBkd56UnSHh34k5eaZW2lo6gfFqiY2mDKzAq8fje9whXq8X55cytigAKr+7sYEW0236XRGwz8cFWxnQKHlJTEvBpw0y0DY1mQYhbyOrBzZHGCde2h/rapmJZvmuoCGAZy5/rDXAbBLr9sR51pYjc4ccKHMzcta/lifhYKMNMrW4ZXF8QYJ18MJkBVgBK8IFKCCbTRcy7fW+jX/Qsv/2c+lwGOy5xrMzToLmK3jAGBcVfmwS969zsJCPiCSYNBnjfMU6pATuKWExmolss3/5Jco+mwKf/fZB+VcNXQLukr8wI+K4hZhsCZQLvuiCu6aI0SzQmTFhX1aomLsm35PG4joqBfzPffxZa9Qj3/YjUilFgVwNuRz1t9UfslC7cyEbTHek4+ni0fbofPYK4/6/xuHi4CpOt6GOd1NGOIWQ8NZYtGT8i2XLbE4jA/NbH78g5h/kOnk4LeZXJ6j1MswlgcIF2pyaisRa+aSZcJIgkPY0Nb+KytL0ysPMzGf0cfHsL9AemkIu1XNVntCnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66556008)(508600001)(33656002)(45080400002)(66476007)(76116006)(86362001)(5660300002)(186003)(64756008)(53546011)(52536014)(4326008)(26005)(8676002)(54906003)(110136005)(6506007)(107886003)(122000001)(7696005)(66946007)(66446008)(8936002)(55016002)(38100700002)(9686003)(2906002)(71200400001)(316002)(38070700005)(83380400001)(2940100002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6U3yuwYSwaXu1DDL35UukzlW7uT5L/L4bB2czF9PrtPFwI4UnIEOweec3+3v?=
 =?us-ascii?Q?EAxzisXCt5RxcKtzldsMcWzf4xEUFq8BC7hUWBS0Is1GUoP6oyugixjN+wBy?=
 =?us-ascii?Q?XKRX72E891g+4PfU06obD8IVf6LwaEu5FtAB0ANUek99GDCYvOEhBSMI8MTk?=
 =?us-ascii?Q?izhTWR8gUJq8S3kHN9zsjNvhJSPgQWAoMiUs1fPWprJ3PUqCZbg6zFaOcz/C?=
 =?us-ascii?Q?OHFcj8hIj8sfAsBZXRw7tNEKvqRBkDs7nmkcM9sqgikm6IurgcHpFNJWzFh+?=
 =?us-ascii?Q?wDh3EevEOapgFca0RsOQ/J+SpaILAUPoC5O3wJGd9vCFCPL5EY/VRRllKhpm?=
 =?us-ascii?Q?2+l7DPcmLxSiJ/i4O23AwIqunkycihMGTBA/XYr/DI4QTYnb+SGfkMs+S61Q?=
 =?us-ascii?Q?tpxvgWLp9X1rPF6M5R+9O1c6UZB1Na9Oa6zdRmi3f2mL9AWxWRFEPNwCzJ2U?=
 =?us-ascii?Q?IKy3z+DC2+JdRZ0e+IAJjiP2XbjvM7AFo83bQR0RsqEtB0CFqX2qVdLRIva3?=
 =?us-ascii?Q?T2sRFJigqQzPeEoGGA0U2uA5usS5cZUcCz4K+peWv1tFbb/PEoZaJHCoTBJG?=
 =?us-ascii?Q?2Lgm7EfELkHhj3NjSFNhoskjWhbCtqPl/aPbCO+MuyR9tbbV4822ETEq+EpB?=
 =?us-ascii?Q?+EFlC8RVXVwtGjrRj8PQJILGqA2sUHMCkb4a0e7zEeNTATAnUZ9ous4Zo8xk?=
 =?us-ascii?Q?jGTVnSDGK2TPUwtXziFJI1qlk8wU+yup39pcHLfwNm3ArkHeUOGg9M1hP27T?=
 =?us-ascii?Q?PKUFPM1aq9WUkKiyEq4EJTWgaOHDRCpRpLFYLOc+hSd0EOTJY1zTIaW6N714?=
 =?us-ascii?Q?4HtTfG3IcRJJOR5NNFPyd5khaBQclBbVk8NeHverIWicWbMBGnvjmWaFJXjg?=
 =?us-ascii?Q?SYmT/8gad7fZTOv8Qc4uOV5Ybn/1uC0OS2bIB+TOJo2BlNW7bMOlHgFu/4o1?=
 =?us-ascii?Q?xhH9UEE7YT+GqO4o72t8i/2Uje3AfJnVBjvgrN5g0gGoROJfB2/WVPS0sS4f?=
 =?us-ascii?Q?BbL/wYTC/Zg70VBDXJ9G3EO15dcbmjT92pGSclmdQTaUlP0nx9B8r/Eng3WA?=
 =?us-ascii?Q?Ru4v4vNBLq2pSuZojMDPs8AYnK3bKaKh4jeF23JjJ6x3kaNvXcawlANVeYzX?=
 =?us-ascii?Q?4Crgd+JVpQJZrLVmXaAWxlJj8Hy+P2NJUfSTlexq0GPAhn3KyQALxeh5baDT?=
 =?us-ascii?Q?Q9PbXCNxD2CW11pz6Scr6/CRfMgxvopENdvSDHUlBEnWsDLHxq0XpRU1vxyh?=
 =?us-ascii?Q?6HLHcc8oafEf+Q6OUV3dDOq9Sk3QaqfNHNTq6FbVDqmei7vsQMF+V5sLnmBS?=
 =?us-ascii?Q?UJlWOGzy7i43IEenEFc6XSHP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a96e72e-eb21-4604-387d-08d981e4be72
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2021 18:29:29.5989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: REthAJkoSKmOvgMKyszGtfzvpWebgBnwP0pAxkktKt6D2C7KDh7omFEnxNadVhPpU4wZQ1QwQEagBiK3dgRmMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3832
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [v2][PATCH] ice: Fix NULL pointer dereference
 of pf->aux_idx
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jun Miao
> Sent: Monday, September 6, 2021 3:01 PM
 > To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; davem@davemloft.net;
kuba@kernel.org;
> Saleem, Shiraz <shiraz.saleem@intel.com>; Ertman, David M
 > <david.m.ertman@intel.com>
 > Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
 > linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [v2][PATCH] ice: Fix NULL pointer dereference of
> pf->aux_idx
>
> The RDMA is not supported on some devices such as E822-C.
> When triger PCI hotplug, there will be a kernel NULL pointer Call Trace.
>
> Since of removing the E822-C ice driver, ice_remove() will callback
>ida_free().
> But there isn`t be alloced "pf->aux_idx", when the RDMA is
>unsupported. So we should check whether support RDMA firstly, before
>free the "pf- aux_idx".
>
> Feature description and call trace Log:
>
> There are E822-C on the board:
> ec:00.0 Ethernet controller: Intel Corporation Ethernet Connection
> E822-C for QSFP (rev 20)
> ec:00.1 Ethernet controller: Intel Corporation Ethernet Connection
> E822-C for QSFP (rev 20)
> ec:00.2 Ethernet controller: Intel Corporation Ethernet Connection
> E822-C for QSFP (rev 20)
> ec:00.3 Ethernet controller: Intel Corporation Ethernet Connection
> E822-C for QSFP (rev 20)
> ec:00.4 Ethernet controller: Intel Corporation Ethernet Connection
> E822-C for SFP (rev 20)
>
> root@intel-x86-64:~#echo 1 >
> /sys/bus/pci/devices/0000:ec:00.3/remove
> BUG: kernel NULL pointer dereference, address: 0000000000000000 PGD
> 0 P4D 0
> Oops: 0000 [#1] PREEMPT SMP NOPTI
> CPU: 17 PID: 791 Comm: sh Not tainted 5.14.0-next-20210903 #1 Hardware
> name: Intel Corporation JACOBSVILLE/JACOBSVILLE, BIOS
> JBVLCRB2.86B.0014.P67.2103111848 03/11/2021
> RIP: 0010:ida_free+0x7f/0x150
> Code: 00 00 48 c7 45 d0 00 00 00 00 0f 88 d8 00 00 00 89 f3 e8 44 38
> 84 00 48 8d 7d a8 49 89 c6 e8 38 ee 00 00 a8 01 49 89 c5 75 47 <4c> 0f
> a3 20 0f 92 c0 84 c0
> 75 79 48 8b 7d a8 4c 89 f6 e8 6a 38 84
> RSP: 0018:ffffb114c18dbc38 EFLAGS: 00010046
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000001
> RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffb114c18dbc38
> RBP: ffffb114c18dbc90 R08: 0000000000000000 R09: ffffb114c18dbc28
> R10: 0000000000000000 R11: ffffffff89e59e58 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000246 R15: ffffa0e5e10f4900
> FS:  00007fc4d4021740(0000) GS:ffffa0f500040000(0000)
> knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000000 CR3: 000000010a70a000 CR4: 0000000000350ee0 Call
> Trace:
>  ice_remove+0xc4/0x210 [ice]
>  pci_device_remove+0x3b/0xc0
>  device_release_driver_internal+0xfe/0x1d0
>  device_release_driver+0x12/0x20
>  pci_stop_bus_device+0x61/0x90
>  pci_stop_and_remove_bus_device_locked+0x1a/0x30
>  remove_store+0x7c/0x90
>  dev_attr_store+0x14/0x30
>  sysfs_kf_write+0x39/0x50
>  kernfs_fop_write_iter+0x123/0x1b0
>  new_sync_write+0x10e/0x1b0
>  vfs_write+0x131/0x2a0
>  ksys_write+0x5e/0xe0
>  __x64_sys_write+0x1a/0x20
>  do_syscall_64+0x3f/0xa0
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7fc4d411faa7
> Code: 0f 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f
> 1e fa 64 8b
> 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff
> 77 51 c3
> 48 83 ec 28 48 89 54 24 18 48 89 74 24
> RSP: 002b:00007fff097188b8 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000001
> RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007fc4d411faa7
> RDX: 0000000000000002 RSI: 0000555bc86bf640 RDI: 0000000000000001
> RBP: 0000555bc86bf640 R08: 0000000000000000 R09: 00007fc4d41cf4e0
> R10: 00007fc4d41cf3e0 R11: 0000000000000246 R12: 0000000000000002
> R13: 00007fc4d42155a0 R14: 0000000000000002 R15: 00007fc4d42157a0
> Modules linked in: intel_rapl_msr intel_rapl_common ice i10nm_edac
> x86_pkg_temp_thermal intel_powerclamp matroxfb_base iTCO_wdt
coretemp
> intel_pmc_bxt matroxfb_g450 crct10dif_pclmul iTCO_vendor_support
> matroxfb_accel intel_spi_pci crct10dif_common watchdog intel_spi
> matroxfb_DAC1064 intel_th_gth aesni_intel spi_nor g450_pll crypto_simd
> input_leds matroxfb_misc cryptd intel_th_pci led_class
> i2c_i801 intel_th i2c_smbus i2c_ismt wmi acpi_cpufreq sch_fq_codel
> openvswitch nsh nf_conncount nf_nat nf_conntrack nf_defrag_ipv6
> nf_defrag_ipv4 fuse configfs
> CR2: 0000000000000000
> ---[ end trace b7d0a971ebc5759b ]---
> SmmCorePerformanceLib: No enough space to save boot records
> RIP: 0010:ida_free+0x7f/0x150
> Code: 00 00 48 c7 45 d0 00 00 00 00 0f 88 d8 00 00 00 89 f3 e8 44 38
> 84 00 48 8d 7d a8 49 89 c6 e8 38 ee 00 00 a8 01 49 89 c5 75 47 <4c> 0f
> a3 20 0f 92 c0 84 c0
> 75 79 48 8b 7d a8 4c 89 f6 e8 6a 38 84
> RSP: 0018:ffffb114c18dbc38 EFLAGS: 00010046
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000001
> RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffb114c18dbc38
> RBP: ffffb114c18dbc90 R08: 0000000000000000 R09: ffffb114c18dbc28
> R10: 0000000000000000 R11: ffffffff89e59e58 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000246 R15: ffffa0e5e10f4900
> FS:  00007fc4d4021740(0000) GS:ffffa0f500040000(0000)
> knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000000 CR3: 000000010a70a000 CR4: 0000000000350ee0
> note: sh[791] exited with preempt_count 1 Killed
>
> Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
> Signed-off-by: Jun Miao <jun.miao@windriver.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
