Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD5A3B4A96
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 00:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABD3640189;
	Fri, 25 Jun 2021 22:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJvDiQo-usNz; Fri, 25 Jun 2021 22:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B29240025;
	Fri, 25 Jun 2021 22:35:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3FBA1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CC33D60603
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mREfcaPRUlUs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 22:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC8AE605DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:35:03 +0000 (UTC)
IronPort-SDR: lUUPgqZxeqa0u0YdnsOIsU+Iy04ACXyWUniUsmIfaq29sZ/W+pQQ/g0WgdfTRt35sN8vfF8wq4
 1d+PipuDk4Ow==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="204742826"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="204742826"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 15:35:03 -0700
IronPort-SDR: lNAy18i2hXBP3zFjBtWJWgIO3WWRXH4v6G994e4PSCnHRU1AZ2fScZJ3Ub1+bIY0MHjrHNBWGJ
 d6ph/Elr7EVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="556984962"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 25 Jun 2021 15:35:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 25 Jun 2021 15:35:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 25 Jun 2021 15:35:01 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 25 Jun 2021 15:35:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDdxoxnK4nc+usP5nKXK8CyX71nHyLgHWyk5PeXVbOKsJ2NteQzHvmSSm3HKPS7hcxZZTc8GSVVfZm2RNFR+kAedEytCnUrjMyrjo5i5j1fUfjXRJHClBpKqKkbILbLC+ZCgdv/koK83ANMJxcUENcfnxAwvzHMwbVxFFt8i5N5OnN/R4uQlB8WvXf/vEQd4ZSMUn0g6M88treurVdWpr4ouurezkPDVaxJv/fK93DkPnuBdejXZJbTiREWBcPtt/23t8jJIhl1gPjfnduSSR8YikVLNKiOaoh33/hU25a+UfUwSXiXRO2857wTOnDmFf5m68vxJYVh1BePeKgcNOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6viim3sV0MzexaUrh0Nx8QXMw+lGnYQ+f+kQnPglCdQ=;
 b=CuAJ6EWVw0wZLXi+IYb4bUUhYtncmR3JHRGpMOcQgntxcbDAb7SUPVE21iA/2QjhpHA8e9d7tgWbifzYNzuVWdueweKbBIGILTFPW6U+pdAZ0/aGJMbjA3v4p4te24p8NRmffjfWRowMSUDUZ9JQGf2wC5buXcD+5Sf24KM7jomf2ID1brJ5YsPk8Hxm0hv/cQXHzP6hRwt8yJAR6N2QHsJEBpp5IhHE8SBsS2qDbs7F2kDtmg5mz6K18mN/C/h9jd7C/4hQ5JZoWs5uYF9ARxrT1oKt/Yntq6MP0EcdzKjuhlYe5iN2NfpediRIeOVltV43D5Ntr1Twawp0yg1FCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6viim3sV0MzexaUrh0Nx8QXMw+lGnYQ+f+kQnPglCdQ=;
 b=r2dE4a1qqBULFqp1kiDHpJHzS4i5/+IKXVl4JP5eERJ+2cHo1IziZnL9oKARStXkgHhuO5OOb39vuPugiIWwJF+q/sW68e/odQ/oFVFtxoa1GIEy6gwO6VKUna7FNaSP24KPZzRL3HlrC3Yhcp95H4rZ4fQ1PTDkAtDIQltPJWA=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5600.namprd11.prod.outlook.com (2603:10b6:a03:3ab::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Fri, 25 Jun
 2021 22:34:59 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.023; Fri, 25 Jun 2021
 22:34:59 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] igb: Add counter to i21x
 doublecheck
