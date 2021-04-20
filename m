Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCE83660DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Apr 2021 22:26:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FB0140490;
	Tue, 20 Apr 2021 20:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voY21Rk1cFpj; Tue, 20 Apr 2021 20:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3C874048B;
	Tue, 20 Apr 2021 20:26:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4541E1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 20:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3202E6075E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 20:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfuCXxH5jdC3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Apr 2021 20:25:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8083606FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 20:25:57 +0000 (UTC)
IronPort-SDR: 3ndFyua21UbJF8VLYRcCwCu64OVLUlAl3O0IUVwn75N98g6uyrn2NmWPE2km2K3yyvn+Alhg7a
 qt1WMgQ0C0Ug==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="280915296"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="280915296"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 13:25:57 -0700
IronPort-SDR: dQCflzVNw38o8I4aM26Bf7I0bVQvYEmAjQ7wGRqI73oEwXv7gBXRIcY0EQhIv5lPuVl2VSSeEH
 F+X56wpUH8Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="534644475"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2021 13:25:56 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 13:25:56 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 13:25:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 20 Apr 2021 13:25:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 20 Apr 2021 13:25:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwiMn7ooWY1WVfW1ls3nlMMFKu35iv8vvuO75HOwAkOM5dVWsRbQhaOJfc02mKbIK983fdz7UQTJscWB7zs+CzZTbnJLnjZK1miohPZGkPYTwb87Yo64RK6DgDgXmYQjUZivx2CSEDEr7Pv48x5KeusVGJu/uXKygQIb+P3u1a1yh6G3vevAoZ1O2LA+gAEM5Im1bzHxCdguCqmOVxqKcnnd9ZPK4VfHPhJiAzTZn7tA0DXdjZrJ68rjaCsmtmp2o2VxlWzfm/K+TwN9BMjoK+/SHrXvbwa2Er/IOrF6E6XfCA5JrSZmJrxbUIyfTfqiBTjc//bgHLf3co0y4eDL2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=angzp7UkIWi1aFEFOU5cxyvD0Lbgwq/s9LkZIJMChts=;
 b=d/4pDPmeoGWK1yzFKc7IxoIJZcjw7Kf2zmNhTC33HIoZzq2oNAEZw26dXEpfIPkS+2UF1cfRic8jrZGYakSY2iYBcv2gX9HZ6Emjcab0lycbkw8JwZ4wKG2R+k2a8OuW9rAaEHjUrQyVcR59fgPiQ1SeR+Nkldvi+VQhlpWHdlFulkvLTAsJEQ3CpkTLg9I2bpriWpvagoEfioeKWbEakG/j2Whs90nBS2DPnQT103sssvu9pPZjZJKUuGBaQK1AEI3M+TtMPxRa2jXYxMt12ri5mHfse/IfHOenbuUAQJ9ItBoYm5tQONFrKEbmlh1LfFc0tXosEpbEFwlmXu8uyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=angzp7UkIWi1aFEFOU5cxyvD0Lbgwq/s9LkZIJMChts=;
 b=ddoUhfR/oMV5xbHz5njMrYHCwyfoMQGNh6W6B7ho2t7WzZw1xhzmTL2D7AJ+aMgjs3Hxiv3SCOiTz1GupQV+4UOMsZ2/ijKRaBa1s+qRgvRVMFz8v6dxBUdEEMDOesl823qk5IW0w2O8SGWBfVbrCUWdsK0KTwI3vj8LsjWIDJo=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1597.namprd11.prod.outlook.com (2603:10b6:301:d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Tue, 20 Apr
 2021 20:25:53 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::749d:6978:4763:e1f5]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::749d:6978:4763:e1f5%6]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 20:25:53 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: Salil Mehta <salil.mehta@huawei.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
