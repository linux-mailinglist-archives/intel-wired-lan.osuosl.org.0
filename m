Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2409C47D06B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 12:00:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BE7A60FAB;
	Wed, 22 Dec 2021 11:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhX-nuW647V8; Wed, 22 Dec 2021 11:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 501EF60F80;
	Wed, 22 Dec 2021 11:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B93C51BF599
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 11:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B44F3410A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 11:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6LKtO-pnxH3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 11:00:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 17FB4409A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 11:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640170816; x=1671706816;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zi1uEhMnlliGJTqxmrLw7OEJxiLpW7cbq2AkLTS3YM0=;
 b=huNXF8HtmzSTDIMUB7TIesWoE5ndVmML3RxF4Q7Hrc5CnMAWI5h6RWa6
 9tnV/B/gTbYe21LBJ5Cb8zYPqUH2DZdrlOHoxO9C1g9QpGnZFQRXoPPhB
 OBzrNr9oDID1g924MQDyAGUXDmZRHa+EdT6mifepmx4NiXvR10JzDVTr4
 ptzJHm9kHoq5F4oE3xYz72GvVOjDX4WI8V9srvYsteldhrWGxPB5f2wad
 LCOVd3luHzKID2rkjH2faosXj7n71Oxitv21PsNaWQOKljkHB2O281ZIL
 7TdTjArYbQCkKmUcxYHLeUivBfmvwP8PaftnJTCqhjl7v87v2pY6Xo9AU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="238132707"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="238132707"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 03:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="758389600"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 22 Dec 2021 03:00:10 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 03:00:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 03:00:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 22 Dec 2021 03:00:10 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 22 Dec 2021 03:00:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YUx03W35Myd1Fb20Y5yLtU3LNrdoZGtTOlBEC7lVqn3xJHmGFDl0p/A24f34CD0a4SmjdfU6aD8yYnH9CAnKQB9PbsK2c7xp6TUVtcjGo7p4l+52ZYG7mhpb5eIgUbM11yvt7pCx/KzhpDFCvHyPkmcGei3b5y5QJtmbhUJUWQokdE6SrfO8x4SLzYkz+L2oWMXQzK74gnbwslK5N0sS7X4QxgFFnCfMjdbUF2gEWiDnCcmYh+RBlVng8D2BtZ5eq6UeobRnoueV/+f9GpzQ9rdeCVbKAe7XuVSsmtnd0MsyW5DqCQ/U8CJDv6WzpugGm0o6o+QlxmQ0t19Hh0X5Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Notx98Lb9QrnTRbsKmd70xO0756EnpbCpSLbagv805k=;
 b=HutNJx2odWnmbvoRhOBWDFohwXXs57It8l29iLMdeKsSe4Ymfk9Nhd/q1F/sIWKyAxSUAKouZVSAJnKjKsErEhrikqYsETrIXZQf26q00bjV3QrnUOLgsIPanpzSLud5UEcQbE1wROVcmqaI8HlYTh+o+UzXEl1rODOjWsA4KitqNpoH5XD233Qu6curyxRV6Hdloth8uROhSAsjteePLW24R97Tpw+ziUPbG6SxkcAayEk+Kjsy1J3oklQTKaXkubluYzVZ3Zj1iDQOTS93zxJwYbVohi9jNm9vVu04qntKgteMmVMjUtcHC0V0patABrwVNUCI0QQUN6YjX9FQ3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Wed, 22 Dec
 2021 11:00:08 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 11:00:08 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Yang Li <yang.lee@linux.alibaba.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH -next] i40e: remove variables set but
 not used
