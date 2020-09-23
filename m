Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 285D4274FAB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C560985E40;
	Wed, 23 Sep 2020 03:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pUl244J47QvX; Wed, 23 Sep 2020 03:51:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E77A385E7D;
	Wed, 23 Sep 2020 03:51:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E40461BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF00486FEF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bMn0hn6XEqBr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:51:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B589786FDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:51:47 +0000 (UTC)
IronPort-SDR: FLCXkGegFQ9B1SxVKkcGIeMSOQIdilpNEPGgc/RHQrvixxpoqlbU7gFZbZeQ/l3Vwyg/JHUYxC
 hMWq0QZlZkYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="140787535"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="140787535"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:51:47 -0700
IronPort-SDR: oKQVk60DcO5dv9eQxeG+nV3DSYNo57WdZ+f38pxv3O7TLfpIU8t8drDAikT/J38+vj1Omuy/qE
 jFW5katIY5rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="511474496"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 22 Sep 2020 20:51:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:51:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:51:46 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.55) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:51:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sell/BqSo4D1aP+V5xCDJvURNJzeOzLmTms9PeQtKzlq0gFFZkw/sO/fuEsPZTF5qnXN81t3zP5t8DOB7ZCnizPoXfymb13+LMkEma6nPd6t1qUAghD6sDocLyMtvYn0B9p/F6UO8/W/WtKARZIVAOW+4GOU/6npAvWx3rifPKEh9/Iz99pKmSiq+sd16dC2ol5cCXEqQotehcxxjLFDWQpTqmAd+N31NVs7s3ARO+JBSiOBxJFel9A1KWsbtCUfMGebq/ho1SqPMJltYUGRsNLH6NYx2pkQA8CrTWVQcoEeByYkdggUqpHClI1eGBLuuA5sMX5No/DBBc9IKsy+oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sfNE9e/rjrc0iixETbXvhhH/uvIxlu0YQDf33+5Ypzg=;
 b=cJWDg0iFKLQEriyLD+1OdeHTHQwsM8w9JY4YbKfWn7M3LcGUqEr1uwlh5dBM3OAtyet0yMLj9X99lfSs99PG7SnsBxyNgg96Ej8HVhbQ7E9fKYBDHeLoYQcsNHUn/z7ieDiSVy9UmuHxCaszK8nXs4DU3V7hwgnOIoBHnsmKcnIZj+fJCVHoRcMZZ96VxIpxFkBhhnR5aUI1s/K+bnnhIlmo1ASnPjLv1Pi2j4WbYBQPkZQWiL+sKQdcTxaEOXQm6sEgeB0n2ViodBylJPrEfH5KUMLzHv08JrBvOMYbi+cUouwB6KVy7RF1DZu8NIJC+aEMAE5BG9EQVkjUfJpf/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sfNE9e/rjrc0iixETbXvhhH/uvIxlu0YQDf33+5Ypzg=;
 b=WjJWainr8TvtzCysOqQH8+cpWq8lG+eWPcQJzzcxIUHFwtS24IVkQHCQnN6X+tKp4d8HEXBqkJx5s4Ci3N89AEZ5iEwvmYUW6JTyFH5PglhhdbCfp32CjHd6OTn/s41PilMAvx1PY5lg34kNNMs0nviDGcpVTN6fj0JiOG3CtS0=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15; Wed, 23 Sep 2020 03:51:23 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:51:23 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Reject
 schedules with a base_time in the future
Thread-Index: AQHWgYIGHTTOlfMsQUSziP3VrFL+MKl1tnNw
Date: Wed, 23 Sep 2020 03:51:23 +0000
Message-ID: <DM6PR11MB28905F5373F4CBD48E6C36A7BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902233657.4051914-1-vinicius.gomes@intel.com>
 <20200902233657.4051914-2-vinicius.gomes@intel.com>
