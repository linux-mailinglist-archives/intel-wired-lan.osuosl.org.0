Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8285721BF29
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 352B589C12;
	Fri, 10 Jul 2020 21:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oAPPmXog8IQP; Fri, 10 Jul 2020 21:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A23A889C37;
	Fri, 10 Jul 2020 21:27:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97CC91BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0392D898A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2gTy80VHYrxi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8CB438962E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:53 +0000 (UTC)
IronPort-SDR: 0uyyd5QG3DMspxejA8XVbSlYoMCik3iey2wd9auNPaEEtnv7xiElA2v/3qRRxld/SNj67SIhbO
 ae1TOWS0x5Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="145795103"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="145795103"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:26:54 -0700
IronPort-SDR: wA0IEh+qVpopo0iI+QMlbe6APukTWtHl0m2a+S2aXrA3QB83jvj6NDtOJGLzRrbCnHrAfDo1gV
 R33S3f1/Uk9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="269188192"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jul 2020 14:26:53 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:26:53 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:26:52 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.59) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 14:26:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f5WhkpVDzq/8iwk9Q16U104km7/XpdGdoW2canLn3SjlnlgCiBFj4lSkiEQ6wxNiqBcS+fQwUmbnTYUzcoBRgT+bNTK6Z0J5D+uJcpcEHz/zK0MnwWdW1oWJ1DAYoxAzSYl8lHtJwgQetGLpdbIOz6JLuiclGdRq5hh9seg/Df8FtHBg0ZTdwva8+aGqNbatTaCfOV8raprCv+CS+VgUvrPlWU9VbCH6LzRx7/lDP8doEy5DLlBXv+WODSlASdva0UlnGvlsFIpcUIYSBJTVFp2CWwadRtRvnBk2aRtCaszi+oDjKRdrzinu2yMJktKwE71zY0WdFM0p1wUlKe0bRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7//IFD7t1zudN6dk9TV2rJzrfHE7Ey2mr17PSzqfSbc=;
 b=c5DxeSnD7gJXGJ9RQhrbG8i0XzVXWaPxM9SG5KD/b3kuevJdkdkVWmwkNzH5yVdgzp5cz0RRhAlG+NP5KO5LuJHWptyIZz6DFMbRytzrzmlrmd0+W+e07y1MHRLFrNlTz4cHMUBZ/FqFR/HQO3YvQd+d6hD98YRUiZ/gFN4OTQ52VgObN4lKfEzE2j+gSDiIOHZLQ1X0g92/nF7+GdnXSvMSxrDPXchv3J/h9NYgKTDve9uMq15jIF8v0eCVjc4cGFwz1wUQvCgiDr+xARHI8TTXS0rl6pXY1lESLPDC66SUOEgimQRsFizJmrKj8S+ADEXIhPoDNanLL7DSwH5A+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7//IFD7t1zudN6dk9TV2rJzrfHE7Ey2mr17PSzqfSbc=;
 b=L5uz6e8Mh2/8TK3Xd/GyScPZPX8JNlq5ULvE8xhkwsGrdFpM6B5Csnu79U8S4OFVSGRrGWaFH6m+HRKJVPAuBUEEyBAptjqcf1K6x/kIwfhUd9lLduZ8Z7dDYSleSqvAYBTKCBe1/8vUqsIs4Nr+0DZsJqz1sIava9FLv6lfHLY=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3699.namprd11.prod.outlook.com
 (2603:10b6:408:83::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 21:26:51 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:26:51 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 11/16] ice: Add FDIR pattern
 action parser for VF
Thread-Index: AQHWVlX2YCZk1dXD4kOP/IJ/a4TM26kBVObA
Date: Fri, 10 Jul 2020 21:26:50 +0000
Message-ID: <BN6PR1101MB2145A4859F7B9BD89D5C2B888C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-12-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-12-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: c8a4c182-fb64-4d0a-befc-08d82517f5dc
x-ms-traffictypediagnostic: BN8PR11MB3699:
x-microsoft-antispam-prvs: <BN8PR11MB3699B7547128A07148AD58798C650@BN8PR11MB3699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SFWYZygIlyIpoiIQG/okYmSwXDAZNhyNSTmFEI1ApeAM1tgCFMjzn9TkABwhbL53PsrM65lahdA6USgLXlrLorZm0QFmEmz2B1HnkL6MpIV3V0CDGmRVbMXJRcvOgDil0HZD6L2/2x7yI20MvZRIgTv2M56rCbIYC9jLr/iAfnUDgUNg2snMVrqp+fqgkrt3wCmMHa5G2te03C85VcW2ZNghM7SsA8L+dRcptsd750GrsVAY/WZP+ThRbGWmWPt+R3kaoz3D8BQc+DVgB/wtt87P4kf9wKMzExbUPTiS89RDD1qzN1/US6pGigZB5Q9q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(316002)(66446008)(64756008)(66556008)(66476007)(71200400001)(76116006)(66946007)(2906002)(83380400001)(9686003)(7696005)(33656002)(86362001)(478600001)(53546011)(26005)(55016002)(5660300002)(52536014)(6916009)(8936002)(6506007)(4744005)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: CtqheIU3ka1B1zmmwm4+sAt1BZsWWz8Faz4iXxn+4B8R8XFkkV3UKl7pQWPSVIz6Meeo1cRb6oVBMYGH5p5m9RTJktSBzkR34nCDuDqBA/Gz1MGyj9vaT92Agu5nP5eCEXiYEok2EJokyZwXROFDsZPokuw7SRqGt3Eu2mWA0t1CSswuo6Gfwf7WOEPQvmPWFTYYW72tD5zlp1rc4UIJTRkgOc30W4LNh5F55oLJKZ9o/Xm3ivp7NfYtJ4N8gOw3SV0+7vq6R4/VEBhZcRjSDVtyLQLakkvi0fOSh5m7lAAW+NF0gxgDbpoon82f/hOqA9fzI/NxhSqvCCgTuYCJttoNYoxXs9NYN1YEGdSBA7NyHdYD2xCurAV9/snS7EUkJ3oSbtqRWgfm50JRdJ1LmoDhtdlHvDcrftIVMYYq0x9bB7w5bfjFLmJH0rPJYgp8XGYnhqpwcaEDFvkAXe8wYY9dMs1mxTbZ0DPHCi+lkJH1kQKkNzx5m/1ZAMXlykCA
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8a4c182-fb64-4d0a-befc-08d82517f5dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:26:51.0066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0bI2IgaRNpoX17hKHTjWQi0rj6G/WHB+iQUTMOcV0v+i8zGoOXThstp5fJTWs5PF7TRl4lwGlSOOr60wsyQNTg8iKms9kF7NV3S4+/1LnLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 11/16] ice: Add FDIR pattern
 action parser for VF
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
> Subject: [Intel-wired-lan] [PATCH S48 v5 11/16] ice: Add FDIR pattern action
> parser for VF
> 
> Add basic FDIR flow list and pattern / action parse functions for VF.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 353
> ++++++++++++++++++++-
>  1 file changed, 351 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
