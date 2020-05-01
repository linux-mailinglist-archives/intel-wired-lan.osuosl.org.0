Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B511C2082
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B1FC203F3;
	Fri,  1 May 2020 22:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C85N+oNNKlr8; Fri,  1 May 2020 22:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 58AF72549C;
	Fri,  1 May 2020 22:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45E0A1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C2CC8742E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJpBpJgRzfh6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:23:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A12F68742D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:23:57 +0000 (UTC)
IronPort-SDR: kiLkF2R9093HDv8RSuriCxXqbWKVYAhUMYs07raRSH7CjFlXpPVSJbHOtUc6Kfs6plDmKmcrCA
 e9Y+aIRVoebw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:23:56 -0700
IronPort-SDR: vmzHIyUOdZXd1voY7BrmgNAwUhIeMIE6PraIxMBrabLPy1xNjv5ex4qWRkjfiI8VsU751vmKMT
 9Gv51jsqR2DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="460047136"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 01 May 2020 15:23:56 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:23:56 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:23:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 1 May 2020 15:23:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qhich7kEEQdTkQv9FtZjx8KqaGt+P5X4ZoElkXRyqjpIzbuHx0Fh61muyq5IfthtI9fbFVdOT8oSBNT39i5yRL4tWMUnsyr5ExJu0Ak0I8+/IHgrmRO5p0AHbVz6+YRL0LJFbmLCv55dNLHf5bah9HOeAzkx5po0irqn+fGt5UCAn3YRi/vo886AmMEF/Azc182WOPNjSYWwTyhWOECohNFHgKNKtVOdPIa68eS+21arDEzta+jNq1Vccs2XwBAOMBSTyUPTBbBgsJSuvGeJ43IDwsXd7y44sMFrN5Nd08+rk1V50g1mD+Mk49nb+KIeZ07vRj5iY7LzGRqLvUbcXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MT28RMYrRvSOHTlIgl8+RKm7Z+/Z3+6B5itBKnxzXKQ=;
 b=YLk6tgNOLRrLa717iTXl3VXtUBz5x5XHTN7b2JiB0KLgPF+IwNIdBHaHkY4DVcwDEGW8YksjUZ7hWji8N909PGbaThcwOOiNtkmNq3nVuJ7JDbLYZ8w4/cCn5kD6tti+Z65mvwUegKk0EoG2JkrL7wgZme936C+JUR1A8YTDGk0V4ABUT4GFykyeI18rmXien5mwze/lqZdWfbDQF0ZhoiEklRThUxZ3NsNa6Jc2qcLPFS/Cmoh6udoMxXzrCwD072bN1OrDT2bxWM1G7s1f0nWdHkrfe0AFIofhWlwRz9k8HhPe3iB2Qm4wqPbzui0cZ72Hhc3qiTIhLccvR4aRFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MT28RMYrRvSOHTlIgl8+RKm7Z+/Z3+6B5itBKnxzXKQ=;
 b=gZ+7p5Q3LkgFlufo0kw1EbLeA2GqRQRN/7Zq+UpcH16UkhNir19Q/R+mCq/656bCieMUniRNep8fPZMPZrC8doVQbu6VnnFt1T/Ep+lkydm1OPKbC3w8kkPpuNX8YPgcAzh4ogjrqO+IGFsQ1pZ2mlLuVpoEJ/Jqpjzb2Fbg8Ao=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3227.namprd11.prod.outlook.com (2603:10b6:5:5d::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19; Fri, 1 May 2020 22:23:55 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:23:55 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 08/19] igc: Refactor
 igc_ethtool_add_nfc_rule()
