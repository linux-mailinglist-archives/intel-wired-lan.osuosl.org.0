Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADC93898A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 23:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A863D83BEC;
	Wed, 19 May 2021 21:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LqhUQPkNxGOe; Wed, 19 May 2021 21:35:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB41983AE3;
	Wed, 19 May 2021 21:35:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DD7F1BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 21:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48C4B83BEC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 21:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cM7V-raeTsaB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 21:35:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F81283AE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 21:35:20 +0000 (UTC)
IronPort-SDR: 5ByGwyvjmEpmmCitHyDQ+Ghvah5jy7H1w4NGW9pCr4Hfi7+r1zhvfkjzGkRjoe4uTMDmU1b7hb
 /AnW/EYOeDng==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="197990561"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="197990561"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 14:35:18 -0700
IronPort-SDR: 9RlTlTGpnvvzxBc405MS3xpBoO/8ZrgPcI28JvkKd/H9eXi8n4cvsWeBsxk8drK+VHVAJv0Cnk
 2WtuDWFO7JWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="395423496"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2021 14:35:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 14:35:17 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 14:35:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 19 May 2021 14:35:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 19 May 2021 14:35:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Od3Jfh8WryqSTws+UV2kYa+6t/mmXpVRgbPrqFlbl2zj0atq6RM7ZBOX8Fgbegyt7HM1W+CRRI16gKJ+Un+qBKERySd36q0Zwt2GCv56/gio710/MxRFZE3AfA7VHVi0Wee+0xwUaoA6mA70T5L95VeFyjPcpws8v/108Yis6ktUgcuyR36or2/XrqcVESCn3Ez5+Yrf39hSUG2BwL0ys+cjjXaPty5IVuhb56JH7j0XvIwD/LQw74xouabr08Hrk4MQ+ROglLbVxbU1HYQBZt/tPaHQVNvgKmwplJBu0F9h3WVVxzWhQHPQSLa2JFnMRPYoVE7EtPI+X/Tn0UMSCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cI8JoWzj5hmC/fTjdjnuX/1yFyHYRNFd70lvj6tBBR0=;
 b=WH8JHN3eMyiC9l4bGLbHeGaq/1mQJ29XxzIMLqkLS31BrI/oNrNFgcp4AQRBr/bSGjaCIsyVNnQuQ6Rv3kgB5+AeWQzcgup9ma8s71tRHs30R0qL1db1pHhsHX9XZUgS7dGDGmOrQCCvNZmYNlzR8e+x3+TvpB5FQb9a+WCy9Fdy9QwnBCD6V1C9KeaDTGJkBdXJ5KPjI0lB1vGLpD+oojbcbaxW+V7iYeRrWUMwP+n7gnC1FnJvrNMeICuSOiYoeeSBShjjtI/m4u1wBYMQBqabpP/BFEFscCruxiJrOa9pMkGY+IqExhmf8SPoKrJzFQW9Ylh1hqBJWNnz+HV8ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cI8JoWzj5hmC/fTjdjnuX/1yFyHYRNFd70lvj6tBBR0=;
 b=bb9l5ECLlUxhkcNVq2Z43xEU96SW8hHY6sWoW8YSC8k5AZXNuj1oJ7eIMakxh133zWVRtpNdNH1UxXKoHkUGj0D2cQ5eaGktUQE288+Sm66JVhDNTNFplIwPagrUX2mwSojE8FjLFlnOxPgPlJy4i4AvXT2SLqJRIrf2Z4c3+Ow=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1391.namprd11.prod.outlook.com (2603:10b6:300:23::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Wed, 19 May
 2021 21:35:13 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4129.031; Wed, 19 May 2021
 21:35:13 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 06/13] ice: Detect and report
 unsupported module power levels
