Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9F81C2070
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76E66884E8;
	Fri,  1 May 2020 22:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6C0+o9-us0h; Fri,  1 May 2020 22:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCBF388524;
	Fri,  1 May 2020 22:15:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8701BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 380B0891CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mDC3RE9+SsG1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DCDCB891B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:15:06 +0000 (UTC)
IronPort-SDR: WnRYCQbqTfdqTCTrt5MNFVeF0JyzR9u/pLs1gRhZrCzpoUJXhAYuM2oYhBHFTgLJkKaLFE/5kn
 /Hqs9qbfdRXg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:15:06 -0700
IronPort-SDR: 8pUM0i1VLqOrLQYCrUYjEkg0Ya0YNy0tP5+Wq4PUL3EWVmJZaTF4PuHM/nWqT7pbXs3a1qQcic
 +H/tX4StSIMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="248653648"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga007.fm.intel.com with ESMTP; 01 May 2020 15:15:06 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:15:06 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX112.amr.corp.intel.com (10.22.240.13) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:15:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:15:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWCbAK8nCx+aesM5ZOKq7szSDBSKCvtw22HzFh9DslJhMIteRPWVjquu32XrHy/N01fmW+hEp8G1ohsLW19OzLc9BWjqXGTS1rZM6PoqztTsilpD+xtNAIvWX4ZxjZKEd0Ha6Hsw7hRYIzefml9ZrtfERBzWVb8zrDddoe4UmOcE+c0QoklRuo1M93L3qqvS7Udec0XXUYyu+BNhIDW6R7Ip88ecm7G92Tjg7yTiuXT9ll9wQwJV2P22yt8L/domAi3J8K3JjIY2w1S9VcALWOUszJDOfdPjxN0py9skbWCQEi+jrCqxXHQrzs3kDPDbY2R9f1gnBdBf82OjxzYUvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obLUl1Xx6vlG1/kZAXXVeJHeh8PRWm3ZDMMbr6M4pW0=;
 b=Fh4N5zehhnGycl8tBzY9whKnn+XqiREp39KKB+UpEd1yLn/TygIEdn9uMfOWvboDR6s62qVsMA3B1HsWf2hMVuhqaZZiL4iZwGtrkodRun/Iq4+qiH13AtUStwvpTS2UdKRzHBZgAbheOZmZC0WI6gKP0UoQwd6sWuXD7/nVlgwmWXCPz5AOEuPTBnh13vcog7dPkG1vBPFzWk0VZoM+Y/amC0kkZeGVilhhBuESkosrRaD7jP74Jur8pIdykOesLYNOUHSrCQAliKWJJlPFhdudSoGw4yIzaWsbAVsn0J2NT507G+bbYeER5G4VsOX5Q0/aFRM5paE3E3I+uK2Phg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obLUl1Xx6vlG1/kZAXXVeJHeh8PRWm3ZDMMbr6M4pW0=;
 b=wY1BOruI0xPLCbO0v7ig4pjrSbevBak3tjJi+/utfhHdEcxmCfMmQK5lET/HrNlPcdH/44e5GySPzheZd8T9PCIuzbmH+vJ6Vy0At9URqwG0s1G1kJaBrV4j0c6qjt6EXS5udjssY6Up9G2pDMGK0iMpNyoQhKXrngpxQjFPP9Q=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3116.namprd11.prod.outlook.com (2603:10b6:5:6b::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.27; Fri, 1 May 2020 22:15:04 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:15:04 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 05/19] igc: Add 'igc_ethtool_' prefix
 to functions in igc_ethtool.c
