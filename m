Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8954D1E703F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D52988924;
	Thu, 28 May 2020 23:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8rgTjq2KOCO; Thu, 28 May 2020 23:21:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2ADD887BE;
	Thu, 28 May 2020 23:21:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF7641BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB3EC8712A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsB6oK_GEivU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:21:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D536870F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:21:37 +0000 (UTC)
IronPort-SDR: x+ZatD0xARjPrj/d57M8lMlMoCov2IykdXEKN3K1+IlL+GRbsgh4ylgtc7Jtq6hqPlmYcSM6cF
 PQHRyak5bQcA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:21:36 -0700
IronPort-SDR: ydJWxiE3l3LHjAy9QVdqjFzwbTViI+oX8ZK3HiiL/2yJREQ0Mop8HeCtF2TvHyIJVL5tuOEX3Y
 +uJb/LP8ayNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="346077003"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2020 16:21:36 -0700
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:21:36 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx163.amr.corp.intel.com (10.18.125.72) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:21:36 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.54) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 16:21:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qpsvs2eNtup4zXGkR0N6g73XltEwBTm0Gx+W3id1e5xm57qlTkr0M58zJzTCiRFylQRWOnD/YNx31NNU6hWtfg4yedq2BJvh2Vps3F6Rq77D6tSFm0qryZzpbiNjPz7gjPXMg4Oz7mgNiWmhHk8h6wgietz+ymSdaIKVt0EiqrCs5vUvjozpwrpa7BVpjaYUQgJ8EOaC/q/qa+kAKPvtbl8gWuztv2EbIVpjewJM6AgUATRv1RgFuEBsBiEJ5F7VThXcB7iH9kEycDIcDbtJ1CuKjrTOPpL5zYtqVdO1ogAQ0Bdl9u0bnUBq8uzngOcTlwPYsX/a7nI82jX/UIbXrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wvlXRN3gVodeedxvt8JpHDbkHaXvp9wrhrD87R7qXbQ=;
 b=H5+BOCWE/TqdHtgzhu5UQa8pH1mS1EBkzhhdkU7doBXiACF7WmNfSKu01wTlJIbYEqq18eUFH7mGuN7zfLO9Hk8FpwUO8sMmR+gNOK7w4abvqovOMqpUQNjm08sDRtm4fHsSbO3oUwMgYE1Qfnz9qqkMyWTSYKFkGIBa4r3Jcb4cznou8MTNTXWMEEgs8Bh4EjQf9D8SvFkkFjGj3j46OezrWghEcH7I8M+kw0LglkgPab/D1cAmlBu8cr1V8x6jniu+neTQCD1GsYFa76BPMZI3BFQGtqOQ5Q1HLLd0JPyWuzC59gbWhWSeGyH5721VAivfeuZ/mBNXiyBPAAx7Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wvlXRN3gVodeedxvt8JpHDbkHaXvp9wrhrD87R7qXbQ=;
 b=fGiUgSfpkhf8EFQsHZiQ0ez1mIbCbgPehq1MaJhbO66Nx+PIa2DMhY7lODs6lhr7TfwbyGCHNW9OQOmS7rCGMctrRA7RgZdlWN3hKJMMz7kibwgC2Mkgxi8DqOcsSuOGCpzKc8TeBXp9OFJV2RettQySxNNIZJAmir0mDVxJXv4=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1353.namprd11.prod.outlook.com (2603:10b6:3:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 23:21:35 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:21:35 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 9/9] ice: Ignore EMODE when setting
 PHY config
Thread-Index: AQHWKx0ZeJrqzjl0gEO3GTfuZCTsr6i+NycQ
Date: Thu, 28 May 2020 23:21:34 +0000
Message-ID: <DM5PR11MB16596AE2138C4D207D4C47398C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 0552921e-87bc-4810-d824-08d8035ddd27
x-ms-traffictypediagnostic: DM5PR11MB1353:
x-microsoft-antispam-prvs: <DM5PR11MB13537DD636FF902894E6BF398C8E0@DM5PR11MB1353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g2mw4E42fltrMnnHaXOH8fS3AyNx7c1E/wsXghs+NuRelsgFpsL2kCYKzvwf/y0gDlvT1YNUpIGjhyGCcSA+diIjEKXIw6J3YdKD9fAzYzMV/0wANeqv7rkSS/J2xMA201dgS+5PhpSHLax/HBvJQccfwpSoJbk75hjRpUMCHB9xV8T06kvuPvSBZxQ4ye42oJd9PbSd+CxnTzT2jfDb/awDzs9LILXJO6XWwfThvii331bcRRctcRALq2KiuwW53caamrFuDZFTIU2kIjuA45xIQcX1xXn56/u3YUmZEg0miNmE1DXi1a0kVO4MSgtK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(346002)(396003)(376002)(366004)(86362001)(5660300002)(71200400001)(4744005)(33656002)(66946007)(64756008)(66446008)(316002)(66556008)(66476007)(26005)(186003)(8936002)(76116006)(6506007)(9686003)(53546011)(83380400001)(52536014)(6916009)(478600001)(2906002)(55016002)(8676002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bLWvvHfdmouCrtfqOKbe0xFLybbZYG50gWcEzUdDCBWlZ1NynyNBT/S3RPQ4HH6eN+pONfp+zrlEKgVBzDTDwGBfEQyZhsQA8evAzv3F23op3hTLSBiXVqx+GhRWd1RCYXfDF5gP2CVDlErGVsW3Snkt2xF9V3Smn4iw7FH6VSBI1QLxGFsalkwuv9sNvlKZmO2QXxXDF7q8pQ/19R+JEbjkO+/D8wPLKupl3Z7AwYwCwvTCLjXSB60nlWBdzoq1Wc9YMQadPntH7TqZnj91bO4obGR3f6fN8knU1GWftKJOL0db97HLv1g19UZyZs8Iq5rjuNZww7SWr/9yGTQ5xrMI+Hy78eAkWVnDRNV3xl166MgrZfPowGzt8Va51e9AMYHvQxax5ddM9IRZdNJAlSp3WUULaY0UJELCxhsNorzciTX4KAr5Eg1VMBfsz7JvZ8WLTXuvt002qAfOqCXmKkYa7szShCRFBbtq91xKJPjXZmyVgOKKSv0NpZFC9Xlg
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0552921e-87bc-4810-d824-08d8035ddd27
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:21:34.8543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kTpVCCldAeN+IFQpxrURMO1eU26pCME8Hn8nlk996NqqjXDzbv9VxcrGlqh3Wv7ZDO6b/AOnfVXIsH/VQ32EFpfUKwoqge01eKVqBPNYBYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 9/9] ice: Ignore EMODE when
 setting PHY config
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
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 9/9] ice: Ignore EMODE when setting
> PHY config
> 
> From: Chinh T Cao <chinh.t.cao@intel.com>
> 
> When setting the PHY cfg (CQ cmd 0x0601), if the firmware responds with an
> EMODE error, software will ignore the error as it simply means that
> manageability (ex: BMC) is in control of the link and that the new setting may
> not be applied.
> 
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 +
>  drivers/net/ethernet/intel/ice/ice_common.c     | 7 ++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c       | 2 ++
>  3 files changed, 9 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
