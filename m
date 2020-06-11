Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 745741F6B3B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 17:42:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05F33899E7;
	Thu, 11 Jun 2020 15:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4pmqGScnCj4; Thu, 11 Jun 2020 15:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E1BF899F5;
	Thu, 11 Jun 2020 15:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC7C51BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D56B288839
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2tejYDE711m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2020 15:42:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EDAC388838
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:42:35 +0000 (UTC)
IronPort-SDR: nsM5NCNb1lRVojEISWCwLsDy6NwLkSYnQpe2A5U2D4AjzjfZ4Bn39o6FxI2n+w5CNgABjenKxX
 nJScHk2L6dLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 08:42:34 -0700
IronPort-SDR: pAP6iSbmyp4NEUMhWfkXXwtpjOMYGakl13bTsMPjtThpAYtjFsQ8VroatVS+lyM633fsvRbqvU
 0TDu7kv/CYvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="350218909"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2020 08:42:33 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jun 2020 08:42:33 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX123.amr.corp.intel.com (10.22.240.116) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jun 2020 08:42:32 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.58) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 11 Jun 2020 08:42:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrDGso4WttdDkw7OMj4pwnEmL42nxO8yfD0MMhQClBRC7+otFoZdGwr87e9c3Mhdx0HZiU1fEXAj7pbB+jNdC51FpdITguRYHtIW6ZL7jZ3GonPK8nfSPNgOM540uWI752j1Cy4xMlD665kWRrbBeUQd5J3mmOxOyCXO9KPt2If3z6wspMmj3ahc8AXdos5FabvKbVQ3p5mkPUOIW26XcCkTLFAdX5Yt+mfdtdX5goQYPGBPjf4bqnzku7hCm17bG/hBvEi58R6EG4/QEz2I3v0TIFDSE2lP90QsloJVlTcUggSnvwJNy33w6xp3rEL76SdzQAqr139nvHWmmDL7uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uB87kyX4BPIGjQLLPKbGC/S1hWYSIKflJwXwZDSZubs=;
 b=IDiVQ5X/DlLPXtMGtVwmwcy4qorsanKlg+NmXIKSIuAE9d6HsddJ6T+krqy+34fzlTkY5eKUeYIGde5GbRyAEsAUSDymiix5hf1X2K1mMnIkyJr9wiGbZj2dfWNvFShbhxOvNTyaXj9G4bBCsjonaTbocB7Zjz4m0zLKJvU9kl6IrfqclUAZJt9OdpcKTznXe52H8Fx/cLAyogmn5RUy8jlRaeCCXD6wr1duwquvNtkemqCzPa3/8G00HAkPzRQ10dfmZuz3hDCZArACIBJ6QmlpWPwuxkgXtx1XNhkKblHCoO1846R6ycrI1oD7oThip79xh3fFbF0jk+9tzqxZ0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uB87kyX4BPIGjQLLPKbGC/S1hWYSIKflJwXwZDSZubs=;
 b=rtGKbqb4a+sUG62PB1U5OnXVVy429GpXNIpwqWNCekVnQx87ZFVmEJNMoBZvNgB6R525qup3q8WP75fSYlCwkW8RvDDjuzn/GcFQdFlDlKcasv/2WPLBPX42nDbstEDggJDaUexJXhtWaxYfPaQrt3fly/jNVg1/CjUOPPA6SkE=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB4066.namprd11.prod.outlook.com
 (2603:10b6:405:82::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Thu, 11 Jun
 2020 15:42:30 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 15:42:30 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/3] ixgbe: protect ring accesses
 with READ- and WRITE_ONCE
Thread-Index: AQHWPmOeANqikjoQCECqH8yRGk/iJqjTkPZg
Date: Thu, 11 Jun 2020 15:42:30 +0000
Message-ID: <BN6PR1101MB21457C3EE7CA913B5D3797F58C800@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200609131945.18373-1-ciara.loftus@intel.com>
In-Reply-To: <20200609131945.18373-1-ciara.loftus@intel.com>
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
x-ms-office365-filtering-correlation-id: 4c9e4db7-5da7-42cb-7e52-08d80e1e0d59
x-ms-traffictypediagnostic: BN6PR11MB4066:
x-microsoft-antispam-prvs: <BN6PR11MB40667CBBE76FB76F7FC082348C800@BN6PR11MB4066.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tzkmWXN9QL8kUMp30up1N+CJivxT3otAYE/nOFtVWuxqxL2I275U49++LppvHPadymyykWI0H6Y7gbXH42vkMioLja1JoJa+2z3OAhqt4Pb9c3nakzc1Dwm7IYLTM53032Mzk8c1SpeOxyzHpGZD8jfRXcAeATsogKHRhT+0jut8X7n6fwsj+iBOdGRYnZK6jqkOXynqzYrTdKCaud9H/+Pf2+u49seY/WQ7RKztPeJWz238vl2zMcfDA7JQbxIINMpapv9/t2Ox5KH4sI4xbe1tM+Cnsy05p0Y+rL48TziILNdh897+Zx5rGNRSvwqgb8u2RVUs37Svcy4nG19Jdg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(366004)(346002)(136003)(376002)(396003)(8936002)(4744005)(83380400001)(71200400001)(33656002)(8676002)(26005)(6506007)(478600001)(64756008)(2906002)(76116006)(5660300002)(7696005)(66556008)(66946007)(66446008)(66476007)(55016002)(9686003)(4326008)(186003)(52536014)(53546011)(316002)(6916009)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QPwsS5jfLChmLehZSLUkHIcxe5EDF+gmU5vM95EE08siV9KoboFdebTxlTM7kKe7SLcjDDCDoXU51xLPparSBJtVrrc1FYHYK+hjA8HoxG+kdflFkIiL+A3Dpsg3Lmqh4bhsNmOhfcwpjOLwYy70aAtVKAfYFvIwPI4MpZQqNtrzNcLfI9m3RMfPFY9bfxlWXKa11vIZlNN0W8jaGT6SvmAD4rYTQeFA/F+Uf+872cSkdYHczOb1JYLHZrMPIUnmPoO9iLwmFb/esvd9DD5ai6SzJqOyYZwm8bX2s0PxaN/3dtx9eAEkfmK9PvjmvRl+iKd9MnR1UlL72P5zcfN+7q39fsYuH+LJXNMLxfADbkKVk5A2Wp1inozJ1YubRyIAigj4A4GErjP0aqgxqTyVppSWI6IwNdwkcA+Qlo0vDLyDvsvBr/gyq7GnJeoxoVtNsMH9G/+IGo/7G0k0eYZ5TGLrKKQKXgvc2A2XmVL4yQo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c9e4db7-5da7-42cb-7e52-08d80e1e0d59
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 15:42:30.7022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Y16Nps38zZ+23hNQ/Dhx1VA4O9zyhwZz+3PRUBtFe07ajAEFBmfGSmKJshVXbaiXan2F9MEX63c6rCa4t//rSWbFQcCOIcBAo29RkUSTVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4066
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] ixgbe: protect ring accesses
 with READ- and WRITE_ONCE
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ciara Loftus
> Sent: Tuesday, June 9, 2020 6:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Topel, Bjorn <bjorn.topel@intel.com>;
> Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH net 1/3] ixgbe: protect ring accesses with
> READ- and WRITE_ONCE
> 
> READ_ONCE should be used when reading rings prior to accessing the
> statistics pointer. Introduce this as well as the corresponding WRITE_ONCE
> usage when allocating and freeing the rings, to ensure protected access.
> 
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 12 ++++++------
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 14 +++++++++++---
>  2 files changed, 17 insertions(+), 9 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
