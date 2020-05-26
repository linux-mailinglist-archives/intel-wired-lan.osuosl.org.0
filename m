Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B73971E2FED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 706422040A;
	Tue, 26 May 2020 20:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XPCdqPx9M4Nh; Tue, 26 May 2020 20:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 401AD204FD;
	Tue, 26 May 2020 20:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE2FE1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C73DF204CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNc0fx7fLXoU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:25:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id D4DAF2040A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:05 +0000 (UTC)
IronPort-SDR: 5pFFNsbvnaL5VjLyVVMcPTRtTwanOlmERkla9UyQ0jm5/8ZmsEeUBDalt70dL8dTKB0FnGw0hl
 VEAvI4ydE8QQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:25:05 -0700
IronPort-SDR: LoDdReygsNxUbXfHTKgKGUK+DOZSPyWkfNR8zLTk2o5f/eWaKSilkxt2naGk9J75isxlkEbKfX
 Fz5NDvBCIIog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="345296118"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga001.jf.intel.com with ESMTP; 26 May 2020 13:25:05 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:25:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:25:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYSyRca5+s7gPUGdYZ2bkDoiRnlt8nxfLufWOv6UGcg7bU1vhNCHrkRyyvJ7fJD5DFFJrJymkNAixa/g+Dl9KRduFSwDTACipfKhAgilYiZkBy3qDy4MZFLRCChwRjBwEPothtsNX9HqrGjcHNtEBrazEk+f49mZofRJ+Zq1UcDHAu54CvM85JZ8iu8u2o85FXJw7BVO3IhYXJq0/kAQOWqP7ftIQAlNh8ii7H0Rtv7zTmq4xDWJjiRREJRUp5RsNG3cYxhn3TGV1kMetbLoD/vPRyG9H4zn1jZF6biAufzpV6+rDwUBFEbAMKWvy4Gpgs8pH08wbpPgKGLoDvQPHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0DttJ4Boi3OGUAduB6xdCZGRGe3HoBtxlNIRGTUFSOE=;
 b=SQ3dpbLNNC0t6dxsGsscQ4Eq7JSrIBS6kuOkuxQGkfSqRgCJ4KJnsf9zzF6kXrhSAM8pzDGJsz884Azm+1tN9yAtMzMU9PPJ72cOfrQctarHuLdp1xWkOOmzrDVSGFoxKx/2YgV0AykQmyCg1Zfx8s0JE4E+g0vWJeH2WqB0Ms5l4Pk44QlucfQKApbVx0eeb5VwKzPd7BANiGE9FTt0i4yEDU3FYRKylkf6uJMOwcEGYzEexvhwfxgBW4w7Uslq0eFvsBhkc7+qdhuFjL0Mm4y6BwXykVLmn4zPANASA0stxBZowff5HQhsmTixhjdgXU7hZQToC3JGX1dfX9ZQXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0DttJ4Boi3OGUAduB6xdCZGRGe3HoBtxlNIRGTUFSOE=;
 b=LBRNMIA8tDEyFnxdKIzFK3WEM/BjHR0QCcXE8/aTlJBZ1/SYMHYT6wDyD/LQRDwK1JEsYGV1vNJolcEh7vRYZl0t6dMrSaE2GXN/3m2UDr2ndcRhgsKFEPJ5OPhJaT8A7BqVpyk5Bud1opD0gB8Pi9UcKMzqiQJdIdplAXy7nY0=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:25:03 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:25:03 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 08/14] ice: Check UMEM FQ size when
 allocating bufs
Thread-Index: AQHWKxtg8dril4V9tkScreUvxymLIai64S0A
Date: Tue, 26 May 2020 20:25:03 +0000
Message-ID: <DM5PR11MB16597A2B946004C469991E988CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c76ddb16-a1fb-41bc-8bca-08d801b2df35
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB1643761A3187D4AEBBDEAB748CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5QSUzdAZaLwLLXG+iDsFSIQvRgH9Od5QE7b0FL3YHUEynq13UjHZ22ccwgFiKTV8eKDuJKVzkjyTu9j7dcV9AaM6sPTeTILg6JdDshF78/Nbm8gFnm3SYW3YH9NSbFht9WzIN1gbB5D4Py9EcrIyYJqHwRLfUKxjte9xaLB9xzPoa/v+5wYVDwn8jaqMcaLDQF05KV60VlhEzbKN3p/PBi/miiNCvbKIqabwRgwZ9dRp1zXYHi/av7+07oJmqGPnc5MbrgFpzoJ+ZNATjQQ9+JtoczxPL60Cphv+jP08eBHuLB92FSKDHrYhxoxeZfdW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AwrHxnRwJCwHWdCLItSlyiLRRnPf3z56Tg21s1GhdYlBOX6p+3LcbjKBET6DKn0cuydg1AnbHv5owDnwNo7SvqVysJ/SyIltshvwAfSf8EcrlaeYyRQeDbVWIIbZyuZXOcOLB2aT1U5Bmg0B2sFUUIQ7Lxhxeh1n4rzSNAxqAmY1KrIwrZ1LBI7E7yFeFkSfDfD6RtnZ32SEr5qOPTUYiUSJqqEx97oxnYf6FB3AfmUnVroea7tEH/qyivaktgT6nxxAcJ9CCW2tuk+Mn3zI0nv2aJjJa4+O8mQdTeX5ow7+rWoA1uIsgdfi82ruNKfwf7zSdKQd70EzHXF2IfdFvUKj9oXUOt2oHtS/sjCByb2fzxa82AilHFOiUkr3uv/im1V4edxJEyfXaGIdjMb/+yWPM3AeGaHfr9KadsoEpYjynk4IocJGHu8gOHcrnz0N1oTfPPVTyJWIuIO4vOqsxXnx855ucvbB1D/Fd/Zj3CPLve+icxYYzddISkdxgtCO
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c76ddb16-a1fb-41bc-8bca-08d801b2df35
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:25:03.2960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Reo4y48n/B6ZjZS+ywjZiN7TMqpvoxLcWFJZvdNq4VmKsUR0ZoWCZUjTmKA+cLjxo8a89p7WPEhqyZhW0NuyNX8LtJFNflDgYtn0Pk4V3CA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 08/14] ice: Check UMEM FQ size
 when allocating bufs
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
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 08/14] ice: Check UMEM FQ size when
> allocating bufs
> 
> From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> 
> If a UMEM is present on a queue when an interface/queue pair is being
> enabled, the driver will try to prepare the Rx buffers in advance to improve
> performance. However, if fill queue is shorter than HW Rx ring, the driver will
> report failure after getting the last address from the fill queue.
> 
> This still lets the driver process the packets correctly during the NAPI poll, but
> leads to a constant NAPI rescheduling. Not allocating the buffers in advance
> would result in a potential performance decrease.
> 
> Commit d57d76428ae9 ("xsk: Add API to check for available entries in FQ")
> provides an API that lets drivers check the number of addresses that the fill
> queue holds.
> 
> Notify the user if fill queue is not long enough to prepare all buffers before
> packet processing starts, and allocate the buffers during the NAPI poll. If the
> fill queue size is sufficient, prepare Rx buffers in advance.
> 
> Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 30 ++++++++++++++++-------
>  1 file changed, 21 insertions(+), 9 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
