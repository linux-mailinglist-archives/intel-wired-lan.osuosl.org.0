Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF18CFE731
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 22:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6546F86A24;
	Fri, 15 Nov 2019 21:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulD9xvr8wAyP; Fri, 15 Nov 2019 21:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFCE386A3D;
	Fri, 15 Nov 2019 21:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62E701BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5B37488F4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQSYAoHnRGGB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 00:30:40 +0000 (UTC)
X-Greylist: delayed 00:27:22 by SQLgrey-1.7.6
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr70052.outbound.protection.outlook.com [40.107.7.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7CE7388F46
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:30:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KmNKiZW8AsaMIFt3stvkqLPaKAu0fFLno7oBUxcV/lXfqJJNjpa91znq3MjmnS5x1qkfA8fje5wS5kuuMJBtTeLAl+/4MZD1oPdgADV6HjQiKJIQRYCreU2cAtlnO8nMr8keFWqxaQAzZDow38JhSsk+Vv/lySFkg6OYIzW5D8SrKbrhLAHKUqqwyjECx2B7OCxfyKJWyPLFPbyEYm2F08Rc+fZ40I07AegBbeQzb2lan2C4n8cOBTioy1odPJ0SSTMBysiLjz+pDBM78mK1Qb1bQKGN7qJaHeRREgD5y7asxRhct5lIymQ9OXlYZ6xF0UWHBVydyb38wa0tQXmlNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xQduZoRTP7D/Y5A3GFHlLEKrAIQFgGiIQUKdawLQa8=;
 b=HVvZ7wPxUp8c7hj/sdN1u5R3Hpu1zT/8pZmX3X391mCFqelnKQgLhMIrIp1fJWgkRogGCff5xATyslsgZO9ORoJCHCK6iryv1BCYOd/4wMjckCfQY6U/uq1+EVPccnH3qZHh+6PMQFzCZXqKu2JUHZyn1B/dP+q8riIvFa6Y/dpbEU0PfHd0fUBwpc6ST10Ces4D40bOsPPY8fDo1FV7hXP/5pyDmxri/vXvZHx82sNwq0LZiK9rdYrFVmAkB1vVXkbf6i/w4uLATJBgDyUi4LwsuNRHW3f0RslQZfxdtMyI+B0cet7+p6teVel09p3lGCv1AZaeF9Opl21x7/THXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xQduZoRTP7D/Y5A3GFHlLEKrAIQFgGiIQUKdawLQa8=;
 b=dgDTQKulBpWqeew3n/RTbzyxZtA5/kwuEQeoaGZBGduQWEQbMCvBttjKIpQ7DMPoJi/6ifudQDEgTxEK8CRT7RwFlrAn7edlza4oRpCaTAJTbg/8H8xIyfgtCPxnFCnjbPqWsS5DRMr5NlJ8rH3w8xHD8dnl3ITQBZxdz3UL8hU=
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (20.177.51.151) by
 VI1PR05MB3215.eurprd05.prod.outlook.com (10.175.245.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.23; Thu, 14 Nov 2019 23:57:42 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::d41a:9a5d:5482:497e]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::d41a:9a5d:5482:497e%5]) with mapi id 15.20.2430.028; Thu, 14 Nov 2019
 23:57:42 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 02/13] net: reject PTP periodic output requests with
 unsupported flags
