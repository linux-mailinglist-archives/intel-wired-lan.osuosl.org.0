Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16981B33A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 01:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFAF58831F;
	Tue, 21 Apr 2020 23:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l0oJ8eMTguBq; Tue, 21 Apr 2020 23:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B41D788303;
	Tue, 21 Apr 2020 23:48:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E55F1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9954A2043E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NGDAtlMcUXCx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 23:48:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id D496A2043B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:48:32 +0000 (UTC)
IronPort-SDR: OoMSlyT9Vo8MCH4FA2uQBjMWgt9lrdk+BMMrJ3gb7eXdn1sRv0EWXGVHDWp5IHNRUtdRRboNAi
 yTWuD9R7eavA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 16:48:32 -0700
IronPort-SDR: hTe5SyfIL69AhM2Rv/Qtm5Bnruy7XpkfPO27SwEk2hzF79MH3ffsQrCyksj0cxOGLXDtsJqomd
 5UbxLQDwVnkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="334436343"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga001.jf.intel.com with ESMTP; 21 Apr 2020 16:48:32 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 16:48:31 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.56) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 21 Apr 2020 16:48:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlHO3Vo0s4KXuKKhn2RGnW/ZPm0mRS24ou6CiBRsJ4inm41mnCNku2Tl5bzx3DKLUGOWIRflptgUAlk0Zc8i1qtBvNPIowJTCzhkjddF3/ecrk/NLIdwgIU6d95KN/4niBW71upMuth6fH+qUcEGhAYAK4wkdggGf53+LwoaiSVlgrSWtG05FsC9otdTsvdVNjBmMG/VxEH2ksjyViiQv40BYDAekuoZ4EyfvbTk4Drvyh0gbLLZoXEnQnw5JNjZKf72KQXv+KmftWErmA46qx3I66m2K3dCH4qVtL4IM8Qtw0WmrVh9cyUU9EprNx/plc6kMNhCiKNlNcccCvsVkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KqCE2qJVGewo7VcyP71kA1uf/p/teD2VS19YEMZtfw4=;
 b=BihGLH2gbdgdPdy7RCxEpF2EOTihtC/1TdeOw42ihxsSDiYkv+dOAsKCwNAQj1v3kn5CCI1Scl7jq6sSMzwnulSnEYcpRJ1rjdsUG8g9HpY9sKxthLnZyVMP/bgFiiEEM3J69EAO5n8wydlwqkDKO/JCzYy36QSpno8fXiIalzNLXjVqD2B2zhcOPlsIPJ7vHIa9B4wbl/gqx7YYG/icRc94Hd+cQKDJeeaPy6DBoUzRQWcRjC/kfLIOq3WiDU+L5aHOs+7egZ9dffnZDkywPqFdEFMBq6Gg07HRfRI6p8VNUj9FHzmSiz6ahzaaul/gw1IYWmkYc0EYgPgl81qLZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KqCE2qJVGewo7VcyP71kA1uf/p/teD2VS19YEMZtfw4=;
 b=zDD+KA4OU4jjXTgNfjJuVsqss2XagpaIiL20nYFT+nkp1vq1Onj1Sc6O9wwHzFdcPQ/xENW1pcyhdOHE/J/YC1AwKsdm72x45pVSuQFS6pY+S1aXcEdYjKI+b2V9CXepO7mncddpyEKxqgVH3teJA4zicWn4QBZ0tfA5Xr6Ns+M=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3258.namprd11.prod.outlook.com (2603:10b6:5:e::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.26; Tue, 21 Apr 2020 23:48:29 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 23:48:29 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/4] igc: Refactor VLAN priority
 filtering code
Thread-Index: AQHWCeRPPXxQlHH8XUiYfxlwMWG7LKiEWrGw
Date: Tue, 21 Apr 2020 23:48:29 +0000
Message-ID: <DM6PR11MB2890CEC1469CA37FE956BE35BCD50@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200403181743.23447-1-andre.guedes@intel.com>
 <20200403181743.23447-5-andre.guedes@intel.com>
In-Reply-To: <20200403181743.23447-5-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7eb01bff-cbd5-4542-3cb4-08d7e64e7e53
x-ms-traffictypediagnostic: DM6PR11MB3258:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3258189891607B93B94BCFDFBCD50@DM6PR11MB3258.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(66446008)(7696005)(64756008)(66476007)(55016002)(86362001)(66556008)(186003)(33656002)(9686003)(5660300002)(76116006)(52536014)(498600001)(66946007)(4744005)(8676002)(8936002)(2906002)(6506007)(110136005)(53546011)(71200400001)(26005)(81156014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 953VJxuXDeIChijDmWfGEuALd2lg5CsM+W3sTq/lc1zm6J78IG3Gw2GclLUtyYP5F+EvZzkNNipkgzG4mUqte3bSo399NauHxzWrcAZBdVkcbNcYC4Pb1x4BRvx6yh/THrDpXusD41T94l3h34WhotBpmG+tIfotKB6Z+6XuHrqkXeIdI+IyCrlWPc/Eu9jxdt3FR7VIDwkFFGvIklkC/IXhmJip2A2R1q1mxIt+PHp861+nZ4WPZs93HKTDBjRbuBQO2x1d196L7B+zXnafKhilE/1DMx55Bp1mdOBGEvGSShQAVXnPSxmKCKiy01LxXK001iYqQok0XmEg3HwBzGcSNXSByZA2pytmBDWhdaMf4Kaz5zbKjPLjhoIMOep1At4S5h4HDxKT/zDrvb/FtB1CG7Bf5q34fGRBQyU4bwRLYY/W8SmV79mgyUgmQkts
x-ms-exchange-antispam-messagedata: m7ZVaMNr/BpPH8pQ2PhUKN6qD2rHAWiypCRoFvRknNPZz0DYgrF5jkhS2/sK3h6vP5jHXMHDVhTbfjwBdRsxeXEWdTvRdk4YHRXOVDxFGcwFYiYlIFZCQ4yJRWIn04/CRM7FzTcY5KI0t9cPfF3ULw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eb01bff-cbd5-4542-3cb4-08d7e64e7e53
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 23:48:29.5997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/eNHTMbfeMPjAa1Hf4KEnLsh0Io0qxHaXIefWC0Tb9sFS6AEq/xc90ReXjK9cFMTwGg+hWbzEXALQjGq1IshA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3258
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/4] igc: Refactor VLAN priority
 filtering code
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
> Andre Guedes
> Sent: Friday, April 3, 2020 11:18 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 4/4] igc: Refactor VLAN priority filtering
> code
> 
> The whole VLAN priority filtering code is implemented in igc_ethtool.c
> and mixes logic from ethtool and core parts. This patch refactors it so
> core logic is moved to igc_main.c, aligning the VLAN priority filtering
> code organization with the MAC address filtering code.
> 
> This patch also takes the opportunity to add some log messages to ease
> debugging.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  3 +
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 64 ++++----------------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 52 ++++++++++++++++
>  3 files changed, 68 insertions(+), 51 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
