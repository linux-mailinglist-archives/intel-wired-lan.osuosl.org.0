Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 956AC21BF2D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:28:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23C33862FB;
	Fri, 10 Jul 2020 21:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y4c-ExoCZ49E; Fri, 10 Jul 2020 21:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E89883F2A;
	Fri, 10 Jul 2020 21:27:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E111D1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DAA4D89C2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8em3Ho5u57k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:27:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC8AB89C34
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:11 +0000 (UTC)
IronPort-SDR: OospYbilBD3xdoK/ykUs8+UyO5j/WX8tXq2rjd/VyxTpYuhHHLCoYiocdw08fGhtn+gGe608IW
 nOcQfWyHmBPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="233167046"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="233167046"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:27:11 -0700
IronPort-SDR: 3Z6myEFukbD1vg6Rnfr7SDLFbtF2TdPnX2oiIqQVqkayhMd/YPxa/zmCCqEkdI1d4sS+h01cPP
 lIvgVOVZrB4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="267821531"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2020 14:27:11 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jul 2020 14:27:10 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 10 Jul 2020 14:27:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KV0wMcnZ5nHser2/QCeVEqa1jSvuChYaE0LJ2Oo/nYotiLliqxBup7+HGXTx0ii95SWeEYKz2KWhdlVf+F+mbNWwOo9Mu1W9TXVyyom42br0vZuGLb/zIR2rfgk9G9HG4bU3rcpRfCvoxJBZR5RWG+8fiDi4/ZrKHc91lH+He05eiEO7GQtIujdZ4X8SO4nulGkG3Ia83pgV0TvPo8/+6Oq8vSja2A3Zw4OXSIhWhHbZ4ITnsiAVRK584pcbzu/Qi9ZyPGjWpELb1kPniroGNCEPHbaN8iIZuDKVi1dGR1gpqINZr7uwiuPOmXLIHrLkdYMuwPgna0lBqLiuTc9mLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tHYxwlGIgnUFsXdRzMvGp23WqWLBNbP2hC4RwZxX2A=;
 b=MD10BmJ2Wu1Mn4GNE1b2OWRCtEDzJZ9oFJjfCteAQaiKKBdv3b5xTT0o/clwRX96cYLBr4eswWCyk470MTAv7o3OhrQplzDB7MGApMmET8dkRhFpU5n0SiZuyFWfhLM2Nj9E6H53qypyEyHLYa+EQZBGmwIF3PmNEqCCUsiHXIyC/+t/G3DJRCoQGmJCWe02BfwsEOfxuoSQeWwg2qUcPYCJqVsSFCzJMjke3YOlcTXY0gMTthpKLCZ06suv9O/gDPZ0GSRQGwe3x35ltnWlxdqGp6ZPUXmJnFQv3ivkQnCa6AgVaEXvHPW7ARZayIe/TjDv4HsHmOhlKPzYn3ME1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tHYxwlGIgnUFsXdRzMvGp23WqWLBNbP2hC4RwZxX2A=;
 b=EcBPBhrXNnoo8B0DImrWwSERlx6isVH7TT7RiDonxttl6ZrbeiXnIKlhh2aHDtcKFHPeM/Xzay+9yDNr/FLJ+GHlSxsR4bBxkwoD0WQ+5zrHquKTDHdwMhjbvwsnzXE8C8/b0i+u2oXki1U8lt8OdBMgwcVqa6IeXahQXyJBayM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3699.namprd11.prod.outlook.com
 (2603:10b6:408:83::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 21:27:09 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:27:09 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 04/16] ice: Add more advanced
 protocol support in flow filter
Thread-Index: AQHWVlX11hD91aFnSUaW+m+2EZV9bKkBVPzw
Date: Fri, 10 Jul 2020 21:27:08 +0000
Message-ID: <BN6PR1101MB21456108E9DBBCCAAB8B061F8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-5-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-5-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 159d228e-42a4-4740-71a5-08d825180080
x-ms-traffictypediagnostic: BN8PR11MB3699:
x-microsoft-antispam-prvs: <BN8PR11MB3699E46D64C19225F4845E2D8C650@BN8PR11MB3699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YttQ7Zdyzg0TG+CU7RE7pxs/H/Vq+8FyrLDeDV0SahWw6VfdDOTRoT9BEZNEpifUGfEGl/xpQ5UHIf9LO1oILeKjJIL/ayMMzs0hjzb7gw4796mE+gG4CJTiu9xBo99vua8HPC6nFP1GW6vTfRp9hwLfAtUBhZ26GQgNTjTivCGoXUXL/sLN0gfHlVCce0Wv+y/QJspvdWe1lM1QZviTIpefGA2WZikIzFWgIbHSqHHJ2qhClBZw7tkJaLnwQQ8fav8cJZvfC6ASmjP4aEaxs/X7L81xA2CBxyjtEHlzkCEXDhdt4KUJA4BiebKhBFnB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(316002)(66446008)(64756008)(66556008)(66476007)(71200400001)(76116006)(66946007)(2906002)(83380400001)(9686003)(7696005)(33656002)(86362001)(478600001)(53546011)(26005)(55016002)(5660300002)(52536014)(6916009)(8936002)(6506007)(4744005)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Pixo/pZnOV6wKR6x6yy49uOnDUS0b5513KTuB3bvxXTfMGZp7qZ4OvyVHnRpv33/YB4NDG0NVPv5XKmIkyy9MnWAshRdEcepus+X1+iOmfYE6a5+jI1nu3OTB+sQ778uzvjVyFGkTQsGCriYTA7QJHE2b05btgDbLqIID/zJsc0FVTpESl/Db7FsL+SLiGI7ppCwxE+k+J73OiMSbRtDdtN1kwONelY8rpcTVbCwJqamq8hFxSmBJKINmS8AAwczYqdDaEzOa9kCEl8FVRoz9uhp9+fyYjkGOAVy+oCgdre9kxW9DcWLc3vWrBoE36UQUX+4XCT9eqzkP1T4syb/8x/MFceHVRfwzAZzzfgHpYncoO9EhUXooIbycugl0QRJKVNa6Q2NHpwynf7bFFXx5wWujvWk2E5VVWyvrw7I59QkbGON5VAehdDdXFLIthmOH4iJt8m5t1lRDYkjt0dXLkuNgOfBdEpzsfeTxCWqgJ+S+M6sR0Ihi67EnycjjCn4
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 159d228e-42a4-4740-71a5-08d825180080
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:27:08.8106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dcs+gaqAaVU3v7057+oy0i5F2gTB6KUB3b2nYpwhbUGgvQy/BTaxoen4J2TkwdJNL6CJbnl8LevpeJVY7kEVb52QQCJiVrEJ0w9yjiBMceU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 04/16] ice: Add more advanced
 protocol support in flow filter
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
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 04/16] ice: Add more advanced
> protocol support in flow filter
> 
> The patch add more protocol support in flow filter, these include PPPoE,
> L2TPv3, GTP, PFCP, ESP and AH.
> 
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c          | 270
> ++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h          | 128 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_protocol_type.h |   4 +
>  3 files changed, 396 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
