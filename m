Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 893D4565402
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 13:45:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C8DE4157E;
	Mon,  4 Jul 2022 11:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C8DE4157E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656935146;
	bh=bW8lWFDPpCSmmQ1RpOIygFFMnK+Byqesvc04ieqZeA8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fzLZCBWYQyiAQ8Hrf1jj1IkH0pxLIY9ja1wgww2AZRm9pxnwfqem19ZWqnV02OvwV
	 4oU2vWmZYuZbh+mFFhifGP/gr3xNeNhqq5DF6GfcPJqT9vQq39hHdASQwpLdxo7B1j
	 wshMT6PNXcXPWGYsLvU/RXxyKfBU1MkytqGbCRHorSrJL2FvFCqx32oY7sSaVJKMO7
	 z7oMUqqQsHIPEpgEMXaeeN13YLziRl0EHk860Kn+g25bz2xYzz36sVpRhrWBQodbJ5
	 ww5vjud3OqpDg9GU78NFkDCHTUZQMCGnV4ukjSVZa6NL1kQv5EJzUY88/sQ9ct0E5i
	 3D/7PO7DuD7dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avGj58Upzb0I; Mon,  4 Jul 2022 11:45:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A00964157C;
	Mon,  4 Jul 2022 11:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A00964157C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 628D61BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A12F40592
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:45:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A12F40592
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ScVo0YvHeTyL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 11:45:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35EE440587
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35EE440587
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:45:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="266134490"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="266134490"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 04:45:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="619253008"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 04 Jul 2022 04:45:37 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 04:45:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Jul 2022 04:45:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Jul 2022 04:45:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b40ufXhuxp6piFJjDZuKQLMicuSInPJWvJpC6x4C36QQ8gBiSuHXu52NQl+ODdmWVgZ5cE7l48E4Kb0icOMvXVZBn6l4NplCV5Bkiayby0bUfjqBWW9yTN8DyKHPVhN/pf3UiBN6cuhW76VVb1cwU5HxnaKbO4w7UqP8w96nbT8Sj3tM6EiLqrJrnpViR+QRNH2buy+lR5RoZFZk3agIPlf30V+rfQY82zyhGE0Wa/RYGjZ0bQnz6cze+kkEeQwf4zLlLNrDOh/+F8dVOhH1nsLBXdUk8QuTOeyc0SE2VpyMQGCUhONia8/kiueio2NELujWvgQjfPgtCUD+RQdtLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9JyZaH2PTYc2T/RlCSJc+5eK3LY3ECnQPWPphprLtrE=;
 b=NJxJpPUXv9E5JJyTVqeCjwwCEViFNm7gyJyNZWd1J+nPoVwRsLuGNFCVVnoTVpu6h0hSP0yE1bhrw288Gs9ZLiakwmBaVFtM3BP/FwPMs1UWkn3LH2rkgoNiwmos9KEbSuQ2s4kbRRbXa+d4ujOF4qXEWKUfuY13ge6LQEbHzW0UheM58xQhVbnczqeEt0W0mGd7TuNAuQg0EVWCDPCUCx2v/1v76QyytXgJ+q1kt1o3teMJPE9OhRKsLXiLpd87jNupwFQtmmtKb5NQ3j+gpUDLmBb5CVPtxZ0IKLIJ3h+q3dQWoQrb4J9TEWf8OqQKI3ggPcQVTR3sC0anVxLBGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by BN6PR11MB1588.namprd11.prod.outlook.com (2603:10b6:405:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Mon, 4 Jul
 2022 11:45:35 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5395.020; Mon, 4 Jul 2022
 11:45:35 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/3] iavf: Fix reset error
 handling
