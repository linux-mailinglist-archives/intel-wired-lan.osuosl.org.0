Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E810250DDDA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 12:28:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8181A81902;
	Mon, 25 Apr 2022 10:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W5HvBAPX-x36; Mon, 25 Apr 2022 10:28:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65797817A4;
	Mon, 25 Apr 2022 10:28:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A56551BF282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 10:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DE0A40498
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 10:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QvHBbLOxIKm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 10:27:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB48E40278
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 10:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650882478; x=1682418478;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sBt/pnTVJcLnRlmC1SGJTRs9oQFhkbVh8gylAgZzLXM=;
 b=bvC/SyBdbwi/7yRrGOq7Zld4BedByu55SYXRGUUPG9rCPstE/QLNNOdB
 XddNciXV6AnQkU/iHAgr0lAM2bD0feI+7lGkyl+Agg5/VnCwGea2VYXTt
 pTmnNcfXxGtJnMB4pS5RIUtn65bAjZHPeJ+OclIZYGz6prONhf7jBn5wk
 gN6blP1CQJFxRztSmdirEytWjIPcc2nBeungXNnr81MqByYEIcTXfNWTN
 1IqEqpIkgCDsk7dVru4QL9nbv6Lk/WMizTTHX4CDMBarxfPLH6bSLtBdp
 DQTlIgM3U9A0sNJ/95goZplVOwV1aFCAF8caBkAtuwo7Iuba9mnyRY7rH w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="265374717"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="265374717"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 03:27:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="676808689"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 25 Apr 2022 03:27:57 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 03:27:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 03:27:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 25 Apr 2022 03:27:56 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Apr 2022 03:27:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2aUYxEWz0cAmfMkQJ6vcbMioXjowFTZYqd+NJdA6NMUAdvhJbIJWe6QqD25JGbsaUEfCdaIe7Je2nLhkygVQkvSiqqY8mQlMwTO4VQ+W93kOEwd2rN2Q2yaZyxvujuvSmNE2oq6O0KCCZ4D2o72ViRi8upBxdN6Y6OMDIAAX0GPX43UMB6z4ktnQV7bpgs3mvglixQr3/F8GWGd/WgrJ9OoIXoLcq45KlNNhIzoS/tovgnol2UzU1bVyoRV8SK7cJp69X/SbZasvXr2oCW7uDSYgwbGf/a83p+o1aGStfJRvxb0ra+lPb77q6Op+78rSBiUVok9g7eIHixhQFwXNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2t+TlNkFg37ITvNX1cn8hkbydUq3s8toiSg5jYm35c0=;
 b=jMgxqh+hXEnPniJxISORW6jF1K3KfMsZonqXydpQ9P2snaEEvCk6iRlRG1sJ0mORwbpViK2FwdZuyU++ak/vTCdoOXQN/WAnz5TNtGeqPgZiaz9rUOsMwOqO9K6JS7Av0TBjAXJs8d0Sv0qnpAPUXRg+awopuBqaKTGy0d7HELE14ltQg7Z6iv3J+XyRoVHUoYCDpW/aOP9y417MFrfA53ag+4zM9d2QSNNir0YBEQqnMxBzsn/RT3/cOWRJiESp2eWgzwI3BkYD5OIcUXEjXMztdb4t2Z6leN0dfEaWRtbRWRbJ9Ak6QX+4Qpx6T9+MCc2h/fnnpsje1d7M5QT9sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1966.namprd11.prod.outlook.com (2603:10b6:300:10f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.17; Mon, 25 Apr
 2022 10:27:54 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b%4]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 10:27:54 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: get switch id on
 switchdev devices
