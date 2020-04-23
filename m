Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196F81B6332
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 20:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA10F88550;
	Thu, 23 Apr 2020 18:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mOR3HSBpbIKm; Thu, 23 Apr 2020 18:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82EE488575;
	Thu, 23 Apr 2020 18:20:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B60C71BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 18:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF15187E61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 18:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ql7Ce00rtOk9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 18:20:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C227987E3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 18:20:55 +0000 (UTC)
IronPort-SDR: OtyIoLy8mhVGe+DhK+ro6zxwQkVLjaw7AmyWH7+myU3+j4/G3ABZql5t3o+D80ljFC5mY8zThO
 bQh8lOUsZQyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 11:20:55 -0700
IronPort-SDR: gk+gHv82oLUAl/GQNycsEFL/lGe49pAv/jABnjOkbgS1YjuQO6XbVWGbQbWhhhhLJn9M91kbwI
 bl6Qbxa8Q7TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="291268692"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 23 Apr 2020 11:20:55 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 11:20:22 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Apr 2020 11:20:22 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 23 Apr 2020 11:20:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 23 Apr 2020 11:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/Zt/4FiZtNFBdO+46McgEf5K28+0XmXOD9A3q9vHZ7HWEhAVQb8IjiM3ajuQTE8izrxF0izocirWihCpNyKMKQRDnO4QDfCG0IS9726NMF2F1g0QwuoMwDYE67ZWW3yInUHQP4usFQu7WzFhoujs2YuP2XITsZ90Q3e03PnlyXmK5ciZYZ8IBXJFh0QBmV45AjRMmvz+mHRbEkMQtUTF85RlAHXrjsQOIamPaLq+cGjRW1hghHOvyer3ReYkgpehLupjyAdCVaCXi4GljaITFk3gAy7XDaV88fontXi8Ysk/sAEV2OuV+awsHdCYRLXksxqLKa5Tg/hS97vEfltGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39INpEC8wQuevBq4Ccwcbjtr06HsQv4kcdoMErGkPOw=;
 b=TOcQn3dT9jUXJrOT48oV6C/o9cBH1Y5ysl4mMSG8dykJ+T4ihsalnlr+qum2HOAlw0kPMqf6mehcHmiWSqnkkErr2rnYtCRdfo/b90MxbokXqzU42exwDIr4zXmWVFwuAsg3qqWPqfj9DmPgThEY+9q2ETOpQ0nIyf4/acvlJwlAVwG10igIENOifxgazOJlPo31A5oE9Natno02SKgQplfbypj3hy3JpNf2nBdBPNkn6Ze0EaCQMatV3zlYqWV7I14F6ArxgJkARPTLQrGQUjSWvvnDHzeBeVK9lX+hATaELOtU+1qewgSLG0rmZPtESnNmZeqN9mJsbsPftCUSSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39INpEC8wQuevBq4Ccwcbjtr06HsQv4kcdoMErGkPOw=;
 b=F3JYoQ6YS0r5/uiUrydBhdjP0MTZKQvgAlPf9B1VRp+2ueJmUCg+OeUKMo2qmaXtdEN/GpwQxzekMj56pEKTrzwzIUnW6AQKqbur1n7ka/J5wZ4SkiTQ/n0pe0p5UDiZXG7eb6+0Z5QgeoBKt00aB9wzgsiep9lc0s888EGlMS8=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4626.namprd11.prod.outlook.com (2603:10b6:5:2a9::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Thu, 23 Apr 2020 18:20:20 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 18:20:20 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/5] igc: Remove ethertype filter in
 ptp code
Thread-Index: AQHWDSCMDg4rWtt34kq3jeh/B0dgzKiHHUyw
Date: Thu, 23 Apr 2020 18:20:20 +0000
Message-ID: <DM6PR11MB28906FE0967C7E2E09049631BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
 <20200407210711.24371-3-andre.guedes@intel.com>
In-Reply-To: <20200407210711.24371-3-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [134.134.136.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04085aae-17a8-4cba-f01b-08d7e7b2fb6d
x-ms-traffictypediagnostic: DM6PR11MB4626:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4626F5CCF0AC76D766F064D2BCD30@DM6PR11MB4626.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(396003)(39860400002)(136003)(346002)(376002)(66946007)(26005)(86362001)(2906002)(6506007)(53546011)(9686003)(7696005)(55016002)(33656002)(4744005)(5660300002)(52536014)(76116006)(66476007)(66556008)(64756008)(66446008)(478600001)(81156014)(8676002)(8936002)(316002)(110136005)(186003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I7EKWGz0OPDyZ3mu8lRrJ6PzCPJ50+X3XKFWFONZoDB2iJQFeLuo9B+WPQ7ancFXQ2hSWGcS3IZ4Lgz1AH99SsLxb6MLWj7VQHx3rtGSlJxeN1oxsMh+kY/5l8iWH0En6zhycedAsU4T4jEspsCYH2FoVcaJLFCzYfS82jeiA1R8ahFHAa4kL2VIkld+nsEKEGPQdk/X1X4kjoUjXjUGVQjXTI9W47N2jlYSletlrZPYgdu+fIEPSp8ZLbBmJW4ErOeD92ivECN2Zp9rboIDlsPlbkkSr33mNsZcxq5vC9QPKvLL2mwubXSY2sO1uiwhsJNzNDAeISuyrwrI0t8kzelWkqF2zLA7rCasmFcrZyQeszp7iARpGPknHyFFIBzbHyhlFHDcBnI8ftxmflNL8h4smMzrWhJbIK1+1bdhM5PKfHBbb1Ev7AcE47/He+rc
x-ms-exchange-antispam-messagedata: cQwVK2+xGrmRxb9tif6Zm652JelCLNkzWG0S4dz+sQmdf/VGq9R7/njO9LlYMbdqoeCOYq0/0tYmSPKgD3p2EsoQuTBsV2JCh1CMsBh+Z1QQjJgXqorgcD81bN1qesWPSAK4Blhr4NEIoPfwxYhYrw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 04085aae-17a8-4cba-f01b-08d7e7b2fb6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 18:20:20.3206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /JPrpO5ADLjNu9oD30Opehj64LazTASE5Dm5PhXN4Pumx3JntEe/gg+a806acZ0QI3PCEmvIVzWlct7uCJoQlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4626
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/5] igc: Remove ethertype filter in
 ptp code
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
> Sent: Tuesday, April 7, 2020 2:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/5] igc: Remove ethertype filter in ptp
> code
> 
> The driver only supports hardware timestamping for all incoming
> traffic (HWTSTAMP_FILTER_ALL) which is enabled via Rx Time Sync
> Control (TSYNCRXCTL) register already. Therefore, the ethertype
> filter set in in igc_ptp_set_timestamp_mode() is useless so this
> patch removes it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  2 +-
>  drivers/net/ethernet/intel/igc/igc_defines.h |  3 ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c     | 12 ------------
>  3 files changed, 1 insertion(+), 16 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