Thread-Index: AQHYgLNVIYS2leo0jkC7m0pl8wDkOa1uNarA
Date: Mon, 4 Jul 2022 11:45:35 +0000
Message-ID: <CY4PR11MB162483AAFA6F4C294A2EB959E6BE9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220615122704.27073-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220615122704.27073-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba58dda5-eab0-4411-aea6-08da5db2b538
x-ms-traffictypediagnostic: BN6PR11MB1588:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l1OuHeyf3AR7HO1Py5GPlq24lYc0gM7CvayYvdsRGIzndiLRsESxt3hUSspk4lcW5D7nJ2siPefqXIpPC4rCTI4CP/Vv4gfiAkymdqUs683gWLOnlrA2t2TLeka1cz3EscbX7PfxRq6m3CI8ac05gvptVUcyYOh0+0Pkg3eg426Q7lFTaqL+/wuGZuam/WHLgHAzEfrVQelP1sf1/5he1+B7nltlpzRxmFrV4obtAr4kh4CLMbBENzFRhWJzNov5QlBOZHKZ40nKz7q++uoiAxCCovajvUqBBf3TD1sJrKonXx73c67W3lcNRiDHWjhp3RqiMKH0Nb5Vuvumw6R6g96F+9ZkJKNdYY3EAafY1VQQaaT5MIPAoaM7gXeXsPEJNCN1eId8dTm4+Z2qbP9ElZBK0TXGaQajtZ377Eq4AfkNOCmXakVGSmaBT3abT2mPZYITUny9u/u1Nc0qv9SmpEDPIzHleAxFCSJFDOGE7ZGszMKmzY49raQgah8dL5/Xq0VdIK8MElZah9VFSmeKVdcy5Dy56y1ZeAi0GihLOEZL4Iwm7B2DvaIo4CoVnQHJwdrbMSwePu97Br4a/D7ll/Vx08EYmZUDCMNwGwI3PACycoEug0ur35G4ys7LtNqnomXuv8k5KF5SQ8UwVBfKBSNp/JMpwMoQ2jlFyFnVVCsmC7vuQU0SdEXCdJzzhr0ZhkQARd7/d3YJJIPfzMt5yb1JAkwnoS1IrcVPyoYQ+SzSk08MNTlytnGGl1zVBTsRLtWoP9rT60t35/9I4D6D2Sx9AB3Wi1Z7MUrqR7jl1m6s2LHfRYD0wXAvnzsMGexW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(396003)(366004)(376002)(136003)(478600001)(5660300002)(52536014)(8936002)(122000001)(82960400001)(110136005)(38070700005)(33656002)(316002)(86362001)(76116006)(71200400001)(66946007)(4326008)(66476007)(8676002)(64756008)(66446008)(66556008)(7696005)(83380400001)(107886003)(186003)(9686003)(26005)(53546011)(38100700002)(6506007)(41300700001)(2906002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?7wHzqS3WrXHrW5G/l99I1PqT5Zyyb656UD1VpPwEXbrBmkARsmt72bkFLu?=
 =?iso-8859-2?Q?1bYikelilGLcTjzTxfvHQf30+O7++vZjte0W84IqzH6b0ZvQqcHUVTENyh?=
 =?iso-8859-2?Q?kLxNZAX8Ou2AWaFLSRB385q9oaWn6scrt5KoCsXuHZ9O1gS4eln54Ts+Xq?=
 =?iso-8859-2?Q?yo/TN3k5EvqEKZGQeV5CvMIu3SkJZKexYLysJMM0LUCE9CtHO1iy1kbhnR?=
 =?iso-8859-2?Q?UAR6MMPj31y6jHlpfLWIiYktxtjSOFONsIDhPmwrk3ZA+O0rVa3pBRf49r?=
 =?iso-8859-2?Q?z+WM4rjK8mexwMG70NWnilnQhSS55fLb8OOzaz9jq9x53lLH91kGgvvfH4?=
 =?iso-8859-2?Q?ckA8JlIY1/YqpUsj6zxoPkH9QktBrfnoVTjAmhJOlmh0fyVGIZtKpcrBzm?=
 =?iso-8859-2?Q?bwJxMZqn+Nt/IzM+AKcJcuEiCbxbMa1qE3Yed2JtzcunGYxcXzfaZ123vC?=
 =?iso-8859-2?Q?fA0nz6EpwI6Pm1y4Y+Y2nuhWbHplObVvaqVu9ahLq1PbhQVVj8TTQ/yDot?=
 =?iso-8859-2?Q?Q7SfS3sL+UeEjYPKIMnEuRRX3OWaRQZK2fl3Fz2176YVpHi/D4Jol+pT1s?=
 =?iso-8859-2?Q?1AbZZChTqGI4QGK/wR2ccY+JMrqD0Zu2hEjWs97ThzKFChOzCeSisUqQa0?=
 =?iso-8859-2?Q?yi7RUbZq4GNoqh/ODwhikL+vCVmpgYhay+ac35EL2D/J2aBTh609wppMRQ?=
 =?iso-8859-2?Q?zmk61gbeWxzAwJNpxNW83SQuIuTx8am4G6JUzhNURdj7IL8oFAnitjMfxi?=
 =?iso-8859-2?Q?48C33qoKTKBxiTl/2EiSxHdzlRLrBi1zOQWfGnDWWKy/pZJRW8mY4/ESS8?=
 =?iso-8859-2?Q?QznkzRPONPHAAfXKpoScrFHqSF57Dj9iC8xuABHwHAQuV5pLWODtemjWBE?=
 =?iso-8859-2?Q?aQsOTz+TVHQcI9b3DknyuL6fyeKXQCQXug46mujRq+M31Lu5n3GOnuYMQB?=
 =?iso-8859-2?Q?B5SDN/SXAMhB/8Wc6EYBN1AQNoxTHgXxMJBntrJNhdAuru3EpxkDBLP5B3?=
 =?iso-8859-2?Q?4zKkZnOSkk2E2/z6rlPg0+gsvT9xOpL6vSYqtE+nzHeOhDYcNk1GZEpUGt?=
 =?iso-8859-2?Q?KF3krNj6+bonVuixLYYf1x7F6V0vgPBhJHfO6xDJVZX+D9ps0z0ks0yR4P?=
 =?iso-8859-2?Q?+nwFWOvMkUpS7+2NdTFAiYJuBQiz7L8QlyZM30KUx+Og8JuBOKNHS7HBg+?=
 =?iso-8859-2?Q?6OPYHeIcaSADgrzZIgvB0OFpcbsspce5vwphHYTjteLe4ukdGmfaVof6dm?=
 =?iso-8859-2?Q?FLH8Ud6y2G2c1y/20ICEND6nsmrYT0p5QPrcy8cLT64DG+BrXx81ac4skH?=
 =?iso-8859-2?Q?s63HEZuYUNN8FUO/SjJ/jLOfA+Ij0g+97j1I2E4Z+ZEheFxbUhOWH/rg0+?=
 =?iso-8859-2?Q?kYJ5KYAczbPhoydPj+J0NbiSmWiZ1A7aBSME7G/FGdbPRW1RxhfhA+ppIo?=
 =?iso-8859-2?Q?w2UDM9k5tvUpsWvoRzCgVz4KTl56O4MUitknt7xMjcRl5NWyBrA4WhsVib?=
 =?iso-8859-2?Q?q2lvSsHe97mxmTp8dUAkb49JuU6PgIyda8jt269arXvZ3aIZiOuabBjfXt?=
 =?iso-8859-2?Q?m3Sg3/yPLLG1+RlEKvadJYZqfY/17aEYFIWdmc9nOLHNwp+JP3R26qRAm7?=
 =?iso-8859-2?Q?YUdSwARvj3aPFAFoElmYCutcQ1kxv4k4QQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba58dda5-eab0-4411-aea6-08da5db2b538
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2022 11:45:35.1674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MnlG++hoZg5gPsPM/YvqAfB4OUoplUSGom2Ry/tfDMVBi2zkqfC/7OeDJO842+CH64ZJ/q/Ww9e6AwkWkt95bA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1588
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656935138; x=1688471138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FwZzf4R9NDmSZNeoR5mUVTIORL8LUYxl9Lu36YlXp6w=;
 b=WcoQ063kwnrxQvo2fLhbcLO+UqNFU2ZvyNzUZnNoTCj6rHIQc5wo0GfI
 nsDzs4rCSs8fFC+ddl948Ambfx5ONVpMGYVGHI+5S4g5uC6u8n1UBP13A
 2VDale2YOW/2DkwxB8OJxC9HJmw7sX7hkPzpbH6rh/reCEqgdcT5LTKCg
 0hiJdOfRn698XUDtpFtye7kaQ+t1yrFgUx967ueSVKj3z3pj4S9T9inCy
 omniHvZoqld+43AzDlXb/ojY1EwXFmp80F1zcbPC7i94XXJOr1TNd1tuC
 YRpFf3ROqpRMGJAuEtwHM8j9VVcDZ/Ujt29kZGKV8b9ZAVTtdvmOd06ii
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WcoQ063k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/3] iavf: Fix reset error
 handling
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Pal=
czewski, Mateusz
Sent: =B6roda, 15 czerwca 2022 14:27
To: intel-wired-lan@lists.osuosl.org
Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
Subject: [Intel-wired-lan] [PATCH net v1 1/3] iavf: Fix reset error handling

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Do not call iavf_close in iavf_reset_task error handling. Doing so can lead=
 to double call of napi_disable, which can lead to deadlock there.
