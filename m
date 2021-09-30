Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D191B41DF09
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 18:30:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1530407A8;
	Thu, 30 Sep 2021 16:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mewUqswt3ZdE; Thu, 30 Sep 2021 16:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8247340158;
	Thu, 30 Sep 2021 16:30:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7A51BF285
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 16:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58E2C83E68
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 16:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VxXw2nu62AvI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 16:30:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0DCA83E5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 16:29:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="286248355"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="286248355"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 09:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="520435417"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 30 Sep 2021 09:29:44 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 09:29:44 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 09:29:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 09:29:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 09:29:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MV9yzTWF03XzCbX1tCLvlJvZ/yBKRZk6AqtpO6k54MjYnczGx9pbRgj0bayKBSlBwSIMbKHREoPdyQUEmDjxMNtghD5Hg2a//8DrsdbNlMV2RaUZEpZFVdN3jPG1pCVM4/spMwElYl4dSvPBrwXILCbcRTNYYd1xmT5U9/NKoZuBqYOHp04FHcISpp6LryZ9ZI6ZQQteNmCXRq6o2cdm6JEiiAvUHtKLKh0oZOtkMLxRf5NacogfwmOjMWhrdGRjj9IOP3zwwdEIsfmFScmg5YObI+B9N37uIABf6R65uOKjk0Z6t24MtsaDC2xIZnhNfdg4Uvxc70aVc601R9Amcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=iQUqR2NrP8rnvvOwQUxUTmxEnuSH3Kjk3ychc1OZ5pM=;
 b=Uc/GKkATa1n8ggGLh99MjKVKBvFnHNHTEKwNJsGsMxRyG/W9MhuBmH/9xJuQXakaIHHDd7mYsmIUb3OivFzI3fPuBEIHwboSFQ2Ro8pmk8JMwiM8iR+r70aETEhR1OPf86MzfV/jZFz02Qr+19/eCDj2xSQ50eOAbATjShIjzhnjfREfR2JCYJ86yRvwNk8mfo+2KkmLodW1yHAKJW7SCJK5M4T9uP50DaX1uUF8VTxMrNlH90wQ5D5hcQuLhxBNWdPE53NfBYuohbqGso5GKTTtmelFUFPtc54KuSOUaTL6stsRw4jkUC5ilVJI0mvEIX+EpXexvNO5aMcsE4y5sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iQUqR2NrP8rnvvOwQUxUTmxEnuSH3Kjk3ychc1OZ5pM=;
 b=Ugs+nDfIfp+nX+qN8HAlr0vI5/YbjfX1uiF0xpiL6ohbMa4fgh/QnoitPFd2RuL3kMg+tSqK6ZQ0sM4+DBXb2U84LxB/S8DYbfcKc7I5Py2qjbwxCUNnLZjwbhU1WU4SHzUZKY7+Nlen3g6lEgQBWosOkBxrq6vzu707TdxI+NM=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Thu, 30 Sep
 2021 16:29:42 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4566.015; Thu, 30 Sep 2021
 16:29:42 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Print the api_patch as part
 of the fw.mgmt.api
