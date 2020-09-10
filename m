Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D11F263DC5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 08:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD23586F90;
	Thu, 10 Sep 2020 06:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zL70i2gEjPPS; Thu, 10 Sep 2020 06:56:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 414CC86FB3;
	Thu, 10 Sep 2020 06:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E99C1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 06:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0989F86F90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 06:56:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ji6swwrFEjAC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 06:56:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 459F686F7A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 06:56:33 +0000 (UTC)
IronPort-SDR: 9lJnIWkX4P7UjFStXil9smW54nS4aTIDB5x8BxWs0tM6IyKBBVC0FCQhUrfMRjQcat+SXdZya4
 6cKObr8Wqewg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="220039667"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="220039667"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 23:56:32 -0700
IronPort-SDR: o4uh2VSQqWpFUmBBhybvMh6TiA8aDB8yDxZhMHXQzzRpNheKKQHEtUN/fQNvSmE+9yDjGzsEQx
 oXh8TIbuG0Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="344154312"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2020 23:56:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Sep 2020 23:56:32 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Sep 2020 23:56:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 9 Sep 2020 23:56:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 9 Sep 2020 23:56:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BS5P4JrZMSs0d03qq1UucyD3lz8gd8iYKdqqLR3S5r4FxJwhTT9Q5k5i7m+pSsQ2Dsvi+FEz53a2FNH6kRmzqX3xaD5oBLh4QppQ/H0N3NJwMm4Fl9oJekWol6+8zSMth95axKTecbrghynrEbbEPKUDqCJQTIWSnRJ2h90hwonPKNmKuPfQbgaBGMCwd63MXQ2bLyC7GOFk1DFY4zzPnwB+OsAHvclGZOSjyzPykIkCTpxUIhJO8BabXNGoWMfJ2s4CLmlFmLoTdxVHg+VRKRyWh3krFq67JmSgWGlVUv9ZCnq8QRCFlJpoOj7CA5VeCaRbDttO7xRQvtzUjyESGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKy7KnJj0DVeNKobpqSaq27Bd+zSz6vqcJYHexe7IKI=;
 b=DLE6xFCJZf+gZHcohWDsgvTXXl+ITq3NwI2OUiFZyOg8O1sI34FdvDHqOQA2mdoB/Agbk1lRmDmUxt37Qxs/lgVE4Ke7+KiQfWPasAKHkYMQHWHWiBS/B2FO/xS5buOa0blxVJ4xlYjlwF4Fx1RGK1lf6C5KT12hS45cZOaJS71n615fkemL9Am2GDVDWva8toM/goEHEu2sexGfkl67Y+q5PqCBMRvS6Y/eAJQmq1IhG/H6jPxoCS9z/e9vro1vEpULKE/PvUm+prYvGTpYqh8YpnmIHNuwf7Jg4jcrF5O6VpJ2TfH5YD9aHcGDzVIwR1YZwP3ZIiUhAssj4ZzXXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKy7KnJj0DVeNKobpqSaq27Bd+zSz6vqcJYHexe7IKI=;
 b=IYNA5lHi3kozCCuHEmAbqYmx2qARMcVH32cfbkalrjRngu5b7q2FCxF4kDf1DPXhwHE8yH/okji4SKv6apu+5zjlgeSvzPZZqnJeV9U+xBBCuY990bvuES+LQQUB8OFSE0YY1Xo5ZpX1AfouRKZtpHzY2TRxS0G7jwDMTCBL6MY=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4627.namprd11.prod.outlook.com (2603:10b6:5:2a2::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16; Thu, 10 Sep 2020 06:56:26 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3348.019; Thu, 10 Sep 2020
 06:56:26 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] iavf-linux: Fix incorrect adapter get
 in iavf_resume