Removing VF would lead to iavf_remove task being stuck, because it requires=
 crit_lock, which is held by iavf_close.
Call iavf_disable_vf if reset fail, so that driver will clean up remaining =
invalid resources.
During rapid VF resets, HW can fail to setup VF mailbox. Wrong error handli=
ng can lead to iavf_remove being stuck with:
[ 5218.999087] iavf 0000:82:01.0: Failed to init adminq: -53 ...
[ 5267.189211] INFO: task repro.sh:11219 blocked for more than 30 seconds.
[ 5267.189520]       Tainted: G S          E     5.18.0-04958-ga54ce3703613=
-dirty #1
[ 5267.189764] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables =
this message.
[ 5267.190062] task:repro.sh        state:D stack:    0 pid:11219 ppid:  81=
62 flags:0x00000000
[ 5267.190347] Call Trace:
[ 5267.190647]  <TASK>
[ 5267.190927]  __schedule+0x460/0x9f0
[ 5267.191264]  schedule+0x44/0xb0
[ 5267.191563]  schedule_preempt_disabled+0x14/0x20
[ 5267.191890]  __mutex_lock.isra.12+0x6e3/0xac0 [ 5267.192237]  ? iavf_rem=
ove+0xf9/0x6c0 [iavf] [ 5267.192565]  iavf_remove+0x12a/0x6c0 [iavf] [ 5267=
.192911]  ? _raw_spin_unlock_irqrestore+0x1e/0x40
[ 5267.193285]  pci_device_remove+0x36/0xb0 [ 5267.193619]  device_release_=
driver_internal+0xc1/0x150
[ 5267.193974]  pci_stop_bus_device+0x69/0x90 [ 5267.194361]  pci_stop_and_=
remove_bus_device+0xe/0x20
[ 5267.194735]  pci_iov_remove_virtfn+0xba/0x120 [ 5267.195130]  sriov_disa=
ble+0x2f/0xe0 [ 5267.195506]  ice_free_vfs+0x7d/0x2f0 [ice] [ 5267.196056] =
 ? pci_get_device+0x4f/0x70 [ 5267.196496]  ice_sriov_configure+0x78/0x1a0 =
