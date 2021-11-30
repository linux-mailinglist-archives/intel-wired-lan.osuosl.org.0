Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 892E5464072
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 22:42:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D49E830CD;
	Tue, 30 Nov 2021 21:42:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ul-w9rlmwWI; Tue, 30 Nov 2021 21:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22B1F82C84;
	Tue, 30 Nov 2021 21:42:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03CF71BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE5474018B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIVnEE6JvmlZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 21:42:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1023340108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:42:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="322567418"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="322567418"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 13:42:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="654325346"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 30 Nov 2021 13:42:34 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 13:42:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 13:42:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 13:42:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkupLajGt7+1EUQxTNyxyXlh9qsSxfE6M52RJx6rjpEUXF8ZxV+tM91JZXdwMkakJuyirF88DL6NvrrXd66YmVah36MnsUe9hDhAUOEduYAU6acpD8qOMutIywMr8jD1yG5FpU4U/2E5uStwEKhqVuX3bG1Qd0Nj4EoZ1XoHbsLRYUzVf7SX3kAxhqeUSQuSWHcqsz2fmT5JOeq3hYhK3DoVWUQuXslwdkrA/roLFVqR7YTguFlyxnVeHTa6Im/AAHywwaQ78N5WIMNkffNIv/WIICvhpa7Po1NAsAavMn8mCGoyQy4WOJQ/rO+8CXzc8qBIxxRgXm2atK4OoCJAeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cEDU0zNCjI4cTZexdVpCN0v3mfeNByx6wGhDgWtjyyA=;
 b=Fx7XMiufXnvAanl9J60c3kJ+0LH24pgX8WAs45rbhBAXevflZu2FDD3rFpCCj87PflHYyJv9v2yiVSUA/D5RUGXKP6D6P7SjtHzPq4fqV7ONR8BOvtblOf7TZAMtUTnLIMHH9VXqZg5wMmQveOjGg7nzzMCYiEF8w/s9leXRLJHwMq5oA5c2crqW7wPgwakl5cl6HVciSP+pSx8HcgmMKhMDnDTTsZdo9Lb8bZMm0WJZv49wobN14h6sPn4CXmUhbs5qVrEtHOAN3NSMPUb3fuF4X+7f7ZJ9fC7SIBTwJDzWHV8wl89apQGSgFXuNgalZQc+IAx1vV/7po4TDqBGQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEDU0zNCjI4cTZexdVpCN0v3mfeNByx6wGhDgWtjyyA=;
 b=Ra6zRkMH8hL4MpHjDkhoH/+AYfEiVG4h3vvgb/uUMEy5Ydb6qARySwcEznGh5+4p+DFJUNEdMkpKQLjuwfAhBqs25W0czrfM9xMzvmBrTJN+f3I9hbEJwQvLvJxV2/EABvIM6EVOKws//sprDKW9MW/KPxbP+wpRD7Jf6RpIEkU=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2975.namprd11.prod.outlook.com (2603:10b6:805:d0::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.21; Tue, 30 Nov
 2021 21:42:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8%7]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 21:42:33 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix for failed to init
 adminq while VF reset
