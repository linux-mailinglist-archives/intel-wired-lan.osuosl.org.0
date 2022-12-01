Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C8863F7B6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 19:45:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5811040FC5;
	Thu,  1 Dec 2022 18:45:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5811040FC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669920342;
	bh=yYBQmf7LkNIeeynwn6GV8Z+Taj7bo+/oweJ1nSeOqg4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GWyJ4IvPvI5oUhkjLQH9L+Gea/yhfyZRVMm/nAdIhagm5R1JmTd2IxVowmJt1sgi5
	 djtaFky6gdpqT8wX2SAN7PzdM1tg2ZBUz7TawXFjhbRczu31UWrtXZ46qkrLVEvbEa
	 WzX6iphk7nZEeZMJSeXy2vmxnQ72PJe9AbV/X/yiIrHbV4u1NGetZ3+gtanQIRuSSd
	 S0Hth6sisEWNnPYAbHfr8bxoIRgko5oAZpAxR8wqHBDMN7OcPpw5Yzu15ofWXH8UT9
	 xKGqP2i6QMOI/NkeGvcfNnULEyWEGVwZaljduxik6Ax0QC1R2osmcOEu8SIttN8gLw
	 hNoejhakT6+kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mAcIhZJ60if1; Thu,  1 Dec 2022 18:45:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 340D2408EA;
	Thu,  1 Dec 2022 18:45:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 340D2408EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0CA1BF286
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 18:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 148DB8202D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 18:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 148DB8202D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYP8Ad7AiObk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 18:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9B1782099
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9B1782099
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 18:45:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="380057014"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="380057014"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 10:45:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="595178629"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="595178629"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2022 10:45:34 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 10:45:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 10:45:33 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 10:45:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kqTFOfFXH15ZD+doYXm6GkjzguiksYnuqDVt9VPsgzQ8kZKZqsPrTu1gBHDXYuzoEzUJ5rSCYkVPluDoQ6kyTs9TaXe+0ln5mz3LwtG4fN+D54pNvt3y9tzPVCch35EqfTiMHvQx5Qi5pe56p6l1tlDLS46dAXhiDcKOzqj6aV5eQqSIIsTDc+cnEb7XUbSAWQWMARiovIiO3AZfYevvSGgwRXSiz5F8+c6eSQPqpIQ8PFLAIDFOMcy42BrJ/i3G2t/2UhZw/C1F2l956pXQ+QZD5/ckjtCACsJe5pK2nS2fgpVZxCpTGqfARo6jxM0A2FvpLHOle1Aqj9OV13lGaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JtYr76XNxDYvfeKY15AHt04weDLoTxo4BqvAqQdWy7c=;
 b=OpxFe5NsZmUhffvRqNYXMp1Da+u0gaNS/gpWfxFbQnAbS8Aso8rcybT5sxxNqYhwdzm6XN2VaBNgQ5Yo+jsTzLROxwmqWB7mCFiQuFbpEdhIvnrzbhVamlFJQEddCOYlnjGZIoO2OZdjhRpRaWlwr461ggSgMDdcDnjJjNA7IrUBwNlmt5aXUMUlfWevwN7pgPEtoUqym7dRt2dosCTNoa5x6PkvlYlS6XY2YF3sEmQMP/glOJnvEmxE/IMvkv+tz8oRRGBIENwn4uJtPt1gXwz39K2NIBXORGom1CsVkfix0UaKSymAAPsjal0XfIdfbUDDt+YshFTu3e1d6atgVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by SN7PR11MB6996.namprd11.prod.outlook.com (2603:10b6:806:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 18:45:31 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::45d3:7ae:74b7:d6f1]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::45d3:7ae:74b7:d6f1%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 18:45:31 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next] ice: Fix off by one in ice_tc_forward_to_queue()
Thread-Index: AQHY6xR321DQYSOMe0uL93Ak3iFWDq5Zk0/A
Date: Thu, 1 Dec 2022 18:45:31 +0000
Message-ID: <MN2PR11MB3614776C8DAAB088D37B9BE88E149@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <Y1vvAJ6jOmKEUZue@kili>
 <MWHPR11MB129389DB1967551B1DEC341CF1329@MWHPR11MB1293.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB129389DB1967551B1DEC341CF1329@MWHPR11MB1293.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|SN7PR11MB6996:EE_
