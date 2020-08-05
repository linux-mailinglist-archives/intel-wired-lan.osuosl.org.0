Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B178E23D13D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Aug 2020 21:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E06086B46;
	Wed,  5 Aug 2020 19:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3_JqgkTz1oG7; Wed,  5 Aug 2020 19:58:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76FE186B4E;
	Wed,  5 Aug 2020 19:58:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FFCF1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Aug 2020 19:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A7E387A73
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Aug 2020 19:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqZ1BQO5ThoD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Aug 2020 19:58:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 79678879AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Aug 2020 19:58:14 +0000 (UTC)
IronPort-SDR: 1XkkDxQMwK5BQxrBiBWXgZeupcYPpbVYTYzvucSSh+yhgLPnmPqesmWN1Ihr8ip+xv6TRJJymS
 8qyM1/GewMkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="153790849"
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="153790849"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 12:58:13 -0700
IronPort-SDR: IQEeaBphhSnLp6nDLWk+ldAnOepKKiAL2GjVixvuvWwis0tdqKhJwEdjKMo7b/8ZJxU/oKklFA
 /DVVYxYSFfow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="289039315"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 05 Aug 2020 12:58:13 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Aug 2020 12:58:13 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 5 Aug 2020 12:58:13 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Aug 2020 12:58:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Aug 2020 12:58:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLJTaupEmKkfFe8JtnpCP7e9qvn1vCh+xXP/k0RqbyhmzqDBv0BJN843fnSVQ2ieu7Xq5VWewmuGNJSBVL8YkHC+vW6DLrHoe0QYSo4Wu2oLRdfT29y6tgiNvvAPhU/YRkvJ+vVyOPP5q5aU3O9T0cFtxm28Sl74lRoJYKmw8ottSuel72VHz8OuOoV2XlLc3WpvTjFKykV6P37YgaaFKFOu6kBMQOqCPnVCWyz96Cl6fRPiuoXcJ3PPETZFJUSdUdSL3rli37hugqH7d+NqcOXuxwxSK4MjmOQwNa2aVC6weUy9WLxPdzlAaPgNxfBCCl8D2QQZL7RvpeZ5Bimivw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1lwTsEUi1aZ/vpIy69hjDabF9lmCAKnOnDCWhKhSkDg=;
 b=cWsrmpiAYP+vDN6z/SlS1AO7MijaEtDmWL1J28ODtx1/FHL8PlWHy23x5MiNvXwvEwaNU6ACH92KGgXjWAR9snwkGlynqcw5/atkkyIGZQB4HWFKsljDwgjrClYl+tDXU99ca+2uEuHNwJk5lGdqb96lQlITgKpkmRG3UWDossiUl7j4MKsOb/rAkBYUD2mNs0cwRFMjmtlG0+v6GhY+LLE06Y+U0iG602aBs3HQNb/xHMXma4RNMFGdlLLFIXXK6Ee8USeKGXfjWU66BW7WaNy4WKMEA/q2lv4NaR1VvY3pQEh/rEkdbzPvbnEW6G0RMl4KR33lxxaWAq5WV4zMig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1lwTsEUi1aZ/vpIy69hjDabF9lmCAKnOnDCWhKhSkDg=;
 b=Njm2OTxdlmgHC2nqYaxNnieKVl+k1gXUfiMvdYhVM+08WgpleKJKq7TTaTMdkqaf0qnJJJKvbYgHYy8LKKzZCCr5hGP12shxmAAI0nGNwy/deESs7BdU6/SNju5c3Q7AZLK1fU5UR5YJZI3X3uInAFqIfQAKE2zA9Dt4NYFEFTU=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3762.namprd11.prod.outlook.com
 (2603:10b6:408:8d::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Wed, 5 Aug
 2020 19:58:11 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::3c1b:6500:3edf:eaf0]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::3c1b:6500:3edf:eaf0%12]) with mapi id 15.20.3261.017; Wed, 5 Aug 2020
 19:58:11 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Fix MAC address setting for a VF
 via Host/VM
