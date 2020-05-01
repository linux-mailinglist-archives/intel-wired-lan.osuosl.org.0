Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81DA1C2098
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:29:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD5618933B;
	Fri,  1 May 2020 22:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 32E0TLsujCmo; Fri,  1 May 2020 22:29:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58DB1892B6;
	Fri,  1 May 2020 22:29:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93AA21BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8E03C873EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4fPoYA3RMbKz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:29:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0744B8738D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:29:53 +0000 (UTC)
IronPort-SDR: O4mFpySdenOmzS5nPWpFARPQ6YeLSskfKTSrLJmvPXSiT6V2vLLq9V0GvXZ7ueDLhQHUuIo9US
 Js0wDsRYq6EQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:29:53 -0700
IronPort-SDR: 0WfcSJU15j/nrTgbWLkVvslM1Rxuiu654z21Pfe5mkOU4IorcfzImKcCo3HmMw34s3MX6NBn7w
 mYu9myYlEaww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="368559083"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga001.fm.intel.com with ESMTP; 01 May 2020 15:29:52 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:29:52 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 15:29:52 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 15:29:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:29:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SK2OKUC9swLHraYvcIrECtrbpXSYsav0U0jGbM3q4X11ZjvBj+q+l5Qkz5ygNRhxdqR4a/lj/5fYbZYvHYvNKpWF39pDzl5McE2mSy/t+I8ETuZHsniaQeYL7uNOmS5nHcf+Ff6wbNEFoh05ScATJ/C9WAK1yITqK4hzFo2dz4k6AW6twkd/v+IvTl30miP3403BOu/H3iAGlE9qeFuWXJOcL6lQxoTlYCuUkVgxKAsdc+b6FTzpq9pzO+VK/PeCk58tFOs/Wp+gZoOHa+ABglXU+qHQgLEafibk/7wsJDzJDPKWctCo4EnxFEMCloHqPrImxfER+L00GG4SgJWgaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJYspIfgLOnF0RoeFSpgSp2osy/Y70LsTp9JPwItT3c=;
 b=QpCBSar5Dm3fmwSzXWfisrRk7yG979rMndhCCuc1a2GFMju9Qf8qaVaH9Xp5FyiNY9M/rpgwemaKw5dDxmSYq/mxDk2dLKnkGZlRnlD3AS6ylO6w9U6H3G8eu9tY33bYuNoQ4f8+kWYI3ghHllh8s33vrNf9koa+Wy9Zexx5NjMzmcdWYgNWETddMJisbRSFcDLSiI5x/uk56mYYUaygPVuzSvJAjqQdflbVIEMXMEH2rByGm157yfxrbCyppktX2rR0AZxMxnOptp1xw5jtfOM7EQoUs0csWKgODErFuPxIfzUTPCfgTdNKrhA1KXosle695BxvAbAo1Ifz4YoUSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJYspIfgLOnF0RoeFSpgSp2osy/Y70LsTp9JPwItT3c=;
 b=cT7/IVgKpUhG/n+6ZP+yVhNvQk1DQoh3ZTKyfZtip71aXaY7/polg+qD8Gcv+KDOAbx3eVA9mQMs06PV9AeLdVfv1rB+PU6Bx0mzoom/dP1zrUOWS1x8JJahRKCXQGxhdX8NiU3Ov7k8zoBJm4boK6l+yNUe5if3KwvQqm28iy0=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2681.namprd11.prod.outlook.com (2603:10b6:5:bd::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:29:50 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:29:50 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 11/19] igc: Fix NFC rule overwrite cases
