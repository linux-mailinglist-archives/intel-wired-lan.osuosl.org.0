Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E7B35A515
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 19:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E6B405ED;
	Fri,  9 Apr 2021 17:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VpVazRGEjq0L; Fri,  9 Apr 2021 17:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55ED8404AE;
	Fri,  9 Apr 2021 17:57:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED56B1BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 17:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6709404AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 17:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1yvl5SEXeTT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Apr 2021 17:57:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD6B140442
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 17:57:49 +0000 (UTC)
IronPort-SDR: UazQXVebVHb7f/v5UZe9NSiAmhyoGZeOp4Exx4GbZMdKt+hh36Hb5vFUbsTsR2tDReT2HaHLEm
 yHp3VF9nwBww==
X-IronPort-AV: E=McAfee;i="6000,8403,9949"; a="190616044"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="190616044"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 10:57:48 -0700
IronPort-SDR: N0UY98XNb6IrWxAmRU5BeT/YDXjLbTFpZaw30fVIPWNgL2z7Yy5sx9o++wI44ofPs4eAThPYCd
 FkVb+OBG4JpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="422830650"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 09 Apr 2021 10:57:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 9 Apr 2021 10:57:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 9 Apr 2021 10:57:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 9 Apr 2021 10:57:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lnzEM5qQQeRg7QCIM8tf5zMvu91ojFyEqvGdIprGh9q5mzt1Im20z/xmp4gG2qRBIInwGyFdkguhWiAOlfixR5ykaIwls8SnL1L4uMG0LWe7DoHVAHE+Ng5yBTAVmXNhOcdTUCm0Lrnha58ajzuzEd7wsPKCGZh/+JQYHjYueKCm79ZJjqAIecgQn/mnOQKZLXiIi4E9A7p4nrD2Mn25cIWNAnZ3LAG913zZT3sEedDj1Q6lOCE6H4vd2rJgPWMLAA2hD1FGH979kolJP/LZCpCba4YTWskbK4IwgvI2yn5izB0W1HVY7RI2vZMMXoRtNUYw0BkeWADbK+3ZjoR+mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXw/dQdShZXfe9eZaAB/iFggg5LgtFzrYI9/URMZmGQ=;
 b=f40RdDsX/wikYMJ7t7a59FEyNOXweQ4RSv50BcFwL8a2/CxpY+rC2GmpTZHZUue2xziryboBlj02yRyr14IO59Ph2x3NLmkO64wbujjFHxMRz/VtAFkopnmeMOeLKJvXT+zqn0pQ5omXkdZ+0Ex5HFi3ric+716fZl3c84Fe386kWSOjwrj0HRNKfptzZcbtDIxTPwgjdC7Y3gSkU8bIIXjmyUO35t/0LABU6rBfsOX0f1+JGgJBK0KrfQQjUXcShOJl/SToNeLQAkcLI4SM0IRg7k3ckZM6hIW2mPerz5Kb+Dhq1yo/l3bX3fMQeby01/kVjgFfAdUS+Gyj861dgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXw/dQdShZXfe9eZaAB/iFggg5LgtFzrYI9/URMZmGQ=;
 b=bIGxtlIoS+nV3vlGjXAXshYxOir8YpRLi82BnC1tqlHbgnw4XbVabNQiyrKyAwjSX3k7vo61g0SObpzrMUjkO6StcwFkR/RjaW3rss33LfwxnojpqdUEp6pmLBW/Wb2VE8p9BX+TBzKgqc60aF2IIoT3ZE2UeY3fdFGN+fYMT14=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR1101MB2288.namprd11.prod.outlook.com (2603:10b6:301:53::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Fri, 9 Apr
 2021 17:57:46 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4020.018; Fri, 9 Apr 2021
 17:57:46 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/3] i40e: clean up packet
 type lookup table
Thread-Index: AQHXCj6MtajiflF820u1dgfKu4EqR6qsvw9A
Date: Fri, 9 Apr 2021 17:57:46 +0000
Message-ID: <MW3PR11MB4748F2AC97D38923EDC08F14EB739@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
 <20210223234707.1170711-3-jesse.brandeburg@intel.com>
