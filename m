Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 054277B62CC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 09:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1892282084;
	Tue,  3 Oct 2023 07:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1892282084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696319368;
	bh=OLrU+lS8hp2PD/jiPNH8MUIfuIWhUTmAUadv6BMq5rM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PQvdiosXInQ4AAtV+sbW8Y9bElWg4WQQqHbFuLLTA/LPmaeA87kI1QzlCGwXN+jvk
	 HpCrPY8Y9sAFrqi4BlrkjbvSwQLHg9IN4wnuvxv6t44/vSJPO+6VW59wK5xMtDCoUY
	 4u6ehWR7V2RXx+R+OvwNOtuBd03ysLr+b8MxuCTZXx6ySDMr9DLN9XvJGufX0azcKG
	 UMzkF3vEZIOWFBitNCPWkTT39aH2hOu5rRLGpOHp4V19okioQl2StM+w8TWxzyda3p
	 FIAYWkXzwhmuyRhUHMe0SzOGrZlZiSTdAcFz7wF5RUHfBojK6A8qnS43qPnwoHX9U5
	 yLzHU0/olknhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZvU4v0CTluW; Tue,  3 Oct 2023 07:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EB4281F91;
	Tue,  3 Oct 2023 07:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EB4281F91
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FB701BF393
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 07:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E743A81F9B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 07:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E743A81F9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JdN-O9miQyXp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 07:49:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB4AE81F91
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 07:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB4AE81F91
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="385638867"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="385638867"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 00:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="754321555"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="754321555"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 00:49:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 00:49:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 00:49:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 00:49:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=THQezQTWeh1DdsYAqgNmxfvTJuJe7vQWPjzbOoFFf8S6TiN26e+qdtVi4orRwSC64x/ZtiYNHJthlvneKjB9opWUBXygxZimkv1t5/O/YLhKJsWJCxn4sdWJzbqdGbN/XlnaLbLSx4ajpprdVO8RIozpdMzsTiNoOFZI257L26GCgc2c479/e5ubsNBTLQFRdvLWjeQu4iLjFor1lb1s/NETTAgHNLITZ5xvFUYZo2C8grOeYcXXmGa5PATCqx+wClfLxWdRv25DnZDgPWx+nLhAAgmbt+rSXowX6BCIthTChsrwUcwbcsWP++32Xflo0YcP4Dt/7IwtzPc1Xb/A3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pEwcY7N/l45WkonVqAd7iualhhhKe1GZX52tnn5eN3U=;
 b=OCHUWhlh+onAHAzp8UYe831Rnyaemu8bdgOUqC77bt6h6eU+8k4QilDVliVk4j/Cn31M3VcQ7Dtvh+ByIwzbvflNqgsqVX9RK6Is5HagSHzzCS72SWS8Acxk8ZcQNzHou17ZadzBUgaNbnsn8xD0hormC0wTEFJX2LEdgUHxEOBdy5bAmMXJLstDIR5h4KfiywVfHp9gbV7C/eCQ/K+Y0f/Wtbof2EAPRljQErUvhbTN4pm9oONbrSKcRZHaEPqr3nONewcivpwtT/GZSguZiZ6RKIFLu84HDCsoaqcnCvk+IFdauwa2qxXpgNvI4iBY5unTlZB17v2bIyMl5t3avg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CO6PR11MB5572.namprd11.prod.outlook.com (2603:10b6:303:13c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30; Tue, 3 Oct
 2023 07:49:15 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::88e9:812b:618b:1fd3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::88e9:812b:618b:1fd3%6]) with mapi id 15.20.6813.017; Tue, 3 Oct 2023
 07:49:15 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 packet mirroring using hardware in switchdev mode
