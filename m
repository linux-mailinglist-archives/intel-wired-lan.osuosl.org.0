Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCFF2191CB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 22:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0B2986FCB;
	Wed,  8 Jul 2020 20:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q5Ah6ZyMN8le; Wed,  8 Jul 2020 20:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6FA586FD5;
	Wed,  8 Jul 2020 20:46:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02D111BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 20:46:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE23722621
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 20:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ySi0SIq-0AH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 20:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id CCD77220A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 20:46:56 +0000 (UTC)
IronPort-SDR: 0zqmrGA+xHZCiY2XFTY3Gx/FVY477vkRRhgxTCeiZVrKzgVI4WN29e32c8c7awY4/Oemge3LhA
 +yh933SzNhvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="135349440"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="135349440"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 13:46:56 -0700
IronPort-SDR: 8CPknOuesFw7csX1wr3gVnPlMxlpJsgLMlg/dF3iUCPyXw+OYQ1S2Quq8IUS2g+nyknkm38Fa5
 UwORfAeyQQYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="268564441"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2020 13:46:55 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 13:46:55 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 13:46:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 8 Jul 2020 13:46:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PWm6jxW1UJCQ8q2Ev7voALnyZX56WgBzodiAtVQ32Aew2RthI2RsZXLFerIV/ZVsaQiG4gkFZKJ/wlJeOj3aHNeZhKxR704p2+NqS/yeJLUzN2LCSKKBsmRxrtzk7kcxHHkePu2lqW0yBz/FrkSu0+iFQqTWhAVLN4qMnI5zG2oC1hBte6DxqHuRwLkVRnfbv56xH9ZVLcUmuUnMCBKnsPum6i9xZKnz09/ZidKKiYiYheT34eIbC2Q/EP6/sE43dg8J7kiM3I4Vi0kRLN8rsgytY51HDiHAdRVk9aZpacHHNXPHkcG52zwarVOoh/YLUvSvZCJsHibm0qNcLxPXew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EfRffqrgg3R+SdDGE73dOS9Vy9pWGRZRGDSB+IxWToA=;
 b=dXBUXlrY0VYqKO+f0+x4KHlHgzQbDxWq/gU/oBQecgCW/0ryxYYU++SAkafY4H+k+QF3yy0gcyWmHMv2idaXDVdCZ17TDTY/8IJyk8zHvLXtF6sFGad0F+NUpbHlEH55wErHGtEpi1vc4dmLVc3MuLSmsoVuD+jStiL49dAizC2MMFxsu0X3OnbUeSwLL/Dd/Ey0hO7cQQaIiGvjVZdtbTRjsiK1SE/TDO/pn+Au7x6OFS8ZRg28szFLHdAGhWLUpPgwJ7f1zzVLa6qwJXyUuYohm36IEjyjXt75nWvPSg99aRTKyYkUKttwItai8M7BsuYjE9KHdLmyWKmVhucFdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EfRffqrgg3R+SdDGE73dOS9Vy9pWGRZRGDSB+IxWToA=;
 b=ytzK04cW88huSOm/ssR3Pcaitkj6A9ZXCb8N0+RI5/1bp4SDlJ3itTDOEntpL8nZs02RJqvuWG527F/yXM4m35PXZGFvyNGwngM1aIIOeXdj26dzZmsiogKaXujfKx1LZXwIWW2ZWtuDCju1RJOoYQQ24nOxTdc1OCOO7r9T1y0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB0052.namprd11.prod.outlook.com
 (2603:10b6:405:69::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.24; Wed, 8 Jul
 2020 20:46:53 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Wed, 8 Jul 2020
 20:46:53 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH][net-next] i40e: prefetch struct page
 of rx buffer conditionally
Thread-Index: AQHWUDtqYh5fYn8bckeL76QBwyrVv6j+MUpQ
Date: Wed, 8 Jul 2020 20:46:53 +0000
Message-ID: <BN6PR1101MB214501BA0231A0EF89CD66C78C670@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <1593671885-30822-1-git-send-email-lirongqing@baidu.com>
In-Reply-To: <1593671885-30822-1-git-send-email-lirongqing@baidu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5150682f-9350-4037-54ea-08d823800c28
x-ms-traffictypediagnostic: BN6PR11MB0052:
x-microsoft-antispam-prvs: <BN6PR11MB0052B51B7D695EAD1E59B0528C670@BN6PR11MB0052.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:765;
x-forefront-prvs: 04583CED1A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZHUfxvwpLhQ1+4K027vghJbebAuCTOP4o8GjAYl+pn0tyZCkw5Zj+DnIgmg6JdRhIHGWJ5bnlzjx9Qds3fdZsVpUQHe8lGW03FpdlHeJVN5K0thVYdXYU/aix9rQLfdY6UaSQ/uvDNeZAsFviXNIn0/cHMA2qU/Ae0QdI5DZstyCWGudokmCBUZD3Xq2YTR9Dx7OzWIlUgjE2x7AjR59qolbVhWNil7sp0QaSL4/+410HvfCPLcrea94TRYcNCJ1BnQanNI7Iz4KLUovfj2NoYZrWn1297ezOA0tB1u2NEkpGQY2ktVXdLnL9SDtQVrx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(39860400002)(396003)(366004)(86362001)(53546011)(186003)(7696005)(6506007)(71200400001)(83380400001)(66476007)(66556008)(66946007)(76116006)(64756008)(66446008)(8676002)(4744005)(478600001)(33656002)(5660300002)(26005)(9686003)(55016002)(2906002)(8936002)(52536014)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: yGk9SBha75eWkES9+0WXe0YVmybFvGdSGx7UkPYO9otw+I5G5ccthVcK/chUvxBQszk3A/JInOTxGDt5XB/GZ78+Lep8xffKYHLtuWxtakHsmVS+lGUKT17Jx+qD9znksTHzke0THWxKerBKvnlMJom4gh16mxnyMBHJk34Tao62JUvxBfhd2M+uV9xIpnFflj7qwPQHEksNQRy8Spxf4dX4wh9LbV0C2CTQhyVTBwmqOGJlDeHd4fDOlnzuRZYvK0IBUEUWkQzUqzwSCMCkZuxSqG6J7j2fBjdflRXa7ft8ZtTpuYtH4TICF34KqgU6upFTME2AC5QlB/DneEtjtzX5Nosptpq5uPvj/ZPcUNvAPrBZBrYh4/jrBuoHKwtkGlJSsloao3cpGKWH6agjJ8jUBjjGZ99WM2xdQ+dA+3TqHff2kn0iktgQMx9XLQCvbPCqT8ojUZcRNOfTDgR79gKepM1hUFNoARcd7DMtZbk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5150682f-9350-4037-54ea-08d823800c28
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 20:46:53.8031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lrSuuUhXvSzSWoTQANG/+YLKsveOUa4LKbD6JqPy2ReGzTDsm4wi4PIDq9VORc5jACQH4xAhq9KcNUjHTG8BLsHy2hMTomjrCixIjEM4weY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0052
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH][net-next] i40e: prefetch struct page
 of rx buffer conditionally
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Li
> RongQing
> Sent: Wednesday, July 1, 2020 11:38 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH][net-next] i40e: prefetch struct page of rx
> buffer conditionally
> 
> page_address() accesses struct page only when WANT_PAGE_VIRTUAL or
> HASHED_PAGE_VIRTUAL is defined, otherwise it returns address based on
> offset, so we prefetch it conditionally
> 
> Signed-off-by: Li RongQing <lirongqing@baidu.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 2 ++
>  1 file changed, 2 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