Thread-Index: AQHWGnWRzDnzHKhBwkCcrZd2Rj4SqKiT1qsQ
Date: Fri, 1 May 2020 22:15:04 +0000
Message-ID: <DM6PR11MB289095B0F8D6A188610B91A0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-6-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-6-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 29fb2017-16e9-428f-2447-08d7ee1d1968
x-ms-traffictypediagnostic: DM6PR11MB3116:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB311675547F9AC647C172E5A4BCAB0@DM6PR11MB3116.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LEtrKK4oFyXap1trTyojx0aQxaRTpDYWgbxLvUUtGnryRIqm77TgqTwNVs0hbl3JyRYDMKU1LJR8b8U3gWSOR316UuZ8lkejbNcbPEQ3/y8sR86t2Ar3VrFgLltNPiMZtkLwYV/chZQ9dVJt7uUECPw8jg8+pPyuwQ+lcxoh+sFk6XQhD86/M6gI/CkaP+7TVvKaI6wfR6aAIfGxRWLdmxbcMwEETJPj0O7kRP5E7YsY+MiqUde2rI6Vc6xAcklc6uPf9vkq56+iHDExPc782buLcm+/fX/K4X1C+rIYiz5nMeCKbmT7zhQafvep1ZAgm6FPOW+t4ypeKymFsGFIkwNBckIl0wEzcWr0FM8XgVBi4w5u441akoNW29muHQU6oRIxYbJHupPBgw+KENwHRVAg0tnUaNjpVZKy3oBUNlmp2D7DB7Vj2+ND6vzLFr7b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39860400002)(346002)(136003)(366004)(66946007)(55016002)(4744005)(5660300002)(9686003)(110136005)(316002)(52536014)(66556008)(64756008)(66476007)(71200400001)(66446008)(478600001)(76116006)(86362001)(8936002)(7696005)(53546011)(186003)(2906002)(8676002)(33656002)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nTUm7QMX11R182Zme9mX/ZOVbC2zC6TBEhHb0/sjKr0tdqlf9nWhXoroExjZPhyV8DTO3zViBcNeLT8vcpftEn1B+Tp9Um7Vpu6bns2e6KrVP1nfni4PwymsvT1yEAUbuO5Fao7Auq8qlOCF86aMty0CKjZIB3fc0Vo7unuBZ3LB08Q8iwKZz1ijIa0eGeQxotp/W4kza7JSQEs4qounDhaf9RhWQxP854PwGciuQLeGKaZ/vkhM4eeRuL4DgBjzR0myhSXOM7qS0wK4wN0Rnim9zRrzeg2upBaQHzSDHxc6AaQcOSmSQTfhi5GCRR7ZNO2Ri9voZtWB5nDDHSPc47TeXXfViTmDE0PLtUgRN2xdFg8d3pdXqGPzqdJyfNdOFlWlXwavxYiW+wMj6l9Q92T6MMwkPcsP6Xpq0Z+GmWbammqRcEAPK4wE7kfzs1Z5zLS/LThV2ZvayP103Yt5W2PpJ+pDA9/pHdlgJZgo2PqNa/vx8o5CsGbtJ07f+j09N83ZXuiJ4aLYr1wtEbOdC/EcbD8kiN/hCjUGuvBAZmPtfC2yNloRT7N3xJDfgNfwXX9PP7Us1IwV0zrrEDyf2E62JljTZtklg86QOsCpGUaSdLrhSz1u7olU5AxFtclwBxksCnbn3aXga8YQbjMtS2XMhyvBLOV5H/1VQh8t0D+ZuCtsEUbk4M1A3+AUqRFWjIzur4LLm9GX9ESpgo3tq2DklC3cD681Od/rbeltRdnTMdlO5p+REjAVw/5wymb1ctw/BeKiL21MDyc0Qrx9Sf15gwasBXIEKP2hxSScwgygsgm+nd8wfvUdeaVrx4X7
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 29fb2017-16e9-428f-2447-08d7ee1d1968
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:15:04.3072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PCCIBUJDJdQ2CNABnmpweGyqEoTbPfGrBDK8d9bJGDmuaqC45HX56JEF/t09W7qwcaEr8MrxbVsVNUPP+Bzy0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 05/19] igc: Add 'igc_ethtool_' prefix
 to functions in igc_ethtool.c
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
> Subject: [Intel-wired-lan] [PATCH 05/19] igc: Add 'igc_ethtool_' prefix to
> functions in igc_ethtool.c
> 
> This patch adds the prefix 'igc_ethtool_' to all functions defined in
> igc_ethtool.c so they align with the name convention already followed by
> other parts of the driver (e.g. igc_tsn, igc_ptp). Also, this avoids
> some name clashing with functions added to igc_main.c by upcoming
> patches in this series. No functionality is changed by this patch, just
> function renaming.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |   3 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 215 ++++++++++---------
>  drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
>  3 files changed, 112 insertions(+), 108 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
