Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E495D4A7BA1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 00:17:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FF3A60C15;
	Wed,  2 Feb 2022 23:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7uUgd-vJ711; Wed,  2 Feb 2022 23:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70FB760C06;
	Wed,  2 Feb 2022 23:17:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E9CF1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 23:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7ADD7404CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 23:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XExuxY4QKbq3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 23:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 457734032E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 23:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643843863; x=1675379863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WhMZrKHBjUN0mNfFIZbzZpLhk1Fd8uRIN/b8hmLMTO0=;
 b=ilQgk4E0sL+V4QJCaOsHO8qQ8pEqZt1IetqmraoxRVOXW2DeaaAiYL2G
 NYRX3ipWpKjRsPIdAUo5JDOmtPSrG1XsCX6AKJzzI4DqPiSADS0/s5B5A
 PPcAGZs+FlBeC39CeCktNzgGIvlOhMnveH+h4a8CZPts+ZgvIRh4ucFM2
 3Hjv2VYevrgND+WRU8dCxE8Du448im629ZY2i0m0MK/pdIPcqiuFspRMU
 i4k6Fd+miu+EJsDblWjSxfPjoUaofQQhUph11ydyM8iwngZz4dQ9YeyZL
 lPjJzDVKgzyjYosOVG1itsZsvs6f43NzLN83SWAId1Mksy81YfRq8tF/+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="246872127"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="246872127"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 15:17:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="483036274"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 02 Feb 2022 15:17:42 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 15:17:41 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 15:17:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 15:17:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 15:17:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D57JO/OH7dCd960DHKAC/ElhsBNOuyCMHqMltfoHfrDRC53LmTVNJUQNSDpE0V9matvrnKD2wWmtr8h1L8OLAHvTZQzs6u4ESUF/28vRX1l7hEQvr2QmA7EohsNlYlcOp1gL9CuGQZkymFhbaEFmy5RIa/qwsLxvL4RmrK4djhrtVvySeA1kgwmcIClRNNON6fvIvWWyMnbZ+iHnJMYSBmplo8YVW9A8bpBInZc3KFuQ+MG3O3kz7tEK5bn5Vrrhgcgl5prvtwEYXo5793iZCooYaUg08EStMxa94WsSouOWYKMZX7JtuhMR3W/w6qlbzw/FrwTyQLD4wcA4IRuxYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dDl0hFxIIPNU8FRkNawn6oeQSMH1PPpZRF0SMip8+Zc=;
 b=WTzih+Lj/2mObrMwNa7nS/gt26J9IzKBmF5wl9bsqjsB50ST4nDDi/hoY5hn2wufb+fS16c7I2EM4oHXfhyZGedj1WkfuhNXzSfDA/cVFOw1IyivXS1ZmG7CMis/cEG/peTxW8WisDHyQt0gMnfuSv1HkuJ0CbjtZKyLfb8Hi0N7TD4dsPodWrgTfkOsqTeqYptg4i//m7BRiQEG+Og72GIoqFW32HaTUaGGCyxPKWDeYtGuDGCMQCH94Ri5kZywy1pNG0PA3ra8NjCKpYKN5Vs9WtbBDdo2gL8sJuEQlfbM6MxoMUOT1TquCxJV6DZh/z68KUd8lVa2s6ZRFXSI+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by DM5PR11MB1435.namprd11.prod.outlook.com (2603:10b6:4:7::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.18; Wed, 2 Feb 2022 23:17:37 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 23:17:37 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 08/19] iecm: add interrupts
 and configure netdev