Thread-Index: AQHXPb4wjNbkB8PTy0mirJPBV6QNw6slqQ0w
Date: Fri, 25 Jun 2021 22:34:59 +0000
Message-ID: <SJ0PR11MB5662C4715123F11F95DA69F4FA069@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <1619786490-418369-1-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1619786490-418369-1-git-send-email-grzegorz.siwik@intel.com>
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
x-ms-office365-filtering-correlation-id: 8e2055fa-a4e8-4eda-4252-08d938297781
x-ms-traffictypediagnostic: SJ0PR11MB5600:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5600DC723565ED938236D93CFA069@SJ0PR11MB5600.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:418;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dEUKligiKbeKz8JYY8acEQlzymfHtA0xGc2UCsGaBTz+SK6HUFy8O7t5YgexCHM0B/RyReEWXM+4tovgewRjgQinmxVxfHdebeFWzVRtLhyVXqyRAXJeAU4X3M7FiIIw6McpBReVsVouL0UGOb9gTGcomzxHGK3RVyRDLCP0iScol96KLKGiLKdNy4mLqXZsmDn74os45GDgeXeQUGXwL4Hub4YUncWyeX7rObQMrRiYe0kqbFnqOP52afgLbYGyn+N5tL29je7VD7UvtDE1cn43NJ/7V6KY5dk6URE0w/GLYpbp7BWAOO16Fd3yQrEEYC83+UQogxg1WV4twExBakoEfc+5GgfKaQLvcY2qQv95Csh6Gimm8DQm6fmQBaqZ7zOGZpI8QJpv63sUNYdnAlkuXFIZk8XJ/tQZ5cCFFdc/2B9x/jHcuRoFV36w1qRYTmdpW/9Xwei8Ow1Rxi99a2rff/+BPAko4lG7Q+wbNB3pcGmHRRDfT/Kv/8cY+oZ7XT6cWGnIWe6B3Q847W4MhKkCy/Y07fp6TmQ+Ndw/XOuiAktPECAYPZDLRN11Wap+oDgrHp1r4jBiuLGtEKly8GNGXEOIhWYhk+EadkJgxIM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(136003)(376002)(396003)(366004)(55016002)(76116006)(66946007)(110136005)(66476007)(122000001)(66556008)(64756008)(52536014)(66446008)(4744005)(71200400001)(5660300002)(38100700002)(8676002)(86362001)(2906002)(9686003)(4326008)(26005)(8936002)(6506007)(53546011)(7696005)(186003)(478600001)(83380400001)(316002)(33656002)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bZMGXBK4Qd+3X6GKzIWkwowJ/TDSGFP4NcN9nKrxb/OfAsfnL1oy/9S1bLBo?=
 =?us-ascii?Q?5N98nG1NiDO895GPSAbYAR5F+CQ5UEP0DHweysOPerACrCi2etKRD1dIrCGF?=
 =?us-ascii?Q?D7kpg9uPv9u4UT6me1PEFXiTIasqopkltTwuxRKjxNagsmeZV+/g1Jjdkagn?=
 =?us-ascii?Q?f7KWyUjUMlJeeqwT/X7b1jSz0feiNr/xAnDRYqPLc3G3rDxkaYCUkTGYH/wM?=
 =?us-ascii?Q?93KPtSax0kUL3j/BQ1Fgc1E2PYJx0EZo6taCu7MAyNNVlNjrVOxGNv3HllyO?=
 =?us-ascii?Q?wOcr7QkZCwy1XFczFPT/+zSMh3wii3Sc4eY5OMaD7H0hJH8pZ0PZP6sdlXUw?=
 =?us-ascii?Q?PGvWKRjaLIoCb3Xs17nbYCdKi2FB5bsBLomkaz4sAtLTlPCmZ8nouyF7+Kaa?=
 =?us-ascii?Q?9dBhAF7gPqwzCosBReBrtfqgR3zTX9HBAFDBYmA9WVClZLxPbS8yYtTrTGJu?=
 =?us-ascii?Q?PNjiEwR/PEnGgJN31+fmgdK0b2xRaYMmoze1/GXTROvwOvMs6glDcdvkqEe+?=
 =?us-ascii?Q?M8OXL0pKo2/29hWpoFvmEitE5zoTFI4FbrF/q7UFt+OsDqiaRVQN9t6DpZ46?=
 =?us-ascii?Q?wnzqKmkFEV3NdLU9I/v28DNLYTjNoadOZqTYmgkB0WKX1GPmlBZQJBw/6/uq?=
 =?us-ascii?Q?V1xHwfnQzhL4b/XT0DkHZdZEI7iPvgmswBMHF9x+P63JL+90HM3fQmQWbRZT?=
 =?us-ascii?Q?z6WiL3rsO67e5jQFQXoOeC3i8/3l4Wfj2SlgYoYiD8ZdhBvDU1s+l5aSWMwY?=
 =?us-ascii?Q?wZIeGkXjyTlMDePZau+Z/0KQ1SvnGHUzx/4ZrZYxYjMVj21ZGjLHFKhSe1oE?=
 =?us-ascii?Q?v0QSU1VjLaX3GCEhVOgTfUYmqsShcWK1V9bS/ufkJTf9teLv1HW1wtYkiYdJ?=
 =?us-ascii?Q?VFS0sND8Cxe+JlR72tRkPk4M3Xdam8mZVK3mqbmQVNLI+i246jXXuKt4eO2F?=
 =?us-ascii?Q?waHpGcIzYJDGsf2qzcYgIY9mtqKKO36ud14YGIhsQnPJxZwrf2HV/BkU11Wt?=
 =?us-ascii?Q?Ra1aFh1yU7pJq/wWCN3oQ0Bsbqo0bcbzduhKU4bjoFgO6kYQ/a9479h4t5FO?=
 =?us-ascii?Q?Q/IZ52qBYUPt0Evz6xu6HeGu4ofS2mS3UmWdvfLZlA4jw+grmJcHy4yjjeRX?=
 =?us-ascii?Q?isVgtAp6giIjdnj0biRRwKny78Km4/VSrr5GyMJVOPHg8/Z2Xa3lU+2UD25O?=
 =?us-ascii?Q?hLBMrBuNPcIXjPyyIxOyJbUiy5HlxkgmfoXfa+ZMmg53ZrXGFMVzWYWMP8Bn?=
 =?us-ascii?Q?wI25rBcRyrRUYPeguMoKMudzawsilsJ/Jn6yBouiviK0vd34f50mJiQYU6LG?=
 =?us-ascii?Q?uTUKH7iYJ/I19TXc/YlG1w0t?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e2055fa-a4e8-4eda-4252-08d938297781
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2021 22:34:59.8673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MvUPFGQBUs+TmFaWDFOUaRY3dcYE1SzvxxzgfW35Cwz6pjIOKln/7HlCF+EjAcPIuNG2VAklMfafdTZH0i1j3pDCkXnb4G/JgWXW+2IP/eM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5600
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igb: Add counter to i21x
 doublecheck
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Friday, April 30, 2021 5:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] igb: Add counter to i21x
> doublecheck
> 
> Add failed_counter to i21x_doublecheck(). There is possibility that loop will
> never end.
> With this patch the loop will stop after maximum 3 retries to write to
> MTA_REGISTER
> 
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> ---
> v2: Changed retries counting method
> Moved hw_dbg info
> ---
>  drivers/net/ethernet/intel/igb/e1000_mac.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
