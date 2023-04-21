Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D536EAE96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 18:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 874C1417AB;
	Fri, 21 Apr 2023 16:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 874C1417AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682092883;
	bh=RK7jZU3rzM6Yz0a2Xw8cqkty0ihaoF6XfWOkCBjzinw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JaF0mFjX7TBxXz9yMp4KTHDmZ2EnvKwRtvf9Z8jLVf75Pk0JGJ+XX29BvB6+NKpzm
	 v1bIqLKcXjNBKHnRYDlpkf2aCUbiTH5GEnDEmJLNF87CBAyin8TF/rlEf0OhiJBN7+
	 GEpUIwNzvGL6LrSJSKr4E5w2EkXNQPx5IfCqGqO2XPCFWLau7Zdc06HI0pV9mOXDZa
	 yWSMr9h56EZVkOyr6FGOD6Y+bf9MYKoIGSjXbpPbRKav8yPNE3+1I1JioVM8CGlKGL
	 hSLuTj4PfQH1JZDUlMwridKQejXVPvg2HnM8dSxlUybVhDImVFFycgcoGIWxcpBcPK
	 8ETwiXb3IM1cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c7kafu-HcRKc; Fri, 21 Apr 2023 16:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7683E4179B;
	Fri, 21 Apr 2023 16:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7683E4179B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F1061BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06DAF81F6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06DAF81F6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aN-Qc8ay_Aff for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 05:48:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4038C81F62
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4038C81F62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:48:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="334795264"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="334795264"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 22:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="669614664"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="669614664"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 20 Apr 2023 22:48:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 22:48:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 22:48:53 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 22:48:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihWSf504wMkI05Jk57a0EnR0GIx2koy4tRUxj6EX3DEUsGEAh3UE5irTSjOm1N5VsSK9smJ6wuOOtp8P3YgzeAZzyeBqkgBZSrk4TicxPqdp9yyXA6DB8aEErqK8ctM1EkT1G6XegO27frPu6t6FkbtpTerrcYD2MzXnVoPwuRDoFy0YHp0vWz4J82NvEkN/L3+kogiEbjgpwI117NtrzLRULd0sC+SVgqaseUbVgD5KhJzUx+onnPMFXWU8Vq88SFzDoGaPYYAAnOWaZCM1naeN1uIuedcjOpUEJNr3ztKJhcXmJ8GrNwKf/0RzAL76JNG6O2PPzCJ2g1j2IKwcWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QBev+wsBLkLyxlqq0bbD0Y0ovD+42+OZUt1x0BAFSb0=;
 b=SG8cIFymwFd7o7vIafPz95beK18fNyd7ncslCpcJLGhwT3jwCltWR1cQqk/duXYz5EY7i5JRIVi06exUwlBCkhlEP6+mF9VprwbkIPicsLJPrkDmSbn/4VaFTgxNY2PQCwSA8OqE5BJJyrM79wBxm8Bw0LHqqLM90DLlkiVldxlw9BqEfXInefeyeguWcMF2Ol2of8rKxfuGDlv9q6/MeTiXMwx7jMy9Uha/YRIkqE+n1iIXX2i3Kj4nQqQhYwSWzd9tb7VOAhSSbXS6AgC4RRifjOVmpPsuxWKXRf+1v8VaseAQN6DmFVse/XogAesQi1Nw9tIWoj9hDEphgAnkOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 05:48:45 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%6]) with mapi id 15.20.6298.045; Fri, 21 Apr 2023
 05:48:45 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Raczynski, Piotr" <piotr.raczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 6/8] ice: add individual
 interrupt allocation