Thread-Index: AQHXMLbZhe3DHmxSoEKbBi7ITfg1Jaq95SmA
Date: Tue, 20 Apr 2021 20:25:53 +0000
Message-ID: <CO1PR11MB51058003106492F6552DB98FFA489@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210413224446.16612-1-salil.mehta@huawei.com>
In-Reply-To: <20210413224446.16612-1-salil.mehta@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02b96374-41ce-4bfd-cda0-08d9043a7f0b
x-ms-traffictypediagnostic: MWHPR11MB1597:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1597135CB05A98946D42A6F5FA489@MWHPR11MB1597.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3GdDicGRM7MVHQLuJ1DWV6Dp6h1sGE3tSAr9OlIMZL8AZkFi0HsAZdkpbHcMW/BmHDQjUcLORDyV1WWvyDSM8B/3NmTK8N2rIGglE/8VAMvXv6+rxwHzcqDCIFkgqbweH7hCTrggKrjmcCZYA+jodQlq4AMs7JfWtsGKKW2XGOgccxQd2BnZaV7FVPAsJXcSvHyur0nPyEg2N/8UnHSFjC8wxGSefKrahS3iIkEPwGsjXyEQyFsNs1IZUBzQDZ9lmbojtP/gKHlOXtdz6/PDf2NgTbmjw3qIr8ZBVDny0TMijWpOT8HquChwC2mPciZAvwMNk+x5P8JGJOhB8cRa/9SruAcGDs7dIkE+7Fj8HknxT4HBNwTntpkaDQRtdKxn7BN/Auqd2FXBx47bVMaRJ4/Gd1Mzr5oQMYK2EgTYV2XWSp4pQ/LAoCbjS/wDEElg9yfnrrPlA/rgPUdiwZWgs8cCCt6oyWusa6R/2EH+ckPLhwFdiNb6llNDHreFEJMCNHmPAhQKWRNlJ7ewxXXrmcXJpbeA0NX4myiBmvY2Ylco/KcL1Iv4vCnrTkQlDUFH5WrTr8O5QIaU5RI1SWHoRWIGT8iaenMdCAOG+friQ9QF/IJps3XVWlALNlqhf2xwNwtTVkohjq0eBNl4Lffouf4/ty00zPNiOCzxod6mIBD/EmbR/P6ESYHMjHAilnX6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(366004)(376002)(39860400002)(136003)(5660300002)(33656002)(8676002)(52536014)(9686003)(86362001)(66946007)(76116006)(66476007)(26005)(8936002)(966005)(54906003)(64756008)(122000001)(186003)(2906002)(66446008)(83380400001)(66556008)(38100700002)(71200400001)(55016002)(4326008)(316002)(6506007)(110136005)(53546011)(478600001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?se54Bhmqqhx8Hdys3LJM9KlBUbLBpLB9v6W0sCQhxFJ7v1J9kExZiGQkYSD/?=
 =?us-ascii?Q?9QUL0NGf9huyyvVVtbympPdoYlMtOFmHQfaaxer3kcEBPDGc7aKsIg3yXBFc?=
 =?us-ascii?Q?frAui1fc6C8DmRYkqSQpZWPNocpeFap7tIZl539/A3eT7tbpcuKaV9o4XwfZ?=
 =?us-ascii?Q?pKjmbMs7rKjBLCuzX3u+ipKLU+Fr3x07ABR+XDZ34jYiFYJQXcevAcjhpc2i?=
 =?us-ascii?Q?vsRi4XVCcanolPIuFJo9ONtONd/X/0KAqzQ97u2+VZYsp/N0/uVJmeqCfLrI?=
 =?us-ascii?Q?NYC/QNJcktFqdCRASho+pgC/lTfERz6Gy16eqjByoYgfzqfmkHKYPpxEciam?=
 =?us-ascii?Q?nWIBfkWdO0jijArz7A6yALFqmaNt0mVd4CbDcpECaDlrmuUZbIm1tQtjSPAm?=
 =?us-ascii?Q?ZxDJUgvu4gFrOpk2Mq6KwmdqWgbFOsQGk0TtN2kdiTUENYisnlBwaEqUCLiD?=
 =?us-ascii?Q?vJ/Mid8gQHbt01MekFUcjgcXsizG9iCVTwaR4yOS6iEHRYuFfCHYTGZRJ+YI?=
 =?us-ascii?Q?h1KpSiH3IzMRx1ZIFvhyVu8VzAL41hqlTGO71H5hUHiRGgjbd88xKftn42pv?=
 =?us-ascii?Q?sMUATo/C5XLT/F0IPlv+Dk+nH4j99B8mHATF2mLs1U+gmuSXfnwhiKiZEBm4?=
 =?us-ascii?Q?aoVMmOyCNOT08wJRPCi5IccRZOwXoo5aU6M9TyKGYgocc3uFfIuWXsqR3kpl?=
 =?us-ascii?Q?y0jFBY6/nIxyqr+1+M53py1RVSjsaM+6TYGjkdCCE8pM9EYo7bSvLYcd2w2R?=
 =?us-ascii?Q?G7IyJwCMdehoztTIkUeobr0LBBJ53hLmEwE8eIyifqxTkzvK11wb9JgcOjZI?=
 =?us-ascii?Q?Dwvg0oeXl98VWNBI6Xqb50JHIVH0XcazY2ja4SrD6b2FN/8IFAuxaPIPJ7Rp?=
 =?us-ascii?Q?fYh4iMPtBhUY5kmx7/5bmGOAyWzvYTT0o2nKo9aAz7RsuIWZqJnprd4iSegY?=
 =?us-ascii?Q?CQykg+ynpQY0mBGBZXiHURt7hFXHGKsxDEj1LtzhFsz9ITQ6DBvFsNw0dWpc?=
 =?us-ascii?Q?dZg9U+frzhSfCBxHOlpvlZ1mLp8TQcfM/OFfPVbvRCmpRVCX8QeUlL43vgfi?=
 =?us-ascii?Q?ZrWzfGhkmS5hXnqLdV+o32rWBTMDTUuwL3CpXqj8NJfGB/mYZ32/AhQKKq3B?=
 =?us-ascii?Q?nNi2TO5FzXgvJZXxJHUzUKsUfiJVcrfDWFPCQ9goW5d20FHhqwr3qP7695oD?=
 =?us-ascii?Q?J01WDFPE79jknMfgrF40bMF81YKhfYJythdfFeRzO08eYBfBuOfrRanYPu6J?=
 =?us-ascii?Q?EQJWKUIZX1hdRA/dCxZ16kfGb1O3VSxi1jTZeAirJtJr59KnNStx78awtxhI?=
 =?us-ascii?Q?BvUnhliA27VXR8qQAOnDfPdr?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02b96374-41ce-4bfd-cda0-08d9043a7f0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2021 20:25:53.4545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oUvpy+8rggCptBfmvs1bXd5jAVNzYNkvN2LMrzcezYdnshiKbYcmUXuNg/Q+zxIz2+WQ6j0FnyIhV83MP+TeAxMhfsyg6kTSSC752JXywZQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1597
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "linuxarm@openeuler.org" <linuxarm@openeuler.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Salil Mehta
> Sent: Tuesday, April 13, 2021 3:45 PM
> To: davem@davemloft.net; kuba@kernel.org
> Cc: salil.mehta@huawei.com; linuxarm@openeuler.org;
> netdev@vger.kernel.org; linuxarm@huawei.com; linux-
> kernel@vger.kernel.org; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; intel-
> wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail {R,
> T}XQ check/code for efficiency+readability
> 
> If user has explicitly requested the number of {R,T}XQs, then it is
> unnecessary to get the count of already available {R,T}XQs from the PF
> avail_{r,t}xqs bitmap. This value will get overridden by user specified value in
> any case.
> 
> This patch does minor re-organization of the code for improving the flow and
> readabiltiy. This scope of improvement was found during the review of the
> ICE driver code.
> 
> FYI, I could not test this change due to unavailability of the hardware.
> It would be helpful if somebody can test this patch and provide Tested-by
> Tag. Many thanks!
> 
> Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Signed-off-by: Salil Mehta <salil.mehta@huawei.com>
> --
> Change V1->V2
>  (*) Fixed the comments from Anthony Nguyen(Intel)
>      Link: https://lkml.org/lkml/2021/4/12/1997
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
