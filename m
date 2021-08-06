Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D573E28DE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 12:46:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6504400CA;
	Fri,  6 Aug 2021 10:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GYNNiW_SEqdY; Fri,  6 Aug 2021 10:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B74B4010A;
	Fri,  6 Aug 2021 10:46:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5450C1BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 41E89403CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FKqloKBqlzle for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 10:46:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 939E3403AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:46:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="212490821"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="212490821"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 03:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="503985858"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 06 Aug 2021 03:46:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 03:46:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 03:46:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 03:46:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X1ENxA7H92iLubmtXH3EBtABe9UU7yFbZ1iOFw+R2SYxyafa4TPcnGSl0HJuYpfJBoJ+d9KE0Fd9tivsFLWLpQgVq5A3Ax88k3BhY9UwAAtZ47Cso2PPMLhyeC0ZlX80jxNLdF78s3FY4n7tuELl2SuxIVt7sHZGQLzjQP4AeilyfdCzZTmosJCntF2BKy9nj6j+m7hsaYY1dJGnhaLmioSYJdFnNL9eIA+OElxMdNgzDAwKDZMIbi2HjGMyoAlvmi6olbTA8uRszcTAxxJwSCke7H2jUp/jHpi+TnPui71D+cZfSGUfxaEJfVAc0WitIdk6lFgJ6TOBP57yZBU2QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScfQUeCkGqZoyrQvIdiDYIcx8Y9tkSw6J5y43sjR7ug=;
 b=XNFAYXAt2sh3TrwKpm555JClnXuhtfNQX2e8Y0RaxEO2qSyKpFQ8xsqL+HNeHJYQoX3DbswMZ9Frcg+qSMSD++QeamMDTSDQUoDLveuzi7DH7YbNmJRL/MfVwir2Tyul9yXvycZ/6eO676xpOkPlsTpaYH3pQM44LvLNygsC+HIjL2045ppv5n2o1pivb7Zx+xu7iLhn9RJRH3D50GWgHhTekAteGA0qea/VxZ0UVNlTcgyFjUa/kWCPea8b9E47npJLVPTx0aJF5IJuETCKpUonXCsW6UFObnfz9u8KcbgCaRmta3goC+pl3WG67B9BarWUdRD6NvHaBVnA37QzKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScfQUeCkGqZoyrQvIdiDYIcx8Y9tkSw6J5y43sjR7ug=;
 b=qEpyOwUCSE5mWpGNXhpiav0lZfPC8h+XevPR3RROEz7OxYdIqj2FQaPBbjkkYSTNWOa1WlzB25A51nO6WgQ2lGurkPyCTRzEj5IBPgDkZdr+G6jkon3PUOvhufq/pnGHCgkvl+8DaL0zr8yuWMvFwbKvvdJ5DxBjcEtASnywM7o=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4586.namprd11.prod.outlook.com (2603:10b6:303:5e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.20; Fri, 6 Aug
 2021 10:46:17 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88%8]) with mapi id 15.20.4373.026; Fri, 6 Aug 2021
 10:46:17 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 12/12] ice: add port
 representor ethtool ops and stats
