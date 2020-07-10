Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DBD21BF3F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:31:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA48D89E2F;
	Fri, 10 Jul 2020 21:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-fo+37H2WYa; Fri, 10 Jul 2020 21:30:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57DAA89E89;
	Fri, 10 Jul 2020 21:30:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4D221BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5EBC8965D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ypa2I9yItTFi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:30:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11A29895E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:35 +0000 (UTC)
IronPort-SDR: o74tYfJhVQKtsjzppIoPhIDdQ/ZZGgEs1e6BEWrwJzkTYO+5ppMJ3xeKIUrJbyQAeWol5+Y7Xo
 NEB+H2D2DAfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="209830476"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="209830476"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:30:34 -0700
IronPort-SDR: bgwqoatkab0kWNXl/SRyPLPPx4Pr/syXSlepmibRPJQjxL84KOFv5cOzQj6a0aZO2T0Pz3RrHy
 gud1jZjYXoqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="306677839"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2020 14:30:34 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:30:34 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:30:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:30:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JlpjjiMiXMhuwonzsbY/nKx2zXDJaccOC0rc7ONlhb0U7jPyLaKUahw5R1XZPAiWnTuJtc5eRhiYCM5d2glPDfPASxQTk1kYQlSCjN0bKJyLCk5uYP9b7B7EiY6xFC1Z2akLBRHwEojEui0uvPNUHtY8XOAo376jiI2Af1JAx/kZ94Y3d2Btddr8UDWE7Zfq5hzxwOnFG52Tr0mrYHnppYwFoJoOJu0PIjVtVbWSaDMGfqSVnHCQPbj7Q2l2wwq9+O/GSIqOA9xjt+Nx9jExKEvcYnh52TntNtVyIckPPy4IEXoGB84TERWKYCy7SbhNW8qcah+7eah9WOzJda1L3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0a5XIH9ZEUozIrDtvJKQ7ryGLCAy07+s2vdNeyZaEr4=;
 b=OHYgQDoUJdAFrYua3W8z5wPVLhITR9EeP1mbfS5x+v0Ghg2mROd+tJVZZIpzOpyAYXeujyHlkORjYjB1KMPC7Y+VHG84ki80501YKbE5/tn0i/wy169ezC+36UWytIaNIQkRGIusbyKragfkhd4W9ANxrRi++MHZ7iz0T0NzFr7rRdL4fuGn5gDsTRy363v/QLD5GLlQtPsqHZNz4BANmT8MIGp/RhllaJvviv8Oxe7tZIeyuBHD3Bh0bl1pHfzqz4UgNXTQxguMxy7lzWIafHfVmrEiuycE9VT9v+5ucNfWtTFLZ7NCZ2p5jsIWx/pzhoQ9cU0w+cxgPgtX8cNcAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0a5XIH9ZEUozIrDtvJKQ7ryGLCAy07+s2vdNeyZaEr4=;
 b=KzuA0a1uktyw2bF7B0BGDCt9Qg27t2D9RhZ0g4OCLJLZu5YqFJ7BBXyyAVasoBzYNi2D9wgGpUuzC0thbmDvo9vQo7PgpWuXB0ACjG0vBZlaf98T3sNhfz9/e28oc1u8cuk8XbC5jo/+SJNDjOCallPjNqZMmMcsXQP4kPcKu80=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:30:32 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:30:32 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 01/16] ice: Enable flexible
 descriptor RXDID querying and configuration
Thread-Index: AQHWVlXjDy1Z6aFWgUqdd2wDBXrb+6kBVe+g
Date: Fri, 10 Jul 2020 21:30:31 +0000
Message-ID: <BN6PR1101MB2145F5DBE0A1569999767AAF8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-2-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-2-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 9c699573-9e6f-4cc0-0899-08d82518798a
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB3604DB97137C2E62DC0B9B2C8C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xHMtDI9Bql0KC7L1sKAXCGiIxVs3yEFEgIgdv47AMDtbUc5jb8T/3sSyeSIkdls/7ONtb5/C/6hD+bvo2JJqm4BGSOKPnmGji1Pixsyk8w6zBhz2nksbIaTqlV71dhwySS9BdwTgs3oqXU+LKjM8NJJFOf6ICkGdobh1FKJbGpmi+00UoKg16+j4Huouxuf6ij3uekwzEUpxcV0ETSlrb7cOPc3NnIQpoZjYkBRRwj0AiO1kEOZjrGs8ECWBBETJcbdL58rS8nDEjCLlFlcFsxFMNiI5lKHgMM76dV7AsdNm4NSTx8jRa4EtGz79Be23
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(4744005)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: E8+w9AcuWlWKdQTmfFBJLcMuKtKcKfKMCrpStrOjdSsxTuBjKjUWZlKV2caf7M70ErwDiPqbTxEGoW0/YrUPaUHliKs89n8rzCZ4VZ0W6hVkQE59YZHFGorQAlT+tuqybTmRGi1rZBmGQtssxWu0V4eHblHtdCOgz19Veu1I+A2res9k7a6IxwyYW2bnVyNCp2uUk0dqPecjbYmCZomXwIvWRlA0v1oUF+qJazdBmr1d2ECGUEoDW5y6EbznXEA7ArhSnPWpsMAe+DZYayjxmXQ9PIe1K20tx5oD/QmY7vdS5LCEuDN668+Lma+T9nVFPJxrQJETXps3DfPDDV7fXX648nCERmAVvsIk5wDr5THaBF2hCl2vd9a/2foAcqVVZftsrMK84wIhSDkyHGblfv1gnWbphR8mZbaqyDd1TQhS9jv0FDa5VYeQDjwCzvfPUvbtHKXVnnr5QyT4sfCYrdVxkmEfq4sC8BgBM8GIRMJ5xdZhhEtygq1dsiR6pNtF
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c699573-9e6f-4cc0-0899-08d82518798a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:30:31.9608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iENEAmH4HieG0fabrL+wHRPohCCC1MywWbXJ0j06XBrNGfXsvAk5gy1GuGRKfdHjX9E8ncQyFUNXc4a/aQxTh4vwXWwdaYqOKxY83OeqDew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 01/16] ice: Enable flexible
 descriptor RXDID querying and configuration
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
> Sent: Thursday, July 9, 2020 6:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 01/16] ice: Enable flexible descriptor
> RXDID querying and configuration
> 
> Add support to allow VF to query flexible descriptor RXDIDs supported by
> DDP package and configure Rx queues with selected RXDID for IAVF.
> 
> Signed-off-by: Xu Ting <ting.xu@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h             |   1 +
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h  |   3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 108
> ++++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h |   3 +
>  include/linux/avf/virtchnl.h                     |  15 +++-
>  5 files changed, 127 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
