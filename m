Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E9F6B0BAA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 15:42:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 971A440CAF;
	Wed,  8 Mar 2023 14:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 971A440CAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678286577;
	bh=Romf7/qh+9JsoXIqbApTEO6wo4g2CQH7E70qCO9WyIw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mY+BnpyWlHT7TX/ascwfXnoBO5nE2FfJ+6zTzGLHqBVBwBrmJ2H24OWXJpOOkjeyZ
	 XLNleuch70JTxikZfAF0c7fKsvucnW5HXZojLZckTNyh4G9u2JWdwzyb8l+6BTZgxI
	 HPViKN59UxLPj9qZvIgpl/xgTfmkqm6thcWnaYRzNIxlR7FevbAYyPD7oQ+vJv01RG
	 5ekMFR48kctOENZo0m1ZqKXlIETQ20x6XcwGCMPE3P/GCyYEEPwSjYfTK6nle7Ue9p
	 yPHiEdvX1Iq6cy4dQn1oE6hLCyve7B2bJ3xGbf6ynXMOZcul5JHNwPgM7e91vL1jDr
	 Dau0x4LqKGrfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xqaQtkzz0p2B; Wed,  8 Mar 2023 14:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7138B40C0F;
	Wed,  8 Mar 2023 14:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7138B40C0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45D461BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F372605E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F372605E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nz_UeIJZuTn4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 14:42:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10F73605B1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10F73605B1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="337685503"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="337685503"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 06:42:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="676994684"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="676994684"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 08 Mar 2023 06:42:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:41 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 06:42:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VOsYyKgQJIa5nbclqs3FtD/xXe676KTZzy9Ggr3Am7/dn9fKLrNCBxKl1AFvxj4xDV2g44eVoxyhrvh7fnYt6B6Ct+ZrCJ21kmGN8/t7S18JJpyWniL/EAcRj95Wt9JCGiqZLXzhXGUCd48hdUeYky+BJrdk6yyPGthXkMRq+1dx9R8VS4EnTJ8M5e02j8zQnsfWXHN1EzwXSQJAZN+ymKbhCJQw97yW0xbzVohFWEdv7lUJcCEYxSR/ZfwrRqH6UEvNb7weIk28VbiLKk/37lyF0NQEQQeUjrz+wxdKkD3FwzUKiFw/GOP6PtWDtym2ooZdV3nQSE6EwHTnPkrVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PojxCtEbNPmbiv/gl6JbuFE+WXuIu3qqxKygcvBIDQ4=;
 b=PNxkY8EEl01vqI0njsXnsUBlrH3dEIYr83QLyhx6amd/Z2P9KqgmSsFTcSpVMZ7XZ35gDX1F+ZOT/vyCEIB3WUtg4pXCc777ykm0/IrNpKBmIqfaBnQFSVds1Ou5giCwAzpu6WFEi5jIM1AKEBWwTIaCM7PXs1JFuUHhiuFU+Vv7H533x5MXCPqiWt97EVm7ijC8tRI2r9sHMyPcYVlkN1ADKTjDk2TVZ/sUSN7s8/+vgVefOqjYfboUJXSBMB8byQx1tM0t9aOcjKKj+KTHFo2ZEjQ93d1cQx0cFtMIFo9tTfy6NOqJIJU3/t97IJaGNs3vXv9qBhRIKmkb+lna9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM6PR11MB4722.namprd11.prod.outlook.com (2603:10b6:5:2a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 14:42:27 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6156.028; Wed, 8 Mar 2023
 14:42:27 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] igbvf: add PCI reset
 handler functions
