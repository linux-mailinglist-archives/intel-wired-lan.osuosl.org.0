Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC9F4B8322
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 09:42:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 493D841615;
	Wed, 16 Feb 2022 08:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UaZ46eyT_dBY; Wed, 16 Feb 2022 08:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42DA541604;
	Wed, 16 Feb 2022 08:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6171BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 08:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72F0341604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 08:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P68aMYuGsEKr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 08:42:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31090415BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 08:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645000952; x=1676536952;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c5cUSest8lhQHEu+bxchkV5fiEnIGqlb80V+xk/iz14=;
 b=R+++XyVH8eg906sSpvoC/B5poyHGpVVaZG4yG6uQg3guAsEDsrGXEH+4
 UG7yTJhhaRLQaOn7EbOdWe9Hg7Yg++G/cAHMFoB+neZJY5Q7JcA8C0MpI
 xCbtDF5JgG7CE+90VUDGWw7aSYVclTlbkSnnc6WvmOFoHyKy+IQa6DtxZ
 pbzSDGQGyN/+KqTz32BhSQuAvFtmcKShBlORuNBXBSuvbNEm7cB6Swx7n
 PelmgHBk3pR7CUP8o0jKhiK12Fkl6Bt5oOL7EPZfZzjuQrOGIEtwN3IK2
 gDcMaIcYU6Mc8nSv6+3AA6ILpWPtpdhW8MFtvqu/8zkhIQPoix6iuoKZw Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250292105"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="250292105"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 00:42:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="633414059"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2022 00:42:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 00:42:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 00:42:30 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 16 Feb 2022 00:42:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 16 Feb 2022 00:42:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3MxtnAoeYmfmDTEv9MaJ4XUJgugfH4FAN8i+U6ckdV9krPydSzkvel94lNMU+ukqNDlHCC8MqDtV4N18pAtBOOGinKSbMsU7Nwt+MRz3MEEsI8mBZWwZsFADM+L+jgqjxYlqRNXVEwdGU3BMsoGQhn0pdE8Ssq5vsPzIz1KBmcqNnBh4XXywY6ImvNLNS0tkB1jE+pwwh3eGpYUWXxpSMDSbVLRrkp6e5c5XVDg4LVDHIDp56SZuM6dfp6rRV2L1bzWmRldEbGJ6cXpPaU5TcfpbvpA0BvfFcq1MSnsSc8X0m+rsl75tOVeN2wOiRTRy6pEPJQFhp2x3Z6IZbFttQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0ETk1jaKMQaUF9rC3rUCNyr6eNhluDpaGcLO1kDxEU=;
 b=gdbONW1GOkA8dEmNBSbZzyGB2bNmJOMOAvR8GrpZgy/alv4C8jrVbmzYgXViC596cEKfk6CprjVSInfe/1zB48xirwKjfDCIkPkm69Mp6Ou4BbQxPAwnCgFuUjWWFL7IRWQ5fgDvBl6YmX/ieHlczrq+GVJBdYu18GEOXFu5lGqL11NAblBfic7hWmaf5Q2mKcTbZXHJntSGoDImUc7pbqSkAsMU1QNLG97BkHcwvJVpCz47C/BgSF03YH5JaHxGSLdHT9rHw/Gv6pw2yro3AUfwB+BOAUmbXTPWiy6cD8/wq7jTaAeOZm9DO/3W6TVxARl2EMJE7bTS2EjTcALQXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4975.15; Wed, 16 Feb 2022 08:42:28 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%7]) with mapi id 15.20.4995.016; Wed, 16 Feb 2022
 08:42:28 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: fix concurrent reset and removal
 of VFs