Thread-Index: AQHWGnV8THhqD22xN0q/ffRtDARY4qiT2xCQ
Date: Fri, 1 May 2020 22:29:50 +0000
Message-ID: <DM6PR11MB2890CEEEC7D3BCD03F389635BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-12-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-12-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 6b250576-c348-420d-3975-08d7ee1f29bf
x-ms-traffictypediagnostic: DM6PR11MB2681:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB268138E622EA834F78FEA4EABCAB0@DM6PR11MB2681.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hKHLg1iYdrf+FkoC8qC/LTDn3vLxmQv6Ab0ekDuh9+NvBowtjY4iMUaJ4X6Un9TZBVxRBFN9XBC0n0of/iXQYMtuDfkw3jZl4Rrvoa6qRKuWjW2cDAAm+9I6sq85ozg9vx9xLzTuZqOdeGH6lf4whuBFn4pKrqRzPBwx+hLUI3GVl/XdoUdN+ViHHFYpnGG2Fh2LD97q6gqBhD0+vF5xIB9D0OC8kR1KheDIYEeojJ0uy4dhkCZiFLR0zWF4OxVO/JLQpDwwDxciRs4Tq+ozW92I07kNs+gGuIjoHhf6vbmgwehInwiROT1YdEjSGBC1hGVD2uJIpj6Afz93ZG/fu4FrcJ+GJYKPewS3k2wQRqkeax5cLXQF2vsk7JOw9j7xuFNhKKdxwdyVw7vRtBUhz4G/ePaJdQiVJWLwhlKNLTnJTYNDBJ6RjAW4gs0ks6Ip
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39860400002)(136003)(376002)(396003)(366004)(71200400001)(5660300002)(66946007)(66446008)(316002)(55016002)(8936002)(86362001)(9686003)(64756008)(76116006)(66556008)(8676002)(110136005)(478600001)(7696005)(66476007)(33656002)(53546011)(52536014)(186003)(26005)(6506007)(4744005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: lvY393ecp72hMhDoup3PZZm1D0JEciUyNXwHkWQW/PNyO7SRfqUdFJVEBmNtDTWYP9n4qz1QM0QAVFW+bZPj3bdCjT2svzVm2NQFG3vQg7O2J5xwLMnuWGsF4aIK2iDQ9Aa5Zywqt2VPO583Rrj49MV4uYudTzk8RhXtN1eVdJ5v+PK9Kv8ICf4W73gvKKD4h6OZ6TKM3lHHl65pwtlV1DObQfwJ7UW+lNbrAuOYhIYPo2ZY78NMWlJ5aMxfaPaJKh0D4pOnvqCoJrI3RL6k3Zh8WacbA8igw+7taXRg++fSYTG9+6ph8OQCF/Oa/Vv0h8vSlGepjpQO9MEdf8Lv/FWj+68Vo+vriF4bpH0wvyM3ccFsbrCG03UUWV5sgRlYztFGnGu9ONQmakseuZ5t6vTJBiHBTX9n3KH07Qxa0dSeQJ6jdP0vinskF73RasL3l0CYWmn6K/7IQ5mir2pqDGACmoUUwkwSlpThCbcZXJ7P61e75ci0LYYVkP3M/B7g+ru0D7B4FOmsSidr8BN1SQyMNFc9GUz+A4xsabqIjrqfXaSq0SlZJJWrS0zlTlPhfw2fDdPhVNs+LTDzRowIaIybUXduscJ4u03d9D+ThfFxL77GjWclw2B8OuhuTzO4W0v6OiDVsDFj/YDEOxNJ8VaSCgnP6LHXW/1EiEGTISavJ7NrTsEHBAe7usMJkQjJ4wDRN1NYfzhogscaiFmBHKb/7nFYKyVhW6dJU0y5bYKnrD4VNDjw+M/nU0GEJ+WJN+7gAsYZGSqxoVvEiraHE6uzNgsuBgEPjOS8ssomWedgYO0BAyhuNY6UmeFekWAD
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b250576-c348-420d-3975-08d7ee1f29bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:29:50.7379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MLNRvRNPtPbBYFxYyrt7JYcHY61JJ0bKqVEHoMcU3/TMDc8iEBWtksGbtbfrdJxhHOJWBC1yC1iZzt5RXKt4Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2681
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 11/19] igc: Fix NFC rule overwrite
 cases
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
> Subject: [Intel-wired-lan] [PATCH 11/19] igc: Fix NFC rule overwrite cases
> 
> When the 'loc' argument is passed in ethtool, the input rule overwrites
> any rule present in that location. In this situation we must disable the
> old rule otherwise it is left enabled in hardware. This patch fixes
> the issue by always calling igc_disable_nfc_rule() when deleting the
> old rule, no matter the value of 'input' argument.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
