Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0D6FE730
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 22:31:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6159D876B3;
	Fri, 15 Nov 2019 21:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSCPf9Kg1Qm0; Fri, 15 Nov 2019 21:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2349B876A0;
	Fri, 15 Nov 2019 21:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4188C1BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0AE5388F61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uouBbO8JxqR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 00:18:13 +0000 (UTC)
X-Greylist: delayed 00:20:26 by SQLgrey-1.7.6
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr10076.outbound.protection.outlook.com [40.107.1.76])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8175588F67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:18:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QUAdLuXYQgDPWx9gfOiXlYvZDXCDZMCgSydc2JsglgRISsQHnoTfYRomRBxbZAbcwUQqDqbtHWxD/q/miU3LguiLXJX6NjjS5UYgyEYI8vFzBnrRP5JZucYNrsxyvqAs4lcengPhVGzoBTq3mIbTsALd/0cx4yz7/s5LovpY2LeU6TXr4avFxL2FzJs79rXZnYIehp1uI+3KURMLX5fG6in+QfzAw9xW0fMnD9uGCJjlcuVkvk1NtBtTWh676uLt+8AMi3fdAVVjEqHKzwvCsNi9TtewtG8z/skPtwm1Osf7OcJt9uj3lOnAtYWPMRFlaDLS2DGofdsVq/G0v8+e7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzpcbkzsVCAmdpHhOQhUJXyhq0a6A59kREyi/s+4QHk=;
 b=MY4RnAxVnFYmMl2lrGZSNUFXxmD9QkHcxw5N253uNDIxYyy3yWfm0ura7dsQ1NTUkPOISC4VbI5j8dZ3Kng9iQLcRQ5/NUrcJ7ma61fhNSDuwJuNSRVCkjl+NaPSpivdg+DFx5T/FYZc6HYrH6lPpwh5qjaQbI94Ehurbw+EtRyJDYPDR3toQvsHPFyn+DFXQq6CgJRI/iBgbdQ+CytPaliW3TUSefnzmvqKjcuVF/+3vZTzWlAcL0vvd5bmc5q/YmOjnG4Ia46eBXsg1XwVtN+o3MYZkQDW6wtlnKhzK2UL6XB1zu09RQK6VR/nPzdCE9n1eRXKMkbNRRa4sQBLZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzpcbkzsVCAmdpHhOQhUJXyhq0a6A59kREyi/s+4QHk=;
 b=BvHBs+edS78Ox3FZw5H6i0pNk/UYFO2uhOoJ7geTqHsQ6ABhgbIFk7qFPFumrbDbintiAa6uIgy97207jch8jZtA5CFQstPiWusWAmqxjhaXUvdzz3BIE49bQ8wK9k56hNVeCGVl2x285lr0hv/klidwS1ur39QtIwjWKAQ7Fls=
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (20.177.51.151) by
 VI1PR05MB5776.eurprd05.prod.outlook.com (20.178.122.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Fri, 15 Nov 2019 00:03:14 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::d41a:9a5d:5482:497e]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::d41a:9a5d:5482:497e%5]) with mapi id 15.20.2430.028; Fri, 15 Nov 2019
 00:03:14 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: Ariel Levkovich <lariel@mellanox.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 06/13] mlx5: reject unsupported external timestamp
 flags