Thread-Index: AQHYHFBHF7ZlnkbYZ06rHYRlDAqolKyV6Xlg
Date: Wed, 16 Feb 2022 08:42:28 +0000
Message-ID: <DM8PR11MB56212493571FC633D8ADFC7EAB359@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220207182329.2078272-1-jacob.e.keller@intel.com>
In-Reply-To: <20220207182329.2078272-1-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20f69808-9c62-4c20-d106-08d9f128438f
x-ms-traffictypediagnostic: DM6PR11MB3994:EE_
x-microsoft-antispam-prvs: <DM6PR11MB3994800D061F1461052EF268AB359@DM6PR11MB3994.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: goOz8yXvFSVE8ZoXBkumxyQAaYKatxcCJanmlYeI2ZisuxBpR6dGqm6bjtCyS8Wgc3EUqoGp6CTfy22Clfnl3Ljv7Vsf68Z8B4sz57UrSQNcR85H0n9LCYx4+rA+jVYRYX6G7atOry3zK7zp9vv2lx9gVCy+56OwYkYEWd4TU3RbMMJtrTn7vD5pxFWZIfhN7zNRPibB42qbpapp6FncBGpq7Io8WC+hV1FFMJcpFSCDzrtHpTcMTg2D1sk0/2W/QHU4PRx5HfsnYC02blbLvM/Iq+thzCUD82eXEav5vWM9YELe+8gJmDGRtpUETKGvP9zhDphlElXidkYpSqH7aiJL03pxOopyl4x5b61FnJN9oKmPXIs4i6z73WS9hUi3l1d+2tlQ+kYtRDHmiImmYS4sClGZUlxX+fqQErHoG8KxKuP3s4FS0XAES2qhgL7ijyHkk+m0vbCtpPB8mxuCQkkpcm0OfQE9Je5s/dSJv5GiWxwN/b6zQZSgH2OT/bghE9pwz7t5H6IH+nLKgNess1v9bN20RRQQVSSPf6+hJsZtndfvwNwIafP2mXi/3VDzQ54GBhyjAceuykikR1/AfoSPPKzh0K798LlPkNAWOVFqVa0bAIrdmizW6mArxyZrU5oVzrzMtYM71RpShfer7uflFm1cslyIFADVl9tjK4sbepC2f9eB7autRp76GqquWyYi42wZCgM2ROUbGaVp7Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(110136005)(55016003)(38100700002)(76116006)(8936002)(66946007)(66476007)(66556008)(82960400001)(66446008)(64756008)(122000001)(38070700005)(33656002)(8676002)(508600001)(52536014)(7696005)(2906002)(53546011)(5660300002)(6506007)(83380400001)(9686003)(86362001)(186003)(26005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E/rLw4jb4PfYb2V1qWyq3cNEsZsT/aGY1ZxkEUu2xZ3v2E23ZZoKh7byU5Ag?=
 =?us-ascii?Q?1xyx4vaFL6Vgn9bHMegA+zZM5/y4GzNoFRDNJifirTf+KH83lEggdOFT4B68?=
 =?us-ascii?Q?8SmVdPr3iNl38eoh9Q5SFIJhAHHz/92pEXDZdxqIS2Py/FGsrt38ARncr1dc?=
 =?us-ascii?Q?vSeRe1IMfJWg/cu+HuvrUEF4htMPrdz0RoY/96d3yU/s05z9zb5rwcAjxvhN?=
 =?us-ascii?Q?CxcKCRzn4CwTaed0mRYV1Mfe2kpxxjEY2HZoRwT2c6fDJuoU24q+vmxwPV45?=
 =?us-ascii?Q?QxetOYkkexIJXMZ9RG+GbbjDOI/+QzkFD6gfFHdlI7hl3kSkTvreLjpPMnUO?=
 =?us-ascii?Q?penp0TFpeHEb/NE5f/QYUpJvexd+lJZBY/qCaG4JONnJPyw1dMoE/EKhUyX9?=
 =?us-ascii?Q?Ad3/nDQ09x4kh0R+Vp1VulYteYcfi9Mp4bWaWomKXH7k4OU2OF9eh33yodNH?=
 =?us-ascii?Q?fxeV747GgkdeYqticEpO//hZHbzRjBe0T6pygaXTGxbWRtnsidqpiCaL+YZ2?=
 =?us-ascii?Q?QQaTtuoIU4SeHiN5z7WLfrO2eoKaSBzjwYsdlYqscaGWELKJe27E3ePnDwcJ?=
 =?us-ascii?Q?xK5dO7Mg/z2o2xZHPH8Q/BUyUr1cXToJXXpVqUTv1QiRzbTOMBe9EINbYdyQ?=
 =?us-ascii?Q?WaZKExkEp2xiTbTRdvKYg3EwVmF4MMAJRHkfZFVb0NQ/E/cxggXvI1kTllpr?=
 =?us-ascii?Q?Pt8t4u0HaTfK3arNvBSJUQgKSa8Qjgrs7bICU4MgLx+FssVmOKn7YcWyjLZU?=
 =?us-ascii?Q?fLlSkz38hatvJoS+9psLCTKHjduqxIwb8thNFbc5yIV9C5pATTqYDwJ9ot1w?=
 =?us-ascii?Q?GHgeHg0hNblFom3l/0y8vVNo/VvD7eyX2dqpn2zqBueIUMeZw+dIqET54PtI?=
 =?us-ascii?Q?VSJnUZhv8bpuwGrRracXPKGFDiDD3DD9OYLmRoJvaKLgQ1wCmP86Ecbx+InF?=
 =?us-ascii?Q?O7xlvbC8kHnVOtXRbP1cI7VnZqa5Irn8dUiW03tce9kjqChaJ4xmzOmmsTvV?=
 =?us-ascii?Q?eTSpm2G3FrcV5RP7s8nN83c6qvfuyBxcYkVU4hodipSSAmzpPpEAyZ4Q/C2x?=
 =?us-ascii?Q?pH+cY78Z2HG94Y4teWASw756OzgYLa+ekLQMgJI3Mb3BYbx1LRBNQi2GrE+H?=
 =?us-ascii?Q?RJELFGEM0qLgcITadwCCYVYCK1nKvIZzGvB/vAR7DMc8L4IxuxQLjPnhoqou?=
 =?us-ascii?Q?lqqcAtkOeCXu2CzvPmToDJEb/WukoWLmjwTjed/HbzgX2DLL/kLHAabHeoU4?=
 =?us-ascii?Q?qKyPl6xlS4ZByK5d2y8DEkjWTyVz2/SNXuI6BuY/TiOw7UviTPWvRCFpv5X8?=
 =?us-ascii?Q?p3V5+BKig/deeE2hsPtKkE3YhDsYXmlesJYiHuqXZm9D+qicEivauFZghzqc?=
 =?us-ascii?Q?rdDt8TIuEXxcqNdg47PbXajSGtVa9jZ0ftgOcpQStvsU/e3OZk+iuqT3EOrd?=
 =?us-ascii?Q?LGL4NQkneuk/5ZXCEo+4ZVKySusAYsTG8XOadG+LrjmTuS6f4Z23mXtTY6RX?=
 =?us-ascii?Q?mrXvdGgLxVwTo3sSOkXCwRUtHQgi5Xp6Bdf1ElMkZ2ASPI/OK8bYd+2S97kN?=
 =?us-ascii?Q?OYEqWTrAtU5YdBwK6tux2mb7EGb92CoOoUKon5p/AwF04CbKYa8FHM1XCgHr?=
 =?us-ascii?Q?azfGgytqo08IxEVlJBNZXh84cOoWAJF2EKYHhURFGOQHaNn2Gk9UDIJ8Rojx?=
 =?us-ascii?Q?VKdcxg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20f69808-9c62-4c20-d106-08d9f128438f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2022 08:42:28.3807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q6kEkXnP/uEkXiDu/rUOAJuQrcC6/rdcQm4dRbG35ZIt15ejcb57Qog9ipej9GirciCbt6UnlG+c0UDU6VlQ/ut3EIDp40cuwZnsWFsw/DI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3994
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix concurrent reset and removal
 of VFs
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
> Jacob Keller
> Sent: Monday, February 7, 2022 7:23 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH] ice: fix concurrent reset and removal of
> VFs
> 
> Commit c503e63200c6 ("ice: Stop processing VF messages during teardown")
> introduced a driver state flag, ICE_VF_DEINIT_IN_PROGRESS, which is
> intended to prevent some issues with concurrently handling messages from
> VFs while tearing down the VFs.
> 
> This change was motivated by crashes caused while tearing down and
> bringing up VFs in rapid succession.
> 
> It turns out that the fix actually introduces issues with the VF driver caused
> because the PF no longer responds to any messages sent by the VF during its
> .remove routine. This results in the VF potentially removing its DMA memory
> before the PF has shut down the device queues.
> 
> Additionally, the fix doesn't actually resolve concurrency issues within the ice
> driver. It is possible for a VF to initiate a reset just prior to the ice driver
> removing VFs. This can result in the remove task concurrently operating
> while the VF is being reset. This results in similar memory corruption and
> panics purportedly fixed by that commit.
> 
> Fix this concurrency at its root by protecting both the reset and removal
> flows using the existing VF cfg_lock. This ensures that we cannot remove the
> VF while any outstanding critical tasks such as a virtchnl message or a reset
> are occurring.
> 
> This locking change also fixes the root cause originally fixed by commit
> c503e63200c6 ("ice: Stop processing VF messages during teardown"), so we
> can simply revert it.
> 
> Note that I kept these two changes together because simply reverting the
> original commit alone would leave the driver vulnerable to worse race
> conditions.
> 
> Fixes: c503e63200c6 ("ice: Stop processing VF messages during teardown")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 40 +++++++++++--------
>  3 files changed, 25 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index a9fa701aaa95..473b1f6be9de 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
