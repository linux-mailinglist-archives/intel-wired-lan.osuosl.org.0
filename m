Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 983D04BB46C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 09:40:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12C1F60A87;
	Fri, 18 Feb 2022 08:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A60YKPtWwiCC; Fri, 18 Feb 2022 08:40:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01FCB60A70;
	Fri, 18 Feb 2022 08:40:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31A5E1BF313
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 08:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D9AF60A70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 08:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZ1M4jE1gqW4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 08:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39B3460806
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645173633; x=1676709633;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jDwK+8SeS+zPWpo5ZP+Z0Ve+APtRRzf94+I5pqNYi7g=;
 b=S29X0eqqvkoHqfeeXMZkx/NYtv9V554YDprksaKJQD/+XJFMzxMA79Lw
 OXXsZSQwBmb5DIto2etoZwaFxgIsEQFyoxQUdPOlkymM0nKYDbVqhTxf3
 K/b3xGeYJsRFfD0dY2WWHfRg3PrlgOMhGOHpJyo+izv8gh3xc7pUCdGa9
 3RX+maMCmqcL9t1d5ropx7mV5J90I67qbmF5ETvfOusk3A5WjqSPLcWmb
 htM3js2+Lhqn43H+rrWsoglBsNxQyc3eVhpAskn+4miR0i8ViEt21E8zk
 kB7hfzFye4Mzt0cC1WstGBOapnD+aIozTtBhxZvkgvbjth7qwQZvz/7Rv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="249918172"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="249918172"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 00:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="590129536"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 18 Feb 2022 00:35:54 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 00:35:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 18 Feb 2022 00:35:54 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 18 Feb 2022 00:35:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O257q8phfNAdfvR+vURrVfMoAgu21b4l7pwApqv3wKklNLiDWpG+4P6FjSt8hZ0CYAXqfIC0D9/9pJffS+MYvRg3OzOjs9rJ1NRzdvEDR/T1Eew5VQ+Gj6CSCCd1ffgXmwrMzCJ0bZqKVTA6yNUZLy4PouuoLblSF+rURW76dKuiI5cSa23SnPZPvYPlescW+7OFLT93O0ChvC4hRDDcN/hJoDA12DyC9c8fvt1usKHYd8XuCoHmPGHb4FLe+iBiHh5bRzQkuOMjwxMu4D0xt5gzc7jGfH9hM7uoVMQelAtI5AWN3oYfGLS1u0swdXoOFr/jmsuaXXylAEX4S7mUPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MnpnkqdudcIox2pAwF6SCQzmmOBYGBYkUtlfrcQrs+M=;
 b=Ug8LOPT/M9CbcAciAE8YCQERkUAlykOam/JwaJQvO+SAW1LbGdiwlfeNwztjjrHrBvKj19hfCINGVGLK+Sa36Y5s9PRmQnVf4wT5Z9ysHuOQM5/Dw7mLpH4VxQ/LaHsHZeh9Psjd7BwUmxnfIwAAJDO3TaD3Tj2pjHHaQwl6JJ4oBNmiPlVK7X6ZVFsS3TrPIAbfyhp9xhh9kNAUo92Ndqa6w11jj5/W8k/CqB7EKmLPuMoo0QB9xbEIbg0rIMa6n/E2slB6vHlHB8l4QIDY/+3xjPMOU5vGKNIW52T57SqnWis1tO+/O8syT2gPtn2odI7urYUsu9FOtvtrNJhs+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by BL0PR11MB3393.namprd11.prod.outlook.com (2603:10b6:208:62::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.12; Fri, 18 Feb
 2022 08:35:53 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::88c6:8d9c:1aec:9a79]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::88c6:8d9c:1aec:9a79%6]) with mapi id 15.20.4975.019; Fri, 18 Feb 2022
 08:35:52 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] i40e: remove dead stores
 on XSK hotpath
