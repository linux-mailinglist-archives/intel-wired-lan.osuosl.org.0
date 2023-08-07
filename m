Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B2F772B64
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 18:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76EB36107C;
	Mon,  7 Aug 2023 16:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76EB36107C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691426813;
	bh=61mRHWcy9eEkYrQBoSlGA/eiWRyERiVCN4L/XAWKm5Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=87UNThWD2HcRpEQ5XbfyiKozfhwQXsCCDyAQ30G4TFwhcH77Vnad+zKA3kIxQkyOa
	 1mpO+Z+VbFZom45uDz6FYoOf5QohVId+wA2P4gQO5XIJTWeGBies7uPofWvL6wDblw
	 7wpDOfxSbPvj41M+92DGuSW3VadlLB/dUS3avq/tBWCT2/GeWZoxrlJZ3iPiUbAWvY
	 ZsOW3MIE9Mx/5C7YuV4dW0r2MRVZpQYeMtnpwSE5nage4VJVT4un8xk/ELtoxSoqiY
	 NBhCZVkqqjuJV4hZHHUAthVRXA8GGrc6eIPu2/BF0K+TM72fVafigI9MyBT0uCu2nR
	 +km2xyha0o9dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aI4-bokqSTeP; Mon,  7 Aug 2023 16:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03DF1610AF;
	Mon,  7 Aug 2023 16:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03DF1610AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FF101BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A5178146A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A5178146A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJTPruzdr21k for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 16:45:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C323C80C29
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C323C80C29
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="373348989"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="373348989"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 09:45:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="731034025"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="731034025"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 07 Aug 2023 09:45:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 09:45:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 09:45:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 09:45:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 09:45:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nCzq+/4lbKiPxVBiLa2kViHhpXHbq3MIN4Szuk7fy0ZV2caAymA7KoHLdTpN8WCyKsHk60MuQCvwBxOXrrZdu41b8u7+9BqN9HutGWTNMx1jVR+AWR7uuyZ8xTfNo24nCNzNNPZtCV9ad8WsszA1rtzq/OB7qS64EujCQ095TVnVycKw8BF0Q7wrEueumUkr/3iLvkB975ny8PeWaLA9AyfWqP7EmKctrJj6ynZ0Qd7CEYmct1UhcRFJTWVmaZMMvhqE7BCgK0iDEWSJz2We2aFh5xKIgPSDgXnh32QzmTyxG3XLYqHdOTh/7+nx7a1zi3wHgLrTdmptaHHLMo68Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zS3jURkksmemYyBNJ04gpmNyhA8mSMgdipg72iVFdLI=;
 b=MS/uDYqaV++lN620/hcsd+i6lENRYwWwOFCAUe2ISAxbVJ8BgIy23Wi5do7vdQjaqSBB87v+cITnnwUzq4YQQq2fl76kesQEPXn9+2Dv6FWn3g3QeEa0e5pIeAQ53NwDDEEk5Ebfi0RlbcYKQuUQkdYMVQxW9b2zhqYYgJDBWdQlhWO1z3J/hl3HyJcPC98wedlvye29iV9KuiIabm64GsUDQEEA389VukBWLHonAu0LsP4KC6N0IZOyY5YYUp/t8CEmJ1hEIGJzNhLIiSkWD2rTToK7nIqFzUGqe9qgeKXzlBKIWaCMTzqd2U1MeXvibsBs2ohz+xbHeDk18H9uaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN6PR11MB8195.namprd11.prod.outlook.com (2603:10b6:208:47f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Mon, 7 Aug
 2023 16:45:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae%7]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 16:45:07 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v3 0/3] ice: split ice_aq_wait_for_event() func
 into two