x-ms-office365-filtering-correlation-id: 13efac59-b5ba-4f6d-9c32-08dad3cc3988
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VOqEhrFyeecE7EmuLzAk5eAhSq6IxnOqjeizntAj0XjEQUUNDCrcKZjjR1DY1AnRr+WwDRMymCbxyoWEg2hO+iBDlleFSYDiLY7hJzqZ8PAXP8tpP811J4SfPZi9vFQvy858Wg7IyUB9QL6ZC6wjNtrYTLDtIMgmXPTDHG52Y3NDdT+FGbrDgBEWjRn+U/qv0YwDge3k5XHsMIRtF6xvAHnN2c+NvMlP2xURJDJoXdXjTMQILnAVoKWi7Q4HNzXkONFl5TzXsfuA2NCVElFo2qu1IcqXmeUfOGDlDMuEOUktHCjE/UXtbcUy//NR4fIx7AxT3SG6DGGd93NBIteh8SOKYQEiFDvM66vqcmisRAZZR6QHvo9TbvR6WweoOt8FCjRJN+2nCCbYIdcSkZ3gSNfJXVivdXz6nOUhwD0BKhQQ9RLDt3oEto2/gkCf0+IM/CdD8yc1DiofpwkCFnI2SxuCGHCqzJ7edFotO+5wSgQ0XpIBJRr4WwfnN5MclZWDciD1kKetYF6kZFSVUky92Z/dpSmvSwjOo9bv1aXLA2KpJwVz8GxKu3rcWJ5g608Gu8T3dH73KAoJH68Ql8De3y45qkRv4aD8xG3B6Q0zD+bBXtkmevAecFD93htrQVp+QX4ePZThZ4JZe1Vsw5ihhMcbCFs2s6zP180Yem0mKbprPMwSExG2F6TNE5FQbunxJ163KAryA87Kkwj8f33+iA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(346002)(136003)(396003)(451199015)(26005)(316002)(86362001)(122000001)(71200400001)(33656002)(55016003)(9686003)(82960400001)(6916009)(7696005)(38100700002)(6506007)(83380400001)(2906002)(8676002)(64756008)(66476007)(66446008)(66556008)(76116006)(53546011)(5660300002)(8936002)(66946007)(186003)(41300700001)(478600001)(52536014)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nj25VtarhRaNxFOcpe8cmbvgUx29Vc6pIcgqyZyK5BuVk84i52ZWbsrOMMSM?=
 =?us-ascii?Q?EX/vPiRHIOw+7zNW9+6GCuLHpalB6thPgaJt6QgHY+5UB5huf9Mn15PCEj+/?=
 =?us-ascii?Q?jEWcd8ExPYQJVyt3q0zt4iXaTWiFJzRP2Jriz7b5UPqfFbX6Ds+21bCR4C/m?=
 =?us-ascii?Q?vN+VH4ps94yeAl28NoCIr2BcREcTaIoBcaoB5vJ751VJmKXw2kcMxx8wXN0f?=
 =?us-ascii?Q?nJXQBq+fAbcE9dZro2/jIQ4l4S3A2wZabchrvEOKq500Jem7AWcluuGtguv5?=
 =?us-ascii?Q?fZHM1iPkEde0hijuTYFKft8950Z7gsx046Bcfa9wKcv9ToAsG9sqJTQs9G9j?=
 =?us-ascii?Q?SZf3Cbs4PL14rFnZORWtUXFxB80GetORz6iS4scjDOPPxqJeNvvKoTRjS/iF?=
 =?us-ascii?Q?sOpE+f2Oz89va9WMqzUci3tG7FPUh/qT7EnDxJNwzau46N3o2FLLtV1dz54B?=
 =?us-ascii?Q?VPsFkOYtyi+VTx1PNgRCnMY1PyhahV2x0sMbFCa2+XvMlhbEn3SFEfj1hhco?=
 =?us-ascii?Q?5+ReLTYywmIkOWnpUB2wuFgclU6CO1Gap1saQ+lwvUezIWrK6ED05ndxY9Cw?=
 =?us-ascii?Q?CdbjQfMQIC7QHy0J346ThfMuwsm2I23HxFn9uYtRFNXzwfItKiKy/ECd+HoM?=
 =?us-ascii?Q?uipJ1y8rB5V+MX56JAgVcleNdFjDcXnNdkRSEDWsqppGTx2UmXPc9ARI5ekK?=
 =?us-ascii?Q?1+1rcxDV0F8Gc2iA5qwvWb/Bqo7KiTEWsSMJd+ettkXx48CTIapj9dOZt+3k?=
 =?us-ascii?Q?L1/R92jfvqdBBRDqkHtlmqn3d146TX2cBQDPZQATQh8gIkbusd3mw/iZjFBc?=
 =?us-ascii?Q?6L0cVCfjy4a1NUKQlzN+1eOJv8DZ9K7ap6vF5xvFkLxzl8k3V3AAYWz4aF3B?=
 =?us-ascii?Q?jDlZu6rZInmDeB1/zxlsedXxrqPtMmZ/WyAqW6UEz9zu1CjZf+Q9jEpz2KlB?=
 =?us-ascii?Q?JiueKvqMQpmIRpV5y9KbKIKfcF5z78CNHCLK+Sl+ivm1THdjqm3eN6jD3sWY?=
 =?us-ascii?Q?10z7h/0IxlDiq1hvsErHH6XJjIPrb+0KPVsEnJbv7Jd2ouBMt1yroF9L03X9?=
 =?us-ascii?Q?VKl46N2O6CokpJNz/2ofTr9n5LwPlgLi0r6FYmTMJhAo8W0xNBX/oShzcfht?=
 =?us-ascii?Q?7JpXNrvvShABIkSTYLrbYEJ4zw68YQ1buWOGg8/z/5UXBdq5O56NeYpwYdJH?=
 =?us-ascii?Q?t2VLXq9sY+j2rmi2Z4XmBQQ3ywW2Ai1QiWmDiyZ8xZ1AlChvGNLw9HDjbXNK?=
 =?us-ascii?Q?ONmF8IOIaiyDsAfoykbqN97fF9LTSD9FYgAwngGwA3nkr9IwyLPUG8d6L83U?=
 =?us-ascii?Q?PHbqBICpA6jedG5hxu2ZNdrs+JcS+2srHp3FPVSqNknzYbwegjbqKX7pdNbM?=
 =?us-ascii?Q?urcSobyE5V/aLqWI6nMzH0340reJCXiqYmLucIILJZfuZiFZB0oCeyyYuMMN?=
 =?us-ascii?Q?vQP+ydNTdU4MEEXTwOazMI0B4CcHhYQ+Vc/7a3ZgpApJTA0YaU4yHzps8cjX?=
 =?us-ascii?Q?7iVNo15ubJT1WgdY2oiIKb8Yu/UPqF6INy3pH+2zxAeyYacg39MU9ny5kDV5?=
 =?us-ascii?Q?tk0DgB10jecPV/Dc3JgM3vW+EcaO1tX0Oh2q5Equc9IGmmHxJapnBQLl7zak?=
 =?us-ascii?Q?+A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13efac59-b5ba-4f6d-9c32-08dad3cc3988
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 18:45:31.7921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dB4U275qDllyubYMRo+v0mjqeSrD5LAaNO07paEW9mSyaqhBBMnLHfUAKIH+uLiLWDwBD7wbdUjDDZKKXs5W56BHjA3XrgAlsRkd8RyKb88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669920334; x=1701456334;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9LsoWNSwB6K2YpdzKvDdngUtiTlxVA9USffBREXMKsc=;
 b=Qg3vNLR3bG5bSiqjjsGxErsYIywKFPHjmPro9I0oxUIWT5aKKJM9J836
 CWaNqzy9d8LJ4L59KmWf4OBzNjRfsj+tTkE5Prjsvk10qgqJrnEgaIs3D
 VrPDDNMCoqyEDA7vTUqgStp9D4BnOnMlIu+Zq8UajcyFbw23y+WYN0pYu
 +qNa3QB/PIK43W/S29819QeR47rGvBzmHgBNVr2l9wQn6nNdpNeRZJlRK
 BCqkhALX2wyzwkNIDc6lXt6NehjuKWHRThZdYPg4e0CyeNHPk+qnMVM1Z
 6k70N6dijafiGKHdFxXa4LD2f+GZjjI32QgU/8nThjkyF5zv19tlz0Ct+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qg3vNLR3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix off by one in
 ice_tc_forward_to_queue()
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
> Nambiar, Amritha
> Sent: Saturday, October 29, 2022 2:58 AM
> To: Dan Carpenter <dan.carpenter@oracle.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Cc: kernel-janitors@vger.kernel.org; Eric Dumazet
> <edumazet@google.com>; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix off by one in
> ice_tc_forward_to_queue()
> 
> > -----Original Message-----
> > From: Dan Carpenter <dan.carpenter@oracle.com>
> > Sent: Friday, October 28, 2022 8:02 AM
> > To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nambiar, Amritha
> > <amritha.nambiar@intel.com>
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> > <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > Samudrala, Sridhar <sridhar.samudrala@intel.com>; Gomes, Vinicius
> > <vinicius.gomes@intel.com>; intel-wired-lan@lists.osuosl.org;
> > netdev@vger.kernel.org; kernel-janitors@vger.kernel.org
> > Subject: [PATCH net-next] ice: Fix off by one in
> > ice_tc_forward_to_queue()
> >
> > The > comparison should be >= to prevent reading one element beyond
> > the end of the array.
> >
> > The "vsi->num_rxq" is not strictly speaking the number of elements in
> > the vsi->rxq_map[] array.  The array has "vsi->alloc_rxq" elements and
> > "vsi->num_rxq" is less than or equal to the number of elements in the
> > array.  The array is allocated in ice_vsi_alloc_arrays().  It's still
> > an off by one but it might not access outside the end of the array.
> >
> > Fixes: 143b86f346c7 ("ice: Enable RX queue selection using skbedit
> > action")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> Acked-by: Amritha Nambiar <amritha.nambiar@intel.com>
> 
> > ---
> > Applies to net-next.
> >
> >  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
