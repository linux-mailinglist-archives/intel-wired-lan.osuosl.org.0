Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DF1217C8F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 03:26:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4ED2388805;
	Wed,  8 Jul 2020 01:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gQFH-9WnWfKk; Wed,  8 Jul 2020 01:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C74DE88817;
	Wed,  8 Jul 2020 01:26:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1523B1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 096282078B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6W02UWFUHaU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 01:26:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 624342048F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:26:42 +0000 (UTC)
IronPort-SDR: g3EBQ2kSiHMcYfDCSw288vtgb1RMOTjPBjtr+KKEKxTFVIGQRkY/fqjsxx6yVtfYD4UwQyCaOm
 9CAREysw8AMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="135957457"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="135957457"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 18:26:41 -0700
IronPort-SDR: WFHCrAzJW3ulKKo5hYVspt8vpZvT4i5piTOe9KsQkbZym2qB617olsiqW6MJbhYSW42Gdf2Cxa
 KpF6m1Ply+EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="323715058"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 07 Jul 2020 18:26:41 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jul 2020 18:26:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 7 Jul 2020 18:26:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mI9+6RGUYs6e/zFVwL+4T5pIhDVGyVgSDeGMZpFSfpBv/zUI7C+h6KXN/JGH8US0S0cfwGhEf6RlpKDiaMpWyiLnIcQOD08aaJeRiarxgrHPxh/ZCtb8RWZOb6Y6FlSiDjO3XwYpq5fp0vJzCc+oOFO9627t4rHRa3OypU4oVfLmisCAg2Rk9CmGqw0er7FrSGEyOTIMKZDx0CRjPGui68QF3cqbQbN5w8WujuWYf1NcFMMc3paKHVJo5X0vOYq8oIksgpmIH6tbWarMUnugxWq0TsCpXIaq5LxAb19jl3aKDa0XFovD7xsoJfvgDNebe8WKtg58b9/covJyAOpqKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxdpHJ4ylH8yD3OxMT8wVSZcuXaLYAy7tlqsM1OP8qo=;
 b=mUJRhFiAON/Z44ixBon267Nyc1rsc746hCjeC62GsKsho4VgdAspuE0eRUyKNz4Tl8+AZk8HTdv2Y2EYph/9TtwD9eeV5Bz0DcirI5skxci2UaD6MQYRhK+QcqQiz6JShQbXtxuERSR6HZvr9G7JyLK0TpRrLmAcaqIm671t1cCi7slvEDHubQpmxIvBhp4hMxnvh7U1XAD+t4IS6uCJhuRywz/ukiqKrqNaCgHxFXFN6a6hRgAFzL3Fg8tWK13yxVImOBL7tA1gqSv91nFiEUbhRmbX224SO6nvDwdczTIxB4L4S9ceOFVCTW+5c111+I1uetw/UyhnpkAhBbdrDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxdpHJ4ylH8yD3OxMT8wVSZcuXaLYAy7tlqsM1OP8qo=;
 b=u9WUXa9QAG+rhfOw2iKesuqtBTjNH/Agd7iADNnRz62H8T2OiHLyxygjOtmDFv9Lfl+fPb0efxkwNG6PaLOs31Xtmi4PJJpXez+4sh/9tji0LkCY3gMZlqcPf7nIwXok/t+C0IAzwoSjQUE9RkiYOdp38AqPpI8oD1oD7lMZ9U8=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3913.namprd11.prod.outlook.com (2603:10b6:5:193::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.20; Wed, 8 Jul 2020 01:26:39 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3174.020; Wed, 8 Jul 2020
 01:26:39 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove ledctl_ fields from
 the mac_info structure
Thread-Index: AQHWT5sfuiMct5wW2kiibwSlU/IS56j87lMA
Date: Wed, 8 Jul 2020 01:26:39 +0000
Message-ID: <DM6PR11MB2890C015C16D71EF2A5B1A3DBC670@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200701113043.9053-1-sasha.neftin@intel.com>
In-Reply-To: <20200701113043.9053-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f3fc6ee-ae18-43a4-2a18-08d822ddf6be
x-ms-traffictypediagnostic: DM6PR11MB3913:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3913BFE96B31D9D9DDC6F678BC670@DM6PR11MB3913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:369;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3WS44uthD1rC8bfu2CdANBOU0KxACA488bqEyyD8kXl3IOqdKDmAPhP2bRqlzUd0aHMN3F/0nGmsS3PItRzDH0f5lM9pUs9XLRw2DPhV0YSYSfdDlhcACkw+qbN8YiJxZnM0mQEY2mip71ftzow6ogKn/EPz6A0a13pZ/f817F8S3TzfL1j3iKC63jYmeC4YOIz+IcNpOB9xKbsBPKXB7jyMbWW67+R4BeZxDIgvOxqdIEkNqJLbDa2apHh6artUWSL+FQsprzK1QLtpzO8WmQOsMDLEbgASAZSQ4MTcHFt2JKtpIL/sUYKsp46qbqrw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(66556008)(4744005)(66446008)(66476007)(26005)(186003)(2906002)(55016002)(9686003)(86362001)(478600001)(8676002)(83380400001)(8936002)(6506007)(53546011)(7696005)(71200400001)(66946007)(64756008)(76116006)(52536014)(33656002)(110136005)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Ew+fD5U62mRDJ6GjBTwF94ad5eujX3qb9XHiFb1lqpTUHxeb0p46xjMjkzkKztHccA0cOnaJMA7rP5oCBAWJXNP6Ok5Iv1XlS2CVhfAMmd5g6k2djNEJ1FoVzLgpAG51lh04D43My7+dn+67mP3f86EX/5QGdXKflZai6RleAPx3Eb61Z+aUevsVVKyiX7pI+JTCVod1sAcIPnfyKao6yTp0lyN/p32j4Oo7RToaO+727Mbinj3Sdh01xJvmoIaz4UP+I+z7EujMAsT0wPgdaLlk+3fZfh6FerObmPzsqzrKma7EjPiCRY0Fo6Cued21O28sG4L6IxYhF13AkF2SEwsc3DrHsEFfEPeFkOjTUIlMB+x14NQOF+6CiMhwSIw5JjCZfWLi0BzmnRojtT2TWLIpSrIWtGnPtuTARBjydPavIZhzynfos91bpEIzyVL8x1rRqRomgEJrf0XWjf8WyP2stBUzd9ZvCMk3mOJ0quC+sxNUbArD8tqBJTHiLWS7
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3fc6ee-ae18-43a4-2a18-08d822ddf6be
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 01:26:39.3590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GGVArq1K/bkjNZb8LD2wVenzVFjtdmmI/GhDTi6AsI3Jr1aTvqtEJ9YqibglrB7PYyDM7LKdrqiG2/TT602dcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove ledctl_ fields
 from the mac_info structure
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
> Sasha Neftin
> Sent: Wednesday, July 1, 2020 4:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove ledctl_ fields from the
> mac_info structure
> 
> LED control currently not implemented.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_hw.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