Thread-Index: AQHX5hoD+L7qjbs4dE2TWUt3/wj9c6yZeNdQ
Date: Fri, 18 Feb 2022 08:35:52 +0000
Message-ID: <PH0PR11MB5144743C1D59676DB4E234B3E2379@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20211130183649.1166842-1-alexandr.lobakin@intel.com>
In-Reply-To: <20211130183649.1166842-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ebb99ca-a5f5-4453-b2f6-08d9f2b9acaf
x-ms-traffictypediagnostic: BL0PR11MB3393:EE_
x-microsoft-antispam-prvs: <BL0PR11MB3393614BD85F833AC1E10AE5E2379@BL0PR11MB3393.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:530;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XlB/ncKqsCxDAClQ9Eu7KeEqDekWlOvhXI+k1Y3TsE4ASoCH4KWYJJAJ10nU/6aR4RFIIgZnTJ7vWtZX4ICmZrKuxpp2zGLPzOl3WmWgYLpMKNpFHGan6FQGVds+oigB4IgHvkmZcd2aLRga+rx4BzqXdwuc4lRBOO8SzJRO8apcjKkaZGJZ8SMFh44TJ1CBfz+2UhOoPQ/JKm3Ev69S5i+2fU3O9xCLsTJpOdtd/AQIPp4UveMlTf2YIHe+Jlw/8Gjwyr9tE6RHllskMCgU8TMe4+DqCbTMv0dXuPijKd3A4YdFXorGmAIOpUthociwaB4iNE2faHrA6ko9mDhuSeNVX7LgUZ+2F4wmoWT+l2PhVu96j5+yyVpyqzESzULHYuvVNDJ7xrgIQ0UcgxWDX1qWs4TiuxY1S4bb38Sbv4YICb+k4NCkqIYl0CPnviOCE1FEPbw3eZhBmRrA9Ac/NI5OOmfp/uYs9f0x88MiyPXeG7f/tebhzDlSkGjRcak7g3WSlHThveBmY3LyhEmRu9jksGuwuMEAwCDlqubKKbJLbhuFS5VlAV6stIt0OY7zE36mPN5ShNSCo7QSYImNC/ruxgOwTJcJN4rNQBB2DGpALNU4mJQIa1qsyCMCAp4qwoEg1vvQ91sTVin92YAlpCcq2eJixoD7acbw5rgohWavU4OfQ2Qy0X0yXMATgKw9DTSXobAeey0r1DFDvtq9kA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(76116006)(4326008)(5660300002)(122000001)(64756008)(53546011)(8676002)(38100700002)(54906003)(26005)(83380400001)(186003)(66476007)(66946007)(52536014)(316002)(7416002)(66556008)(110136005)(8936002)(66446008)(7696005)(71200400001)(33656002)(82960400001)(107886003)(6506007)(55016003)(38070700005)(86362001)(508600001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iIOXkf4sA0QmLP2xOGpBIGpLhntyPTbaxKBslG4kDEZMS0heh6k0QdePO/Xz?=
 =?us-ascii?Q?M+gr+rWsnbumOk9XOZ91AdJG7J0QqayR1lT8p/vNF68BrO1+mxtMkv8lgbTP?=
 =?us-ascii?Q?TSa+9oOx4Zczy11X71NcKrmmu1WsXKqOAKgHj7WxUjDGdNuIV0s9Ix4fxVzh?=
 =?us-ascii?Q?sgur7RpHOA2mjm0kqIYglBFYp4LoQPffRr9GRHe6XG85YKKIFVQIu7yGzu1/?=
 =?us-ascii?Q?KLGWje8Hddd9OXZHeo3sSJVLSIy5wFjpLU/zmMEwfKfnpcQMRgt78cQnCJ75?=
 =?us-ascii?Q?xI2Pesadama/4Oa+cwkhBC/ulyxmChUK7C/wFtTXhPzCkkVt99dnOpbwL4Vf?=
 =?us-ascii?Q?6Tzscv5kOZk2UHr78x3KklupUOAxZmX9PBqcs/oy/1SDh8mwMTfaakaWwoyu?=
 =?us-ascii?Q?HNlh7p7kcxfvm20BFlEgE79BBwY63iklqLAyy1JaehRzSlAyhxsYwVIiWwzJ?=
 =?us-ascii?Q?PoV1ZmbZwwh3bwbzpKXWgfXGiymmzJ9d4c/Ox6BVw/EQUzOuSFQR3343/X9N?=
 =?us-ascii?Q?kEI8hv6JCoz19pvYFqk+evyQYNCe0x1DzlSgH5/29c6eE8DEHXUqjTzLj5tx?=
 =?us-ascii?Q?pTZoqCxv4H++iOKqwJSidKsD4ziQny0swgQGJbPMlTzuVyj+mDj2UABe/mei?=
 =?us-ascii?Q?J2n4TWhYpRDgLQn0Wxm4hh36MyUOjMv6kNXKCuzrGES0JnK/5NE/1NbaFXxG?=
 =?us-ascii?Q?kaV88b7fG8LVh8LJX35VYG1pkFgWkDvII1UOA6hTSWS+y1yer3759A3eEySE?=
 =?us-ascii?Q?Gm7QkjjJ5Lva3hO4g/dxZNzr/PXhMSRvddrZRnFH4GZZLg+C0sirS/O2wct/?=
 =?us-ascii?Q?dkxlVFMaaURdIR9pApsjvc6H+p8zQvoNDSVaYJ8L035X9eo1W/B1DCiRgPra?=
 =?us-ascii?Q?RuLpgej+LIMmO5jObqLTYWukcjLIlleYu6nhAPpDa4zit8GKRQxhlPlrDkmQ?=
 =?us-ascii?Q?mGizShasCJw+X1gizleG8iV6dqhzrCV7KetV5z8X05qkYL8oOr+GtNoS4AJh?=
 =?us-ascii?Q?SZjwgYXASx3WvD+rGMVjYKvgfIvdZblXNaryJzJXqdfIppAy6KtfVF8at6mS?=
 =?us-ascii?Q?YxH/qYGUWV3Oo0EmQfv6f5Pr5AxtRMehYRo/XPpEaW6rIC2mFbEAMHrrzRZR?=
 =?us-ascii?Q?ZItykXFlmC0s+clNm85qFsy+/wiyqTrYyNkpmlsSV4gy2pwN68qeftW5tJDR?=
 =?us-ascii?Q?iVFGcKphY3MkbJKYWPTyPXbdED+VWfCSRZUTfDi83rgXarh7QoRsLfxGsKAK?=
 =?us-ascii?Q?zM6q6DIPY2XKUzT2lMuJd+7LF8rBnXwRq2UdJv5X5e1N/f+EK9xTx8UZtgdc?=
 =?us-ascii?Q?mKmIVhIwfAXbTdfUAYga9Po6pciBwCFC6qopQwmAqPCGLweiUlK2efqLwNy8?=
 =?us-ascii?Q?qPz3jiWLgNdCbuE/5wG2VelKvLSTof7cQ5RrfaoTT2FjTPwqC02KVvWkuSTE?=
 =?us-ascii?Q?Ci1SsjzbmIcEMXq/x4OYYS8ukxRWuJBSnL1SPNT/3oCAz7ShPWeTFK/s8xTn?=
 =?us-ascii?Q?k94RkApT2/Ytw4omg4iFuWIjqGI3vkC+/BIY6nXprDx1C3oIbQ+GKzemuqoG?=
 =?us-ascii?Q?Lby9keemSj8eZWLPBIk7XLfqc73ANgrGTSlOBmtYrrh7EVQE38ABRmwJL3DD?=
 =?us-ascii?Q?9OLVuRzVBU6dT3ByNEfsaU1Jm6GHQ/eQGIgBMWCz4NZb7CBbl8/huAl1VcEU?=
 =?us-ascii?Q?Tdi1iw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ebb99ca-a5f5-4453-b2f6-08d9f2b9acaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2022 08:35:52.8297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1JyxKeSwN+aGAbK7rDPDMnxTtewRE4cCCT1Ea0yWj1UDzQXkOOW8jLFy+cYZ5PW0Ix0Ic8ZKGbbNDe5tGpkAeIP2DC6xqu0YBZA3Q1kF/+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3393
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] i40e: remove dead stores
 on XSK hotpath
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
Cc: Jesper
 Dangaard Brouer <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Alexei
 Starovoitov <ast@kernel.org>, "Nagraj, Shravan" <shravan.nagraj@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "Dumitrescu, Cristian" <cristian.dumitrescu@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Lobakin,