Thread-Index: AQHVmxustEEKnQ2rokKSH/LypN6cMKeLWF+A
Date: Thu, 14 Nov 2019 23:57:42 +0000
Message-ID: <7275436b02f9551807f68784d4f4ebaf0adbc35e.camel@mellanox.com>
References: <20191114184507.18937-3-richardcochran@gmail.com>
In-Reply-To: <20191114184507.18937-3-richardcochran@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.32.4 (3.32.4-1.fc30) 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=saeedm@mellanox.com; 
x-originating-ip: [73.15.39.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b2731854-e0a6-4d6c-788f-08d7695e6ff4
x-ms-traffictypediagnostic: VI1PR05MB3215:|VI1PR05MB3215:
x-ld-processed: a652971c-7d2e-4d9b-a6a4-d149256f461b,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB32152ED590DB57DE3DB78AA1BE710@VI1PR05MB3215.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(189003)(199004)(26005)(14454004)(2616005)(6512007)(118296001)(4001150100001)(446003)(76176011)(66476007)(66556008)(66066001)(6506007)(66446008)(64756008)(76116006)(91956017)(6486002)(66946007)(5660300002)(476003)(186003)(229853002)(11346002)(6436002)(102836004)(14444005)(99286004)(6116002)(3846002)(25786009)(2501003)(71190400001)(486006)(256004)(8936002)(36756003)(54906003)(71200400001)(478600001)(58126008)(7736002)(8676002)(7416002)(86362001)(4326008)(305945005)(6246003)(2906002)(81156014)(81166006)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB3215;
 H:VI1PR05MB5102.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y0GSu3mlmHDF/7VX5hvVIv+ntPu6tNm/oEdaXP1TODeDz1wsR4vYFo3knlWt14rd1O7DwdkMsDhqLabmow8979Nodrccy65D9uHO/sUDYgkA6OiYq6JhEPL+jZFnP99u1X+giFJXLX5mJPFhHh0dyXioeCPOFDTYkwTLHJCQ1Mhwhi8WXYibtVw1HBvNF87OiaRUulwQ5bvG/b7+iRpqdnZ1txk8rCc/fCbD0rbj5FC8YipZUVcVkDQFyBvUgJYiDNUAso0J5wUeznntJIzez0JEnMn17P8DeOjqiKw6SrbZ6tn26Jv+//qYGdtQn7lfs50qMXg56bZEXdvvzP44wjAzb3KCh70UbCJhrV305J2rEA9qC6confcDu+YNu9wZfmjUUBH9Kkj9Mnubp+olDgOEGyMyOuPzjX7McF1Cb3xKQ6gLjY6gDpz+/2v5Ph9K
Content-ID: <2B23B2DF41ECF34EAE34EFCC857BF7C3@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2731854-e0a6-4d6c-788f-08d7695e6ff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 23:57:42.0740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dJVfepjE67U7l6pMTeLRZbqGODI6QbW/kagNWr3i39XU8OhyTznJf+gSVlGpGwDaDV6ZhmyvUuGBxvfPXoVWug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3215
X-Mailman-Approved-At: Fri, 15 Nov 2019 21:31:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH net 02/13] net: reject PTP periodic
 output requests with unsupported flags
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
Cc: "christopher.s.hall@intel.com" <christopher.s.hall@intel.com>,
 "brandon.streiff@ni.com" <brandon.streiff@ni.com>,
 "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>,
 "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "stefan.sorensen@spectralink.com" <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2019-11-14 at 10:44 -0800, Richard Cochran wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Commit 823eb2a3c4c7 ("PTP: add support for one-shot output")
> introduced
> a new flag for the PTP periodic output request ioctl. This flag is
> not
> currently supported by any driver.
> 
> Fix all drivers which implement the periodic output request ioctl to
> explicitly reject any request with flags they do not understand. This
> ensures that the driver does not accidentally misinterpret the
> PTP_PEROUT_ONE_SHOT flag, or any new flag introduced in the future.
> 
> This is important for forward compatibility: if a new flag is
> introduced, the driver should reject requests to enable the flag
> until
> the driver has actually been modified to support the flag in
> question.

LGTM, just there might be a problem with old tools that didn't clear
the flags upon request and expected PTP periodic .. they will stop to
work with new kernel, am i am not sure if such tools do exist.

But the fact now that we have PTP_PEROUT_ONE_SHOT, we need to trust
both driver and tools to do the right thing.

What are the tools to test PTP_PEROUT_ONE_SHOT ? to support this in
mlx5 it is just a matter of a flipping a bit.

Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>

