Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 716D3433F56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 21:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB87B82670;
	Tue, 19 Oct 2021 19:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQW-hCmKyCyr; Tue, 19 Oct 2021 19:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0CEC823E0;
	Tue, 19 Oct 2021 19:37:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A594B1BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 19:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90B4A400E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 19:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_WqNmhsFEJR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 19:37:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C745400A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 19:37:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="226076701"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="226076701"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:37:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="551337484"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 19 Oct 2021 12:37:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 12:37:34 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 12:37:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 19 Oct 2021 12:37:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 19 Oct 2021 12:37:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zf9lgQ+eaQS4g5eZqdgPb7UxyYdHjgQnYjU+aCe8aWK5ObhkBCpsq402TczSAQrhChjy5oQvVm35OHihYetK0HYRmB+56IbEjYnH+eZGWxsLOmkr9VLcU9Ll3Eu75/Yd2kBVOkoHuTKzgRdidgx4cdf0WUCd3r1LSqkvV4IrULsm+diuPnjXJhkGAWAv4RJq9ouJbGF2fK2EpM3Swqnp8u6fGEKkcol5LXuvDDAQNhqWLsK/oWYU40EFnU3FZhAiWEyTmbmQyVN4uX5baQYorH8OWkU4Pu/f8Hs+K8Q4fl2AJ3jgKv9W+1BcpJAsnwccihg+R4dwmm3kOaMc7zqseg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j3mNeQviVMWnlZNu7jpl40bIX9Ule+GHEazXvbdy7wg=;
 b=XbMQTITpL8ahKa7Tem37q146qnJ4guh7LgKV2xEN7WTky91A1R+fouT+U6Swxtpx0/ANUc4GxzseazSn7VUjr4po2ed5pA7BymrgWQpkAT2STuzrz+oZEvXuLJ8NoT2mrz49Ri6fVnDnNhUFyEMXMlzgHDxiVzLXSkZlsLz4nbnlnGyrrEYG705N5kbnCwc9IowP98XnlHIs1RrIoqaCERDdVqdwSML+7smCZsJQHWsPFL+hd2RF/yUlAZbmNQC48y8vfvW8RiBPPdihyggjcFY9zD7b/AB0CwEXStan9StEX9u1hd3hs2/A49LiZ1FTrJwPowOhwEEPjp4IvHiyhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j3mNeQviVMWnlZNu7jpl40bIX9Ule+GHEazXvbdy7wg=;
 b=iAczTbs19qYBtjvQEv6nWv4iSn5nAo1ntqtrx3KgHFyT7MCUxoHGfrPtGHutcwktgqqn8/wTdA4yd5jve8Cq+c1zZx8B3BADImYtF4GgYM8fhPMJduP9uQYvbvOiQ7elSwls318XLyyJxX8+ZkpzJh+0UWMI6cVUWvIU0QHTjC0=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR1101MB2078.namprd11.prod.outlook.com (2603:10b6:301:4e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Tue, 19 Oct
 2021 19:37:33 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72%4]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 19:37:33 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-next PATCH v3 2/2] ice: support immediate firmware
 activation via devlink reload
Thread-Index: AQHXwhpOb5xlSTjzIEO22nDvIphjhavavSNg
Date: Tue, 19 Oct 2021 19:37:32 +0000
Message-ID: <CO1PR11MB508920436BFB5409F95466A4D6BD9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20211015231304.3080026-1-jacob.e.keller@intel.com>
 <20211015231304.3080026-2-jacob.e.keller@intel.com>