Thread-Index: AQHVmxuuaGhUBoj4KkqsB9Kgi1dgk6eLWewA
Date: Fri, 15 Nov 2019 00:03:14 +0000
Message-ID: <c90050bd6a63ef3a6f0c7ea999f44ec51c07e917.camel@mellanox.com>
References: <20191114184507.18937-7-richardcochran@gmail.com>
In-Reply-To: <20191114184507.18937-7-richardcochran@gmail.com>
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
x-ms-office365-filtering-correlation-id: 26646fb6-96b7-40fc-d765-08d7695f3609
x-ms-traffictypediagnostic: VI1PR05MB5776:|VI1PR05MB5776:
x-ld-processed: a652971c-7d2e-4d9b-a6a4-d149256f461b,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB577642EEC70842B268FEA06DBE700@VI1PR05MB5776.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(346002)(136003)(39860400002)(189003)(199004)(71190400001)(2906002)(4326008)(6512007)(91956017)(58126008)(66946007)(110136005)(4001150100001)(66066001)(54906003)(76116006)(118296001)(2201001)(305945005)(7416002)(14454004)(7736002)(6246003)(36756003)(6436002)(2501003)(478600001)(76176011)(6486002)(486006)(66446008)(64756008)(66556008)(66476007)(71200400001)(446003)(14444005)(316002)(81166006)(81156014)(229853002)(5660300002)(6506007)(476003)(8936002)(2616005)(25786009)(26005)(102836004)(186003)(99286004)(256004)(8676002)(6116002)(3846002)(86362001)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB5776;
 H:VI1PR05MB5102.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: renHeudv9fZylJ35221lAPHozMYShYjRGMNABwy+TWbBIK+RfD7qr0kUIV/DwgVUrL9c0hxORgq9YLvsNQGkeip3vY5vPkb2Vrem3/Lk7A+rnbO4vJpLlztqa4JSzsIK8UYuo2+ad0rjLMv4oMFFTgiyVPIqh7dhnUjBNwFY/XkleI/1RX5ovV/G9IxGyTHsYQP6RyKNSr0nUmzp0BIgqtY0X8hgOFVM70yUvfyWRcs4kO19shOQn5VA+xz5E80T6IaTk2iAmUdKnrgI4qwCFByPFJQJ1x2PXUhv5ycqq+iZaIuU6YuOjFTyzhN4svBc+AnzbO/PD2I7tgo7ijuVyXG9BYU8XPo0TuSOnlLKdH567HNAxDTqd9oGUJvx+NEqVchnuvFma2N8Qw8aVezQXtAlHyhNFKnM/4veGT7cJ9/RWPpGUCAVkx8zUedNTNKO
Content-ID: <F6EF8D089C657F42958C0577D64776CD@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26646fb6-96b7-40fc-d765-08d7695f3609
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 00:03:14.3699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ReJHbcueESdIo+YTSbuMTvK3PAAM0Hyp6NchM8cVTNr+rAQkguDlnMqb5JJOMkA2tARRAv4WMAfciG7p8rDKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5776
X-Mailman-Approved-At: Fri, 15 Nov 2019 21:31:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH net 06/13] mlx5: reject unsupported
 external timestamp flags
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

On Thu, 2019-11-14 at 10:45 -0800, Richard Cochran wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Fix the mlx5 core PTP support to explicitly reject any future flags
> that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts
> all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems
> to
> have interpreted them slightly differently.
> 
> [ RC: I'm not 100% sure what this driver does, but if I'm not wrong
> it
>       follows the dp83640:
> 

The driver will check if the PTP_FALLING_EDGE flag was set then it will
set it in HW, if not then it is going to default to PTP_RISING_EDGE, so
LGTM.

Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>

But same story here, old tools that lazily set 0xffff or 0x0000 and
expected every thing to work.. again not sure if they do exist.

Ariel please have a look at this patch.

>   flags                                                 Meaning
>   ----------------------------------------------------  -------------
> -------------
>   PTP_ENABLE_FEATURE                                    Time stamp
> rising edge
>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp
> rising edge
>   PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp
> falling edge
>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp
> falling edge
> ]
> 
> Cc: Feras Daoud <ferasda@mellanox.com>
> Cc: Eugenia Emantayev <eugenia@mellanox.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Richard Cochran <richardcochran@gmail.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> index cff6b60de304..9a40f24e3193 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> @@ -236,6 +236,12 @@ static int mlx5_extts_configure(struct
> ptp_clock_info *ptp,
>  	if (!MLX5_PPS_CAP(mdev))
>  		return -EOPNOTSUPP;
>  
> +	/* Reject requests with unsupported flags */
> +	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> +				PTP_RISING_EDGE |
> +				PTP_FALLING_EDGE))
> +		return -EOPNOTSUPP;
> +
>  	if (rq->extts.index >= clock->ptp_info.n_pins)
>  		return -EINVAL;
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
