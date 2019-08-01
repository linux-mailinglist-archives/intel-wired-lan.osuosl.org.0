Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 109747DFA0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2019 18:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25788806EB;
	Thu,  1 Aug 2019 16:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4I5kLwwIAwQy; Thu,  1 Aug 2019 16:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5FBB810C3;
	Thu,  1 Aug 2019 15:58:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC80E1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 10:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C809F85FB9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 10:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJS6Rkn4HoZn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2019 10:05:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60077.outbound.protection.outlook.com [40.107.6.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17F2285FB4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 10:05:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mYs7SuWbPxB21lO9VCtpilMsOk1qKUh9jbtdzh3tNXpwGy0g9kHUBeoFZUzKiEVKLtOUy9f8CSzDKEpnKSI7uzhD5o73bb32Lh/VcC3uln1FMBXBJymcEA86mU5vDq3HUufQ0NtAdGWNgeI0oNVJY8A56tDX4f9Anu+UiLht5WN/Ef4hMqKH6lMf1MWfrcuXMNOKmcteV4E6fVGOxJK7lpQQKTP+wHMWBBHoMft0FMTnNdOY/7wWC9/+dbc8F58jHXwur041KKleU6sYdoXsdve5VdaSkkXT0xzAN06Qd5xJK49iZISkFditAuvPuSj/E5U/1ITym5YSXLRXDcp5zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xTNawMYGdQ6CSMwymQP4AgWJwhL/JwH8bPNo7dL+Q3E=;
 b=HxOzdo2qEJYGIedJCoG4Y9dWM3N1M138msAerRdL3P9Gtzf3UHv7OSCEjWBOM4zpK4YT+7Y8vkAh42JZVsSDueFjU5UrGkGMTcB8hSOWLDAk34RUwrJwnk5w5rF57Tv58jbPNh6yApoxlIzyA8wx3RwUVthOwAEhhJuLSdvd0tEOlT+i4IOUNd4P/yKcteWmaebOMIYDtCx72fGhzNJ/+XYncta13rBR7cMUi9IGqgBmvRfbi+VNBgkovHctipdynbHWqnZDo0PLGK8ditc+co0M9+UiPr7xtokBpC6k9Xb+LY3Us3Vy0f26OCdjxoquweYWMDMlXHpr+HsFUxWmyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xTNawMYGdQ6CSMwymQP4AgWJwhL/JwH8bPNo7dL+Q3E=;
 b=eSb/elf1krvqHY1zZ4689bzSJxJErmSEftUVisuQaQ0FeXeGzXoxauFsPkO4XT8W0oKDc7h7239xskiTzoWQSjA6MfJaktVpYH7/A7hywELiMF745yQzpV04FN73BGMSnQgU1P8+aJCM7XkVfHJBKOsk0ASjhdPAP3ktmE3F/kY=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB4359.eurprd05.prod.outlook.com (52.135.162.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Thu, 1 Aug 2019 10:05:27 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7%5]) with mapi id 15.20.2136.010; Thu, 1 Aug 2019
 10:05:27 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Thread-Topic: [PATCH bpf-next v4 07/11] mlx5e: modify driver for handling
 offsets
