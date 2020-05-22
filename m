Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1A11DF059
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 22:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E2EF204EB;
	Fri, 22 May 2020 20:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLYt6BGo+2t7; Fri, 22 May 2020 20:07:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A6BE025C1B;
	Fri, 22 May 2020 20:07:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45B331BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:07:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 336E7204EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:07:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f+glnRrE-mmz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 20:07:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D15320505
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:07:33 +0000 (UTC)
IronPort-SDR: YxatAXLLanPTxE+oSOu8tro1PzU4Dd+u/nppBDBXjbrKcGdsdZQxXnryWh1KD+kRgN3I5EdO9w
 buWs5cj69EDA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:07:32 -0700
IronPort-SDR: YwJyqGBqwphc0zfRDYtzUm/I2bafdIdo47AVmLDVwNslaYKr2eAF8I+Ck5mt6w8L6eu58MXGTg
 +357b+LnHlcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="254448234"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga007.jf.intel.com with ESMTP; 22 May 2020 13:07:21 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:07:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:07:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E4vIjZgjyQ+D/GRgJ7oRbgYOPf90fsfJ+ymdU+yi0xAY6EUQVajiN4Hw1bC54xEYua59E4NGCKXmmVc+Bvgfyp3DcapSrAUuNam1UGkHf+PVYpG13TMP2NCvPeXw18+I6KgD35WpaYnYDekD0BHql7Vgx9kB/wlhiscbWQueKuFqsfvf9mWNwvS2IFce1fA0Yx1JfgXhK2Gz321TYGNnNR8PC3mz7QSet2ff850gqSn9oo52SQytTqfdb3egILbzYwjPV6IDymtYogRSur36ZtqNbV0tT35H9t2XZQfK/8+qmkAAfVNpQw/rG0ex/BJ680T+Vi3creGQWfU+yipKxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8BYLe9VgrmwthYsuco5KjAg8ClwBGg3p01Xmc5lOmwY=;
 b=bJV3oVGoDiWB1V6dDNQp5rEBxWIkcjPg8NDh+BmP0HrWnBNYGGMbTUvpivzoPuR5Ml9Tmr1Agg9yObptKleIwEwdpzn5jPhYLmFVqCOJqrrU+/CRpxdTV4DShElfkpS9bovj3jRUMTomtB07JTZLT/I9saRu6lpKHRrQaEpLwB3RLZh+OBOrhpmFCU5rq1omVQGZ11Zp8U2LBR016/rEgnu82bhCtJunu+25NsCfCI9Dt5rf+/mHk/1U8n/DelQQ5PZqxL6UW2BDCTOUa5gVveMCpY+uSrm07QE/tIwcI0ceniIP5Vndp35ReQ3Yo+OE5a1noX3r2iJ3oQFm8g42Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8BYLe9VgrmwthYsuco5KjAg8ClwBGg3p01Xmc5lOmwY=;
 b=B94WMTOFzd9ZHb7xgwB+HlFle/j8hZAbQUbmlqLVMxpkwzZ+mMSVIq6z3w4aggbbAigO0MeqPs08VUd6hm5JU4tO6WixSYpkcPNnsuEZKHV7WRRMo2N+ax1bzQbjwqS1Zze0S1IwJmcxv1SWjaoUXLyUiL/Q6dPvRyBS/yPRpJo=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1242.namprd11.prod.outlook.com (2603:10b6:3:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 20:07:00 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 20:07:00 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 11/15] ice: set VF default LAN
 address
Thread-Index: AQHWKxqLeisrVts7UkqHfLwnZYbUL6i0ks8g
Date: Fri, 22 May 2020 20:07:00 +0000
Message-ID: <DM5PR11MB16596E2F32D98ECD15F5A6218CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 420ab2b3-9abf-46cd-52fe-08d7fe8bb007
x-ms-traffictypediagnostic: DM5PR11MB1242:
x-microsoft-antispam-prvs: <DM5PR11MB12429D1B285926F730B906E58CB40@DM5PR11MB1242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t2A5YosJF5xvrx7NOxWwyaAFs9G/u+JxnUaHz1ntBk0gtnFeSOmlDo0mNt+ZuP8PLXauHUu17CeV8gf6qXiT2/nvnRwoRybsC2c52KGb0u7clY2GM2MMwBGSnT99fuKRhdKdo6igLDR2K47CvBV9aivdrpcSdlVt/9mvx894/PeQGWnzxavkniAOkGOj+rCWaCIxo8UQbKveylUJpAKgiL3OnBgvprMApjrEV9H86bvVG/7VesWFi3WvpAimkP74/StjnPiJuxGJmlj6KVkA4A5FL+qMkrAeyPwx/mw5P7mCkik0j+qXS8BfaKfbu2Ff
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(366004)(39860400002)(376002)(7696005)(71200400001)(8676002)(64756008)(66476007)(66556008)(6916009)(53546011)(86362001)(66946007)(66446008)(52536014)(5660300002)(186003)(76116006)(2906002)(6506007)(26005)(478600001)(4744005)(316002)(9686003)(33656002)(8936002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: yjPzvtTbAWw5mI18CNHgnlqnRB+gi/zSe+7S3v4c7U+XjwcPVTQlBC8e2sjpMfo0NUMLV3ufH7YisTZ9JfwIdLAQo4fGtvcGejc+I/9xDCqsfcgzA/O2rw9GEg1EVisUjOwbZtvHRwkaXkYS0WiUziM6oTXSuubcy6IwG5VMSigAsCjC5tpEOIgrncduylu1Ofo0TdjY8c2wwBY9e4WdTLFB9JSRF5nkz2P8ULAlXtJ39C6wn0d1xjuyZD6NvHL6DRzHv7vtb/87NxwPWXPrWSEnu3FNWDRVOh/QE+WjjIOYIGnuTOaFEvidgQO25bqLY4pQi5gByIzBp6acz5po3l6GTb0x7L07AdRwJDUDxU/cEcyMkKT9Kce6X4fVYX3fL0Z/Mh6IHOO/U2XbHSXviqpd70gs7i/rFjJ9mNwVMDrGd2+od7WIZUx3rNwOmsNwlK4WBsYcdaPPfq82zx0dMfTfAahpNPpW8E4hiPdVhbCWmsuuLaXgI/gT2m8jzAQ0
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 420ab2b3-9abf-46cd-52fe-08d7fe8bb007
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 20:07:00.2404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EwXr1oSk2kZLCk+5jKXGxlUBkt19gz/dJ3YT3JfHV/SDbg/cEMYEjmhid4CxEXjKi6A3eu/VEddzw2kyUYhj8tWOea25YCxVkiow/B5YbZo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 11/15] ice: set VF default LAN
 address
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 11/15] ice: set VF default LAN address
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Remove is_zero_ether_add() check when setting the VF default LAN
> address.
> This check assumed that the address had been delete and zeroed before
> calling ice_vc_add_mac_addr(). Now the default LAN address will be set to
> the last unicast MAC address added by the VF.
> 
> The default LAN address is reported by the PF via ndo_get_vf_config.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
