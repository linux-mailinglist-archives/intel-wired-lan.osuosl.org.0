Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5674D230393
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 09:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06AD685FBA;
	Tue, 28 Jul 2020 07:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n1IKHj3bSqqh; Tue, 28 Jul 2020 07:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCB8C868A8;
	Tue, 28 Jul 2020 07:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61B2E1BF293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 07:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51CA8228D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 07:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QIf3mfbJt0GZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 07:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 3233922718
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 07:12:26 +0000 (UTC)
IronPort-SDR: Dtxe1CyCDVeYDZXOb79P0HD7k0V6jt7cJdKPDd1BNM3DW4gUU27LiOb0iFmPMvyCNq37TLTH5a
 iokgEDrj6S5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="149025250"
X-IronPort-AV: E=Sophos;i="5.75,405,1589266800"; d="scan'208";a="149025250"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 00:12:25 -0700
IronPort-SDR: mqW9R2CtbcZyQ4wesiNgmus+ERPDeeCZFuJd6eFPHGKdXcd911m8J0o1vFof12m1gueeB/3LfO
 iCHYiWlAu1ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,405,1589266800"; d="scan'208";a="286061650"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 28 Jul 2020 00:12:25 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Jul 2020 00:12:20 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 28 Jul 2020 00:12:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 00:12:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=abe+H/3683O/dSOmfIJZXOq8EXtcbhbPbElJHQlQ9eG2fbKTp6jNHhSw4+7o63M1wWjr/jpBKi3I2VoSBkXM4jOLIK0UrPJUbpjG0iCXh89h1EkU8tZm+2+IRLced/DVxX/vVpT/GA/B9j7EhVNjLShJ8DLyE6bSPIyXb+Ig2DRtxNRJP/mF1yLu4GkKyoY7Gl3Nn2C2KEFCLeEYIjHYqFutictXXhgHB6Hhz0tulE7zzonz6FbW3bXvvEFV5tGZoMMOJC1i5Sl89FxRskyJhwFDvv6RnQKWZ1qtlqHgiRVHFAW62HfmQdxpTWtNL2D0Bb2XB8EEPJjhW0gPwjR13g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A++WSzFQNyqnwYylvqmkiqXhoCNH960kmV2xEAoA29Q=;
 b=hFazhj6tNUaPDFdg06KxwUGX/AgqtsJHo6UIp6md/VWCganPB8929Vp9U60Xaqf/WbB4OeizZBRj/p7i6ZXoDFHeHYatv9Q/R2F+Go9EoDT9ZzJCOSnCEEqll6SNtTfokqjyXPriTCbH+CjTw+B3OmyxSkbEY145sfGbhXxK6UEzTOt2odRQHdIL0JMewtyh95CsxHOjudob5u3lpSUfOYba4V4pe6wB0T1wYtCB7lJkiytVIXXFyA2KLm47scuI2satXUC92Ak6dgsngCYPN++tGlSWuGvNPN5rfRDm+C+/lOcfHujw8qnOa2Pczot6D6FUGEbfL1BEQ0Jj8G6sDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A++WSzFQNyqnwYylvqmkiqXhoCNH960kmV2xEAoA29Q=;
 b=qoVTIXPKvwNF0w+ah3GpJo1DKHNBe2wivb5wn80WfVsiPehvtQ6ebSNL3M+fr8X3tfb6z0ylWmlwC/WmIF72kSPVtI2EiGt98+B6drJKvNpDRf5AM62h2vlH2Y2ZShlJC+kkH6LNE4ebzhEEzJtHNqFLiQ0VM/+XptqNbT23T8g=
Received: from MN2PR11MB3565.namprd11.prod.outlook.com (2603:10b6:208:ea::31)
 by MN2PR11MB3981.namprd11.prod.outlook.com (2603:10b6:208:13d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Tue, 28 Jul
 2020 07:12:17 +0000
Received: from MN2PR11MB3565.namprd11.prod.outlook.com
 ([fe80::a53e:5801:92cc:3204]) by MN2PR11MB3565.namprd11.prod.outlook.com
 ([fe80::a53e:5801:92cc:3204%5]) with mapi id 15.20.3216.033; Tue, 28 Jul 2020
 07:12:17 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] i40e: add support for PTP external
 synchronization clock
