Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 581B66A53ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 08:53:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 160E3416DD;
	Tue, 28 Feb 2023 07:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 160E3416DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677570799;
	bh=SfX4jm8BFHOHDlNkAFMIEB4eSa46a16fmbf23mrJ6Tw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QA3I+vZo83m5TlCTohijQzQ8l4SPU1CxkPOwvCou1lKCUWejfc9HBZrsUwO7ecwqN
	 uX22tgndlPfIYMa5aFLYHQ+o1dl8D6u7kFjXRehfCIMvOfYjI4/eoSrSe3K+fPVVb1
	 Yp8oKYSZSc0VPUCkMo04B0DSO6geklS88zxpJ8rxtST8x7/EnWDB2XdZbA4vnGnu3A
	 r8/Ps3e90qbmwTRs7q+29XRdw+snz6zEHwIg7jN/JW3z1aZwdmvKriExpaF+N2bvr0
	 T1eAOyUEJxNYG8uu1RO0BuU1R49czY+17uvCNdthydPS3EcIQMiVlqZBN++Q5uROzE
	 5vZLIlFzeHjWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Bh7FkW6wRWa; Tue, 28 Feb 2023 07:53:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F246402F0;
	Tue, 28 Feb 2023 07:53:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F246402F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC1D21BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 07:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86323401D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 07:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86323401D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qu3gzeQA7XC5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 07:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0799E400D6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0799E400D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 07:53:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="334116621"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="334116621"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 23:53:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="848157717"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="848157717"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 27 Feb 2023 23:53:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 23:53:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 23:53:08 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Feb 2023 23:53:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 23:53:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tr8hy6wnxMiO4sL53nDvMXj+sMbC0B4d8AugYmVPZh91T4WdQYq2nYjsji9ch3Kz6tkdZd2I8oc5kdUoVJviw9hZtnCfG3/dF8U5qqdhOncqJlXzWwne5I0HTcqJstqJ+m6sAWA+ZhV1d4tD1+Oq86jaZd6cauvk42JBuYydmPPbEGQCF4GuoDf5Bfrs6QFmjLkEhX4bTaY9Uc3FdTvWtZVXHTI2nkhN2E4FMVGDFNafk8r3VdbJZ+pHzcTtGH8XMTQuMU+tYB0xsxIiWyDxqRoHITK6yXBs+NmrSayDU7HoSB6DDohfGatnSm1mxkwLAw+gmAsF6l7UrAsDo92sfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6KYWAnoIc3h5xaPLWFnzSXWQ9wktiAYz2EtM8RkWfQ8=;
 b=KUIDU9vXX+w6L0KdhC2ggmI2lN5C2fxAQ1nzZDq/7CH/59xCZJj6fuF0vYNDZR4U7ccslbuyKp/YEis9Y4HJf1XvvHat/LjxOp41w8WP0u6w8BDZejJCjGsKPi372ZY5HyXwHFp6Xa6/988G5mNoP1Z1TyslduaZENW73JT34LOkwvTC+x6lMdj9c2BOHAl63mDH17M5iIlMMHR4jbqVViJ9N8MJFt77MERz38YS8Mq3RED+gLBcyVKZr3vOqjFGsGg6B33wDGvZX2umGvORMvaPaO2dfADHhiLv8T+S0CXHPVSRMtS/pwgHrHwEPje9BXmhiMLYebVN/jeYxC+InA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by IA1PR11MB6076.namprd11.prod.outlook.com (2603:10b6:208:3d4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 07:53:05 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::601a:561a:bce9:967]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::601a:561a:bce9:967%3]) with mapi id 15.20.6134.021; Tue, 28 Feb 2023
 07:53:05 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Martyna Szapar-Mudlaw
 <martyna.szapar-mudlaw@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] [v2] ethernet: ice: avoid gcc-9
 integer overflow warning
