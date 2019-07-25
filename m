Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C9674B00
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 12:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01EAE86DB4;
	Thu, 25 Jul 2019 10:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igcyB8v9lDOG; Thu, 25 Jul 2019 10:01:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97F3686C4D;
	Thu, 25 Jul 2019 10:01:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2781BF577
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8672F86267
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dg-FI0KKJ_DR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 10:01:14 +0000 (UTC)
X-Greylist: delayed 00:18:56 by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00076.outbound.protection.outlook.com [40.107.0.76])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 01A548625F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:01:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SilBkdzf0V/rK87jk6apEsoiqROZplAF726e1DW1KhnpIvYU/YJWM12+7qgq69m4f8E4pvtn26l6nV2a1ZJ8atPkazK5qdKA0c5BMUPdVE/Evs1W0jYZj3Hw8H4EdxTWmHOo3SMx8gWny/eNE05lihFjKqAilS2QMc+9tHsQDQCNjp8FY1Zd6pkkPfx0vd4jYj69U/6jLwywRJsqhkr4pFecH6kA1rZJdw+kCvKftCyO0d4MO+sIsQGBelJuTqFJ+Eok+zB2v2MmpMZtXyV1LMV3NeMOd+lrzLEToP8X/cUKlA+OS3QxD5cQvJ38nrzcqNta7Oi/WTUN/BuTBjoC5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oa4BL+pcH746unMKbd8VaveHRzvluUZVech+tPJYXCw=;
 b=CNl7uGwvEmioRe6AzSJUV0dJ70Pd29DvLAzLLCzle5Z63Nte2B0eGCfGPlBD90VvSZYtOSMaKxeYWiXUuIcN2Hn/6S9hjA6+nEfT07g+/VXixiuYy6Ls1xw+w3a87xgT7UnYN9cE/tRGOQQbsYg19Zu9C3KFhmHDMoIwqmILpy56KD3YrGpFRZhfBKjq9Q6FJHeK+h5w9eaC3WMnnv2KB+Y7KHyZ7g+OPxsPwYD2xiRy0pPT0Hon6yIPtj8bw9zg6vdCtiXf6bUpLWNEr+nqjNSYFN5Pq/CxmdkcHOZpTVGp7zgKMPzJuKKsQ5QdTkxtb6G32YBg+CWj8w89aNci+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oa4BL+pcH746unMKbd8VaveHRzvluUZVech+tPJYXCw=;
 b=qwY2ZKM1UGxRjEdVDWrg/GgvwqQEaGSyjOSL3h8bGVENdN4aFDOpy2nXu7DN4QwO6dx5on4EMeS3F1taiamq23OWCcYps2EznFhiTOiTh5fBhFHhHBC0X71QIpKx1e/ScufNgkWxRqffvuIzafTcGONr4dSmUmt+Q66w3hifSsU=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB6485.eurprd05.prod.outlook.com (20.179.7.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 25 Jul 2019 09:27:05 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7%5]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 09:27:04 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Thread-Topic: [PATCH bpf-next v3 03/11] xsk: add support to allow unaligned
 chunk placement