Thread-Index: AQHX8D510leJSDY7zEydjsNb2ccmC6w+ZYyw
Date: Wed, 22 Dec 2021 11:00:08 +0000
Message-ID: <BYAPR11MB336744DCED9E187D5051F81CFC7D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211213031107.52438-1-yang.lee@linux.alibaba.com>
In-Reply-To: <20211213031107.52438-1-yang.lee@linux.alibaba.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a6f6be0-3a70-401d-e6be-08d9c53a37d8
x-ms-traffictypediagnostic: SJ0PR11MB5087:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB5087A98FF3A19D1F9719EDF1FC7D9@SJ0PR11MB5087.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZRYj3tsRta/662Ngk5/1D4Gu5bvQQYf19pdsz0W5G1yWKuIEZXOpJr94SYS5IOkedeGQTddA113iAUjQMpjgP3INswoZAiGIl+NP6EhrB3v+2Dhy8UVfExQORRyDMvP8Fn1ezsTzzfkdAde17gCM45yFr/H5CvpJiM1YWG1l8UOSq8fH31QC+GSXLswTmyXDlBxAZ8P78BhlnEISe88ORXD+CzS3vHEGV4Paif1vmutagdBkqeuzESlR30D7Y70CDnLvoE+cJkZ/vUiRDIPH8Xo52OVwtz4DX2SjuWNrDSpIWekXXf0Tj7MsW+4cyAZF+PvknyKBFeiFrKwmNFCcdWBdrLl3NxEf0Vx/P+IFOzZ7Y2LWNpZG6VNAeME9AUBEiO4IiTyIPFyGCielfV4+aVQLRDvdATLaJMtkuWIug1hX5FmaV08k2RjSVGgRLX6yANSWjki+jClFbdXnA5uexSP0fA1eiVl8R/UelkkXil9cPgPRFBBQS9JFAtAlTVNEQ5A84clvzyhA9/oCAJeMNmvTCcRa5U5Q4vdljhCPbs+Gy5/2F8ykXp+78w1jNwIiOZ3TgOL++E/qy/svBzV1ktv6YC0pdogkrkMCYXR8nPcY+oMlwXakjNgPj9cnW+H2mSz4NsXDQI1MpAvfk9e4gBajYuCaE3TxrFz3bHW4iOpy4gZRQCTVCzzoRfYA/76sjY4QSiNViBk/fJYBtAJRYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(86362001)(4326008)(122000001)(53546011)(5660300002)(82960400001)(33656002)(7416002)(8676002)(38070700005)(8936002)(26005)(55016003)(52536014)(2906002)(66446008)(66946007)(66556008)(76116006)(83380400001)(6506007)(71200400001)(64756008)(186003)(54906003)(7696005)(9686003)(508600001)(316002)(110136005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fN4uSmtLWSlattJmWZ40Ss1mNsDxq6RJx7Rhs4pY5VTl+BOfLYAwVw8LyOx5?=
 =?us-ascii?Q?mJRAt6QA0twjzjetyBXuiS/5fXWHzWBt0EiQO77wwDfPMjN38DAdzWVNPt1C?=
 =?us-ascii?Q?7i7C8wQqz9FTfQ/skWzc5G83JKDJuh2X3rgKnUVqcIdxdZcwQx/MEO/DPYus?=
 =?us-ascii?Q?UNixvGBMr+1quwK0yH4FkeOBiSpFKbd8M6OA03+5I8fjPJhLl4n/fo2EAvo6?=
 =?us-ascii?Q?24SdHwwlz6b94ckt/OUgs7TSWSAsCoZzyZJhlPxhOBKm3kgrBa3XNliW7hvm?=
 =?us-ascii?Q?IrN8hlKjcp7jegj+6jkmGwPQed7B8JlPdrp8AwVeU9qHAFvrgXGG9ii/wdin?=
 =?us-ascii?Q?LNxQbA8aSNmUx+vuT5XkLF3whZIF8sd0sy6IzwmL6lKAHlTlHdRvSeyi53qV?=
 =?us-ascii?Q?incEKniy2eNiqqp60MeCT7aTVlmL9R7aNRlmSrbh1qeorjn8Pkb3/ZtjD1Nl?=
 =?us-ascii?Q?cv2pLoKBnXFED72sUJfzS4zbBoaS1Dw8SBXmKV4DAwMNwZ7f2WCtEWsaQrCN?=
 =?us-ascii?Q?hnrcnLPjh/321u3ePKZW03odY+JGKiUO8vjIQfAMP+/1WGzK3fZ+u9nzwbdy?=
 =?us-ascii?Q?o8O4HNvkVZ/E0iBy1otVesxLLBAtArNHhRIn7go136oJEZYQwgNzwwrHtIE4?=
 =?us-ascii?Q?HFQHHcpqy+wIDOuDtJ3TFfSnusUjS2IvqLdrSWKo6xt+Q9UbSEdHymNa7cPP?=
 =?us-ascii?Q?zTQ/kcshsfDnp9A9FRYL9IaxUnSD6jJmDezUEHoh307u+cS7Lj8wG8VhyiR4?=
 =?us-ascii?Q?+9rj9/1t/geL1cV5B+SiyoVP23MLK6+eTOOrYIFWYe2+jHvx/WIyYpATUSHr?=
 =?us-ascii?Q?pHcRD7F+o/ln2RgzjHZawbPGrFIrNtLVLK15HEFsbbwqAPi48jCtSPKbi0HX?=
 =?us-ascii?Q?OMBKv3dmtPb2tCDm451XpGXZaJFb0RbCnm7vFlVfTbVAr/Ou7oO2u4aVFLCv?=
 =?us-ascii?Q?e2GtVUvrTkMW/AivLfVmG7Oh6XDnjqm18khHTKgpuf5B5ueVyi9RAZe9eGYK?=
 =?us-ascii?Q?o0szSgvKKAr6b/DY2NHs41/iVemKpXuKisAw+EaohOe36CVs5lGXYpDHsCeh?=
 =?us-ascii?Q?tX3oGmLWbndJFTLddJyIvT2eCHApZayvGCjxP9pv9ldpaHsdFZEU0LuVP5jY?=
 =?us-ascii?Q?KTY+04nI21kjaHxakDutKuNOlZALpzbvAbGEoEwtNQizvFhTcHGdng5cqg8j?=
 =?us-ascii?Q?58w+VnE2WpWe01pRDv0xJg2hKa6y3DpyaMdZZzKiosRfD0gkGbmIcE+0pQvi?=
 =?us-ascii?Q?HMyjwKuuIMfjVYhAW86+xSOTbGTqZ8cKRnVo0Os/h/iN8Zk826uOz8RFStoo?=
 =?us-ascii?Q?NeGep/I3XnY7kl94CCRoZigoxT9Sc2Zzo2XEpEZ2+np+x6y3n/eRUBg1uFIQ?=
 =?us-ascii?Q?xL5H6mPwRCheP27IOcEY3fPrJhjCFF9zgePrg5QpyC2T5dihOx00Idz3Agb0?=
 =?us-ascii?Q?vMGSQ1n/WFr7Pod9NoeHam7OS/gviYKbzgZw/pFAXT5mhjC4ELxpsVogOp3x?=
 =?us-ascii?Q?1NefQ2dr+OrwAF1jUJ3QpQD0q42IKgimdkUi/cTB65xYadzIy6p0Yzsberey?=
 =?us-ascii?Q?EDvvpGBMaigQSg5lDY44hnTAcJeTtHFWIG4RJmFuZp83yAyeKLfJE4xJz83H?=
 =?us-ascii?Q?qoG/+CTGdpbFrEnkNPOq1H8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a6f6be0-3a70-401d-e6be-08d9c53a37d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 11:00:08.4435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: to2uwMJ3KKOjoPoh6ipY84XIEsOB9h6DHET/ZIQfl0uub/XBXJ38UHJc9csd09QbYNNW0iG3AvfS6rziiMiSEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH -next] i40e: remove variables set but
 not used
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
Cc: "ndesaulniers@google.com" <ndesaulniers@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 Abaci Robot <abaci@linux.alibaba.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nathan@kernel.org" <nathan@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Yang
> Li
> Sent: Monday, December 13, 2021 8:41 AM
> To: davem@davemloft.net
> Cc: Yang Li <yang.lee@linux.alibaba.com>; netdev@vger.kernel.org;
> llvm@lists.linux.dev; ndesaulniers@google.com; linux-kernel@vger.kernel.org;
> nathan@kernel.org; Abaci Robot <abaci@linux.alibaba.com>;
> kuba@kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH -next] i40e: remove variables set but not used
> 
> The code that uses variables pe_cntx_size and pe_filt_size has been removed,
> so they should be removed as well.
> 
> Eliminate the following clang warnings:
> drivers/net/ethernet/intel/i40e/i40e_common.c:4139:20:
> warning: variable 'pe_filt_size' set but not used.
> drivers/net/ethernet/intel/i40e/i40e_common.c:4139:6:
> warning: variable 'pe_cntx_size' set but not used.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Fixes: 467d729abb72 ("i40e/i40evf: Fix code to accommodate i40e_register.h
> changes")
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 5 -----
>  1 file changed, 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