> Alexandr
> Sent: Wednesday, December 1, 2021 12:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: linux-kernel@vger.kernel.org; Jesper Dangaard Brouer <hawk@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; netdev@vger.kernel.org;
> bpf@vger.kernel.org; John Fastabend <john.fastabend@gmail.com>; Alexei
> Starovoitov <ast@kernel.org>; Jakub Kicinski <kuba@kernel.org>; Dumitrescu,
> Cristian <cristian.dumitrescu@intel.com>; David S. Miller <davem@davemloft.net>;
> Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 1/2] i40e: remove dead stores on XSK
> hotpath
> 
> The 'if (ntu == rx_ring->count)' block in i40e_alloc_rx_buffers_zc() was previously
> residing in the loop, but after introducing the batched interface it is used only to wrap-
> around the NTU descriptor, thus no more need to assign 'xdp'.
> 
> 'cleaned_count' in i40e_clean_rx_irq_zc() was previously being incremented in the
> loop, but after commit f12738b6ec06
> ("i40e: remove unnecessary cleaned_count updates") it gets assigned only once after
> it, so the initialization can be dropped.
> 
> Fixes: 6aab0bb0c5cd ("i40e: Use the xsk batched rx allocation interface")
> Fixes: f12738b6ec06 ("i40e: remove unnecessary cleaned_count updates")
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