In-Reply-To: <20200902233657.4051914-2-vinicius.gomes@intel.com>
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
x-ms-office365-filtering-correlation-id: b0da888a-561c-41f2-a912-08d85f73f085
x-ms-traffictypediagnostic: DM6PR11MB4380:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4380DB0292FCC085F23A9511BC380@DM6PR11MB4380.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LGOQ3qcT9Ohwz4dz6gPgFQoXWQ25KvgMVdmnVNYcDGwj6uxxMNhAfDFwvAd6HXI0G2AEWAMyK1DQd36FTZbs0MVedpgTMPAt+DU4YZwmM+D4sbEG3XOrrKjd50Fgl2+41sksAnONIut/lfZZS4xBsmi9WRcgTWl+fkukyVCpN9gUPsEf/9DWZdRBZqO/M2OxrVF7wz+dmHfQ8xX67byC8V5h18RMryoInpKYYXtTrmMFbL07XhlGUX39c50FbDfMg5c+3wOYpfZW3DVNBTV6WpCRL2UxITl4g2FqVOkABFZyD9bLdzfmGkHzVlEVU8xv6ppPO5qNk0DxH9jUfRyQNg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(366004)(136003)(5660300002)(8936002)(66946007)(478600001)(71200400001)(186003)(66476007)(107886003)(4326008)(64756008)(66556008)(8676002)(33656002)(66446008)(9686003)(4744005)(2906002)(86362001)(6506007)(83380400001)(76116006)(52536014)(316002)(110136005)(55016002)(7696005)(26005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: qMh/dSRLooZ13afSC46b95guzK4OFDhDbOAFlgF7cr8yVZXVpLhhrIAEdZQ8qP2wi9Gh3NtrkecqzE1fcYhYUzLURqiUjOcPeGJike/p707kh8nVljfCIJ49PbqAIPGjxfoGoQVoKmJXRqM0Rz9OFZ1fiF8AcPre/CBfGlrkPN5rucHjwmKxQNlyfznz8/s04PvjC+ejuFnFGtmmhTKmSi62UCQqbZd2a3G5aCIG7ThEmveS99tfWf+3KQB22/OHgP2VXrEROXml0xaOpan/CasfVL7FScJj/CzGyBXhf+Gf9tGD3WjTgaHO3lTc8Q9sgPJTT9oxJVfF957ZSPyh1iP3rMaanrMv/SAKEDlV9YlVeGtQQLWiESaALhZX6AGcMoQgww/m4kRONQcEE4DKGm/HLBN3pGaV+nafzAaLfXCagyjpfIOrvxLJyAZPa6+AswzRDsS95vJZk8Kix3yL1+rATyirgZ5SZSJEnXvAyfvtOXUczCMauDOyU71ogvC6rCvL2F5wfZYkYpDZcSpI9Nx8LQqNiTGipV/gsFJvaYe60JoW/3/9swQnNjwXPw19+U3moIIJPGW3AjjQYOPeD3b8m7qug6M1uUPHRdo6cwVn9pXEeaUBk7PYXi+IKvNSpATQC20KcMfKHkwX5w366A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0da888a-561c-41f2-a912-08d85f73f085
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:51:23.3244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oH1EyKfUF1M4oIpQpJu6PX5d0fW32n15K4S9HalV8wpSMdt/lAVJPpa/xCT2rYITQBqk1BeMH0Eo1KGoYkz8yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Reject
 schedules with a base_time in the future
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Wednesday, September 2, 2020 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Reject schedules
> with a base_time in the future
> 
> When we set the BASET registers of i225 with a base_time in the
> future, i225 will "hold" all packets until that base_time is reached,
> causing a lot of TX Hangs.
> 
> As this behaviour seems contrary to the expectations of the IEEE
> 802.1Q standard (section 8.6.9, specially 8.6.9.4.5), let's start by
> rejecting these types of schedules. If this is too limiting, we can
> for example, setup a timer to configure the BASET registers closer to
> the start time, only blocking the packets for a "short" while.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 25 +++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
