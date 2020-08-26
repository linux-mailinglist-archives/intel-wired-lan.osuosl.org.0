Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F07253A32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 00:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 151A486BA7;
	Wed, 26 Aug 2020 22:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPeEdKkv9m0P; Wed, 26 Aug 2020 22:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8BE7486B34;
	Wed, 26 Aug 2020 22:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42C2C1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3D168883D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2Dt9zP47yIO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 22:18:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7CC09883AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:18:00 +0000 (UTC)
IronPort-SDR: v1xmhTsxOXXVyL7WDwhDxO1N5GrSRaVqo0k56hpUGSncBB2jRkcHl3atQcKGAcS5r9ldu2KzqZ
 rkD+z40xE8Dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="155649991"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="155649991"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:17:59 -0700
IronPort-SDR: QtD4ssJ5H2hwrwJmHe3Z9/GjgPm4yF5nAoOREiB3a/Z+Vrtx/AHzxe8bs3dpBTJ3oMDf2Vaz8Y
 S32JXVVFVbmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="499888027"
Received: from orsmsx606-2.jf.intel.com (HELO ORSMSX606.amr.corp.intel.com)
 ([10.22.229.86])
 by fmsmga006.fm.intel.com with ESMTP; 26 Aug 2020 15:17:59 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 15:16:34 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 15:16:34 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX163.amr.corp.intel.com (10.22.240.88) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 15:16:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 15:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e570ajqhKUOizpJpRqUqWwZR4r9FRBw/VDBP5RG7xgaf63Y58H/NOmQgUFrAqSk2uZSACq8K7sDMylr3JxUCN4NnK0KjxG2RgoyBCoQuVlPGAlkDlbSNkq5XwwjSuN5UaAiEoV6Xl2JrtpZBPVhYBi7kCyiLwdz15PzoIhmYW9EsgX/n4ezLzMWszwVYUCbaAQzy1Zt/IuycYiqmTFGyx72QnTon1qZsBoNI8sl34T4IkLdUBgwti13eaCOUW2Z3mXHi0E9L9a5g+TLom3PJ45NVicvQ3H6OWsjhbS8B9cXN4hzlGwZB1cSOtd2sIMTIexf0E0dOrQi/7k0fKwL/vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQ3zZ6WW4Q9nAtl5rWO71aNGeUPMdhcw47C7FkwRnDE=;
 b=G0TTG4MvSnkXIsHNHA4KmdDU0c0IFWw/uc34BnDyYBB3WXpk0XX01D9shE09Ucov+oQ8Fh6oiMGp7gWmixAjCarupXYdHDw4yKDN+me2WjsIJv5uGhZgu4zPDh+RSWnbMGaFAM3zmImw1S25YFAedWvkIyhQ9U+UIfHjpV6vEuuCS77jp5oqSPIjIe+mMPbCad3OVRhFMxnNuGQDGNFYH6uje/cUxj8Xag5MxrvagpimNbSBSBcWDPNlJ4Mu531BkBXBEilRzar5OQHbCoE9E6Nm+jif1SdjhsrhowSoJBZhDyWlNUmrSPBmM2xK8Qt7GhtN93xeeShzy0iDzCv74w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQ3zZ6WW4Q9nAtl5rWO71aNGeUPMdhcw47C7FkwRnDE=;
 b=UxN+idMTpgrkIbvMdnFPPRVJ7m4n+9VSIELLQzvnkxpyDhMZqZs1ULa5EvGF3sqCbRyM+SLBwkcxXRFGKfdyILZ9kgUlPFoWgJ2ztYPBWqwTJyfpZRDdyEkfXIVDk1RNqYYWt1q/ADriqhiAASNtkFVccScjSagbokc1S5ioVnk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4122.namprd11.prod.outlook.com (2603:10b6:5:195::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.25; Wed, 26 Aug 2020 22:16:31 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 22:16:31 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Remove
 references to SYSTIMR register
Thread-Index: AQHWd0Ywr9D8dGqdiUuu5GI+qU3WGKlK/l7Q
Date: Wed, 26 Aug 2020 22:16:31 +0000
Message-ID: <DM6PR11MB289048578A7315DD008F5161BC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200820230217.2005122-1-vinicius.gomes@intel.com>
In-Reply-To: <20200820230217.2005122-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da4b165e-cf48-4243-74d0-08d84a0dafdd
x-ms-traffictypediagnostic: DM6PR11MB4122:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4122B19A3DF28EB8A90260EBBC540@DM6PR11MB4122.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aBB/JZ+AjVpLyOollRAGqq4+Mbnzv2E9vDGmxy7uAbVDI/XNMm2HacSkM1efPGz4Igmj+4RhSrS2x8TpJdiKAMqaWnFKgEEUTAKK96CEO+TNcf4FC0Z0+0ww7601R52rLTRg1i/eNe/dgnmrJD7cw5PBMLueRtkYa+MK8mxtinz9rma4H+8sLG7Oy+JDDEolmPiAtnaO1DJpq93mv/ECuyGOlZzcn7rrC1TNt9hbKx3GGkc64x3wy/lxkBPnFmOkBriQmGfneDy84gjqa9duvdvWHdD29A7pbj0Nqxo5FkQ4zPH/Svecwqo1EMKvDEcq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(316002)(76116006)(186003)(2906002)(7696005)(66946007)(478600001)(9686003)(83380400001)(71200400001)(86362001)(55016002)(4326008)(66556008)(110136005)(66476007)(64756008)(4744005)(8676002)(66446008)(52536014)(6506007)(8936002)(26005)(107886003)(33656002)(53546011)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: D5tz/PHke29jEo6++JCxyQyJdy7QrtU2IHKVBomSxIABzbn3W29zoeaX0YB2ZL+MX3nQ9aY0mTlqe0ZUOqZ8xGHL4bi3swzivZ8h1jgF5e1PmsJe0IwX5DnZpo5zJCK5x76U67Epe4aQP8c3uWXiAhtfKHuWY2YMkiQmPTz3WMhhOBDq1qiJXeSHWR0NAbz8WrF66M6xhh5So5yizxUi9kuV6f5d/xEVyFy7EQJDQFD4fiaNJ7F0EGYx4uK106EWl/s4bHMGyEyzl823Plv3LyciN48xvFKXceCVUokgdoqRc6qyXGmvdnB5sQqKCYs1VIwM5FueelOZOpBE6iHdmBdiiBGue87zKnotX1btaYZ9dCVtto2hJzzwAtH8ukIRhGI6yJLKSpjm3QMHAolpiU8/ttZt4MR7rXAoFlMH4itFCxzxqGmrvLT6twbWHYbZS+RXPS8zte3+AbHdL68uBnEHm5JaUAyEa+bgBpP0apSl9sD1LinKD3C2195UI4qo6KC8SMTD2Q0bx+eK0E2U48mehBhb9FqQkP7eTnMqxQ3mlcNcReCLD+f9Uh8AEO6JH6a+fCvEV6XsNxln9cbPTeKFxu8xkqE7DGNDFYOzb0ws0W2ykhISm35J/iat3cIMJRPQaJLHqaAzFFOv+yl2xA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da4b165e-cf48-4243-74d0-08d84a0dafdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 22:16:31.7911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vi5m7Eys3LPj3dooCx4cwFKpreWz6dulRsx1JKQcSXfD0VVTQ94DsT8CRhbzqVE0WxeogozsAEaWJU4Y/my+Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4122
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Remove
 references to SYSTIMR register
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Thursday, August 20, 2020 4:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Remove references to
> SYSTIMR register
> 
> In i225, it's no longer necessary to use the SYSTIMR register to
> latch the timer value, the timestamp is latched when SYSTIML is read.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