Thread-Index: AQHWYdONZLEcvZ46Vkeo3yPWr4ZPwqkcE6OAgACEdZA=
Date: Tue, 28 Jul 2020 07:12:17 +0000
Message-ID: <MN2PR11MB35651470DBB350230F0978F0F3730@MN2PR11MB3565.namprd11.prod.outlook.com>
References: <1ad46857df3e932b2e28256a62f7ad32ae03da23.camel@intel.com>
 <20200724155948.9434-1-piotr.kwapulinski@intel.com>
 <6ef09135cb431475f16beb55f79037d5875c40fc.camel@intel.com>
In-Reply-To: <6ef09135cb431475f16beb55f79037d5875c40fc.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [89.64.73.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd232986-b8f8-4305-e34c-08d832c58fc7
x-ms-traffictypediagnostic: MN2PR11MB3981:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB398112B25AC22AEE476C5680F3730@MN2PR11MB3981.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:242;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IDUDe4KCxyr800MOkI8VdU+pq/nwo+TuG8+oMb/6XmMxjHeoCuN1Y6TMCC33CnsC+UGmJms/gsaxfNBbE+LGRXWUrX4a0m74Pt6+WsYPRPxgddL+fvOZ2HTHKfSSC3aSHzJ1LU7LURJi1Zvb7jXCFIRP8ogEJGtgyS/UV7m4UCNShVtBcl+w1dhSxWuQeguwbkSPIB7/zf6E2UKXLMqWYxX3ku4UDXpDXiG6mhpJBAAzoTjq88DDtjLHUSxdpxk9qzKSK5FyTM8pvyuHF+7Fc0gYvaR7XqhxHEF6mO9YCQUzfA7rX5BQEvmN/n9bGwkUlin+Iocjen2nx3wE673xjw0qtw804pZ53gv0RT/S/O/KHZWgvmzVu283mkTQWNsZVm7+56ooPH6GGyje5EtCzg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3565.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(86362001)(6506007)(316002)(110136005)(33656002)(53546011)(71200400001)(5660300002)(83380400001)(66946007)(66476007)(66556008)(64756008)(26005)(52536014)(8936002)(9686003)(966005)(7696005)(55016002)(8676002)(478600001)(186003)(76116006)(2906002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oliVGhfYM7vdOUoNyjGndOeP+rg8BlQpdaXfC9iCgkvkCrE90mLrirRN1MXuGYEhTDzxQOiZBAs+omgjnBQXBcbMTWZM+TuIj6YwjM0DazADHsfjn9cHaaRnPdvYleg0gVv6zql/G+iKoVa87/8SjobCAC8GFa5vk53K8zuaN1zx8SBSMmgs7k2MOCe50rKmlWlIyaXAfo41RrZUQDD99nTIaV0HkWdXvLrhtl4ZHi6A+rUpgEQALbmvl5aDCLIcbsFC3iRIt4otl3hp2Fn8fGpVzcEUSgTl62D1B0QfTKMKvLaF6QYMcmvvvjLRiSxqZnerv3y3BngeNuT4vkHYnPLaND4ZAxp3mZ3WDtLbQdDM1/VxIMV8g+CBs4GnBb9zWs/T8FG/J/oc2aLIe6N8dLKei+PxcKYEmhl346NBEx7ZPFz6WjkzIQw+1DAoMB2HTBWZsHyEB4pz9eQuKVP0Y9O5HTEHNY9gy2SXsepFFtM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3565.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd232986-b8f8-4305-e34c-08d832c58fc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 07:12:17.3463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i28/xTN8lX72JdNhlT1gkn99pJt1jJ9st/TntYpgi1Dl90SdGS5i0bi9BgUIdh17JjxdfWlWGcjx1+uJ+2zFgjIhfRIiXk5sYS4nmgGOCFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3981
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: add support for PTP external
 synchronization clock
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
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Tuesday, July 28, 2020 1:14 AM
> To: intel-wired-lan@lists.osuosl.org; Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: add support for PTP external synchronization clock
>
> On Fri, 2020-07-24 at 17:59 +0200, Piotr Kwapulinski wrote:
> > Add support for external synchronization clock via GPIOs.
> > 1PPS signals are handled via the dedicated 3 GPIOs: SDP3_2,
> > SDP3_3 and GPIO_4.
> > Previously it was not possible to use the external PTP synchronization
> > clock.
> >
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > ---
>
> This still doesn't apply. I was able to hand merge the patch but ended up with a bunch errors when building. I'm guessing whatever this was prepared against didn't have this patch:
>
>
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/drivers/net/ethernet/intel/i40e?id=3c98f9ee6bc280499cbcb6f8e42c001c3bd7caa1
>
> Please use dev-queue that I pointed you to in the other reponse.

Thank you. I'm aware of it. It is exactly this patch that matters. I'm rebasing it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
