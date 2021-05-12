Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF9A37C5D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 May 2021 17:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 319AA83C9A;
	Wed, 12 May 2021 15:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qegHMBlTCXXo; Wed, 12 May 2021 15:44:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A6F883C0E;
	Wed, 12 May 2021 15:44:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EA481BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4777740380
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id joGpgI3gutgZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 15:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37FE64018F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:44:40 +0000 (UTC)
IronPort-SDR: 6tVOhSOpX4+0dbUP86/3i3NDISmOQnLBhihWMjNlthp55pm31tlWlk0Z4KVedpjBzxIH066yiE
 dQnwKID0G1rw==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="199791114"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="199791114"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 08:44:38 -0700
IronPort-SDR: NdZyixtNXqzwhadjGdqnPbni1KlFCtz6/v151B2YvvZvSGTTLS8Lo3O4wbqIkru4lSsFnQT56y
 g2mkXSuEO68w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="622551336"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2021 08:44:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 08:44:38 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 08:44:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 08:44:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 08:44:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NBUAIgauaS08Pvk4TXJReX0Kpc6briyg2Gc8VZV/hFXQLvz6QgK8QYCu6mluekNZE1kFItOUF0s5TzdaGi9IgmtufCa5fGoqvHpq/1g6SH8mEH8AQQBixJA5QZlZhv92xA950CbS6yL96nj31TnNXUSu1voJwOcG4y7nq/ZWSYeZ63KiNH0qcxKlGTIdGscU/dnopNGcekWkpjPd4K8IcWt+U4Y1t3uTgwS8TmTUq0fNoD5MZqdE/XZoRX2i+n2+KKBzhzKziQCfzVPb58HSzLVXmO3P/EtMbrv4QW8r+gmX4x/OfFVXQZSC2cbh6ZZ4y6QFxKG5KzAzCZPvfg9Q7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCGKfSHjZSMTRgpQAjSNqujJff9gJqS2SAx5086I4ss=;
 b=cxFSjwvo1Md6eGTTBgAQcj5JGgGzopKhM9KofL2q/hRTQr1BjYfUj/llermyXZIimIa9uTdnNdkBsbVUfWn69KEFLZhpdfVZ1gjCBu9KlaKCt3WmQ5OPUkAYvDmqamOhJD/36u802AYk1AwJtC1vSyyYXFm1veLJcA4Cfy2wtqOoh5yQHjN67Qi2k7VRtn5nCRgjO/s4enKAHPEgemgZEyxDC7uQoiZf1UahWW/ODfMbZm11/IJReFWn+S/a1Wqhg1M/WidkL4D+p0hupQkwvO7BYpMYUmEd7qJt2iEITH7ZxRm+TMxiIhsBvtA10wqTEd2t+y5d/cQCQiP3Na/bIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCGKfSHjZSMTRgpQAjSNqujJff9gJqS2SAx5086I4ss=;
 b=Q9GcJUDHChrvbumLgalEznrRiXVPgCQ3dEaQsxuf5Ow8DO42SVyxre5Wvq0P4Poqe4vfYmEM1U2l+2myCd1ft/p75lT1KvlkfZaVKdPJPT+oYtTe5MBP0VxaxGuS90b0iqo9IUYjc0iGIiBDseNyZUYoLpPlPUhXJw+THB6ZBGo=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4819.namprd11.prod.outlook.com (2603:10b6:303:91::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 15:44:33 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 15:44:33 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 2/4] ice: report supported and
 advertised autoneg using PHY capabilities
Thread-Index: AQHXQfWqBoM/8KN5+kOqxdUrHjMFCargB1mw
Date: Wed, 12 May 2021 15:44:33 +0000
Message-ID: <CO1PR11MB5105174D52E75FD93AD29B8BFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
 <20210505211800.11908-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210505211800.11908-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9cf06ec4-1c8d-47b3-74e6-08d9155cd6eb
