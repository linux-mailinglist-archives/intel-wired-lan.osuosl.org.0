Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DF31C2090
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:28:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6894788557;
	Fri,  1 May 2020 22:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bkxI3zYRC7AM; Fri,  1 May 2020 22:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9CE48855F;
	Fri,  1 May 2020 22:28:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 475561BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42B24873EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4jXUDl61D7M for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:28:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 938C78738D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:28:05 +0000 (UTC)
IronPort-SDR: HwfnOdAGOFqNb2UBVEz/0ME8wKhtjAI0/fpgJgoGy3t/I/mFI5ZsPd4Fr6Tipq7ZQ/TLp57wOG
 h+m7p6WGb7RA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:28:05 -0700
IronPort-SDR: 8oI7Wdh6O40FtFLILZn9qJSsBuL2SXqVd7YEaUWoCiHAVY90CxTjvhOttjwF+rjsfmGg/o+b/7
 8s+5QuPOKtEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="337732319"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga001.jf.intel.com with ESMTP; 01 May 2020 15:28:05 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:28:04 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 15:28:04 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 15:28:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:28:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IdHXwwvvs7eRgmiMN8dRj6KG0dE1d23rxUQed4jefGIfjAqxELwi4u9inAjtGlym5g61zQqzPBjkIEkpG8IjwbB06ssMNUwgMBgj3adoIXVaErUk33Q3V16tbnobYvypjk3z3ZBNMAR4qHfvmXdE0x3M5l8EqKWehYKRLXwVMj4rrQ2kOWPhZYJH7RXjoD2kfE1tti5tnh+35S+eimH7gSEyeDnY5q3t0/iN4Di7IdiQst9A4TaLLe5N3s33w3fCSfAF9ibZz/G6YkWeI+BCAW3hCQIEkV60HyNaWEsSNBrwW0eaq52MKZafHLC3yjARAYZNA1EcHNBP/ZM4mhr+YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46fdlFuYoHQHu5mH7iQ7zADPjo2jfrkFXIOlOUfznQQ=;
 b=UtXGBna4EXG2YfnFljKFinoZ8ylOB/XAdNjju5h88tN8vnGyAnbwHL4quh1fJX+Q+N11UWjLOMZ+G/BXK0ItJuxjlIHP290cLGVRXbW9yNXJsoAlKJ3ojantFl9uueHZzxvY8v+mqdQgQ03ZC2CndaECJaTTMuwcdt4lgxC1t321mldOH0HcCrjnee+NY3h5aq28PC7pReyMTtXWzlb38BDUkgFg0GiQ0f19ddg+AlFHVETFf/az3fDS0nIV51cRAdTaO6SCf7a3EjttjY+YAMrHo2RSY7EReb9kPiEPwjSot6JJlR/b7VBcqZgw8YQN+qc6jmlbA4KXWTOGMumSsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46fdlFuYoHQHu5mH7iQ7zADPjo2jfrkFXIOlOUfznQQ=;
 b=YnBVepBuuOmXx76LSyatWa3ZcSECwB/0FjE22YvBkUrtarx++2D3IroZUuRX1iEbm03eflquj+o52SuJ7w+A1skyCvxXYZh3qGYXnHNE0xEuAMV4f5a6cx481HLiVATErHm4Fb3B1WVGbpI6EfRMalTZH2Wbqf2GE+uS1sZQin8=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3227.namprd11.prod.outlook.com (2603:10b6:5:5d::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19; Fri, 1 May 2020 22:28:03 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:28:03 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 10/19] igc: Fix locking issue when
 retrieving NFC rules
