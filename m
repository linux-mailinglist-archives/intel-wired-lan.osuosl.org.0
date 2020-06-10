Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 746831F5E4E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 00:25:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 359DA87581;
	Wed, 10 Jun 2020 22:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Btjy3HJ0UJCq; Wed, 10 Jun 2020 22:25:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F1A687582;
	Wed, 10 Jun 2020 22:25:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 793B91BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6279E204DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HBnQLgZE+SCF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 22:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 8758B203E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:25:50 +0000 (UTC)
IronPort-SDR: WpJFMiEJpxlDvDXtoXHM95f3mlLAxYfU7kSGMqnrD9cAuQovws/w6J+AIgWzxJsyADALf+5+wo
 7+d3h96T3a8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 15:25:50 -0700
IronPort-SDR: Fe7v3a4eMye+s0iu2KmTWZKMpIP2guSjM0ajT6U2LIh30IrXqAyzLtgGc0qr46m9eQFJG7SQXs
 0VrHJzMwxZYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="306765359"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2020 15:25:49 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 15:25:49 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.53) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 10 Jun 2020 15:25:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e2sxxo+JEcQN27Ev6jYIpXQfDCs+2dW8TBxeKlijHd/xUZrmrfPHbhz7GyEOEPbAdW37biyCeDJA1TjImmAa51I4JiDI03nUdgv5jpcmZvUEEiWU8slvLKQ9VE8kH1u451TbZbahY3nH74nzinocgAB4e1MYWUR+lTtC8lDLLpjMlOyZB7tvIm+fNi5zaW0sLhMUSOBwIHh6c+NJ9eawqfPnwU42ZYl4YEvZc8RycQGnPQtTwKug0kBwnFWfYiEzXzH8Ds9rPFzi5Vss4kf5/ZT69KcHb/rtygFt57nUCFx+w5BpxHHSA/5Yn7eOH/7vFuqORhDJYV3XnI7KrieIsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1l7d0/WReWdpN5ZLEK+dxHQnaJ5oIz5QuGpqXLB4wwc=;
 b=JLkOk5rxgqWRdJBH4FjgFWoDyE9DtYr7LITU9lDvRf+xYRvgMWSycVLSK0SSPP9dIPq0VjOglK5UqOgdqmsZFD0ACbdcV/l828LMM4dDK/eZekZcMNkA4zi0tSZZdWYhI9fHaMguIuWw58beZg/4SDqXkdRkidHvEidlOhyBnEoyFNVH2A1a0LqIkWr0+vAIVPpGU86Ucl4FkEJsrcojMvt9V3wIZ9wEhMC0UfsrTNRQozdGv1zz/Yu7SY3Qt8/S51OgfUD+wT5PBJqp93C6V6h2bYu6V0mrzuLrITgQs9u6g4Tk3eIIpr6Z+VM+aAepsunIHjlsTwD5Bm9/1cpU7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1l7d0/WReWdpN5ZLEK+dxHQnaJ5oIz5QuGpqXLB4wwc=;
 b=JM0BOPBfdGkgnLZZOPvkYvhSxxMk3nPsZldu6u2gnnpW3vYU8/KSd2vjjQhrJ3IFJd3tzmD9N3MCc8n7L+P99ZzPJ/TL6ZdB77eiLxZnTkoYWYINhnPHmF70SvtEUl/BxWYeNvCe/w3cQmrmoWozJzC4DqePlUWguy/Dt6yVuhk=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR1101MB2083.namprd11.prod.outlook.com
 (2603:10b6:405:58::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 22:25:48 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 22:25:48 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/4] iavf: fix speed reporting over
 virtchnl