Thread-Index: AQHX5bxS/ZHN3R1kxES5gNvMnd3l06wcmpQA
Date: Tue, 30 Nov 2021 21:42:33 +0000
Message-ID: <8f454effc188a4e01b758caa9579f933621c381e.camel@intel.com>
References: <20211130073211.1114232-1-karen.sornek@intel.com>
In-Reply-To: <20211130073211.1114232-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f2ce89a-7c86-425d-8d58-08d9b44a5122
x-ms-traffictypediagnostic: SN6PR11MB2975:
x-microsoft-antispam-prvs: <SN6PR11MB2975B66FCB2C74F66E11A570C6679@SN6PR11MB2975.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BlM5BRtU1P/cDcvqTqzA/r+s0hPBDcXLYuxH+tsyHwyrBdBBR7Zdbv3ixVpwF+akBRmV1PXKyKt66JvKROogWD7kevsCczKH8lob0GMUHIeIRGLF4pCHeEq5qhj5mx0XXXnXjWFTZ1IMu8mLqCI+cQ2yJm/esepuUHLd0M6q1CSPOYfVpHK0l0uPqyt6c9ETDo/PS8F25bfgg7/7NQvAtHqJka07MPIeFA0D/melpumsmxhcxYQ9BCsINM8xO3iXWcOyl3f5LCFuh9D+Jdu8sUPflQUWbGPtcPf8hNSP1P4OD3GCl7LieCHn8kmsvi93LtBNjFC4RvYGT5/kv9z3AKRF/gb5CKFh6PyzBM1UBHH78/zA8ZZeht8oKmVgqopKE/J41FTevfCo3S6duHL3UOfIrWQl+b9KroG5XnT2+n3IX9jkUxRxYsKuYJyjL4z+lx13D0b8o3e/55XtIL2vSCkAx8qp4cWAZ4rg09Nyqh2k4ND1IdtonpdJEDIS4GBV3YVjnqtJ3Z/g7NWuyizdQelJjoNDl6P4/IGT9pbZUeuKYjCB7ItiifJoCCsfLTveQx9le53/wEsws0QlzEnDShAj07i8X6DFY+zGMYa1jNn6qbL/eu/CwQLBMbluJcn9vIO3OMnljMb1O33DOaLJw9sS9phJt95nPQ4Oj1xNZGdieBLpGf4JOvGWLYmVo80ScpiGfOGeVdMIK7H4R6uW8A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4001150100001)(86362001)(5660300002)(26005)(71200400001)(38070700005)(36756003)(8676002)(8936002)(122000001)(38100700002)(110136005)(6486002)(508600001)(6506007)(66476007)(66446008)(76116006)(91956017)(66556008)(2906002)(82960400001)(4744005)(316002)(6512007)(186003)(66946007)(64756008)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDhIT2tNOHd0SnpVTXJxTWJIOGxoVDkwTW9YUUtndHgwcWtDeVkweElRRkNJ?=
 =?utf-8?B?Vjl5ZWVWcElkc09kT0ZQZjBmdDZHUWJKZ25MZ2ZMYmJNN2NTdUNBZWtWTk1C?=
 =?utf-8?B?RVg0c1VlTDRtRnRob0VhcTVjM0JSQ2paQUt6MWhoVWlTUDFRblZSamN4QnAw?=
 =?utf-8?B?VHc4MHl4b1kxdE94bWlLVjdwcHZaUlA1OHhQY21Td3U0UllETi9sKzBxSHBa?=
 =?utf-8?B?eUtjVmtTUk0rVUViVk9ubjlXZGJKUUFoRnZsYUZhYXlVRnhyanhXalpNTHJl?=
 =?utf-8?B?VFBiM1FnNUtYMk1KT2tWN2xKN0R6aUZwUkV5OHlxaFVDaFhKeDVscGJpekRh?=
 =?utf-8?B?VGpVRkY3NmlTeUxtSmhPeE11MjVoaWRqdzdsWWp6UlFrblZ3dkFwR2dHdFB3?=
 =?utf-8?B?N3VTSm1FRVR2NEo4TDJuclNtK2NYd3Q2d0svRldoS1JGRld6Q2JTVlFiOFNi?=
 =?utf-8?B?YndhVG1sSkNsc09lL1ExVG9wMTBaMEVvVEljTW82bXdrb1piT3JlL09NRlBj?=
 =?utf-8?B?Wmh2N09sR1EzZnNMQjJyaW82OTBoK2pDSURka1NLUkUyT29IUkJYWEVyNGxs?=
 =?utf-8?B?b3AxbFMzS25seUppelBxQ1Vyd0JISHpXQnlIODFyZWhzSnBlSXh4UVpDbjBV?=
 =?utf-8?B?T2FPVHg3ckppLzBzRmZoNjJzV0JHYVRJQlR0Ym9lb3VHMXpITjE1Ymx4NU1R?=
 =?utf-8?B?ZWMxRnZyYzZ4QmVxYnI0Z3VDaURzU2J2MVFiY1ZwNDNCWkVYbVgxZVRxOGlE?=
 =?utf-8?B?YXlxSWF4YjFUalVubzFVcVkrRC9yN2VOVld6a0F4UWR3RktRUVRXN3pkclpn?=
 =?utf-8?B?UlQ2WHpXZHNZcm5oNTdZQVRDVzMwa1FXTGJMMnpFMzdZVWJucWh0bXBDMDQ0?=
 =?utf-8?B?ZUJRQURoVnBSeFBhandvWXhSRWJBSUVOMUlydEdFUnNyblkvTWJwNnBVR3NP?=
 =?utf-8?B?TkRrY3Z4bUg1M2x2UDdJd1lhVHVlTHRkN0IyblArdVpZYTRkaHA4Sk1uZVda?=
 =?utf-8?B?cExtaklDNlVreE5kdGlKd2l6YkpDaWhyT2dudkFGM29nQU1ldzVlL25UWU1q?=
 =?utf-8?B?VGhjSUF5QzRVeHpETmxXQVBUTjNBU1JMdU9wTFprRTRMNjEwWTlIY0lpaEpK?=
 =?utf-8?B?QWc3S2lkY1drOXJRRWF1a2Roa1RUVDhyUzVHR09CVnI5L3ZxRHlmU1hZVTlz?=
 =?utf-8?B?S0gxSVFlVmNiRmI2VmNGVUFRMGNEVGc3d0tKUGExMDBqUjdVWXg2WGhZR21i?=
 =?utf-8?B?UjJodHp6eG5XbVlGbWsvaHloWDUzdGFvVkszelBPeGJKRXh4S0x2QUlUZXU4?=
 =?utf-8?B?aUx4SnhBWWxoUGlJNksyWTBPWWRqZnBEZmdMUXNGZktWSFdiSFJTbUFveUx0?=
 =?utf-8?B?dmo4UU1WaTJ1NnJ3N3RRK28vQVlDNVZxYzJBRlRzdjVRZzFQcnEzQStTTDBy?=
 =?utf-8?B?WlhpdGFKZUFTM05uSTV6bnV1UUt5MEtMdU9rSFBDV21XemJrTi9kZlhEMVdy?=
 =?utf-8?B?WlN3MUExRHMwcE5aR2lWYVdLKytuZnJUZnZMRmErTzZBakxSWUN6OUo4K2VN?=
 =?utf-8?B?Y2d2YmdrUGU4bGk3aCtnYWlkeFZiNmVMdWZmZC9aRnByeTViMzB5UFJqVCsx?=
 =?utf-8?B?S25TUWR1Z3lhZ2dHZXpLTGhDRVhrQmNlYW52cnVOdndBTmNndGhpc3NkMDlB?=
 =?utf-8?B?QTV1SmpkTHBFUXdNSDBJUEdGOEwwUmZ4S2x2TGhVTDc1SmltdjNCeFQ0K3h6?=
 =?utf-8?B?WWlsaFFPQWZaMm5uYVo5RTA0akRXZVdIN3V0QWFTMHNFTzhUOFVvUjU2MWhi?=
 =?utf-8?B?am1FUkJVYm90cVFDQnZPakxBbGxYZmxBa1F3ejR2MzVpU3lzeXV5K09ESEVx?=
 =?utf-8?B?YStlaWNFdGszY1pZaEF6WEwwNnBldndHOWh5R09NWXdQbUFGTHZsSE0wUS9m?=
 =?utf-8?B?WTNwWEpnR1VWdUQrTHFUZy91c0FYdTdDQmV5SmI2NUNRZEx6aGE3bkZSK25U?=
 =?utf-8?B?REZEZzcxZ0ZieVBMTnFHN0UyVVlFYjdZcWt5MWRUbkpXcThEME5Kdndub01y?=
 =?utf-8?B?ZDFOMHYxaitSVzJyckxiUWdXS0NWVHk2eWJYYS84aEJ3VE9SK2s4anp0eWdO?=
 =?utf-8?B?bDVVSzlhWStydUpGSHpmVGFmY2dxRmpCVWg2RjZuU2hvL3JnWjRvMlcxd3Fn?=
 =?utf-8?B?eVpjSWF2Slp2YXcxUnM0eWdVbVVRMVVrVEY5bzl1YVo0WWxVT2Zpb3B0MmVl?=
 =?utf-8?Q?KTHLaWpCOgYWKvqozR3x9NvB8B8otSqFFkHvwkQx4E=3D?=
Content-ID: <2E40F124AE4C8645AFCA624533618D19@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f2ce89a-7c86-425d-8d58-08d9b44a5122
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 21:42:33.0514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GP1AVdQR/+JreENQfx7kvG1ecj18LBFr4COV2XEipcfhB2xMCs1T29LkinQ+MsuxhMQvL+zUjmlzUJyxVf5DqgzUYSKTlbwGPx8NOXJqJFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2975
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for failed to init
 adminq while VF reset
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

On Tue, 2021-11-30 at 08:32 +0100, Sornek, Karen wrote:
> From: Karen Sornek <karen.sornek@intel.com>
> 
> Fix for failed to init adminq: -53 while VF is resetting via MAC
> address changing procedure.
> Added sync module to avoid reading deadbeef value in reinit adminq
> during software reset.
> Without this patch it is possible to trigger VF reset procedure
> during reinit adminq. This resulted in an incorrect reading of
> value from the AQP registers and generated the -53 error.
> 

If this is for net, it needs a Fixes:

> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
