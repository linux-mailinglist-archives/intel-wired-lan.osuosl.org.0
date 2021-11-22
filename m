Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ED24590D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 16:03:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3E1840461;
	Mon, 22 Nov 2021 15:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ffxa2j-pc8k6; Mon, 22 Nov 2021 15:03:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1649401A2;
	Mon, 22 Nov 2021 15:03:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE8CC1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A867040101
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LVJ-MM_mpdA2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Nov 2021 10:11:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB9FA400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:11:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="233480145"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="233480145"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 02:11:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="570258964"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 22 Nov 2021 02:11:21 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 02:11:20 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 02:11:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 02:11:20 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 02:11:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MqdNkkHgV+8mKR5NnicK+vGkzpWo18viOOjbqlCSn5vxVybewxRbHzq2HHrS7d2Boe1AN5PwlVThbWxvz6BtK5qFDsnSu2/xG/uzjLFGstezt3EpXMWJL8KGjAyb3bqpqJqtasz9/cWZVfz4n08d9Jnl3Y8cKyE30zofSaeD/Ny+NMOj+PesXxHJT5IcaT8yuF3MBWI7sQqSawjn28X+qvT04vkBOl8ByBMAwexx1EI3JY2zyva6sdJ99xMqGLOWTvU7Dudom6hW/GwgtqKogSl5lzsSnWIOSRYzDQX5ZB12e/zOb2Bt/eLZlXr2gCS/5XvkPqQJ4sAq9UKI34hnSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1+on60DyVuv6OF2Mw/FhP42w4dgoia3v0GiQxWgQ+w=;
 b=TVVTp2BvBL4AA/uBQfo11K4TVO+D6WVoILHb97dHzX9RpIAK0GpbMZT0QLRfBPf0CY08aYz+NwQKtK7cS/t6dSVuE6yu1R2/P9Dh3U9zimGf3xKS/PSD7jZYZ7XUkqRogA8auG4HwiXb7QPmhHYzMeXmMsfvxSYJ1K01c7qRxFbk4Kcu/CKqt649cdipQ/ii0b1a4Wime1lThMaSv6ZmLNT2miY4hxq1Qa3lL0fP2Ef8/iOoQ5bKkbBZvdsh40cJUkq7Ds1Fb30eSejwjr4Zt2HiqaUajoiKDA7rU1u2wtaywqnTJHYVmTd7AahqeP68qd3EGJWUkrU/AHP6kVqOIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d1+on60DyVuv6OF2Mw/FhP42w4dgoia3v0GiQxWgQ+w=;
 b=geSib/yfCkDH6sGvRWL6squr2vWG8fmbAvdT8FupgJg+txRwUwm/N0tk30TXt3FL6yk4hTCEkB6qaNJAaUi+rVKrCduvmNzXC3FXEF8spPNvwaG1DRut+TLBuJSha9Qw1JdwFmwUaCAfV1MRYIWVDNdjI3WCNIBFfd5HMo8b2ao=
Received: from BYAPR11MB2727.namprd11.prod.outlook.com (2603:10b6:a02:c7::29)
 by BYAPR11MB3765.namprd11.prod.outlook.com (2603:10b6:a03:f6::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Mon, 22 Nov
 2021 10:11:19 +0000
Received: from BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c]) by BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c%6]) with mapi id 15.20.4713.022; Mon, 22 Nov 2021
 10:11:19 +0000
From: "Kaliszczuk, Leszek" <leszek.kaliszczuk@intel.com>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next 3/3] RDMA/irdma: Set protocol based
 on PF rdma_mode flag
Thread-Index: AQHXxHY8YF33kAomCU6BViwPYoP5xawPiWCA
Date: Mon, 22 Nov 2021 10:11:19 +0000
Message-ID: <BYAPR11MB2727D089A462029E79CF63B9EE9F9@BYAPR11MB2727.namprd11.prod.outlook.com>
References: <20211018231603.1690-1-shiraz.saleem@intel.com>
 <20211018231603.1690-4-shiraz.saleem@intel.com>
