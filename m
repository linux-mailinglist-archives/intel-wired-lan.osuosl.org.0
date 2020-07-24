Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D4C22D280
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:55:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 414E6870F4;
	Fri, 24 Jul 2020 23:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iQYwLaEVnpl4; Fri, 24 Jul 2020 23:55:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C85387126;
	Fri, 24 Jul 2020 23:55:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E04311BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC255870A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9D4N7wFa_Ssz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 507D587099
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:55:18 +0000 (UTC)
IronPort-SDR: xwwGffcsqf+xNJTeAfXelXmuXzonIozNM2Sx/3hTLDiInkUg9Z+2eL0z+e1Bm8IjFpohkmj+wc
 El+piEpvvuJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="152073451"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="152073451"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:55:17 -0700
IronPort-SDR: mWMCfVvtts1MRSMIDjF6CRFK41Iufvv8VflC6PkSiFrmNX/XxJ0T357MlYkHGHw572uhnd71XQ
 t7C1KgE1HwwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="327459864"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2020 16:55:17 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:55:17 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:55:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 24 Jul 2020 16:55:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIu235tPYYFAZtFgRQ0DnKQFzLODtOFawv54cr4QgvsKVegeal8DsvzctUPBEO2ljDm8GC39ejl2FeTaKAk4+ujsqgTrFEG3mXPAIrbcWK4bEctnjDJ3PEPDC9TwCmsZNFXxDE4aRWruQBIZJTnBySR3huGoZV+VKXJEo/LiJ+y86OFE5kB6Y1yB6aXv8SkUE+Tl8z9ptHNdKpA+gEWinAeBTVDPnUJ1MpxXivTkWpBOljuzqW0kRBx/OyVOdSPiEEGIaj/z6GkMo4vI21qchTvZUyIA8TD9EQ+PjXVXt9vNUZz5bsoITIRNDYKo5+XitAoyTOLTy8P3EIYZho3gKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LAripKW7U0oqvV2aG66bWrF1tjKUZSb6ZdjXRSeYMRk=;
 b=OLlu/7SX8coYrD8H/9qBKIfr/cBZE+xoEQv34b/bp05FxMrZUj2Q9imRav8y5Su4pXvY1DHxFdDEA/vq8mUQvIkXHhvbeVStOBO9kbmWoD7OUq7qNto9nWQzkb7A3jmClDhMIEsHPCzC8S4E8aeyNLxSmvuC7/Zf1fT1q4Xl8Nc+kDIKF2ThM1s6PK4J0FKKTkuXFwbJU0tZlzvZwOcMksYft719jE9x3pqwd0siO/tLHq6N09l02k/hzRMlN9q92HndP7yt7ucJxhYCbpK84ExdRMSZIdcRRoqAO46nobthKbksaetkEykr5p9WGF8L6c1Hz4qF7I8JhyXiguA5+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LAripKW7U0oqvV2aG66bWrF1tjKUZSb6ZdjXRSeYMRk=;
 b=BBRk/NKGsFc3hi2voahT5EeZb4uTdVLt1/NTh4B7uiYz7MiGQGRf7TRVV56btx0w1xzoVmLKjtbhOjvD1Q12ZEg2ZTFl1zJEIlLcQV19QUSVDQfcumNZfzbopIkHo2blYpdWE8Yz4nNgnje3X7JUGfVAbZ6L+HIKoCMNO+l9+GE=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:55:15 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:55:15 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 11/16] ice: Add FDIR pattern
 action parser for VF
Thread-Index: AQHWW3YQUigS7s7qhkWFg8VGg4woR6kXdMOQ
Date: Fri, 24 Jul 2020 23:55:15 +0000
Message-ID: <BN6PR1101MB21452D90BE732161DE6F5B3A8C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-12-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-12-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de66c1f2-a232-4e63-0a05-08d8302d0312
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842D0D588710F6F0AE325DE8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2RXLYkx3Vv7S7OEQcuFY6Dpb7UFRJLBcDRz0wH5jvvesU8fihT0vPbGaFGSxgE9FUO1ogKLHW3AW3lV3akfgKK6tG7uFmeF9UGN8oaNb/Hnh6l4tr8+K7k+52P8qt+Ku6SnRQe50mI+tzTIU8bHpogR8iWGoih5Y0FGznGEntuVLpRtSQhAVmiTEuVXlWOuNSriYh3e3vhWWEW48oLazojORS3FoFE7LWa7wLSnA59lVM76C4dNoqmLJ6hfLThH/51zFQKIrvravSBnKEOM5PLkEJV2aZwLkLiHR0q9PTqx+deag2BWnAWWij1odszEb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AM/mvrjEwbOIBA20RMKlg+BJm2jwixsflbwbxEDm3tQrUtjJDzV3Waz03ezXN2/yaMFUxZ0cQy63fvl1dBF66Em8eG2r11uocdhriv3vTzXBICBbcvf8/HMhqPr6J+KLmaswR03h1lOtHw1fXUebUmqoQsxDBTI1g1DKzrRpvltDcuPy8CSxbkODaIJBs/zhrrDbHFUtmmcr1tjcbPAuomfSR1f4b9lpFBz8lJV4dwUujZhtC/ZZluh+kM5rgWd27BAZjFMEYSSRW+X599wzGWNirSeYwygXWXzKOrbn+0AUDxuku775XwFmwf790ys2GL5VP2AGixnyEkaaKZBtjJjOMW+Qq7DTxF8QNlKFwDc1Mhme0/NmaTaoccUew7q9Y+AlcAIZ1DW4vajE09xTSswwNKcuGfQu2rxsTM6lEu4Le3zKEKFWHCyHjrLIyh/AoEWgCwoqiw8neVyy3CKQj5qdN+6FI2SSvQMO6nxg5IQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de66c1f2-a232-4e63-0a05-08d8302d0312
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:55:15.4951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PHjbIqdNOwSaMrLqDHLwXM08Ues9fuosagXSoiGSEOY9DiPH3o7KZVdhhqx0ELZfh2jesrje1iPZ3wm4Im+yKJhfHJpkLMqmRXx42BViojc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 11/16] ice: Add FDIR pattern
 action parser for VF
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 11/16] ice: Add FDIR pattern action
> parser for VF
> 
> Add basic FDIR flow list and pattern / action parse functions for VF.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 353
> ++++++++++++++++++++-
>  1 file changed, 351 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