Thread-Index: AQHWak5i3bzsKYll+0uAfiwHo58RQKkp8JYQ
Date: Wed, 5 Aug 2020 19:58:11 +0000
Message-ID: <BN6PR1101MB2145FCC62AE16E6921C73A7D8C4B0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200804105550.10763-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20200804105550.10763-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad1f7c1f-49f2-488a-6b9e-08d83979e1c1
x-ms-traffictypediagnostic: BN8PR11MB3762:
x-microsoft-antispam-prvs: <BN8PR11MB3762B31022C4673841720E8B8C4B0@BN8PR11MB3762.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: St+129QuaHFD60P/1KxuEZeWuiQfRfCZLd1l9mx7IE4oO66pOB0zjEst7g8YPnHhzfOzPGR4JGXowP1bUg9NgQA9Acfw+lITW4bn7p2Y0Ve1+TF3WRkPlDag8BhpHl7p4M0tCKqtQ2g1Sj1WaIesGcpPqq7IVWuQ3053yl2jmiWsJ8DGtL83SzlghZOLouseRA0z3vmGJZ/Cvoy2FJ/S8LRVKF3qT/BITxxtNfpKUKfQCsJqmJeUndWF31t2XD//aihqKfn2oQTa09g2yT/cMPz5NqYqxUwj/yIZJPwvBSy/dU4/kFTWArIuWc+wHOn9PE4rHVQ/SoUydjqbG+b7xw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(39860400002)(396003)(366004)(136003)(76116006)(66556008)(64756008)(6916009)(33656002)(71200400001)(66476007)(66946007)(8676002)(9686003)(66446008)(52536014)(2906002)(186003)(6506007)(478600001)(55016002)(316002)(26005)(7696005)(83380400001)(8936002)(86362001)(5660300002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: YsgXkhOnaFO5a6hnQ+J0HEChooLC5qsU/t994MMlPIuYi9+9M16yQzoWLMgxW7p1xiE11hWv0oanv7YCsJqhUzmoVopI5lWvwJX0bcKm/Z9tU7Aj4jqNOWn/x9P5NWjRPHnJfQTUGi9heLounqFWNjJo2hId0ozwOEtn3jfY/TYbIk7HZ2/P9o0r8MOAD/mfVTFF3BfZWBRF6Lz7/VXqeDe6BRvIVcyIeXq6kn1yoBR1IcPfIHwL09IrNOY59HKwwazc27K+hjN0Yj/q4JTTnME5m0W1CR7JxlgTSzvLs2cSKokT94XiVxf9K4ZXcCEHiuTgOWigtfaKv2/YMC2svttWo6SSTAcgK0h0vvTGe6llWwY1LENCs6R3anIQLHSXhiVzvFaBtDnrT15cCSn4wgcEgrYm3UFWJ4WBCLaMRFewQ+dxptJNb8nRW/RdzevA7cHDf3pzCmDDHFf7aYmO8o5R56+m8ExJXUKrQtNd4YE+r6SGNGWxS+mXKaRK1mkzDK4XEC18mUXdqb+MGDF8CPxwzMLCBA3OrnSVcGDTD1AFsknSsqmkgT2cXLIMXKPCZMDZvADn8T4U76mCjMZYH+1eD1XgfmBa4uxMeC30JRzxvBmlGOru97Afgg7ACQhxUKQfNR63x1JRqsaVsFI9Ww==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad1f7c1f-49f2-488a-6b9e-08d83979e1c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2020 19:58:11.2701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zqeLK9mHrWdiFbu4lHxxYCMZH0sedjzavbDGZlMLhrYlAIVSe67Rnh4hnzi77iwK4cxttwKv6I2ET857j5fGoyYEi92hck2EIxREI6l6enk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3762
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix MAC address setting for a
 VF via Host/VM
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
> Arkadiusz Kubalewski
> Sent: Tuesday, August 4, 2020 3:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Fix MAC address setting for a VF via
> Host/VM
> 
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Fix MAC setting flow for the PF driver.
> 
> Without this change the MAC address setting was interpreted incorrectly in
> the following usecases:
> 1) Print incorrect VF MAC or zero MAC
> ip link show dev $pf
> 2) Don't preserve MAC between driver reload rmmod iavf; modprobe iavf
> 3) Update VF MAC when macvlan was set
> ip link add link $vf address $mac $vf.1 type macvlan
> 4) Failed to update mac address when VF was trusted ip link set dev $vf
> address $mac
> 
> This includes all other configurations including above commands.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