Thread-Index: AQHZyUh300W4SdHXXUCreRrxEBIELK/fCmew
Date: Mon, 7 Aug 2023 16:45:07 +0000
Message-ID: <CO1PR11MB5089E3BE7EFA7E9534F53038D60CA@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|MN6PR11MB8195:EE_
x-ms-office365-filtering-correlation-id: bced98de-f1cb-4392-0580-08db9765a846
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D/Qr7Qk8ZFzljW8BALfVr2CNXdP5lCZiElAPvzU3NMnyFHippwMuDtx4mmzSvtLirjeUYrJYAYeMDErqqXxGn9vu4rIuFwFmlfcmK6HzTxqwY2ddbQ1RoY6nbUVZQz5qk26LZu4Dyl04QKi3eAkduyWueDlKw2nuP+4HGa+vfkm5Wts5Ktpevh68OXdMBYSsVWabJxE21z9058fkImqBq0fk+qqwnZuLr6cvJYfhEcp8C0CWOBTpXdZ0W5rUb+ZEqa4176gYHiPkmQM7lIb8rm855Vdtl/DKtHG4+NBH/RV9xUCtQFIHeivzLrSYyn1vu70h3BmTtt6B42/68fAoMhwq2HeCo68ox+qFpcq4GELYtB+NqIoV01n186QCJ7cZdfmkXT79FbNlVV0AueeSX9YI9JRpzTPs4lpLPoVjV7Ynlq6/aNLn9ya3wWVbVaSDq4bQ5NQJFSyDDtW5NauQmOBfFtN40oWKYXFOuC2CdL779gfJ80QQZarGaL5M1IvsxgoGtDrUOyIXu8CnQJVwIdy19Z+WOB5j/h6LWhR7Ra2uZ8Hs5oI1aTIFe0GOi8Q9htBUMLqWVE9bP0jy2neoMonysShJw3IxZqB5CtnILH2gF2LPYLYcdjd1wPUMnTCt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(1800799003)(186006)(82960400001)(478600001)(122000001)(55016003)(38100700002)(54906003)(110136005)(86362001)(9686003)(53546011)(6506007)(26005)(71200400001)(7696005)(33656002)(4326008)(66556008)(76116006)(66446008)(64756008)(66476007)(66946007)(2906002)(52536014)(38070700005)(5660300002)(8676002)(8936002)(316002)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C0BHJvwBUOdfY/bshBf64NZ6wNSPY2Hh6rFsKv0qc+NO40rPRzmoz3L8nSJA?=
 =?us-ascii?Q?FmgyNze8ZuQu4JJpm7QLS35m6OUkTPHpqhmpj0NGog2iXLeT75HUaOuwMNAc?=
 =?us-ascii?Q?mKRHL2P3EVBUOl6wHrrpsBIu2Dmzd9TIEj2uQGzl00kvvSov1JEaKbCkMX5S?=
 =?us-ascii?Q?H9byRBtLjLH1FLYLnTS0MRt37Fx2QR/RziojlpwdrrkwY7LK3WvbzNGpUy8u?=
 =?us-ascii?Q?Tvm+G4en3i1h5532vchzRlbA54kPW2U0LwBj3qmFBHfAHL88f/F/6H718WER?=
 =?us-ascii?Q?Iz0gGuzYI6ZDjOzYNdqTu1cw0JxuPSWf39SPHume1qImfi4JXrdId/vRFDXo?=
 =?us-ascii?Q?bU1wVssilxqthexAbPc+plfqfvB9miM16Y7rwU4QyZUScqUoG36mSP4SzkSW?=
 =?us-ascii?Q?oZ72WBPdqnRteX1jXXDYOTOL7V1bxzZRCrjeT2cMcRfe1jRsUhYMO5vWerRT?=
 =?us-ascii?Q?xZohHRxXgvID1UwHvn++HDfe/LNHszYBuKwGIWzcDBKZ8olZ2use98FS0FWH?=
 =?us-ascii?Q?v5zXnoS3vl8o3wbZ9EkNXiKrgu+Jl2xSeVoiTmFMKAB3FFXMKS/Pd5XwNlJ5?=
 =?us-ascii?Q?KhhhJEUhMtmwiNqJkqsa91xJFn770fTsXdFgTmzVUj16dRvHDYr/u2dmNzk/?=
 =?us-ascii?Q?L7TgMOnFJyZl0VY7X0i67q3CcGs8HgrU6TpedH51wr/3I1UhQmKOmznqH9L5?=
 =?us-ascii?Q?XExvG+0MsfIxTD2Ar3Dm1BE6Nz879nbKLKFTs3QPyXSzU3tALN2WHXwuw6YO?=
 =?us-ascii?Q?lZSaQ2zmWDvFCmJC1AKn54TzclD8P+U/pBbltus1lvUUJnsjYUhcCbgYAS+d?=
 =?us-ascii?Q?A+QxZGds/jn6jP9AVMwV7qJHQTdn/ZTk35fokV+zbgpxlTyl3Kxh7xqJj7GD?=
 =?us-ascii?Q?MM0ig5kZpPljYFK8sU3ylk2ZzQvWbozolVQ/qvG8sJes3tphVQ8MqPzl6nga?=
 =?us-ascii?Q?R+GRybh92Teh1HbjkFIP2yX4cEKrjeM3W+zb52U3vauiE5tEWoSHy9iZwulS?=
 =?us-ascii?Q?oi9rpFtYM9NgrmrOXkavHTJONXcTXWnZUKri3buvRxV4prd2EBBshDG1uB1j?=
 =?us-ascii?Q?1rderswzgrLbfPg7sK+S24dUVLsT/sKld6vTOM78stFmcFw/blLwPlU9Fn3y?=
 =?us-ascii?Q?KHJfb+eYeWdnfYrYYHfDoSHe+f05wwNKaeQ+cTufpy7IKw+/ZH5l0PNgtnSY?=
 =?us-ascii?Q?bm9HA/c9LBdqhFaoT3Ao0ShDbySGTC9mmpB4RevNl3047eM6mYme0VCwSvcQ?=
 =?us-ascii?Q?1tfdkgo3jz1Q8Ch6BqTnMy6Tdw5hag8Vhpk7sq0TkvtxhZQrZBWO+T3ZoBNF?=
 =?us-ascii?Q?cjbAX+SKUskEVVLPCWbfNdF5LcWYrlH8d0uthkzcJbmW67U5THFzVgN6GrYa?=
 =?us-ascii?Q?VGhGD6UAwr0XBXA+i1MloqVk/+60eJRQOPVWxIaZF7NXefMd5fy8RwDIKaW6?=
 =?us-ascii?Q?kEoqJqOICgqo0PsTfCGR6auxYn9r0pZy2g/Z2YF5oLTyxs/vLYf6og6eOrP9?=
 =?us-ascii?Q?ndwof+KnxKG6O9AkWL7ZWbQJyvKlSDUyMIAo9oWogJeZLUWrZ1ZD8kky8xNu?=
 =?us-ascii?Q?i0J2twxRO3Ovf1bWBh/oSWh6ns1nOStzSxn4ISbv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bced98de-f1cb-4392-0580-08db9765a846
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2023 16:45:07.3481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: USuYk4OeBi5MhcuB9XmQTC8SFRwlZKuoYy8dwOihFnHO1wucOSmy9EMtacs3eRUxcXfZiBmxa7ai69fxrJsOsC/ZCVNu/sr6BY1TW7QpJ6A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8195
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691426710; x=1722962710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mUX2kbMM0Pa79UXd8tlqzwEziR26LArvX4o2fxop+38=;
 b=nW5MFgZek8LRlcpTw52u2OmLlYpWbS3LdjFKgunmZI5YDL+qFgI70ZRS
 faSW3ofv2ak19g4gvCYFhAID7S7WkAvhuZhCqJw9v9yK6I5yxt+VKqrxn
 L6QF+kagb18xyfkr+yolaDaap3a/s2x+s6/uZEkHDcMtA7/s4JhX8BrKm
 hcv03p6c+Q2qZFkLX3VHmrwKYDRz+EiZg16Zo5iKvq4+qlSo3bW3jDfKR
 LeMNLDBgb/KxLgATul4iR8Bg0/ZXmDzgaoP+gV1nq+70J6ic5vfreFyZM
 augJ6RgwjoSRoeMSFDGWxrj87wH/XpD4fvwkZu+gCnVSFp4Q79NWeJenT
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nW5MFgZe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice: split
 ice_aq_wait_for_event() func into two
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Monday, August 7, 2023 8:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [PATCH iwl-next v3 0/3] ice: split ice_aq_wait_for_event() func into two
> 
> Mitigate race between registering on wait list and receiving
> AQ Response from FW.
> 
> The first patch fixes bound check to be more inclusive;
> the second one refactors code to make the third one smaller,
> which is an actual fix for the race.
> 
> Thanks Simon Horman for pushing into split, it's easier to follow now.
> 
> v3: split into 3 commits
> 
> Przemek Kitszel (3):
>   ice: ice_aq_check_events: fix off-by-one check when filling buffer
>   ice: embed &ice_rq_event_info event into struct ice_aq_task
>   ice: split ice_aq_wait_for_event() func into two
> 
>  drivers/net/ethernet/intel/ice/ice.h          |  21 +++-
>  .../net/ethernet/intel/ice/ice_fw_update.c    |  45 ++++----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 100 +++++++++---------
>  3 files changed, 94 insertions(+), 72 deletions(-)
> 
> 
> base-commit: 1efaa6ca8af14114dafb99924bc922daa135f870
> --
> 2.40.1

This series looks good to me.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
