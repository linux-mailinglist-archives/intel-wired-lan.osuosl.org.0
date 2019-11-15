Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1219FE732
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 22:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A94687FF7;
	Fri, 15 Nov 2019 21:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZC4ix+5lljqV; Fri, 15 Nov 2019 21:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DCD287FA4;
	Fri, 15 Nov 2019 21:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 768C11BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 718DA88F67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id varo4n4R0HYR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 00:18:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr10085.outbound.protection.outlook.com [40.107.1.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A60E588F61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 00:18:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YklHV3stnHFG6Z8fanTwA+dZFHgByLsinYmB/BSzItjtgXUld/rFNxvT0uEHoOMoonv+1UNQV94qHp1wOJyxWSZPv74Eid3VS6i/9mu4x2lJIgrM7T4+zMrDzDaIOUhZnEh/rAZWZXS9ooG2spgs4SYkhtx9f5BdW6RDnq0dOwPKRTDViikiS0+9w2WXV0x/ir/9NEeeQlECd30Efex3CzITgyiyWYFbsMC7oSKtnoCzRHao2pdzeb3zg1SuHTmgva6Jolepdiw/noFlPza2bLABZO9uHcMCHRQJSfDsSxa+n049U6lRZqB7ByPpDJvMb2z1DeFJhCjh4/8wywAzdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VoiQqo/hezt/bdJr7j4UZ39NP9aMGKgdZxjdHmqODMk=;
 b=JslHrFB0qoxHcrT1Cy81N65gxnzdk6lItKdf5CpiUSdPL8PuZLBaqMXBFxPBEjbvTNC1RUompfjITc9r/YlHKqSltgR9hbeId0/rdgL4XGy17guNfCFwTIS53+/4BhvI8mSKa5lCTOmxKuYDQd1nhO7evfgiJ1xY8eydiejG4vsgaa0Vls7/q+LZZiXrmwIgsrpIVbCvePE7SvjEOR0/L8j4sSVRtDNvmb4IwpwyK+f7VqEqfFkh9ngNdz0WYMiCDGRcxe3fPAJ6YiC0vLRrNRNiyOgYPCHmdspKtRrrxhyCO/8Soz57vGLd9S50erOq4F1MCwsQ1gGEybhSo5lxtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VoiQqo/hezt/bdJr7j4UZ39NP9aMGKgdZxjdHmqODMk=;
 b=i6T5IPFoi7oWbmEKICHj98/aiO68pxHbiqtgJOHsTGN9AzFMF6Gy5rshpX3zqpr6niFo8A0eCTceOOe9FJCTUWHPnLu0bnVvCo8BYKoaJmQCtFc/9gveFMAMKX2JhKCrpfFmWfY4TsOpvCGTfpvAkRN/Ikd1Z+KrK/1mxNpK02U=
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (20.177.51.151) by
 VI1PR05MB5776.eurprd05.prod.outlook.com (20.178.122.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Fri, 15 Nov 2019 00:04:19 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::d41a:9a5d:5482:497e]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::d41a:9a5d:5482:497e%5]) with mapi id 15.20.2430.028; Fri, 15 Nov 2019
 00:04:19 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 12/13] mlx5: Reject requests to enable time stamping
 on both edges.
Thread-Index: AQHVmxuzvm7+hsz/F06moyyH5jeV/6eLWjqA
Date: Fri, 15 Nov 2019 00:04:19 +0000
Message-ID: <23131f95a2afeb32e49d4db797855b17ea24444e.camel@mellanox.com>
References: <20191114184507.18937-13-richardcochran@gmail.com>
In-Reply-To: <20191114184507.18937-13-richardcochran@gmail.com>
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
x-ms-office365-filtering-correlation-id: ceaf25c5-6e0e-41b3-6c4c-08d7695f5cb1
x-ms-traffictypediagnostic: VI1PR05MB5776:|VI1PR05MB5776:
x-ld-processed: a652971c-7d2e-4d9b-a6a4-d149256f461b,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5776163640AAC564609E6A6FBE700@VI1PR05MB5776.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(346002)(136003)(39860400002)(189003)(199004)(71190400001)(2906002)(4326008)(6512007)(91956017)(58126008)(66946007)(110136005)(4001150100001)(66066001)(54906003)(76116006)(118296001)(305945005)(7416002)(14454004)(7736002)(6246003)(36756003)(6436002)(2501003)(478600001)(76176011)(6486002)(486006)(66446008)(64756008)(66556008)(66476007)(71200400001)(446003)(14444005)(316002)(81166006)(81156014)(229853002)(5660300002)(6506007)(476003)(8936002)(2616005)(25786009)(26005)(102836004)(186003)(99286004)(256004)(8676002)(6116002)(3846002)(86362001)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB5776;
 H:VI1PR05MB5102.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pdaRKI9QC+PE1/DYzwRZi80GRPBnau0LzuUROt48ym4OGyfxCB/nbhRlRyhkyHyptoUkw0RNMBJlakDDQIIGFJv2Tp4Pmzk3XKuU17LgfkuqlkY49U9feTq+Bb+Ex2KmCIA0GloETC4dHOCwyeev5o7FgsS3vQ4O9sDViZPz8h43QM+P2W0tw2ji8/ttFLuE/4bdNwyQ4GSb+R/OutaGyj8Bby3eFAuPz9DQLRFT/sxiP8uEQY50Hu94wFFFlk6hDXTWDU0FGILmgehY/RRoZSeqHLG0IiIg/NO0G3Ie1w/jzzsGOvepptTwa1zo9Wx0+80BTYALtC0uSIcchn+lgIlmGK9xoDTEZoUS1LobLv1SJW3TOUcUcVgxX4mwwGb72hTT2bljYZ3guW6aASkGyOxgkiJFxCE+aLB+zg/pObLtgRa2IbKkrlOrOqWtyKK6
Content-ID: <45CDF6797FA10B4F9FCC56755697FFDA@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceaf25c5-6e0e-41b3-6c4c-08d7695f5cb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 00:04:19.3306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +SGWka8+MnzpLOlo2J5ya6nJJDUbW/S0qAlHwjOVGdRbGkJkJ7JYC7Chx0AqLgxOrYm/RjxgShtE3JvBLIrpDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5776
X-Mailman-Approved-At: Fri, 15 Nov 2019 21:31:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH net 12/13] mlx5: Reject requests to
 enable time stamping on both edges.
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
> This driver enables rising edge or falling edge, but not both, and so
> this patch validates that the request contains only one of the two
> edges.
> 
> Signed-off-by: Richard Cochran <richardcochran@gmail.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> index 819097d9b583..43f97601b500 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> @@ -243,6 +243,12 @@ static int mlx5_extts_configure(struct
> ptp_clock_info *ptp,
>  				PTP_STRICT_FLAGS))
>  		return -EOPNOTSUPP;
>  
> +	/* Reject requests to enable time stamping on both edges. */
> +	if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
> +	    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
> +	    (rq->extts.flags & PTP_EXTTS_EDGES) == PTP_EXTTS_EDGES)
> +		return -EOPNOTSUPP;
> +
>  	if (rq->extts.index >= clock->ptp_info.n_pins)
>  		return -EINVAL;
>  


Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
