Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 330D622D285
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:57:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D844E251C1;
	Fri, 24 Jul 2020 23:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NYsmYGoMhrU7; Fri, 24 Jul 2020 23:57:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D74D025173;
	Fri, 24 Jul 2020 23:57:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0901BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 273FA88BB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CksRcivr6PMk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:56:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 78B4F8836C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:45 +0000 (UTC)
IronPort-SDR: tyWFSCairs9HfizKOrKBR4Ic0fd6ThueoThAJII2t+7RI+LpFkDrOasuV2YEiCV2imSWp2bZCy
 yWNYnj8xDJ0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="150789647"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="150789647"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:56:44 -0700
IronPort-SDR: jWDo10n8z3f48MLAt0WZqGq8ta9ve4VHwTAuE0sd3mPoxDr1Gp5ssON1zvEIPD04Yzo5BvCko+
 7ODcamCbKhCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="489364370"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jul 2020 16:56:43 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:56:43 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.53) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:56:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=II/KrQ07bDNl1B+MpMWXSl3MYwRuYwS9NBmlSaK5hFp/souy6Cx0crHYTKw/coLd7eUlwPCdgmrMRVIgUHh4MMiue3DEpsJYhkGtNUodiV5Xxc85B9JAehxlWrV+lacz0sYTWWAScxCxxWukOEdTefVvo1ExXs1im3lWZZlXFJBOZn2Oid7yqOK1/0zjMG1PJgwaJ3qHISuU76XhBe5XjaLd6nEjRCFsNH+I97tk6pU8vZIOGKja/VR2CUcXlDy2QBfcs7STA1Y4Ekam33P+8JN0TUz9qpz4Z/nGsqCr4rrK87M8nc46C9q2RDBNozdMXac21WWZq2IrJ0qebEoh9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpQOGsaT2YR8G1N1uq7aHmt7sAmdkdrH0kont+qHJT4=;
 b=au4OwDUzVFDVeIoWWZYCY0J57YSmty5cPMwrXmeDuPQn/t/URzfq+ThyrkkeOtDfguH2ahbOeg4diBq3Bd1s1kewBN8S4aYafmAeUQMkMU+3YVojNVsZyP5rdnTK8tVbVXjGS7CYq+Y11ltwADoqiub+nw0XMKj/RqGT3c+LimUCOJOwTPrE7Zn6mIQjgBInuDC+5tRBO/uj4KYA8n+htdyj/krmuOXXMEJAhAzGZVK5qpJU2ps3TcrncNGDMDlbGSLR6tkOyKERe0XHGDCAA3zpNoKPIL1dv5LOagI4jHEqv+0OF4zuAofDVmE1cwgK7zuslhsYssL/1jl64weStA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpQOGsaT2YR8G1N1uq7aHmt7sAmdkdrH0kont+qHJT4=;
 b=Dj3qS5tgEhgKsQLKYLDVh0R9fnGRd1RF7MdzXAAZQiWgTgTrRznZw9LXDtHcj9F34lzpbzozlmOF9a7G+PLsV66ZR7SUzL8Eb+69A87FDG7hS9EoaVUIUElo1gouKm9BLSuQlahBs8xI6k7jLwR1rQdNLeC+rjFzXW89Yne4kqE=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:56:42 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:56:42 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 14/16] ice: Add GTPU FDIR filter
 for AVF
Thread-Index: AQHWW3YZwZNnxkhYPE+UN2XoF/WUbKkXdSiw
Date: Fri, 24 Jul 2020 23:56:42 +0000
Message-ID: <BN6PR1101MB21455A9F704336C9CFC85E2E8C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-15-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-15-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 8f61b64f-0676-4f08-1040-08d8302d36d7
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB384264982EB9D138359FD8CC8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LP+n8/eQM4bGci5VJpmmzvFiL0q13CFMaqLxdil4vhrCgeCsCOoGPE9Pina3oMtme5U6CsaPSlRy++lzJnN2lnfX0YbQe2+utCml25qE+B7/KQHODYwzUw8KsuaX5HYlbUM20o0Eq4ejwWXpSOMur+OkKdHWiKXPbZeEUkWhQY+rV1chmNGURT9a5M/RC9d6I2PoU1sNGUn35biHA8RhWpEFZVyny7n/a4JnFstoY26+BEPJInDh2InrxBbhQBypbmTe7vZQw/X8sRVEJ3I6RvPNa+G60kPDNz/PusJrmOSsaq3983fs5kMzmhxYhbcTh4R/M45Yq0eqO/WqyHL/TQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: d3ZyBzcwQdi8kcgDhhtpkUXkLSwn/paF3D0M56rDi3jDrImi/3qe+AMIocwEzOGAsbjdSJwEJFYJy/foMeidpqp3XKqm/4CSEicBzmmQ3UU6hxRU0dJIKx0ms5bjOzy4Ikqxk0ZcWJsw7M/9B+tQ2Yb6gMgZUMgrx7NfzLvy7BNaVXl+8w3f9C3U4+KDXm6JbcXfL34NDfVp2LlNXtRFr3v6Eqe3ePYgrGe63Iog6KyrCzsyss/w+IDVArjQUs7ro9EQbDm2FGsj0Y1oeUGQ0Dm5xabYVdx5g9PCxiYbe6PBckmRlvEbjKFNkGASs726+rEFp3SjI0v0dx6pX0nXYK+61asqIcErjWqAs5+pGrffpo3is/moLJpSXfqpGs1rm7AU/ZYR2nuM/gPV9v1C7OIsRGsuCsQhnywf8Zifgpvbcpx7K3i/TkkW4pZCjC63qYanNC+UrOgyVD6ynZmg81MW81nn+iNd+SxZOPdMX279YFdfdux1nMeJrk8qKA1D
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f61b64f-0676-4f08-1040-08d8302d36d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:56:42.3731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vneowb555E7ZYcTXNkRXums7kEJuUW9viZkrnpdw/1oQ0Nr7tuan0sNdtz7z67uvw+YnVUGmO+eFE8dlPdS2dSm+NB2DYQ9I0MZedPj/rHU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 14/16] ice: Add GTPU FDIR
 filter for AVF
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
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 14/16] ice: Add GTPU FDIR filter for
> AVF
> 
> Add new FDIR filter type to forward GTPU packets by matching TEID or QFI.
> The filter is only enabled when COMMS DDP package is downloaded.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          | 135
> +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |  25 +++-
>  drivers/net/ethernet/intel/ice/ice_type.h          |   4 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c |  74 +++++++++++
>  4 files changed, 237 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