Thread-Index: AQHWGnV6ixbvAQ6ArU+aeqvmRMdJWKiT2ORA
Date: Fri, 1 May 2020 22:23:55 +0000
Message-ID: <DM6PR11MB28901B4BB0AE77D27DBC7424BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-9-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-9-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 2c3d9d12-038d-4cdf-9cc0-08d7ee1e55cb
x-ms-traffictypediagnostic: DM6PR11MB3227:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3227C277DAB646FC96C59A48BCAB0@DM6PR11MB3227.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UAkaVVdrabum0aF5cryv7uatvIBMFFuMIDGH57YYDhcux/EpTW1Wd5UqI0qMJlSiBK5AVMEnwleDE3KkxBXNQzZJv7ccnWeX1aNxB89KWtODZnJG2kl1Yy18aZDZT26IplUvNrkfTjMs676M9U6bsWV48XtEoW0DPZjXp6JzHzVMHQDSH9k95UWXh+qSnp9ARfYCstLMlAgnyCFMW8JFMAm2m8dpSvHGQ7lmK/w3t5Nmv9DkPMN6iYPYH4bS335NkJs3SBzPPgnuyGHCie9Zmvxu/ECEFL2IVUv2PDvIVSGL5p+ghgAzKxoazjbD278pwr3Zex0HDTWnhA/ioAIAo2QrrhDXo9/QLEGDi3pVkOYoRm3clGWUVN0f8++By+WtLlEZtOb6sQaq16SZLj6R8rS8dl9A2r/B39DPH/0k7k/Cr82+ZJx577y1DX5P4Otd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(39860400002)(376002)(346002)(396003)(5660300002)(66446008)(9686003)(53546011)(7696005)(76116006)(110136005)(64756008)(66556008)(55016002)(66476007)(316002)(8936002)(8676002)(6506007)(71200400001)(66946007)(52536014)(86362001)(33656002)(186003)(26005)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: lWxeFpGX1b0WTbGrKM/55mfp19+ZT03T7nVftKz1cxPGqMrlj3mWkQNhtvjRQgNSc5ToU4S8oeItKm3Bam+0BIRgAth/WAlXHX7YmviuElGHUyRIFMrrPNyNg/28DZTol0Hz8RrrMyXv+j85naDb91iJkgghLCq33GtnCu3ysjImoaXfoms4AMpaZxJdKK6RtuU6nLvVuC1Gnj4UF+fmXjFIcQBcBIkbbLfctzbBQyyPug6B+rDyB39RpoFqwtIvNwhYt2shfyIlWEw67mnXRtUcJ5P25uIBzzhZjlA7CRg6+51rtnz37NCdCki4GN3H2izqL6EFZduPQ09nbGpv55DBIZDeJ3wGXec2t8hacyi7yTyAdl9eVtCwTfz7t55k+yBhkdhvsjiWVns0VZwswadSoYUVgg/jcWnlRIZ53lfk9W52Lp1osMJwKUSad6IVdSwxH4a4hZwYouOEQ3VWsEDDl1EsGb0jpdbL53xjCsZElRlnVt1+zDqQkQ/Qs9DON/4txMeUcDg3sLKWtE16v+C1BOiHGqoJN/VWFDrWe+9ZYrI5rlwbZKSV41e41aZsa4sWp1EDS15VMgxvRdGc61xbV+7JlwSbRIb+x4n1MMrMyyKC/sKqsFI2w7lnSVvS7uYuUUcDk2ZcqY5C4WCB5yExBPkM2F64hPx3mlPKrtp1GfQw3vpwSpuJujmgGSzDyYKicPRdNjBQg3+9JaMeZIZHxi87wOfpwcoB3rhda0nvET7LP+rEalrfZlVhHBHx0xKpeTQi0ibUZMktZbKcgxGB+SvIzNVaK/0xi6SBHmuLNRG9EP0DTMIs0tk+Q1yZ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c3d9d12-038d-4cdf-9cc0-08d7ee1e55cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:23:55.0942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/CcSRCR1LWi8mtT+rnFrLplaAMN1IiYNs3qmybZ5fclf07mO/p7FgI8SRur5yYi7WQ4w49ygzB9bCo9uZR10g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3227
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 08/19] igc: Refactor
 igc_ethtool_add_nfc_rule()
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
> Subject: [Intel-wired-lan] [PATCH 08/19] igc: Refactor
> igc_ethtool_add_nfc_rule()
> 
> Current implementation of igc_ethtool_add_nfc_rule() is quite long and a
> bit convoluted so this patch does a code refactoring to improve the
> code.
> 
> Code related to NFC rule object initialization is refactored out to the
> local helper function igc_ethtool_init_nfc_rule(). Likewise, code
> related to NFC rule validation is refactored out to another local
> helper, igc_ethtool_is_nfc_rule_valid().
> 
> RX_CLS_FLOW_DISC check is removed since it is redundant. The macro is
> defined as the max value fsp->ring_cookie can have, so checking if
> fsp->ring_cookie >= adapter->num_rx_queues is already sufficient.
> 
> Finally, some log messages are improved or added, and obvious comments
> are removed.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 150 ++++++++++++-------
>  1 file changed, 92 insertions(+), 58 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