Thread-Index: AQHWGnV9hgltBxII40KdQyTLXGw5KqiT2ojQ
Date: Fri, 1 May 2020 22:28:02 +0000
Message-ID: <DM6PR11MB2890A829DA89B6B7235B1AF3BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-11-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-11-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 5570116a-e37c-49b9-128f-08d7ee1ee998
x-ms-traffictypediagnostic: DM6PR11MB3227:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB32278B55D61B76E5A481AE55BCAB0@DM6PR11MB3227.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I1caeJ6eNbJ6kxJqFtlcdR6fmmNmDWpLLxEUjeTbxO8aUScB44QJceYImC/4L0/rmvv8PiiqaVtczm8blXUihg/dPibQZrFe3doBRbWQbBETiRsuBTlHrhZlRXkMim70lJwjOf4yF8MeqeOM2lsdsXRFAwQ8kxsOliBdt0/hMkY4ayk57YlGg7pmadZ7gXBC6ocgCHSa3ezXEVMOofj1Jh5EF1VeHGfhGfMNLUtlB2O+kC2zZx2glOZjQxNlZZETKnqNxdrM8CZ4LMnkJTJyYLKiGhVlJhgDGha3tbwjkGQDT99SFEgsRjaW3sWg/kPOF+PSzRGght6QPMVAqursKsiRDQYsN/R17t+a3XXCK5FobRBcA7GT9rhZdXBQHe6TzCUUr/MVKHvLwKjVMQLZpcCax7xtOgyW/WIAqp3J9N6U7VdOk1BO7ZA6FxQ8HDLv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(39860400002)(376002)(346002)(396003)(5660300002)(66446008)(9686003)(53546011)(7696005)(76116006)(110136005)(64756008)(66556008)(55016002)(4744005)(66476007)(316002)(8936002)(8676002)(6506007)(71200400001)(66946007)(52536014)(86362001)(33656002)(186003)(26005)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fynYeEKReLf08CJxppYdZZq0HOvS+ClNHCMys+kXH0glQ6bP1Z2NVChwD6FwH0S+29mChOkv2qmH4edN5l3lN55dfBhhH9gw/Bob2AODN2N4zZeop4Cem76rYyez+4s7GSY2LK+kcoIzvPHZKbnqoo2ODGFEaZW5SsJCRgZqh3nFxBAs9CXElC86NhZr+JihG9mShCo+7E690p9bQjT0cJaCXf8oCdzWQu68kJ3K3HWaAKwd0lpGmPWFVKdGBVaOV3HEaZ4xtVJsdWmNPCg/C+fF0ExjDLx9J9mRJIXVHxwXygGo9rJ7FWX2FG/GTZZXf5r1dmdXaGKuQlO0MsMSHzz5QLsSsLuxFnHGNUF8sBPfHPtGWipZqK/09bMlrlySGhnbt7ZFidCoLChW2FzrLukWQGF/+7r0PPwdSRiAhVSz+NlbRcAIRHHwcyPxbYYE6rmfBrK5ylAsxB24eBgK/4rWb+rz1h98TxtL7Rdms8g6Bjcpjl2DSU7x8Sf0QR1HpvW2YrthXEuou0TFuYNluPHI6EDPAjX/Bvln/GjE51BH84EzISjNP9X5SY4oVsZPjBnyHFWug36al56n63cPMf5ObBy7c0NDhpJTlQ1Y6t82LX0zCcGjWTynyy6o1oDOQmtkAVpFs1357gpSQMwcczxBvgL0XRkGF1TbNt0iUvzHmcEqDYeUAB+kYD+uOTy6I8szqb4XP6ZCYLXvn9MrYaQZRPzdpnMa5ZPoY2Woo9TgLljqZCzqgZ0fg8dOvLU2cin7pY9yCvQMYWWutXrzrBM0VaS2YZKJZ+H+pxoWTYrEJMsdZEBnM+jbgc9NlhJt
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5570116a-e37c-49b9-128f-08d7ee1ee998
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:28:03.0352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0G02vJ3il0Fl57WZSuQEKUlAr2bPU1ff9yVUs2q1zCvYdPJGMBK9t9I+0fl5/GXVwK4X5lZrT2rRtcOpzhHC2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3227
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 10/19] igc: Fix locking issue when
 retrieving NFC rules
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
> Subject: [Intel-wired-lan] [PATCH 10/19] igc: Fix locking issue when retrieving
> NFC rules
> 
> Access to NFC rules stored in adapter->nfc_rule_list is protect by
> adapter->nfc_rule_lock. The functions igc_ethtool_get_nfc_rule()
> and igc_ethtool_get_nfc_rules() are missing to hold the lock while
> accessing rule objects.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
