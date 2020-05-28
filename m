Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB18D1E6DDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:40:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8569B86CF4;
	Thu, 28 May 2020 21:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 264A2GB9EUO6; Thu, 28 May 2020 21:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74FE486D20;
	Thu, 28 May 2020 21:40:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D35321BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE8EB88F7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQEVGsvsOnYC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:40:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 517A888C67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:40:45 +0000 (UTC)
IronPort-SDR: M8tg2eDMAXwD0M2TkEZDS9AetCjpnGnvG+lKNofTFex+F/YvwhbUzXk0EB5sPlmlzkjflJV6/i
 1M/SwfoevTRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:40:44 -0700
IronPort-SDR: TbXvqOdfFkNoxOzgJ2neMD14JPL5F1VmkaR/OWzQqrZeVd1YUFlYcKefoCGq2QqR9Va+RHrnjS
 4+9XS7kq7YYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="270999386"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga006.jf.intel.com with ESMTP; 28 May 2020 14:40:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:40:43 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 14:40:43 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 14:40:43 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.53) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:40:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FtvsFhFtdA4VbgwA4WmkmJ1NEApaicgvihsGR2C5auHAtzMTI0TNcSIPO/03YkNkl6HgARIjAAz+kol9gVJU6VbwYYKFKatm8bhyhSoOp+mHnMGDABsNrDO24IawUPsbsYQHdnZIw/fvQ1ch2yKnPL5uxca8lYVKczQmR70bdu/GQLAaabvGuGPTh2MzFWBMV+oO8q+dL3RtefGD6A75REJ2Q8sXmdj9P3m/TaRMVoyvFzDm/5ARZFxRyBrZQIAOqqc/5fmg5j3fcmWnoQyve46FeZAWDofRdik3BoAd+jBu4l0BzdgVXdzxpIhw+esoMRWaH6mvL+KOwqtdLIJuKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUUl1pzW6un5o0ivaCJa8uM9wnndhg0pgMFU2PmVJUA=;
 b=KwX3VPsThGaRJ2KD1Z5DHxltm2baw1jg2WkbcaDdN6ZpekjrKbMjnkqt6UXVin/WhFds/ea7asw8SawD8+gSOpQxX1rCUlEmssA5AJkPHOEro2Yi/U1dfyjPhtN0lSZ9iF1ebv4380e+Wmf2zzvgXzqBwYz3abkulYuAk9UzmHFFnCdI8rayQMTGinQoTMU5E3ZdKQU1/KXTHXqPXt1AdjlWEu0+hdPh2C14yiCwECXVmgT+cGIeCehgYtAvOgcuC5my1IcGSOJEH8xqaBXnOAqLh1HMWJvvnirB+4/v8js8t9Ko1YT3DTzIrP0+mlznBJhhhlnimOHbWto65Zs7qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUUl1pzW6un5o0ivaCJa8uM9wnndhg0pgMFU2PmVJUA=;
 b=oC46w0gLLmzMRAS2IGi19qyW9+nmWvmk9V8LioA4txs8GhkFzxmZI3BMCCNvAVK+YkX9X0eLq7QkPz8n7cTWTUMDeY6ASxcNYhVBl4P9+08cI4Fhf2UbdimszNVJgl9m9hnip/7jdpjb4Gd4Wnx0dJWpT1duJO0SzkXwmCPWQEE=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:40:39 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:40:39 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 05/15] ice: Renaming and
 simplification in VF init path
Thread-Index: AQHWKxySy+3vDoMzfkSt63QC7mpwwai+GvOQ
Date: Thu, 28 May 2020 21:40:39 +0000
Message-ID: <DM5PR11MB1659A27DD412C42C49B8E5BA8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: fd93ece7-dc9b-4c25-d449-08d8034fc3fa
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB2043E820262F72759FE7264E8C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7g7J3mxc2vmBmE5T/GBwN9VM7NbboiK5ih0EQ3G1FkaSsQTocQDBeBQGZhD1XqPYsHWwFMERxPFibDe3+Sm2xCpLRNYOvNkBEZNa1CzE2qTWYh5aGyrJfrdNX/1pABoNI+0aRz3qb7h3GfyekDHxaNhRWfYeaf+NkHfxXNwk3rqtXITQ4RALyqDE44as8y8jdjEknlPMu4nPz+i/D8u+uEouaEvUxcurqaM4gWHnAZPgefTAu3Ke1qivizwJ1KD+8qHxv9axIdSsu9NTBuD31Z7nVT2douUVY3QV7keczs/YdGutsY0jSp+VrXPuIsjnPQHUhOTjlhoHkEZbp5nkrA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: kNxySVEmQn8gPE5f9j6G6bIG/ST3OhvIP5cAJwp84rbgvQ4uoyVZGwxqWqHCIEJm+HW6vMJfIqol0dOsIDIpN2anmxwchaIYUw1DGjhskPJYv4QuJ4xycQTHBbh05Vjna2Rbdw+dH0CT7ct+DyDdHcL2L8ZhvZx8Y804TMvgh21I2/09/cq37QlVCDp4Rggi5ftYetkZx62ftQ4ql/PAQURTkCVzlerLD/yyaaCnzD8q+02Y+3RIivPY9sFGC1sjKTtb0Fymz/3osk6w/KQ0CAUcz3X3SQZSt6r0hQrcBKmHS72mRaP886xTEJ4Sxji7AHgbLVYU6bvI5cnDE7YxbmHjINXvbVmWG8jJJsSMPZgLrXuUDV60rLYSZL/RWm5BMyoj17RBeCCoq7SmFLummXKnlH086zS+RElu47N/YJMT4XrZf4OhatVhCpKIi2o+vuOyHPO5qmKByedkkBWruN80Px3PLQPshWZtCiuDYcM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fd93ece7-dc9b-4c25-d449-08d8034fc3fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:40:39.6960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MlmsXnjeCIS8oy7kCLNdkLn72sCdW/4/+0/HuGJhVzqgvtxCEh4Z9kOOrNZJhJlO4jyinJtiRsuVMAW+5DYOocSbKjNkPf5L/CZMaPCGpCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 05/15] ice: Renaming and
 simplification in VF init path
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
> Subject: [Intel-wired-lan] [PATCH S45 05/15] ice: Renaming and simplification
> in VF init path
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Some function names weren't very clear and some portions of VF creation
> could be moved into functions for clarity. Fix this by renaming some functions
> and move pieces of code into clearly name functions.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 83 ++++++++++++-------
>  1 file changed, 54 insertions(+), 29 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