Thread-Index: AQHWgShcLfti9F17dku49LyEHKi5dKlhfHSg
Date: Thu, 10 Sep 2020 06:56:26 +0000
Message-ID: <DM6PR11MB289071A19881F3518A2AD776BC270@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902125459.30641-1-mateusz.palczewski@intel.com>
In-Reply-To: <20200902125459.30641-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab7326fc-07bd-4059-5537-08d85556a31c
x-ms-traffictypediagnostic: DM6PR11MB4627:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB462731ECC8DCA2C198D2F260BC270@DM6PR11MB4627.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jdRKfMidXpaX1sLSbrcofWytnkJIEdewoxBjCvoSN0BtDtBLkrEZb8ZSqiqJDzbL8RfdymsiPFc+owQkQ7M2DaNUtXcs78TuYQGBsdYBYkCz9b3TukfPIaVE9PGULbqf7eatStiB03LgIjXBndkC9f6fQoRqk8Cs7tHlccyEmuLcQVCFDvLayaTXfkFkZMoKqfPh+8i2nRijSKL3/IBXBVTaPpQNpXioK2SLbE0mmy9LJcjVJQAdiAbY2jCkCJbC9FH/kArFRkmJbFhuH9KgtDideqNoxrrA8ztVSxg3/P9j1qBlsl2dpHl0EIUtJPdY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(86362001)(8936002)(316002)(2906002)(7696005)(8676002)(26005)(478600001)(55016002)(4744005)(107886003)(5660300002)(83380400001)(33656002)(53546011)(9686003)(6506007)(52536014)(71200400001)(66446008)(110136005)(66946007)(64756008)(76116006)(66556008)(4326008)(66476007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: lSnZ1ARVUZtjqCIUZcMzf3JKPkDh/BoTnafIlQkkGYZ2Knu8kAVEEd3NcI6Wx5jeeMCahSUxB9cNI+2slxQxmI488oSCNz2ykFLGmZ3jzpm3rIQ1m2fRhvqNzMg9yBfkFcAP//p+S2hu0rmo7xcjYgMtoAxTT0hOLVwc0ohSV5EAmLwdgfqYa6/eW4V+G29ROkwPfeNyNpV0+6C7EwqCRvdMgbqF1G+TI0bef9QB8W2817GXFVW2SHDpUZVo2D8U7I8cvvdEZLLKzQr28e8VXnDJyx5QAWiELXKflgH1rD5hJRsBPBmHcMpQ0cDRd6Qfu/8joL5jqFNYVEXLh++ZDwlBomYcfoapKW9wCj8GpKwNgowHmnwpyd4SoZCTK3oqUlKKyaWTN/ouNuw9eytxlDCBmb/sXx7Tmnzifm+peSJnHbId14/UZaWo+60UfZqWrwkvv+q3YUK8Lv6acjb78KsRFTob9R/tDkaQOxKUPFncYug8A3f9MsfzyB3nMJ3ullCMVe2aw4RFTcP9i3+K31VC0ZDqW7/4Ha6QJLhAA4ORDXZ4MKS5NJhqFNqCBfxsu+3umYbiTB9qtKA8Yf+Wrx+P3X4VF4H8gWA7w33CnoRdCKQN4IC2MMTqwcPT9sk4fJ5Wh09PN6zDWxDjiNrc4g==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab7326fc-07bd-4059-5537-08d85556a31c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2020 06:56:26.3477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l9wvbhXW730ganqa8BNzsBRzrX+y9PEjY4EhZX/ownQvuFiq98pkMpFfcm1U8MLcxdm0lFr76qwqeXC/6WzB6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4627
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] iavf-linux: Fix incorrect adapter get
 in iavf_resume
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, September 2, 2020 5:55 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH] iavf-linux: Fix incorrect adapter get in
> iavf_resume
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> When calling iavf_resume there was a crash because wrong
> function was used to get iavf_adapter and net_device pointers.
> Changed how iavf_resume is getting iavf_adapter and net_device
> pointers from pci_dev.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