Thread-Index: AQHYE97U1vBXoySwpUazvctOePLPMKx4b+SAgAh7cQA=
Date: Wed, 2 Feb 2022 23:17:37 +0000
Message-ID: <CO1PR11MB5186871FE0AD93739C834B3D8F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-9-alan.brady@intel.com>
 <20220128133447.22242-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128133447.22242-1-alexandr.lobakin@intel.com>
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
x-ms-office365-filtering-correlation-id: d308322b-f2df-49e4-d8dd-08d9e6a233bb
x-ms-traffictypediagnostic: DM5PR11MB1435:EE_
x-microsoft-antispam-prvs: <DM5PR11MB143544CBFDBEAD12AF4A6A818F279@DM5PR11MB1435.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:457;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i1HNM+PnTHpvfsOUxgQU7BvteMtlFD/UNY3ZXliNYzCJ57OhwIpsSV76Vt6vHG1WvkttrZkk+2Rdv9nguEIAuRdUrVb6j2A2KwqYuUZLHm5onRqtIbb3xNyth64olah431XBNhWyEDvSs15Cv6PxKKmiHLSRusC359t5rO2gmgG6PIYNwMDrWeUMv2O4SgvWC011Zoxsb+byQ+NBd6asb4G/3Q9Zbm7OxGBehuRouLdYrLW+GNydODVfaxiCQt2w+IHaEiRqmG7uevyky03Ukk6qfhnNnq17Dl72OVvsG+31zVhUbQV7ZTv6VaCskFrx1FEKV8h6+0tdMG0LF+/N/sQjeLQx9/W3qL1bo+r3R1Fp4ll/kXmoG2mcsEvJ5VVundmYvTFyjKQf1miWTzrXmhkeqJLRelisz8mGKki1XNLnmdhHjYPXyPeHqTnk3xDzMo0USPOitOLwod4MT7E3Jea+4Z4ywVcKfWEZG7spXN/3Zuqu4mk61T36DVSwVJ4QrhZLN0Q5SAvMLQDqyhRMUP/pAdgJfpMb5EZzIcD8SHR0iOBkveXyD/pCeLZ0qvi3g+CsFRufq6zSda+nOF+Q9WyZQnhx55OTEilGs+VucY+L+yNr3TZwADQSpdFv13X/DB/zAPIT4lsw3YMJTUIFEvGIug2suJDR37asgeHk8+xUjDexo9yWg4LnD8c344WaT4jRigMissyyaw0SMaDcnQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(54906003)(83380400001)(30864003)(82960400001)(38100700002)(52536014)(6636002)(86362001)(508600001)(6506007)(53546011)(7696005)(64756008)(66946007)(38070700005)(6862004)(66446008)(55016003)(71200400001)(2906002)(186003)(66476007)(122000001)(33656002)(66556008)(8936002)(76116006)(4326008)(316002)(107886003)(8676002)(26005)(9686003)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z7t0RKVoj9s7vbhWM1XSFytyk+c1cITM4C9R3hphQjb/ElfV5/ZScOSwEk4r?=
 =?us-ascii?Q?MNppXIwPU0aTQnS1srLyAMRvL4zqTt2ZqeixvYmcA6wkXQ/2pqgqu9ek7bYu?=
 =?us-ascii?Q?ba68AGhx5atCFT3jwJf5BcaejEA5v6/ch9/0Gljb4VT4aaA+MNo+rWPCAqV4?=
 =?us-ascii?Q?Bnf7EV0GlAo7T/r67Dx/OjSepTK4v1zpBhJohdRZ+2KgeSGyYlEB2R07Ogwc?=
 =?us-ascii?Q?LSxdWFdLNrQZOEDyOLqTBrWVIth3oXisDKe/UjdVQjBx08osOIFO6Zlxj2+3?=
 =?us-ascii?Q?Z6FJMqhlHQx68cc2LjAxEQvzEJZhZHrIytDp1Qjbytn6RbdWOSSo+Gd6hLtE?=
 =?us-ascii?Q?5Mi0sMcbYkKuM9MvEWaoU+DYm16/KFQKvfp8tSrCKdSandtyv1P75NeIv+kN?=
 =?us-ascii?Q?aBodrD1mzpB0/TiH0LZOMkQ8XZjIvUDQPJFp9X6yIOgBjIMej3L5I0vIhwe6?=
 =?us-ascii?Q?qHbTtdkqqoi9eyEA43DO5d947BjZEUu/ce2EBe3zq8z/Crq83VmXAmkRVuFM?=
 =?us-ascii?Q?w4ahbXP2NLr+ufkJcUAwI8BxZxpHYtsi3XMkf0GcK9kneeDIIyBn1ASx6b5r?=
 =?us-ascii?Q?TJOsbiDI73GtKZ0Pxc1zQ+vcDvwaN6IwOdiQlhjRIvGEviACujdsuFZRWiTu?=
 =?us-ascii?Q?TR9d0ugY1WYKiC7pzV+qrwfYcp4b42q4AHxIzWf6FIu7FtENlBeYWTymzejO?=
 =?us-ascii?Q?/zaVV5eHXvMSix/St3qxjDVZVEUY4+zKSj7uN43N0WcovTHzuH3pVzZNDivs?=
 =?us-ascii?Q?R2ObQEQFAsUZIO8WdnKDSJYwThUWG4Oj4mdYa2rD2NjPM5hND5Jbo1w+aiK/?=
 =?us-ascii?Q?ALf0dr3FaBAT6UE0Dv9fSDVb+ugVx9vqCyijfH3WMXj0/2k8jqNIiNJauI2x?=
 =?us-ascii?Q?PpMX82zg5Dt89D3rdxrjRCyjsj5eznHBKj7pz5DzIs7Kt4y+Sq3+Hm+Z9Ba1?=
 =?us-ascii?Q?gzQz+08qDbuz3EzW8CrTlbiPg0HKMBWIb5E/YvY+RAbkIob2sB5RIwcX2ifi?=
 =?us-ascii?Q?oY7lbxRtkWotK5LOhaasKo5Hek3rGXOdLluoWlnMoZFuttlHhbl3CoVXsrUk?=
 =?us-ascii?Q?TkdDUiYfl2sVla/CvumddnSYX2VGMRdpMP+2DcZjwY76obalVm5i4UsNDM01?=
 =?us-ascii?Q?vcEc8ADZSTDCuTLpETuoUGRFk/zOz0rQNhecIX/638MkSuMygJKpgOh08zKe?=
 =?us-ascii?Q?6dUBPyjGMgtZ6+MaTMes6krxaIsa5s6tyKrKPwCQlhtJ07bcRnpWZq+L5Wxe?=
 =?us-ascii?Q?S/P6c0AdU79UuemLIedhYTMUzWPpWvQU5X7bx0FeHfATGmLCtnaO33UekI9z?=
 =?us-ascii?Q?3hMsK4W58uknX4GCuJx1xwATaL5l0aHITz/OkIx1YumevX/FRtLR7UBjcNLq?=
 =?us-ascii?Q?xBtC5GgdYlgv8AXG5nwlmoOChtSjfT7ZWvzBrmSwMhi34gXw7Ll/2WFbGz5/?=
 =?us-ascii?Q?lfzqtj6F7mMySx7feq0XepV0ECHQYjat7ZubwlakruCkrmenPULIKN5Rr7aP?=
 =?us-ascii?Q?XYUrOED2vNLNVJEWIiIP6M9uf+IYYG8P8GBA3OEwdmHEYmVIVtbpfLq9ryq2?=
 =?us-ascii?Q?wrHBk5/jNuwHtILJv1YWfi7nJ6r57RPtqdrKX0U+D4mx5qkdb2WJO2pWzDlb?=
 =?us-ascii?Q?MtvfxkLfO7gNBWgdjwj4xPk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d308322b-f2df-49e4-d8dd-08d9e6a233bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 23:17:37.5737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hFHH+4uE8Tp8BTKS4eXLZUsEwOexZGBgAf1CrRns8cT7VrFCPzFk4EdFw1+Uysd/GN+LyMW6GevMZQMSEte8QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1435
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 08/19] iecm: add interrupts
 and configure netdev
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
Cc: "Chittim, Madhu" <madhu.chittim@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 5:35 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Linga, Pavan Kumar <pavan.kumar.linga@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 08/19] iecm: add interrupts and
> configure netdev
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:09:58 -0800
> 
> > This finishes implementing init_task by adding everything we need to
> > configure the netdevice for the vport and setup its interrupts.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alice Michael <alice.michael@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 813 +++++++++++++++++-
> >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |  17 +
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 165 ++++
> >  drivers/net/ethernet/intel/include/iecm.h     | 112 ++-
> >  .../net/ethernet/intel/include/iecm_txrx.h    |   2 +
> >  5 files changed, 1104 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index aab8ee40424e..255b04c25683 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -5,11 +5,35 @@
> >
> >  #include "iecm.h"
> >
> > +static const struct net_device_ops iecm_netdev_ops_splitq; static
> > +const struct net_device_ops iecm_netdev_ops_singleq;
> > +
> >  const char * const iecm_vport_vc_state_str[] = {
> >  	IECM_FOREACH_VPORT_VC_STATE(IECM_GEN_STRING)
> >  };
> >  EXPORT_SYMBOL(iecm_vport_vc_state_str);
> >
> > +/**
> > + * iecm_get_vport_index - Get the vport index
> > + * @adapter: adapter structure to get the vports array
> > + * @vport: vport pointer for which the index to find  */ static int
> > +iecm_get_vport_index(struct iecm_adapter *adapter,
> > +				struct iecm_vport *vport)
> > +{
> > +	int i, err = -EINVAL;
> > +
> > +	if (!adapter->vports)
> > +		return err;
> > +
> > +	for (i = 0; i < adapter->num_alloc_vport; i++) {
> > +		if (adapter->vports[i] != vport)
> > +			continue;
> > +		return i;
> > +	}
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_is_feature_ena - Determine if a particular feature is enabled
> >   * @vport: vport to check
> > @@ -29,6 +53,595 @@ bool iecm_is_feature_ena(struct iecm_vport *vport,
> netdev_features_t feature)
> >  	return ena;
> >  }
> >
> > +/**
> > + * iecm_is_vlan_cap_ena - Check if VLAN capability is enabled
> > + * @adapter: pointer to adapter
> > + * @vcaps: VLAN capability bit
> > + *
> > + * Returns true if VLAN capability is set, false otherwise  */ static
> > +bool iecm_is_vlan_cap_ena(struct iecm_adapter *adapter,
> > +				 enum iecm_vlan_caps vcaps)
> > +{
> > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_VLAN)) {
> > +		struct virtchnl_vlan_supported_caps *offload;
> > +
> > +		if (!adapter->vlan_caps)
> > +			return false;
> > +
> > +		switch (vcaps) {
> > +		case IECM_CAP_VLAN_CTAG_INSERT:
> > +			offload =
> > +			&adapter->vlan_caps->offloads.insertion_support;
> > +			if ((offload->outer & IECM_VLAN_8100) ==
> IECM_VLAN_8100 ||
> > +			    (offload->inner & IECM_VLAN_8100) ==
> IECM_VLAN_8100)
> > +				return true;
> > +			break;
> > +		case IECM_CAP_VLAN_STAG_INSERT:
> > +			offload =
> > +			&adapter->vlan_caps->offloads.insertion_support;
> > +			if ((offload->outer & IECM_VLAN_88A8) ==
> IECM_VLAN_88A8)
> > +				return true;
> > +			break;
> > +		case IECM_CAP_VLAN_CTAG_STRIP:
> > +			offload =
> > +			&adapter->vlan_caps->offloads.stripping_support;
> > +			if ((offload->outer & IECM_VLAN_8100) ==
> IECM_VLAN_8100 ||
> > +			    (offload->inner & IECM_VLAN_8100) ==
> IECM_VLAN_8100)
> > +				return true;
> > +			break;
> > +		case IECM_CAP_VLAN_STAG_STRIP:
> > +			offload =
> > +			&adapter->vlan_caps->offloads.stripping_support;
> > +			if ((offload->outer & IECM_VLAN_88A8) ==
> IECM_VLAN_88A8)
> > +				return true;
> > +			break;
> > +		case IECM_CAP_VLAN_CTAG_ADD_DEL:
> > +			offload =
> > +			&adapter->vlan_caps->filtering.filtering_support;
> > +			if ((offload->outer &
> VIRTCHNL_VLAN_ETHERTYPE_8100) ||
> > +			    (offload->inner &
> VIRTCHNL_VLAN_ETHERTYPE_8100))
> > +				return true;
> > +			break;
> > +		case IECM_CAP_VLAN_STAG_ADD_DEL:
> > +			offload =
> > +			&adapter->vlan_caps->filtering.filtering_support;
> > +			if ((offload->outer &
> VIRTCHNL_VLAN_ETHERTYPE_88A8) ||
> > +			    (offload->inner &
> VIRTCHNL_VLAN_ETHERTYPE_88A8))
> > +				return true;
> > +			break;
> > +		default:
> > +			dev_err(&adapter->pdev->dev, "Invalid VLAN capability
> %d\n",
> > +				vcaps);
> > +			return false;
> > +		}
> > +	} else if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> > +				   VIRTCHNL2_CAP_VLAN)) {
> > +		switch (vcaps) {
> > +		case IECM_CAP_VLAN_CTAG_INSERT:
> > +		case IECM_CAP_VLAN_CTAG_STRIP:
> > +		case IECM_CAP_VLAN_CTAG_ADD_DEL:
> > +			return true;
> > +		default:
> > +			return false;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +/**
> > + * iecm_netdev_to_vport - get a vport handle from a netdev
> > + * @netdev: network interface device structure  */ struct iecm_vport
> > +*iecm_netdev_to_vport(struct net_device *netdev) {
> > +	struct iecm_netdev_priv *np = netdev_priv(netdev);
> > +
> > +	return np->vport;
> > +}
> > +
> > +/**
> > + * iecm_mb_intr_rel_irq - Free the IRQ association with the OS
> > + * @adapter: adapter structure
> > + */
> > +static void iecm_mb_intr_rel_irq(struct iecm_adapter *adapter) {
> > +	int irq_num;
> > +
> > +	irq_num = adapter->msix_entries[0].vector;
> > +	free_irq(irq_num, adapter);
> > +}
> > +
> > +/**
> > + * iecm_intr_rel - Release interrupt capabilities and free memory
> > + * @adapter: adapter to disable interrupts on  */ static void
> > +iecm_intr_rel(struct iecm_adapter *adapter) {
> > +	if (!adapter->msix_entries)
> > +		return;
> > +	clear_bit(__IECM_MB_INTR_MODE, adapter->flags);
> > +	clear_bit(__IECM_MB_INTR_TRIGGER, adapter->flags);
> > +	iecm_mb_intr_rel_irq(adapter);
> > +
> > +	pci_free_irq_vectors(adapter->pdev);
> > +	if (adapter->dev_ops.vc_ops.dealloc_vectors) {
> > +		int err;
> > +
> > +		err = adapter->dev_ops.vc_ops.dealloc_vectors(adapter);
> > +		if (err) {
> > +			dev_err(&adapter->pdev->dev,
> > +				"Failed to deallocate vectors: %d\n", err);
> > +		}
> > +	}
> > +	kfree(adapter->msix_entries);
> > +	adapter->msix_entries = NULL;
> > +	kfree(adapter->req_vec_chunks);
> > +	adapter->req_vec_chunks = NULL;
> > +}
> > +
> > +/**
> > + * iecm_mb_intr_clean - Interrupt handler for the mailbox
> > + * @irq: interrupt number
> > + * @data: pointer to the adapter structure  */ static irqreturn_t
> > +iecm_mb_intr_clean(int __always_unused irq, void *data) {
> > +	struct iecm_adapter *adapter = (struct iecm_adapter *)data;
> > +
> > +	set_bit(__IECM_MB_INTR_TRIGGER, adapter->flags);
> > +	queue_delayed_work(adapter->serv_wq, &adapter->serv_task,
> > +			   msecs_to_jiffies(0));
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +/**
> > + * iecm_mb_irq_enable - Enable MSIX interrupt for the mailbox
> > + * @adapter: adapter to get the hardware address for register write
> > +*/ static void iecm_mb_irq_enable(struct iecm_adapter *adapter) {
> > +	struct iecm_hw *hw = &adapter->hw;
> > +	struct iecm_intr_reg *intr = &adapter->mb_vector.intr_reg;
> 
> Please don't break Reverse Christmas Tree declaration style. *intr doesn't
> depend on *hw.
> 

Will fix

> > +	u32 val;
> > +
> > +	val = intr->dyn_ctl_intena_m | intr->dyn_ctl_itridx_m;
> > +	wr32(hw, intr->dyn_ctl, val);
> > +	wr32(hw, intr->icr_ena, intr->icr_ena_ctlq_m); }
> > +
> > +/**
> > + * iecm_mb_intr_req_irq - Request irq for the mailbox interrupt
> > + * @adapter: adapter structure to pass to the mailbox irq handler  */
> > +static int iecm_mb_intr_req_irq(struct iecm_adapter *adapter) {
> > +	struct iecm_q_vector *mb_vector = &adapter->mb_vector;
> > +	int irq_num, mb_vidx = 0, err;
> > +
> > +	irq_num = adapter->msix_entries[mb_vidx].vector;
> > +	snprintf(mb_vector->name, sizeof(mb_vector->name) - 1,
> > +		 "%s-%s-%d", dev_driver_string(&adapter->pdev->dev),
> > +		 "Mailbox", mb_vidx);
> > +	err = request_irq(irq_num, adapter->irq_mb_handler, 0,
> > +			  mb_vector->name, adapter);
> > +	if (err) {
> > +		dev_err(&adapter->pdev->dev,
> > +			"Request_irq for mailbox failed, error: %d\n", err);
> > +		return err;
> > +	}
> > +	set_bit(__IECM_MB_INTR_MODE, adapter->flags);
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_get_mb_vec_id - Get vector index for mailbox
> > + * @adapter: adapter structure to access the vector chunks
> > + *
> > + * The first vector id in the requested vector chunks from the CP is
> > +for
> > + * the mailbox
> > + */
> > +static void iecm_get_mb_vec_id(struct iecm_adapter *adapter) {
> > +	if (adapter->req_vec_chunks) {
> > +		struct virtchnl2_get_capabilities *caps;
> > +
> > +		caps = (struct virtchnl2_get_capabilities *)adapter->caps;
> > +		adapter->mb_vector.v_idx = le16_to_cpu(caps-
> >mailbox_vector_id);
> > +	} else {
> > +		adapter->mb_vector.v_idx = 0;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_mb_intr_init - Initialize the mailbox interrupt
> > + * @adapter: adapter structure to store the mailbox vector  */ static
> > +int iecm_mb_intr_init(struct iecm_adapter *adapter) {
> > +	adapter->dev_ops.reg_ops.mb_intr_reg_init(adapter);
> > +	adapter->irq_mb_handler = iecm_mb_intr_clean;
> > +	return iecm_mb_intr_req_irq(adapter); }
> > +
> > +/**
> > + * iecm_intr_distribute - Distribute MSIX vectors
> > + * @adapter: adapter structure to get the vports
> > + * @pre_req: before or after msi request
> > + *
> > + * Distribute the MSIX vectors acquired from the OS to the vports
> > +based on the
> > + * num of vectors requested by each vport  */ static int
> > +iecm_intr_distribute(struct iecm_adapter *adapter, bool pre_req) {
> > +	struct iecm_vport *vport = adapter->vports[0];
> > +	int err = 0;
> > +
> > +	if (pre_req) {
> > +		u16 vecs_avail;
> > +
> > +		vecs_avail = iecm_get_reserved_vecs(adapter);
> > +		if (vecs_avail < IECM_MIN_VEC) {
> > +			return -EAGAIN;
> > +		} else if (vecs_avail == IECM_MIN_VEC) {
> > +			vport->num_q_vectors = IECM_MIN_Q_VEC;
> > +		} else {
> > +			vport->num_q_vectors = vecs_avail - IECM_NONQ_VEC
> -
> > +						IECM_MAX_RDMA_VEC;
> > +		}
> > +	} else {
> > +		if (adapter->num_msix_entries != adapter->num_req_msix)
> > +			vport->num_q_vectors = adapter->num_msix_entries -
> > +					       IECM_NONQ_VEC;
> > +	}
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_intr_req - Request interrupt capabilities
> > + * @adapter: adapter to enable interrupts on
> > + *
> > + * Returns 0 on success, negative on failure  */ static int
> > +iecm_intr_req(struct iecm_adapter *adapter) {
> > +	int min_vectors, max_vectors, err = 0;
> > +	int num_q_vecs, total_num_vecs;
> > +	u16 vecids[IECM_MAX_VECIDS];
> > +	unsigned int vector;
> > +	int v_actual;
> > +
> > +	err = iecm_intr_distribute(adapter, true);
> > +	if (err)
> > +		return err;
> > +
> > +	num_q_vecs = adapter->vports[0]->num_q_vectors;
> > +
> > +	total_num_vecs = num_q_vecs + IECM_NONQ_VEC;
> > +
> > +	if (adapter->dev_ops.vc_ops.alloc_vectors) {
> > +		err = adapter->dev_ops.vc_ops.alloc_vectors(adapter,
> > +							    num_q_vecs);
> > +		if (err) {
> > +			dev_err(&adapter->pdev->dev,
> > +				"Failed to allocate vectors: %d\n", err);
> > +			return -EAGAIN;
> > +		}
> > +	}
> > +
> > +	min_vectors = IECM_MIN_VEC;
> > +	max_vectors = total_num_vecs;
> > +	v_actual = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
> > +					 max_vectors, PCI_IRQ_MSIX);
> > +	if (v_actual < 0) {
> > +		dev_err(&adapter->pdev->dev, "Failed to allocate MSIX vectors:
> %d\n",
> > +			v_actual);
> > +		if (adapter->dev_ops.vc_ops.dealloc_vectors)
> > +			adapter->dev_ops.vc_ops.dealloc_vectors(adapter);
> > +		return -EAGAIN;
> > +	}
> > +
> > +	adapter->msix_entries = kcalloc(v_actual, sizeof(struct msix_entry),
> > +					GFP_KERNEL);
> > +
> > +	if (!adapter->msix_entries) {
> > +		pci_free_irq_vectors(adapter->pdev);
> > +		if (adapter->dev_ops.vc_ops.dealloc_vectors)
> > +			adapter->dev_ops.vc_ops.dealloc_vectors(adapter);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	iecm_get_mb_vec_id(adapter);
> > +
> > +	if (adapter->req_vec_chunks) {
> > +		struct virtchnl2_vector_chunks *vchunks;
> > +		struct virtchnl2_alloc_vectors *ac;
> > +
> > +		ac = adapter->req_vec_chunks;
> > +		vchunks = &ac->vchunks;
> > +
> > +		iecm_get_vec_ids(adapter, vecids, IECM_MAX_VECIDS,
> vchunks);
> > +	} else {
> > +		int i = 0;
> > +
> > +		for (i = 0; i < v_actual; i++)
> > +			vecids[i] = i;
> > +	}
> > +
> > +	for (vector = 0; vector < v_actual; vector++) {
> > +		adapter->msix_entries[vector].entry = vecids[vector];
> > +		adapter->msix_entries[vector].vector =
> > +			pci_irq_vector(adapter->pdev, vector);
> > +	}
> > +	adapter->num_msix_entries = v_actual;
> > +	adapter->num_req_msix = total_num_vecs;
> > +
> > +	iecm_intr_distribute(adapter, false);
> > +
> > +	err = iecm_mb_intr_init(adapter);
> > +	if (err)
> > +		goto intr_rel;
> > +	iecm_mb_irq_enable(adapter);
> > +	return err;
> > +
> > +intr_rel:
> > +	iecm_intr_rel(adapter);
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_find_mac_filter - Search filter list for specific mac filter
> > + * @vport: main vport structure
> > + * @macaddr: the MAC address
> > + *
> > + * Returns ptr to the filter object or NULL. Must be called while
> > +holding the
> > + * mac_filter_list_lock.
> > + **/
> > +static struct
> > +iecm_mac_filter *iecm_find_mac_filter(struct iecm_vport *vport,
> > +				      const u8 *macaddr)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_mac_filter *f;
> > +
> > +	if (!macaddr)
> > +		return NULL;
> > +
> > +	list_for_each_entry(f, &adapter->config_data.mac_filter_list, list) {
> > +		if (ether_addr_equal(macaddr, f->macaddr))
> > +			return f;
> > +	}
> 
> Excessive braces again.
> 

Will not fix.

> > +	return NULL;
> > +}
> > +
> > +/**
> > + * __iecm_add_mac_filter - Add mac filter helper function
> > + * @vport: main vport struct
> > + * @macaddr: address to add
> > + *
> > + * Takes mac_filter_list_lock spinlock to add new filter to list.
> > + */
> > +static struct
> > +iecm_mac_filter *__iecm_add_mac_filter(struct iecm_vport *vport,
> > +				       const u8 *macaddr)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_mac_filter *f = NULL;
> > +
> > +	spin_lock_bh(&adapter->mac_filter_list_lock);
> > +	f = iecm_find_mac_filter(vport, macaddr);
> > +	if (!f) {
> > +		f = kzalloc(sizeof(*f), GFP_ATOMIC);
> > +		if (!f) {
> > +			dev_err(&adapter->pdev->dev, "Failed to allocate filter:
> %pM",
> > +				macaddr);
> > +			goto error;
> > +		}
> > +
> > +		ether_addr_copy(f->macaddr, macaddr);
> > +
> > +		list_add_tail(&f->list, &adapter->config_data.mac_filter_list);
> > +		f->add = true;
> > +	} else {
> > +		f->remove = false;
> > +	}
> 
> 	if (f) {
> 		f->remove = false;
> 		goto error; /* It's better to rename it */
> 	}
> 
> 	f = kzalloc(...
> 
> -1 indent level.

Will fix

> > +error:
> > +	spin_unlock_bh(&adapter->mac_filter_list_lock);
> > +
> > +	return f;
> > +}
> > +
> > +/**
> > + * iecm_add_mac_filter - Add a mac filter to the filter list
> > + * @vport: main vport structure
> > + * @macaddr: the MAC address
> > + *
> > + * Returns ptr to the filter or NULL on error. If interface is up,
> > +we'll also
> > + * send the virtchnl message to tell hardware about the filter.
> > + **/
> > +static struct iecm_mac_filter *iecm_add_mac_filter(struct iecm_vport
> *vport,
> > +						   const u8 *macaddr)
> > +{
> > +	struct iecm_mac_filter *f;
> > +
> > +	if (!macaddr)
> > +		return NULL;
> > +
> > +	f = __iecm_add_mac_filter(vport, macaddr);
> > +	if (!f)
> > +		return NULL;
> > +
> > +	if (vport->adapter->state == __IECM_UP)
> > +		iecm_add_del_ether_addrs(vport, true, false);
> > +
> > +	return f;
> > +}
> > +
> > +/**
> > + * iecm_init_mac_addr - initialize mac address for vport
> > + * @vport: main vport structure
> > + * @netdev: pointer to netdev struct associated with this vport  */
> > +static int iecm_init_mac_addr(struct iecm_vport *vport,
> > +			      struct net_device *netdev)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +
> > +	if (!is_valid_ether_addr(vport->default_mac_addr)) {
> > +		if (!iecm_is_cap_ena(vport->adapter, IECM_OTHER_CAPS,
> > +				     VIRTCHNL2_CAP_MACFILTER)) {
> > +			dev_err(&adapter->pdev->dev,
> > +				"MAC address not provided and capability is not
> set\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		dev_info(&adapter->pdev->dev, "Invalid MAC address %pM,
> using random\n",
> > +			 vport->default_mac_addr);
> > +		eth_hw_addr_random(netdev);
> > +
> > +		if (!iecm_add_mac_filter(vport, netdev->dev_addr))
> > +			return -ENOMEM;
> > +
> > +		ether_addr_copy(vport->default_mac_addr, netdev-
> >dev_addr);
> > +	} else {
> > +		dev_addr_mod(netdev, 0, vport->default_mac_addr,
> ETH_ALEN);
> > +		ether_addr_copy(netdev->perm_addr, vport-
> >default_mac_addr);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_cfg_netdev - Allocate, configure and register a netdev
> > + * @vport: main vport structure
> > + *
> > + * Returns 0 on success, negative value on failure.
> > + */
> > +static int iecm_cfg_netdev(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	netdev_features_t dflt_features;
> > +	netdev_features_t offloads = 0;
> > +	struct iecm_netdev_priv *np;
> > +	struct net_device *netdev;
> > +	u16 max_q;
> > +	int err;
> > +
> > +	lockdep_assert_held(&adapter->sw_mutex);
> > +
> > +	/* It's possible we already have a netdev allocated and registered for
> > +	 * this vport
> > +	 */
> > +	if (adapter->netdevs[vport->idx]) {
> > +		netdev = adapter->netdevs[vport->idx];
> > +		np = netdev_priv(netdev);
> > +		np->vport = vport;
> > +		vport->netdev = netdev;
> > +
> > +		return iecm_init_mac_addr(vport, netdev);
> > +	}
> > +
> > +	max_q = adapter->max_queue_limit;
> > +
> > +	netdev = alloc_etherdev_mqs(sizeof(struct iecm_netdev_priv),
> > +				    max_q, max_q);
> > +	if (!netdev)
> > +		return -ENOMEM;
> > +	vport->netdev = netdev;
> > +	np = netdev_priv(netdev);
> > +	np->vport = vport;
> > +
> > +	err = iecm_init_mac_addr(vport, netdev);
> > +	if (err)
> > +		goto err;
> > +
> > +	/* assign netdev_ops */
> > +	if (iecm_is_queue_model_split(vport->txq_model))
> > +		netdev->netdev_ops = &iecm_netdev_ops_splitq;
> > +	else
> > +		netdev->netdev_ops = &iecm_netdev_ops_singleq;
> > +
> > +	/* setup watchdog timeout value to be 5 second */
> > +	netdev->watchdog_timeo = 5 * HZ;
> > +
> > +	/* configure default MTU size */
> > +	netdev->min_mtu = ETH_MIN_MTU;
> > +	netdev->max_mtu = vport->max_mtu;
> > +
> > +	dflt_features = NETIF_F_SG	|
> > +			NETIF_F_HIGHDMA;
> > +
> > +	if (iecm_is_cap_ena_all(adapter, IECM_RSS_CAPS, IECM_CAP_RSS))
> > +		dflt_features |= NETIF_F_RXHASH;
> > +	if (iecm_is_cap_ena_all(adapter, IECM_CSUM_CAPS,
> IECM_CAP_RX_CSUM_L4V4))
> > +		dflt_features |= NETIF_F_IP_CSUM;
> > +	if (iecm_is_cap_ena_all(adapter, IECM_CSUM_CAPS,
> IECM_CAP_RX_CSUM_L4V6))
> > +		dflt_features |= NETIF_F_IPV6_CSUM;
> > +	if (iecm_is_cap_ena(adapter, IECM_CSUM_CAPS,
> IECM_CAP_RX_CSUM))
> > +		dflt_features |= NETIF_F_RXCSUM;
> > +	if (iecm_is_cap_ena_all(adapter, IECM_CSUM_CAPS,
> IECM_CAP_SCTP_CSUM))
> > +		dflt_features |= NETIF_F_SCTP_CRC;
> > +
> > +	if (iecm_is_vlan_cap_ena(adapter, IECM_CAP_VLAN_CTAG_INSERT))
> > +		dflt_features |= IECM_F_HW_VLAN_CTAG_TX;
> > +	if (iecm_is_vlan_cap_ena(adapter, IECM_CAP_VLAN_CTAG_STRIP))
> > +		dflt_features |= IECM_F_HW_VLAN_CTAG_RX;
> > +	if (iecm_is_vlan_cap_ena(adapter, IECM_CAP_VLAN_CTAG_ADD_DEL))
> > +		dflt_features |= IECM_F_HW_VLAN_CTAG_FILTER;
> > +
> > +	if (iecm_is_vlan_cap_ena(adapter, IECM_CAP_VLAN_STAG_INSERT))
> > +		dflt_features |= NETIF_F_HW_VLAN_STAG_TX;
> > +	if (iecm_is_vlan_cap_ena(adapter, IECM_CAP_VLAN_STAG_STRIP))
> > +		dflt_features |= NETIF_F_HW_VLAN_STAG_RX;
> > +	if (iecm_is_vlan_cap_ena(adapter, IECM_CAP_VLAN_STAG_ADD_DEL))
> > +		dflt_features |= NETIF_F_HW_VLAN_STAG_FILTER;
> > +	/* Enable cloud filter if ADQ is supported */
> > +	if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS, VIRTCHNL2_CAP_ADQ)
> ||
> > +	    iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADQ))
> > +		dflt_features |= NETIF_F_HW_TC;
> > +	if (iecm_is_cap_ena(adapter, IECM_SEG_CAPS,
> VIRTCHNL2_CAP_SEG_IPV4_TCP))
> > +		dflt_features |= NETIF_F_TSO;
> > +	if (iecm_is_cap_ena(adapter, IECM_SEG_CAPS,
> VIRTCHNL2_CAP_SEG_IPV6_TCP))
> > +		dflt_features |= NETIF_F_TSO6;
> > +	if (iecm_is_cap_ena_all(adapter, IECM_SEG_CAPS,
> > +				VIRTCHNL2_CAP_SEG_IPV4_UDP |
> > +				VIRTCHNL2_CAP_SEG_IPV6_UDP))
> > +		dflt_features |= NETIF_F_GSO_UDP_L4;
> > +	if (iecm_is_cap_ena_all(adapter, IECM_RSC_CAPS, IECM_CAP_RSC))
> > +		offloads |= NETIF_F_GRO_HW;
> 
> I see `offloads` being used only here, |= -> =.
> 

It makes it easier to add others in future or if some happen to get stripped in/out in the future it makes the code more resilient.  We prefer to keep it this way.

> > +	netdev->features |= dflt_features;
> > +	netdev->hw_features |= dflt_features | offloads;
> > +	netdev->hw_enc_features |= dflt_features | offloads;
> > +
> > +	SET_NETDEV_DEV(netdev, &adapter->pdev->dev);
> > +
> > +	/* carrier off on init to avoid Tx hangs */
> > +	netif_carrier_off(netdev);
> > +
> > +	/* make sure transmit queues start off as stopped */
> > +	netif_tx_stop_all_queues(netdev);
> > +
> > +	/* register last */
> > +	err = register_netdev(netdev);
> > +	if (err)
> > +		goto err;
> > +
> > +	/* The vport can be arbitrarily released so we need to also track
> > +	 * netdevs in the adapter struct
> > +	 */
> > +	adapter->netdevs[vport->idx] = netdev;
> > +
> > +	return 0;
> > +err:
> > +	free_netdev(vport->netdev);
> > +	vport->netdev = NULL;
> > +
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_cfg_hw - Initialize HW struct
> >   * @adapter: adapter to setup hw struct for @@ -77,6 +690,24 @@
> > static int iecm_get_free_slot(void *array, int size, int curr)
> >  	return next;
> >  }
> >
> > +/**
> > + * iecm_decfg_netdev - Unregister the netdev
> > + * @vport: vport for which netdev to be unregistred  */ static void
> > +iecm_decfg_netdev(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +
> > +	if (!vport->netdev)
> > +		return;
> > +
> > +	unregister_netdev(vport->netdev);
> > +	free_netdev(vport->netdev);
> > +	vport->netdev = NULL;
> > +
> > +	adapter->netdevs[vport->idx] = NULL; }
> > +
> >  /**
> >   * iecm_vport_rel - Delete a vport and free its resources
> >   * @vport: the vport being removed
> > @@ -102,6 +733,8 @@ static void iecm_vport_rel_all(struct iecm_adapter
> *adapter)
> >  		if (!adapter->vports[i])
> >  			continue;
> >
> > +		if (!test_bit(__IECM_HR_RESET_IN_PROG, adapter->flags))
> > +			iecm_decfg_netdev(adapter->vports[i]);
> >  		iecm_vport_rel(adapter->vports[i]);
> >  		adapter->vports[i] = NULL;
> >  		adapter->next_vport = 0;
> > @@ -151,7 +784,7 @@ iecm_vport_alloc(struct iecm_adapter *adapter, int
> vport_id)
> >  	adapter->num_alloc_vport++;
> >
> >  	/* Setup default MSIX irq handler for the vport */
> > -	vport->irq_q_handler = NULL;
> > +	vport->irq_q_handler = iecm_vport_intr_clean_queues;
> >  	vport->q_vector_base = IECM_NONQ_VEC;
> >
> >  	mutex_init(&vport->stop_mutex);
> > @@ -184,8 +817,94 @@ static void iecm_statistics_task(struct work_struct
> *work)
> >   *
> >   */
> >  static void iecm_service_task(struct work_struct *work)
> > +{
> > +	struct iecm_adapter *adapter = container_of(work,
> > +						    struct iecm_adapter,
> > +						    serv_task.work);
> 
> 	struct iecm_adapter *adapter;
> 
> 	adapter = container_of(work, typeof(*adapter), serv_task.work);
> 
> Same line count, but more elegant with no line wraps.
> 

Will fix

> > +
> > +	if (test_bit(__IECM_MB_INTR_MODE, adapter->flags)) {
> > +		if (test_and_clear_bit(__IECM_MB_INTR_TRIGGER,
> > +				       adapter->flags)) {
> > +			iecm_recv_mb_msg(adapter,
> VIRTCHNL_OP_UNKNOWN, NULL, 0);
> > +			iecm_mb_irq_enable(adapter);
> > +		}
> > +	} else {
> > +		iecm_recv_mb_msg(adapter, VIRTCHNL_OP_UNKNOWN,
> NULL, 0);
> > +	}
> > +
> > +	if (iecm_is_reset_detected(adapter) &&
> > +	    !iecm_is_reset_in_prog(adapter)) {
> > +		dev_info(&adapter->pdev->dev, "HW reset detected\n");
> > +		set_bit(__IECM_HR_FUNC_RESET, adapter->flags);
> > +		queue_delayed_work(adapter->vc_event_wq,
> > +				   &adapter->vc_event_task,
> > +				   msecs_to_jiffies(10));
> > +	}
> > +
> > +	queue_delayed_work(adapter->serv_wq, &adapter->serv_task,
> > +			   msecs_to_jiffies(300));
> > +}
> > +
> > +/* iecm_set_vlan_offload_features - set vlan offload features
> > + * @netdev: netdev structure
> > + * @prev_features: previously set features
> > + * @features: current features received from user
> > + *
> > + * Returns 0 on success, error value on failure  */ static int
> > +iecm_set_vlan_offload_features(struct net_device *netdev,
> > +			       netdev_features_t prev_features,
> > +			       netdev_features_t features) {
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	bool stripping_ena = true, insertion_ena = true;
> > +	struct iecm_virtchnl_ops *vc_ops;
> > +	u16 vlan_ethertype = 0;
> > +
> > +	vc_ops = &vport->adapter->dev_ops.vc_ops;
> > +	/* keep cases separate because one ethertype for offloads can be
> > +	 * disabled at the same time as another is disabled, so check for an
> > +	 * enabled ethertype first, then check for disabled. Default to
> > +	 * ETH_P_8021Q so an ethertype is specified if disabling insertion
> > +	 * and stripping.
> > +	 */
> > +	if (features & (NETIF_F_HW_VLAN_STAG_RX |
> NETIF_F_HW_VLAN_STAG_TX))
> > +		vlan_ethertype = ETH_P_8021AD;
> > +	else if (features & (NETIF_F_HW_VLAN_CTAG_RX |
> NETIF_F_HW_VLAN_CTAG_TX))
> > +		vlan_ethertype = ETH_P_8021Q;
> > +	else if (prev_features & (NETIF_F_HW_VLAN_STAG_RX |
> > +				  NETIF_F_HW_VLAN_STAG_TX))
> > +		vlan_ethertype = ETH_P_8021AD;
> > +	else if (prev_features & (NETIF_F_HW_VLAN_CTAG_RX |
> > +				  NETIF_F_HW_VLAN_CTAG_TX))
> > +		vlan_ethertype = ETH_P_8021Q;
> > +	else
> > +		vlan_ethertype = ETH_P_8021Q;
> > +
> > +	if (!(features & (NETIF_F_HW_VLAN_STAG_RX |
> NETIF_F_HW_VLAN_CTAG_RX)))
> > +		stripping_ena = false;
> > +	if (!(features & (NETIF_F_HW_VLAN_STAG_TX |
> NETIF_F_HW_VLAN_CTAG_TX)))
> > +		insertion_ena = false;
> > +
> > +	vport->adapter->config_data.vlan_ethertype = vlan_ethertype;
> > +
> > +	vc_ops->strip_vlan_msg(vport, stripping_ena);
> > +	if (vc_ops->insert_vlan_msg)
> > +		vc_ops->insert_vlan_msg(vport, insertion_ena);
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_vport_open - Bring up a vport
> > + * @vport: vport to bring up
> > + * @alloc_res: allocate queue resources  */ static int
> > +iecm_vport_open(struct iecm_vport *vport, bool alloc_res)
> >  {
> >  	/* stub */
> > +	return 0;
> >  }
> >
> >  /**
> > @@ -206,6 +925,7 @@ static void iecm_init_task(struct work_struct *work)
> >  	struct iecm_vport *vport;
> >  	struct pci_dev *pdev;
> >  	int vport_id, err;
> > +	int index;
> >
> >  	err = adapter->dev_ops.vc_ops.core_init(adapter, &vport_id);
> >  	if (err)
> > @@ -219,6 +939,65 @@ static void iecm_init_task(struct work_struct *work)
> >  			err);
> >  		return;
> >  	}
> > +	/* Start the service task before requesting vectors. This will ensure
> > +	 * vector information response from mailbox is handled
> > +	 */
> > +	queue_delayed_work(adapter->serv_wq, &adapter->serv_task,
> > +			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
> > +	err = iecm_intr_req(adapter);
> > +	if (err) {
> > +		dev_err(&pdev->dev, "failed to enable interrupt vectors: %d\n",
> > +			err);
> > +		goto intr_req_err;
> > +	}
> > +	err = iecm_send_vlan_v2_caps_msg(adapter);
> > +	if (err)
> > +		goto vlan_v2_caps_failed;
> > +
> > +	err = adapter->dev_ops.vc_ops.get_supported_desc_ids(vport);
> > +	if (err) {
> > +		dev_err(&pdev->dev, "failed to get required descriptor ids\n");
> > +		goto rxdids_failed;
> > +	}
> > +
> > +	if (iecm_cfg_netdev(vport))
> > +		goto cfg_netdev_err;
> > +
> > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_VLAN) ||
> > +	    iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> VIRTCHNL2_CAP_VLAN)) {
> > +		err = iecm_set_vlan_offload_features(vport->netdev, 0,
> > +						     vport->netdev->features);
> > +		if (err)
> > +			goto cfg_netdev_err;
> > +	}
> > +
> > +	err = adapter->dev_ops.vc_ops.get_ptype(vport);
> > +	if (err)
> > +		goto cfg_netdev_err;
> > +	queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
> > +			   msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
> > +	set_bit(__IECM_VPORT_INIT_PROMISC, vport->flags);
> > +	/* Once state is put into DOWN, driver is ready for dev_open */
> > +	adapter->state = __IECM_DOWN;
> > +	if (test_and_clear_bit(__IECM_UP_REQUESTED, adapter->flags))
> > +		iecm_vport_open(vport, true);
> > +
> > +	/* Clear the reset flag unconditionally here in case we were in reset
> > +	 * and the link was down
> > +	 */
> > +	clear_bit(__IECM_HR_RESET_IN_PROG, vport->adapter->flags);
> > +
> > +	return;
> > +
> > +vlan_v2_caps_failed:
> > +rxdids_failed:
> > +cfg_netdev_err:
> 
> No reason to declare 3 labels at the same point.
> 

Will fix.

> > +	iecm_intr_rel(adapter);
> > +intr_req_err:
> > +	index = iecm_get_vport_index(adapter, vport);
> > +	if (index >= 0)
> > +		adapter->vports[index] = NULL;
> > +	iecm_vport_rel(vport);
> >  }
> >
> >  /**
> > @@ -614,3 +1393,35 @@ void iecm_free_dma_mem(struct iecm_hw *hw,
> struct iecm_dma_mem *mem)
> >  	mem->va = NULL;
> >  	mem->pa = 0;
> >  }
> > +
> > +static const struct net_device_ops iecm_netdev_ops_splitq = {
> > +	.ndo_open = NULL,
> > +	.ndo_stop = NULL,
> > +	.ndo_start_xmit = NULL,
> > +	.ndo_set_rx_mode = NULL,
> > +	.ndo_validate_addr = eth_validate_addr,
> 
> eth_validate_addr() (or ether_addr_valid()) gets run by default when no
> .ndo_validate_addr is specified. It's redundant to declare it here.
> 

Will fix

> > +	.ndo_set_mac_address = NULL,
> > +	.ndo_change_mtu = NULL,
> > +	.ndo_get_stats64 = NULL,
> > +	.ndo_fix_features = NULL,
> > +	.ndo_set_features = NULL,
> > +	.ndo_vlan_rx_add_vid = NULL,
> > +	.ndo_vlan_rx_kill_vid = NULL,
> > +	.ndo_setup_tc = NULL,
> 
> Non-initialized members get zeroed by default, NULLing them is excessive.
> 

The next patches will add these, they're placeholders. I left it like that because as you read the patches you can know what functions are there yet (as well as a checklist for myself as made the patches).

> > +};
> > +
> > +static const struct net_device_ops iecm_netdev_ops_singleq = {
> > +	.ndo_open = NULL,
> > +	.ndo_stop = NULL,
> > +	.ndo_start_xmit = NULL,
> > +	.ndo_set_rx_mode = NULL,
> > +	.ndo_validate_addr = eth_validate_addr,
> > +	.ndo_set_mac_address = NULL,
> > +	.ndo_change_mtu = NULL,
> > +	.ndo_get_stats64 = NULL,
> > +	.ndo_fix_features = NULL,
> > +	.ndo_set_features = NULL,
> > +	.ndo_vlan_rx_add_vid = NULL,
> > +	.ndo_vlan_rx_kill_vid = NULL,
> > +	.ndo_setup_tc           = NULL,
> 
> Same 2 previous points.
> 
> .ndo_setup_tc assignment indentation is weird. Either align all the initializers
> with tabs or don't align at all (both are valid cases).
> 
> > +};
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > index bd0cfd89bf03..bb7f5830cffb 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > @@ -218,6 +218,23 @@ const struct iecm_rx_ptype_decoded
> > iecm_ptype_lookup[IECM_RX_MAX_PTYPE] = {  };
> > EXPORT_SYMBOL(iecm_ptype_lookup);
> >
> > +/**
> > + * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler
> > + * @irq: interrupt number
> > + * @data: pointer to a q_vector
> > + *
> > + */
> > +irqreturn_t
> > +iecm_vport_intr_clean_queues(int __always_unused irq, void *data) {
> > +	struct iecm_q_vector *q_vector = (struct iecm_q_vector *)data;
> > +
> > +	q_vector->total_events++;
> > +	napi_schedule(&q_vector->napi);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> >  /**
> >   * iecm_vport_init_num_qs - Initialize number of queues
> >   * @vport: vport to initialize queues diff --git
> > a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > index c4ae56897d1b..b91716aeef6f 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > @@ -2731,6 +2731,45 @@ static int iecm_send_insert_vlan_msg(struct
> iecm_vport *vport, bool ena)
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_send_vlan_v2_caps_msg - send virtchnl get offload VLAN V2
> > +caps message
> > + * @adapter: adapter info struct
> > + *
> > + * Returns 0 on success and if VLAN V1 capability is set`, negative on failure.
> > + */
> > +int iecm_send_vlan_v2_caps_msg(struct iecm_adapter *adapter) {
> > +	int err = 0;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_VLAN))
> > +		return err;
> > +
> > +	err = iecm_send_mb_msg(adapter,
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
> > +			       0, NULL);
> > +	if (err)
> > +		return err;
> > +
> > +	err = iecm_min_wait_for_event(adapter,
> IECM_VC_OFFLOAD_VLAN_V2_CAPS,
> > +				      IECM_VC_OFFLOAD_VLAN_V2_CAPS_ERR);
> > +
> > +	if (err) {
> > +		dev_err(&adapter->pdev->dev, "Failed to recv get caps");
> > +		return err;
> > +	}
> > +
> > +	if (!adapter->vlan_caps) {
> > +		adapter->vlan_caps =
> > +		  kzalloc(sizeof(*adapter->vlan_caps), GFP_KERNEL);
> > +		if (!adapter->vlan_caps)
> > +			return -ENOMEM;
> > +	}
> > +
> > +	memcpy(adapter->vlan_caps,
> > +	       adapter->vc_msg, sizeof(*adapter->vlan_caps));
> > +
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_fill_ptype_lookup - Fill L3 specific fields in ptype lookup table
> >   * @ptype: ptype lookup table
> > @@ -3580,6 +3619,132 @@ static unsigned int iecm_get_max_tx_bufs(struct
> iecm_adapter *adapter)
> >  	return ((struct virtchnl2_get_capabilities
> > *)adapter->caps)->max_sg_bufs_per_tx_pkt;
> >  }
> >
> > +/**
> > + * iecm_add_del_ether_addrs
> > + * @vport: virtual port data structure
> > + * @add: Add or delete flag
> > + * @async: Don't wait for return message
> > + *
> > + * Request that the PF add or delete one or more addresses to our filters.
> > + **/
> > +void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add,
> > +bool async) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl_ether_addr_list *veal = NULL;
> > +	int num_entries, num_msgs, total_filters = 0;
> > +	struct pci_dev *pdev = adapter->pdev;
> > +	enum iecm_vport_vc_state vc, vc_err;
> > +	struct virtchnl_ether_addr *eal;
> > +	struct iecm_mac_filter *f, *tmp;
> > +	int i = 0, k = 0, err = 0;
> > +	enum virtchnl_ops vop;
> > +
> > +	spin_lock_bh(&adapter->mac_filter_list_lock);
> > +
> > +	/* Find the number of newly added filters */
> > +	list_for_each_entry(f, &adapter->config_data.mac_filter_list, list) {
> > +		if (add && f->add)
> > +			total_filters++;
> > +		else if (!add && f->remove)
> > +			total_filters++;
> > +	}
> > +	if (!total_filters) {
> > +		spin_unlock_bh(&adapter->mac_filter_list_lock);
> > +		goto error;
> > +	}
> > +
> > +	/* Fill all the new filters into virtchannel message */
> > +	eal = kcalloc(total_filters, sizeof(struct virtchnl_ether_addr),
> > +		      GFP_ATOMIC);
> > +	if (!eal) {
> > +		err = -ENOMEM;
> > +		spin_unlock_bh(&adapter->mac_filter_list_lock);
> > +		goto error;
> > +	}
> > +	list_for_each_entry_safe(f, tmp, &adapter->config_data.mac_filter_list,
> > +				 list) {
> > +		if (add && f->add) {
> > +			ether_addr_copy(eal[i].addr, f->macaddr);
> > +			i++;
> > +			f->add = false;
> > +			if (i == total_filters)
> > +				break;
> > +		}
> > +		if (!add && f->remove) {
> > +			ether_addr_copy(eal[i].addr, f->macaddr);
> > +			i++;
> > +			list_del(&f->list);
> > +			kfree(f);
> > +			if (i == total_filters)
> > +				break;
> > +		}
> > +	}
> > +
> > +	spin_unlock_bh(&adapter->mac_filter_list_lock);
> > +
> > +	/* Chunk up the filters into multiple messages to avoid
> > +	 * sending a control queue message buffer that is too large
> > +	 */
> > +	if (total_filters < IECM_NUM_FILTERS_PER_MSG)
> > +		num_entries = total_filters;
> > +	else
> > +		num_entries = IECM_NUM_FILTERS_PER_MSG;
> > +
> > +	num_msgs = DIV_ROUND_UP(total_filters,
> IECM_NUM_FILTERS_PER_MSG);
> > +
> > +	for (i = 0, k = 0; i < num_msgs || num_entries; i++) {
> > +		int buf_size = sizeof(struct virtchnl_ether_addr_list) +
> > +			(sizeof(struct virtchnl_ether_addr) * num_entries);
> > +		if (!veal || num_entries != IECM_NUM_FILTERS_PER_MSG) {
> > +			kfree(veal);
> > +			veal = kzalloc(buf_size, GFP_KERNEL);
> > +			if (!veal) {
> > +				err = -ENOMEM;
> > +				goto list_prep_error;
> > +			}
> > +		} else {
> > +			memset(veal, 0, buf_size);
> > +		}
> > +
> > +		veal->vsi_id = vport->vport_id;
> > +		veal->num_elements = num_entries;
> > +		memcpy(veal->list, &eal[k],
> > +		       sizeof(struct virtchnl_ether_addr) * num_entries);
> > +
> > +		if (add) {
> > +			vop = VIRTCHNL_OP_ADD_ETH_ADDR;
> > +			vc = IECM_VC_ADD_ETH_ADDR;
> > +			vc_err = IECM_VC_ADD_ETH_ADDR_ERR;
> > +		} else  {
> > +			vop = VIRTCHNL_OP_DEL_ETH_ADDR;
> > +			vc = IECM_VC_DEL_ETH_ADDR;
> > +			vc_err = IECM_VC_DEL_ETH_ADDR_ERR;
> > +		}
> > +		err = iecm_send_mb_msg(vport->adapter, vop, buf_size,
> > +				       (u8 *)veal);
> > +		if (err)
> > +			goto mbx_error;
> > +
> > +		if (!async) {
> > +			err = iecm_wait_for_event(vport->adapter, vc, vc_err);
> > +			if (err)
> > +				goto mbx_error;
> > +		}
> > +
> > +		k += num_entries;
> > +		total_filters -= num_entries;
> > +		if (total_filters < IECM_NUM_FILTERS_PER_MSG)
> > +			num_entries = total_filters;
> > +	}
> > +mbx_error:
> > +	kfree(veal);
> > +list_prep_error:
> > +	kfree(eal);
> > +error:
> > +	if (err)
> > +		dev_err(&pdev->dev, "Failed to add or del mac filters %d", err);
> }
> > +
> >  /**
> >   * iecm_add_del_vlans - Add or delete vlan filter
> >   * @vport: vport structure
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> > b/drivers/net/ethernet/intel/include/iecm.h
> > index d736db65da06..b5bd73be2855 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -33,6 +33,11 @@
> >  #define IECM_MB_MAX_ERR			20
> >  #define IECM_NUM_CHUNKS_PER_MSG(a, b)	((IECM_DFLT_MBX_BUF_SIZE -
> (a)) / (b))
> >
> > +/* 2K is the real maximum, but the driver should not be using more
> > +than the
> > + * below limit
> > + */
> > +#define IECM_MAX_VECIDS			256
> > +
> >  #define IECM_MAX_NUM_VPORTS		1
> >
> >  /* available message levels */
> > @@ -135,6 +140,10 @@ enum iecm_cap_field {
> >  	IECM_CAP_FIELD_LAST,
> >  };
> >
> > +struct iecm_netdev_priv {
> > +	struct iecm_vport *vport;
> > +};
> > +
> >  struct iecm_reset_reg {
> >  	u32 rstat;
> >  	u32 rstat_m;
> > @@ -450,6 +459,8 @@ struct iecm_adapter {
> >  	struct msix_entry *msix_entries;
> >  	struct virtchnl2_alloc_vectors *req_vec_chunks;
> >  	struct iecm_q_vector mb_vector;
> > +	/* handler for hard interrupt for mailbox*/
> > +	irqreturn_t (*irq_mb_handler)(int irq, void *data);
> >
> >  	/* vport structs */
> >  	struct iecm_vport **vports;	/* vports created by the driver */
> > @@ -537,12 +548,88 @@ static inline bool __iecm_is_cap_ena(struct
> iecm_adapter *adapter, bool all,
> >  	return adapter->dev_ops.vc_ops.is_cap_ena(adapter, all, field,
> > flag);  }
> >
> > -#define IECM_CAP_HSPLIT (\
> > -	VIRTCHNL2_CAP_RX_HSPLIT_AT_L2   |\
> > -	VIRTCHNL2_CAP_RX_HSPLIT_AT_L3   |\
> > -	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4 |\
> > +/* enum used to distinguish vlan capabilities */ enum iecm_vlan_caps
> > +{
> > +	IECM_CAP_VLAN_CTAG_INSERT,
> > +	IECM_CAP_VLAN_STAG_INSERT,
> > +	IECM_CAP_VLAN_CTAG_STRIP,
> > +	IECM_CAP_VLAN_STAG_STRIP,
> > +	IECM_CAP_VLAN_CTAG_ADD_DEL,
> > +	IECM_CAP_VLAN_STAG_ADD_DEL,
> > +	IECM_CAP_VLAN_LAST,
> > +};
> > +
> > +#define IECM_VLAN_8100 (VIRTCHNL_VLAN_TOGGLE |
> > +VIRTCHNL_VLAN_ETHERTYPE_8100) #define IECM_VLAN_88A8
> > +(VIRTCHNL_VLAN_TOGGLE | VIRTCHNL_VLAN_ETHERTYPE_88A8)
> > +
> > +#define IECM_F_HW_VLAN_CTAG_TX NETIF_F_HW_VLAN_CTAG_TX
> > +
> > +#define IECM_F_HW_VLAN_CTAG_RX NETIF_F_HW_VLAN_CTAG_RX
> > +
> > +#define IECM_F_HW_VLAN_CTAG_FILTER NETIF_F_HW_VLAN_CTAG_FILTER
> > +
> > +#define IECM_CAP_RSS (\
> > +	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV4_UDP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV4_SCTP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV4_OTHER	|\
> > +	VIRTCHNL2_CAP_RSS_IPV4_AH	|\
> > +	VIRTCHNL2_CAP_RSS_IPV4_ESP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV4_AH_ESP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_UDP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_SCTP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_OTHER	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_AH	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_ESP	|\
> > +	VIRTCHNL2_CAP_RSS_IPV6_AH_ESP)
> > +
> > +#define IECM_CAP_RSC (\
> > +	VIRTCHNL2_CAP_RSC_IPV4_TCP	|\
> > +	VIRTCHNL2_CAP_RSC_IPV4_SCTP	|\
> > +	VIRTCHNL2_CAP_RSC_IPV6_TCP	|\
> > +	VIRTCHNL2_CAP_RSC_IPV6_SCTP)
> > +
> > +#define IECM_CAP_HSPLIT	(\
> > +	VIRTCHNL2_CAP_RX_HSPLIT_AT_L2	|\
> > +	VIRTCHNL2_CAP_RX_HSPLIT_AT_L3	|\
> > +	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4	|\
> >  	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6)
> >
> > +#define IECM_CAP_RX_CSUM_L4V4 (\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP)
> > +
> > +#define IECM_CAP_RX_CSUM_L4V6 (\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP)
> > +
> > +#define IECM_CAP_RX_CSUM (\
> > +	VIRTCHNL2_CAP_RX_CSUM_L3_IPV4		|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP)
> > +
> > +#define IECM_CAP_SCTP_CSUM (\
> > +	VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	|\
> > +	VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|\
> > +	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP)
> > +
> > +/**
> > + * iecm_get_reserved_vecs - Get reserved vectors
> > + * @adapter: private data struct
> > + */
> > +static inline u16 iecm_get_reserved_vecs(struct iecm_adapter
> > +*adapter) {
> > +	return adapter->dev_ops.vc_ops.get_reserved_vecs(adapter);
> > +}
> > +
> >  /**
> >   * iecm_is_reset_detected - check if we were reset at some point
> >   * @adapter: driver specific private structure @@ -555,6 +642,20 @@
> > static inline bool iecm_is_reset_detected(struct iecm_adapter *adapter)
> >  		 adapter->hw.arq->reg.len_ena_mask);
> >  }
> >
> > +/**
> > + * iecm_is_reset_in_prog - check if reset is in progress
> > + * @adapter: driver specific private structure
> > + *
> > + * Returns true if hard reset is in progress, false otherwise  */
> > +static inline bool iecm_is_reset_in_prog(struct iecm_adapter
> > +*adapter) {
> > +	return (test_bit(__IECM_HR_RESET_IN_PROG, adapter->flags) ||
> > +		test_bit(__IECM_HR_FUNC_RESET, adapter->flags) ||
> > +		test_bit(__IECM_HR_CORE_RESET, adapter->flags) ||
> > +		test_bit(__IECM_HR_DRV_LOAD, adapter->flags)); }
> > +
> >  int iecm_probe(struct pci_dev *pdev,
> >  	       const struct pci_device_id __always_unused *ent,
> >  	       struct iecm_adapter *adapter); @@ -576,6 +677,7 @@ int
> > iecm_send_get_caps_msg(struct iecm_adapter *adapter);  int
> > iecm_send_delete_queues_msg(struct iecm_vport *vport);  int
> > iecm_send_add_queues_msg(struct iecm_vport *vport, u16 num_tx_q,
> >  			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
> > +int iecm_send_vlan_v2_caps_msg(struct iecm_adapter *adapter);
> >  int iecm_send_config_tx_queues_msg(struct iecm_vport *vport);  int
> > iecm_send_config_rx_queues_msg(struct iecm_vport *vport);  int
> > iecm_send_enable_vport_msg(struct iecm_vport *vport); @@ -589,6 +691,7
> > @@ int iecm_send_dealloc_vectors_msg(struct iecm_adapter *adapter);
> > int iecm_send_alloc_vectors_msg(struct iecm_adapter *adapter, u16
> > num_vectors);  int iecm_vport_params_buf_alloc(struct iecm_adapter
> > *adapter);  void iecm_vport_params_buf_rel(struct iecm_adapter
> > *adapter);
> > +struct iecm_vport *iecm_netdev_to_vport(struct net_device *netdev);
> >  int iecm_send_get_stats_msg(struct iecm_vport *vport);  int
> > iecm_get_vec_ids(struct iecm_adapter *adapter,
> >  		     u16 *vecids, int num_vecids,
> > @@ -598,6 +701,7 @@ int iecm_recv_mb_msg(struct iecm_adapter *adapter,
> > enum virtchnl_ops op,  int iecm_send_mb_msg(struct iecm_adapter *adapter,
> enum virtchnl_ops op,
> >  		     u16 msg_size, u8 *msg);
> >  void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);
> > +void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add,
> > +bool async);
> >  int iecm_send_enable_channels_msg(struct iecm_vport *vport);  int
> > iecm_send_disable_channels_msg(struct iecm_vport *vport);  bool
> > iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t
> > feature); diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h
> > b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > index 9f3086bfe575..0aa1eac70e7c 100644
> > --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> > +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > @@ -512,4 +512,6 @@ void iecm_vport_calc_total_qs(struct iecm_adapter
> *adapter,
> >  			      struct virtchnl2_create_vport *vport_msg);  void
> > iecm_vport_calc_num_q_groups(struct iecm_vport *vport);  void
> > iecm_vport_calc_num_q_vec(struct iecm_vport *vport);
> > +irqreturn_t
> > +iecm_vport_intr_clean_queues(int __always_unused irq, void *data);
> >  #endif /* !_IECM_TXRX_H_ */
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
