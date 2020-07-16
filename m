Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA4F222A56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:46:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EE828A91D;
	Thu, 16 Jul 2020 17:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEezXHHX5nyN; Thu, 16 Jul 2020 17:46:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 681148A513;
	Thu, 16 Jul 2020 17:46:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65A731BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 563CA26411
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BM9E+a6wQ-x1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:46:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 52E0222882
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:54 +0000 (UTC)
IronPort-SDR: jzZdAAYRmuu7O8klK14taoxdIQV85LVOD8hGfQoGTezkG/SrNYUeoVDE8ID9wGviZ8PbWqbjFy
 lFwKKa12AtYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="147445978"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="147445978"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:46:53 -0700
IronPort-SDR: 6ZluEZpe9N/tRsh7BmCx2XynMXE50Q3Sa2qwH2Bcrbl4ZhQPblva8eQDOb+vtM2tol83hs9zeK
 OF+jbWxC3bUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="269315624"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2020 10:46:53 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jul 2020 10:46:52 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jul 2020 10:46:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:46:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DaT0Za4/knjhXdpKR5ypDEUIUQ0U3KXlwKOjtx1pW5zfUrdH7EVcV+21ji/19fnmv4fZGhXSX0+4jez+nJyroekDJyDzvK3+4SX6qyQyUmH2D5an3+x3fxsZE8P22kNcUnko5q1dHrRJfOnNoXElwi+ko5uzVEYM2t6rvb2PxGPSZOE69sSLuPkZly1Dur4Z6ZnCSsdVzQ6+e123gH0X4m7A5zXWy/9dEqzbLZY5jHOSpa/3yPHDGRKMleJctjDxX3xMuncRU51m/BLutn6LVT8hP/s9Q0MAQSCaIG06aRVHuDo/zCgbawfcATg+cF2nRbyYuKO4D+ftcaVIfT1bvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Khy4YTZqjkStUODQxqWi+hyc+sAPYrr+HKM9Y2UkMCc=;
 b=fTqCqil/OX0LtyT9g54XbGEe56nFMeBEyrTsJwY5pzA8MkcX6JbcYeoRG3dB/UhdcN9GMa75HSz3FjsWNTuMAsgtv1N/BFbsbpVNkXCRUc0mBKeY6KZfg3OZ5Op4qawFGbNJoeRPYHd9R5w+S4LJOHmXRYmGJT3nOYNqZEeWI+2WsImrk/ikaXwKOfRrllGzr3xkstFzo8IZdXqQQUGVaW8cNgWR87NDhzUaKyqco0tcixHKOVHQpv5lIyI3tPDr/A2z6sFBwJ3UPaz0J4p46D5UMDx6lwfFWgdiVECh9zPw0+m1+6pcisX3TtGm1KwDS7Ly1Z9JdmULf0YoQFVlgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Khy4YTZqjkStUODQxqWi+hyc+sAPYrr+HKM9Y2UkMCc=;
 b=A1ClGrgJo0gCPI94iAM1mqnGBbfeYJ01A9ZIDHrndRKSwAhOhNI3ULE+aDnwoOdP7PiP86x1t27GAxTNf9HBDv612s1aWHsWWLlq5kgEKYmJmPeb6MLwPvIzVgGpwnCQ4vbiS0HJO10+jxKd61gE5F2CgDpiHN8Iv+ONgLNYq6Y=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1268.namprd11.prod.outlook.com
 (2603:10b6:404:47::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Thu, 16 Jul
 2020 17:46:47 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:46:47 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 03/15] ice: fix link event handling
 timing
Thread-Index: AQHWWVg7laKP7emgfUW7cHQyBVxm6KkKf2Kg
Date: Thu, 16 Jul 2020 17:46:47 +0000
Message-ID: <BN6PR1101MB21452308030BA479EF9B68FF8C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: e016bcd1-db47-43f7-0861-08d829b03671
x-ms-traffictypediagnostic: BN6PR11MB1268:
x-microsoft-antispam-prvs: <BN6PR11MB126862AA93249C416DF93CFA8C7F0@BN6PR11MB1268.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iDz+/i5DQAsGmxuFBwGO2YlS+mQ0BUn1UgTIQghSWzFpibcRgnjPlaKvMfHzpz1fJCnKAnkEa4ypfQyAlhfCNe9TyaK/zDcDJrPspU/VZryJDdVDF7TQpUIx0quP28pkQCujmHrPyfITz6bNUM1qsGOpcRw6u1rGQ3hZVu5tHToWaBbrMLeAmrPUaajQ4av7jgVsEEck42ZxYiAFuycLzdgCy3sdfPNUzyyfN78nxcX3bQiBRrVqz43N02o7lKMumKla9dRctbIN9n3whxk0i2wJLe5O46lC5iRpSn7NzJbUudlt8K2xzq8qw3bQ/TuX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(6916009)(2906002)(9686003)(55016002)(478600001)(7696005)(186003)(64756008)(8936002)(316002)(66946007)(66556008)(66476007)(83380400001)(71200400001)(76116006)(26005)(5660300002)(53546011)(33656002)(52536014)(86362001)(8676002)(66446008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: r2L95ZIlZ/lZOYueUAappOcnQBihy3FEXSVukNkDZY9l+BdB3HjGPZcf1aGNDItdKS7o43YPb/tlG1wlJdhChTjvh97oZf/6JBE3t4xJLnW6yj4NECNpOExkO+55zwoo8vAbMsM0741P+xJHMv1txSFbF8IY5hSjRfC3M4Z2UeUQonHOFIzey5FIHudC8x22Rh/1uPEdr2cIMdwcsdAi+bwOek0Nd94FiM4RYglNNCv/YkKzuBrZyf1p68wKfJj47/ubygzSCoKup/y1rZA9Cg+G/OhIIQYvJw6Fo9ifTeAqz91Xi6Q8eAKEHXj+t/JiQqfgmNIznUnPheNG5v0ENULdCPQMshoU9L4x+2v6yr+nG7tu2lNvAsJcMQ2aCdl0DFG25+gROQjhgGRKzQqBJzTMRNq4kSeKGE9CF/Td8aAM04OqtuUnifbKj1bdtY1o4PGluFh4fQHNkvDp1I9ynZfYOLKCLjlhxUuX9VUiNzw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e016bcd1-db47-43f7-0861-08d829b03671
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:46:47.6505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x8S+X+CqZidypmd0wlAt60e1IM/ND9JGYY+gZGY2csUN+Skk99bjSSWQnvpJ2Ilya+f1ngFPVT45tPUVlF/YIOD6eeQEddHut6noAUEohhY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 03/15] ice: fix link event
 handling timing
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 03/15] ice: fix link event handling timing
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> When the driver experiences a link event (especially link up) there can be
> multiple events generated. Some of these are link fault and still have a state
> of DOWN set.  The problem happens when the link comes UP during the PF
> driver handling one of the LINK DOWN events.  The status of the link is
> updated and is now seen as UP, so when the actual LINK UP event comes,
> the port information has already been updated to be seen as UP, even
> though none of the UP activities have been completed.
> 
> After the link information has been updated in the link handler and
> evaluated for MEDIA PRESENT, if the state of the link has been changed to
> UP, treat the DOWN event as an UP event since the link is now UP.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
