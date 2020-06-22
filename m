Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D43320413A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 22:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7E7D88814;
	Mon, 22 Jun 2020 20:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NDa2P-YCVt7E; Mon, 22 Jun 2020 20:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 329188883F;
	Mon, 22 Jun 2020 20:11:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 536391BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4CA6D887CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M41ze7Wprz5S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 20:11:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7CA74887C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:11:37 +0000 (UTC)
IronPort-SDR: SGRztno6oYL0B3kaxprSajlnxx9cjBWiDVAd0DgojmrLfCk/hm3RXPgO7UdxtEnVPsMMgo2v2w
 HwjSP6cVw1bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="123527985"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="123527985"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 13:11:36 -0700
IronPort-SDR: VzxjXxULgHsxnNxgrp5U022fsSCKs4kTIbKODu5+mTbV6/2JJ/sz9ZzPODgeKf6W8Seg8ilYNv
 v0Teb+SCG6Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="300960278"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga004.fm.intel.com with ESMTP; 22 Jun 2020 13:11:35 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:11:35 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX157.amr.corp.intel.com (10.22.240.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:11:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:11:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+a5xicVlUFr6WAb+M218Ai6hnLJMzRZuNcrFQmYD4x40hqQzCIlxjlYptp2dySSTkquK88Anc4vAVQXCEPbhEHU06IT0XyqfxLv+pYteHyxhCN5kJYAvge8zD5wYCd3F+hPQYL2om4ndD7suu/8W3Qzm/yZdz7kosu+GlxtBbOryGnvxJMxQboksZudRdsMSkOoAKXzRZQaeKavBo+125gvA+88g9c7r2yDmSIV80nkBZIcbVq+dLhokbfGqSuRCDZwkfY212Lwhas2o+oHrsQNIP+LGbjCQ6tnNygcYUbeSIKMeO9xlpOTx5pOEIDN6YkbkEzwBP74AU/wDwJpQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RPnJpEnE6p5Faa+JxESxpN2DrarryQYpmzQtk9u1D4I=;
 b=jh/qd9QkoyYJ8+4WZFxM2JxvQPBezMd5XqH7CBrFsjRlwTsaQdKec+tWtz3DVWu01YruhtrWF7p0UcWhTc9zBtWP1HDlsoePhgwGHrGWJXXrWVhfVFTOi9eIwZwAEinGOVk+g8Ue2zdi6YpjNexpSbZG2To7cS7tqcNdVieotwGh+F4i3bIxLClTNFq8w8F87O3EBgbjhrM7s34d5z0Zn0hK4gKQQwfFY8+xFddlcVZSgrWIYOZ8VhrY7QwtcTM4VgA4aFw+zLymAdEHsGPukQqkpkHxZEgzwA/dHSEXzwW2siN/g7Ck1rmYjr67tSA8U74aLw1djXY8wz2Ofb46iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RPnJpEnE6p5Faa+JxESxpN2DrarryQYpmzQtk9u1D4I=;
 b=Fu/sW0rmGVD8eBS/3aJrLH6HbTsHJw6CR2Gbyp+bnJHfEbh5lVdqS9OOyWOjyxtNpPlQXKAsxIN+JFz4Ut0SpWffvmKYd/SPItLEvL7RUv9kJ3SGD1BkcUO5QU5qOleIouNWO2ZtrJOn3xmDI5MgqLfnzJ+uE1Tn03utS5qUKGM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1938.namprd11.prod.outlook.com
 (2603:10b6:404:105::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Mon, 22 Jun
 2020 20:11:33 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 20:11:33 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 2/5] ice: add DCF cap negotiation
 and state machine
Thread-Index: AQHWRl3tFMIJYa2xmEqJDW7NO2m+CKjlFdWw
Date: Mon, 22 Jun 2020 20:11:33 +0000
Message-ID: <BN6PR1101MB214555D1AFBC0C87A3DEBCA58C970@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200619171022.9539-1-haiyue.wang@intel.com>
 <20200619171022.9539-3-haiyue.wang@intel.com>
In-Reply-To: <20200619171022.9539-3-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 001b9225-c440-4aa5-8d44-08d816e875d0
x-ms-traffictypediagnostic: BN6PR11MB1938:
x-microsoft-antispam-prvs: <BN6PR11MB193841374310A224F2E02E3C8C970@BN6PR11MB1938.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hDebH2akrX3OCbt2MF26S9kxU39vPiSd7bQ7Xkg04/d0laimfAbtkqdPesoSQMdTfXAwjdf+e11QZRt4zPYcKXTlP040fXATCLCXX4DPCMZzmgOVmXeiFmfoFxZa5K0qtY28OtdhISqAnGdTbKAiBZnSluz1XoCGSooYNNEfRNH+DxvKfz2TtNTEIFVrDulcs4ejeWtr3Sfy24jMWhPWt1Syr0UCLLQkqsn74y7LvgojMbv2LEt5AInrD6ZTjExAZKYeqElmV6DezY+K0pHgxqg28gKx+l5ziEQU/saJ5qezMpdua1oXLIIvG26Slrt609MiL5lPSkhG1GgxHHlxbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39860400002)(366004)(83380400001)(26005)(8676002)(7696005)(53546011)(316002)(55016002)(2906002)(186003)(9686003)(52536014)(478600001)(5660300002)(71200400001)(66946007)(6506007)(76116006)(66556008)(64756008)(8936002)(33656002)(6916009)(86362001)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Ga9ZyQdUHeCJSZDoZi91mgZdFMB/hPDKnk2JQc/BzyN2GSQlM5Yjf5CZueFBXjYhasLyt+zesSkEtwtGS86rGOF/SfSa+6sCGC3kX41fnoAhpywnkuu8WZlkJHLkHOHYtO1JSOFMEhXLAvCEO7tSYF5aHLyM8/smbnq967dwPD9ygO3OA10TXPSeYJPdemE7cRqjc/EeUfbhfZ1xIKSqI9rMMXo1Ro6lmajLbqkSFx5JBb7iyR2FtuelIRxOvzopNWnBgZ+xVs/8Pc8cViNpb+gRu5XeHCGZqiJeTADLWPGom9nydrkHcBFOUg7rdIWgkR0aUNS0fJY3I9Omnk6gg2PjvHMd6noeHtDfnjzLlGW+EQoROJ2Fngo/XE8f48xsY5D/P/gQfJDXQev25E7AbCyQUJlpap9NkP6k1f49zqEcmT2LH2rUHVTiOWtir64D4461FERMkfyL6WTGIQn2eKRNyKzfUVa15F01hDxY9JM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 001b9225-c440-4aa5-8d44-08d816e875d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 20:11:33.5841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aO6LYY7p5fcBpU+6tlevt5UI6iPLLOqe1cJDU9dP1AlL6k6OmDpLgRVTgnM5xoXtFIy0MZxD+vB+0lKZPopctiQ8v0VtnYhGXL/AZ53JmXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1938
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 2/5] ice: add DCF cap negotiation
 and state machine
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
> Haiyue Wang
> Sent: Friday, June 19, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Li, Xiaoyun <xiaoyun.li@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 2/5] ice: add DCF cap negotiation and
> state machine
> 
> The trust VF0 needs to negotiate the DCF capability firstly. Then the PF driver
> may allow this VF to enter into DCF "ON" state if various checks are passed.
> In DCF "ON" state, the VF0 can send the AdminQ command to do advanced
> switch rules creation for other VFs.
> 
> If one of the VFs resets, its hardware VSI number may be changed, so the
> VF0 will enter into the DCF "BUSY" state immediately to avoid adding the
> wrong rule. After the reset is done, the DCF state is changed to "PAUSE"
> mode, and a DCF_VSI_MAP_UPDATE event will be sent to the VF0. This
> event notifies the VF0 to restart negotiating the DCF capability again.
> 
> Also the VF0 can exits the DCF service gracefully by issuing the virtual channel
> command OP_DCF_DISABLE.
> 
> The system administrator can disable the DCF service by changing the trust
> mode to untrusted.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 86 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      | 30 +++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 85 +++++++++++++++++-
>  include/linux/avf/virtchnl.h                  |  9 ++
>  4 files changed, 209 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
