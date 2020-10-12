Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBCF28C3E1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 23:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B41720003;
	Mon, 12 Oct 2020 21:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x1nOZDg5Vkxo; Mon, 12 Oct 2020 21:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3BD3422E96;
	Mon, 12 Oct 2020 21:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF3121BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA69B86B42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfDu7VzjzT33 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 21:16:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E4AAF868CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:16:45 +0000 (UTC)
IronPort-SDR: wxZ62mIxn+KwGPWUBJaDQ2RrAYYY1dMLgzepJ6RThGMwDaD1w5A6vK6RwD0w7kJ+tffvPjSa+5
 AN7p1lEUbQgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="229985187"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="229985187"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:16:45 -0700
IronPort-SDR: y1wtkwmHM7OM9gzENA4uMy7rfWSrEvondTGPJTcGxuWgPnu4SzbqXoYcAy5d1FAPinWZdOHVh7
 mHfhF31VCmUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="356760169"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 12 Oct 2020 14:16:45 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:16:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:16:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 14:16:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 14:16:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7qXcpLCCII02b4L5+7dmItnaXHHalXcp6tPgVTL5L5ojwXnKRxVXms5isTijDCdUN+fgcY22qc8DzAMv4NDTQfL5o1cWIeWeSQepp4kvCdrx0hM6Q1yERnLE6lOYW+iyi2eHjpNLPMWnn1XKrGvZcppNJht57XoetR5RL8tGxcgExLCFXxp1IYuDiukLL+4Es1DWgUFX+FzxpW2TW5goCQmIfxSbUi1zyKt221SpoLaPJ2EAdJjP9GEgg1K4sgJ7k2iGEDIOSXN0pwpo7b28cqoV7NXziYO2cl3JBbCwFnsgxxi6K5wdW8REpPyG5rUkyU4V2sQ1JTQ1GXZLX8IaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXY8U7y9UN84B8Qk4S9oksQzgLbZoVognxV4AqnyJxg=;
 b=fDv8exf9CojQVmj8QRcDLlUlZ8DmYSIascXf6DfYRoTJHMGeGrQ6Xs0GDuVN3nvHtjCdRPMs1n7UGEviTq5RCdGWOamKTGPdwG1PLj/4fepXKYtL8KwD7yHEkllNH8VCeUqvTVLijjyVBrkQG7VDSkE4/P+O5SqmiAAHwaXxpG7QNUv2x4HNIMMqTjN/2kPajKRUM7ZUodfeDiulgx/IUkGIJSxLxIQwga/mktGFiR88rNf/DGlXEEcm7m9bQaPfdeGVQ02+eMkPHn5TjPvIop/xbKYlKRVsZH2Izdq5Uw5HfJ35Q694RgJ/6FL/D+pc4jux3Y8OCN7M+mms0Am67g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXY8U7y9UN84B8Qk4S9oksQzgLbZoVognxV4AqnyJxg=;
 b=GfXJaHFgLxHoQUAFFzaHmTrlGf79A9x710ivcdOyhYUFPbCefaclOqklNY7YJW2P2DZexaDUodZzH5pz4EnV1yCIQEhmnGKghRUggFf3RQ4rvSm2EhtAlf/8ghz7N5V9aXNqxXKqrC/9MbeFBy4Y+WMcc3Q7z2Wqkkvo2nzM+FM=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3914.namprd11.prod.outlook.com (2603:10b6:5:197::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.27; Mon, 12 Oct 2020 21:16:42 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 21:16:42 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 11/15] ice: Remove vlan_ena from
 vsi structure
