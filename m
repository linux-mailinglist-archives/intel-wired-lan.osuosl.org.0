Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3F1358FDA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 00:33:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77D2884A55;
	Thu,  8 Apr 2021 22:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xxUIIsie-_lz; Thu,  8 Apr 2021 22:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68CAC84A50;
	Thu,  8 Apr 2021 22:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04C8F1BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:33:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 006664047B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:33:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2syUe9XcM995 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 22:33:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E629F40321
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:33:51 +0000 (UTC)
IronPort-SDR: 8uPwTKMavMzwW358BR3TkBYi2IL7dztKXh4WXG3uJUXFIyc3XVpzoROLLstlYbXiDH41yCCi5s
 sHXPsPQod5GA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193758481"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="193758481"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:33:51 -0700
IronPort-SDR: 8hqC3b0Ggkf7n4WbwJrNBEkqkkMVY+1DVYGHplcIZNBoEnEccU23WnmQIb8fBeQ2YKRHjJ4rj1
 tsnXmmjqek5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="530771273"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 08 Apr 2021 15:33:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:33:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 15:33:50 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 15:33:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h57dDD/1ATCrAI9fAni6oayjX19mMCmdK5cr9skgZhJGPfO479H99hpjW/SUi7Ko4J0q1B0YErnuNDmLnmkVpI5yCWD5bdvHWMOcQmk4KyRKbS9DUo0PSXZZRn3ncRWDmItvVqzWMZV+DxlXbPgZnLNTvd8gRwQAh6OJX4wmMiTbak+7Cz9d82xgp84U+QeR6i9SvQI6zWFwbpZffX8gdHqZVtG8tMfJW5NXR4ytg7rdzvOTDjCZaqJJ+5Ds2Nf9nASTtE7uvoPaH/0hijyKl3sSLIx2CvKQWGKYDaSKUAKSHQsIQrmxxDVFr4GDuKtRwRdcPTrqPon+7fVN7C68zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=00FqtJgfYUbp3+HRtflqmMKMShttRdPEPoKJgDwGUP4=;
 b=Y2S7sijV+PcXb//hmO735Oy6f2sucXBiuOpUi9u8WAzhKAm5eXVNCYAoj4rb3dA8hf8fZNRZ4T5PjeyfivweUR8wYrdw5XqhczfaSdSHP4kQmtR+0GMXBpKauCTUnF51XAOH3CXaOjP0LKQ0u/v+UE+CHIhJ9IdxIp6E4uYMfkw4MHLHynE6PPzYNTzg35LU9PpZFq9js/8BbUsi6iMRHn1sG539YhCQDf6Q7p1EU+eCTLmzO1MFRkHzuPVm+l4qdOS9veQzKJ+rrXEBx8S4gCwf9L6jpM/SnGLHk/eSWjA6EbuxK3clLbeaQwlP1mrsgdwJh6iPc/pLUVph1jQfUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=00FqtJgfYUbp3+HRtflqmMKMShttRdPEPoKJgDwGUP4=;
 b=v/u4fCOpn9xYXLq9EOiItL2B7f/whoq+gmZ2u4kFZebqBb8eZALi7VPOJkxSRAFMIkE1a6oFJFIu1puTfbs+v1Bz9Sj5c9etRd076C/GGlLjtUBIolTZqVzK+TNPDw3XNkUPeEPw1ixy8iXv0a6i+9kiYxqkjq0Vv0fo+PCffc8=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Thu, 8 Apr
 2021 22:33:49 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 22:33:49 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 12/13] ice: remove return variable
