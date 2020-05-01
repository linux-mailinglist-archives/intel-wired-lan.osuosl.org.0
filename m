Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D17F11C204A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C32E87419;
	Fri,  1 May 2020 22:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3OWc8RYjbHSD; Fri,  1 May 2020 22:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 72E6487454;
	Fri,  1 May 2020 22:05:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8C71BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8498D89212
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q+ZtaQuMpywH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:05:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E606891B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:05:23 +0000 (UTC)
IronPort-SDR: AOhPfqbaVx3bHHmdIHsC+XWn0hGS2/UC4RThQxcjRjuZw0x8gGKqwmYaYb+uujHhHsaymwnfbF
 PVrzd9Jlb0Vg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:05:23 -0700
IronPort-SDR: YkQNetHjTMoKXwTZ191WEBADae6Azfq0tNa1Td/RKY7kgAYocwrP92mIw1j7q11XTwnOdIkO5v
 GiCVeBMbarZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="283304855"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga004.fm.intel.com with ESMTP; 01 May 2020 15:05:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:05:22 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 15:05:22 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 15:05:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:05:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cda4sScVA804JMC2FDf5H5QMv3+0zFqRDa9UphFCRL4hGaGnyavAqpebmlAQdaupswGUNLVmkcdmeCePgIGSz1WwOPUneDI2Jy50EocZx8fkXCXgQmY6cPgHgxXDH+FdZs4aFaeiaBr583xEMk1YZ1CyVYTdXrwLvJKTvaO7tP5DcSEu/FK3diSa175GqrfA5vUKMsNKTrhBJSwMcJZwhF+d9hgowTmJ2XtgKS8/JN9TnFTfFocDDN1TYm9HV3lbGMAv+VK6Djd2j/8JyGNUCff8ze1eoU5+BxIjTglPTVkpB6ty44clOBKVCW3aIiwr+4SaGLJF2os4wmyeV/TuQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KouzFDZ01a3KutxFu7F8v9n9ICB917RnGTwf4TAbQ+U=;
 b=Hhq+GBApjZ17F0IxZ7+84tQEuWqhOK5z1MwH1Aapp5bQ6PFEoE50La8XqH1CGNGQehEcNsVtHpaPbKJKSejZXJ9pB7gvJHcf/TKqWIYwncwrzeTigQgQFlbCR9Pbx6ruQZSbsskTxIfb+PMuG+pC/79p+Ed0O6vqLuVRnY8QwGNWqQ6OLmu9PTODBdUcTuwFyOLs0x85ZqMn3jWkiGIoyNdd3ygqP6pgVTy3ndgyj20JpFY0O9obYldAY/ekEm8025Y1NVeTezfzOIbempOfqDeZXh5w8DcAA5+L3UQnFtuf2Uw6wo5lc5YX5Kka8kRIfDx3FRhsGbRIjtD2651b8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KouzFDZ01a3KutxFu7F8v9n9ICB917RnGTwf4TAbQ+U=;
 b=zQA3SmY7+K9vlJiImiKGi+EucPi//LbTKMphNd3tI2Mh+koSaZpIYwcSb+Z144rULXMyI/M4Axn5vG53vtN3gkcHGCkArg5BfAVWhocU2aSRMFTbU15mVpmOwkumKX/SXgxKUgug+6szC9pj9pBeKDGglSfKKoWcvY12xT45Zi4=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.26; Fri, 1 May 2020 22:05:20 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:05:20 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 02/19] igc: Get rid of
 igc_max_channels()