Thread-Index: AQHZ5VvV+eiAnx4HMUe6qOCTkKSYXrA30CMQ
Date: Tue, 3 Oct 2023 07:49:15 +0000
Message-ID: <PH0PR11MB50139A29C11FDB21EF7795C596C4A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230912092952.2814966-1-andrii.staikov@intel.com>
In-Reply-To: <20230912092952.2814966-1-andrii.staikov@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CO6PR11MB5572:EE_
x-ms-office365-filtering-correlation-id: b89584e6-23ef-4ddb-75cf-08dbc3e53dcd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wEAqPImnnHaXMoHGHJwVJejbsaNUas5DpAaza9rB6IeLgammW4uYmWkropWvMQ5PfaJGPhX+E78neKpVRpKoPIz1MtSAp/rq3Dzriqh9xm92z9hKEStVT8FEU+RFzNmaO55bE7o6jG2qjap93brHOv5baFpi6KoKQLcerscmMQ5n4AwW+4yEnLwh555OC/ZPsMYw8IzxER8HuPGjQ222wjQHFEFvWfYDrOT4y3kb2qdIHcexh7pTj1MH5xpwaT38uHGx0jyBn7PUNCZPhZNX2XmLVgcRBL+vKfyWpK7rkLJh01qdAjr4OBzquX52baOw9wYoDw86KdFvDnm7nqKkPBACeFOV55dVahGcxpfi4p4fpLk3AJ55m09LQXpZJvfdBBPmaz8DTPi79ZNFDIxhUET7L75eieqci1zNc8wDtI/oB9URx8ebLjf/g8rD/MO/d16cQH8IY+rSOm2ygDHjcCPiU6qjbUjv4wWg0GcQO2TXQrzY6wTV5HqpVriWB6xOjKENV5aBdEmB0eq1t3RDBf7rzGsLJXviGI5MqKz/nkilWM1SaZSQK9C83u4sjFttq3uuHJ1uXcgg3reZnlCIUnEGr38SGFHQHiUx2LnNPoJMkw3QqDfObzUui6S+dRkI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(376002)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(54906003)(66946007)(5660300002)(316002)(64756008)(52536014)(76116006)(66476007)(66446008)(478600001)(66556008)(6506007)(53546011)(2906002)(71200400001)(7696005)(110136005)(8676002)(8936002)(4326008)(41300700001)(107886003)(26005)(9686003)(55016003)(38100700002)(83380400001)(38070700005)(122000001)(86362001)(33656002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QAfBQ+lEyO1/OnmZncslogUSUbwK6ZBBe7Y/nTeH1YKqzO6i4Is4bCk/Dmcz?=
 =?us-ascii?Q?GspNZpyBVc3Pju9/dX+RPcds2bCEx4qvBKUFGOR3mwse1DadP05pAe6s1zsc?=
 =?us-ascii?Q?EgZ5HVZgbIlPVDT7Foa8Y9QoKifNcCUWDUPOcJ/mi79PXWJmU/Dnr0lavy0N?=
 =?us-ascii?Q?0viGPBi3lH0r8MsrWfywWJST9jCXbTWfiPamG+9bARAwug2ex4VFDw7wsgyk?=
 =?us-ascii?Q?LKvlCWFd1JX3o83kCpad5YGYuaEldlXlsTUtWSCS+sKlHGnaaxpGMCT3rEvF?=
 =?us-ascii?Q?vZqdzNNL1ywoVEJyRv0tDJT7gzuDpvjxadNSaqCRKyEjGJGIv67krFzNw6t3?=
 =?us-ascii?Q?usX+/nJ5wbQg3Tb8aAMRjG4kHk3Bf7hMqfjzHIjAtf1PnWLahm5La6OvE0iv?=
 =?us-ascii?Q?Yl48DBbyZ5R3jsor6j+P5ZU8tg4Ujbh8WfWzMwhb0/L87gPIdASwNoFdyyC+?=
 =?us-ascii?Q?2edV3jPjHfgDYa0hAyaVssHDu4xCElJwX2UITusTz0dS66uQ9SlWIbV2KP7G?=
 =?us-ascii?Q?jlRuSIY71L1D0H3164surcvDfzmLc+RA0zAlQpdhu4faH6McmL0E3vF9csKR?=
 =?us-ascii?Q?1S4hy7h6F90Dw2WjUuULL152f+hVUUTaR7MdG8/Xb4/Gb5RI4DiIkydWONPP?=
 =?us-ascii?Q?GtKw8Gej3P2uKgLJNO+JHr2RBsq2puxi1pgBZRc+O39eFbg3LdULLVOctoYn?=
 =?us-ascii?Q?irGdDqYZHL/i+S9Pvl1kHaIAeZxhvX3AAJFZpvIk2ne0DscCukui90uMR/RD?=
 =?us-ascii?Q?IJJhdOQOg8EW2oRFF41+ankIEx+/GKUjhqdynnjhkKCqTLfkb7SAZVCZCPKo?=
 =?us-ascii?Q?VmzyCqSrPogqIi+Lz++Ud+PKcLmisK1yXOcL45KsRV9AOvhMmSQOz8Rc1PSu?=
 =?us-ascii?Q?+5AG5dM8es/KvqfLNnB41oxCBJ41SBE3edR1NtNJw+TV0sMfZupoqnGEBz4y?=
 =?us-ascii?Q?N6NnCuY6MVt4+eK72XS5D3w6Yvr02Ux7AXWMUX1rVPo3cLh2lrvLL1j9mmtt?=
 =?us-ascii?Q?qtj5HJcoWObov7JNjJfmW1Ewyjwc0RelOyRmn9Elc0J42BLkNugWS7yEl45l?=
 =?us-ascii?Q?FC5cXKWVawLlyP6TBPaLSwkAzNHUtF3Ekk9Guvd/yqQqeJnYTzu9Y4iCW2kw?=
 =?us-ascii?Q?a0Bw195BcHThTScLgFxl/lB13EQ1DoRBVr47UvrHkzYd2iPIYql1WzhphHpk?=
 =?us-ascii?Q?SfnD0gL0sEsUL86+FA1PAc2w3WIlqnFE1rX6/7hUvlzxs13DI5wl7FaWjc+H?=
 =?us-ascii?Q?2IWTuNidG7Oj8OhIWsuT0nG4adaudIwqesn++AMBfJh8QM8TYlvYPhTkts4z?=
 =?us-ascii?Q?wM6xhhVMVzOahvkxwTMkV+KsvFCZL/TFfAhyjUFyqkiFfSoXtCTBOn7r66RF?=
 =?us-ascii?Q?c4/UV+7D6+7rtk2EqIeIKV7h3AtHh/6mtvtG+Pcs2MwbZClJ2YTrSWp1Ssbw?=
 =?us-ascii?Q?S99pToKOLd2epxhN1c2XNXlH7lI4Crz6A1fEiz3VxPBWgx5KmYQMaN/vS0J5?=
 =?us-ascii?Q?lplcq3J3ZvYvRh/FxOxFPiaFsVu2pq0gWHj83nOYeHjYPvys/E8ncMiX1+ys?=
 =?us-ascii?Q?dv8g9PuOusbA2flB7CCA9JY0wrFxfvOcCIDCfrFXz7Okr5bbZotITb96PaNM?=
 =?us-ascii?Q?EA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b89584e6-23ef-4ddb-75cf-08dbc3e53dcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2023 07:49:15.4303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XWHRVeKcAcbbTSsTe3KWj+/6tmGqihJc2QUCT37WGZ/k5354DVqrPyOT1dNwaZyQmh1qUOjQFeSqkVtqCwebODCK8JLtaeDQGtTZXJOxZ8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5572
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696319359; x=1727855359;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Nebhyvx4SXh9TU0DxKGqbF6MYOxCLoOxXbecx562eA=;
 b=KfY2fJEGI+r8VS6AyAaTMaTMOGAXAxK2B/7G5Sv1PohBpBbg5grzqfps
 lApjJO3dy6RQgbJxf6nI31qKKtnuurFyz65j8c7BV4AKwEkStfK9TS084
 YwLtRXKnQrdowkUoNnKHv+le0t/wX7TDxALA1PpDzymsTlRCBhJ1JkS7l
 pfwBBBisYwEQUZqql1+wf5vyk8zX7TbU33+hpLmwqcBO0BoVaoUxhbbyo
 O+Q2EVGNsN2A+zp22ylefkb9GE4XRxW5zYvh68m+3qh1AeDhbel9w9J/5
 H718Q+3IAqAYFZmbakme+pGXJKxPotW8L1Pnsm+eZK6lZHTdMCb1TNBR9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KfY2fJEG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 packet mirroring using hardware in switchdev mode
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andrii Staikov
> Sent: Tuesday, September 12, 2023 3:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for packet
> mirroring using hardware in switchdev mode
> 
> Switchdev mode allows to add mirroring rules to mirror incoming and
> outgoing packets to the interface's port representor. Previously, this was
> available only using software functionality. Add possibility to offload this
> functionality to the NIC hardware.
> 
> Introduce ICE_MIRROR_PACKET filter action to the ice_sw_fwd_act_type
> enum to identify the desired action and pass it to the hardware as well as the
> VSI to mirror.
> 
> Example of tc mirror command using hardware:
> tc filter add dev ens1f0np0 ingress protocol ip prio 1 flower src_mac
> b4:96:91:a5:c7:a7 skip_sw action mirred egress mirror dev eth1
> 
> ens1f0np0 - PF
> b4:96:91:a5:c7:a7 - source MAC address
> eth1 - PR of a VF to mirror to
> 
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v1 -> v2: no need for changes in ice_add_tc_flower_adv_fltr()
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 25 +++++++++++++++------
> drivers/net/ethernet/intel/ice/ice_tc_lib.c | 13 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h   |  1 +
>  3 files changed, 32 insertions(+), 7 deletions(-)
> 

Tested this patch with HW offload enabled on both PF and VF. Packet mirroring is working on the PF but it fails on the packets originating from VF.

Configured below mirror rules for mirroring the packets from both PF1 and VF1 to VF2.

tc filter add dev $PF1 ingress protocol ip prio 1 flower src_mac b4:96:91:9f:64:08 skip_sw action mirred egress mirror dev $VF2_PR
tc filter add dev $VF1_PR ingress protocol ip prio 1 flower src_mac 52:54:00:00:16:01 skip_sw action mirred egress mirror dev $VF2_PR

With the above mirror rules, the packets from PF got mirrored to VF2. But packets originating from VF1 are not seen in VF2.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
