Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F1A1E6DF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:44:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6988988329;
	Thu, 28 May 2020 21:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 159ImkAqw2-T; Thu, 28 May 2020 21:44:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B622B8832E;
	Thu, 28 May 2020 21:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4B661BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C573C204E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HPo+x6M+mkaD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:43:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id DC6D120414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:57 +0000 (UTC)
IronPort-SDR: 2eiM8rQ0DcdX2tVInZ34ksMnp4WaWbpV2kfnwsTlortuMG7ha76o2gvBz68tRsGTbIFVgT7/cz
 bnH25OQRFEnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:43:57 -0700
IronPort-SDR: 9jpzKe8dKyP6UQ9mXsVW5h7yWFCZbepILxV664Bj73rJXNKIq72y3pPIlgRKQj7pbdQZMv7swy
 7Z6pwdFkQX8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="285304978"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2020 14:43:57 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:43:56 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 14:43:56 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 14:43:56 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.53) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:43:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=em/TfGBovx8mh6nt929pMYgMV8TV5VCivbDbqrFJ5GeE8pEOg4egzAUaBv14PgUkCZbWk6W5YjyXQbcllHLD3At22Ad3jNUQ1lypppb2F8kLealilvk/FF4WLuUlb0xmbAZj6ahxBbL9TfmHJ2c4xPIadLJBkESABDDYnmbo7XNiHOL9C2934to3XGxLslow7+tSqQNq/OAXY4CYfW98SM9RuTUF2c2sJYYn4oJp75P6AEXCOGYcHwIjp45VPzfhZNbWAihnShNWsHgzQ6lRUp7iYWylRwJSLt0NBEuGkjU/4j/Ae1dIQ1kOIEozDp5wdia77D+rymr6Yy7ZhUK5EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJFPBoJS+526HYppvN/Z16SdmLClVWV/2pqAr/pO+2Y=;
 b=X2aUYRG6F7TsKx3QrajXVvlWv5qFyCrAeE0Ig6CHiQBPGIPwjqSPnuggRvxRKVGk1tWo+MEoZyEO+OcI5BLtgVGsCa896cgefHcS5rG+oMiweHh6AVP7OpwmNgGlJ8YFtSxQ0VTqpMJaMga5Lm48MMALlLTcIAenw77om9c4OHBxFFl9JixccTAbvGSUCCX7eapOaJz2F/3kNBWeHrm8ckYA7Ods/igw/ZkXSsnkmJfu0Xa3P8JOmSiSndJd48xl+rTuBUaw9zVVTYFs/j0GBZxtRTfRAklFtnTrUpuj3ZlBcik5d9kpQu+luXn4sREs1hXyJJ9anCyooSjt6JtuzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJFPBoJS+526HYppvN/Z16SdmLClVWV/2pqAr/pO+2Y=;
 b=JM6cXRNXCs79EgEl7S/mVcjCxw2cyzU+f0latO4gem3prx/ddw7s6B/B9GqH0e2hWTBUEiI646i6KK/9ajvEZnoSYvsKNwjD4wCflBo064TQEOq8Aez+NFiqSfEDaSdOjE9o+qvjXt6QoIYDsQTCohhGE4rlWO4NdZ+rivibqTg=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:43:55 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:43:55 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 12/15] ice: support adding 16
 unicast/multicast filter on untrusted VF
Thread-Index: AQHWKxyNw1KpF30S106iJvSdpDA0TKi+G93Q
Date: Thu, 28 May 2020 21:43:55 +0000
Message-ID: <DM5PR11MB16596D7F3DEECCE5B3C919008C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d6d16f0-40e1-45f2-1ddc-08d80350386b
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB20436BA6976951102C33AEA88C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5AZs3xPOWd0KiToQuyY2GlnK9rxsHNXm36dpL1qx8FkxxipVUFth/ZLURaD/EDsHZ7SlfPKRfF1OaREM5hWdWoyMfPN/EWobUj1AVJ1U3p9RI+Sn/8gdcv5c60v1hA+1LvFU3e1kg8kAVNoMmWULi/WMbXAb+D210z9Vs7M317MZOFBy2OnOkxCMhJylLgA1mj/UWaf4sCQ68MRcC8fsDPQjs1wWF23g3uAv/Mvl5ikY2DSoTsuXdWwlNhbU4A4N+6pPm0QtB0EA9x2egs50mV8wVtfeG/rcFfzWRa1JF3eZFg0ZYwnhrHo7MpPhVNCKN9Kw3Q9UVYvOm1jnqOKFiA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WrBmLmvy39HWv/PlmBuC2TAF+FMTjuEEyzG6KRlrq4NjQ4GmS3eeNJYVy7UtHWHlxq6cnFnCOmC5V4XqJlxTPhb6oNqx7Tm52ipKiJ7VyKmUWb4dRNqQzxJ7jADZ6ELesflRNY1d+RKOHMBuXykdfLp4isygjEhpDv9cdF/4H2nHE8EMwxWTRtTOljK000NHRCUUhTPOgv9ZbLNVaIqkgXArVUHJLYmju6ZWCipeZ+Ruw95lOjlaVLXPjYQn0Nh8SHQDBVhzC61kesosYFNb+ypPQZ9g32KRI1ieTcRaZ5cwu5ZAyCVX8be4G4a9dPnBV/is5tCw/F5Xd7u+WsBgeVJIxdXjAHiLjEn+PlGZAUpPFNLKpkGhR9TBU0HRCq9ttHHrULD55FZzYXpAIwwpLIR2ceWQboIJJLKpuim1VXg3by9yOOcs/qgboK4ZCDPaQ5Bx3vXFx/SkbrJWU/jUk3GwyXNUi5WU1P3B+i4dKx0EBTjBgTJX+YI9ai+keM0O
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d6d16f0-40e1-45f2-1ddc-08d80350386b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:43:55.0796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zo6uZzTkOHEtFS8abslt1wudtYEWUKPwDWDLRXabJMra+lxZgkT9B37L/CszieNAu9omeDd6PctGNAC6QUQHaGg+g6TZ77zL/LOP8G41x2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 12/15] ice: support adding 16
 unicast/multicast filter on untrusted VF
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 12/15] ice: support adding 16
> unicast/multicast filter on untrusted VF
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Allow untrusted VF to add 16 unicast/multicast filters. VF uses 1 filter for the
> default/perm_addr/LAA MAC, 1 for broadcast, and 16 additional
> unicast/multicast filters.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