Thread-Index: AQHWO1yDcUBdgnMYNEy8BJ4X9J0ZwajSdU/g
Date: Wed, 10 Jun 2020 22:25:47 +0000
Message-ID: <BN6PR1101MB21459BC2FD2B5E51006D15B98C830@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84c0175b-d8a9-465c-17a1-08d80d8d39a4
x-ms-traffictypediagnostic: BN6PR1101MB2083:
x-microsoft-antispam-prvs: <BN6PR1101MB20831872B49CCE08392DD1E78C830@BN6PR1101MB2083.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jxtig0hc4iHI/imITFcDAyPCGrFkjXAybwhBa+ZEPu7pMdH0I2iMcEPIvUJ85B4UgVbbueNHitR8BfQvY3CCd/xQf1MhQVndK5wMAwzMH6zX45nkiRoznp06Vfico5vHEBAGDq/fgUIq3rX9PVMb7ht72QzbLYVJlopFrJKxjbnkrhqaDdUU1WeoVbHPMMY77epADRX2W5WsQ4/o4HL7C6++GyaCYDSPYAVBlA3a+ntwBCmxIq4KRWPnCmVddmXFLQLChjNSj4Lzswpgw2XeOh7JrYOlAthw9UPzvn3mAu88YBx1eeyyUb779OkQzvDwQJ6156QTGFrebtzZ7ANn41DMYg057uPnlxrX0JNEnD3bWw+dJvYUB+1u5d753Aj8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(39860400002)(346002)(376002)(64756008)(9686003)(76116006)(7696005)(66476007)(26005)(8676002)(6506007)(316002)(6916009)(83380400001)(55016002)(66946007)(53546011)(33656002)(66556008)(66446008)(5660300002)(186003)(52536014)(2906002)(478600001)(71200400001)(8936002)(86362001)(156123004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: i3X4srC1MM6H5beCeir1FL9HGlbe7+IBWmmvRePmL2q+106qe4ZXG/SNH6nt8rbo7QZfFIBS6ofWjVm2aZJLN3r+wauJ0gIZESlgPsxQnpzk/ViNQkBKM75z+4syxD9CULJvLcenk3Bmr1ydVGzrue97WAOcgMOWldZptWribpbFVOWQ8eFwlIDjswjuAPLKXw9JpaLpfoBfw/r11XxzoWPkcteiq2BfYSIzfFTzT7EgkZLtYzq+PViuWwJfBPItB2kaC4yIci12QFyJ13odcbayW4VHmOyAnwv4PDqau23EN5UwwHsL8fodfUxYeX5M44f5AofgCm7GmTzphTlZBTZudd3Vw7xU/TZ/wyiwK2/7qmwPkLAJvoZES2eq4RQDrhMe03F7EhIlh8lr8bDNh8ACvBASD/Q2xlJ3xJWhSYhWkwn65bmQDmEzY9fcIkFPtFU90/IC6uj8b9WBjIby13vPUDkTYVpkbEURb+XyERNnp7mOE+0k90HXygY9nGWU
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 84c0175b-d8a9-465c-17a1-08d80d8d39a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 22:25:48.0070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QXxb8k4p8FtFkLDr7UEAYb46hmVo4zm7ucdxy5qqZ8VnPsx6nyMJZt4oFUI8H53nrh1edHlgGdzNTG4YSB8hwmFmFehEbB2+Lo5sgM5CxqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/4] iavf: fix speed reporting over
 virtchnl
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
> Sent: Friday, June 5, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/4] iavf: fix speed reporting over virtchnl
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Link speeds are communicated over virtchnl using an enum
> virtchnl_link_speed. Currently, the highest link speed is 40Gbps which leaves
> us unable to reflect some speeds that an ice VF is capable of.
> This causes link speed to be misreported on the iavf driver.
> 
> Allow for communicating link speeds using Mbps so that the proper speed
> can be reported for an ice VF. Moving away from the enum allows us to
> communicate future speed changes without requiring a new enum to be
> added.
> 
> In order to support communicating link speeds over virtchnl in Mbps the
> following functionality was added:
>     - Added u32 link_speed_mbps in the iavf_adapter structure.
>     - Added the macro ADV_LINK_SUPPORT(_a) to determine if the VF
>       driver supports communicating link speeds in Mbps.
>     - Added the function iavf_get_vpe_link_status() to fill the
>       correct link_status in the event_data union based on the
>       ADV_LINK_SUPPORT(_a) macro.
>     - Added the function iavf_set_adapter_link_speed_from_vpe()
>       to determine whether or not to fill the u32 link_speed_mbps or
>       enum virtchnl_link_speed link_speed field in the iavf_adapter
>       structure based on the ADV_LINK_SUPPORT(_a) macro.
>     - Do not free vf_res in iavf_init_get_resources() as vf_res will be
>       accessed in iavf_get_link_ksettings(); memset to 0 instead. This
>       memory is subsequently freed in iavf_remove().
> 
> Fixes: 7c710869d64e ("ice: Add handlers for VF netdevice operations")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Sergey Nemov <sergey.nemov@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 14 +++
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 14 ++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 25 ++++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 88 ++++++++++++++++---
>  4 files changed, 120 insertions(+), 21 deletions(-)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
