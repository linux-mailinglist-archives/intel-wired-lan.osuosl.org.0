Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A383959BAAF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 09:55:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D474C40487;
	Mon, 22 Aug 2022 07:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D474C40487
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661154949;
	bh=9K1ZkkS2tj76nMMzUkBHInC9+VGzL28cIKYsrlYlmxg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TufhDBBRbEmlG8MwA/30krudA76F8EadrEL+1rVKg2FKbuVKm2IRhHIvDno8xLTnP
	 UWEGsUNFBpPqpUtoNSgZJi8aXCmCGiSX5TTOtfU3myvc81pbKyOha1KvP/ZU4jDiD0
	 f3HZPZ96F91rsbUE8/UIFu4rSc4BeUKWJU6FNzmZVzDIs+kZgNDmEjviUGq8OpT03w
	 xJklOZAOcl2BImGFWa8VpjT3eOcl1MIb02zVdbQ2+1y+6EQEP522PB8JeHHBQJi927
	 EgLHJIhmtK9DWjIhVTZ+rHt0fiR4f5PEO91bATPYCKAd9xj1zfR+Cv882sWnpYTWFR
	 o9jWo34q1qYkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hYDih5Q8eiU5; Mon, 22 Aug 2022 07:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8B7740169;
	Mon, 22 Aug 2022 07:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8B7740169
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C3301BF577
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32D03409E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32D03409E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5DctdYs4qaW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 07:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40056409A4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40056409A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="276379625"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="276379625"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 00:55:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="638085625"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 22 Aug 2022 00:55:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 00:55:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 00:55:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 00:55:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 00:55:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BIKEpJefwq+BQxIFQ419hyc7UqeGcsksWfEasto0YEdNXPKrvpVVa6hgu0Q/SFLOoI5NGyrZja4Zzymxa2kSctD+dVz1g7EPn4u1M0FODADEfheIezOgOb9/tyRPHF/4O3gmuSisYZqU/C/UHqn4yefZMuEepVxaEp0hgfrPtICTarZ7otQynuDo9PYqJVc17iBxEHuxS2ReW7wj+yZE8W898Sc4DKZUsOMrq8Upx5rO4gqUwNiX3xBYG990E2azmmBU2zYY42swb6L8WbLYpxFCV3oTTNeAmMa1iA0iOaHKsrDdBzKQmSlFsVLqGD32JSfQi8h0oJy+3HVobNJ4ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/QFsftYRHsYVqJ3lwvt97EV4g0thHn4VkM8qWe12sBI=;
 b=Q1u6cu63yfxr8NnxpRqlKf5wkWmc0lUBdUyh+vjUTRAdL2pMOGoMlwzLFLvmWudVpNP9u0znboSCwXSX4OWoZ7Ehr1a4aS9UHSjawdzgR000eETzyJC/PNFImBl40GMvuR5lBja7Vgx4yNvXyzfyqR11QD2/FheZXyds04hmdFO+4sJTdBvumw6doyrJoo7sUEW0ZzNiILT2/A7EGrFjawncgQnLOEZWxxi7BOJnbtRkR2Fc2NHPh+thmQzfS5LRXHHsYD149acGFXFpiW9lJg1zFiGRtpwIpqCmdBrWrbTM0YIJebH3Y41Udm2OUrzLNAJ5a3rqQom9BKe57f/NUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM5PR11MB2011.namprd11.prod.outlook.com (2603:10b6:3:f::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.17; Mon, 22 Aug 2022 07:55:37 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 07:55:36 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: use bitmap_free instead of
 devm_kfree
Thread-Index: AQHYshhmVCZw2aLtP06Yp5q+VI3Wf626lNMA
Date: Mon, 22 Aug 2022 07:55:36 +0000
Message-ID: <BYAPR11MB3367038B3124E4DE950E5B2BFC719@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220817085320.58968-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20220817085320.58968-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9520cd7f-faf0-44ba-e832-08da8413b2ea
x-ms-traffictypediagnostic: DM5PR11MB2011:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mFCBmZn6Qju5VhvYvPOgH9LejT9lx0wVA2Bq8/dB+9H4u1hSksxwUIJr8o3WaE2GNrGzbIkFawmOEQeSLECqZR4I8XqQzSxnOl5W80lWrhjXpXLHh9L7x09tSahZv5iwcEtJR8omT8NyYZKqFfwJZHBhyNB67HNRXPnLJjMcd8rYGm77Lgrq2e67tu1pn8L8+O5PVByLSWfFXMjCVeJ0vGUFh68Ck/lUyC9JYa7du7W+/XDYLib/6IiNAPtMEY32Ucf+14Omhi4/I/U0BlPXENhCEjnw5fDoE6+3JLpLDrT/Kg135n/TUBVYcUouWH63TIWo8TlC3YovDdRyw/iz6QKrkfDYiSdtlnZPMBM7Xcot4mPAI4PvH/KxjEfcZYteSva9Y53m+Efz2K1YdXf5Z/2Marlev48A9SZpI81xcZLm+t9wW9WUwAJ8Z2dQSK3EmS1uzUU6JRD/7ALTyqGL6a9mQKi04P/KbqDbrHWV7+1uS4xI1U+MzK5WXx8Cq1XOtZuMzscCZzIlRFlxa1NltkRbTP6psGNuRzLLRhglsd3t5MRdEIWVx0Pxfa/WHRLCmn2RKyrSCsN3ageMVH7imqFfhdl/T6FdC9DHR6SOzM0MO6StIDvEH1nKuQvq/buPJokBVKw4cXnk1k9lnS5HcYfsY+b3G9HK32X47c3RD5KiJt7RJa0BCSNutwXvywtbT1qap3PTRSAKtHLl+b8ToRjtBktneCnDva4W9qtaaZYm4VqMGbB15Uo8pnTeHSxIDwjH/O46Gp8iOPsQ+1UfsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(136003)(346002)(376002)(26005)(7696005)(478600001)(6506007)(41300700001)(53546011)(33656002)(66446008)(66476007)(71200400001)(66556008)(64756008)(5660300002)(86362001)(52536014)(8676002)(66946007)(110136005)(2906002)(316002)(9686003)(76116006)(55016003)(4744005)(8936002)(38100700002)(122000001)(38070700005)(82960400001)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0FBcjJPUHk6oLLLjUaK50S5AYp+MGz71eie91L789z1OmlomRWkdqE/QcHJn?=
 =?us-ascii?Q?FZwkgzLmiU3LAQpUw3c9Cwr7hIBGH9pSzT1pRZQP/KDOLxzp76n3MQ5g6aVP?=
 =?us-ascii?Q?uJXQx5NOE4zgnTjMZxIh+9cVSKk07GhqtDJrZUKrAVnvLUJcYic4VxWfROvk?=
 =?us-ascii?Q?McgmpAlZQj328142dVwinhFV/oSZoDvLkc07IAtdqClpysI6VSBPBAJvNXig?=
 =?us-ascii?Q?OlBCH3GdWYQnfohJ8xIlqBl2yUj4uJo0gx7SI/vivg9YKGe0v3GKoFdmBU70?=
 =?us-ascii?Q?odJBJbSyMrSlcaIJ9lkC/6oMJ1djkMDg9ZkOPoToxEvitTMj5PVOdPDwyslD?=
 =?us-ascii?Q?AKGMSgEqxV2aF0a82crhjQwhKPM6VLdtyKME9ck7UAdwtiRSh/cNriqimGBM?=
 =?us-ascii?Q?XGe61/Yu9OUEbUtqli/scQHLo45KO/zqbixhEX38Ci8/WMCiz0gEWaf7sLUi?=
 =?us-ascii?Q?XLHfYyRqxvkSsdOnHTuE3ILOwnJHpwbQEWVUJhizJhAxAkzJBHaAoXnU8gKA?=
 =?us-ascii?Q?ZEcDs1E+77R7K13G66fUJ2esGLY8m9AmCKacNWJM4BXwWYsra5i0PUpJHrQK?=
 =?us-ascii?Q?T9jrSoK9oI4FrEbmLVc7Yy3MJqIgGyKQhzyDE/FsVnESst7JpUz6N5XNd+9c?=
 =?us-ascii?Q?b/pU3jxxphO2gPp+p3tAt8zcPkJzL00YXQRc3nbAmVz0b8iqnRENrHy1Ejhb?=
 =?us-ascii?Q?4Ad8l2xIjoPEpL/zYBQge1GKZEGLQNPhmopeyRfJ+yhnZ3YyqdJS7Gbm34Wx?=
 =?us-ascii?Q?SvHwgzv/YoZ7IRmmTqtlELcCJ0MU2NC8Yd5D0eZOxlSJh2FaZQW4JvjkKFqf?=
 =?us-ascii?Q?ICYT483KBp8YveWRwuOV82YUC2meJpokGc5w/mBDNHjo75TKOcPpbnEV5StL?=
 =?us-ascii?Q?hQWkvWDhRZf/dNOe+YgE5dvtzYlZfptbuIrB97Cv0uPpRVGEoCcnBmgXAB5B?=
 =?us-ascii?Q?bgXb3ugtwus+iO9IcYpLw674ehQO83LKhxUjj+FPyHekKwFZqEeHBDG7NoNg?=
 =?us-ascii?Q?FiuqCh/MULzss+tcYtF1IdfoSA51hS0YwGb6jhKvIhrtPTBa29BkHVN1SdW5?=
 =?us-ascii?Q?FZ3w7NjKZAq6o0AjasR9L/bxDKk6G/bBa10lQCUV2Vp3cEg056c7VcGsl70C?=
 =?us-ascii?Q?5McfaJRAzKehR0Nl7/9N43wv3d25VFvBuwK9d1vfu6e+BIkwE2t1ku7pfDnR?=
 =?us-ascii?Q?OBCYRocqyA6Y7uWiPfgG+3I7q0fXUnft5Sg5/mhP/sXguXjU9z0Ke3Z2gU9F?=
 =?us-ascii?Q?wMz2E4AajLejytlzG8V/yMZLLRaaUKl19YoYrjriJBCkC3wrOMC2urrQXrVO?=
 =?us-ascii?Q?9FMgufVqLO6nfGCM8Pym7kI4OsZF2AUzjIN3Ry0DEzwZOUEESJmQHsStn2Gy?=
 =?us-ascii?Q?9BKwSfxMGkJW5PysgXNoJAoFtNszyYVAz6p3rF28TXjBORHnYjneDhyu2cCm?=
 =?us-ascii?Q?ybczVbPRhENtll+jx8tTM/I9HCN3nTtyHUzvkZ3nsHP9fAxTtY9NWiYHuWBl?=
 =?us-ascii?Q?zMsKZ/p24n5aK6u9hCqcmA+RpL5bcONTNEDu3rWabvBD1lx7DzO5rwlAHkVQ?=
 =?us-ascii?Q?/QaI9alZ3ig7n1abagPVCEvdX3f2uZIN6J8AoWhd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9520cd7f-faf0-44ba-e832-08da8413b2ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 07:55:36.7174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kcEGZ5/j03e8psikXtwjwkg+ClWqIK2crK/EghYedooNcuP+Qm2QlvHlQRMi2JFx0LJGjsgfso+pAJyXDyEKFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2011
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661154942; x=1692690942;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XZSus6w/2nFpCzieHI/iJOloUfhI3JPseqqn/CzHZks=;
 b=W2xYSw/8WWFhNkudh6NyY25pQ1GfaA5aQcnZq2MQPt61x0x5RDtN3asv
 sQGr6GHpvrnOr2qbkJzdXzJLCiXO+kfZW838Ij51BqXfRE4bv0u2OtTMr
 hu59QFoofu1Zhm1eOOrVpfk8JksrpI4PDbeEqzATD+JhMCSwBDI7dpOkk
 OuR/iDKuhHvnBqIZPLF0LEG1WKb0JqxLcfOVuiEgPf+B1dFOgLtKwWAl7
 fO2FztD8pfFkbtcSy4EOxr9UzJlsHK4Pz1zahLSRczxq9Vh+KlLjOiBdu
 pa2reQZAcUKkXYGvz/fgX+RArrq6PW1LT7hmKtyDbR/M4CuPT3X2qh+b7
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W2xYSw/8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: use bitmap_free instead
 of devm_kfree
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
> Michal Swiatkowski
> Sent: Wednesday, August 17, 2022 2:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ice: use bitmap_free instead of
> devm_kfree
> 
> pf->avail_txqs was allocated using bitmap_zalloc, bitmap_free should be
> used to free this memory.
> 
> Fixes: 78b5713ac1241 ("ice: Alloc queue management bitmaps and arrays
> dynamically")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
