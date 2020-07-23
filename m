Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A23D522A487
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:26:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F76E24B99;
	Thu, 23 Jul 2020 01:26:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMmDER+PlYa8; Thu, 23 Jul 2020 01:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D64B024BEF;
	Thu, 23 Jul 2020 01:26:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F9451BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B296892A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mJ6zWOrc4pZl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96F9E892A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:50 +0000 (UTC)
IronPort-SDR: AZOgUnhjSWU/XjKz/FKiesNv6EVURC2p5PksJRgX/jNfFKTxjYafa+zseE+AUMGmNGygQEsNr9
 M1H1M3SyhW2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="235318481"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="235318481"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:25:50 -0700
IronPort-SDR: 2ig72A5/XoBB1ORwUGNP/O/sSsazefGAaXnrW0gLyNA7tAz4o9ZhoQj+3jQRSgJqn16ZvpGbrF
 w2RMQrmSMTCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="462665727"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga005.jf.intel.com with ESMTP; 22 Jul 2020 18:25:49 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:25:49 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:25:49 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:25:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:25:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5potH6iXzGK12+FFTJTQB/fLmfhE7GtM3fsh+CuLxlKYKtS8mBPlb6x2npo+fGrE9syIMr03AxhZjGVAO9difTBic7/lEqVtIyJiO8WK6BfPOplFLsO/QyWVtJexLvpvRnG0ALJTjXB/Iz/zgd3JobA8dmocrJloWcjlwKon9rjmFZZJWlXsA6VkoVYVtOcVjxCrNh11mlnUisBogD2AzNhaCBXWmgwGAFsHwbyKSAbnhmopTiiuhxY78YHa8fSJ/C8Tza6+wZ0RfBmZ7lkeMqpVCykOCLFbRtlW0JwD0p7UG97bwlOI8hnT6hgHZebtlRJXKFNhkrBoYTLKnRvJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wklJvKECpT0We+3+uQ+lnTm83DC5tfTvPRA91Wd8aPU=;
 b=Dp0L/qQo05bt3WvZfyH2ZfRZyqDNaokfoOZhRglJ7TBxrVfkMeL+k6ZTUGr7VugxwQO5BMUsz9Gj1ySWVJThMtnAw72dHGMOZSi0L6cZjJTqB6NtNoYg0uJ6EnjzDgYxw2qt0axtxPsSSUuRKdtP+jHiZAz4wCkF/Ac22Zbxupu31RzJj61FG92z1/UsmThKIJGDvjFA9cpnzJwqyAzSyKCqp248sZud9rygAxCAcNr41MFuCJ3St0sfEaXlyFP9r47tfuCCKPCo+YjtYmRo1OBP0iogHcFfhcBvrqJLB5qGCrOWJ1dTdu8Wm10TJjazEA9+GMK+yHkEcaaJpXoisg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wklJvKECpT0We+3+uQ+lnTm83DC5tfTvPRA91Wd8aPU=;
 b=h7twBtJ1Hjeix7JY2FpvaQZwLYV9Axe7SWo8SnT1ahdDpP57VQjoi0SVwhMAmVL37UPrQaL5UJ6qEi9631yvsqyjou0hJzwsDyo4bS/rJ/Rph4sWs+a4TwcHEaTrcBsdOo/YHh+tcD5/z4zPyELsTEPtnLfQ8QkUiDRRWv0m8T0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:25:46 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:25:46 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 04/15] ice: Add advanced power mgmt
 for WoL
Thread-Index: AQHWVgzzaxMsN6sVp0OToVQI2Aihb6kUdDcQ
Date: Thu, 23 Jul 2020 01:25:46 +0000
Message-ID: <BN6PR1101MB2145DE26B4D5A5E64FE103208C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-4-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 9af1341c-2af4-4899-a34a-08d82ea75394
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB153723517F9258ED14282D3E8C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mzDWrUNuQ33r2K7+79oW+FCeBv2R9JASUCX/wyrwcpT5KhAa77SqVOWUhhaVXvWYIRRLRFVGRJOWdQh20GXa4PcPOb5Z1nLMSUIpzjj3acF5Yh8N9YRS+ElVSDGc1nKF+bCUN7AiP+hfs074gvxGlx8IL6CA9q6ZohwqT6TKxpnXPiMywFZew2rtLsk/qOYVYiqCJtdrzNC3YkV3APUjt/0KmztOhsQG2DfqrFI9ZZ3foXnt/mb/plfOqaOWuiGH238JPY6XCCGK5Cx0itojnWRSuZCmMBI6lDGRM8TvktFc1+9ivkkbeFc5G14yDCRe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rdT1mmDnQQnhlDOVS1jug2fSZAbR32An1luQAgJqVwojIyy5bNvSpxHdsjNt/gi4hIn/IECRyDOEYiY5eMkAhbcojHABXnMbhhKRYUIC1OwONOaeRIqb/zJHjPr5qRf9Bb88UMo8CxS0fS+jE1p50NYG6nc7iT2AEAQBkCLew61RALYRQa8nkZ2NnZB/N30pGNz0VBvw6OTYuvRb/tmBjc7CXfv2gKRy03KO7GlQd7cnMZ7fUV28/2v9no7uMzEO23sPKYIFiM3QWf0+c4hs4gSlmMYtq3liZkvMOuFtsUAHWOL7ODpGYGu8GGtVHXCE/VILaDfZvbg391XAWXPwvNn+8AI6rVBy08EhK6c3NXBlS8F/H/sj/YmYrCeWHBUSQWzZhdFjIifqk6d8SkeNtoHya+SAPcsOvpddYgNUKp0akc8h4w5RtCBZkO4WNCBhU1SKuZ79G7EpKR278olsBlI9T5564LNYPIeRYM8+TCIRF8QPBl84FRcf7OWPnA7I
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9af1341c-2af4-4899-a34a-08d82ea75394
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:25:46.8042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +4ULzzFmqwWZpSm+87QR9M4q701KsQkfVIRhMztysOOo1AhxMllhqShy96A4VFjZR2Ry11JdiiNyElLyi+ljytNPUR3icEb3gvYP/aicvBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 04/15] ice: Add advanced power
 mgmt for WoL
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 04/15] ice: Add advanced power mgmt
> for WoL
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> Adds callbacks needed to support advanced power management for Wake
> on LAN.
> Also make ice_pf_state_is_nominal function available for all configurations
> not just CONFIG_PCI_IOV.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  56 +++
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   9 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  24 ++
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 363 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |   3 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.h      |   1 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  25 --
>  10 files changed, 458 insertions(+), 29 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