Thread-Index: AQHVQiNkTVSHyKuk+0Kz8FHigNGopqbbEeCA
Date: Thu, 25 Jul 2019 09:27:04 +0000
Message-ID: <3af74e26-8899-cf1e-6fd4-5ea0bd349fc3@mellanox.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-4-kevin.laatz@intel.com>
In-Reply-To: <20190724051043.14348-4-kevin.laatz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR02CA0046.namprd02.prod.outlook.com
 (2603:10b6:301:60::35) To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [159.224.90.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5936d91e-7ae0-438a-856f-08d710e241b9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB6485; 
x-ms-traffictypediagnostic: AM6PR05MB6485:
x-microsoft-antispam-prvs: <AM6PR05MB64852181B6C4872E85F89838D1C10@AM6PR05MB6485.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39860400002)(396003)(376002)(136003)(199004)(189003)(86362001)(81166006)(31696002)(8936002)(81156014)(31686004)(53546011)(476003)(8676002)(5660300002)(71200400001)(71190400001)(305945005)(7736002)(25786009)(186003)(6506007)(6512007)(102836004)(26005)(6486002)(6436002)(446003)(486006)(7416002)(11346002)(2616005)(36756003)(68736007)(229853002)(6916009)(386003)(14454004)(316002)(54906003)(64756008)(66946007)(66446008)(478600001)(4326008)(76176011)(52116002)(53936002)(66556008)(66476007)(3846002)(2906002)(66066001)(6246003)(256004)(6116002)(14444005)(99286004)(55236004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6485;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: trrKJJwlLZ6u7pnk6a1f+OWk48aUOhYX3MA1L+6bPMKHCXrgJzuU238I0VKuqN4B8y3VelNfRYBtK0aR0fb0NWQAYkCZqJ6CQIrpERkOYwb5O4qBR1HoRENvKLpOyQPhMiqfV7l/JVG/WrgNw5fzZoPh7O9yzp4UFvaYOH3NuSlznbulup3vDgPHqrx1HO1DeJNDLSwYD//zwMG5RfwiqNN/67zafJ7GU0Ilm5+BcCzB+9knBOl5vqzFsJ08lKoQEecl5XqDA2JaPmGvGJRTrjQxQQK23DI3AABdeOSQaop+XFMLNUmp6udt04iSDv1GnlraN4IkjfrpdT2cbGgdwP95zw2oDn+dT0+TgeTFoPsx9o9ui0yOhk8xaliS3vvzGEOC+cLpeqGnabhbfgVPkKxqrIHYayM30PA79st8H34=
Content-ID: <B955B27B48288945A8CFA897782DE75C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5936d91e-7ae0-438a-856f-08d710e241b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 09:27:04.8544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6485
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 03/11] xsk: add support to
 allow unaligned chunk placement
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
> Currently, addresses are chunk size aligned. This means, we are very
> restricted in terms of where we can place chunk within the umem. For
> example, if we have a chunk size of 2k, then our chunks can only be placed
> at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).
> 
> This patch introduces the ability to use unaligned chunks. With these
> changes, we are no longer bound to having to place chunks at a 2k (or
> whatever your chunk size is) interval. Since we are no longer dealing with
> aligned chunks, they can now cross page boundaries. Checks for page
> contiguity have been added in order to keep track of which pages are
> followed by a physically contiguous page.
> 
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
> 
> ---
> v2:
>    - Add checks for the flags coming from userspace
>    - Fix how we get chunk_size in xsk_diag.c
>    - Add defines for masking the new descriptor format
>    - Modified the rx functions to use new descriptor format
>    - Modified the tx functions to use new descriptor format
> 
> v3:
>    - Add helper function to do address/offset masking/addition
> ---
>   include/net/xdp_sock.h      | 17 ++++++++
>   include/uapi/linux/if_xdp.h |  9 ++++
>   net/xdp/xdp_umem.c          | 18 +++++---
>   net/xdp/xsk.c               | 86 ++++++++++++++++++++++++++++++-------
>   net/xdp/xsk_diag.c          |  2 +-
>   net/xdp/xsk_queue.h         | 68 +++++++++++++++++++++++++----
>   6 files changed, 170 insertions(+), 30 deletions(-)
> 

<...>

> +/* If a buffer crosses a page boundary, we need to do 2 memcpy's, one for
> + * each page. This is only required in copy mode.
> + */
> +static void __xsk_rcv_memcpy(struct xdp_umem *umem, u64 addr, void *from_buf,
> +			     u32 len, u32 metalen)
> +{
> +	void *to_buf = xdp_umem_get_data(umem, addr);
> +
> +	if (xskq_crosses_non_contig_pg(umem, addr, len + metalen)) {
> +		void *next_pg_addr = umem->pages[(addr >> PAGE_SHIFT) + 1].addr;
> +		u64 page_start = addr & (PAGE_SIZE - 1);
> +		u64 first_len = PAGE_SIZE - (addr - page_start);

Let addr = 0x12345, PAGE_SIZE = 0x1000, len = 0x1000. Your calculations 
lead to page_start = 0x345, first_len = 0x1000 - 0x12000, which is 
negative. I think page_start is calculated incorrectly (is ~ missing?).

> +
> +		memcpy(to_buf, from_buf, first_len + metalen);
> +		memcpy(next_pg_addr, from_buf + first_len, len - first_len);
> +
> +		return;
> +	}
> +
> +	memcpy(to_buf, from_buf, len + metalen);
> +}
> +

<...>

> +static inline bool xskq_is_valid_addr_unaligned(struct xsk_queue *q, u64 addr,
> +						u64 length,
> +						struct xdp_umem *umem)
> +{
> +	addr += addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT;
> +	addr &= XSK_UNALIGNED_BUF_ADDR_MASK;
> +	if (addr >= q->size ||

Addresses like 0x00aaffffffffffff will pass the validation (0xaa + 
0xffffffffffff will overflow mod 2^48 and become a small number), 
whereas such addresses don't look valid for me.

> +	    xskq_crosses_non_contig_pg(umem, addr, length)) {

If the region is not contiguous, we cant RX into it - that's clear. 
However, how can the userspace determine whether these two pages of UMEM 
are mapped contiguously in the DMA space? Are we going to silently drop 
descriptors to non-contiguous frames and leak them? Please explain how 
to use it correctly from the application side.

> +		q->invalid_descs++;
> +		return false;
> +	}
> +
> +	return true;
> +}

<...>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
