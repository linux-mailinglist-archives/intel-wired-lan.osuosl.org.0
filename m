Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D89722D27B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:54:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DEB188AA7;
	Fri, 24 Jul 2020 23:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKrWB4AyKQHo; Fri, 24 Jul 2020 23:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC13588AE8;
	Fri, 24 Jul 2020 23:54:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B2431BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26A8688AC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MS3CBfDLyPtK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:54:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8302788AA7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:45 +0000 (UTC)
IronPort-SDR: 1FVUoxgWw+4FOPty4l0LM3nGZ6XrPcAhbyEzriCL9ajUMr4yE+EJ1E0rpwY3kYKKAP0+cihh+4
 I13rIssTpnqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149982855"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149982855"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:54:44 -0700
IronPort-SDR: H/WkqmHWEak5nIzqCpRe88r1aPpseQBzOJDI60vZS7+9GBr2fRNaR4ciomZhJmszOi+pBR/I/8
 B3zaTvEumQDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="302819271"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 24 Jul 2020 16:54:44 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:54:43 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:54:43 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.57) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELmVmRbX7Jp42bGyFcylCK+CANSbIp/hMhkly5ceCcdA8bQzS/GGPACidpPlyJO+/thxPrDuMs3Qeg2KoXiRcQgBhpkr6Dlku9MtNFLwlfGoDr6F6SbtkgL0TfbHt3T0SoqJLQcuOuQMifb1g2NV9OHFJUI/zeRMi8KHpaXlEPrPsPZi++tDRLXK4ICSNkKD/sml953wzTNnXhYgkt7OnhoQD/g36sqTNqBiky652PFOlcqrBUU9BY8L2yuR8nNS5j/2yT+zpx2qffeMQntMr3bqlDrrDKOrF+FbswxdDVOZXU+luysxs3m/TPFhApVw42qoJRg4vktZ1eyhfg/NhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=skHB5wo3tiqIqOCcGKG1FCRIMSKIq3X4ubrS53TlMws=;
 b=Dt0+2IiTcBX1j94rcJ9WeErCnTe/yLUzejxUpt3a3omN7OkRq3RF0o4j3lqREpSwW6Dww3TQR2JYOQImYYQy1GyLwq5VKIO7pjeE9lOWEKoudy3zmBFM+seU/9DmQLcA2hGbtych6ECuw1sFXHOMPH+r33x64VKUBIWRpvHX9rSwxRb5X3ojCGHpb8OEEBo5KaHedfrcMFo2hxcaiLM0gpk6bAsxGbrGrhydloqnxK/MznlKcQdCKX96uSjxXcC74j05s9U4fLyyIPZR/MlX5z/mZTkZPGQo3gJFYkXpYCm205w6uCq6vRflaE59UxboWoGALK12ENLWY5EPlN3/eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=skHB5wo3tiqIqOCcGKG1FCRIMSKIq3X4ubrS53TlMws=;
 b=a82oU2vz1h5cN2d/da4WY2zA40VZeh6x5fwa6f6feSzh4UKn/LhfE2M+WkT/PE0TUGBxiV4a0aJSjmN6r6z7HKKtpDLBmjuMawsPoOTMzXPfGnsS++qzOL8iOsYxMG4Q2wZbWG9W4Et4BpXHMCLlXQaJgJDvy9e601OdP//epsY=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:54:42 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:54:42 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 05/16] ice: Support to separate
 GTP-U uplink and downlink
Thread-Index: AQHWW3YMPMA+yAnIiEuGIn7czvAUfakXdJmA
Date: Fri, 24 Jul 2020 23:54:42 +0000
Message-ID: <BN6PR1101MB21456C58DF1DE525D6032BB28C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-6-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-6-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 7c9f8d5f-707e-4a12-6498-08d8302cef41
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842957BD9330E43E4447A1A8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rxc0guBy3aXsXfFE1XJ15roR1/xE8dH3S4Y1yQD9xfrigLEA9nUXjwzIzR6MaIOGHAqO5EMCuqbhuj/VjjwEZGjHBZ+7E39syuJxs0Vs+OvZRFKj1kgXo/QdBXZNc1ceIwaEj2qbZMP9Ypu212Zeh2Cwsq7VqXl8nkI5Ju8alxsVKHcXB+jYtuQY7NYsXvcZYDjrm/8vC+ng+rrHfoVhN90bChQDJPm4lOYoor6U0MUy2SV1NF4i/nFsg6At5V8KACjzgwJyUi6aMc0S/eQIyw2P4giCisx/XvhJC0+dyH8vxB3KvZw0eKLN3FLN4RCD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: FG/Cm8pWNWXmqBUXXcywc8qhOv6ZdxMxwJbYHPZ57SrIZGKCQIJhNGkOCeGKFQLz3VhjucnQLlzIIRPVGjBCIipEcqvJGA2Wk6j7PeaUUDuPIuBFog6yx0aojm9weFy9mAaz6LDJEBQOZHvNGbGTBlhIhdwTZnIygY/nvI2TYvDk2dmXNJS4mtMZYRSNVDb8STLvpv1xP4Zud41YDYJgFZ1MdvB2kBGxHDr3Z/h2aF2kGmMTwNZ0awz0rByU4Dd1mhk8esoUJ7XH4pQ65j1EBI/ipKHWHxU+1OZvlTkvk3XWkLtnYMI+THrdRu71JdpxprvnW4PfK7YA9+zapMfFbmnBlt/wjC3mPpTO54Xk2b3xjnOpyhzvzEmAftmLb08dPTOoaXr9ShFEKQvrC6tTtxudS/BT4trFURUvXcvWwN0EN1nKnFlL78byG0fXR+DLCP/b4Ib2OuK8xghB/oCFVGg8spgqPdHHin7T5ykCaLE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c9f8d5f-707e-4a12-6498-08d8302cef41
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:54:42.2720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3To8AGWT1Ka+u6/zFWMA6nu1q2u90aztX2cQJR2vGl8PdhNUDiIU2DgMdy/Yn61fUmz3mQRKHl6mFYBTNWl3nOdp0CYW8NZJhY4uB8L3Y50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 05/16] ice: Support to separate
 GTP-U uplink and downlink
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
> Subject: [Intel-wired-lan] [PATCH S48 v6 05/16] ice: Support to separate GTP-
> U uplink and downlink
> 
> To apply different input set for GTP-U packet with or without extend header
> as well as GTP-U uplink and downlink, we need to add TCAM mask matching
> capability. This allows comprehending different PTYPE attributes by
> examining flags from the parser. Using this method, different profiles can be
> used by examining flag values from the parser.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 102
> ++++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_flex_type.h |  61 +++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.c      | 115
> ++++++++++++++++++++++++-
>  4 files changed, 269 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
