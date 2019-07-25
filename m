Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A9774B56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 12:16:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FB8C86D95;
	Thu, 25 Jul 2019 10:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6zeEvvjEC9J5; Thu, 25 Jul 2019 10:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2873786DAD;
	Thu, 25 Jul 2019 10:16:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9B0B1BF337
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D50B686276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-rvnYhQyq_0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 10:16:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130084.outbound.protection.outlook.com [40.107.13.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A04986103
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:15:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZp8e0fl3aKh+FjjndT5zetGUeCjstL/V1pitrga//27BSvaM+0r+RsqCmicMEEpYxSRi7eg/y5TMJ1CLaBjWFNHyKCYV1K4h8yyOmvlhUiYTIbmP0+cFr0zep8VSpPm5kqTrYtryETf6+rYG3/Z480LPEEHrbPkueWxjctv2XiIiQCDYggUzsqAcP4dcgTFGC1r4jvMTRBRd+cMHWsHH1gAnxCgWJuDZwa9LTttHnz07TI9l9ZFpX5QOk56H2vXmlV6KOU6je7DrG/Nk6ah1FoMtskVVVO9HEO5OyjT+wFE6TGghtD6yMqnWVpt7aPOS+OBlZxRMH7L76d+ksl7lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N/brvssYKSJS40X2+pU1aG+EFGGTg5Vve8WdNVhkjc8=;
 b=BjNH82Fa3PSC+Li4So9kUiWAB9A88q4iLMTXHY/NaTXTBTvQORLZXxmqJVt+ewmuD5ZD60Uvk0GFSxXGT5IYyrvtb9SccBPvF/3Fe8+F5aXx+gMZV/qd8ME83o+irzSwPpvDCCSr4AJGLRInC43mUhyEti+PY1oMsySZuwIhOoYJRMqXcK0rBDIuJAPWJURZQTok7FIRqGTUZ7n+FHWvuipNwSYUV5wfkdycbg+r2HTvGqTqqSubvo86yRFrgsMY7Za4nigb49ynvDROYEWzQ0PwXuTqum3dzNaOQYZHt796/rxsUkZ0+iDymmwi7etGvkJR3hMTU6Rb7x2spd+yDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N/brvssYKSJS40X2+pU1aG+EFGGTg5Vve8WdNVhkjc8=;
 b=OwYgjceELSTKs1WHQUuiZuE2AHVBEqLdJF/aazH+A9Kb7X5XSj3X0xbdqKHfZfwfCtCEHxhpcLNncKkWBQSQxn7vEDGRzg3AKUjY5z3e5QG99HyM8jtfxX26zk8uM2/IBx53RBCmNnsX/yuuS5bagnHUDJP+xnBq7hk1YR7mlr8=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB5191.eurprd05.prod.outlook.com (20.177.196.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.15; Thu, 25 Jul 2019 10:15:56 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7%5]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 10:15:55 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Thread-Topic: [PATCH bpf-next v3 06/11] mlx5e: modify driver for handling
 offsets
Thread-Index: AQHVQiNpB87vkdrGIUKaz1R1Zy1BQ6bbH5iA
Date: Thu, 25 Jul 2019 10:15:55 +0000
Message-ID: <c5704b74-8efe-af2a-68e6-716fa89a5665@mellanox.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-7-kevin.laatz@intel.com>
In-Reply-To: <20190724051043.14348-7-kevin.laatz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P189CA0004.EURP189.PROD.OUTLOOK.COM (2603:10a6:7:53::17)
 To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [159.224.90.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab5aaa9c-343d-406d-27da-08d710e914b7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB5191; 
x-ms-traffictypediagnostic: AM6PR05MB5191:
x-microsoft-antispam-prvs: <AM6PR05MB51913C1E0A62B849330914B2D1C10@AM6PR05MB5191.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(346002)(39860400002)(136003)(52314003)(199004)(189003)(7416002)(66946007)(256004)(86362001)(26005)(6436002)(53936002)(5660300002)(8676002)(305945005)(8936002)(316002)(31696002)(6486002)(36756003)(66556008)(81166006)(71200400001)(186003)(66446008)(81156014)(6506007)(54906003)(6246003)(64756008)(7736002)(6512007)(71190400001)(66476007)(446003)(2906002)(6116002)(99286004)(476003)(386003)(2616005)(11346002)(6916009)(25786009)(66066001)(3846002)(52116002)(486006)(31686004)(14454004)(76176011)(229853002)(53546011)(102836004)(478600001)(4326008)(68736007)(55236004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB5191;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /psVHyfL59O9TjnudVRAj/WjsNqE0hzKOw7c44tgNHaKWN7c+TqMk3F0602MvW81JK0i4WRk6/A0dClkEq6kXor4FSxnaIANsipkHndSFOie0R9uUe9WJE7BV45qpx//Typ7n2Ut8T31RnNkRjfkTtblKW3qFNmP9Xh5gGYFhHoJq/WfR2F7udaPXjoSRt+UAJpT7yQMFDTDebcLB8xMKox2rtZdeaEF3y2r5NuKknCSZjJH695ZHKnquAKt8bnknI+tcnkGsTWc1t856CGpruF08BlKJg72IIdsbTfGjgBfYIIE4cJk/Px58df5cT0kYZFyeHCfbyeBy9btw79z/Ph6rJNKr0ZEE+nvCunzk40lUOvdbSpVJK7fJ+hra0YT0i31t6l1fw/+Jjlb1hgQaVk4Y04jkoKANihb6IXlmhk=
Content-ID: <018B6117E075A04BBABDA2A59FFD189B@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab5aaa9c-343d-406d-27da-08d710e914b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 10:15:55.8135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5191
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 06/11] mlx5e: modify
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

On 2019-07-24 08:10, Kevin Laatz wrote:
> With the addition of the unaligned chunks option, we need to make sure we
> handle the offsets accordingly based on the mode we are currently running
> in. This patch modifies the driver to appropriately mask the address for
> each case.
> 
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> 
> ---
> v3:
>    - Use new helper function to handle offset
> ---
>   drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c    | 8 ++++++--
>   drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c | 9 +++++++--
>   2 files changed, 13 insertions(+), 4 deletions(-)
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

What's missed is that umem_headroom is added to handle directly in 
mlx5e_xsk_page_alloc_umem. In my understanding umem_headroom should go 
to the offset part (high 16 bits) of the handle, to 
xsk_umem_handle_offset has to support increasing the offset.

>   	switch (act) {
>   	case XDP_PASS:
>   		*rx_headroom = xdp.data - xdp.data_hard_start;
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
> index 35e188cf4ea4..f596e63cba00 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
> @@ -61,6 +61,7 @@ bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget)
>   	struct mlx5e_xdp_xmit_data xdptxd;
>   	bool work_done = true;
>   	bool flush = false;
> +	u64 addr, offset;
>   
>   	xdpi.mode = MLX5E_XDP_XMIT_MODE_XSK;
>   
> @@ -82,8 +83,12 @@ bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget)
>   			break;
>   		}
>   
> -		xdptxd.dma_addr = xdp_umem_get_dma(umem, desc.addr);
> -		xdptxd.data = xdp_umem_get_data(umem, desc.addr);
> +		/* for unaligned chunks need to take offset from upper bits */
> +		offset = (desc.addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT);
> +		addr = (desc.addr & XSK_UNALIGNED_BUF_ADDR_MASK);
> +
> +		xdptxd.dma_addr = xdp_umem_get_dma(umem, addr + offset);
> +		xdptxd.data = xdp_umem_get_data(umem, addr + offset);

Why can't these calculations be encapsulated into 
xdp_umem_get_{dma,data}? I think they are common for all drivers, aren't 
they?

Even if there is some reason not to put this bitshifting stuff into 
xdp_umem_get_* functions, I suggest to encapsulate it into a function 
anyway, because it's a good idea to keep those calculations in a single 
place.

>   		xdptxd.len = desc.len;
>   
>   		dma_sync_single_for_device(sq->pdev, xdptxd.dma_addr,
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