Thread-Index: AQHXs80Awuo6K6CVf0Oe0E2YUoyF2Ku8yNVA
Date: Thu, 30 Sep 2021 16:29:42 +0000
Message-ID: <BYAPR11MB336791A98D3AC8C03783141DFCAA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210927182150.234879-1-brett.creeley@intel.com>
In-Reply-To: <20210927182150.234879-1-brett.creeley@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6331bac-07ca-4d81-5589-08d9842f8199
x-ms-traffictypediagnostic: SJ0PR11MB5103:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5103570A6EC26994641E540CFCAA9@SJ0PR11MB5103.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DGE5rgNtRdGKQFl8gYaf1sXMfLwuEzDKQOkhK4U2Z+i6Ek6zA0vPjktQbGdegIWm/X4K/SLd8qH+ZBeDU/8TcdTcc9bXka1RtiUACEcqhCpSQkJtdHlt6gr7C2gB4XiX3EJ/L8COx73fex0U3ODQTR2TUN83D9fpzUFuhEHUIrrHHw7rXlSiKqqgnO1e8247E7roilNQHF7NWTun4ttb2vmAg1GWj4iIrgQK3+2QLZyt9yWz2iR/xpuQxCMFBWmu9PhKczxJaYrrUcoGswFY69jJYmVnnGK9bPW3qVffaQYHhV83/QfkiHSV4GlJKO/LAM2f7s0Qp4sbkwoP1SKX0x7GIIoJpDSqahKedB4UJ7BbryQM+UHH3l+HHjJJ4ahOW6SrO9YJCmdiW71OGrhR7dsVplOOhBf2z0m8CDpq0X1AgQFvuHw6X4e0V2848OcjYYsq7R1WOM4Ka5BjhPNBuSETfT5OYdSfH1+ueuzVQL+Iq0olRsslt008JAXP6PVdD1ufQRDLYxM+AQAzkWOvTvuSzcy8qPyjixpeyy+grIRruvr1I0UlLPT8jgPwpicN8InhNq6tg9wo1SyOAWkdF2dkI6JWQHssdrV2T/rK7hz6Pzg2n2j2aKpsAfkX3B9oZpfHnTAHDz8yDwOTxOwhchJChmErIwY7LyAWn37Jpt83B97J1zBqxuhZscSSWwCbBNtNUvOZ4mWKVYNW6GHAhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(53546011)(6506007)(8676002)(26005)(7696005)(55236004)(186003)(55016002)(33656002)(9686003)(71200400001)(66476007)(64756008)(38070700005)(316002)(66946007)(86362001)(8936002)(508600001)(66446008)(110136005)(83380400001)(76116006)(66556008)(52536014)(122000001)(38100700002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AJ+XMfBsP6IYb5/1uKi5Bmyrs5LQzHezCXheMZ2ouue52Lo5kEpjN6wZmKFv?=
 =?us-ascii?Q?HF+dq/z88kU7vR2zC8h2XvF47MdU7FzWM2GdZj1pMXVtOjwCAEHtm127NBe/?=
 =?us-ascii?Q?1/1LtzQ8kyiWDPbJeg2X0rMF7KLvOrQFYpuTX0qC3yaqQms5JmtKClaStLEC?=
 =?us-ascii?Q?bRxprh9mo0KQwRrpRqXBg9SUq4iVuIQSAI4fipkVE4jJ5ERifB1b5KcYHTi1?=
 =?us-ascii?Q?XaSXGmngHQzkUoNuCZP68fkW7k1Q2q2BgmqU4KNZgtx/SYvDoB5d1Fn1O6oT?=
 =?us-ascii?Q?0mIJPYWS+fGLtw2Y2wYMfWmwKOmJVLfM+PcuHqHFfQqyRPd/qcPucg+vIBQW?=
 =?us-ascii?Q?eXqlN0XFWbWDWoawyHJ+1A+xGsWQY4Pfs6frX7lnz+bS/kK1Sr39AOZoO+FY?=
 =?us-ascii?Q?c3TSehEDKuvlM+6WWcUnnC1giY+Ug7YvEwopW++4a78gMVfqW033Uatg7oOb?=
 =?us-ascii?Q?nXDxt7gZtnYGDUYNasCkxDvp2Ag7uYZa2zomA5H1UoU3mEM/1UaowF5C1fMo?=
 =?us-ascii?Q?XLuP+qamH3B4BUtGi2qv9nNN77Ozb8BaDi/ygWnTvsivpf4mLgXub4M6Jwi6?=
 =?us-ascii?Q?JUEdXgq8FCGqFoX3dh6V2XZG2WRXmK2Qczp2YPx3ZTsONbQqHOg1tJF2ls0L?=
 =?us-ascii?Q?6POqvta7b/AMU6LtnVyEi+CAUbK3P7TQ4T7d8oMpIRYy9xCXzVexEFmxWWr+?=
 =?us-ascii?Q?LEGSQC+f2YRHxzGqVb7Ol1Q6Hyp2kps5KBxG7ieA3KhrkLLdAVTFHI/KWpUj?=
 =?us-ascii?Q?EovNg67Rt/k8bUJXWPOWPsiYtPgse8lnGc9I8gX0As6xG50VYw7Zn0mgmONR?=
 =?us-ascii?Q?aaYuZmki4+LAu/l2B6BXfGh5C0dYckuX+EH2gH7sm1/r5xivfiyh7rqm+b4j?=
 =?us-ascii?Q?fBSXtzxYG4JSmkMZmbBqHi5kpWSnebEWu/KKvGoiVM8mcWowJydpByRMAtPk?=
 =?us-ascii?Q?r2PFtkEVY0y5Sk7nBfGrvWnI6AQfX5uAPyGITj+Z2HU+GM0xSHzvxne20/30?=
 =?us-ascii?Q?2SAWIOZLle1WMWVDuyXegiMrsR+cWbyMj02mwplAeIp8efaYKhS6FrgtYhME?=
 =?us-ascii?Q?uClWZ2SgaEJnirTQENMZZn4hYesxA6XKVYmpDc+CMfBGuw2/haqy0B9ZUAPf?=
 =?us-ascii?Q?Zo1JSmkHMrjyb9QRvY/7DRm0c7b+aPCXRuK1TSgZ/HT1LMwZVDRxffAOYJUx?=
 =?us-ascii?Q?Tu07qtsbeGhWSxcpdsgZAd4c+FDRt35+c4rjE1No9H03a+O/HBSy/8kBCR+x?=
 =?us-ascii?Q?rz1KVziICOPwN5G3CzImXuSzyF43U1Dol6AVV3lD8INcBL4R1r+qFPHkidfL?=
 =?us-ascii?Q?3K4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6331bac-07ca-4d81-5589-08d9842f8199
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 16:29:42.1335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f6NatSl6z1K7zAkYad63txwvb44zu9gO1B2jBi4A02LGfVq/A/nYyHmqsmbrXbTDMsP07bCBkpp+rQSIb3Kxyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5103
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Print the api_patch as part
 of the fw.mgmt.api
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
> Brett Creeley
> Sent: Monday, September 27, 2021 11:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: Print the api_patch as part of the
> fw.mgmt.api
> 
> Currently when a user uses "devlink dev info", the fw.mgmt.api will be the
> major.minor numbers as shown below:
> 
> devlink dev info pci/0000:3b:00.0
> pci/0000:3b:00.0:
>   driver ice
>   serial_number 00-01-00-ff-ff-00-00-00
>   versions:
>       fixed:
>         board.id K91258-000
>       running:
>         fw.mgmt 6.1.2
>         fw.mgmt.api 1.7 <--- No patch number included
>         fw.mgmt.build 0xd75e7d06
>         fw.mgmt.srev 5
>         fw.undi 1.2992.0
>         fw.undi.srev 5
>         fw.psid.api 3.10
>         fw.bundle_id 0x800085cc
>         fw.app.name ICE OS Default Package
>         fw.app 1.3.27.0
>         fw.app.bundle_id 0xc0000001
>         fw.netlist 3.10.2000-3.1e.0
>         fw.netlist.build 0x2a76e110
>       stored:
>         fw.mgmt.srev 5
>         fw.undi 1.2992.0
>         fw.undi.srev 5
>         fw.psid.api 3.10
>         fw.bundle_id 0x800085cc
>         fw.netlist 3.10.2000-3.1e.0
>         fw.netlist.build 0x2a76e110
> 
> There are many features in the driver that depend on the major, minor, and
> patch version of the FW. Without the patch number in the output for
> fw.mgmt.api debugging issues related to the FW API version is difficult.
> Also, using major.minor.patch aligns with the existing firmware version which
> uses a 3 digit value.
> 
> Fix this by making the fw.mgmt.api print the major.minor.patch versions.
> Shown below is the result:
> 
> devlink dev info pci/0000:3b:00.0
> pci/0000:3b:00.0:
>   driver ice
>   serial_number 00-01-00-ff-ff-00-00-00
>   versions:
>       fixed:
>         board.id K91258-000
>       running:
>         fw.mgmt 6.1.2
>         fw.mgmt.api 1.7.9 <--- patch number included
>         fw.mgmt.build 0xd75e7d06
>         fw.mgmt.srev 5
>         fw.undi 1.2992.0
>         fw.undi.srev 5
>         fw.psid.api 3.10
>         fw.bundle_id 0x800085cc
>         fw.app.name ICE OS Default Package
>         fw.app 1.3.27.0
>         fw.app.bundle_id 0xc0000001
>         fw.netlist 3.10.2000-3.1e.0
>         fw.netlist.build 0x2a76e110
>       stored:
>         fw.mgmt.srev 5
>         fw.undi 1.2992.0
>         fw.undi.srev 5
>         fw.psid.api 3.10
>         fw.bundle_id 0x800085cc
>         fw.netlist 3.10.2000-3.1e.0
>         fw.netlist.build 0x2a76e110
> 
> Fixes: ff2e5c700e08 ("ice: add basic handler for devlink .info_get")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst     | 9 +++++----
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 3 ++-
>  2 files changed, 7 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
