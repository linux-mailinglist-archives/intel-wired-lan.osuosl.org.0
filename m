Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03DC274F78
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:16:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34ABF87166;
	Wed, 23 Sep 2020 03:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rg8THD8Xq5O2; Wed, 23 Sep 2020 03:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 969A6870D2;
	Wed, 23 Sep 2020 03:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 999F41BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 94EC787089
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5BribHTVZmi7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CABC687071
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:16:51 +0000 (UTC)
IronPort-SDR: 2fX9QMrTbWmCECCXS6sOfgHGeIz/NXAXUFD4NromZpGjZjfteDQJ25QoRH7UQq/9S0s3i5KLO9
 NbPMRyOLE3Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="140245758"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="140245758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:16:51 -0700
IronPort-SDR: Wl5eztBQpcfBd81F/F4JQYdfJAfL9m/UhEKqB8J5xUixPu0FpiOPuwrn0LRGTBSMKbpGn2Op+8
 Vw/jqTlt41Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="335291745"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 22 Sep 2020 20:16:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:16:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:16:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:16:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J41/Tckt+3d0Dm7rrOR76tWlo6ealr9ftJzT0TkKWmKkDtELNlFp5XQ9MNdik+VtTc7PU1/Vh6P5AhAoo0+bLbB/toiDnietYSBDpl7VZpwLMpSJXBecj4ERs4flzbEKaAKIHsJi3V8s8AyctzI6cvFWWdi4yMaMCyWqdRWTeXY19EqwP5WfoMQm17HEphqcCdq9YDC8CPP4h14qmGBtLs4DB8XgRkJIUHTXjZh/rAttjG9tVwWwygVRLt3Oj+1SNrPeVme4pAvtvDNPe2/hSSagfD/xzoWTTZZuqqkOwiWxShID7lFrmn/I6qZszQWP0k9vG0EfsQ5iH9pM2mWWCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PQIQjEY+d9CiDc8iLPwX1cAeLRlLycZ9IOuEkAsX5PI=;
 b=J//a/FH/edUG2KgHrgwvRf0tGlYseFQggvDZ2QKVxLiqog3/Gd/nHRxLFyXxIS6TNbl9TICj/gcNKmLP/A4h7mv0/eATdE8SIrDISepQr32rvd7qugylz/vZTlYZdSjti7SnyDXtEAPgJZo0+bKa+W5u81JXrD1CXNXCofHsNVu2dxjH7POHH26+uHzP4bprv8a9XRM0+fNgsEmUo7Bt3a2WbXwl2Jh626FYSNBitmhrGzZrxRzZ4ujs6BjlyGQpEvERPupnijEZrNT4n9z8H5fAwYqgwYIWNGHTaWlxNV+Po3Co17rXxCtqLJm8uvcxe0k6MPDWH2VnLDTL+9/iMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PQIQjEY+d9CiDc8iLPwX1cAeLRlLycZ9IOuEkAsX5PI=;
 b=ekVaKVpH9fRbxW2TUUXzyMVPonKTYz7K/2XHCsqMHj06WeZXSoBK1tAkYyKPk51sSvkit/0xkQzPpY3MI1sNEXskqifKQMJj2YGAHCvgoLMDiBXJYtDmBFX5wF13VOvBHo9PmjE4Mhnki7ESxOyBFZ4eFQv0iLgjHhMCNKBIHws=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4476.namprd11.prod.outlook.com (2603:10b6:5:201::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.19; Wed, 23 Sep 2020 03:16:44 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:16:44 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: clean up W=1 warnings in
 iavf
Thread-Index: AQHWgWpC2qO5DzW9NkyE9ed24+E9pal1rO8w
Date: Wed, 23 Sep 2020 03:16:44 +0000
Message-ID: <DM6PR11MB28905D85D01D85AAAF7932D6BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902204551.2137634-1-jesse.brandeburg@intel.com>
In-Reply-To: <20200902204551.2137634-1-jesse.brandeburg@intel.com>
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
x-ms-office365-filtering-correlation-id: faad270c-1134-436f-0b43-08d85f6f1936
x-ms-traffictypediagnostic: DM6PR11MB4476:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4476D0C280915F97EE170A66BC380@DM6PR11MB4476.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: azwzIhx/K8UUP71jcaruSLyaA9nBfXwOhqGzuB//5DHKTPqZswLxRTOO1+Wm0g2vPfLxiSTJ3suOt8poGSx3E2Qkx3mB/O6ZFX40QdF0G29x1mOw51gSDFgTI6Tf1SWHLUFipnf5A3++ZWBO1l9y+/p2HJ6UMC1RPqO1RL4jXX+kvxwXq1TKSyosUX8FQaz4lCpUgWXk+hkL4HvNRn31FcyqlGVPeVNp8pix8mTfhNcw1BodtsSG3BGFgQvWr61U+uqk9kv6LU7U/rJTahZMth2/zdUMjwHkD7zdS3IMGUIYInO+v6QLIX7+aBCNJi8CG1BnzC4hDMPRJKa9hjAyc1RThAyV2NKVtZidA1xPHhe3JrVf2E+E4IrB8XcN1LDO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(4744005)(186003)(26005)(8936002)(86362001)(316002)(110136005)(478600001)(7696005)(8676002)(53546011)(6506007)(71200400001)(66446008)(64756008)(83380400001)(2906002)(66556008)(66946007)(9686003)(66476007)(76116006)(55016002)(5660300002)(52536014)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: YILK1C3JUYv3JMjbFQTCvbq5+hRyFMwPEBnPB/oHMBeegwf3l00kUE+J4Ce9XPDgd3dghAZPngl5asBUj9oRGGkrr0/kVEhZPr0GzxreX5xVGgHce6rZIHdrLl1YoCBZJvg+3vCLPSuhegiIWk37CF+1RNh3iYyHPVJTMwsgKK/Yjwe9/pGN0ZwqWAG1EVmMAXP6EybmhCT/l2RagzANHfAPrjBK1Z0ZKGLxVkk6LfCk4H+uy0dtzZLrYUsrVUcpQ3OmtnbQwFfIl2uYHyn9oxILr/iVZtiSplcjZ97sSbt2xyaY9P2CWDs998wr0a3BMpq8a0NWL7a152BHUrklnlCcGZ9shprx2Og/BmE6SwICO3xRAGI46PFV77+j1TtjuwdQcDj/4AgYxAMnIIBQrG0QLk2u+o6z385FxGC7qRWoOyFrv7eesu9rxzXPPHwPcdFkCRB2lQSukeDbr0rNRmqJ5zyQ4aCQDXKC+74SUD+lTRlXPCssMgNjvdhxEYqdc/Q2X5PWka8fFEQBX3xZOwY2gDz3NOu4zjKeY3fimmRRwH0ULjFGs2PfqRuoVhLO5rqiYU+qXNAgleGkfftcdoKdM4zy7RV4jeISnMvy6DeQ/xY9NCk71EBEQmbu7apdDeNuu4H9wYzwrrsn8NO2Iw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faad270c-1134-436f-0b43-08d85f6f1936
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:16:44.0956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 800AF+LMp5Py+IlhZ/BZhqvy8L70NPkFoAgrVBAmQOQKBsIrBRRLX2tjnnpOfisW1LIYa/gNcFPJfKvxaZteOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: clean up W=1 warnings in
 iavf
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
> Jesse Brandeburg
> Sent: Wednesday, September 2, 2020 1:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: clean up W=1 warnings in iavf
> 
> Inspired by Lee Jones, this elminates the remaining W=1 warnings
> in iavf.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 24 ++++++++++-----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