In-Reply-To: <20210223234707.1170711-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 535d5651-b484-4ac0-e318-08d8fb80fb29
x-ms-traffictypediagnostic: MWHPR1101MB2288:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB228812D737C0AD0131A070E9EB739@MWHPR1101MB2288.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d5fA1KwXIThzJUT8oE4SAgPIwZfZW3IMB1PKFFUkHEAd5lL6lEzxIFldf59SOphKIDzm6C5bys8glITqHJtzjMnz680AiHJBkBd42l7JnsRmPljmAo5pERd25Lsq+Wu5n3ixGV/B0VcCwcrPYK6VHxPuazMRXiPCRhracZnSDRWrqrr89qTMRgX5khDbBW1dQbcnrKVOBr7nVTw1RU7GcMpuvaMz/Sfn+7J4YRcNlqZ9YgyXzwx4U7kYmt58rjRcBsAx9YGb+clKdN0RHMFpqlJ8eh6RLV5RfSq3ei+yAX1SRjeGyfvqMUUCdAzP/XwTnsySkxbtwgzHb9QS+qSDQZdO710nE4xVq+vwaOHtOsOiNuuADHiuhe5xyvExeqlb67I2UvddqIz4rIdGM8hxMdCLH34OmgsKiMzi8gRXW7wi8N+r3MuXsKAkvvLKVKOgt3jQGxlDupze5T19d/fSd0FTZHRdwCrAORts/bgYx88V1DjMdXx58kDoc3DtkXZNCyu4Y5beri066ZtaC/j6Zo0FpCGarIAQ4ayNOI5e8cSZy15h+jukhESNyQWZlizW9oDQJOYHupoURvRXknUGRbMU3+VkdDfodVAhYiQrLfN2e0UiRGyPEH6o6WvO6Y84cPO6CexeKm4BUJMSP/teSdvBP8w9/VaFz9l40jnAcC4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(366004)(39860400002)(376002)(136003)(33656002)(55016002)(83380400001)(110136005)(316002)(4744005)(38100700001)(86362001)(478600001)(7696005)(71200400001)(52536014)(8676002)(6506007)(76116006)(66446008)(26005)(186003)(66476007)(9686003)(64756008)(66556008)(2906002)(66946007)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?fyj9onibGsbNXIwioHYzKdM9d4rmnSf1RJ90ctDW8vauQiJsiBcS7cbx+qap?=
 =?us-ascii?Q?RIYFtez6mC5yB7hyodhbYWfa01VtWRn87oF5CBAPOHGdHFDrE7/YS3nj3PlF?=
 =?us-ascii?Q?e0CMraf55b6chAoEtHm2N7CsYIvei4dyIs3fNJ7lgsA8a62v5mcAr4Pmqg9u?=
 =?us-ascii?Q?12K2xlgBEIApFJifn1FH7gcGUzskzhXO11uf8QETZUsUZGc/qLoOmJbe/+c2?=
 =?us-ascii?Q?gKIqmeOSapseJIyRzmD0uLBkpPp/6I7u93RQanS8PhVJ+7uMfkAV9agQrc2N?=
 =?us-ascii?Q?pQrrC9R5+dHEPleKJsdffy4OI0NowHeAuOZPPfS80TfKLtPX6rh0siS6EM9l?=
 =?us-ascii?Q?C8nUhdwHnj1SOD52CgU/QiO1Gsnv00/z5ebJ2dYlBrKXRTIfOi+MqPX6hnZH?=
 =?us-ascii?Q?qi/lgcBRKeGm7Yz6OvvnwSAQ82e25iuDR6rdpAU6AIYbLK0K9in30aPd/qpz?=
 =?us-ascii?Q?TCdwxeUjMjBC8xpaEq33Edg/s3gM9a1oAGh2eqq+5hrg8rBNRwo6Sr/ZHPVs?=
 =?us-ascii?Q?DfzEsX3H4kd0Whgcmis3nr5YjuyiAduALOJrbdQG8jRtB7FG+Y905ac3AQOl?=
 =?us-ascii?Q?vUZJR+cn38jVDGG33z1ipu/iXf+weu8X19ceXbg4hVBPvW3rFDwiNbSbC/tj?=
 =?us-ascii?Q?hMaS+LHM3DPC+RjLZaz+pC7Se7WP+sg9mba+zdfXG1kzmRnv/gO5wM83VEpt?=
 =?us-ascii?Q?qe4E7oBskaYghYgi0XauKQm0XIroK3UWSunzpKehaJlp+Jo1ZR3yj+yHfj5J?=
 =?us-ascii?Q?YHpEZbkdQ1iVimEg+QtjHasBI/NCpXERJzCProyDtc6TUqhhW6kmHcCuqtgM?=
 =?us-ascii?Q?uMCalcef0JT8K5iFNlww3cXKqF9usWE3NzUU/E7AJKoPTXIHW+3d0ghfp//n?=
 =?us-ascii?Q?CyrnbZ3bIwW2MMg1LQkLGNPym0Nxn5JR16iZfQYHzibMfUc1o3dOw7dEZy/D?=
 =?us-ascii?Q?BjKxU/e5KP9bH0XArO5RoXtcnFNSwMtUCx696ctWwidc5FnVqrgauduyhomd?=
 =?us-ascii?Q?BOXWZr74bn0xpgK57tSuSMG6ICvNtfGN90AY34jnnj5iFEPNdJ3uN/zHg+Wb?=
 =?us-ascii?Q?FqDuJgxhDrhY7nNaLvF77FHD76wUhzLCbVeWxJtC2NxtSpzCi4xTc1xn0HOx?=
 =?us-ascii?Q?CArfQRHTdh01m/HqR468LqgnvYAcYkvsZKUXPA723J4cUpdz6iZ9z0uTH1Bk?=
 =?us-ascii?Q?tk6Pqg2wgnSsHb0qT9BT4N3JHCpx2s+wh7HFMOfK+ioLedw0zIwAqJkq4KZ2?=
 =?us-ascii?Q?yoNjSrjHbImxcrphgc8vc6gdIWXgLZADDmEDnKnU1cBF5ZV0/TgG6OIZQXhQ?=
 =?us-ascii?Q?V8c=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 535d5651-b484-4ac0-e318-08d8fb80fb29
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2021 17:57:46.0499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WDSJrk5FLXusAIK113bi/Ps2X6hxI0BEYftxDPdVPk0VVUdo8A4Yu64jCXlzeYF9NiJY+SSC3uG7bfZS36gTEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/3] i40e: clean up packet
 type lookup table
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
>Brandeburg, Jesse
>Sent: Tuesday, February 23, 2021 3:47 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v1 2/3] i40e: clean up packet type
>lookup table
>
>Remove the unused ptype struct value, which makes table init easier for the zero
>entries, and use ranged initializer to remove a bunch of code (works with gcc and
>clang). There is no significant functional change.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>NOTE: this patch generates an expected checkpatch error due to the tricky
>structure initializer macro.
>---
> drivers/net/ethernet/intel/i40e/i40e_common.c | 124 +-----------------
> drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 -
> 2 files changed, 6 insertions(+), 119 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