Thread-Index: AQHWGnV6zl6FqSa8d020kEVNBzUhwKiT05bg
Date: Fri, 1 May 2020 22:05:20 +0000
Message-ID: <DM6PR11MB289052AD4F83B41D7A55BB6BBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-3-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-3-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 676b4292-b499-4e4d-fe2c-08d7ee1bbd94
x-ms-traffictypediagnostic: DM6PR11MB3900:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB39001752921C204150A22866BCAB0@DM6PR11MB3900.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:326;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oIUEvlLasycVK1GJk7wJv3/Ye+a0T5q4YkBqg8NreAyyo+0SXRNdtlozpj1V1Ej5ZBk2HPLlO+ywPkPN+D0mzTN3KNCbBrupBy6oYlM4eiJPdw8jqJP29z3k2JGrtLO8AX5pcANfJYxHBppjkTHTmWKqkevQNw0aw6Gpy1N4yxBHXusCejddLDF88qXktuu83OtZlGfmSrx0kxlr2VTiaXK5UiowNzw+p4OSaemynOm60ZoiS4ZZO//UY60IsLE4yxSPfQ+54rDCAOAIjqZSRdMnBsMbuIo/31/2bidwqdybETr8PYdv1KHUyuXpD9MPE8UWqoLg28fPdE2IaWP1162JFvLmRV2LOLLskAO8RmM7cLM3QbXh0actml7lVlhNILF6gBaftOKNQuGJEHWZjTPZVEdMPJEchEeeLTud5Qrc6SKf28Vj8BcII1vfd4Yk0OkC6nr8Aw5bIS0XgnPd+T9DAJiPVskMEFElBBCRd81Ry4/5ybWtmwXf3NAp+Cfv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39860400002)(136003)(366004)(376002)(396003)(316002)(53546011)(110136005)(8936002)(55016002)(9686003)(8676002)(71200400001)(52536014)(478600001)(26005)(7696005)(6506007)(4744005)(86362001)(186003)(33656002)(66446008)(64756008)(66476007)(66556008)(76116006)(2906002)(66946007)(5660300002)(26583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: djVpE0ZQFGDfRRHrPsxa4eJJw6VK8niBpsQivjcWQBXXdTC1nFp5ESrb98n6OcnbrpmgKEjHFwcSiey7zs0yFyfu3Uuvs+PmgGC8zkzeXvM69zH99LVnc75hbXVBkGA+ff5/WGTeEYYbnqK527SUcXi0zTXW25xobFWb9tIrc+OSUZO5mxJdV993gqruvfrU+ivd8b5H6UySUarvo6txB2GTukvB0TnCrUCfVP2jCPIOB4SNOvgAaifyvsGDASk1Jk8mGP1XQIER96FcWnRLKW5ttW+pHXIG7IuW+9utkLjdjz/F7QLQlkr9VzKtkAqqZjqhYQjD0gcVTb2fz1uuxeUIrZYFSueuCH6PBaU3Hke/E+vUjInIebB3cSQjXpx3FyU4sYIaWN+eIV7AsZyxI1+Ca+CqcXnZV9xaCP/XuyKCFmxfpHAISH6CNZLkwoHZZZstsbQsBCD4bKgyAa2agbA++PAzdhNF3WFuHT/S3SuizmVnL+DXTIIpt0prc9DKwOcG7OlJUtc3tx6yML+KNqEJgmrYThn6mpyW2YkQRVh1D/pa7/FTc5qXTrFoWTEF05zAeT8CCB+4EvCcmx71wmMV7xRe740v5zQbuhVMeFLDA+cNtXa+Fmx0ueyfZtohtVXeyyL18G9cdVbO6EG59K0hbVI2EEEa6nOB9NwoTOdrzkDNzmpvK46QTOBzYcg+Ed2oXPzdfJU+nth4GjxnIkCaPnoc/Gu0BffKTFzFOPodZgziLv/HgAEOKpJlHunO2bnpQBUalfoXV/861/1F9tKKWXCTS76BcD92jK4MY0Z/IfbvYZCvfCifKOoSVW4Q
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 676b4292-b499-4e4d-fe2c-08d7ee1bbd94
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:05:20.7241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xfnaz2cfeGexJPpjxdE41IoNMNvpR/mBSubnYjtNJfuZCscX+GGAKVF6BOSOVeRiRpg1RIPUli6BPirpj+LU2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3900
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 02/19] igc: Get rid of
 igc_max_channels()
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
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 02/19] igc: Get rid of igc_max_channels()
> 
> The local function igc_max_channels() is a pointless wrapper around
> igc_get_max_rss_queues(). This patch removes it and updates the callers
> accordingly. It also does some cleanup on igc_get_max_rss_queues().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 9 ++-------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 7 +------
>  2 files changed, 3 insertions(+), 13 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
