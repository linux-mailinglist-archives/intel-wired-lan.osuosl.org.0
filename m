Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E1322D284
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8A6B8836C;
	Fri, 24 Jul 2020 23:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TsgqOY8NwTeO; Fri, 24 Jul 2020 23:56:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7AE28850E;
	Fri, 24 Jul 2020 23:56:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 937C81BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E24088391
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7yfq9-grGkKc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:56:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3C7C98836C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:26 +0000 (UTC)
IronPort-SDR: /HR04AFQn3ZfLXeGCpk/EQmeoOdWP5cnSASlH7yvhjZTmULlIK3WIsbsX7mbxS2W+vQoaw0RmC
 QrwzhjpeJE3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="138853160"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="138853160"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:56:25 -0700
IronPort-SDR: w+b4v/a5LWz4ReHCmIkXT1zGkNSE+C79Utypaha5SYiUPgfaWfMt/qvfdrQXYb6vP39NxipY+5
 8KrXL3SXz8sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="327460002"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2020 16:56:24 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:56:24 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:56:24 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.54) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:56:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxmUR5tqFLuzdP1M5sbbiIpLW/7eCMwZqZcZPwRvXzdudZiKvuBfHJy6TGARE16/lM+2IVBjM4bXf9L9tiQZ1ljqtpEI9TrWDs1c+Ge77PJTswPIhAOrr6y4is8mjoQivnCKecZp0CarFMYndnyOXoy6+KNdwJLKyTrEK3FX/jtEvddq+wF+KWbxVW79kualD9f+fl1EzjnLmOi0Xt05ShrAyBcV0r+0unbid78d0w7LkIvBBe1LjpNQBOFCrYFJuoZOUGKCirTSTklT/at0WMYv1VBwkxbIacXZIO+45o8vd1gmhwKXhXyWoXqJ2zx6+cHcAlfRsIGOA9gdm/8PBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJfRzKKQYtWQbpxrAUqNuex7zud6D3NnexLj7a9WavQ=;
 b=KkXZ0tvgCcOCbxg4vlvtNZ/oqvG5OLtqWygGZ7ehA0behyvYGHQ0HNXdm+zQqk5uTb9w5gFhRQ4jMxzVgdZnSF2A3mkueDwReNIFTJ+KdKeMzY6eBVlWnE6cjKpDYOtkyGdOtnCBUvr25X1/8l2O9rDkGo7NJp1nhfp54oEB57zUEEnRTxyj2kUULAfyxPu6rCUeL5j2veasp/DspoTc9ay9qFcST1NIN9p7FUKUBhNkfuStlDqrtBiYrW3zSS04OLMc6wjW9D9iX12becVJ14WkABVQqq3pOk5a/cuL0IiZtACb/MmZnwyGUzEIVldLSMzSUC5HLqcB3hIX6EMOsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJfRzKKQYtWQbpxrAUqNuex7zud6D3NnexLj7a9WavQ=;
 b=M5j6OJoiUbYqhmLOdeINQJpt9sZKoXCBw6fGkRE7z+ANdVTsRZsiJbV0cmqL0QWaA9G/MbAfIROPT5/dPXF5N+e17xbqNm63iB9r1p16bMFUFwuGPxEo7A3ixnPL+x8a9Alu/xSGkMLkSHvoN7df1hF2KgeSFT+G9WlX8soUmEQ=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:56:23 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:56:23 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 15/16] ice: Add more FDIR filter
 type for AVF
Thread-Index: AQHWW3YXSyA8x+EqJ0e6I1wSlg/fPqkXdQrQ
Date: Fri, 24 Jul 2020 23:56:23 +0000
Message-ID: <BN6PR1101MB21456B232F0BCE1CDA854D288C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-16-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-16-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 0f6c1097-03d1-4acc-e654-08d8302d2b57
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842B7BFF58AB645C796135E8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rDyqKEaiR9XKCbVTLsXkTDE04ZnzWgXJC8zzUAr4yQtI9e2Mt81JpSb9NIohQ9Trx60pwtpBpubVJL2KwjZ7b1cdFNvhxOnEJxWaXxRuwaiHgpHVL80NK7VSm2Ipdkeuj4h079gIFaRii4IQpj2w7Sei2YmlBFHlMSuL+moI0L+OS101yF9ycK3Y2qSfigJAqkQCBHPeIKG87pxCL3lvPmaE9xOFSXe0bImXho0569hIjMpPru/2e5z/7mQ6ziGV4YY3RFHR7MGwF93r01oewIGHF52t9+uX9sQGJAbHbPd54O7faDaxoF9mjYctDai6spiBigPAsO26qy6PtQKjXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: c+orFktQ1yz0Xk8x1yM4pV2+27Dghj5APgMZhOVrfcRPBPvQSXwsi+BIYWiGoetB/g4qT8L//DbJH1aI1obEn9XZxlrx3tDDu1V5gXjLw0612+IEhZtKtMzHcpW+Ps0FzWOUq6haIcx614cn/zSnl7AqGbQR+AiMsmLqif7oGeWaF/c1tPGW8B6NPrHymIdKO7N4pl9ULTXmwwIu7QkS6IuEMlOkBnN1QRWQyl+9bjl+FbnEMP5V6e121lm6nZXjNuvxgsDiw7+NAVoy1x6Ih5t/sVcBzcfZ09NLZa+WBWvMWoAGvNNxVzfYqGG4YRZ69v3dpz3QzBzMsu/cWoj27q/7CAogMHWDTN2zsGRmIlJyXtgS3rIngDWeD8C6RKpAjtj9QRXTgj2cXmaNNve0WDg8SfKc+4qmKftySW5eCAfZlCWQPXIrGedZ30BydlLp2VUSBcLPCYUdPjbaRp4FDkoBV8ghnjSIhl3eIOuQWkae4l1lNdGwGs2hXGounkIr
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f6c1097-03d1-4acc-e654-08d8302d2b57
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:56:23.1057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QPcz1zb98aQ6o5kLGbn6H3GeK2xFWVjuGIG04eTNctjDpzdwgY13X3OKyFv67HjNnSV8Ir8go4oEfwpTieaChoQCqs6SFPJxNpnTStXnj5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 15/16] ice: Add more FDIR
 filter type for AVF
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
> Subject: [Intel-wired-lan] [PATCH S48 v6 15/16] ice: Add more FDIR filter type
> for AVF
> 
> FDIR for AVF can forward
> - L2TPV3 packets by matching session id.
> - IPSEC ESP packets by matching security parameter index.
> - IPSEC AH packets by matching security parameter index.
> - NAT_T ESP packets by matching security parameter index.
> - Any PFCP session packets(s field is 1).
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          | 255 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |  15 ++
>  drivers/net/ethernet/intel/ice/ice_type.h          |  13 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 280
> +++++++++++++++++++--
>  4 files changed, 545 insertions(+), 18 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