x-ms-traffictypediagnostic: CO1PR11MB4819:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB48193CE03AECCA786A7A3FE3FA529@CO1PR11MB4819.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E0ZaTfZPyh8Myr5+0Vls0aCcMJk4jbrws/PaaFdPVLEHIVY1BnJQ7hZ4OON/G0y1vibXKPc0f7ti2RYg2MEFJjpENUmOyOyUIew61Gsv7nQeI4+tNM5kguiFv9QmTNVztNhV96MWsu8kbpUsUSg/mV/arqw8aP3nTuBrAAdd4TKRhUnNgqkbDSoFFsvTgjiAEujniWWgAG1uwNn2N63c2PulAHJLS/ovXMUlCAix26arPzamm1EWBoxEp1LWL0Phuc87Ve94FoLRFRpUff0F/DsmuWhyqpUgMUjHzeUcqCOHDcun59ao3tM3QuN7nEEudb/WDTdKWh98r3sfUjcniDaL0f8iAqPDJ6iq9LeKzorxJp6Aae0+aQ+I/ZE0xQefl/K2BPWdJkl5MM0tcPN1H3LiZRStCYn6YxAbp8fx4sW6G8SYeacQgQnHhD+R7SFsupM7KT5w0qA24PAiTh4u3Lx6OxMllaURh+EjkufTneV38H7RrpD2/KF33IgSamZvxeabS5MwiHPwJWHmlZ9kUetVNJSkRxgaDE+o19QLxL4yfvzDnaJ+fiY2ViC5MbcHf4We4tVLnCDZr290DeM6MVSJUz8cw7GGw6YAjUrj4BA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(366004)(376002)(136003)(396003)(83380400001)(66946007)(76116006)(2906002)(52536014)(110136005)(8936002)(86362001)(71200400001)(186003)(55016002)(5660300002)(8676002)(53546011)(316002)(7696005)(6506007)(478600001)(26005)(64756008)(66556008)(38100700002)(66476007)(33656002)(122000001)(66446008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?C0lX5MzpohRdrzihfyXMpKxlWuL5l7BbpSgRuDYN+/DyRWFv4aiaIhcl31sP?=
 =?us-ascii?Q?6JW+S2QNiyYN1Yd83nm7QEZGcQhvhEleOke0cZWjg9LdawmiHZZsqH0/F4/O?=
 =?us-ascii?Q?oqgSB1BGRfzUcv71chq9hkUB+Yi+AM8/cyBJb2t1HavO6Bm1Q8otdlVkKvwt?=
 =?us-ascii?Q?l+jijguw26ia0Lm7gMb6WAnIyygyVLSg98nZk28eNjwpm9qpiTaSwTwbJC2D?=
 =?us-ascii?Q?2bLxXLSj6OTTG9TR4zdMxRHeanAP1B8Jpu12nvmDP1uj2hVnC3cl2AXw7OE7?=
 =?us-ascii?Q?HJP/2umwvluCuVZzzb4Og7ZzEaXdl5Ymhj5f/9NrzQLyXIRe0enpCIfbW7xL?=
 =?us-ascii?Q?8AazqbUntRoeKbkwGkskvwkWFzQBqoE/3OALR6f2SiUmIEZvbh689DQVp/Tk?=
 =?us-ascii?Q?HuzoUdVyYLOQj2Qg+3NR0Iua+qd74q+wfvM3Y9s3fAfRUE1eaJiVJg02PXaR?=
 =?us-ascii?Q?2QvO1W4y+C7JArQt+9KR2gzwbc98A64h175S0E6N9hZKRFKBBv+8IVLpPs6G?=
 =?us-ascii?Q?w8tz/MUufIvF5N+aUQsPlqf2LpssmSUj84JvHc/FsWIm1kR6TdV646Wl+v3+?=
 =?us-ascii?Q?RW0NzuU6hVt9wpxERk70gSPm2r+TRkm0oxIaAlMfBH3hODtJUcYqkCvygmKc?=
 =?us-ascii?Q?cpvB/qK0C0TApeF7SrEbebY6dXNybYILmf0QcDPNqyWpqxL+VRi+Gik2+V90?=
 =?us-ascii?Q?nFjvAr0MzIe2IAAFKJtToiA8oS4ObCmMne0mPuon3k5YCc1fhTcr/Ovb7+Lp?=
 =?us-ascii?Q?DWthIpnZ6mSQI3NoCaJut02LAYXNW4dZpQD4Lf0gWgUdRasm2a6oCBDW052H?=
 =?us-ascii?Q?lI54h79KSujCmrfDaItyRnSM+v0wk5C21Bc0koRIu+4hVRyXeLf1fM7M+p+f?=
 =?us-ascii?Q?oDhtAwS1yft82rjAA8PPPnUaEhzJ3A8nndJ4BPAILQjbEo4gHJl36WNWQX6U?=
 =?us-ascii?Q?qKpEPjKMqsU5kiF3EFLiHqobft0Ldheu/wdi2RNfyLhFhCM9gu3EIbXIek82?=
 =?us-ascii?Q?MhxZxv/qO63ZUMHHqPH2ffby3t/Y1bT7LNzyDflw7KjGDnQlNSptpoTebbZU?=
 =?us-ascii?Q?NVaU+RZdQZWK+LX+BDA5zYi2wwUgTxXc4RdaJ0pa/hYMF3oP4hlzpyKLEax6?=
 =?us-ascii?Q?3pPSpf2OE0ultq1q6J31tb6rApwjkEaKVhire0Yn9tuIdb+prO8mfbcG7OWB?=
 =?us-ascii?Q?8injMF1mKad0ZTBSNkyGDpD+WtWpGTO8xlM14Bri6XECGC0TdHm3iJVxL4hK?=
 =?us-ascii?Q?IsfFWDOBk4134DcSxpnkCesODX6xnAEjSAXsdge0DO0ILAcdWIsmsG2wlFqn?=
 =?us-ascii?Q?jqC4UDXfGhR7x+qX5Ytsn3er?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cf06ec4-1c8d-47b3-74e6-08d9155cd6eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 15:44:33.6117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X3oTi7jX384tVAQss6K2WCk5XVsjitmtwmERAd4nbvY5nvi9XkMmJ/R015hXA7ZCO7WUT+QjN2C6GFQnrRESBMPmYF2J+5MEXD4brnGu9OQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4819
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 2/4] ice: report supported and
 advertised autoneg using PHY capabilities
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, May 5, 2021 2:18 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 2/4] ice: report supported and
> advertised autoneg using PHY capabilities
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Ethtool incorrectly reported supported and advertised auto-negotiation
> settings for a backplane PHY image which did not support auto-negotiation.
> This can occur when using media or PHY type for reporting ethtool supported
> and advertised auto-negotiation settings.
> 
> Remove setting supported and advertised auto-negotiation settings based
> on PHY type in ice_phy_type_to_ethtool(), and MAC type in
> ice_get_link_ksettings().
> 
> Ethtool supported and advertised auto-negotiation settings should be based
> on the PHY image using the AQ command get PHY capabilities with media.
> Add setting supported and advertised auto-negotiation settings based get
> PHY capabilities with media in ice_get_link_ksettings().
> 
> Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link
> operations")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 51 +++-----------------
>  1 file changed, 6 insertions(+), 45 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