Thread-Index: AQHZTCyzbqBgKk2uY02FOAMok47+t67wmMHg
Date: Wed, 8 Mar 2023 14:42:27 +0000
Message-ID: <CY8PR11MB7364AFAD0CC65B109D438804E6B49@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230301105706.547921-1-kamil.maziarz@intel.com>
In-Reply-To: <20230301105706.547921-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM6PR11MB4722:EE_
x-ms-office365-filtering-correlation-id: 34e80570-52e9-474f-e942-08db1fe35666
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l32RpQvyRBi+4HXNC/vf7R1+QTnvkqPWdIgE9nSJWjkdxoJbF2cSWS7LwBglC79G/qgBSBCB3UxwlgLGevsl1O43NHIQfsYuAdp9VK9QfPaerSSCVVVwh8SpoHtYQ3K28jq8SPM72a6h9+1HCd002y4i1r4ehgF7Xtn668tLzPIM1uOpeRgY72pXhZrzlCAwIPf1CuxX+uWOahOmpwISRJLPDSXcVVpu8Olq2lQaNJHEbfbXlr/FO3Y0mwQ3dfbkuYxNk0+aypjIa9rvHg+RBT+thtYQAar0lSA+NCcqGoFPmfwLvxifRrBEYxXm+doYmf1VSOC5v1ziMtnCRFFa63ltg62usQAZfgMF1M2dfFPTqUIh1RFxkD0xP3BzfC1wnXRJSrRHoSws97lavPmFWFNbooAuSBV1y8JdHCBvAT96ZuLYvH55n6F1epRFJOWCGk6cC3ug/yktqAf5GQVkm8sGNNFiLm/IeGzL4NWOy6akE9PC8ERS7YkDkMWM1qMmFCQNI5T5zBypNPREMJVaE64DZQ9iKQDg+fTySIQZDU2BGf4aovGpdEULuHxKvBUUYpnpbvDTpUYm5eM+A/hrEaJrZABo+WTfhUoezDrM06rxdHKlHnjQtht0GhAtsQ3mJe6RhnvxdO0mrGxL6xh51gRnNnOhT+esXiXtDjHXiB2iiMmZZuRj5gjAtVw8LgIO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199018)(2906002)(38100700002)(186003)(82960400001)(9686003)(122000001)(55016003)(966005)(53546011)(6506007)(38070700005)(26005)(66446008)(64756008)(76116006)(66946007)(33656002)(66556008)(6916009)(478600001)(52536014)(5660300002)(66476007)(8676002)(8936002)(316002)(71200400001)(41300700001)(86362001)(83380400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?8Aemyqnhxd6KmDSklqP7sCf6/m3Fnyt4kVRwqWJyt6WBqTfWYgppETb+uo?=
 =?iso-8859-2?Q?0gtR1qRsgj+u4/CWRguYC4a2ys93lTlZbMKQrzjvDrUkwJKvBYd0n3DGDY?=
 =?iso-8859-2?Q?kPkD/NBMjaJdu7WMdxqyCsKDYv3lvWF/QcTXMvIPxnDyBG9wXQ8+/BhLtW?=
 =?iso-8859-2?Q?cph2CFw1hd+W/mNYrJuvprbUTnmQp06A1bG3nq+/DirpYe0Tp+6tVaxa8P?=
 =?iso-8859-2?Q?8j6ov9cqp2MBWaojNypAOA3Eu1y1/IsI+co8jZHnK3jb+NwebfshuMdi9x?=
 =?iso-8859-2?Q?UVkzJZauSMr0/x66dEzMEPO8vf8zi30rl5EkZ3vZi/apZzqDs0oDxzVHZR?=
 =?iso-8859-2?Q?gBZcn9KUl/ScVQArMgu3pwnalcRpc6HXGe1cmXCZktfMjg7tNURm/ceNus?=
 =?iso-8859-2?Q?V2XYsLdYZ9EIB81hyEV5f43JOGx4M4UL3e2uh0tlepYepKwQCjuUi6AelB?=
 =?iso-8859-2?Q?ouXwdmPiOhoD1Fo8BalKLiSfmhU1McLB+ci46PTNPzxNEP/cb15rKyYG9G?=
 =?iso-8859-2?Q?gIIoHspROyXGdKbiipTRxCIq4fp8FypzMIXAcC6CrZcv4rybzqM5eblvFc?=
 =?iso-8859-2?Q?maX4IUaLbGaCPB+1sBGxPv63VfWFUYnPbKBZKo3ZoammGjKIvgIKUJIs0E?=
 =?iso-8859-2?Q?x4IAn6bbLAuRzoLWfPslsFMczWkQyEbGbeSzwG32KIgP+vfFMkOim6Jk3G?=
 =?iso-8859-2?Q?X3i29j7iGAu182e41PnWhms9XvGWr1tb1/8eyhR1EhilZZuH4womG6cKeW?=
 =?iso-8859-2?Q?VuKVjpg+jPgydh1XlJ8updfyKe/UPLGnUYpvutcqeRgpS+04q3ajyhnewR?=
 =?iso-8859-2?Q?lF+J3YGyCUTAQgFET7sYQkRM66NeYudLQlYAm9CXqTqGiWuJvsiBYJ0fht?=
 =?iso-8859-2?Q?WOIoYGFYeTPiUy2VY8iJh8RzHfNvZF4nmY4puk7wG2MUrXOEr24bYv5ZD6?=
 =?iso-8859-2?Q?TnGhLhtlOVDxrn+stWq+MEZwEwhGqFLnfVkM4aRbnjIRu6DNJDeJfWt7Eq?=
 =?iso-8859-2?Q?LQzQ7s2NHAPdH3fRQJhR9TD98wnp+T3VoOi4sW4FJ+EhXHNQ1A8VXC+jyg?=
 =?iso-8859-2?Q?pmf9iDMWyW2hW/k4PCXfc60pY/ElAJ9bzo4uNYMKWIjV/8MveeG9TrVxs8?=
 =?iso-8859-2?Q?Xqg5fTAG6fitxW6xyZ+aLX5u1LbBcxdBY2WKTfEyWSXJD6grQJ+LpJva8o?=
 =?iso-8859-2?Q?6HKl6v0JvqT6GiaQgW8SyfKQ6l+IwukBr84famRHcyQl9IWuwZneS9E2gn?=
 =?iso-8859-2?Q?kYYfIbt6YmfzjmkMkX2wSq9kXDbmRvtkBQ8MwkbE85XIoGOn3+yfJHP/G8?=
 =?iso-8859-2?Q?rtbrFAD/RBfBKfp5UWOrYHIP0+L9xV2fj9pDOKUUJC1NrgAuYqrkVaFbC3?=
 =?iso-8859-2?Q?GXbyKAm7XuKr84uVVg64JDArjVmpb0IhKz6fGf3ffVvATygJEGpdWoB32E?=
 =?iso-8859-2?Q?8h+bLqzfrF5W3epWyy2du4PF1BcA9/vEhczeKdKFViQhORdKMzOs8tWhJ4?=
 =?iso-8859-2?Q?hbXidxx7WInQ7wFZsvw9JtSs8IBMLmsOJSixGWEhzu/QmzaZZmVkDvOlXQ?=
 =?iso-8859-2?Q?6VCJaN9xDtK2jIdkciOTAWVQAOmCyJqzDK3C5ox5DnegMYX35jK15yMnO4?=
 =?iso-8859-2?Q?KHoXPnqfAxQbiznvjEXOLCYha6+zwOPDP8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34e80570-52e9-474f-e942-08db1fe35666
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2023 14:42:27.0210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OkPH2ZIMv6OMdUpWOdVA/KVPhokQYGeaWVSQACgP/Wc/Z5M8/LHEo1JryBVCM2h4H0hw/EW90RRmaSg0bbw6WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4722
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678286564; x=1709822564;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=toZ5zg4R+aVuJxG8Fh2b4I4YqTvXTRlKOCJxM04hhg0=;
 b=Xg+MnIEmlVJBK2bouicp7qbvWIQ9jO72zwQOIixWkSqIrif5owoaObHt
 NMZxhSeaqYu4ATWvtDygQoBGnhDuGXnFeBI4onISkgUg42zq2NJP38928
 jcNuDXXNlstofIbXU9z2A3HUnpNKTKyNb1FMGSKVwhQ7rw91e8iaKNv9h
 kgTwwzeFT88ENSgf9JVUJlQfmx2Qq6UORPNjHhbiyd0Gm5LhMhwEZMOTa
 OHWBDbM+e11+HAtV9ztb4Fh1QiElkpOeMFcpNGddtFkjGSbFD5YfaGKhb
 V/JmDF7phES1Keg2ZdTJsC1qS+XkYO8MArqu8NxxBxSejRFmc5nN027U6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xg+MnIEm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] igbvf: add PCI reset
 handler functions
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: =B6roda, 1 marca 2023 11:57
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wesierski, DawidX <dawidx.wesierski@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Maziarz, Kamil <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] igbvf: add PCI reset handl=
er
> functions
> =

> From: Dawid Wesierski <dawidx.wesierski@intel.com>
> =

> There was a problem with resuming ping after conducting a PCI reset.
> This commit adds two functions, igbvf_io_prepare and igbvf_io_done, which,
> after being added to the pci_error_handlers struct, will prepare the driv=
ers
> for a PCI reset and then bring the interface up and reset it after. This =
will
> prevent the driver from ending up in incorrect state. Test_and_set_bit is
> highly reliable in this context, so we are not including a timeout in this
> commit
> =

> This introduces 900ms - 1100ms of overhead to this operation but it's in =
non-
> time-critical flow. And also alows the driver to continue functioning aft=
er the
> reset.
> =

> Functionality documented in ethernet-controller-i350-datasheet 4.2.1.3
> https://www.intel.com/content/www/us/en/products/details/ethernet/giga
> bit-controllers/i350-controllers/docs.html
> =

> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
> v2: added newlines
> ---
> v3: changed commit msg
> ---
>  drivers/net/ethernet/intel/igbvf/netdev.c | 29 +++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c
> b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 72cb1b56e9f2..7ff2752dd763 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