Thread-Index: AQHXaaurGnQNX1TdxkeDkfqMtox5/KtmjO+g
Date: Fri, 6 Aug 2021 10:46:17 +0000
Message-ID: <MW3PR11MB4554699BF83C0A9F725212F99CF39@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-13-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-13-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ebce293-0499-46eb-fc09-08d958c76bb6
x-ms-traffictypediagnostic: MW3PR11MB4586:
x-microsoft-antispam-prvs: <MW3PR11MB45865ABB0FD43B199A0E03209CF39@MW3PR11MB4586.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KA+I66DTi0DzVZcFaDKtXlanlXUa5avDRCOJb6nbIB/A2wHUC/CnfUk1K5cc72/i1X2DSBMSNMoQO4essRdus9m2dUdNKENZr44+mZwpnCHQZvHnAWfxl89Fxq+guMAxDmJXmZmMYEaUUgr8BxSskNsnAJY1pQa+4IOZeELIEUMHqEv96ikaFgoOC1QzvR1O0q/vbGNT8X4aowUjHsbzYzTajQvshLyNFp/75cLeGFONzJVmpkbKgdhUSjuAiX366jyoNMxBNt8Lp3D77WlWyG5yAA9dA9ES2wOQWSYl0Ob7L/p2a4vKWL0+Vyqs0b7RPMI+anzcp+rB3/y15Z8XjRf75Txj9CzsFauI4QeZO7LQQiZ9uKOJbhsUjLBn+LSOLxQRsvJZt0CQHdceSKbBxCquRd20jB/9HHeN6A1q5O0jVTEKnmZanTDjDkEJGbjKz8DoXjTqFZfYjRCg04sUGlEyHGXYPGfybR/Mfm7kGDY3nkZFkF36ZDE/YBWQTetaoeLbhxta80RQBH8iS3Q2bkntGypcWXPF9KS9+yBf+2b46iQKrsDxKyFsopd4e0BQQAZzC8t/OMbTvosA+DFL6xDQ0nmdhXt5tYt3zpAKQwg95sCy8jFqW5pprycL96KaUZsol4Eb9hdRvvIwHWcDDDjSglU0gXuZHo75XVqof0hy1l5YNwqlfNPiHX9WKjXgaMX4REnnSEHmvnvW0C5BTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(396003)(366004)(346002)(136003)(186003)(110136005)(66476007)(66556008)(55016002)(33656002)(66946007)(26005)(8676002)(2906002)(64756008)(66446008)(122000001)(38100700002)(9686003)(76116006)(8936002)(478600001)(71200400001)(5660300002)(316002)(7696005)(83380400001)(86362001)(52536014)(38070700005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RiFLOjDT1iuEIH7QopQOW0KZqx6tW0TUn2GeKcGllFIeFvwqNyeE9fie9oGA?=
 =?us-ascii?Q?BwcfwKT9gik032WrEdNhnkCUOhaLkOIGKIn/SCAzh4a+TBwIYOPhrz7iyH2F?=
 =?us-ascii?Q?Pjqt2uf1bd570FYnkIrO81aycZo9GWHYhyBpiDEUUz6U8nPXIKw7Bmd6ceIO?=
 =?us-ascii?Q?I1NZgATO2S8lU+tX6RVcHkZTrReszJGxlvr/eRGJHzyWmVWyMmCFq+Tve2sm?=
 =?us-ascii?Q?TYWBuePPVDGG2cXA6zf1k89IElV7tWfnEGHsliT5g8QgZTe/6x7AC/SA0M66?=
 =?us-ascii?Q?fFv4Gp55LiVxDRhZxafSwqyyuwETPP9os3pi1hdz71ZRkuFHv52nVKBBlVuk?=
 =?us-ascii?Q?z09ZU+K4J7hjT/V0BvKCpMNLHeuSy43r2WAV9/eRWZ35Pv3HekwsmEKmaukJ?=
 =?us-ascii?Q?0LZz0dJVPIjt9AVQUUoV0IBtOzCP5TJcB4P9hBMIkbGLBpcuX1N4NrrgUQod?=
 =?us-ascii?Q?6Y6Axr+4rZTo5UQbWpNvho8hEt369zbCSM8QfRWu7t+9//lUoVz5jm2YyHs7?=
 =?us-ascii?Q?kZ1LRB8fMuacMBQwjlJkMfConC08pfhpJXUdgWmdQ73cqZO3oON7VJARWuAD?=
 =?us-ascii?Q?ZGE72WybQFRNiQAKVGSHGIlMPHpSNGbna0N30Ual7rwE5PuW2l1AuvPtNvuR?=
 =?us-ascii?Q?hMhJzZhyQ6TWqWo45TOOfzFSl6yaKIbcU3FrT8mt4BjifU9Umk5h6wOtpI55?=
 =?us-ascii?Q?hvdCM1SoXC4oZYCTKWBDlwICm4ZARgthyekDNklrGnpGO5W6iqCZNOoBciWc?=
 =?us-ascii?Q?5fux2DNQbE2Acrrb7zvioEK/5Rf524SGFKgigJCOlUkemSRSzBAhiBjJ8PBs?=
 =?us-ascii?Q?oj94J882NB4OpCPBRlJgSHPai14Y5iPAOL4FgmtDV4wRQVTyq1f51ebsrWYU?=
 =?us-ascii?Q?HsiuB5odtwR2/MYdYkOMs9dEFAa5vA55atEOvenfkEPGCqVE2m7p93eSzmB5?=
 =?us-ascii?Q?EzNLYvhDXAihgTh03ztHv+zOib4PQGYwSiyN74pHFqAeJOE9th4ijbN0h5lm?=
 =?us-ascii?Q?PwNMyre6HnnaO87jN3Eq1qpSGwJgvFYNoWeWlKfiLngg5rSH2Y4Xtq66W6hW?=
 =?us-ascii?Q?NfaozgBDHWoOBf5wDIAphnzNxTYS1Sm1rwSzhM4i4qSXJ/0pvotlDEw4od9D?=
 =?us-ascii?Q?d8ZIjbNkPx93Z1jtGGFG1eA/tJXrl6PbjWhQqTcDrJU6IQDutPkMfCGvL/8X?=
 =?us-ascii?Q?ZiySoC15xns5asuutXryBThrAOmHEcxBYh3qK6KszgjsDNwLfuUo7BqoLMP6?=
 =?us-ascii?Q?jAdcUWt/fYw9oPr885u2yHAoXOEgQFbEYWuWh0s+4Xxi/KZFRD/ZK7R8a3Og?=
 =?us-ascii?Q?wQSPsGtbyMuJ+MjmoxwA+aS3?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ebce293-0499-46eb-fc09-08d958c76bb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 10:46:17.6992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dm3a1hM/uoSTeGwbcLtjDSOAi6TyfWcXpQmDuZFEkCI6H4wVzrbc6xnoL8w5f8VOB6qprlTgGtR/DsE1xAqn7/txU9G6FTSGGUk1ly8RiVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 12/12] ice: add port
 representor ethtool ops and stats
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 12/12] ice: add port representor
>ethtool ops and stats
>
>From: Wojciech Drewek <wojciech.drewek@intel.com>
>
>Introduce the following ethtool operations for VF's representor:
>	-get_drvinfo
>	-get_strings
>	-get_ethtool_stats
>	-get_sset_count
>	-get_link
>
>In all cases, exsisting operations were used with minor changes which allow us
>to detect if ethtool op was called for representor. Only VF VSI stats will be
>available for representor.
>
>Implement ndo_get_stats64 for port representor. This will update VF VSI stats
>and read them.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h         | 14 +++++++++
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 32 ++++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_repr.c    | 29 ++++++++++++++++++
> 3 files changed, 72 insertions(+), 3 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