Thread-Index: AQHXJnS1FgDl3cfhwUOrbnm2OtmntqqrQX9w
Date: Thu, 8 Apr 2021 22:33:49 +0000
Message-ID: <CO1PR11MB51055B789AD531B6DF9EF173FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d8735ff-a918-4a90-94fb-08d8fade6130
x-ms-traffictypediagnostic: MW3PR11MB4748:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4748B56784C304F13E72FF63FA749@MW3PR11MB4748.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tsdieBu1KJPLZJjw+DYYUxTEYLQxkGD2ZOaQ/9D6jUQnBFxUVarV67uBcI+UQ5cmqRJihKy0NUIkrSi9lmvoWGM5CW/TyB/2a97qhwpPVOplYlGgRlRPE0QsV7r2KvzUyJfdwSvgGbgcxi8TrmAJJIv9CBU+1OSKMJ0xqLlkl+x3wHf3czPUBdM8Bcod/LN+UT1B4M9HnSY9oh2DILfYlD9Jh04w9WnFYQLohCqO4js4kBmWk21IHazvd7VRPQLICef+3TlcRuacshARh2HMOZtIIqRxCZBMebJEvAnHmbo6V3E/L1jUy72LIggrgVykCny/m63bvJRsoWq9hG3ZMMlLj32E7c2l7D6SC6UCHEPylR1B4AkhNU53Ryk1EHcgJy4cy53CcShMjzrV/BYtjBh4ClArEO3UPV3B7ElpAU/wYnP8pCETAQ0vqhhItxgHWRViQILIf/+Eeiv0iuPWS+kh/wjpUaeLmIMreG25mBM5Px5G3RAtgChQbPAAxCUd/x61EvGpX+zw39j4y6yr+AJre6wVO646f255f3oCH8so54vmctZQ9TnaWUDM0t0ABe6epnbwf6+rC1TFMcrczD69Bpa4HW6RN1uFDmxis6J4uIPNpMyP/HtnC0Qq09ula6hReAdZDKfup+hUV0t43e6sbZj8ENnGb+OZ9Ldhl70=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(39860400002)(376002)(346002)(366004)(2906002)(86362001)(83380400001)(52536014)(8936002)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(7696005)(33656002)(5660300002)(38100700001)(6506007)(53546011)(71200400001)(9686003)(8676002)(186003)(316002)(110136005)(26005)(4744005)(478600001)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?2KlVrlCNQoWL1tBJKFqkrsFS9T/z/9WIxXxxcI8l6ljd6QNYTlUMlKFaIhf1?=
 =?us-ascii?Q?8leMm1AokiAwYGp20xASeaMjsE2j4pUweJ2LiJTBjycT08uzMmXN+chNEVUM?=
 =?us-ascii?Q?o3zdEC9vBtK14QWiyQsmSlsv9ttbYMTOyY+Qvhr1GBwLxE32R8Q4Dh/WzHlT?=
 =?us-ascii?Q?Ryu9+TAgqdtJ+0l45IOFqnr4SqEEa2aEpC8C38B3Ybf26RdamW8/KHbVhCJM?=
 =?us-ascii?Q?KAKqyBlPejMhOV+ZLZEymjhPGcN+Na9DLCHpbhORC4MRmOJT6VE69RbU07ar?=
 =?us-ascii?Q?clQPdjQOeDPySXEl0+YAddT2e/qESVvxqEVnwEJ6zS64A6l5tMDBCEF7IwK5?=
 =?us-ascii?Q?Jspkl1EM8ujI0haDKyaWMaROEWF7UuOSWjyShmmGvwqJH6TrVBP1VqzPQv8c?=
 =?us-ascii?Q?44r9V814lgn6huU1A0iVZHJfo8W9hQJSgaJgcryQ7Lfrxz3faxTUzofvwaCn?=
 =?us-ascii?Q?A5+waCtMUuUCdN5YFadyeJkUCSJGoiY5U0ZMba2RyFf2ikiz8wfuQyZ8+Y74?=
 =?us-ascii?Q?/gXnXyCdWP9yD9m1QTGESNp8P/8OCFAsCqhC/1E3v2TaaJNQQApgd1zIMrG3?=
 =?us-ascii?Q?Q2+3JWCPP/6mPOA4Lqy4aXt+LbGDDcH3TY/jUs/oAIIesLRSbYfSxWkvbFo9?=
 =?us-ascii?Q?nFB/JgTWSVXuWVhZaHxjkC1Lm70OeWVkIPx3xZG2DzreioXPoqZ1OQtk6uhH?=
 =?us-ascii?Q?M8JdHdSAn+R3yALiMe77n28M+ZP9CTvUxmltjkuhcVP3RFeWt7A9ARFLL9i+?=
 =?us-ascii?Q?cBP3+0zUFATwJpaQFkBXKYu47MsmY4XG29+m7ZP5GYpFQnOvyjCiLzbSdOhQ?=
 =?us-ascii?Q?g6zQc2QZDdvLaErjDGc5rRiqVSDvz7DXv1rRIKOp+cHEyAHprX/F3rarPYuE?=
 =?us-ascii?Q?bfKQQfGGiurmd9rNtmhNLasn2fMNbZzwfIJj36YgPgD/vtSd0qSRkfmn4CQB?=
 =?us-ascii?Q?bYPzf+GdIJSf4JZ38enkPhiULQM9fsZ353/SFcnrw/C1XAACuwFIACmf683N?=
 =?us-ascii?Q?uVRZ1PJOLSG6dEJiqL1KF3iffc/9YPzXqX6GT/nAWAvJkpoNHLNBfsQ5uncE?=
 =?us-ascii?Q?zusA3P0VeAuaOh18pKMEfDmhSCnMpJ2eJ9O3SR9HZirl4NVHyiiysTO/si1B?=
 =?us-ascii?Q?ceHzohjDStVeR5TZ5sSfnob214zxpDMENsw/Ptx4UcfBUiwcAdZ3ixQogFm6?=
 =?us-ascii?Q?czmO1HmSxg8GcroOt92MFKcv4ofFynv9pCn4Ho2w0sSbv7s6/hHmHXM/d7ec?=
 =?us-ascii?Q?h6Ab2rliHVETsH/2bD3MkD64RUiOxP3mCn+jS1agWOFNRI2GT4cTw5f3cCBC?=
 =?us-ascii?Q?3+8SeZA7mjxFQ6D79fE0JHyp?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d8735ff-a918-4a90-94fb-08d8fade6130
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 22:33:49.2346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vzo5SnAWV8/F+ygBzTtqXP8936Wmc9C+/m5vGLjdhYRMygHUlrkhlmVforIGyjmb/xWyAz0jgJltS8LmTxmiutyowERVLErNPJ8fQXRvNdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4748
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 12/13] ice: remove return variable
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 12/13] ice: remove return variable
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> We were saving the return value from ice_vsi_manage_rss_lut(), but the
> errors from that function are not critical so change it to return void and
> remove the code that saved the value.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 8 +++-----
> drivers/net/ethernet/intel/ice/ice_lib.h  | 2 +-
> drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>  3 files changed, 6 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
