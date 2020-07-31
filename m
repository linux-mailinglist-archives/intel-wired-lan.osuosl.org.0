Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD380234BD8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:59:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60696887FE;
	Fri, 31 Jul 2020 19:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ANtdXAxwTxi; Fri, 31 Jul 2020 19:59:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03F6A8880E;
	Fri, 31 Jul 2020 19:59:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 120B11BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E5D486BCF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzj8g7kSebWm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:59:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A89E86B77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:35 +0000 (UTC)
IronPort-SDR: Dew9uhXoJf8EH7aqNav3WIC1UZ68cQ6LlJZ1k81hWuIW/pxkKTbzAvYYtEPKw5XJEUUt0AT0jC
 bkcf06gyqreg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="131926620"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="131926620"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:59:34 -0700
IronPort-SDR: Xt7AXKO332215ROAtIvAJuCr8dwpnm2XAup5j+h0swwHIZsD39qLwm/URLk9KfHZucsWDHRLBb
 w8VtAlUxuetA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="465717314"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 31 Jul 2020 12:59:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:59:33 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:59:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 12:59:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OvGYFQ2XEla0LMjaFU3h2GMLuQE3iMB0EB7+E5z8QsrFsglUmlgTOrj7LQDU8hzz8B0tZ4REyGqt35oHzEEwJ9JCiS9y/jtnUFh6BuplVNCfK1X4U3kML5sK2ODrZQountRNzF6Di7PPPjF7c6rBl/J9I7hp4fIoh4irpGHXcugMiXFvN9OBAt2fSEST7WmByHe7PtVHxHOToQArBmUztOx2Ne3wGrN7UYqX5k3cmP7x7xL4L7kueQDGbsISevcWsBKtoSwMD+/nXcwqGhVSdFrxQadflJEJFN8j5/h1u08w5nXFd6j6ZPSB88AeRZuRGp+35tmb6oXkYq7Dvv32/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VB7XMwtDN88anVkq1xloz6k4Fweghz0HdnMmXfxxayE=;
 b=SzJfLcTBh8STnGJqzChuW1KeEAaBir2d/p+52MUETEyhtOA4oyYq50yn6l14j3iNtHizXuNpiLTsMKNDulML0ozJYZDkxHO45kK5oFMumB+/i4MmbtEK2BjMdxt1v/JA2mT8Kw5y7JITkoD67x1aXCz+DlSVeOBHqBmPeQWPDgaUPOPd8Nra0Tnj09AIxptg5yOp48n4rS3nNMRGnZ9FFUg4IKIZ9GlHDCJNMnfCQ24P6hztEbadqn+6b/3J6ZNmk5KRaW7LBbWgQQ40/xdPB5uKJeICBtFASmny1kk8FGBA4O6bAJUwXJXqP1L2SHqkFrdcB7K2SL4s5TF6tkjk9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VB7XMwtDN88anVkq1xloz6k4Fweghz0HdnMmXfxxayE=;
 b=r3UBU14vx3QVL0uYoPrrryXtX8970NWLrVqreX50SMPq1QiadO99y/mwJ5178xDRWUrmpj9saJcSxGdlS7QuV5QEIuaVCROUCJo4+DpBLw97KzR8qPeVjRpHCo9eVnRZj/mcRlpKY8KI8hVp69mRgivaLR4myW9bg7EpcvHWvKQ=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3763.namprd11.prod.outlook.com
 (2603:10b6:408:8e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Fri, 31 Jul
 2020 19:59:31 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:59:31 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 04/13] ice: remove page_reuse
 statistic
Thread-Index: AQHWZge+UN5kJ3NvgEeesDq+wOBpZakiHhXw
Date: Fri, 31 Jul 2020 19:59:31 +0000
Message-ID: <BN6PR1101MB2145BB5401A7E9715E8CD6988C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd9f4a25-f695-411c-9641-08d8358c3d94
x-ms-traffictypediagnostic: BN8PR11MB3763:
x-microsoft-antispam-prvs: <BN8PR11MB37639426D55D3CCAB874F3958C4E0@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jEUwENYXE3S+xqAxBdY62c5Fy01Zd7d+I0OKQU+8W5zI9uudTe5/0PUvZQd+s70RMYER0rg8P0FM5BN2aXp6vrjGs2VTjVk44GTLApHAaUtqjAOZBICAxjmSQbqwswfQkH2RChPb0BVKFnbwPkEr4sTQSuA/uoK5rfNZNdHsuOkslT5M78oasjCsx0lqCLzAN5H4yeo0BXIuhOykbnuNaSmOb+myKSwLQmKN0CVs25+YQazz/ZDTTcrlKpEFM2yBYOVdUXMc1nSNOtFCHYncd5NKOusIeveLRdvREmAbVFkYgK11kDcxf0TzTBQ458oB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(346002)(366004)(83380400001)(478600001)(33656002)(186003)(6916009)(6506007)(53546011)(4744005)(2906002)(8936002)(26005)(71200400001)(66946007)(86362001)(52536014)(316002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(8676002)(7696005)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: iR2mouoxX1YOWm5AK605pvpFS69bjBr62/QKdw1DLQJ31hpon3BPsf+RdY/bewVeCzWyxpioYFcauowcRtaIWrGZwk4rRbri6sY2oRnK1/VRS/PnqG9c+S7GPgI3z2KSAARAwY3BDWvEwkXKh8x17/KzXe4drAXohWosGIHExAWV9+4qY1aFkBf5tAijH1zFcUgatZC3qEtiCOgY7PJneP3cMt1rl3owwAs1IhnB8eT78KS+XPmZXWjxOD1RibPKpW5BjoRqLxKVYJgKG6ddYhqnOfGAXeUnmvAAC+k4/kRQfBRX+uZjH15DVmu78ZW7kPBdEBt2LFH9N9NkVzsd07ugXKSrr/T75gm6D2to8qnZzqqBL6vHY36KveqLxmhiqagISajMt8euhggIxu8LFmdHDvrXESM4z6cC2ie83bs1fChnxe1FbfVktB9Acr/3YAvlwuA731EnUToHab8Avi2apF7YccfB19Ck1WGeiKgQoVjJcYnJ/O7FyU4trUho
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd9f4a25-f695-411c-9641-08d8358c3d94
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:59:31.5627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V9jQAIYMDmMjtQ9suWrmB2YUGmS64uaLmsFEwpcRXfOqps+LoHSw7ejg2L3ogfDwftvzM8qoNdYxhADnXOurHY5+HwXD7XHod5NnBHiSQ5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 04/13] ice: remove page_reuse
 statistic
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 04/13] ice: remove page_reuse statistic
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The page reuse statistic wasn't even being displayed to the user, even
> though the driver counted it. Don't waste the struct space and hot-path
> cycles since the driver doesn't display it.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 2 --
> drivers/net/ethernet/intel/ice/ice_txrx.h | 1 -
>  2 files changed, 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
