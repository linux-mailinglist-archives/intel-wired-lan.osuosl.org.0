Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7392843CF05
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 18:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEDAD80F2B;
	Wed, 27 Oct 2021 16:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nS32ku5GguMq; Wed, 27 Oct 2021 16:50:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2ACC80E60;
	Wed, 27 Oct 2021 16:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3DBF61BF2AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 375A8402C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tHf0HRrLCgBs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 16:50:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5061E4028F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:50:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="228961253"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="228961253"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 09:49:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="486761659"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 27 Oct 2021 09:49:55 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 09:49:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 09:49:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 09:49:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xhcchr3JMz0ZokvdaxyNbOvjHnsLcVbpBerjJR9+Sln5vfPOAqIPUTpUmmkKE9i1syKxPfC0dRPHZy1FrQ7l3b1EMNLm047ftmqAIPIr3FXjW6VQiMldDjcuq4q8Mb33BqU7eBT7I08oa4dkhyyBpzlICBL1/jRZKOhv4hgTlIrddTiF3UR9WYTFaqR9oVntaWRfjftSXHivWNSlTTYO+d7EmfNrOwZjpN/HibMSwwGfIR/sApa0XhoNQByunHne8mTky+Ud8J4UEPR7Lz9d/1CYeqYL/+o4N0baV7V2hgaaf2E12X/QlFBL3jFaEwKqArIdX53kSOPyQQtYOsBFHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZaH0+vRfNM/PKOQbglM9PC+VXTMtzqHyOFn36KPKzBA=;
 b=LCfNXr4cD2FK00GF1QR/7K2w3xZ2cs+R6jbC0UBrl0GkcQSnNQ0qu9qIkD2bOTZ3zAP3rxrFT76s/a65bu8sBdyNw4jjlr2zRDRqraTaxAvFdKYCjWT4MUtlnuMaZKIn7n2XpH+21mjw6bgnrA8Cdml8cJ8KP31oeILibmE5voyY+LPbYYYXVWKYZkFmXlwOsTV9UzmsazONLN1OWSBSVAt4ND8cTvShthCR9RyDLeV1RlKzplrVszHKPuB3OQ/qRed/AJ30IV0j6AnIdvXd4HJEbwVBUxrrD+2WsGYc37O9cAT/HN/Bgtc3cB2c9pvwGA5UIdctlltsVefIxuOvVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZaH0+vRfNM/PKOQbglM9PC+VXTMtzqHyOFn36KPKzBA=;
 b=gRuZOWvyLY+W2r/ZMPcD7Ehyho24DGYgqL3/i0ocjc87rHNIcUTY+ld/x0H+Ya+VCclThnXaJXTKknKmRVXZO7/g3rwns98VyB6eBsOOh+7Icw9pv3G/jlBPiaI2nvIM5TJ4gHVCwsG7d0WBtKDuiLY7rWUoYLUMp4nSLzFmuFc=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1423.namprd11.prod.outlook.com (2603:10b6:300:22::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Wed, 27 Oct
 2021 16:49:54 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 16:49:53 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2 4/4] ice: support for GRE in
 eswitch
Thread-Index: AQHXv5evfM8F3QtUH0CVNzlqAgVTHavnJcpQ
Date: Wed, 27 Oct 2021 16:49:53 +0000
Message-ID: <MW3PR11MB4554903A2C75D02CC92ADB319C859@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
 <20211012183106.2315477-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20211012183106.2315477-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 798a6cc1-a797-42cd-88da-08d99969cd02