> 
> Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Christopher Hall <christopher.s.hall@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Richard Cochran <richardcochran@gmail.com>
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> ---
>  drivers/net/ethernet/broadcom/tg3.c                 | 4 ++++
>  drivers/net/ethernet/intel/igb/igb_ptp.c            | 4 ++++
>  drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c | 4 ++++
>  drivers/net/ethernet/microchip/lan743x_ptp.c        | 4 ++++
>  drivers/net/ethernet/renesas/ravb_ptp.c             | 4 ++++
>  drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c    | 4 ++++
>  drivers/net/phy/dp83640.c                           | 3 +++
>  7 files changed, 27 insertions(+)
> 
> diff --git a/drivers/net/ethernet/broadcom/tg3.c
> b/drivers/net/ethernet/broadcom/tg3.c
> index 77f3511b97de..ca3aa1250dd1 100644
> --- a/drivers/net/ethernet/broadcom/tg3.c
> +++ b/drivers/net/ethernet/broadcom/tg3.c
> @@ -6280,6 +6280,10 @@ static int tg3_ptp_enable(struct
> ptp_clock_info *ptp,
>  
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_PEROUT:
> +		/* Reject requests with unsupported flags */
> +		if (rq->perout.flags)
> +			return -EOPNOTSUPP;
> +
>  		if (rq->perout.index != 0)
>  			return -EINVAL;
>  
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c
> b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index fd3071f55bd3..4997963149f6 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -551,6 +551,10 @@ static int igb_ptp_feature_enable_i210(struct
> ptp_clock_info *ptp,
>  		return 0;
>  
>  	case PTP_CLK_REQ_PEROUT:
> +		/* Reject requests with unsupported flags */
> +		if (rq->perout.flags)
> +			return -EOPNOTSUPP;
> +
>  		if (on) {
>  			pin = ptp_find_pin(igb->ptp_clock,
> PTP_PF_PEROUT,
>  					   rq->perout.index);
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> index 0059b290e095..cff6b60de304 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> @@ -290,6 +290,10 @@ static int mlx5_perout_configure(struct
> ptp_clock_info *ptp,
>  	if (!MLX5_PPS_CAP(mdev))
>  		return -EOPNOTSUPP;
>  
> +	/* Reject requests with unsupported flags */
> +	if (rq->perout.flags)
> +		return -EOPNOTSUPP;
> +
>  	if (rq->perout.index >= clock->ptp_info.n_pins)
>  		return -EINVAL;
>  
> diff --git a/drivers/net/ethernet/microchip/lan743x_ptp.c
> b/drivers/net/ethernet/microchip/lan743x_ptp.c
> index 57b26c2acf87..e8fe9a90fe4f 100644
> --- a/drivers/net/ethernet/microchip/lan743x_ptp.c
> +++ b/drivers/net/ethernet/microchip/lan743x_ptp.c
> @@ -429,6 +429,10 @@ static int lan743x_ptp_perout(struct
> lan743x_adapter *adapter, int on,
>  	int pulse_width = 0;
>  	int perout_bit = 0;
>  
> +	/* Reject requests with unsupported flags */
> +	if (perout->flags)
> +		return -EOPNOTSUPP;
> +
>  	if (!on) {
>  		lan743x_ptp_perout_off(adapter);
>  		return 0;
> diff --git a/drivers/net/ethernet/renesas/ravb_ptp.c
> b/drivers/net/ethernet/renesas/ravb_ptp.c
> index 9a42580693cb..638f1fc2166f 100644
> --- a/drivers/net/ethernet/renesas/ravb_ptp.c
> +++ b/drivers/net/ethernet/renesas/ravb_ptp.c
> @@ -211,6 +211,10 @@ static int ravb_ptp_perout(struct ptp_clock_info
> *ptp,
>  	unsigned long flags;
>  	int error = 0;
>  
> +	/* Reject requests with unsupported flags */
> +	if (req->flags)
> +		return -EOPNOTSUPP;
> +
>  	if (req->index)
>  		return -EINVAL;
>  
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c
> b/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c
> index df638b18b72c..0989e2bb6ee3 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c
> @@ -140,6 +140,10 @@ static int stmmac_enable(struct ptp_clock_info
> *ptp,
>  
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_PEROUT:
> +		/* Reject requests with unsupported flags */
> +		if (rq->perout.flags)
> +			return -EOPNOTSUPP;
> +
>  		cfg = &priv->pps[rq->perout.index];
>  
>  		cfg->start.tv_sec = rq->perout.start.sec;
> diff --git a/drivers/net/phy/dp83640.c b/drivers/net/phy/dp83640.c
> index 6580094161a9..04ad77758920 100644
> --- a/drivers/net/phy/dp83640.c
> +++ b/drivers/net/phy/dp83640.c
> @@ -491,6 +491,9 @@ static int ptp_dp83640_enable(struct
> ptp_clock_info *ptp,
>  		return 0;
>  
>  	case PTP_CLK_REQ_PEROUT:
> +		/* Reject requests with unsupported flags */
> +		if (rq->perout.flags)
> +			return -EOPNOTSUPP;
>  		if (rq->perout.index >= N_PER_OUT)
>  			return -EINVAL;
>  		return periodic_output(clock, rq, on, rq-
> >perout.index);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
