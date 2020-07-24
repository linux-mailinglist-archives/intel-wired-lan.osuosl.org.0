Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 138A022D27A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:54:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42C4C888CB;
	Fri, 24 Jul 2020 23:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7J3d7Npx3LLn; Fri, 24 Jul 2020 23:54:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6297388836;
	Fri, 24 Jul 2020 23:54:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEEF91BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A80AC8853D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zq8kUDIi0s0b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11662884E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:27 +0000 (UTC)
IronPort-SDR: qQsv8N/uCbbtkRHBj1p82jBN2cNeKwd1Zbx3DatKL9aaqcRNutKjF2cpLjnoC4lmsr+Ss+2sYH
 ZHjMa5NLQsqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="148706586"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="148706586"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:54:26 -0700
IronPort-SDR: BurGO9mHMDS9zC0I7PmWlZb3Cr6C5C8bOHZ2QzIYB75AjZ7J/EOt2t5Zj1N0yXHxvY0LdWXYSz
 f9stHfDGnHrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="321179713"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2020 16:54:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jul 2020 16:54:25 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 24 Jul 2020 16:54:25 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.50) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:54:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cW4BrremrWkzTytR6VCfwJmRJiqOXR7UBo+G6Yf8CRfTrpjvPtpq3NaI+RhpFMBBp7Hg9/kVhhCXrMRHMernLyErl6mIdYJwBNpdVcgAcDDfJWmqOcvtRQILjjC9BnzwYkHtGRJJhSeWHkeRXJT2ls0ks+fPQLXMpL7uSHtCmu7vsLyzRQL0hojXRtC7oFrA4tsRjTvjVwEpOeK43vWuU4Lv3QjD2sQhTjg6plMjZbUzKZCwg1ex0Wy5c64nC9sXdJ+RnWwd+j4S7B9hkO3TgAH3kENEL8NkGEPRhVhfSIA+YDyR6axY6h4sHcs4LoZCIkbvOHQzX1BmcOb06dOnKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HiOsWTFR6+5q6HLajGRmTztOpeXokvFjNkQAB0uy2uc=;
 b=Pdvs91lYhq3kvlxBi0jK9sQ8i10CKZ5Lcf5nm2N6PC3zNjVyXh94gGEnNQ6pwtsOd2Vq6bSp/3Ksudd8NWNfvHG3OJOwPaRmmq6bTKNRrsKVO+J6nTp+GXYl4vaQuoyROLK24WZMGhLc7tHy/+kYKx/aEpfDcP+kxgqUS6gq05ohv0TQuD8s1OpSAukhIseMx+cfEwccI8DcZ2llVYMDC5+bVc6WugnVGbdVhTsaTwf54zXJtbsgbIl/S6Rb+0duUImtVowskivYINIfmrD9HUVGylRGCgQMghQEHxCLLFF4nOjAwIMQY8ruddEi7AuCWd2zMIA0Fft+PhjifoEuvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HiOsWTFR6+5q6HLajGRmTztOpeXokvFjNkQAB0uy2uc=;
 b=VmbV21wFcufUla6pPcfIbpwHXKFhwmc2+FMnTVdZGiXl627P+2XjIAq4EvGTq/HCFfWEBbkbnwthXIVZKNJ7qxrP+H3G7oVhE0Vrcpl5VC9CEKIkwWEHdVkpBDaFSTiRs6QwVE/hdLM2aWEct+g6yZNWfKImUqyBDeYyjiJCS1s=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:54:24 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:54:24 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 06/16] ice: Enhanced IPv4 and
 IPv6 flow filter
Thread-Index: AQHWW3YMwunkE/eBQU+hLzV/sdl0AKkXdIcg
Date: Fri, 24 Jul 2020 23:54:24 +0000
Message-ID: <BN6PR1101MB2145124B3FA6701B879EB4628C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-7-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-7-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 541df9ba-404c-42bb-c8d9-08d8302ce49c
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842E707BA2ADE057F208AD78C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b/d9dIkpT8hdhASpozv9+AjNa+ue81MqFVrC9JH1LsE323+OSxz6ep/6Nvf3oR/O/YHRtdTOlmC+16GywhmnQqwL120I6Q2smrM6N5HgE1ly9lFveL5TaMawUSGn8jCk8lFC1a1iX9RBNMRbZRPmRvmthe94S1T+1ZuGTX80wjA0hIXAB4KeIWyzREeG0f6z+H2yIn8SnL1muczm2VOSRexzJhnFXKJ4rLmzxIR8WOlf4AzTchs4L8ClqHKzwzyIK2Dd+wyWMVj7Z8j+Kzxk2tBUaZQj45XaEHDCUhPHsaWnuOXCWe5DqNqMlcubmrwG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1U3BL81OY2OfFami5y82GoiUF8uMPGHe/Zgn1XjLolyH47Ib1e+k3sqsgkHUDtkS15XhWN+1W8q5NBPBPzigvygm1I+IDntUOWDGlsVBm1biwIFj4QaCpzPw/DNKQmalFxFYEGaGoLUgVdhZwuv24axRWBt9yTpy/Op4k4ri05KqUQGQvbfl8o6gqb36W6hfRMmk1Y64g2W2bdGuRNL4kx+QsWufE4ArOLYrxGD+Wj+m55iP1ap2ySyDzsq5MXw/gaa6LA5sIR13YRNLVP6ci/inEZ35fxN27dAPjF12ptY+JTxZJrCUfim4tGS1o5kXnxrUFbBSOC7n/gCfcj/1Q+pipBtB/OhGBgHV0yhh6NgIFtBIQxkFwnIsP2VU0N5xs5drEuMuQxBnn57WG3z++q0ZlSht4/z6zeZcH6MlUG0jbnFjZ5PK35cLCtDYZHAGQXzGQ0SyxCRxHUdTaPgIzWfPLeuHGVGvrkfIy0iOzac=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 541df9ba-404c-42bb-c8d9-08d8302ce49c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:54:24.4480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: poULri/FVwBYetjG+/Qir19hOTACpSzvXx6UP2gxq+PZ6hNhglcRUmmqypFG8K86gaVrjes5i7FH9pPtIX15iBvBNBaSO27GccsC7GXxQc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 06/16] ice: Enhanced IPv4 and
 IPv6 flow filter
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 06/16] ice: Enhanced IPv4 and IPv6
> flow filter
> 
> Separate IPv4 and IPv6 ptype bit mask table into 2 tables:
> With or without L4 protocols.
> 
> When a flow filter without any l4 type is specified, the
> ICE_FLOW_SEG_HDR_IPV_OTHER flag can be used to describe if user want to
> create a IP rule target for all IP packet or just IP packet without l4 header.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 111
> ++++++++++++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_flow.h |   4 ++
>  2 files changed, 111 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
