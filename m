Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 489471E2FEF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D86EC204C3;
	Tue, 26 May 2020 20:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lh9FcPeBNaPX; Tue, 26 May 2020 20:25:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7D7AF203DB;
	Tue, 26 May 2020 20:25:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1185F1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03F21886B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjc7Pe8JOHl1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:25:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2CA548869E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:47 +0000 (UTC)
IronPort-SDR: 0tyJO7fUWrnMrvU0zkvvw+6ya4W11dRsaFqedeVRXdJHCgZBp+SJBqY1thrqMngE9RubQ+o8/H
 A5Upf7aaItuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:25:46 -0700
IronPort-SDR: LQlpcybJpk1v8n7aZ2p1c7g/43QbKxUuquVkUVzZBpfiXIQUbWGsPAVAgza/KxCjJaeXZgCXPV
 Z4FAFCOXUANw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="310357529"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by FMSMGA003.fm.intel.com with ESMTP; 26 May 2020 13:25:46 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:25:46 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 May 2020 13:25:45 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 May 2020 13:25:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:25:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2US+j4EzlUgcdjvMWMzINQmtbVUmq14bJsA6FtEbbUdv/zdmMzbyB4y1qZdkZYhkws8faZAchH32d1JbqK7gGkhVSD032lLEuijI3epNXlo6KIwQJnH0Fjhoi8O8gsIUWVB668ZI7kpRrSpgrnsYpejXzBoISVyHXivED27t0wIK0WZZm2mn7cjjr/S18rQ5VqRyF0YjJaII5ol0xvm6eWNJQzMYGTo5aoZfcCmjwSgvYD08d66avenGvp+mqpXkyo9ggDT6dxOTLo9/MLmSLzBm/3QW8AQatgOyd4oeo3uuom9z03Z2STWjSVn28ZGbuluOjkegW/fzmLP0VOYtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AySDm4U2aNvpeTq+8p9DAjNwy3BNIE7O4h7kh2yJ3P4=;
 b=W/DgTn9Pm5FG4gl+aLhLVDPnJJK/sZ7QROOAPKO8MeKgxPr7fxaJIfS22DGd2ezRg1YYqeTx7perfef2/W+OvrfOgfHW+oNvLOxFdlz2/ZAuT754FKG/zLtDHtwU52to0zslXOW/XMioyyHuQrFQN5qExJODJDACftJSnrZ6ti659jhgqWrVE9HKYszLQQ6edv1/wOgynUVAThgo+FvjFtkj58B9nCG/EFW0fen5XD4xrMH0yXIdQ3iP5Fa+o5nMgoz2051UzQrymWy/iAXLJTHE695gBAOoNSd0X5jIwjSuesQvZAKvMJFzOpyp28/4T0a5XObVSabXBD+vGlzL1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AySDm4U2aNvpeTq+8p9DAjNwy3BNIE7O4h7kh2yJ3P4=;
 b=BrAJAiKcazLtdDPll3cveMfJ046WnxZ//JsU2NxHEAHoOSYy9oRmnOVwBYFvC6/lYsiT4KkGHfDgYntll8HqjU8AmsAyKF8g7otVlwyHIu+zReOwW9hl/Jj5dP25NQAb8VEw/EO+BrN4pglR2JAC7uz1ZX0YuIk1gglwsoikSVo=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:25:44 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:25:44 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 10/14] ice: Poll for reset
 completion when DDP load fails
Thread-Index: AQHWKxtdn+V/BwLUJ0Gkn8WohJSE+Ki64VuA
Date: Tue, 26 May 2020 20:25:44 +0000
Message-ID: <DM5PR11MB1659DF4FEF20A48B6753A5178CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-10-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: c2d5521b-6933-417a-8f00-08d801b2f7bf
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB1643913B46287D464D1998D48CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iPvUcSNp0oR76mmjXJqN7AKUsRQsuSuZW83agD+bbw7MgnNEGAhfw70tNU0zeM4cJ0xdcOcufXePCZWIme5F5RxqWJS4drjrqUUVhd8PK9/yrnmRHfFhakKyO7AJcPwNvM6/C36iUvD1WF7XfZPBm3sP2eaS6VqXpB0wGAgLnpHudlTHnfWd43q4plNZyngKLl1l6b8ipYDc5SMVf/CGBVZqDGYoP4HbFZ0m/R/KNyl6f7bqV81WJjItfOF0K8d9RuItDbUpV3Mb6criPHviQFi6jAPetRJRiCgZ1Wm1k2A5oqH6ZtXZQj59HMLikdKh5lyXWVL8Ld+YCq9tDPVF7g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: a2iabR7IE7KhUdInXeuu2VSIhz0/UYl5SyrQycVgkzZjk8+SwP6AHXZifk+fNtqIgTGzP/69dBisG60VYwFiWPt48oiwz106ruzR75HzqVFDdzMx5qH9eM2b+j8CfVqiuCp+2+4rStmmW36hKmT0vxQbPMHntKxcnAZVgwEx61LD6KnUyC3wYPPnPprYanPjSOY135nz/kF4ga5l10dmrMO146NPq9dmDj4qiUfhsfZybvqWoBAC/rizlGa+a9U4bbTK66/+rxQDOlfx5OA783vWcyjkTYv98mXKIOCI4LqKGEY5I7GNJguGCWo/mu0E1hddKUfGoZevyQ15ssNuKMdI2dsuUdMBG/gCx6VnlkVVnTOrK5CJ/JaVMxJQAef4aQgKdNJnQBjFTcyEmBJGQEQGkHv1OaIobvFN14oEUJ7P+c7ygW9Lv+vMS9ytz3B84IXm+QytbOafrjFx51STt6QyIAQC/rJvFbmiDA9pSNCNy4b36uWm0NAljqAKmLS9
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c2d5521b-6933-417a-8f00-08d801b2f7bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:25:44.3788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2eEKHSbz19k6kuKCShjygXW4a2m9mkTZ9SRNfk6W65Z1Pw1eBzFqc1V8pvpmDwNFfxGsZc3wBXCyUjIIsYqNSFzKwM7OUJS7chaha5frqbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 10/14] ice: Poll for reset
 completion when DDP load fails
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
> Subject: [Intel-wired-lan] [PATCH S44 10/14] ice: Poll for reset completion
> when DDP load fails
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> There are certain cases where the DDP load fails and the FW issues a core
> reset. For these cases, wait for reset to complete before proceeding with
> reset of the driver init.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  1 file changed, 3 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