Thread-Index: AQHYVKkZBG9jOSDniEyJ2eyljZFeeq0AdLgA
Date: Mon, 25 Apr 2022 10:27:54 +0000
Message-ID: <MW3PR11MB45540269C45946FBC1835CBC9CF89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220420112243.142168-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20220420112243.142168-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14879bbd-2528-486a-2e58-08da26a6422a
x-ms-traffictypediagnostic: MWHPR11MB1966:EE_
x-microsoft-antispam-prvs: <MWHPR11MB196670B783E680B1BA0068699CF89@MWHPR11MB1966.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GscIMzSX8droW97k0PEzdDeeYhcHIn0YWMiN5T0kfL5r+1KUskYawOn8ncXmVh06+tHlpGP75HZZqAhFmVqrv3TOchP3jZMi6UwpS0qqiBtUjSmIt+Zev2Kwr13yw3GR2Ncp1jGO3DshE+ws9Y/34vc/XrQNzCauz+nDA+4aq7NQr9tRbQSQTMBYMwCAB3Di7fKUJEEZGcQH8JWn31K1fmGKiAMSeriUJvhuC1Dp5WSwjCwH60xikC5Q8Wym04/k1i28F5rVfmG7zzKn8u9XwfeBGizgKQ+Y03vTzJIpyRRau43IkYjrjDF5kTbW+MTAnCe5nONeweC9OgHwjDWoDWgn5D3H9NlUKkL4PbYRkpgO++xvJbEe8DqOQWslWKAlswDPG+DZBRtD5UiU6x72M99ia3dUtpFbBBF+W5GAmmhbJHFFhPTQ69D93jXZ2BSRU7B7XjmcIDCa6H8W8lRPXr9+87bqfGjheh4VGnOP0snsNZb+m6DgU8P4Ri3Z2NhflsDt5SWWith4vxZgM0Eswpyt3JxsslVCxNIK4c+x7xO6UqK2mzJuB3oGz+aCmKo9tK5dfstWk75+QyxTrqzFTl+EQKNg4REi/ymOKa96jIVYkKCw32kl6cszvdcMyaw9Zw2IaHD9nWOfM65Ga/UcsP1Sov5FEltZF5OJLsjA/AQLo4XZ3lO0H+9IEQw3E0Sk9E5j6YrZzi/ym3DXv5585g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(66556008)(66476007)(66446008)(64756008)(186003)(8676002)(38100700002)(38070700005)(26005)(6506007)(9686003)(316002)(7696005)(5660300002)(76116006)(122000001)(86362001)(33656002)(110136005)(55016003)(2906002)(82960400001)(83380400001)(508600001)(71200400001)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8xYbq/taqoPagGVpUtUMSddiOWDoPcmCvPRrq8WT2D339Ac67OLhJG54QQuR?=
 =?us-ascii?Q?XnP64A/anfaftKpLkmtl+qWeZ3/Dxh/H3jWV7Rq42tF38GKHzkhyFV7QLyVi?=
 =?us-ascii?Q?3UmjuuG/Rn9/xKGK/usaRqIfAHxcXtJepT/MJqXUqKe1C4w1N6t0phuWzybv?=
 =?us-ascii?Q?yY9IY/0caTe1ajrlDoH7Ejr+PAyt6uIRAExZoX6zSnh6/2AuMCEqGFhmeIBK?=
 =?us-ascii?Q?BcIl4xZWV8PZE26OUB/kIyfzkIngDEa7FPxQouDlbahEFewIy77taK3iMaQh?=
 =?us-ascii?Q?IDMz+bGeZz3MBrSGUREx4KwSev4uRMUxwwe6VGX1PnNFlYklQ7OZxZidL/o2?=
 =?us-ascii?Q?GJBPmobfGn2StHg34fqVpqtes2TmY/N093YaFccbtnfs7uXSjq+1fL29Ya8I?=
 =?us-ascii?Q?Y/x1k73f8j+A2wH8v+Fu/VjwQ2L3J3QkXumsHh7vw5syCTwrKstTwnJ04Zzb?=
 =?us-ascii?Q?3IcNFmbe7vJLbjaDYfOxB3Hwv6LoHGNaEjTQvTVIDV2r3hi9/Jof+nI5Dylg?=
 =?us-ascii?Q?RjifRUdpo4nR/7sEsTYoqzXzZw5sm4VTW7/v0l7CVo0dnSby5YqQXL2KNaiK?=
 =?us-ascii?Q?87apVZodoHIHvb7vCeII2GGDJ0ThdwmHLHN6BjPsq3ClUyP1fHjkDGgrIVSv?=
 =?us-ascii?Q?7590Sw4aepeWQOMtK+r4I6iLgaRGJuTCUsUa88yrdXUfklU8qV1AEbAiNcfN?=
 =?us-ascii?Q?cCsUUDrEjK4U3VPpRJobnrcehqMwdeFrGzknf+3WyxGm125ifKra1/jQLtoK?=
 =?us-ascii?Q?WUdKHMNP8gTTMXAN6Ui4XrYDc6A1DzvpHXEjGeOZF1HMtN2qQ//J/ep0q2Qn?=
 =?us-ascii?Q?61I4K3n36hVSji4B7i45l8bNhfZqGStxMeLhso3z9ST7/lI7TkWHx6AvAs4X?=
 =?us-ascii?Q?Wkk37tWHqk4TeoITw4akeFtWO2sos9k1KfDSCoQIOaG5RYDwK6KtSpActyHJ?=
 =?us-ascii?Q?JfobZscWMZhiMqm1dHUWvN6Iqc5YwIlJCHMdWFmxbkdni9+CizbW/EB3618F?=
 =?us-ascii?Q?OstXVGgRIcbquv77cldBowtYQWhMBapxIhj7g385WI58OTB3eE6N+wQp0uGE?=
 =?us-ascii?Q?jnDr5PQYDtK4YqR13horRlM0xZkERKyebkXdGLHoybBdF08nDPw0RRobOuHO?=
 =?us-ascii?Q?EsALVF+36hbN8quBW0QBbPVLM2oxjwFxcrJoIszOayMR7MHL3UoiislnUFk0?=
 =?us-ascii?Q?w0vXTQo+KJsPDLs2RJ2yaYG2U9sI1GohLpGzfdSHGIqc6Lh3plOkBpA9PRyV?=
 =?us-ascii?Q?lu0WgDZ36SIW3J4tdd9PZyP+7quTfJJR42Gfuz6VmxSAtkr8E4xRjcLz7Siq?=
 =?us-ascii?Q?kVlD9p+3AuyvCBY3x0YJKy6wVwV5U+UMlZobQnByNdNrcu+GYDoqyxtDo7SY?=
 =?us-ascii?Q?5nrAIWgZ+90nYVj6sV4Z1OGzQ6C2l61DgqxIpENK9HQ4qrNAb6uBDxzxl2tV?=
 =?us-ascii?Q?e+huTHpYJEnwe9qNbu+9xf5c+U2R5wgEXmFx2HswqyR65OuLnBy2kGDgbq31?=
 =?us-ascii?Q?0Zv+I/AJCQbAC7HwyhSUmxjWtPKiwVM2joHfjyfuPztp/FHNtnFLJkJLAaI+?=
 =?us-ascii?Q?gFmDAjmVIshnP8scOyS0igw33CkX8C8AzMFsB3Z4rl750QFN6tW1rA+fe9lD?=
 =?us-ascii?Q?3LMGiqHlM4CMyr8/WHW1pcV6HICKDD7sSLQaMyXa+Q7vJyeos5skloGCeFDo?=
 =?us-ascii?Q?Iu1/Hl3VErY5DiA1bHih0r2T3mAD6JtKsRgAiKFcXdg6iGsjUchXm576WlWy?=
 =?us-ascii?Q?mn0Gb7pcJKToOrE8NdZ4cCKBOCDZ4lI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14879bbd-2528-486a-2e58-08da26a6422a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2022 10:27:54.2521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cf8pfJB1ckVffZj1hHK6LTTNy8pEDv1DdQUWiWnVTn5PijU1gV7ACS4g/fzi3iBRQXSJqh4xIAqhjRUoiEqduxn/+ko/4F2X7zFC1lk3zDY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: get switch id on
 switchdev devices
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
>Marcin Szycik
>Sent: Wednesday, April 20, 2022 4:53 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: get switch id on switchdev
>devices
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>Switch id should be the same for each netdevice on a driver.
>The id must be unique between devices on the same system, but does not
>need to be unique between devices on different systems.
>
>The switch id is used to locate ports on a switch and to know if aggregated
>ports belong to the same switch.
>
>To meet this requirements, use pci_get_dsn as switch id value, as this is
>unique value for each devices on the same system.
>
>Implementing switch id is needed by automatic tools for kubernetes.
>
>Set switch id by setting devlink port attribiutes and calling
>devlink_port_attrs_set while creating pf (for uplink) and vf (for representator)
>devlink port.
>
>To get switch id (in switchdev mode):
>cat /sys/class/net/$PF0/phys_switch_id
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_devlink.c | 22 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_main.c    | 15 +++++++++++++
> 2 files changed, 37 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