Thread-Index: AQHZQIi1laW7lWXNZE+8UlYydmfXPa7kEeRQ
Date: Tue, 28 Feb 2023 07:53:05 +0000
Message-ID: <PH0PR11MB5013A61F5D22022026C09F0296AC9@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230214152548.826703-1-arnd@kernel.org>
In-Reply-To: <20230214152548.826703-1-arnd@kernel.org>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|IA1PR11MB6076:EE_
x-ms-office365-filtering-correlation-id: 6acac551-4c92-4f97-e310-08db1960d35c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y0mMrFdV9uEJGietDlKC859xJxLz07ay7HM710nVN9wbkmB5cwizNg8mTij/zSEmFOG3VFTKSs2EoWuBQFTryCGShXv2F8yD+c9IjRkSx4zfspessqLljBWm0XqwHtHZqAAnrgqNPk0LHN9pp6nc3X4hCAocoVsn+MWLYs6DEZDCQy0IAAn7TXH+RsXNtU7bwyV9jLoVsKJepp5ObTwVGkCfWGELPydZsy75u95VYXtxQPf9MPTyD4tau3Hf00RlAqjWZaWUTQaKYryamv67qu0aUgn/G8/qrm8s7njEJIBrGw6OJPGUVjNJYFe2NVLjHSprZGJ9QVvNLZ4GChKjcPDSOlGXSTjTTkW2fDYiFudGHiWOIuLsJTLdrLrvZ1zcG5d3p6RfDXyM5CYuCfQ9YlneAMKjRVu5/GmuAtApwC9F7epjIWx0dZinze2uPsJOfjyWYhb5pXCTE7WeN30rVHP8tFuRhBMi0QXQwBBZ7/a5d/2evL5h9uwwcNxXFW3e4HdbHtCin6mqRHWJGCEyrhhrpm6F/+QNq09C6bqT85dTdLQbfbZvWxAMSI0K9QLouC7upzTux0lzV7LYoK/uC+GSI18hIgqGHFKi/zfWigjCEo12BOne1uCcbkg0D5Vs7aatda9lTXGcXue+7ekan4PbHrEVYiQR9vMzVKkTOQjIfJhHCutIxA+T4cWQLSXnnigIvEgurGM9oiqxowZca7bLwSfoxq92x3x6Vg/CCJk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(39860400002)(396003)(376002)(366004)(451199018)(8936002)(7416002)(52536014)(5660300002)(71200400001)(26005)(186003)(316002)(66556008)(66446008)(66476007)(8676002)(66946007)(76116006)(64756008)(41300700001)(4326008)(86362001)(55016003)(54906003)(83380400001)(33656002)(110136005)(478600001)(53546011)(2906002)(7696005)(6506007)(9686003)(38070700005)(921005)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y7AlwuifURSmPq3Bm8wAcCFapbBn6cXQ3IroinuhYPhBSymHV0EzD5ZnYIEm?=
 =?us-ascii?Q?ghNX39ziNki55JByaimVQegjJCnHLmdrA3unt1JxiaC9yB7XyqIv+vYnw0Mz?=
 =?us-ascii?Q?O2GZD2D86okKFmbRqQyvixETxr7TbgZ2NOYJ/tYgL1dcNi3tq2oNd/DlQEE1?=
 =?us-ascii?Q?qgc5OlhUJpkr46y7Lm9oHedb5QosLf+orWYklL+Fi0XWvzfUNduwbDOy9QzB?=
 =?us-ascii?Q?3iz0ZGkrMGgFhYbQBYKgy9nPVA3R/Fdld+t4dV3X89jgllDu4IbKtAhP6Cn2?=
 =?us-ascii?Q?63dRma5WxTI8+Mxt/vi8BGg/t3ssh8FQArPZBVJ8Kw4Ef57PyAUH0HGdwZ0B?=
 =?us-ascii?Q?h/YA0Ra8SzhWDp7IXRz7xKt3GOEZTzr4tM7jDxV5/DxmfdqrSlQ2QZb5Nr8W?=
 =?us-ascii?Q?MGu7IsJjtZkwd5z+JOJIAgOomVprI+LtFnZqK2V5/ravmB0Ho3D+H4PHVDyl?=
 =?us-ascii?Q?rQfBBaoRv7x6HoUHdzn5rVpetoSPcV1V7hTv65bY/sJjPkVIryrw4dK8GGbT?=
 =?us-ascii?Q?sIPgIskVieUom/AQ9aXpfF6x0NcBIP25uff7/wnvdzso1yo5W4IjG+Q2+9Jw?=
 =?us-ascii?Q?+ETfj+N+eEB5/zaUHdSjhyvshN2iO0rsVplE+5n/Sl+GCV/6L45PvJ+LpMa+?=
 =?us-ascii?Q?2609PUFzzpM3Z9mFEvVfiY9t2L21dIh8cC6QF2TNdUIU+KZQ5ng0HtG5FstU?=
 =?us-ascii?Q?IZpXBSZbJBoBJe+fVgyIZXAMS8YRi6yGNWjjRX4KhHX6zuTOYyCH+ijphmp3?=
 =?us-ascii?Q?PK/tZ30H3xu7REgusjb5Md3Ds1wXHzTXJIMpe2xRsBFJosCQvlDymUS8vFrm?=
 =?us-ascii?Q?0cJtrlnQW0FaOvtwqkdwY1ecm22NooDqYKfzBFDvieocY2Eh0W849leO7Yld?=
 =?us-ascii?Q?7RPCxcvudY67F/9m8J8s5oHD3fxwrFOcpW8zUJE60YvgvS5d+5/39U3vRglr?=
 =?us-ascii?Q?npPIaHDze5cGfv3R3sFXgHUOa8pLr+Lrz5LQZorFF+2Lw6T8RPiu01pj3AEm?=
 =?us-ascii?Q?NZLJ1ZrhRLJRj5H2j4u+0D423OaP2Yu505iTWX1YOsHqutUO2zUEFJYSi1gy?=
 =?us-ascii?Q?lKmZHpvEnVatvcuYSKE99nJCmDmuAPNOoNpADmIOo8j1F80pLrn0ULz+Is4g?=
 =?us-ascii?Q?sRzOevjuT6q98gyH+Vkv/RuPPriEx1ZYWt4ovIA4PFLU3nDeVT46dVp0nVg3?=
 =?us-ascii?Q?8hWdKXUUPHN2xaGtbVgbwLaQR32AQyw5O9x0duwDHJKGxH8uSkrUXwQd3OKz?=
 =?us-ascii?Q?NlqMmFGnQ1EQL5+dlkyMq73lsm8Y1RzU1POJ1wkxjzharifNrh3FBHKbT+Ks?=
 =?us-ascii?Q?elUkkr8TZuAoIuwsY6ss1G7h6VnobpGy8hxWRQAlAht2MTB8E9GnpN7WXqM5?=
 =?us-ascii?Q?X07ytU8T7fUaWUm4nioFWTR1XMYsjPMRFPvqKUtw0j6pKeXRgngXWqCLpPpR?=
 =?us-ascii?Q?AjZf8XcYpvWsu3ZeuKiw1iKo6bgz8FO6qTH0f/g4h85eq3qjdsQT5dmdQWk6?=
 =?us-ascii?Q?CPpd20S/HUJRDcRp/Rconrtg5IxkdNp5qHiweI+bqk3GeHD11hGo3NsQ7U43?=
 =?us-ascii?Q?lWQEWGHLONKsXJYVXVaE209rUe8Fs26g/EGpzxRiVzPBbLWHrbMbIVHLqJeb?=
 =?us-ascii?Q?9g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6acac551-4c92-4f97-e310-08db1960d35c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2023 07:53:05.6378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fAhymrR8Q1YTp21YaHSKhv185VURZI6oyVuB+I7CbPbuOz/rXZA0bDvJbwLKuQQ2F90pQvXn7lVnvmoh039hd4PRom9IfZcfWACPuU7/S7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677570791; x=1709106791;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BflVM0gZc4CmzfDTFVwQEN2iyy7o7DiIR3/3+dO+DZc=;
 b=HyynhlXTQef7QWwRn6QLXalIg6LEYJ5GMPkdMSw6q8b30pAGJFWxqWvD
 EusQBApoedlTzYjxTb74YFj+HrldMVtd+zm8ULJ+osm/JkInqQ2bt0Pbv
 m30HbOflvKHj4oq1vmwWQFg0GXJDi5n7J3fSRjWnrCw0a19XMCJsmvFQA
 t8zXZ9/dpKjI2eUdQCKyKQadIvPuUtDvIeIJpBZTZEGOr+CY2kZJiv+Y3
 vR9G9vv1DlyavKr8xfBKFsoWMzXAqvey2eCOUxVV2joFp+5tjAPvEwfOW
 Eqx1WnPVIKEZiHWRPQ7MpSAVvjI5z94hbwbjvT9PsiTnfSYxMGBosmVhr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HyynhlXT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [v2] ethernet: ice: avoid gcc-9
 integer overflow warning
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Lu Wei <luwei32@huawei.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arnd Bergmann
> Sent: Tuesday, February 14, 2023 8:56 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; Martyna Szapar-Mudlaw
> <martyna.szapar-mudlaw@linux.intel.com>
> Cc: Lu Wei <luwei32@huawei.com>; Arnd Bergmann <arnd@arndb.de>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] [v2] ethernet: ice: avoid gcc-9 integer
> overflow warning
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> With older compilers like gcc-9, the calculation of the vlan priority field
> causes a false-positive warning from the byteswap:
> 
> In file included from drivers/net/ethernet/intel/ice/ice_tc_lib.c:4:
> drivers/net/ethernet/intel/ice/ice_tc_lib.c: In function 'ice_parse_cls_flower':
> include/uapi/linux/swab.h:15:15: error: integer overflow in expression
> '(int)(short unsigned int)((int)match.key-><U67c8>.<U6698>.vlan_priority <<
> 13) & 57344 & 255' of type 'int' results in '0' [-Werror=overflow]
>    15 |  (((__u16)(x) & (__u16)0x00ffU) << 8) |   \
>       |   ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
> include/uapi/linux/swab.h:106:2: note: in expansion of macro
> '___constant_swab16'
>   106 |  ___constant_swab16(x) :   \
>       |  ^~~~~~~~~~~~~~~~~~
> include/uapi/linux/byteorder/little_endian.h:42:43: note: in expansion of
> macro '__swab16'
>    42 | #define __cpu_to_be16(x) ((__force __be16)__swab16((x)))
>       |                                           ^~~~~~~~
> include/linux/byteorder/generic.h:96:21: note: in expansion of macro
> '__cpu_to_be16'
>    96 | #define cpu_to_be16 __cpu_to_be16
>       |                     ^~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_tc_lib.c:1458:5: note: in expansion of
> macro 'cpu_to_be16'
>  1458 |     cpu_to_be16((match.key->vlan_priority <<
>       |     ^~~~~~~~~~~
> 
> After a change to be16_encode_bits(), the code becomes more readable to
> both people and compilers, which avoids the warning.
> 
> Fixes: 34800178b302 ("ice: Add support for VLAN priority filters in
> switchdev")
> Suggested-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: use be16_encode_bits() instead of a temporary variable.
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