In-Reply-To: <20211018231603.1690-4-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fa14f7d-1a9e-48c8-d39b-08d9ada06d81
x-ms-traffictypediagnostic: BYAPR11MB3765:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB37653BEB5CBB86D48BAFF7B4EE9F9@BYAPR11MB3765.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Hu2gMJaDuqDINh5KrylXOs+XUZdnDMkvFUR9n/axZQA4cmxrxQ3W147NLR0DvnrsNx174WrxaCP/NSwGucBJiBS38tSnQJLZm4rRi7EBtLpjaPG1dRX9wRHHYm2MYczOZMSQPmbiPP18uXDSNFS2QRkO78KhiWQTXfjolQub0kLwDHRYu6EkjwafuMRRBhUw4SL1S96CbEhjyzaecfHkUUP/ZbfyAmoda/IX4JB1wCPn8C+HB05qzSI7fwzhyWtTldVJd2xoQJvzaOIVyji82pI607HNwvAEwUpFDvppE/zXBgG1MD1WP8xqrzyX/XoT1uL2mhlTV5ad7I2ETgbdGKyDHpumTETSkfES9IXZ80+YGsNkIgfHaR66G++ET1ulhnYgHtURswx7WE6gFGpYXnbmyoMthwIRpdp/GV9gBwnX9b2vnPmYbG923cfJhvlyzRfO6hVIxMyvwEE8vcll6P8gUKshCDfbkRSYm9Ci0dJzaiTTfhVYm7NzQP9gFtU48Hdvpz65r2Z+Q5CGqosXWnKqkOL/E8f/ziyhbOeChBnNs6yRm09koNdaNBlOmwXP/gaWdg/U8hb43nvSjshluTtb3x4tqgPldwPR6Q/NzWynsJX2oyCei3BGGEXKKYlsLTDXJu09L4p35iIaBBTCJS9ucNqtWFxVk8j+O8kVsvndkhXnUjCsAjTdy8WxpYNc1VAalA8OnoI0X/dG4xncQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2727.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(64756008)(316002)(66476007)(52536014)(86362001)(508600001)(66946007)(8676002)(38100700002)(122000001)(66446008)(5660300002)(110136005)(53546011)(66556008)(82960400001)(76116006)(7696005)(186003)(83380400001)(9686003)(71200400001)(8936002)(33656002)(55016002)(38070700005)(2906002)(6506007)(4744005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/gV9IRtMFbbH4EB/100lAhlbMEl1vFTO8YWbrh0DxM6ZjErb7BnvcBFeUZ9g?=
 =?us-ascii?Q?Jcf0GGEVfjyfy/wzA/Hem53Wroy6Iu/GvBw3yuV6JN6gfV2QE7OvMePfSG1Z?=
 =?us-ascii?Q?18Hbnqd3K/l0VnR0/MKu0ob7JA0Vm0Q+xmxeQ3o0TaLDMbpyPP8V+zIyyYB1?=
 =?us-ascii?Q?2/aoEwlnqH6lu3tJ/fOewQPWXvf7vcrLyz3C5igxyRxcEzIlW59uqL6yMW+x?=
 =?us-ascii?Q?iPdPSkRhNLGrNV9BlOM8wAlC7uieUAqEdWlXpqZPurwFB44UlgrbMRSklQXV?=
 =?us-ascii?Q?q1ctippHzaGxuT0sxPzPPoVYO7AIAFBJryXh2SFDZDilYqGsX+kuzsqXJarm?=
 =?us-ascii?Q?tBfLKcrDlzb9SgPJGUEeKGuL7clUBC9E3tKRdK7reZtuN4ILkH4xjjyMeINK?=
 =?us-ascii?Q?NF5otXEJmZ1SEmHOjvkscqybacxrVBrBKF+Fz0u3WAMCdHwVi8Rkv5PgC7hw?=
 =?us-ascii?Q?Z+GI1QscEGTV8Sf++H3EucWV9MeE5RCZBo0fUVQ4cjDL9oB1BPMRH4T1InHA?=
 =?us-ascii?Q?s6So6S3ved9stpIyoLrvLAVi7g3RfjqNT3NOnumCedJL5vHgsPdtkI72mILZ?=
 =?us-ascii?Q?ENzXgHgYSxxd8zi33TYhqOjHtlARkRwffrN/tFl3eD/bWnkZeNMy1x08ueaw?=
 =?us-ascii?Q?98k4T/b3SnmgCMlim4Ne24FcFZYVCwD3S9If1n2KlfJVL1WE2bSKoBiTDGcn?=
 =?us-ascii?Q?vnCQ8aI9O9bOmFPy1SbHlGIZkxFfHm/NdCKTvdsGfKshtLZbkJso13WeZ0ZL?=
 =?us-ascii?Q?qr5tpSV05GXMLGTMcLNc0wUa3kdHkkHKQbiwSptOm2noGuYVEhSHPTRGMnsV?=
 =?us-ascii?Q?JcD6N2tMRWji7lLZ7/CzRr4ZFgRNXKCTVRZmjAjNQ+7VZHqucGs2TxBTBPzr?=
 =?us-ascii?Q?oC7Y/GNq3/dUT8pnEXM2ME4Y+MwqMIjocVz+RZqR9qnDgEHrf0Dm81YsaqQ6?=
 =?us-ascii?Q?hPgfYvSBLX5Pb2ueOjaseO5fLsw6a/TaBygezfTYtpuCI8q1/bvkS9+J3HPC?=
 =?us-ascii?Q?2dbSAVdyDhcEGf/5A4uCFUMHTubeRDUUO2jDM54gSQgrP9ujSqm3AaFucdJ+?=
 =?us-ascii?Q?Mdg9I4gHS7UnSsycX8s6Hv2IlW6Yzrm2JZO14tDPaUE90uwxun1GOXn7SesU?=
 =?us-ascii?Q?jLt7OL4wa+8UvOW6vdGh6+5fbYi0QnS9EybbZf8SvLBAcdkA+ic4LQS6S+5Z?=
 =?us-ascii?Q?m8zJCHZJcv8ZqJp5wuJ3Hm/9R0/C7b6eg3h6djklq6JUWclp4O6avlnBZnQv?=
 =?us-ascii?Q?1c94e98XdNWdi/Z8ZTLvKL5bs7l6TWq+TANLEAw/Ktgz2/+2t3S1Oequyaxc?=
 =?us-ascii?Q?vr4FC6NAQI9cu6haw7s6KzlHbxtsSGQvkIyJxTBlQqeQxiTXXc0iKWVP1zbt?=
 =?us-ascii?Q?bWzKxKxB71u+ZuIJyCrkFsj99coK6/fve/1phEQ4sqe3zQD0tp70pYs4KQ0y?=
 =?us-ascii?Q?hhNw29Dl86N67GiDj4mbQmNcsjfcu0ZPsWwa4MS3V6HIuJa2H1n8HEd50qIs?=
 =?us-ascii?Q?xtf6OeTzzjqy3h7F7kATn8ks31aGXE7LGulUtFq9agrnjVicE1YZHTHIqRrd?=
 =?us-ascii?Q?EWcrUhAMul/sCu7H+Sz5NkDMFdz880zihE9DmM6FShYgYdIdSW949G81yy+F?=
 =?us-ascii?Q?EoCBasoh8xjmnDT4lvlYutJ30a2O+vvYf26DeucFLVB1/k7lyRGzkh2ZbN+W?=
 =?us-ascii?Q?u6mtCA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2727.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa14f7d-1a9e-48c8-d39b-08d9ada06d81
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2021 10:11:19.1794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZVf0NUl181TRWoGYfSYZsy4hKo2mB/F4xZa0UR1yjwn+4ugJzI6bPu2aaUMAtG7/ctymhBXvfDI9IsWCCeuHUFgXAxKZfbGBLBHqkVRRUDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3765
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 22 Nov 2021 15:03:16 +0000
Subject: Re: [Intel-wired-lan] [net-next 3/3] RDMA/irdma: Set protocol based
 on PF rdma_mode flag
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Saleem,
> Shiraz
> Sent: Tuesday, October 19, 2021 1:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [net-next 3/3] RDMA/irdma: Set protocol based on PF
> rdma_mode flag
> 
> Set the RDMA protocol to use at driver bind time based on the ice PF's rdma_mode
> flag.
> 
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/irdma/main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Tested-by: Leszek Kaliszczuk <leszek.kaliszczuk@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
