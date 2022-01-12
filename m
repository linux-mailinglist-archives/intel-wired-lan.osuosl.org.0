Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1FC48C2B2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jan 2022 12:00:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A7C9409A9;
	Wed, 12 Jan 2022 11:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Uz0fhYb2BRR; Wed, 12 Jan 2022 11:00:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26AE84019B;
	Wed, 12 Jan 2022 11:00:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D3581BF32E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 11:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A3136FB90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 11:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ppPVhim6QL4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jan 2022 11:00:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C02B76FB8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 11:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641985227; x=1673521227;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wMneeCz8c8psj+lsMi5hnR1sBgs5tQT4q8NQ8NDS5O0=;
 b=drBa8q4zq1PdjA7ld0f5FHO5AXZSA2C2j2kOzm1lBmwReXa0V0C5BMYf
 ggjCH1bNrjWkNxH1BGcHM5XVF40W/J8mG9zYJKwBIUDveix5+XfI02U4F
 QI8MxpGmUA7pX/ahe/YbdGuu696Gwr6yxlKgcIOjjE4+vf4gKfcphoUiC
 2D13whjf2KNApI8FiYebkTO9sFnMNPSxRNUwsTkNpla3sRvC1w9fPSrYC
 EpehfMCxJx6xp1aa/6Bn2Wen0JDiWVFTsWi7d8rx4cZornDRkGnSlyh4H
 lZ9/uhxQZP5+UiCEEc0flN63CEyI5gFxjk2LErKQB+shUH02p2lIXu6eh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="223690722"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="223690722"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:00:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623400037"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 12 Jan 2022 03:00:26 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 03:00:26 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 03:00:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 12 Jan 2022 03:00:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 12 Jan 2022 03:00:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FzSM8bmn7I96v9eyk0x4vWDPLxHwvd/bzdWITH/pRV++vFOC66Z7PQXfitxHx3in9uxsVLtevfJ48QIu7eMZ0SeN+SDZceMdf094Vq8Oa5Ai5ybw3BANBlV+EwjWEnqJ+GgpablNy2mPeXGTo36S1IWycuTXCYPn4QkjQenaBSjz/T1WuzLZm6FPnOyKNwkBTVs74MrZdL2h6W4OIO2qbWJYMWUQ4+gsNtZeLUNZvF9J8raZ8Hw7LcuKW3Zuzn2tcjqslkvFRnbeLGqWOqEkeeHQ9CrKnCFxYgR44BJtuJzTQdCzZXaHS0lxfby316j5NbG0bwTbAZTG6W2PSvHbFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84uQcB4h9Pp6sbzuqNN98FqCzccL1CQ73j74TPhhNAI=;
 b=Fz2DS9KU8u1Bsw+t7uhOYGSp0azhLuHXepWyok1YyAXil7dEWJyAPd8rqf34hJ2VfxgZ6oRjvkE4d8iYOB7oaXLnsu+A7V5duLVXBPykpvRZWdp8wEumivaghaOFFfYHh7bKBlaVBjzw4EQjQ8rkCJLfQeKaQ/816IJDaG1/ajsJxvHLakfd7/AaPuI5YBpsWFhRt0Rwr8rBkXNLsm9JhWSCjojcHfzIQJJb/UupKQlCfBCFTh7aDYOwoBAKSlzHPzsXAHU5ROToElW6/R3nE6jvtBLSVPFdN2xoVh3UWdazK4YEwW+xPOrYxJ7sLqmAO5wlqIULDLaaxzMvOSwadw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MW3PR11MB4698.namprd11.prod.outlook.com (2603:10b6:303:5a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.9; Wed, 12 Jan 2022 11:00:24 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%5]) with mapi id 15.20.4888.010; Wed, 12 Jan 2022
 11:00:24 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix for failed to init
 adminq while VF reset
