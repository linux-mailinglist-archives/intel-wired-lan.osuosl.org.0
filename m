Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1674B5B390C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 15:33:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5A1680B9D;
	Fri,  9 Sep 2022 13:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5A1680B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662730408;
	bh=fgus6PKG7hiEf5XuSOdVE1bEhTwd4t+suAoLWJElbWE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7og1QDbbkgPS8VMWsboOQ0dgnelsNOxZ+DEvKt1wryCUlBKalasCaOyHhd+/u0yfB
	 cKPy/Lw13IHPK40ezG4cutzKRk88zckvUI9V9FAzHbEBYvlgv40j9ycnJsGjXyKfLc
	 T7BWHEFxFMG98sCHRE1xiFdNtkSNWYTUeQ8JxqUubipS5aNboo/3bJQbqkyjfavNAa
	 mM0aFXBVKzW9iM7ImVN00p6yU6Kd7hH6TMpcG7d5bVEXHHfV+ClDtusiNnxtV5rNsj
	 qDFRj6mm1n0qwj6MClkOki5p3tGc2+427SJnpIn2da2+aKRUjFX4LhtyJl9fPWO0NJ
	 JZDtE50fqY14g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxQpy1B3eucI; Fri,  9 Sep 2022 13:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFE9680B35;
	Fri,  9 Sep 2022 13:33:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFE9680B35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8771BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 13:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55CF241A57
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 13:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55CF241A57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eNFPhipHxHY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 13:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09B9A41A5B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09B9A41A5B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 13:33:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="323682430"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="323682430"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 06:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="943777446"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 09 Sep 2022 06:33:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 06:33:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 06:33:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 06:33:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 06:33:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f08h9YrkfBaQEJjQk2xEnqpWri6kQCP3KVrzXq6fX7EsaI13pF8giJdSV44OxN+LEG28k44yI77F8fTAf8sDgSSwsO7LULXQzxwYqtKQqmKvFjIRFgL1buXrmPIxEuIqkFp2Ws91a3T2EALLYt7iKX/Dp+hUVxCiEVfy2ufozu4JBcMEXN/V1KxZ1orIC5kxj6RM3RSNE8CbvN5ZHF3tH9436liVVdTi5eGVfNwwISVtW2xgmRatc4afQ1urcOX3pNRrd23jA8ayKRTAET+Mvd5wG6h2g0Q+DXN0+oyrvXjxjzdttbgCPalz8G4PtwFZZSK1DP7z6ocEyo2DAFTyaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2DOpkBUzNvEInc1PvqFGjfFAITtCTbSq6C5JtMydF80=;
 b=IvvGqiI3urCisTu64z7HionZsO1l3Hl/v3NObdjxUcYME/Cz1tlr8msYR6CdY3URISukfToGWWNmtVc4y5soOMdsanM6y+pAifS0K6e7wA5aZDLg3yKSTys4KNSfIGLfabWtu+iLVj34Em9/KnAH9B1/67SVm0bbPDSDbxW6pqAaTDezUFHJjG7h6sjcuq1WMkXLTkhZKM0hlZOPaCaeLh25I+wAh0rY1dmpFkB4XykGsoYjLiHG7fQ7hah6lfLpREWmV1gVx7tofjOMkqctLATxWfHkdml+cDVqDdMDelTFvCP7u0eEAj0HPMC2m7jNSSLfq5zshtJlWm0s1SUaXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Fri, 9 Sep
 2022 13:33:04 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5588.017; Fri, 9 Sep 2022
 13:33:04 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: config netdev tc before
 setting queues number
