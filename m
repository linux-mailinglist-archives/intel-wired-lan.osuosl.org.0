Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 608FB204141
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 22:12:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1602A87152;
	Mon, 22 Jun 2020 20:12:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Or6oH3yItJCy; Mon, 22 Jun 2020 20:12:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38979873AD;
	Mon, 22 Jun 2020 20:12:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E565C1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0B4A887CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:12:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UmKAAFsRh0Ns for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 20:12:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A82987ABB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:12:47 +0000 (UTC)
IronPort-SDR: 5k2bQh9Bzq9ssqH+zRsewOWINNefaMHJCZcgp0koDTkyjZ90VKCpbREdEW84lUFuUF06Iyvqd4
 PqSAM2Da4cHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="142119455"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="142119455"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 13:12:46 -0700
IronPort-SDR: QTYUrOKidu8Gw4Mrz0+wQhYaaLEeuGSDN3fiIKZjbOErTE1zp0W1iNMhYJWowV6yZWkc7KGVaE
 tL0CtuUB6Odg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="281887432"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 22 Jun 2020 13:12:46 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:12:46 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX126.amr.corp.intel.com (10.18.125.43) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:12:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 13:12:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZlASgYDSgs7/pROqV1cAslStTBlKfEssb+dU2t5XpZjX4JA8aSW/wY6u4GOkyjf520y0s4f/0QtdJnipWAjzuUfMLwlMcmU3fvMUcgW4G44vYeNMhA8U1teUOld2ynR0Lm9V7v011/ZQTbac5glSrZKW8DsoFUGr8noHVd8coK+iGMj8JRk6imydCMpTYceEORi+Mt1BOKUr9lDrKZDdcZLF2GdXMv/PotvB7LT7ezphvYkU+Twhc7LQ6DYhVlAmNJHj381JSz6+D4KMSV5dLvLwYrUjI6fOcL5g2GDYD3KOdLMyg/No+GT5/jd5FHhmhfhEKPQk+3aJ5/G+2mFwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2kD18LQzf/dlCn38dY+K7lTnD+nHJCIhkET+5graAw=;
 b=n+IZD3Pri6hyadxk3L6FzNDJgMa0ffvZUbx3z0nCsE6VDDVQbdba/PR8j9H2aMAlGEmmvE3rRg5GgnjysX1WMBqDUKHLwtoyOGiU2GMg3aTg1DjuJ/i0XVs+b9nY9oqu2Y2LXAN6mYZvdGqQt+u2VgDh9LmS3hM2YXLlOdtIce8ADJLmq6WiZIQsWik89dq3xgK1UwnQd+aTWQjJJnFK8ud5VPdlR6xnC3Wu+rTmvni2fAIaiQbkl0/Ppmn2NMreTqovoLeLxhBeXTLJAyFzNfwU+FbHhTFmqBubmkUBAVcwivdXjdbHqUucId/8RNDaZSGV0jnusNpzZKBiESDwAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2kD18LQzf/dlCn38dY+K7lTnD+nHJCIhkET+5graAw=;
 b=N2bn1wOrZ2t8B6GEbUxLJL8MWm5MgfPFxvUM0xYdIFX4XXOVHN+MrEOXyyYtRA8P1H7P/E31xv5sxEgDBXKL+ygFyibcyolXPHdAN2Aes3WWX09EXjyI29nOx6++Rvry2TT+cNpF39vgV4J9GD116y/R7ynlNOveW336nXu35Dg=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1267.namprd11.prod.outlook.com
 (2603:10b6:404:3d::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Mon, 22 Jun
 2020 20:12:44 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 20:12:44 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 4/5] ice: enable DDP package info
 querying
Thread-Index: AQHWRl3qVVNYXUv4t0a1Mj2Z9QPAzajlFhqw
Date: Mon, 22 Jun 2020 20:12:44 +0000
Message-ID: <BN6PR1101MB2145AD978937A56170E3573A8C970@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200619171022.9539-1-haiyue.wang@intel.com>
 <20200619171022.9539-5-haiyue.wang@intel.com>
In-Reply-To: <20200619171022.9539-5-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: 0e2764d4-2ab8-4a07-7143-08d816e8a01b
x-ms-traffictypediagnostic: BN6PR11MB1267:
x-microsoft-antispam-prvs: <BN6PR11MB12673ADADADC4B297E0BABD68C970@BN6PR11MB1267.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FRx7lkW6yd2OH/YD9J+FyT0a11HOdWnRmyjTxvyJlpnfw+s4Y8q60ngPOeKi41X0AP898wvNF0WLWDMZB5HsKq0grpM7c5h+YqBsWMu2iV016pv49bM0XnODLm6eBeKk/72xAoWDCwJbnskHf9uf2DGTOgu1aLNsm7BdtrHeqgKdUvTBtmVC6NXGeRxPFaHVq/NdaEDi8hzSBwsebfkp8ATaKpcWHwbH8G0cCgGTFYJaABpQW9xTPUJMBrYSIUXN8fVYaaTAVfxHuAd00ZdqzyShpaUVkWN4oiL91+8CVWuiepQ4C2a5dDIw7aHnL56X
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(66946007)(6506007)(76116006)(5660300002)(478600001)(71200400001)(6916009)(66446008)(66476007)(86362001)(33656002)(64756008)(66556008)(8936002)(8676002)(7696005)(53546011)(83380400001)(26005)(52536014)(316002)(55016002)(186003)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: b9aIgb8ZMImn9ibEQ+1ez5q2179ONyxoVXo2XUe7EOPtNSz10JvPVR3tuQOJFW0M0N3G/7sotoWxYxBLb1SwQu78HwrQWL5Y+1mWqjNn4mZDiUdJZib9ICFVYgVZzmX9AwQbyp4e2hQO+fWBy/3N1qFr30HI5Kc9cDJeJh0omLDFnJyF187leTZw9jiRA8W/GD6+dawAbFGRm/FEv+omDwNqiL6Nem1aAyq7k1nSIYAod9EwoErSuwuWUT8RcocYWyQ9WyXW9uEvRqP+8SUaOPfU/23tfrCF9URWJbl2+1xmnDo1HsfaZcHwQKAwIsV13NFgfpQ/mXoheyyTQrjfR00H/EXNCC2zmtyJOpqagpu/GcbMOlYZLx9dMO9k6HS9a634npN/NAAURW3vKuANpjqEKVnvQTRjOlUvYOpYN7S+7r5w0Goru7uniF6jYGub/SA/gaJhGRN/6kyZQS4wl6XlVHxVdIZfA0OQ9yRPw4c=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e2764d4-2ab8-4a07-7143-08d816e8a01b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 20:12:44.5242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KI+UcLLz8WdusYsglVy5uP6esm1iPZRQW01nqls4IwvFoc+i2mBz02zBIZFSXlH4KEApQUH8RG+xdkAJllRqgLSL2plSA4XRGYtcig+3I48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1267
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 4/5] ice: enable DDP package info
 querying
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
> Cc: Xu, Ting <ting.xu@intel.com>; Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 4/5] ice: enable DDP package info
> querying
> 
> Since the firmware doesn't support reading the DDP package data that PF is
> using. The DCF has to find the PF's DDP package file directly.
> 
> For searching the right DDP package that the PF uses, the DCF needs the DDP
> package characteristic information such as the PF's device serial number
> which is used to find the package loading path, and the exact DDP track ID,
> package name, version.
> 
> Only with the matched DDP package, the DCF can get the right metadata to
> create switch rules etc.
> 
> Signed-off-by: Leyi Rong <leyi.rong@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  6 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 52 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 23 ++++++++
>  4 files changed, 83 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
