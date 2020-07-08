Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46038217C82
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 03:20:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC7F488A52;
	Wed,  8 Jul 2020 01:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gGAPt3nOwezD; Wed,  8 Jul 2020 01:20:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4850188AB3;
	Wed,  8 Jul 2020 01:20:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E025C1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBDEF88A9D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNGqmVc1Nl1t for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 01:20:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E90888A52
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:20:47 +0000 (UTC)
IronPort-SDR: 1UTNORKkghFCiR2hKggnN44P/rfVGCxZYan9o6PTo9tY4EcK3Lda8t/B93hqYiHaWDcrCDrYOY
 eKa74V3CC+LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165794077"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="165794077"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 18:20:46 -0700
IronPort-SDR: EFYDLtvMbAjqY384xXnaAOCS6qQsGjgYS5PQeHo2cp+YHcuDsVLh3UYiTQRcvkv2bOZRTvr5o7
 dBS3yoQa7N/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="357956310"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga001.jf.intel.com with ESMTP; 07 Jul 2020 18:20:46 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jul 2020 18:20:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jul 2020 18:20:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDiHwkbuwYX60SleaILn723aZzgO8s1QvJ7kZJ0fVcEoZHVigxqpUNIEjp4gLu3hdKNnokZrOJvQoB4sq+fSNRagxS4wXlgiBYfzOdC9FjpLfZoOMZfjNHi3R9cGYwqJq5I//BoLzdpzKhRQwZ1/MY+2XGuz3TcNC6EEYGGM2e6SAM10dOXA5981yzPq4+56sdUiP60DOr2wjoETp4MaXRHSpc7IN/ZFOrtaOyrQgYWpMnWdZ8wBbrwpET6UpgNmA4fZAALk5sMlvb/xk0JpZixsKB8AYi0p7u08qLV15239I1Nb2zRkwogd0nyiGEwa5P+035707chqjDgKTgshQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FNZCvtInuZRqHq8TFOqKopCIFhfeq63nFUb4UIpAFg0=;
 b=gLSCfEZJT7zte88lJVVboXa9WOkGvPoxcN9ngVPTTYBc3T5nbGi3pPxxfsxdopskpWBBP964Oq6xJ5R5U4dpgcRRvrPhyY+m1jgHZzbS5YTwjZVW9XRiu1vk+Irh09bbC+dXc2JFBbJ0yf7RQx8OECPfmOkrN0OURfU2yE4BTgWUBGpqCU1N2NgwwnBTgVztAdWHS6E1SAMoRx8pi/ikyTtNq1y8v92y3iCpDAp61wUmxUDL/SpB/3z7ep57GM9pQus3JAZcqLySgXoQX0QUBDpwfsp2COOevRIDdefvCwJ49iDdz/+MiL08AOxBcnkxxr5K+UMJArK7kjsceubl+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FNZCvtInuZRqHq8TFOqKopCIFhfeq63nFUb4UIpAFg0=;
 b=Poasx5Pinp0V9zgYqkPjE25H7boyOpkAmYtti4vQHjNa+qkdelZ4W30P0k5mHWpWuRfY06LKD2P9VcHhxVTlFhUhbv9rog3Q6MqpOeJYneaq5tPvEGwgCTxQUuCKz6JhEiAssBVFw4GJyhPHEI5V9IOyBYLq3+GAqwHiRi8e45k=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3548.namprd11.prod.outlook.com (2603:10b6:5:143::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.28; Wed, 8 Jul 2020 01:20:37 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3174.020; Wed, 8 Jul 2020
 01:20:37 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unneeded ICTXQMTC
 register
Thread-Index: AQHWSGjbsEfcLlcGP0ucprwnk6mWI6j8+wEw
Date: Wed, 8 Jul 2020 01:20:37 +0000
Message-ID: <DM6PR11MB2890058D758142BADE16B644BC670@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200622074334.30238-1-sasha.neftin@intel.com>
In-Reply-To: <20200622074334.30238-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7641351-fd14-4277-96e8-08d822dd1f21
x-ms-traffictypediagnostic: DM6PR11MB3548:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3548F496EB22553AC8AC928FBC670@DM6PR11MB3548.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 04583CED1A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VDIJURTxNXv90CRujH/z2keeuwKCWVKDOHnFzmpM37vbLRAm4vfKleOuuW233gUGmpa2lzJStA42shfPBFW7CLGg34/Vn2/lAgTH+YUzXUw/9x1F2u4dpxXQ84U9xEDY641dQWshb8ML4qytzo8fvZ5OwRxbGnJwp9uZJPuCVjbz56P0GaG7CKNlDdezUzQp7gWZYq2yBefj0PIG9cJfYxH66NBw6P9MLVD+YAF6f4ZuSq6TVnEeNo0JWW2+rnRkaZ3OQstl8MnCZC/IE7tdI0UtLkmU9b36+BkkIZmGc83Y5U9MF9jpTMupNeJzzv7t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(396003)(376002)(136003)(39860400002)(316002)(5660300002)(8676002)(4744005)(6506007)(71200400001)(7696005)(8936002)(53546011)(55016002)(52536014)(66446008)(64756008)(66476007)(478600001)(66556008)(76116006)(2906002)(26005)(110136005)(9686003)(186003)(83380400001)(66946007)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /QixEYzORIfMZETHv0Sdv4yAc40t0/TZRFRxnp1KYmh4lRnCW99iyI7ymRgY8CoSIna+f7dD1X/zGrQWsor2raIuinkv4YdpNnxPUV4WrSEYRglzrU/YmSsTtrQX8Vxh85d7GSL0xG7t7cZBbIgamYEvbNrB4klvb3IzFWAwaFUZwBLGwVwrPfMJ38uWgnN7xdNm10YmxrK7LrJaRHV++znL03AA8LSsC+HzEo4DseNLtnNSgDUdUKQUsdYv84rFrNYhbBB1EXBWxUD9tAM7n8Q6xkXkcSroDy+R87bWb6JcdafBOILGaU8W9stovZGOZmY3vsVFyC795/Gu8EK6uo1aCEpIax2OE+6aE9lJkVoxGKSeGTyfb6CZY34/hU6F37uQJC3VTBGfGtq2AoQW3Dipa/ZKdXOAlb+7gUJbqgXMMu3RYoWbyDNnLkGBNGB5E6wXm5t0AdR3fgACPa5APeb7VbhTlNFpsgjRf9o72XoQDkaQdEvWon4Hp91YrxZF
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7641351-fd14-4277-96e8-08d822dd1f21
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 01:20:37.7297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: au2TcHMu4MOcdpyuJ7vGhVe/+yGJFVtfj4RhFlhVAA8z8twNKBbOxcSVO75GQsS7prkt+Q5k+JPrDyrnQlAoSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3548
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unneeded ICTXQMTC
 register
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Monday, June 22, 2020 12:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unneeded ICTXQMTC
> register
> 
> Tx Queue Min Threshold Count register no applicable for the i225 device.
> This patch comes to clean up it.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>  drivers/net/ethernet/intel/igc/igc_regs.h | 2 --
>  3 files changed, 4 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