Thread-Index: AQHXQo+xO1d1SxC/sE6ZGWMMBCgKVKrraHbg
Date: Wed, 19 May 2021 21:35:13 +0000
Message-ID: <CO1PR11MB5105F6020ED0A513715A8DB6FA2B9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-6-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 69e4d8bc-1810-4352-231c-08d91b0dfc7b
x-ms-traffictypediagnostic: MWHPR11MB1391:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1391BF9C43E5B8F63FD6DC17FA2B9@MWHPR11MB1391.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:372;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0xoKYRdKThmK0u2pwq9niyQ5ru68M8orGqvfEFd1axdiToE5HbE+4ToGQwQw5XC4VYNhCICCKRpSYy5z2AaCdjHTAgdMIxc6cZOVqsa0wt+xjVAQ7LSrbfe8JUk7R+d1YiVO/yYmWlAWENBzPGs7TpDkRVFAZlGYOXerm8YSa2jGGQ+bbQUCg/+bAlHXxc2ap2M74u5wCQaPDYJ6EDhj7JVdgl68qvTSJmFVKL6qmKdbzXeeqBUMCowcjf3XyOQ6JOXtoFF9udNCs5KF+uBMXkn4TRQelZ4pL6OchBRDTc3S5s7kAjDfo9PM3mivp35EO9VucyBIChVT0RnExM214geao+mnB3ATzNczgvwdtlfiRvF3eDnO0jA+QmBju1C5PXWACU3x82XE3kfZ+j0KwUIDFF+yC7LmpWxJFKOXYlMfKu6VDRk3UMlWc5ELG4Ivoljh0nO/v1Eyz0eS9j96/edlJGxz1Ne6B25fb0spIa35MPxIESdQwxX9WVJrGgVgH0tLIC90W4nUSdKz3XUvsrDgf3saOdHJls2BtsbF/P+d486k5KbeN6FKicbv2VZU+Shejio3DpSCMoQtRR8FzVGmGhdsiEyp5ZSF/fUaD5Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(376002)(136003)(346002)(39860400002)(66446008)(64756008)(8936002)(6506007)(53546011)(86362001)(186003)(7696005)(478600001)(33656002)(110136005)(66556008)(52536014)(55016002)(66476007)(9686003)(76116006)(38100700002)(66946007)(122000001)(5660300002)(2906002)(71200400001)(26005)(316002)(83380400001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?hUqc6Yt0UuCS+gJMBwlk9Ma45blZ7k2FOBL94MP/rGB4TJQAZ/cxC1sjOlOC?=
 =?us-ascii?Q?vY7MXVdr6RINB3Dpb3ONecSZ8MzkJcOrSVzMgBytPVSjgE+UeDOTaif7FWvU?=
 =?us-ascii?Q?6UDVskFSZoG26sO+7aw6gMh/+QLWQWOZha6UYG4sEqS25PoUPo7PyMBn3uBR?=
 =?us-ascii?Q?+fBayGV99BJvsLxtNaPszUCQ0M27at4+ZaLnu6TgtOdiltYffyMle8bsFyyc?=
 =?us-ascii?Q?FLPrhyqYji1VRtCCkD7Cb9Mh2QFJg2iDL0oMMKZ93UbbGwg0MbuTnwfl+XI/?=
 =?us-ascii?Q?M/pRagMX+d58jm3l2TrLvuJTT8zeSEQk5elTC5jNvQVeRUqfx71M8hpZNTd1?=
 =?us-ascii?Q?a6n9Uu/hTuX7Twinu+rn8B3LRpJbo7evwn2p5Vmt6PMOaWu57QLJEzzba0ki?=
 =?us-ascii?Q?pcrHX4e/B0ACLZIdpE1dLpwfEJUQVIgBXQHJJg5uMBl81WqQRx0m5ZmnH/7h?=
 =?us-ascii?Q?2Yjn+g2O+b7POpA0W0g3ouDfeBWhGlimh3IkysSDPecuYXkKkBCrL3NoWtHT?=
 =?us-ascii?Q?nmq8po+6crAkePGRj+ycD0ZHNjiltoMnvwcpOvy65Lh2boKDrHVtN/1NcIu/?=
 =?us-ascii?Q?igVb9mZWT21GwyVJ6uMwVZ6Geilhd6DM9IRyMLhD3SPOy9xDgo8p2ToRxvF4?=
 =?us-ascii?Q?ZNMo9cTRUsjtOZdxU6VovxfuieHmMI6GUykn7E4CBCQmb/BqG595LJQkR491?=
 =?us-ascii?Q?YYrqqUVZbNDiyhJNhOXjMzWcpDBjbdFY6ggxhrVfX/Y5TigSYvUYKNSiNZ8y?=
 =?us-ascii?Q?hTf2g8f88uVfgm5NMKA6hNcuR3s0FtR4KMOf/PELNfBO3t/uPl0JTlnpPnPe?=
 =?us-ascii?Q?J626xzKwrKXFkjXzkSNQlj6/sgLYx7zOA20wUNioSMyAI8Nd6gkDliQcUC++?=
 =?us-ascii?Q?5Lzxh1fFsTeNG0mf7T5mFtvIuQJGEYPOgYMpArc4zV0tlZiqoRKg3Nx2zZVC?=
 =?us-ascii?Q?TstDZzp6lKRVQWSJwgdh0fBxYJyKwP4vQN+L2UHgMkblEFrLUJuhBOls7myT?=
 =?us-ascii?Q?TGoaA44odpq1/PmwgOry/sr03e7brw5p/JaDsvOqUOY+aMoZbiIXBw6QpzYR?=
 =?us-ascii?Q?OkXPfSErHpxmTLaZaSXpOYyy98kHQj6CM03FosgoQt97LvDjX7FBhbaPFxOX?=
 =?us-ascii?Q?UDEl0vyWF9JuYlW8NvyY9eOblAMSXKWH8inJH9hLM2mM7vjVz2J5mhmB1Wst?=
 =?us-ascii?Q?CbSPRNQD+SsAAgozMAC/BMkYvzCkTpg6JLHXkwFOQDcQ/mGjpmm0DjKv9hpC?=
 =?us-ascii?Q?D0tcXLNQOimAK5v4xU3BuMzqXiqFlT5stcsS7/2LdE3hG4kXScUiwFZIL8y0?=
 =?us-ascii?Q?TPCPVdgBvg/YLxukxXxnxODM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e4d8bc-1810-4352-231c-08d91b0dfc7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2021 21:35:13.3093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RVagagPl35DDevz1ED9r9QdteqCxwUZUaSmD1WRQQvjx2Bk6X8fsCcVjB9ZmqCAzzL6Y4h6Ust6xbXzekDbdpkLtQIEO/lX0HYL36kWwHy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1391
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 06/13] ice: Detect and report
 unsupported module power levels
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 06/13] ice: Detect and report
> unsupported module power levels
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Determine whether an unsupported power configuration is preventing link
> establishment by storing and checking the link_cfg_err_byte. Print error
> messages when module power levels are unsupported. Also add a new flag
> bit to prevent spamming said error messages.
> 
> Co-developed-by: Jeb Cramer <jeb.j.cramer@intel.com>
> Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
>  drivers/net/ethernet/intel/ice/ice_common.c   |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 40 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
>  5 files changed, 48 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