x-ms-traffictypediagnostic: MWHPR11MB1423:
x-microsoft-antispam-prvs: <MWHPR11MB1423AB8DEF95D4AC5DAFBA4D9C859@MWHPR11MB1423.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pFcZpT7l8Hdhyd2tnDZhf/x8e45A9Osw7Vk19DRmhkGWczs9RMgHECj8ac3zIaNry7qtF+akHOFTHlWLPnPrNSfdfk0CbFxkElXh6lbjkUdL4v/dBHcMa0lUbcE0cNGSDYt3942frtLWVH/Fy8VUM+H4MF1CFn6ZRWfXkRtukchpfi98qJp/ib4yqgZKWgdVUAt/YTGlAjPf98jojZysWM4lEr+BLiEaZypnasLOrTIslM2nlpj6v941ROU1Fv252x3QTOy2n3F3eBiGVKZf6XN4m56FgpmUr6XiAR+GePjYE5I19Bd0ijGBq4vPmFvzsJAFOC6ZK2GAilkB4rOP7hnO/RXRIP3vz2Qw7uWIO4WoBxCstR6h97xZDnx2YiBH+9qhMYStJCsdg1yj1/wLjQqy2chsu4Zno8JkMZ07uDmLzopiQBD53fRa8lyTZiyDZdrK0y7paDiX1kkiIk1CRc3GUGv8JAYAnFB1DuzH7ysJt7QGnjjbeh82zoEXhGJ9HD0czIOI4BjLRRwXVh4R0wGXFskMhTvJElJt05agaOyxTXBroYXjO87iLd6mZBExs/f4JtNh3N9M2t9H/yHnXIbWI3jWYUd+MzJoiDGu2Q6KUMR9G5G7oz69joFuACUHGqUa+r2KBvijB1WEQ3rDE/gYrZF86TTOd9szZLhSUD8BJhP/m8JWPK2fhPDkNgM93URrMQk5+bKiw1iZPItwXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(82960400001)(186003)(122000001)(38100700002)(76116006)(26005)(7696005)(2906002)(6506007)(38070700005)(71200400001)(66446008)(8676002)(316002)(66476007)(66556008)(66946007)(508600001)(9686003)(110136005)(86362001)(33656002)(64756008)(8936002)(5660300002)(55016002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2mP8qmwo3Lz05ooi610U38XqJtUIYloMx0w0G/yzk1CblcCvqrn1DxXUWlRk?=
 =?us-ascii?Q?n9rF/YMqEkdLg8rjnNwoIAV/RB4EmfAuMl8WZyQyVh6qjbv0IuF4LobGRUK+?=
 =?us-ascii?Q?jqKwnz1Y6e6Cxf9qmqtcsz7nYU7VN6lYkLTvcsN0nV/CKImwDTSeMSKMG1HQ?=
 =?us-ascii?Q?OG2Mekwj0LFy01t6iOspvknu/ZMdYnvG5pcQw9bHbkkWTvDQmf6qo/NgoR3u?=
 =?us-ascii?Q?OWsIJbZGEFhPTFLl1sP/clE/dzaK9ZzF4MTzYPNYDsfLexeCYvm5ox/KSCM3?=
 =?us-ascii?Q?XZQODFdrO09o8hCgibq/lgnennjYsLi8pZ5jUKEtCnPI5gYQi2P03RbWEYKp?=
 =?us-ascii?Q?VKl1moqXa6S+ZTAwpLt9+i2gLaJOrP3VwJlqk/HoqnfP2cPaVur0ktTFJDFo?=
 =?us-ascii?Q?jSbn55/ggKSWLUlAh2iKlcANDZdHA1Gy1Rf/QqeCrlTWpLgVsts7+WkeZFC+?=
 =?us-ascii?Q?I/R9TwVY5dGdve5Ehq1djVtm8LlUuvS+JaWC6TXajmgTGS/rT+/VBGctHpRC?=
 =?us-ascii?Q?LCN3OqRq+E/SZkfhCYtESeJGpSERInEcGv7qAzmtF7CMdlu9gdhhKIB4Ebet?=
 =?us-ascii?Q?VauvNE+1mGLVme6idhKYaPU7wUCyadKEjg7U+vQENuHHpNSz5fe1wysh5iCc?=
 =?us-ascii?Q?Fr9tC9QUebMwYHDt6Z7NzVotOj/k8xosk+kjc6gPawORCtAq4WtHeNOcGfHv?=
 =?us-ascii?Q?wk9Jy4/08JPu4VJe6/6VSYm9+9Nto7u/yHxcicdDYVqnd7+wVZaKnyVCRmBd?=
 =?us-ascii?Q?/YiUIcK7xY6PA40TYPIAamxkmfK3NSYHROX3DQw9yd9sJoi5N0MxKCqjRxQo?=
 =?us-ascii?Q?c7vCSAhzMeUUoXy9fmxG1JLnvIPNVsm4qbSQBCL7UY3rr0iHS5Wc71FI/EsI?=
 =?us-ascii?Q?PsCQ4Bgwzr5bbAv4p0MBw9DK+bv2yrigH2cj5dRxAPArCdLlA2/hxWcuC6Nc?=
 =?us-ascii?Q?y+D0NhIGYQAf9/Yg7Vo7eYNM/oMCogmbTfBYK1UiyZkfZy+fqn4X2DNvhJVr?=
 =?us-ascii?Q?OxD7at/5igwfc0fPvq35VhHchTnbzEkXC3sFP9KJhIz94nuDiss+tho4X1U8?=
 =?us-ascii?Q?dVen0byvPfR5YYL6OYGyjXuALC8BQ+HDMKsotERhEGbifXmuPAxur46xY/Ef?=
 =?us-ascii?Q?DVvM627adXCrRgoUWPIl5y133yBiqcrUossMaDBg3/lSGxCHsZ60OcFIYUXn?=
 =?us-ascii?Q?ytPI/cgjcP5RpoebEJc2l3bX79cPU31Yq0i4jThldWViZizOl4HEef2CmkNK?=
 =?us-ascii?Q?HbpHpx2+2jKwLOT2sjh30WzmGDE07FYi9+8yO/Dpugub8rQBrXEJVZHl7D8v?=
 =?us-ascii?Q?RbBnwwwc2hSnk/L7W/BY9zA2fdMgy9341c1dPxXefrDoVf3HTAKsl72bAVsC?=
 =?us-ascii?Q?vTqredrMP+Y8MmsQsrX6tEkweGCXl9RCyxyfUNKjYVb6gOEDcNOqSnZiu9D3?=
 =?us-ascii?Q?Rp5onrNe1YKaVC1ogu5ipkaIaa3hrV3SzWPSFawls73y2ykmwjpycsJCakWl?=
 =?us-ascii?Q?EG+Tx9hhE49/A3yvSdWkBKhkbxOHJYaU65Ntw3M4SHVCs7J1vTbdAd2IgHMT?=
 =?us-ascii?Q?BZicDCdbvOgGyOV4B9cS8h0xrrHQSCjBKEDlRIut54IXW2tqRrXQA204cCsh?=
 =?us-ascii?Q?BaLT92Mkyq2dnNIpgr+fYuAiW+rIY7XBL3gC5TEUgkOYSeLuUQMthV+o+22A?=
 =?us-ascii?Q?v4W0Gw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 798a6cc1-a797-42cd-88da-08d99969cd02
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 16:49:53.8860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VpOVbNACrgxlcL1jtoTBeHV6NMsBaKiXyBQDAfyGM9PTxbN/Rft7/iSPezOmZJ7J1RY3CeKdAwhyQr0n/MhwyQkg1xOd6hZQsnp2uD4D/+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1423
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2 4/4] ice: support for GRE in
 eswitch
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Tony Nguyen
>Sent: Wednesday, October 13, 2021 12:01 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [next-queue v2 4/4] ice: support for GRE in eswitch
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>Mostly reuse code from geneve and vxlan in TC parsing code. Add new GRE
>header to match on correct fields. Create new dummy packets with GRE fields.
>
>Instead of checking if any encap values are presented in TC flower, check if
>device is tunnel type or redirect is to tunnel device. This will allow adding all
>combination of rules. For example filters only with inner fields.
>
>Return error in case device isn't tunnel but encap values are presented.
>
>gre example:
>- create tunnel device
>ip l add $NVGRE_DEV type gretap remote $NVGRE_REM_IP local $VF1_IP \ dev
>$PF
>- add tc filter (in switchdev mode)
>tc filter add dev $NVGRE_DEV protocol ip parent ffff: flower dst_ip \
>$NVGRE1_IP action mirred egress redirect dev $VF1_PR
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../net/ethernet/intel/ice/ice_flex_pipe.c    |   4 +
> .../net/ethernet/intel/ice/ice_flex_type.h    |   2 +
> .../ethernet/intel/ice/ice_protocol_type.h    |  10 ++
> drivers/net/ethernet/intel/ice/ice_switch.c   | 111 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  28 +++--
> 5 files changed, 145 insertions(+), 10 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
