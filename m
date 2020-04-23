Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 318AA1B662E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 23:36:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD029877A8;
	Thu, 23 Apr 2020 21:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qdu4+zaa0BYZ; Thu, 23 Apr 2020 21:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC5F287847;
	Thu, 23 Apr 2020 21:36:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 571F91BF82B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 43311845E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8QmlUmvUnhVQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 21:36:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70C4588688
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:36:17 +0000 (UTC)
IronPort-SDR: I8q6MjQz+t1qUQwe0Rk64Lk4pVulJEBryiqIC7bBceoXPwvLitIlj192TezUxcwIFGz51Sdgf5
 Vy2UCLyDTzpg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 14:36:16 -0700
IronPort-SDR: 87YG8/D3vj9VDHhv4z3mE8ja57tzRwoTEY5ZGzOse4yYcbYuIQh1MDYzju6Y5dq0+Mx9fiOVFL
 qaypWOAH1fKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,309,1583222400"; d="scan'208";a="256131207"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga003.jf.intel.com with ESMTP; 23 Apr 2020 14:36:16 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:35:59 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:35:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 23 Apr 2020 14:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrTmD8LEyYobKD6UuAlR6OFATC3aMZVwoLqPuLknxcI8GoDV626+M+BROqYetcPmmdnLJiVPDmALlSAbbU/jFwFMq9g0W6CY5v8wfC5WNNpmeIEfw/2B4SPDuI+smB6gq5mHX/CnYDcnfFLCrANP42SdnG7Xz95Pa8EGtimOADrLlqMNQ2yOVd2FPZAmCvY/PmLtOW2zciVk1KD48XARezZXtcUYM1qLBmMjeTNioPOx5YDgpgKAYc4oT6iNdYkBGetApzhDMY+9TQvdjE4mm8H0uy2IIBrO9orBksbxlgmeoj9rAQw2tiAvA1eWShVRWDdPrqUaL/g9oB4X+dT+YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0bOQlu7vv//1glPiWDoAADXjBwlRGR9hXxrWh59e/MI=;
 b=a1qHbt7oWjWemxn06VPdyIwL5J1y5jkTCxZjkQYQvYNKkVO6LVJ+p5iQWzWbbA6tvnx+dzlfoArY1NVhGKXl/PpXoKqBvheNkDBWN4pyxQvcmlW7574e/hx6ubWUcSDUAzlp0/WblvYNTOe4qFkQDjPR3zDTGIA4RK9/2Sx+pQKCWdm0XCbeHU56LGFQ7/QRrLL0A9LU7FqjLVexA82nvdDtLErUccFLLlk22RE1oAqY2Noru86Iw+EtupIZ6h/bHbtOgCiG8XsbiuUL0BCZ9Xp2r6Cur3Yhi947hoy0oqrkYR1MBh3p4aUv1jy2HyphFLWBfV+N5WfgYmsXHX4OeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0bOQlu7vv//1glPiWDoAADXjBwlRGR9hXxrWh59e/MI=;
 b=nHYWSwd06Gskh/6xzTwY77546fy0NBpgP0SyLw1mhNK6TgR2QTw5kXupwOwSlUpD6gONmAFEZsGd8BmOpZfa3UCaiO64lj1gCe2KchWpjKOeAuy6myb53QnTpmzbHpWAzcr1bb3jupw6ToVc2eGvxuE93oTwKM6ipQQfYwUyNUY=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3899.namprd11.prod.outlook.com (2603:10b6:5:19c::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Thu, 23 Apr 2020 21:35:58 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 21:35:58 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 4/4] igc: Enable NFC rules based
 source MAC address
Thread-Index: AQHWEa0ycGxVwW4ydk+y1XU+zNrqtqiHSs6g
Date: Thu, 23 Apr 2020 21:35:58 +0000
Message-ID: <DM6PR11MB2890DB4B7C3185E2F85EE279BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200411002834.13916-5-andre.guedes@intel.com>
 <20200413160049.35565-1-andre.guedes@intel.com>
In-Reply-To: <20200413160049.35565-1-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72ab1e72-d586-436b-c387-08d7e7ce4fac
x-ms-traffictypediagnostic: DM6PR11MB3899:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB38994FBA16E087ED2EB7CCC5BCD30@DM6PR11MB3899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(136003)(39860400002)(396003)(366004)(346002)(376002)(5660300002)(478600001)(76116006)(8676002)(66946007)(6506007)(53546011)(33656002)(7696005)(66446008)(64756008)(66556008)(66476007)(86362001)(52536014)(8936002)(316002)(26005)(81156014)(9686003)(55016002)(186003)(2906002)(71200400001)(110136005)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oao/bbEKL9/sjqTCMlVxfwbEiqIoCp+uq5ymQJ9ceG0NLaDAaBfFqiFnB8p5hmFHUAbNgiMBS6/jF3n9a+Tr8/AERjV1hKi08EFZDqMunum/a22yhLvx3A+5ufjAYHTPr7meJZI7KpP/zYvQihTSOdtzjJfyNRd3HNkJn+SRFENzwpfDvIpbAsrOQUvwCuJC27hDQ5ISvLgRCQeHAu+1v6JWGQsC7RCvMi24yZ2a5vl4TgZZqFpTtEnjanM4jNZSr2cy6gbIUXF4a/Wtt85U8/4JwVfjuPRMnkrUS3gL+Kdx5l3dBXHokzQTdtrUA57NH1xajhi1HyoPg/d929SyEIht8Rk+Yy4IPTx10vZklcoDxMDAgpQty918d5yEHV32f85R0FbJQgQNpyeVDeWEPIh3OflPvhJ4pZjxXhEsy3LBbZ23gnr9s0/8h4k7yi/P
x-ms-exchange-antispam-messagedata: wtEi/6CfOTKWQNP0wfAvOHKcajDjew4084LScgvdliQMzkhF+zbUXqPtQIcYUfIT5srBI+sPgxsjj2A/UdOvPLq6tSw4qx8WOEkYR9ZMVIAgblSKapQ88Q7nCsmmX77dmL+MrnN1nAzHdb1CaGTiFg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 72ab1e72-d586-436b-c387-08d7e7ce4fac
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 21:35:58.0666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6d6y9wcd/nRpdoOWYDgtBeG6Zsd9wlWPZzAG+wCsyiI2sLgeK3BL5FNbc1bc2eMLAxrZzZ2CWtCr+7MIcO5z0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 4/4] igc: Enable NFC rules based
 source MAC address
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
> Sent: Monday, April 13, 2020 9:01 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 4/4] igc: Enable NFC rules based source
> MAC address
> 
> This patch adds support for Network Flow Classification (NFC) rules
> based on source MAC address. Note that the controller doesn't support
> rules with both source and destination addresses set, so this special
> case is checked in igc_add_ethtool_nfc_entry().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
> v2: Fix memory leak when both dst and src are set.
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 32 ++++++++++++++------
>  1 file changed, 22 insertions(+), 10 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