Thread-Index: AQHX53MANNbbvBweUEW1C8hCcLdoJqxfeCgQ
Date: Wed, 12 Jan 2022 11:00:24 +0000
Message-ID: <DM8PR11MB562121D9958B6947BF97EECFAB529@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211202115201.1304422-1-karen.sornek@intel.com>
In-Reply-To: <20211202115201.1304422-1-karen.sornek@intel.com>
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
x-ms-office365-filtering-correlation-id: 123bf89a-9743-4fe3-3e7c-08d9d5babc1b
x-ms-traffictypediagnostic: MW3PR11MB4698:EE_
x-microsoft-antispam-prvs: <MW3PR11MB46982E22F5A400BED131E0CEAB529@MW3PR11MB4698.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GwoXvNXgiffJoekM1hVlAOmhD/YKVz2Ip2UnK2YkKBWGcLztlMShs+5xYVWy0sh6c60hDnhY8YgMHe5saY/qoYebXg3Rxi/0ystWAY98sJNslcOYp9yeOro2aZGadMqHtK/aebX5TWduNjh5nrFQsFy0e5D0B/N3k91m652igfGN4zRigV2EpCdFMgLBABS5qZERdb6/nZ9O64em7D57kvRoReRJAyxeCpvzvmU084nG0hIEMvLgJGHozHBJ9JwlEkgeFVfsBMChUoSjaeuxXb/JBHO/+Z31XshXh+M4OrDOfthn0nAksXgpHXxJ1q32gvuupLOEJznrhHJ3oO9KJzJ5oX8btnB2lbFzGNcVVxu6zLe1qDdsTwoM97gstMZzXY8j+MLxQakI4+1Szb/9c7JVLzFuWy6qYZ16abHNBWIYnLOIBCKfzyOysQQi5cAqz7Y+gwt6xXx9aG9QkcBSq4NvxNC7iIQJE8RNiwuYJU6pOrct1lUC6uM86xbEsxKIc9/oovBKEyGbiGVKsGdc5lBc/nj7/PVimxkJn7LEHysvFAr1uySmUqos6NdX7EF9LJSJovCe+55kyNHkD9DS3SwDHRu2gglgCE8ns8MWSnQqAJzSE+Ah9Dz1CDIM5HczqS5QTZzlnRFQ3jjYOKUF8pPuqgsU8/LCvWLv8fEm1ZGzr1P019oXYoJavOfGvw8r/qILR3PH929NJshQZ9At+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(38100700002)(5660300002)(508600001)(8676002)(86362001)(55016003)(82960400001)(316002)(122000001)(186003)(33656002)(110136005)(38070700005)(2906002)(26005)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(6506007)(4326008)(53546011)(83380400001)(9686003)(71200400001)(7696005)(52536014)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a+BAZr5fCxQBKwVYRY7MmGWkkuEOnZMkVYpkn3zkonqs4/obpET15P3ES5B3?=
 =?us-ascii?Q?JZE2XDGxAKGLrUgvO+cntc10kQ1x6hD2I7Tk9J1Vj43iALvOFTvLInSuWUl9?=
 =?us-ascii?Q?xMOc8ZnnInuppo2cHHQovG3Njr63vBLGfFYcPRbKoapDZGrb0R+YrultcYG7?=
 =?us-ascii?Q?FDlbIaPOLzk8HGbS9gfFFJa4G5BVpGDMtfHDTLXhpbCTKCmC44m8T8DclBfB?=
 =?us-ascii?Q?DPEog1ruO60mmx7Q7uaVcyzSw6TVwkFL6tKIYo3jO21EnbrXiFE7g7CMRwxZ?=
 =?us-ascii?Q?5XLLOYt6ojquOgJpuJVd5pn1xvZOA3WGcrwWM/criA3XaCfEOP0qogl5T6Nb?=
 =?us-ascii?Q?J0fU8f8NPhG3Kko+Kvaa+P9kGNXYUkbKZn1DSl+lfpzhaQYwvoos8G/9O9pk?=
 =?us-ascii?Q?TcG5SJ6GcknBfrZxctUKFxvhGpVnpxQJSbbviZX9t14OQaRVw8iuQs8x08If?=
 =?us-ascii?Q?i+PJ2kgSf6phYRMp+oqHELuqzmUricpondAAi3KM1eq3w/5H5u/uyQmQTcLc?=
 =?us-ascii?Q?aYcw5zlQovNkMnSMRVulEtZTr/HY+k2Tb4Y2q/P4UFMCdoMOEN3sd/qBw+3X?=
 =?us-ascii?Q?Yt5HFSXAt9wcCFp9t8P9VYYOtAfKEsJ9z4ywSPNhy3UMXfTpSRUWuk8zbP7g?=
 =?us-ascii?Q?+5yjL+rvKERjWLi1nXyxd+P/SVBYEvmzSxLu/FPSjIQXoZHu0KRWjNaliTUp?=
 =?us-ascii?Q?qkOb4MhPWCT0rNyF7w5tEj0YNjvgymt2T+6R7R1NjV6WoS9eoYJs3mX3O25r?=
 =?us-ascii?Q?V/fZFo6QI50evN0PItuF3QFN6tb7Cm0XEB+O6CxtAo+fp4VZ2yjIXCCZ7NBK?=
 =?us-ascii?Q?hQJqvzQT2SX43E85oknIi5wYwsPruvzH9xtvkuPkJ52wyOJKUJ1JqS6rbMd8?=
 =?us-ascii?Q?AR0EzY287oan65gZa12bd6wLcmStE42t7h5klcTouBvKZ3aeRtsb+QGm2yFJ?=
 =?us-ascii?Q?FkaesQkctcphHulH+W7SXAxTsP40EBpFUKLUwFVI+vGhpDPSGeMRvASNZSfl?=
 =?us-ascii?Q?TigSAKVpw1IRFNxGsKx9GwIhR/D7z2hq8yiqBLv4f6ST5vfRo0gBZNohLd4V?=
 =?us-ascii?Q?3SL/uW3vLPfQnhas6LhqnUsfs1/x+YAWb/1VOVfP+9e6sYhhm+x145rEZBGk?=
 =?us-ascii?Q?58MLhd2cyS2n1Tuwul/Jk+7Kp1nOsCtPmSEF3H4n5vGyql63y7jneiXihUO1?=
 =?us-ascii?Q?2hgUhbhehpKWJcNRqrs4lJtI+V1Plb15SH0buYkifrryd7gfqvnqj73YwGBR?=
 =?us-ascii?Q?FXR0g06z3m/1weyBCnCgdF4u8D78P+TG31WG9Y8QphaTDL6B2+VOfrBTW9uj?=
 =?us-ascii?Q?cjeUFzVVW3CkslNYNz1C5fwPNKvl1WxXm75VeBhuHTAs+rW/hqMxHIDW6s78?=
 =?us-ascii?Q?FARiuaWXKEouzSrBVCjELF+c27dwHHIdAdvnZo47j6Ya5vnScZkS5HjLx9jg?=
 =?us-ascii?Q?+ZbaNPxd0kZHvXV1qhif5JSeQPZfc0WPQ2tcMChfVmsSNHkWZNhvYp3d6R7U?=
 =?us-ascii?Q?x6voszCjLqC5WGzbelhli1TdLDDvkYn5zUGN5sXQvVjolkDpfjM+19Q1cYEg?=
 =?us-ascii?Q?Nzfv/ELTGlJPrW3Vl/336FolzNRIBpR9era0CkEnJIau/tnyutGSEwuvA7O8?=
 =?us-ascii?Q?T72RjLX7gwy8Kf228JPmoCjHwcY/Ck4eOysF/bktrwr/SgEVYzhScWIL0aP4?=
 =?us-ascii?Q?5jpUtw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 123bf89a-9743-4fe3-3e7c-08d9d5babc1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2022 11:00:24.5234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LJaXUDDyeCjVy/FC8phs4Tece7ix1nmBmXUvEzTBW1/Na8wjioB7k38c6THdMD1hEax7sbOCt4vdfsyuuzH9KdSF+CXYbtekNzmeeoHdDqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4698
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix for failed to init
 adminq while VF reset
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sornek, Karen
> Sent: czwartek, 2 grudnia 2021 12:52
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix for failed to init adminq
> while VF reset
> 
> From: Karen Sornek <karen.sornek@intel.com>
> 
> Fix for failed to init adminq: -53 while VF is resetting via MAC address
> changing procedure.
> Added sync module to avoid reading deadbeef value in reinit adminq during
> software reset.
> Without this patch it is possible to trigger VF reset procedure during reinit
> adminq. This resulted in an incorrect reading of value from the AQP registers
> and generated the -53 error.
> 
> Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
> v2: Added "Fixes" tag
> ---
>  .../net/ethernet/intel/i40e/i40e_register.h   |  3 ++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 44 ++++++++++++++++++-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
>  3 files changed, 46 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h
> b/drivers/net/ethernet/intel/i40e/i40e_register.h
> index 8d0588a27a05..1908eed4fa5e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_register.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
> @@ -413,6 +413,9 @@

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