In-Reply-To: <20211015231304.3080026-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ddd6844-6a48-41e2-124e-08d99337e55b
x-ms-traffictypediagnostic: MWHPR1101MB2078:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2078724F75CA209902BF1BBAD6BD9@MWHPR1101MB2078.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fazGzQJ5VnxCpx6yid6CfDU51pwIEfOylCOMKEaCHO4E+sBEQjnYgqZBySoXUkLzWXdman88/kx0KObT1MaRZoDoOP6GrDemxemPVzCKipSfI2BgIQJZNE8SPNkBlEHAN0h1H6gW7jgL6Qnq5pDvQHqwsDqyMJkezknoiMzhD0yRh+FUzR3A51dHivn5ij+CNysTLZI9P/enV/7PFteXaZ+Wrmopr7bD2BfJ2fNNJKGu0VVHlWh8/2VPGptDmq90xN0ONzR34IBk3uGHhKNjQ9iVts2ZTgL1Yt+qOdU1bfxbvOOtTYJqkDV+BiRX3j90CIBa2CZheO7B3R47wnhvLLXhv1vuTZ6fcS67aIqnoXiGnYQvk1ORLyWldwwArEMnlKmGH77r5drVWo20u/qx5xpE8+XUsto1SHNsBgEwUievZp7/MAuFXNvsmAvp7MrFrUPmawhRy2L1lA6HJDdpeRg3+e8uell+NfgwE0fndNTTP6hmnlr/GJ9g0JnrbrtHYWApVaiVhKVadQ03cHR9QWLocttdWcqqyaUwDen4r3WWLhkJI4B5UfE9YqyZ+csxHkPqOf4g78og5aTCVCt0tQXfPuIxz07iPTbbLg0ybJV+9HdGP4hRVIeVCiNmp6Xqw65Rk7H3mzUjie4eUVJ/1hLC1b5QRwM0RoyJxzfySFfTfO5m+i6UneuOnxgAbALJEzshCtCFVa/lQBEY3aaSoI1+iF0K235rWTuxcaVM4f8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(53546011)(5660300002)(86362001)(6506007)(26005)(30864003)(66556008)(38100700002)(76116006)(8676002)(66476007)(508600001)(66446008)(64756008)(2906002)(66946007)(82960400001)(122000001)(316002)(52536014)(38070700005)(71200400001)(8936002)(186003)(110136005)(33656002)(7696005)(9686003)(55016002)(14773001)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B/yamlxRh4o8IexcX4hnKUxXdzy7YYn8fJlLFjc2dFMSlbND/kvZJyeoFudu?=
 =?us-ascii?Q?dyDus1146emQ6s3RSnOqVFllaGMtdt6V/NRBqObgo3iJyQ6VliT1eNjmEbsm?=
 =?us-ascii?Q?uo6M3Ri7LRFCRI8SInU9tJqc2l6GKgoMYr5ImHGFunAk9KuqO/5DZu2Ka1PX?=
 =?us-ascii?Q?nwmnCSrPTlF0lp8BYoA/BuIEMHzM2r/q+a9V6pOvflPSwITTBD9YtT/qkwEy?=
 =?us-ascii?Q?RgTlaFAizoI27VdX5TUeNIAv2XZWncGwcqYLOfU2L4RLieOE8CAEz14rKRIy?=
 =?us-ascii?Q?7Pos5vP/noImtomOvAen9K6Yep8Htx7xmjzgsLWTcoFzfohSQwM6PRZZ3Zaf?=
 =?us-ascii?Q?mo/8WvbAMTwIwnUkQ9P5A/8i8TyckrEOhmxBoTB0e2muAuiBWI/5IXC1DBrG?=
 =?us-ascii?Q?9xwqaN3hC6gVfANa4+xQmhVGtSFQirLwItsBDAFoKHg1cy6mrLx5n0nLpLuK?=
 =?us-ascii?Q?S7RyUIIYveP6dyFeVbQOUQa5kQ0n12l5nkRClzyqP2E43iPhn5zVl8zwgRiN?=
 =?us-ascii?Q?y4qlPMzUQAEOIcjl6FM+eu1lP9ARVmp62vlamNK+koxazyplWuAj6DdOA4hC?=
 =?us-ascii?Q?+BFV+A6Va1CBdNhD9aOqvKCS7vfIq30CdOQ/weOS/QAWJ39uWh5wOZxsZc9q?=
 =?us-ascii?Q?NgwcqdnQ0PAmVociPkNio2SSSgy4jfcGWxBKEQxKWxlqE6JbyqC4a4EDx4g5?=
 =?us-ascii?Q?615HlUfuBTcUxgr1jXJFx/sPjb2KOKFlq8FIUYFyl4/vQoBWACO/1iI/f3pl?=
 =?us-ascii?Q?ewHxHaN0IWl918xDiclMVqOXhNe5M0lMrZmttxN/XYvax6vmOf2uDWPk3wPH?=
 =?us-ascii?Q?1+nnGmQ2JDx+3BMD1kA3C8+ZdUIrWosRH1J4/7A2buF+9i8mjWS9Ydi0gE27?=
 =?us-ascii?Q?c9ik1haklBcL0DMFBpROfu8EeAw6lJi5eQORrlYSLI4f0jicP1OqS1qGfBKI?=
 =?us-ascii?Q?9IVHvGSx6udAqhReiDOo/GRy6AV1XlJuTDwh7KgP7tqu+9OPXKtc2CxLX6xH?=
 =?us-ascii?Q?VRLuf8ClRepKAklbB7YssXS0y6yH+5tk8J6R9W3GaOffxfx1wwzStFWItmjM?=
 =?us-ascii?Q?MjQdBbxIYKTAR/Vb8bCGs64sxKmboM4jLZRKd4wlxXmNQEJyIx2uup/wcXSo?=
 =?us-ascii?Q?qqKT8Th3phYvL2zxWlqKj/kOsBsRrACA5OOCkRliBpNW17Gpl9iwH9VIu8QT?=
 =?us-ascii?Q?bjcNbDjL6f5ykV1KzSS9m4r671hVgRr77mYk6DxMQVPNhRhsanEgV2YXkc0A?=
 =?us-ascii?Q?kixGw8IDcsA6HgSnLoir17lAAKZle0eYPW9E4zJgWBSkz52EiObWlZc95Dre?=
 =?us-ascii?Q?JDw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ddd6844-6a48-41e2-124e-08d99337e55b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2021 19:37:32.8577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fWcWXHYUgv0yvpg5z8GVeMxRiFbj7gqsAbYOBMz9BbEpmKPeGEIxC9/dkqXvDsqT/Oqepvt/29D91Va5Xza7kxNfxnfxbU+0WKtMU2JC/4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 2/2] ice: support
 immediate firmware activation via devlink reload
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
> From: Keller, Jacob E <jacob.e.keller@intel.com>
> Sent: Friday, October 15, 2021 4:13 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [net-next PATCH v3 2/2] ice: support immediate firmware activation via
> devlink reload
> 
> In order to complete a device flash update for the ice device, the
> system administrator currently must perform a system reboot. This is not
> ideal, as rebooting the entire system can cause unwanted downtime.
> 
> In many cases, it is possible to update the device firmware immediately
> using what is known as an EMP reset. This can be used to complete
> a device firmware update without the undesired effects caused by a full
> platform reboot.
> 
> We can implement support for this in userspace using the devlink reload
> command. Implement this command for the ice driver so that a devlink
> reload with the FW_ACTIVATE reload action. This enables the
> administrator to request a firmware activation after performing a flash
> update.
> 
> Unfortunately, it is not always possible to complete an update with
> a simple EMP reset. In some cases, the update cannot be completed
> without performing either a full power on or a cold PCIe reset. In these
> cases a system reboot is the only known way to complete the update.
> 
> When actually writing the flash device, newer versions of firmware can
> inform the driver about whether an EMP reset is sufficient. It does this
> using two mechanisms, which are detected via firmware capability bits.
> 
> The first is known as PCIe reset avoidance, and the second is known as
> indication of reset restriction.
> 
> If the firmware supports these capabilities, it will be able to indicate
> to the driver when an EMP reset is sufficient to complete an update.
> 
> The minimum required reset level is provided as part of the response to
> the final NVM module block write. This reset level indicates what reset
> is required in order to properly initialize the firmware given the
> contents that were updated in the NVM.
> 
> The availability of EMP reset is indicated as part of the response to
> asking firmware to switch flash backs for the next load.
> 
> Track these responses in the private structure when performing a flash
> update. After finalizing the update, add a status notification to inform
> the user of the required reset needed to switch the running firmware.
> 
> Also track whether or not the EMP reset is available for use during
> reload. If firmware reported that it is available, an EMP reset can be
> requested using the appropriate firmware command.
> 
> Add support for devlink reload, and allow the user to request a reload
> to the new firmware using the FW_ACTIVIATE flag. If an EMP reset is
> available from firmware, we will attempt to load the newly activated
> firmware.
> 
> In some cases, such as older firmware versions which do not check or
> report whether EMP reset is suitable, the driver may not be able to
> determine when an EMP reset is available. In this case, whether an EMP
> reset is sufficient or not. In this case, we will always attempt the EMP
> reset.
> 
> Finally, this change does *not* implement basic driver-only reload
> support. I did look into trying to do this. However, it requires
> significant refactor of how the ice driver probes and loads everything.
> The ice driver probe and allocation flows were not designed with such
> a reload in mind.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> 