Thread-Index: AQHZXYKjh8ddok8A006D3iuOqgdrkK81bgew
Date: Fri, 21 Apr 2023 05:48:45 +0000
Message-ID: <BL0PR11MB312219F7867B157B6B0B1880BD609@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-7-piotr.raczynski@intel.com>
In-Reply-To: <20230323122440.3419214-7-piotr.raczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA3PR11MB7556:EE_
x-ms-office365-filtering-correlation-id: 299e04ea-8569-4e25-7186-08db422c1260
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y/6YEMRkrqp5Me255H2GkPRPbeU+l2P8d4F8/tWVEe0Rr0Ek7WzcZRxjYm5LniB8PrZQdERVQeLzcjns80P5m/qiIfJanc7HkcTY48TMmysvcZRBTH+WlcfHQZC8kwscZhnJXpKFKQq6MGye5zyrbtC5BuTOFWdO0SPQt3DOd/NrToPCQeKX7mmqnGEEcpTUdASnXpBiyGQvgPtFIOZHY5MgpgJrdxBYIkGvxwkzjSiNNdYmt3/G6VYe8lgSHH+QK/+xGwihsl4M+TlApKZEWUehVlv9fE/6MRzkx7JR8rLA4m4I0eFtG5c4XF6tHNl82o/EItLu+atSWEKFvUUJuYjHCg5mPzbpCy0U7B/RByrEJjXmP+3qR2ngMxOVv660pSj2lJlpiMXArBvMyIp+BjiZPbmZUZlzwV1MiLu+dUXFftQ2W5xvnuF/B5Vp2+nDI1V97NmWPO1CHW5UahPiTWfzegw7jUECKZJxBFNODnMQiPSPFJ7BPr9qlU0+JbKBcGV2+IB03QqDmHlm/lWdoj9xARFSQTjZ4xWVVbwHk3mGT0OFfULL763iCz/Y1Y8jazOnqfSeeuoFbWPGh8HMf2r81olgK1dgx13fCg0DVkIxEQ3+cbCo3lgLiEFKvkRl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199021)(38070700005)(8936002)(2906002)(38100700002)(8676002)(52536014)(5660300002)(33656002)(86362001)(9686003)(6506007)(7696005)(55016003)(71200400001)(107886003)(26005)(110136005)(54906003)(478600001)(83380400001)(4326008)(53546011)(186003)(316002)(82960400001)(66556008)(64756008)(66446008)(76116006)(66476007)(66946007)(122000001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X7oCCtKJsaKT7Al99M7qEcKHDHCl6asIzZTw3jnrK2O14NOiuI4ImTLtgo0M?=
 =?us-ascii?Q?CfFdsExNNpqIADkNgwy7In64EAIQKDDbwP/vU+HDBTPvApaizsKBuOT3GM0t?=
 =?us-ascii?Q?mhOt0GlSQlXoZo+V7LTLx3ajp8JhwOoRG0SHbq5y/gIIag7j03vbRl0z0zvW?=
 =?us-ascii?Q?8RMzO6VYz095zVq5nml6W5v5w26U4+7SDMmfY1g4kCj2nO/3cAoNNokewGaM?=
 =?us-ascii?Q?LARGQqZnlAnIBFB++kz8VgNZ/9BgC78ZNQ4JHR4isYzJk4Sp9BkAwWDdPNJ7?=
 =?us-ascii?Q?gyYtKT7EPpcVkQMTfiksvAx4tDPyBhaeV7Ia+AY/SEh7+QwmDNa5sJk//qa0?=
 =?us-ascii?Q?Kyk6WyAPKkNo3xE6flT6XZDm123blG7MfNRufm+/b6j4Guglxg+cZPZLQ0lp?=
 =?us-ascii?Q?qdBRC2OHk7FLC/iTeOvuqePY0W5s2DOJgJrRHufxfeRw/9ZKbatxFBJA+WqJ?=
 =?us-ascii?Q?mzI/5s6/TI1L2FqUkA5+D/Xk4hHaqFE7wvlWl+vrPqQlhwch9nz0dEHwE3Hj?=
 =?us-ascii?Q?Wq5TrWA3KJZKgPKMelVaCGTzzn1XkSYi6ZH/mmZQ06ht+uYS7KfrgnZKuKZI?=
 =?us-ascii?Q?1JKo6p+4RH1+FQ1PdJDzRpZJAFpPnFJ0Rp5VyhO4x5lNX1KdBfG9QqQKZvkx?=
 =?us-ascii?Q?xfFS2vEy3Jzwbuk2hk9DG0y1GIFJrpWJ7FfbCkBdqVknVfTalATzay/Wb+CQ?=
 =?us-ascii?Q?dNZbNHPdzr06UbexdaT95qbRwfNluQ3N40QOg25O0NWNH8Gw32r6WbNz6cHF?=
 =?us-ascii?Q?1EWqMqk343OeMEG+M4HLrn/Z5AwyGqZ98RbAhSAGQ/h57/9CkmhyfaYo4BgV?=
 =?us-ascii?Q?81lJZyL/wlCyKfoXa5TIIZ8vUH12/MpuJ41S5SbbK+rxtJtm2758F83GJyV5?=
 =?us-ascii?Q?OtM+YqAV8hujasT8/FgXVwOZt5BdEjh27f4JgIfpr3tvL46/CmqdWk7/wWMO?=
 =?us-ascii?Q?152cYAYx6SD+unHcxBSDc6YXhHoccjTa933SwXIvOXZ6PQT4XjW/MpnIoOf2?=
 =?us-ascii?Q?YoTqdBacB3pR76SSjovPSZ54mN7ZXdkyeBjetNy3YAH1mFLYx9D383dK4zQU?=
 =?us-ascii?Q?1K2s82zyBtlsUcVMAPe2H1Ppj+rMNIjrq+atFp8kqZlU4TjiOzBkaT/ABrbH?=
 =?us-ascii?Q?kjNFukIENfEoaXdHHSiBDPxWBHlIjDaptrHESS19m0aUAo2SWnCyDZ/cyavc?=
 =?us-ascii?Q?MNQYhvTyPDSOpqyVE/oj6CwZEgqWD+BFuPj+MfriJZ0OW3ebKMKPbSSk/Om/?=
 =?us-ascii?Q?peuc96I41PooLGHBEGFvg/rfQ8Rmx3gYAQmQtJ7rKTK6seGm83Wq0bHzhM3j?=
 =?us-ascii?Q?cq091recF3HNg7+cXtanSv6fTKh0cQPw/H/sy5whAoN+/Ns7HG7CRk2fZcG+?=
 =?us-ascii?Q?W0WWUcVd+q3NunpvcY6sTUPedrypffLPYOrRP+tAe5enmQjuSsysXF2ihdF8?=
 =?us-ascii?Q?GJulzeOCaQpB6mMWwK6grgLPoMRotA411K2v5QsQCUQ/Le/6IM28ixuyCrVx?=
 =?us-ascii?Q?GYkRFJMo6fhnx1660kfH1uSpqAtcjMEMEeb+Mjli9f1U57IpN2W94xL5Q2Yc?=
 =?us-ascii?Q?yhNOUzzcnEsonN5jFov1fq6Zk6UXzx1auzprAu7BnJAGtZOfCca6i+2tNZja?=
 =?us-ascii?Q?eg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 299e04ea-8569-4e25-7186-08db422c1260
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 05:48:45.6957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7LF7z5oQQAl/yx7PcUl9vQOlv2WvM/xu69SVOcCKLLX3ntj3OO5dciSjX5haGfDXP5m15fy+mT0gJzHIf2btS8fUeuM+8dObuZjrRuq+xSPs6gxS/aXEa8q4VPse2aW8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 21 Apr 2023 16:01:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682056134; x=1713592134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MQsW7U4X0ZJ12+KQP+elt0bWRfs9cPpvvOremMD7Fvw=;
 b=c84HzDuoaYxL6Ub80mJZiIxUjAyGCnwabQ7D2JNnf75yelqjzFEucy04
 qqrXDLUc+jgUMv+prQ/CnVXw2lxsuEn3A7x31NIh/zVLbRwcVvEBuFFKk
 jJiks6TW4SqilwArdwUPupxG6lMjKTDcSQg9v0b3RMX/c/SQZZ+6eOpCx
 ObeqF5aw/Iw8rOk7N/xaaCTQukg4HL80D7L3RHF6NLv+QBt6a7HzKMJvC
 hbQEXgM9cSyC58zrWFAC71Qgx/Ba3nucgvlbCViDkCoRmgcj0tfU9gmOP
 IRCTqZU3Wc67f0FvGck06Sq712WSRG9VdnwiJ9/qs3oeDtMVfe/3f3vQx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c84HzDuo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/8] ice: add individual
 interrupt allocation
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Swiatkowski,
 Michal" <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Raczynski, Piotr