[ice] [ 5267.196995]  sriov_numvfs_store+0xfe/0x140 [ 5267.197466]  kernfs_=
fop_write_iter+0x12e/0x1c0 [ 5267.197918]  new_sync_write+0x10c/0x190 [ 526=
7.198404]  vfs_write+0x24e/0x2d0 [ 5267.198886]  ksys_write+0x5c/0xd0 [ 526=
7.199367]  do_syscall_64+0x3a/0x80 [ 5267.199827]  entry_SYSCALL_64_after_h=
wframe+0x46/0xb0
[ 5267.200317] RIP: 0033:0x7f5b381205c8
[ 5267.200814] RSP: 002b:00007fff8c7e8c78 EFLAGS: 00000246 ORIG_RAX: 000000=
0000000001 [ 5267.201981] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: =
00007f5b381205c8 [ 5267.202620] RDX: 0000000000000002 RSI: 00005569420ee900=
 RDI: 0000000000000001 [ 5267.203426] RBP: 00005569420ee900 R08: 0000000000=
00000a R09: 00007f5b38180820 [ 5267.204327] R10: 000000000000000a R11: 0000=
000000000246 R12: 00007f5b383c06e0 [ 5267.205193] R13: 0000000000000002 R14=
: 00007f5b383bb880 R15: 0000000000000002 [ 5267.206041]  </TASK> [ 5267.206=
970] Kernel panic - not syncing: hung_task: blocked tasks
[ 5267.207809] CPU: 48 PID: 551 Comm: khungtaskd Kdump: loaded Tainted: G S=
          E     5.18.0-04958-ga54ce3703613-dirty #1
[ 5267.208726] Hardware name: Dell Inc. PowerEdge R730/0WCJNT, BIOS 2.11.0 =
11/02/2019 [ 5267.209623] Call Trace:
[ 5267.210569]  <TASK>
[ 5267.211480]  dump_stack_lvl+0x33/0x42 [ 5267.212472]  panic+0x107/0x294 =
[ 5267.213467]  watchdog.cold.8+0xc/0xbb [ 5267.214413]  ? proc_dohung_task=
_timeout_secs+0x30/0x30
[ 5267.215511]  kthread+0xf4/0x120
[ 5267.216459]  ? kthread_complete_and_exit+0x20/0x20
[ 5267.217505]  ret_from_fork+0x22/0x30
[ 5267.218459]  </TASK>

Fixes: f0db78928783 ("i40evf: use netdev variable in reset task")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethe=
rnet/intel/iavf/iavf_main.c
index 05b01b67210d..83170fdb3eaf 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
