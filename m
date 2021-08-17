Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1298D3EEB18
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 12:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C56180BF2;
	Tue, 17 Aug 2021 10:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qizYCGhg83zt; Tue, 17 Aug 2021 10:39:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41F3D80C30;
	Tue, 17 Aug 2021 10:39:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D76501BF271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 10:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C551A401E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 10:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dLL1t7adj9ZF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 10:39:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2550D401E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 10:39:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="277066168"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="277066168"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 03:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="593308092"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2021 03:39:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 17 Aug 2021 03:39:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 17 Aug 2021 03:39:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 17 Aug 2021 03:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPWOrjXeaFgEnLtv20nwSqATSJLKamXGw+fnI11wTmv315VMC0Rdek2od1I3L3inWaJDlLvOg5e44ZcVPkCHF4F321HsjpM7b38Z/ppaeYWWIL9siAdkZS/XxghfRDAw8GAwcqtzz9xmu4CNhbVNxBcr+L6TU7ZZBn0CCouD8NJ7jOjNPED0OQWtgY9BV2ytfPhvPhtcIuPSAXnQuCV8GE3KuTUyB4/AxBVk1OJdawuezdsg1yPCfygxtREhQprNt9wukjMt9LWOQvectkujyLnOzNOVnm+BbmY1PRT6gNbsdBZXzGN9gF9ZcNiT+rp69E6EYEM1z4O+qmo/abtHKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2/AWyhl8+6kAt2Y/Bktnkm6Jp2mL7FN4VKacU8IRbc=;
 b=Izbbhk3cuOI75K/wwlEGv2/2j9vo11+k06OfMrlTE19QFQ/dtz4DCK81++10E2ZppxP93ImDKAkENLA7maxxw4UsVhJ+peBA4ZhgNsNJB9B/2kWigmzVq/K57SJt6VEG0w5ktla+il8ipSmdvWon8nN+ZlyWj5RwJaXkCz+xhfLyOW3vnlKjQZDk1LNI3SGY5KVuSMEfxIyz0lDi6ok8tNSTG13Zfw45RRk5xu2vBzh9xIcNNqooNxJXebnPJVkZKurqEwTgujIBmqNmXWeVR/jBbnJPCsRo+lpQLt/ozPzo1rRZnh0EQvlHnuWlpZDxiHPOC1YyQOejRIwSKBbjmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2/AWyhl8+6kAt2Y/Bktnkm6Jp2mL7FN4VKacU8IRbc=;
 b=AIrjIVzunAJTdWN6UDE3ZPtAbasj1mjuPlOs5o4jRL87rVu2DsTJAxipNzdx1OAHXLmXu37AiYyEq2Q7K1juBJ2VeXnyR/SlAgLFwRrZqxZoVVcqbgpHa/hTLthG6OFRloVA2HLq4cgS0yGsFidEpOFlkQh5hqyILIS0MZCfukM=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1424.namprd11.prod.outlook.com (2603:10b6:300:26::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Tue, 17 Aug
 2021 10:39:27 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03%3]) with mapi id 15.20.4415.024; Tue, 17 Aug 2021
 10:39:27 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Wang Hai <wanghai38@huawei.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "ast@kernel.org" <ast@kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "hawk@kernel.org"
 <hawk@kernel.org>, "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ixgbe, xsk: clean up the resources
 in ixgbe_xsk_pool_enable error path