> Sent: Thursday, March 23, 2023 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Swiatkowski, Michal <michal.swiatkowski@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 6/8] ice: add individual interrupt allocation
> 
> Currently interrupt allocations, depending on a feature are distributed in batches. Also, after allocation there is a series of operations that distributes per irq settings through that batch of interrupts.
>
> Although driver does not yet support dynamic interrupt allocation, keep allocated interrupts in a pool and add allocation abstraction logic to make code more flexible. Keep per interrupt information in the ice_q_vector structure, which yields ice_vsi::base_vector redundant.
> Also, as a result there are a few functions that can be removed.
>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  11 +-
>  drivers/net/ethernet/intel/ice/ice_arfs.c    |   5 +-
>  drivers/net/ethernet/intel/ice/ice_base.c    |  36 ++-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_idc.c     |  45 ++--
>  drivers/net/ethernet/intel/ice/ice_irq.c     |  46 +++-
>  drivers/net/ethernet/intel/ice/ice_irq.h     |   3 +
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 225 ++-----------------
>  drivers/net/ethernet/intel/ice/ice_lib.h     |   4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    |  44 ++--
>  drivers/net/ethernet/intel/ice/ice_ptp.c     |   2 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c   |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c     |   5 +-
>  13 files changed, 154 insertions(+), 276 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
