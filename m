Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B164322A47A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:23:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6512E892A5;
	Thu, 23 Jul 2020 01:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LEk6Opvvs4wp; Thu, 23 Jul 2020 01:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14CD9892AA;
	Thu, 23 Jul 2020 01:23:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D130C1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCAE788B5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k7KAFZxotqfR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 357E188B56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:48 +0000 (UTC)
IronPort-SDR: PQmA4sWRjA5KOrE1yRcD4RwPLIn7PTCAowILMz4ByTuul4ZuwbaryKSv18Vs3GbiyR5aaW2ED8
 Jy/3synpEFnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="149624981"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="149624981"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:23:47 -0700
IronPort-SDR: TtKUMu8jcNUVT93+PKKwbEsyAA/jOKqLkVD7Rfly+3QAtFjGeMnFBq47cmg79V592GF7d1V7MZ
 VNkjZJjzbFhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="432570398"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2020 18:23:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:23:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:23:45 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:23:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 22 Jul 2020 18:23:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JC6/PztQwGmSEKEmzhRnExZiOb2NSk1tfTFXRInHg/vaZ4TnwrJ1VyHlko4B+3583iDsnIbW3E9WNr6hVtWvQUiXCBzxeaHMLUwv9UXhJOUdvdy5K617/GKZVcMFBIRObwq3xq7K0clajxERBFB9n/PfcQ/G5MiKbIqWjZzCvCOo2QoPSEZ9O9i3RE8ajbgKts28k4cMruuZF0/WcG2idqbnwc3k0edCrX1YBacaHL5Gmgd5FAsjALWhgYn6sr/3LLZtBLeTufsg0joPqOzOPRPtXGtwXDU9rlrJLFwx4pibMI84MRrciirtLykMNxAEHydqq4ajZlZv1GEexfjYVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f8z0Y6I7RoXNEY+fC5Lwq3b0xtuKF9R0bqcEktvdxMs=;
 b=Ev2eNMc3I4ogxyVp4B2Dmtx7pBpCrc3NiONB6wBLworVD3g2okytgi811ap5JLQlkHcnW+b2l9ZNqafgA9OYuyDeqP63ZoPxoN+7WxxgbB4Bw/6H83K7U0cCbNNtI6z7jTBN7gt8iAOXtvt1s5I3I7sPzxw8tTZwldKJWhIIhLhKpKiZ3Tnano5Uz7glz5AOzRSC8vHkQRKa090Q3goGW7/srcTyF3mwfb0vTywVEOiOJJK1zkJ4Vp1TO00/d7w7xk2AWlS9lX0rTG7Lt9g5vGkIlie5jLPrhdmKkVRp/UtPkiYgPnZB+3+uF7himaiOdys9aHJnM5y7K4ENjgib7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f8z0Y6I7RoXNEY+fC5Lwq3b0xtuKF9R0bqcEktvdxMs=;
 b=tvVW57ZAq866AwlSEcgrLwtIGniaQD3I+8cs9IGjMWC7AENbxjEZ3R/AtDj4x29btIkkPs9Om0lE+X/CLyavCbLeqZ9dZUFbWmlSVFU9NFZ4/5KimnDZPfSROFv+gQuXXOeeqkMbWSUkNfDqV5oR/TzpugGFRmcPYS+pFV3Bk7Y=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1538.namprd11.prod.outlook.com
 (2603:10b6:405:e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Thu, 23 Jul
 2020 01:23:43 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:23:43 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 11/15] ice: update reporting of
 autoneg capabilities
Thread-Index: AQHWVgzo1Ppn0Ello0KVSNAf6fPf86kUc6VA
Date: Thu, 23 Jul 2020 01:23:43 +0000
Message-ID: <BN6PR1101MB214579B869831477EFF32E308C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-11-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: e07c6219-809d-45bc-ab95-08d82ea70a32
x-ms-traffictypediagnostic: BN6PR11MB1538:
x-microsoft-antispam-prvs: <BN6PR11MB15380422648743E202BCF73D8C760@BN6PR11MB1538.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:158;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h9+Sd3cRp+j2Cj9VREOtXNdzt8zezXtl+rH7aYon8AAp7/dksweJWXj5XAjgJK8E9BMvbeJESaf+Dh0N5zIPDYn700gpvB+s96qXKY6jYj/yO3S92YSuMN/gttpWFSNNLWkkUOIaySSWrQIb1QxgYjLcFPJYNThUHc+0LnsYAbzEUYajQGWIdghoiiP1zZ5w9qA0bgUaPxr31HC17hKKyr4S9/TKal4SB6ovpxIUNmw5Ozym/DmwOwd0cafSpR3aDTpxFhkiUlidDAoSsg3sEV+3VBNyNa+hK4rnSsoELxLFahAxRObXWXsrK6geo+eV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(136003)(39860400002)(346002)(366004)(55016002)(8676002)(4744005)(7696005)(5660300002)(33656002)(8936002)(15650500001)(9686003)(478600001)(316002)(83380400001)(66946007)(6506007)(53546011)(52536014)(86362001)(6916009)(71200400001)(2906002)(76116006)(66476007)(66556008)(186003)(26005)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: zm+7/+sPVo09rK7hahA/yF0VtJSftNsWb72nXqKOWhrpQBwzh4Occydw+MlHN1Sk5hFkKITRHGH4NhwULbgWDSjxr9f8E9RQtM6ONDTZX/WkDsW5Qmip28JLbyGkSfQ3CncdIRHhD3XIPBb5eizxHFqfer+G4JTIuybpW6e87D2eUYshg1R4hSb8m8RKyvcSS1PTEPsEGdQ3Lq1RGnyQR3WEm+2ESdnEOqX0L6RZh2+VOcApwxGjlca2BUoGmaWJ6umSg7EkPulQJpvCCrcQyg8PKc4J5+XWTmG+7RA1zTST1DiGpLFn1SbOHe+SBELJax/YJc8AS5Z3fhmAywscaToS3n34BdBFH228nu7lrsuOxITe1N8S5FTSDyEGnsnE/fbZvfmsfCmR4gAw5Jy2gKXGysMTRNhxNVUuVF2WQO8AlxNDvZ0rTTLQSq2bimi5xCDNOKDkEyxPsYu0k/vP06L5MA7d/9yehc+p3M1GZBE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e07c6219-809d-45bc-ab95-08d82ea70a32
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:23:43.6565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vSo3c11xI0SqrPJiAGuv3quuBqpRSNZJX6hgt0B1M+3yMfJcIf3UmRO3yESTvZIw+igGpEaTTjb09x5n5eXQEciNQ8d5qKDbkHAZOeNP1Sc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1538
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 11/15] ice: update reporting of
 autoneg capabilities
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
> Subject: [Intel-wired-lan] [PATCH S49 11/15] ice: update reporting of autoneg
> capabilities
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Firmware now reports AN28, AN32, and AN73. Add a helper and check these
> new values and report PHY autoneg capability.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  3 +++
>  drivers/net/ethernet/intel/ice/ice_common.c     | 15 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h     |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c    |  8 ++++----
>  drivers/net/ethernet/intel/ice/ice_main.c       |  8 ++++++--
>  5 files changed, 29 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