Thread-Index: AQHWjS/iDBZ0igwYjkG88FjqM2DWlqmUng7Q
Date: Mon, 12 Oct 2020 21:16:42 +0000
Message-ID: <DM6PR11MB2890AC3143581E14B25AC761BC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.179.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0897d2e-ceaa-4a1a-4b3c-08d86ef41e16
x-ms-traffictypediagnostic: DM6PR11MB3914:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3914EF47DB4DC64B98C6E4F1BC070@DM6PR11MB3914.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SdgljQBl2lp2gJlnitCavPWeSDk6d0DJlDXWjQxKms43bBZ6yrdV4nEVjBCBPBnoABUtsfqJVBF1HZehzXqzdaph+LjdDK3EgOI583UzGHUGNgVoTuZPjU3nb7uPjuaQbhPINuTbxud1hovWSEsu/pV0w29vwzzk7T47U8qLHP410P109D2/ZPboBgU17CcnxzGxhve4a32ORXMoDhDrJfbJmwVdXD5d8tyPCdHICMuGIr8f6tXieTBlaMFIT8CZ6v2+Yr8yzjni3V/Rj4GQJQzmv+7jRyf0l2Gbx8yY7dgMB+sSRBsGhKHuLUT7h9Ya
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(136003)(346002)(376002)(366004)(66946007)(66446008)(186003)(64756008)(66556008)(66476007)(26005)(52536014)(9686003)(316002)(55016002)(86362001)(4744005)(5660300002)(110136005)(33656002)(478600001)(8676002)(83380400001)(8936002)(2906002)(7696005)(76116006)(53546011)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xLthsAF41wrGgQriMraB//xSq+033mRdYR13EcVSQIrCxfNyw7EAt4y/jlAtK2CGQxiOCou4PY4R2+kSNP8rkeRy4Y1vyf8CU/cpjd+eh1ObmEWh8Jf41y8PYuwb68Yoerr0c1FovsqgHiyHZ26R8gjYKheoXbkwy2LWO827lycAp7t4aSUmDqbfzZvq0l/sR7bEsvEs4ozLKcGeDlLJnJBuy1XpkQyDrIa6KFr1cwjAyIskHBOtQGT5SuJtKTgdCdBPxYI4tfJUWJpxIXedn0motvAmhvJ+HM6LPhpIFyVyuRWgXxwuHNGzj8IMTaIu8nAXiK7ZdnNjcYAa93Plho8q2bmfr62nQMonGAaEvXmq9ltjFQpF/QRGT0/wZEv37bPW9msJBSHi7+BCtqk1Gyrg1sdEEVnbyFPhylFhGx31TFmrwvM38O4FK399TTolWK+Q3vEM3G4yjLqeQ+tJ7GhmdktLmrMw9seB6UQ1KCgyjrO4SfgvhBJJy/+RVSvzIl63JCNP+r9UI121Hx2EPMvMPCVE2TJSVIi+ed4GEHkJTdKvrQMF1KMzjjeZihh8JupGUb0TIG9H1TgEdwQ1Zuz8/CN3C+DFfL1Ok1VCFahYRq3GOn6yO5IongHGuBYA2qtha7kIG9qVYRqOwLfmCQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0897d2e-ceaa-4a1a-4b3c-08d86ef41e16
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 21:16:42.6879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mhqW02e6Ij6adODlWYUCj7iNgc7oL8a8SLYtJ9hd/q0XOsbQp8p9cViTntl/QVDV0stMFfVpWA+d7YzniTvEGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3914
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 11/15] ice: Remove vlan_ena from
 vsi structure
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, September 17, 2020 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 11/15] ice: Remove vlan_ena from vsi
> structure
> 
> From: Nick Nunley <nicholas.d.nunley@intel.com>
> 
> vlan_ena was introduced to track whether VLAN filters are enabled on
> the device, but
> 1) checking for num_vlan > 1 already gives us this information, and is
> currently used in this way throughout the code
> 2) the logic for vlan_ena is broken when multiple VLANS are active
> 
> Just remove vlan_ena and use num_vlan instead.
> 
> Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  1 -
>  drivers/net/ethernet/intel/ice/ice_main.c | 11 ++++-------
>  2 files changed, 4 insertions(+), 8 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