Thread-Index: AQHXW5cPLnhPlSK9DUSGVPv7dxwTYat38Pig
Date: Tue, 17 Aug 2021 10:39:26 +0000
Message-ID: <MW3PR11MB45541B749D1F9773C19E7B749CFE9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210607122644.59021-1-wanghai38@huawei.com>
In-Reply-To: <20210607122644.59021-1-wanghai38@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4fa5d2a-1a6c-4124-32dd-08d9616b496b
x-ms-traffictypediagnostic: MWHPR11MB1424:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB142488106C24640C0C61B83F9CFE9@MWHPR11MB1424.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vSvAm8BpcLGNmtURsaGUC93+7cTi2qlfaKs45wJeopgO1nLTqanGc61NGSluahmINiYlUIOCqS9baDfYEH9974R8qIJCEdCuJqMoL79QhnBKaQcEbIJf8Z7Q8wFSvpuBtD33d2BHedkBgjA+CJEemkHgFypb1mUhFvh8D7+LEeEq5OwpHxshn0tc9hJAaSSTdgr0y/uskArvMA8+bLQp2VNJv6hxNquhge3UszTd3gGt9prx+HXZt5Hnz8MQWXLSF+x+wr5aYp2ZEmmo9y7kUq/k+0FRlvjIZ0RH6Z7axt+G+AQ6r0KObzrEAHzBWyQes2KZzQzJZJTSrEZ9eVnlSyNqG6Du6dleZu1Tfj2+WeGgJQi/CuC+ftLAq59tP83wAGxJduHZgaFANReTpjcxhQfbXVJQXfBS434fVjT2Y2+pCijB/GZG2QtiaWSyLZKJZ3zIFu08Xax037LSaW+DKHPcL/Uqr8SONq4zFfT5ydblvryOr6cFaqcIXqv4lPRPaIEgpVGqHB8+d2KUj0Zbimuuyg+AehcwoOjjOGe6mx3kZUoMl27DwRddlh4Ds+UilcRoWTLztY0alIJEZw0yh6Hb7hlMSyogFqpz1ks0AetBm8SdeBAQ29S2IwYeP7DQz3CHWif7YCecU9z7LGOtjy+9cLFW6Y6sMCXvX3HhsyjadrgSF8mtCBxaM7nnLdk48oGTpZ33CeodNR4UcXaU+H7KJ3ozG1BkFY8A5xeEFeI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(110136005)(26005)(83380400001)(76116006)(8676002)(186003)(71200400001)(86362001)(54906003)(8936002)(2906002)(7696005)(6636002)(6506007)(4326008)(64756008)(66556008)(66476007)(66446008)(9686003)(33656002)(7416002)(55016002)(122000001)(508600001)(38100700002)(52536014)(38070700005)(921005)(66946007)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CzHjXDD/BxVh90Xs3jyDJWZF/L1bIC9NAY2ZXdPB3SPA0ktBGwkc9ZzmT/7t?=
 =?us-ascii?Q?M1iQyVmqFdKNDjh2lnd2f09WG8pwg1+2dARf2N8NcI9GBKlLON1B35wvAPh7?=
 =?us-ascii?Q?+ogSN6VEm7iu5WBVdPDpuy2ilWTfmmd+5q1qPJiNmIHIkPXRb+JVJLsDb8TW?=
 =?us-ascii?Q?csX1a4oMjtNwEVSYQKE7+7AZ6uxfiqzCNL3b6zvkgQSskgXGuFY4Eypeg/g8?=
 =?us-ascii?Q?RUYPMrCQqFdr5bzbqp0hL0t/NlIjhTWt9XCfQ36R78i8YjwEqCOte+N3TPNO?=
 =?us-ascii?Q?z6P/1CPFU0osUN/WwQ9GcYFBKI1hQCv4afEtSArw9+HVKFcTirTbrMBrron5?=
 =?us-ascii?Q?nOldi0jybmtKRvvZ4/2f8x6wAacDr6oMt7p8G81ueo/rmc76JHOvnN4AwsmU?=
 =?us-ascii?Q?hguSqkXkc0Tayiy6Y8GZPtwH8wVRQKpFeNa/4crraCZOq6kuP+O5uYy1y4Zb?=
 =?us-ascii?Q?MvV/dXGPtiAI491XxLkTfrZ03ROXYu5QC/Ku+EC+wqZp6LhLyyEcQUWyOs1u?=
 =?us-ascii?Q?+JiWXjJO9SYfOE5ySG5UmAVWmOK/j+HSGjIauEJRsNHfo0SmqQkaInd+mHqF?=
 =?us-ascii?Q?hSvCz/KHHkOApb5CTKvnOc1Qp3NcaoubeMuctELKLfipFZ7UyOuyyvCg/fFn?=
 =?us-ascii?Q?IXkfwNXEYiCfYH+wHwLOzrt3YyczYuPXDPb0CkYnCdEwH0xISB/iEFqwvy0K?=
 =?us-ascii?Q?YzNYMbR8Vah59n6kG9Wwkv6jK3m/1H+5wIcTZh2vKIshnHykabb6nYGSq1hV?=
 =?us-ascii?Q?Dy9VZZ22wesSZXbsCkL/wXy/qMz1zLAgddqap9wL1Be231EtXcXrDd5fn3UD?=
 =?us-ascii?Q?9DVn5R20tNHORtXAyLP/Q9jReZj+Yrc1EwMYJrhjrjzi8+EAVv1ZjJpvt504?=
 =?us-ascii?Q?1es53ziJa4GGwBQujD8fysZEuDyODFEqMcUd+6ESj8HVWBDDd7TdPodLKzzM?=
 =?us-ascii?Q?f3Heps4U9Pz/Gt/NC64ME21qpO9LvFS7/wFMs8P0AzbuhWDffCewwAr0cd7C?=
 =?us-ascii?Q?2kppVRtzIhHmoEG08N3rvyW8WmikvcJmCj6h9/EBhEWKXXKzsYfTzvG1IRN2?=
 =?us-ascii?Q?V3OZbWsuZMSjD0qK/znKD+cmlSojE07GsY+Ociq4+oOyIJLSw/JyOdp/0gQ6?=
 =?us-ascii?Q?ooshn+VHHbiCbx3yJpesO+TLcARlvQ5aLQRQ1F7ysFIDiK+GsbhBilpepje2?=
 =?us-ascii?Q?sYZ2V+yXkYFZcJy85qMN8+EIPbp/vYHg8mZkehvhUrcYxfzA8EuKUXZfl5kk?=
 =?us-ascii?Q?rYVjhdxt3VE2l7TxGJoPfNVGkMY9W16k2EKDw3zLQw0kYW5xu8B6qjSrl5nS?=
 =?us-ascii?Q?GqFss4apLmGNVmceKiG8S8fq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4fa5d2a-1a6c-4124-32dd-08d9616b496b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2021 10:39:26.9478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cvQJvZ6orpDMTO5mEEdUQiTHhrGOpn1C6T5zGvhzWjn1FttUPV566qIQDhmJxndmz+tLTH2cKea7Exnh7QKFynZiPjMItmTw+gttgFSORiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1424
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe,
 xsk: clean up the resources in ixgbe_xsk_pool_enable error path
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
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wang Hai
>Sent: Monday, June 7, 2021 5:57 PM
>To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; davem@davemloft.net; ast@kernel.org;
>kuba@kernel.org; daniel@iogearbox.net; hawk@kernel.org;
>john.fastabend@gmail.com; jeffrey.t.kirsher@intel.com; Sokolowski, Jan
><jan.sokolowski@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Cc: netdev@vger.kernel.org; bpf@vger.kernel.org; intel-wired-
>lan@lists.osuosl.org; linux-kernel@vger.kernel.org
>Subject: [Intel-wired-lan] [PATCH net] ixgbe, xsk: clean up the resources in
>ixgbe_xsk_pool_enable error path
>
>In ixgbe_xsk_pool_enable(), if ixgbe_xsk_wakeup() fails, We should restore
>the previous state and clean up the resources. Add the missing clear
>af_xdp_zc_qps and unmap dma to fix this bug.
>
>Fixes: d49e286d354e ("ixgbe: add tracking of AF_XDP zero-copy state for each
>queue pair")
>Fixes: 4a9b32f30f80 ("ixgbe: fix potential RX buffer starvation for AF_XDP")
>Signed-off-by: Wang Hai <wanghai38@huawei.com>
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 5 ++++-
> 1 file changed, 4 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