Thread-Index: AQHYqw8BG9GH1sBA40+a6cEL/CKDBa3XSx6Q
Date: Fri, 9 Sep 2022 13:33:04 +0000
Message-ID: <BYAPR11MB336716C0C58A3102997E9A03FC439@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220808095854.5513-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20220808095854.5513-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2507242-a552-4e88-d204-08da9267d2ec
x-ms-traffictypediagnostic: SJ0PR11MB4783:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KxCEU16HvQpE/MIc3qA1vPPiBDuwH+WfIjFfDP2WRWfgLn7CBFvwrxY+qNW9eSRYmVAVz2w87q8auq825FBaYbfeQwyn8Kry+mk+CpQ0Vcf8Wq6ZUs3Qaln3Y8VYSZLGRlAhuj1s2iHZKVYOQf1UrxFCQwKO/h9Lxc0vt0AqqgiOJjj5ZF48wKJ0CZmJo4z47aRKexECFu8n6b7yGF65J9w3mSY3kNd+AaYY2qK4QuX0EoebpgVINJ4WtV3/Wq1kPp0/8eI3HsAN86ZvmtctliYGbzuE5nAx92ihA8vYPs9v5JQZZCWJuSPZdmi1cv3q53ToDM+w9pH20FCIu9TAS00RDNyKq30U+YetGF2pKnciH9JdjZYu4YtPR0mylJO0CfNA5emrNXGpUviKMBYfisPUO9bOYa5720OpVfJ6+Apr49SVBdnZzdzsKSNM7QVMZD/MdaFvRJUMDyUgDpqoaK3MFqauwbwZMf6Vlnt08e+VIqeshjyQ/Wok3A2LfSRUp1MPbQlDBHdyxByLN9kJ6TTcJAkE4qpxTHm1Ri7L+NIsqP7AeTi3nBXNoJT6bJrBV5VxFv/U1KoZIom056OCOj9EuU8H3cyLZo75CoTxrMowGr3DHWYQvZVBplF6jf9zZ0df58Ei2AZicvu8UiyIRbWV3y3/ZB6J4x07k/Ki+QUySSmm5t7al2Sf9FulNM4SE8qvRTFBIEktD9r0Nb4zJWaWLTu61OTxKjK9/iaSg+r4PvB7nRTYX4t1FcHJCG1ZHG0SMD2010LQma14p8OBkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(366004)(396003)(346002)(41300700001)(71200400001)(186003)(9686003)(55016003)(55236004)(478600001)(26005)(53546011)(7696005)(6506007)(86362001)(122000001)(82960400001)(38100700002)(38070700005)(110136005)(5660300002)(83380400001)(316002)(66556008)(66476007)(66946007)(76116006)(8936002)(66446008)(64756008)(2906002)(8676002)(52536014)(4744005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WW6nR4sZFNd1zoX7/habL/F4sVTlySWfNYUg7VWkTmb+0Gnl8RnQArl0XwM2?=
 =?us-ascii?Q?6FoD8iLmvF70r4XdCKesW8NMOWnJ8Vc4DVfT/kswzmiHxebKJRtRm/85bl8T?=
 =?us-ascii?Q?jxL83iBJL9rLfXwP5/LXYEi4KL2TwGTB3mFWl4Ln7J+3V8xamlqFy8FcG+c5?=
 =?us-ascii?Q?OEIXssLRV2csYTL4dQEO7eBs3jLVNJcqQ3g8fPIyK1ihsUeVzTN0MQBc9xEn?=
 =?us-ascii?Q?itwLpFPdoWBaO2/Xqg62vpsas06zuMliZ9pEEX/pvec6O4mWJzcIaqNyWuKX?=
 =?us-ascii?Q?HuqQGpDvgki3RnsgAYZuB41FOXrLgBGfuDKh1kzEqFQa44ZoLjDD5BF5Yj/o?=
 =?us-ascii?Q?6WxstijMH21PrR2pu/QbBWiEsziGFTvo27bz7nSNf8gBx1cR6VJ8L6mXu7Wz?=
 =?us-ascii?Q?g65LFTmC/GydjxpXAfjV3kcjMMMr1eCyY1SebCDotG1xe270wdjdoKf1x82V?=
 =?us-ascii?Q?ipbPtUUkQgKMhT9g+TsOb021g6iuOK9lbnzHf6YsR5ogFUHJyuO8n9y0FSoQ?=
 =?us-ascii?Q?9OJHrVJy9jkMVFkyB9is5n9eQDHoG2I3Jp+ldOqTm5s7/tibisYLSg1bV/1h?=
 =?us-ascii?Q?1BmxVVDQStIMDV1Uhw3YlgJBgkMAZMl41MrRczmzaDGr2V+8KDEwfr5OEW6j?=
 =?us-ascii?Q?7ka0uQQCllLiN37jqNwTq38YSeWuXDm9YVktsAxBn0eaQvYoJwB4jp2Y+Lq/?=
 =?us-ascii?Q?LaQRck4DFsMUy4mxQAJV9rhHJv1hWxQr9IFUmrETXOaf/JLaMQkH2g1p6nN+?=
 =?us-ascii?Q?VQxxaHuoZdsy1bRhM53i8MjLE8KvEgADWEY3O4hIRHk8j2nopYRzc8pedmP0?=
 =?us-ascii?Q?HpZA9Sf+JQSkAjxLZlBAIirMlyG16haTmRFEiWxyNxSV221Ggl3aanEf3iwH?=
 =?us-ascii?Q?Sl/M2Q4G2um+9ZOxNXPo9AC4/C5TxXzn0wSjj3sz4ByrDkpTZnuzz90zziDh?=
 =?us-ascii?Q?cs3gHJr7+bIrI5zvxLZnucBM9bMCRJ0wrCs+W09RlyYCipxM+cggb8T8uTIq?=
 =?us-ascii?Q?iL5EtjSK4ktAcLc5BZRfioqXl4OXz8oqiFotE044FtLaOcR2t8kV1G32xNP/?=
 =?us-ascii?Q?77BsbjA+k+n5d+gG4XZJDJGh5CVyE8ZUGcNb7hG6jBXAxySXqe8jGVnWQZNp?=
 =?us-ascii?Q?O5zsHcx0vXpcU42NwX8bLoAAD1onya6tFFmlOaZb3cuaYPhkE8xmuSdj4Fr4?=
 =?us-ascii?Q?8uvfVwJPlrXqcwOYxxXhSr0soGqlHqwWJ/RZni3bIPLPvdSt1lRbI9s24W08?=
 =?us-ascii?Q?4dDeY3wICQ929zUBB6Y7oJA3bEFz7twHOavL9NTTEfmTxG2GYyBOKClkq0xF?=
 =?us-ascii?Q?YT+xDmg1DJPKINgvqbNdpY8pzOkhuTY7c7mn+nT82CPQzRfBCEJPGHwae6ZE?=
 =?us-ascii?Q?GrlNoC0MUbKbn5GmPlklQ+walyDMODT3XEiWXHNzsLMAZWXYjnz7LtUXo0Jy?=
 =?us-ascii?Q?6yLgqGyA4W4w6Fk3YDGVoQ38Ivm2p0XkflR8Z5IoakvVKIBT0ZAQEqPU1R7s?=
 =?us-ascii?Q?D6HmY8JwaRTo70qBRqUlrFE9n/3POLLNSFv8gPZZdqjL0SR4ysqk5dYe+hsm?=
 =?us-ascii?Q?k0Nr1er+JhRlHx/fERquxzlZpcxq79xopx+7TL0H?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2507242-a552-4e88-d204-08da9267d2ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 13:33:04.4056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8AsgA9ly90PJo6KRtc4iL3QDeQMGtGtwccsVFQbrI3So6m1zZVEwu2lFpVy7wEyzGFiCusWdiOHrQZrN1Yfgfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662730387; x=1694266387;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zr/bTJk6Qrh4DFJM3Pr9wwbYcZGJdlS3PE/4F/zXkVE=;
 b=d5H/SS4n9c+0C+S1zY4X2jVRpZiW7PL5DUpRItSKYkeGAaUWuL6q5nT4
 tmobqhtIy5IAjw+Ib8txOyu3b/vhk7D6XOG6wOUKRI3brrcC8ZNmCIu7L
 czkgKHNJZBFbMamldlWzL2PX5h0AeOEs7ghRIdCLM/gP04QO4bMxcmJ0b
 2Db9rpeRt6LmJImd7QtSgLTWR7T/1sSeSGD3ATsC+MKCBLmqF2VG71v2n
 +7OtjJMIJMAnMseo8w6Vxe2C4nuN3AhNScn/mgcOIeAkgHEv/4q8xn4WL
 7zvOl+lnrpXLwtjeF4p0U09v+K7i6ptqxznHrEpdfHe0W8frmtGUlc74S
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d5H/SS4n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: config netdev tc before
 setting queues number
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
> Sent: Monday, August 8, 2022 3:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: config netdev tc before setting
> queues number
> 
> After lowering number of tx queues the warning appears:
> "Number of in use tx queues changed invalidating tc mappings. Priority traffic
> classification disabled!"
> Example command to reproduce:
> ethtool -L enp24s0f0 tx 36 rx 36
> 
> Fix this by setting correct tc mapping before setting real number of queues
> on netdev.
> 
> Fixes: 0754d65bd4be5 ("ice: Add infrastructure for mqprio support via
> ndo_setup_tc")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