Thread-Index: AQHVRvmgKn88Wbidmk6f2JCe6+KPYqbmE0MA
Date: Thu, 1 Aug 2019 10:05:26 +0000
Message-ID: <bc0c966f-4cda-4d48-566f-f5bff376210a@mellanox.com>
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-8-kevin.laatz@intel.com>
In-Reply-To: <20190730085400.10376-8-kevin.laatz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0072.namprd07.prod.outlook.com
 (2603:10b6:a03:60::49) To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [159.224.90.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e056a4aa-b56f-4f21-d59d-08d71667c6aa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB4359; 
x-ms-traffictypediagnostic: AM6PR05MB4359:
x-microsoft-antispam-prvs: <AM6PR05MB4359B8D2AB3F436896950BBED1DE0@AM6PR05MB4359.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(136003)(396003)(346002)(199004)(189003)(14444005)(2616005)(14454004)(256004)(66066001)(3846002)(71190400001)(71200400001)(6116002)(7416002)(2906002)(478600001)(26005)(66446008)(54906003)(31686004)(5660300002)(102836004)(99286004)(76176011)(4326008)(55236004)(6916009)(53546011)(6506007)(386003)(486006)(31696002)(66556008)(11346002)(446003)(68736007)(52116002)(36756003)(66946007)(316002)(64756008)(66476007)(186003)(305945005)(81156014)(81166006)(8676002)(53936002)(6436002)(6512007)(6246003)(229853002)(25786009)(6486002)(8936002)(7736002)(476003)(86362001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB4359;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R9y657i46MdluXDMjqVfvKa2iTwKyWFaqpT7UaK3X0kY0ecPltpVECGvbGvayv1CGIkwhx0Fq1RuDWJGlz9bJn06Yauw2mVVKSAEbwuZ15CI0AxRKZ8GMh2i8b2VM/qcJhiM6Sw3+gszwI69lXoy67fqMFgJUZ33Egg9dpiBpUcKoQc2+M7ZlGk8L0zCIDjcaKBTKxVqDRrUqdAPPjao2TOwUuKbCacahT9hHfeWZ3bPerNKAgxlhAIAgJLhnl5JRhTPfA0rflu5pKHwQqhLYs/rT1na/xFnfspj8lcPE4VV1qdW861JFUkq5oVIA+qcQKjtRSsLvBcSQpjhL5X2qAjpGnyQoaok4fFczRJ5J+xptgbR8nTKI3FaMCuNkD1tH1ikbTHYP6oOGN8ytSIWH9eDL2m7EaiDwfb3fz9OoqE=
Content-ID: <1441168375696F4A960D0E2344B17815@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e056a4aa-b56f-4f21-d59d-08d71667c6aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 10:05:26.8740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4359
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 07/11] mlx5e: modify
 driver for handling offsets
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
Cc: "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 "magnus.karlsson@intel.com" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-07-30 11:53, Kevin Laatz wrote:
> With the addition of the unaligned chunks option, we need to make sure we
> handle the offsets accordingly based on the mode we are currently running
> in. This patch modifies the driver to appropriately mask the address for
> each case.
> 
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>

Please note that this patch doesn't actually add the support for the new 
feature, because the validation checks in mlx5e_rx_get_linear_frag_sz 
and mlx5e_validate_xsk_param need to be relaxed. Currently the frame 
size of PAGE_SIZE is forced, and the fragment size is increased to 
PAGE_SIZE in case of XDP (including XSK).

After making the changes required to permit frame sizes smaller than 
PAGE_SIZE, our Striding RQ feature will be used in a way we haven't used 
it before, so we need to verify with the hardware team that this usage 
is legitimate.

> ---
> v3:
>    - Use new helper function to handle offset
> 
> v4:
>    - fixed headroom addition to handle. Using xsk_umem_adjust_headroom()
>      now.
> ---
>   drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c    | 8 ++++++--
>   drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c | 3 ++-
>   2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> index b0b982cf69bb..d5245893d2c8 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> @@ -122,6 +122,7 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
>   		      void *va, u16 *rx_headroom, u32 *len, bool xsk)
>   {
>   	struct bpf_prog *prog = READ_ONCE(rq->xdp_prog);
> +	struct xdp_umem *umem = rq->umem;
>   	struct xdp_buff xdp;
>   	u32 act;
>   	int err;
> @@ -138,8 +139,11 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
>   	xdp.rxq = &rq->xdp_rxq;
>   
>   	act = bpf_prog_run_xdp(prog, &xdp);
> -	if (xsk)
> -		xdp.handle += xdp.data - xdp.data_hard_start;
> +	if (xsk) {
> +		u64 off = xdp.data - xdp.data_hard_start;
> +
> +		xdp.handle = xsk_umem_handle_offset(umem, xdp.handle, off);
> +	}
>   	switch (act) {
>   	case XDP_PASS:
>   		*rx_headroom = xdp.data - xdp.data_hard_start;
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> index 6a55573ec8f2..7c49a66d28c9 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> @@ -24,7 +24,8 @@ int mlx5e_xsk_page_alloc_umem(struct mlx5e_rq *rq,
>   	if (!xsk_umem_peek_addr_rq(umem, &handle))
>   		return -ENOMEM;
>   
> -	dma_info->xsk.handle = handle + rq->buff.umem_headroom;
> +	dma_info->xsk.handle = xsk_umem_adjust_offset(umem, handle,
> +						      rq->buff.umem_headroom);
>   	dma_info->xsk.data = xdp_umem_get_data(umem, dma_info->xsk.handle);
>   
>   	/* No need to add headroom to the DMA address. In striding RQ case, we
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
