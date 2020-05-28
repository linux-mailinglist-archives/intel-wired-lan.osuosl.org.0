Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2811E7034
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BFAF8890E;
	Thu, 28 May 2020 23:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ySltWkT+nhq4; Thu, 28 May 2020 23:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A29B088928;
	Thu, 28 May 2020 23:20:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD4A61BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D86C788257
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xwqza5dD7K89 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:20:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 467BA88247
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:20:24 +0000 (UTC)
IronPort-SDR: jYZik8YR4N4Mfd6e4DRKWDmDk/tLaV/VO/OH8DYH+BbLHU4dFsoG+aKBOb2Cg8E3TXDvqQlLvW
 4mqAzqExEm5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:20:23 -0700
IronPort-SDR: Xnt5USLdlZLWb9ZqluGVimz/MiQ/iIhkOS0OO3OhXESJvZS70QGHWJI+EmhfIfvNqU9DGxEJTB
 TKfy0rGWrGfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="285328810"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2020 16:20:23 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:20:23 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.57) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 16:20:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pp0Sa0cLR36UE5dcICUsPRrklIacK1ZHbnr6EpUYRLLp7kds5zxNI7hpyIukgOsXt8STNdoyQALaAWt4Zv8WOS9m9zMAiuH3qVYyu5OAbH4N13eymxme+X1sgz26MEalub9e1gGiFz0bfjKKlQXdJdY1c0q0d6U0cVHyzPFAle+VdsjVGRSrrf7CnlplGQscZKJQKQ5q0m1ezTZtfaNy/VVP/kKZ5bjmeZEjAWfug6oczzy5e5MJkk2HD1eY8dIHyMIWrxsVNxHkSEqIB18dipWpFMSmB8rZOAJ5R8N1XIW/Psow5Utp0SFy7sSIjVSaO7Rlw2Cyv0ZUJf5hlkXAtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MngAlVzYu/uEmi4Mo7wkiQL0ty+8ZEqwmyzTx91YSBI=;
 b=HF+pLPWW1aIVJcZHtDW4HT0eU6EsGOMFK1j0Z0FPNHn7WftdfAJqp85FMu3mriEc03PXs5ijXAvF0gKA2HIxSBWo0DrQzgL65Qa1J60bLsTY039XVYhdIXdY4SrekQrCRFixzSO/tDWrCf3UvfySlyz+hkRi1ZEppEKmHYbm0m/W/1P6VEb6GN5aZjsiN50hC85YpqeGhRZd1Z1LaS2rWgrOoYf5+2XN48Ukz+6zPEF7Bvg/HPRCWJSEws1UU5/21fKgcLi35ciUCyFBu/EfI1qF25wJaBiruTjdA7Mnb0IxgmhyuLwAPmPKrlsOqQJKrzy2MY/GecWTCmrX29WchQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MngAlVzYu/uEmi4Mo7wkiQL0ty+8ZEqwmyzTx91YSBI=;
 b=eVJENXzWAAFhfO0M0kWcmQ4JX/UvuzuglCU3JOe/ZPJpAlqnDy42D0Jh/rIa5PrmOGB3iQYQxPhIG4AArpp7T8aF+zearoZ323NX/Htu7sCaknAGlfXh/pHpAYkjdxdByC0Txx73umCsW6xNWtPFaq6vU6bAxRmI2KMEsyG3wCg=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1353.namprd11.prod.outlook.com (2603:10b6:3:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 23:20:07 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:20:07 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 7/9] ice: Use coalesce values from
 q_vector 0 when increasing q_vectors
Thread-Index: AQHWKx0Ym9JuBC38+EiZguL75/sOrqi+Nr7Q
Date: Thu, 28 May 2020 23:20:06 +0000
Message-ID: <DM5PR11MB1659F3FD9950A7DF12482C098C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-7-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 0746efab-419c-4b6e-0277-08d8035da8be
x-ms-traffictypediagnostic: DM5PR11MB1353:
x-microsoft-antispam-prvs: <DM5PR11MB1353425DA82BD6802B04CE808C8E0@DM5PR11MB1353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D7Et8vsABAsngSH0cWyi9IV9+LtB512IgBOIui6jRCw6RCnU+diGgXJW+yjWOQr9O4PxzFUDVZoZcReIoVjfwFaQ15BNOLM0wwvzb8tfqk0y1UUwTg9Pk8HsH29doKtUAIxOIoD2PyocJWbTRidqjhKZPppAor8RYmyEWMwfcF98RhhP3YdwpuNy1ZYJgdHzGqsqhDapX1ot/bYiI5fcttbZoDr/OW5t63kIoQQ8KrkZN+byYPMF+oUfMKNIuzri7hxkGfr4ddRceATwESxtc25RBCaR8lBroVymEydDR+uIOFFEu9bggTT+sc1ciN1M
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(346002)(396003)(376002)(366004)(86362001)(5660300002)(71200400001)(33656002)(66946007)(64756008)(66446008)(316002)(66556008)(66476007)(26005)(186003)(8936002)(76116006)(6506007)(9686003)(53546011)(83380400001)(52536014)(6916009)(478600001)(2906002)(55016002)(8676002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: JEKxwwM35sQas5nt4zkAiSoE/OIXKxnBBA6R9HF9mlrcyGF8EdfWEDsjPkx4WP48jwhHT8QLbN2ex60a7T39Pf2yBSCvn492PqNI5BYSjdbRQL/dJ0IdSontFV/PAE+5wbDz5KuhXl1sDSe5DCSlI9dRDamSfHnMtXZaY7cBBdMJq+wO5aC2ISyoR3x718XyYh9MUapzlqZqqoPMRoeXAXybcpJaBvZVIqts+pA6OoCM8MmMTKOEu3ye2STtCMCkqhKOU6Q+Y7mjgOxRzzGIE/0VtmYrZ4UF4UP6uHS3ohFNIir6NaGN0YpFbzaGsE6BzMmDe1t96jO79PlJsaoOPF+iOlLZC/Luov6EaXxjA5KtTXAG3uHvyFNnFPGT7Qxy80UcCUb4+hAPY5PEYyG7RTCcziFYcHSpRfACxv3hNAIBpaA/T00RW2QIXQZ+O18zwaKBjAVIE1jHvFVzD/FRzCSFtkZ6sWzJp3V6HcXrGVx2D0J/1IB82D0BB0kyK3Ou
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0746efab-419c-4b6e-0277-08d8035da8be
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:20:06.9322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KltJV1NXKhsQwHte4ez9slQb9wE/dfnB1PW4UHNDWyYNdUE9BdZpOKh4l4H0PISkbiugQ0tLDHVGUtKjibS/C2G8msPVSElqQfHsfG4gBUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 7/9] ice: Use coalesce values from
 q_vector 0 when increasing q_vectors
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
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 7/9] ice: Use coalesce values from
> q_vector 0 when increasing q_vectors
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently when a VSI is built (i.e. reset, set channels, etc.) the coalesce
> settings will be preserved in most cases. However, when the number of
> q_vectors are increased the settings for the new q_vectors will be set to the
> driver defaults of AIM on, Rx/Tx ITR 50, and INTRL 0.
> This is causing issues with how the ethtool layer gets the current coalesce
> settings since it only uses q_vector 0. So, assume that the user set the
> coalesce settings globally (i.e. ethtool -C eth0) and use q_vector 0's settings
> for all of the new q_vectors.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