Ugh. There's another issue here. Turns out we're checking the wrong location for a bit offset, and so we're always reporting the wrong value for a reset level.

Need to send a v4 that fixes this.

Thanks,
Jake

> Changes since v2
> * ensure DEVLINK_F_RELOAD gets set
> * rebase to avoid conflicts
> 
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  12 ++
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  91 ++++++++++
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 166 +++++++++++++++---
>  .../net/ethernet/intel/ice/ice_fw_update.h    |   2 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  7 files changed, 261 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 2fc2208be9de..6c0bf0f41a4c 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -557,6 +557,7 @@ struct ice_pf {
>  	spinlock_t aq_wait_lock;
>  	struct hlist_head aq_wait_list;
>  	wait_queue_head_t aq_wait_queue;
> +	bool fw_empr_disabled;
> 
>  	wait_queue_head_t reset_wait_queue;
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index a8909c01bd59..d79578f01d18 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -117,6 +117,8 @@ struct ice_aqc_list_caps_elem {
>  #define ICE_AQC_CAPS_NET_VER				0x004C
>  #define ICE_AQC_CAPS_PENDING_NET_VER			0x004D
>  #define ICE_AQC_CAPS_RDMA				0x0051
> +#define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
> +#define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
>  #define ICE_AQC_CAPS_NVM_MGMT				0x0080
> 
>  	u8 major_ver;
> @@ -1424,6 +1426,11 @@ struct ice_aqc_nvm {
>  #define ICE_AQC_NVM_REVERT_LAST_ACTIV	BIT(6) /* Write Activate only */
>  #define ICE_AQC_NVM_ACTIV_SEL_MASK	ICE_M(0x7, 3)
>  #define ICE_AQC_NVM_FLASH_ONLY		BIT(7)
> +#define ICE_AQC_NVM_RESET_LVL_M		ICE_M(0x3, 0) /* Write
> reply only */
> +#define ICE_AQC_NVM_POR_FLAG		0
> +#define ICE_AQC_NVM_PERST_FLAG		1
> +#define ICE_AQC_NVM_EMPR_FLAG		2
> +#define ICE_AQC_NVM_EMPR_ENA		BIT(0) /* Write Activate reply only
> */
>  	__le16 module_typeid;
>  	__le16 length;
>  #define ICE_AQC_NVM_ERASE_LEN	0xFFFF
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 3ab115c3bdf9..53c2fdc909ce 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2067,6 +2067,18 @@ ice_parse_common_caps(struct ice_hw *hw, struct
> ice_hw_common_caps *caps,
>  		ice_debug(hw, ICE_DBG_INIT, "%s: max_mtu = %d\n",
>  			  prefix, caps->max_mtu);
>  		break;
> +	case ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE:
> +		caps->pcie_reset_avoidance = (number > 0);
> +		ice_debug(hw, ICE_DBG_INIT,
> +			  "%s: pcie_reset_avoidance = %d\n", prefix,
> +			  caps->pcie_reset_avoidance);
> +		break;
> +	case ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT:
> +		caps->reset_restrict_support = (number == 1);
> +		ice_debug(hw, ICE_DBG_INIT,
> +			  "%s: reset_restrict_support = %d\n", prefix,
> +			  caps->reset_restrict_support);
> +		break;
>  	default:
>  		/* Not one of the recognized common capabilities */
>  		found = false;
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
> b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index c64286aad7be..80e4a747b220 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -370,8 +370,98 @@ static int ice_devlink_info_get(struct devlink *devlink,
>  	return err;
>  }
> 
> +/**
> + * ice_devlink_reload_down - Start reload
> + * @devlink: pointer to the devlink instance to reload
> + * @netns_change: if true, the network namespace is changing
> + * @action: the action to perform. Must be
> DEVLINK_RELOAD_ACTION_FW_ACTIVATE
> + * @limit: limits on what reload should do, such as not resetting
> + * @extack: netlink extended ACK structure
> + *
> + * Command issued by devlink core to perform a reload. This driver only
> + * supports firmware activation.
> + */
> +static int
> +ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
> +			enum devlink_reload_action action,
> +			enum devlink_reload_limit limit,
> +			struct netlink_ext_ack *extack)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_hw *hw = &pf->hw;
> +	u8 pending;
> +	int err;
> +
> +	err = ice_get_pending_updates(pf, &pending, extack);
> +	if (err)
> +		return err;
> +
> +	if (!pending) {
> +		NL_SET_ERR_MSG_MOD(extack, "No pending firmware update");
> +		return -ECANCELED;
> +	}
> +
> +	if (pf->fw_empr_disabled) {
> +		NL_SET_ERR_MSG_MOD(extack, "EMP reset is not available. To
> activate firmware, a reboot or power cycle is needed\n");
> +		return -ECANCELED;
> +	}
> +
> +	dev_dbg(dev, "Issuing device EMP reset to activate firmware\n");
> +
> +	err = ice_aq_nvm_update_empr(hw);
> +	if (err) {
> +		dev_err(dev, "Failed to trigger EMP device reset to reload
> firmware, err %d aq_err %s\n",
> +			err, ice_aq_str(hw->adminq.sq_last_status));
> +		NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device
> reset to reload firmware");
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_reload_up - Finish reload
> + * @devlink: pointer to the devlink instance reloading
> + * @action: the action requested
> + * @limit: limits imposed by userspace, such as not resetting
> + * @actions_performed: on return, indicate what actions actually performed
> + * @extack: netlink extended ACK structure
> + *
> + * Complete a reload, such as waiting for the driver to come back up. The ice
> + * driver only supports firmware activation, which requires a device reset.
> + */
> +static int
> +ice_devlink_reload_up(struct devlink *devlink,
> +		      enum devlink_reload_action action,
> +		      enum devlink_reload_limit limit,
> +		      u32 *actions_performed,
> +		      struct netlink_ext_ack *extack)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	int err;
> +
> +	*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
> +
> +	err = ice_wait_for_reset(pf, 20 * HZ);
> +	if (err) {
> +		NL_SET_ERR_MSG_MOD(extack, "Device still resetting");
> +		return err;
> +	}
> +
> +	/* After a device reset is complete, we no longer know whether the EMP
> +	 * reset is restricted.
> +	 */
> +	pf->fw_empr_disabled = false;
> +
> +	return 0;
> +}
> +
>  static const struct devlink_ops ice_devlink_ops = {
>  	.supported_flash_update_params =
> DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
> +	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
> +	.reload_down = ice_devlink_reload_down,
> +	.reload_up = ice_devlink_reload_up,
>  	.eswitch_mode_get = ice_eswitch_mode_get,
>  	.eswitch_mode_set = ice_eswitch_mode_set,
>  	.info_get = ice_devlink_info_get,
> @@ -516,6 +606,7 @@ void ice_devlink_register(struct ice_pf *pf)
>  	struct device *dev = ice_pf_to_dev(pf);
>  	int err;
> 
> +	devlink_set_features(devlink, DEVLINK_F_RELOAD);
>  	devlink_register(devlink);
> 
>  	err = devlink_params_register(devlink, ice_devlink_params,
> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> index 1f8e0e5d5660..e947fd6d8daa 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> @@ -16,6 +16,12 @@ struct ice_fwu_priv {
> 
>  	/* Track which NVM banks to activate at the end of the update */
>  	u8 activate_flags;
> +
> +	/* Track the firmware response of reset level required */
> +	u8 reset_level;
> +
> +	/* Track if EMP reset is available */
> +	u8 empr_available;
>  };
> 
>  /**
> @@ -257,6 +263,7 @@ ice_send_component_table(struct pldmfw *context,
> struct pldmfw_component *compon
>   * @block_size: size of the block to write, up to 4k
>   * @block: pointer to block of data to write
>   * @last_cmd: whether this is the last command
> + * @reset_level: storage for reset level required
>   * @extack: netlink extended ACK structure
>   *
>   * Write a block of data to a flash module, and await for the completion
> @@ -269,7 +276,7 @@ ice_send_component_table(struct pldmfw *context,
> struct pldmfw_component *compon
>  static int
>  ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>  			u16 block_size, u8 *block, bool last_cmd,
> -			struct netlink_ext_ack *extack)
> +			u8 *reset_level, struct netlink_ext_ack *extack)
>  {
>  	u16 completion_module, completion_retval;
>  	struct device *dev = ice_pf_to_dev(pf);
> @@ -335,6 +342,24 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16
> module, u32 offset,
>  		return -EIO;
>  	}
> 
> +	/* For the last command to write the NVM bank, newer versions of
> +	 * firmware indicate the required level of reset to complete
> +	 * activation of firmware. If the firmware supports this, cache the
> +	 * response for indicating to the user later. Otherwise, assume that
> +	 * a full power cycle is required.
> +	 */
> +	if (reset_level && last_cmd && module == ICE_SR_1ST_NVM_BANK_PTR)
> {
> +		if (hw->dev_caps.common_cap.pcie_reset_avoidance) {
> +			*reset_level = (event.desc.params.nvm.cmd_flags &
> +					ICE_AQC_NVM_RESET_LVL_M);
> +			dev_dbg(dev, "Firmware reported required reset level as
> %u\n",
> +				*reset_level);
> +		} else {
> +			*reset_level = ICE_AQC_NVM_POR_FLAG;
> +			dev_dbg(dev, "Firmware doesn't support indicating
> required reset level. Assuming a power cycle is required\n");
> +		}
> +	}
> +
>  	return 0;
>  }
> 
> @@ -345,6 +370,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module,
> u32 offset,
>   * @component: the name of the component being updated
>   * @image: buffer of image data to write to the NVM
>   * @length: length of the buffer
> + * @reset_level: storage for reset level required
>   * @extack: netlink extended ACK structure
>   *
>   * Loop over the data for a given NVM module and program it in 4 Kb
> @@ -357,7 +383,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module,
> u32 offset,
>   */
>  static int
>  ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
> -		     const u8 *image, u32 length,
> +		     const u8 *image, u32 length, u8 *reset_level,
>  		     struct netlink_ext_ack *extack)
>  {
>  	struct device *dev = ice_pf_to_dev(pf);
> @@ -391,7 +417,8 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module,
> const char *component,
>  		memcpy(block, image + offset, block_size);
> 
>  		err = ice_write_one_nvm_block(pf, module, offset, block_size,
> -					      block, last_cmd, extack);
> +					      block, last_cmd, reset_level,
> +					      extack);
>  		if (err)
>  			break;
> 
> @@ -507,6 +534,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module,
> const char *component,
>   * ice_switch_flash_banks - Tell firmware to switch NVM banks
>   * @pf: Pointer to the PF data structure
>   * @activate_flags: flags used for the activation command
> + * @empr_available: on return, indicates of EMP reset is available
>   * @extack: netlink extended ACK structure
>   *
>   * Notify firmware to activate the newly written flash banks, and wait for the
> @@ -514,8 +542,9 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module,
> const char *component,
>   *
>   * Returns: zero on success or an error code on failure.
>   */
> -static int ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
> -				  struct netlink_ext_ack *extack)
> +static int
> +ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
> +		       u8 *empr_available, struct netlink_ext_ack *extack)
>  {
>  	struct device *dev = ice_pf_to_dev(pf);
>  	struct ice_rq_event_info event;
> @@ -550,6 +579,23 @@ static int ice_switch_flash_banks(struct ice_pf *pf, u8
> activate_flags,
>  		return -EIO;
>  	}
> 
> +	/* Newer versions of firmware have support to indicate whether an EMP
> +	 * reset to reload firmware is available. For older firmware, EMP
> +	 * reset is always available.
> +	 */
> +	if (empr_available) {
> +		if (hw->dev_caps.common_cap.reset_restrict_support) {
> +			*empr_available = (event.desc.params.nvm.cmd_flags &
> +					   ICE_AQC_NVM_EMPR_ENA);
> +			dev_dbg(dev, "Firmware indicated that EMP reset is
> %s\n",
> +				*empr_available ?
> +				"available" : "not available");
> +		} else {
> +			*empr_available = true;
> +			dev_dbg(dev, "Firmware does not support restricting
> EMP reset availability\n");
> +		}
> +	}
> +
>  	return 0;
>  }
> 
> @@ -573,6 +619,7 @@ ice_flash_component(struct pldmfw *context, struct
> pldmfw_component *component)
>  	struct netlink_ext_ack *extack = priv->extack;
>  	struct ice_pf *pf = priv->pf;
>  	const char *name;
> +	u8 *reset_level;
>  	u16 module;
>  	u8 flag;
>  	int err;
> @@ -581,16 +628,19 @@ ice_flash_component(struct pldmfw *context, struct
> pldmfw_component *component)
>  	case NVM_COMP_ID_OROM:
>  		module = ICE_SR_1ST_OROM_BANK_PTR;
>  		flag = ICE_AQC_NVM_ACTIV_SEL_OROM;
> +		reset_level = NULL;
>  		name = "fw.undi";
>  		break;
>  	case NVM_COMP_ID_NVM:
>  		module = ICE_SR_1ST_NVM_BANK_PTR;
>  		flag = ICE_AQC_NVM_ACTIV_SEL_NVM;
> +		reset_level = &priv->reset_level;
>  		name = "fw.mgmt";
>  		break;
>  	case NVM_COMP_ID_NETLIST:
>  		module = ICE_SR_NETLIST_BANK_PTR;
>  		flag = ICE_AQC_NVM_ACTIV_SEL_NETLIST;
> +		reset_level = NULL;
>  		name = "fw.netlist";
>  		break;
>  	default:
> @@ -610,7 +660,8 @@ ice_flash_component(struct pldmfw *context, struct
> pldmfw_component *component)
>  		return err;
> 
>  	return ice_write_nvm_module(pf, module, name, component-
> >component_data,
> -				    component->component_size, extack);
> +				    component->component_size, reset_level,
> +				    extack);
>  }
> 
>  /**
> @@ -628,9 +679,48 @@ static int ice_finalize_update(struct pldmfw *context)
>  	struct ice_fwu_priv *priv = container_of(context, struct ice_fwu_priv,
> context);
>  	struct netlink_ext_ack *extack = priv->extack;
>  	struct ice_pf *pf = priv->pf;
> +	struct devlink *devlink;
> +	int err;
> 
>  	/* Finally, notify firmware to activate the written NVM banks */
> -	return ice_switch_flash_banks(pf, priv->activate_flags, extack);
> +	err = ice_switch_flash_banks(pf, priv->activate_flags,
> +				     &priv->empr_available, extack);
> +	if (err)
> +		return err;
> +
> +	devlink = priv_to_devlink(pf);
> +
> +	/* If the required reset is EMPR, but EMPR is disabled, report that
> +	 * a reboot is required instead.
> +	 */
> +	if (priv->reset_level == ICE_AQC_NVM_EMPR_FLAG &&
> +	    !priv->empr_available) {
> +		dev_dbg(ice_pf_to_dev(pf), "Firmware indicated EMP reset as
> sufficient, but EMP reset is disabled\n");
> +		priv->reset_level = ICE_AQC_NVM_PERST_FLAG;
> +	}
> +
> +	switch (priv->reset_level) {
> +	case ICE_AQC_NVM_EMPR_FLAG:
> +		devlink_flash_update_status_notify(devlink,
> +						   "Activate new firmware by
> devlink reload",
> +						   NULL, 0, 0);
> +		break;
> +	case ICE_AQC_NVM_PERST_FLAG:
> +		devlink_flash_update_status_notify(devlink,
> +						   "Activate new firmware by
> rebooting the system",
> +						   NULL, 0, 0);
> +		break;
> +	case ICE_AQC_NVM_POR_FLAG:
> +	default:
> +		devlink_flash_update_status_notify(devlink,
> +						   "Activate new firmware by
> power cycling the system",
> +						   NULL, 0, 0);
> +		break;
> +	}
> +
> +	pf->fw_empr_disabled = !priv->empr_available;
> +
> +	return 0;
>  }
> 
>  static const struct pldmfw_ops ice_fwu_ops = {
> @@ -642,25 +732,22 @@ static const struct pldmfw_ops ice_fwu_ops = {
>  };
> 
>  /**
> - * ice_cancel_pending_update - Cancel any pending update for a component
> + * ice_get_pending_updates - Check if the component has a pending update
>   * @pf: the PF driver structure
> - * @component: if not NULL, the name of the component being updated
> - * @extack: Netlink extended ACK structure
> + * @pending: on return, bitmap of updates pending
> + * @extack: Netlink extended ACK
>   *
> - * Cancel any pending update for the specified component. If component is
> - * NULL, all device updates will be canceled.
> + * Check if the device has any pending updates on any flash components.
>   *
> - * Returns: zero on success, or a negative error code on failure.
> + * Returns: zero on success, or a negative error code on failure. Updates
> + * pending with the bitmap of pending updates.
>   */
> -static int
> -ice_cancel_pending_update(struct ice_pf *pf, const char *component,
> -			  struct netlink_ext_ack *extack)
> +int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
> +			    struct netlink_ext_ack *extack)
>  {
> -	struct devlink *devlink = priv_to_devlink(pf);
>  	struct device *dev = ice_pf_to_dev(pf);
>  	struct ice_hw_dev_caps *dev_caps;
>  	struct ice_hw *hw = &pf->hw;
> -	u8 pending = 0;
>  	int err;
> 
>  	dev_caps = kzalloc(sizeof(*dev_caps), GFP_KERNEL);
> @@ -679,23 +766,53 @@ ice_cancel_pending_update(struct ice_pf *pf, const
> char *component,
>  		return err;
>  	}
> 
> +	*pending = 0;
> +
>  	if (dev_caps->common_cap.nvm_update_pending_nvm) {
>  		dev_info(dev, "The fw.mgmt flash component has a pending
> update\n");
> -		pending |= ICE_AQC_NVM_ACTIV_SEL_NVM;
> +		*pending |= ICE_AQC_NVM_ACTIV_SEL_NVM;
>  	}
> 
>  	if (dev_caps->common_cap.nvm_update_pending_orom) {
>  		dev_info(dev, "The fw.undi flash component has a pending
> update\n");
> -		pending |= ICE_AQC_NVM_ACTIV_SEL_OROM;
> +		*pending |= ICE_AQC_NVM_ACTIV_SEL_OROM;
>  	}
> 
>  	if (dev_caps->common_cap.nvm_update_pending_netlist) {
>  		dev_info(dev, "The fw.netlist flash component has a pending
> update\n");
> -		pending |= ICE_AQC_NVM_ACTIV_SEL_NETLIST;
> +		*pending |= ICE_AQC_NVM_ACTIV_SEL_NETLIST;
>  	}
> 
>  	kfree(dev_caps);
> 
> +	return 0;
> +}
> +
> +/**
> + * ice_cancel_pending_update - Cancel any pending update for a component
> + * @pf: the PF driver structure
> + * @component: if not NULL, the name of the component being updated
> + * @extack: Netlink extended ACK structure
> + *
> + * Cancel any pending update for the specified component. If component is
> + * NULL, all device updates will be canceled.
> + *
> + * Returns: zero on success, or a negative error code on failure.
> + */
> +static int
> +ice_cancel_pending_update(struct ice_pf *pf, const char *component,
> +			  struct netlink_ext_ack *extack)
> +{
> +	struct devlink *devlink = priv_to_devlink(pf);
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_hw *hw = &pf->hw;
> +	u8 pending;
> +	int err;
> +
> +	err = ice_get_pending_updates(pf, &pending, extack);
> +	if (err)
> +		return err;
> +
>  	/* If the flash_update request is for a specific component, ignore all
>  	 * of the other components.
>  	 */
> @@ -730,10 +847,15 @@ ice_cancel_pending_update(struct ice_pf *pf, const
> char *component,
>  	}
> 
>  	pending |= ICE_AQC_NVM_REVERT_LAST_ACTIV;
> -	err = ice_switch_flash_banks(pf, pending, extack);
> +	err = ice_switch_flash_banks(pf, pending, NULL, extack);
> 
>  	ice_release_nvm(hw);
> 
> +	/* Since we've canceled the pending update, we no longer know if EMP
> +	 * reset is restricted.
> +	 */
> +	pf->fw_empr_disabled = false;
> +
>  	return err;
>  }
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h
> b/drivers/net/ethernet/intel/ice/ice_fw_update.h
> index be6d222124f2..750574885716 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
> @@ -7,5 +7,7 @@
>  int ice_devlink_flash_update(struct devlink *devlink,
>  			     struct devlink_flash_update_params *params,
>  			     struct netlink_ext_ack *extack);
> +int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
> +			    struct netlink_ext_ack *extack);
> 
>  #endif
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> index b8644adfba78..669702b16ef5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -278,6 +278,10 @@ struct ice_hw_common_caps {
>  #define ICE_NVM_PENDING_NETLIST			BIT(2)
>  	bool nvm_unified_update;
>  #define ICE_NVM_MGMT_UNIFIED_UPD_SUPPORT	BIT(3)
> +	/* PCIe reset avoidance */
> +	bool pcie_reset_avoidance; /* false: not supported, true: supported */
> +	/* Post update reset restriction */
> +	bool reset_restrict_support; /* false: not supported, true: supported */
>  };
> 
>  /* IEEE 1588 TIME_SYNC specific info */
> --
> 2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
