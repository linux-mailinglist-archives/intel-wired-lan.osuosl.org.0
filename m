Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA875D52E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 19:26:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C16185FAE;
	Tue,  2 Jul 2019 17:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KLsEQHOOtfi; Tue,  2 Jul 2019 17:26:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A984B85FB4;
	Tue,  2 Jul 2019 17:26:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5CF21BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 15:18:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C025886BC9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 15:18:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pG8xQ3zc21FX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 15:18:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130043.outbound.protection.outlook.com [40.107.13.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EA11E86BC4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 15:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgsYv+yX9sosOVaOrFSC6dyYyQYA+UkBCLw4P9YxESY=;
 b=NiV9kIbjK3YwXiDGF40QLT7nfATsdVTgxj+sdrFdNMBZDlUwurEC0UfNbTyesPxRVlpC/18/e2THAir4BwFXnm76fhjNhPaoq5ztfOgvih/6h4BwpiNPcDoPq75otjVKf+J2YHRPcAlhn+jMhv4cLIqfc3wwAKgko63Cf9b/aUY=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB6261.eurprd05.prod.outlook.com (20.177.32.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 13:46:18 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::9527:fe9d:2a02:41d5]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::9527:fe9d:2a02:41d5%5]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 13:46:18 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Magnus Karlsson <magnus.karlsson@intel.com>, "ast@kernel.org"
 <ast@kernel.org>
Thread-Topic: [PATCH bpf-next v2 2/6] xsk: add support for need_wakeup flag in
 AF_XDP rings
Thread-Index: AQHVMLevUssjBLrxPEO5SaX/SuuNRaa3V5eA
Date: Tue, 2 Jul 2019 13:46:18 +0000
Message-ID: <d4318783-18a4-d5c1-1044-691aaebb2b0a@mellanox.com>
References: <1562059288-26773-1-git-send-email-magnus.karlsson@intel.com>
 <1562059288-26773-3-git-send-email-magnus.karlsson@intel.com>
In-Reply-To: <1562059288-26773-3-git-send-email-magnus.karlsson@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0254.eurprd05.prod.outlook.com
 (2603:10a6:3:fb::30) To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [95.67.35.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff01408f-97f5-49c2-a32c-08d6fef3a8c3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB6261; 
x-ms-traffictypediagnostic: AM6PR05MB6261:
x-microsoft-antispam-prvs: <AM6PR05MB6261F74A050F59B77E62E851D1F80@AM6PR05MB6261.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(366004)(396003)(39860400002)(199004)(189003)(486006)(2906002)(2616005)(476003)(71200400001)(31696002)(3846002)(6116002)(31686004)(36756003)(11346002)(446003)(110136005)(54906003)(316002)(478600001)(256004)(71190400001)(86362001)(8676002)(81156014)(53936002)(5660300002)(6246003)(52116002)(6506007)(386003)(14454004)(102836004)(26005)(76176011)(6512007)(7736002)(25786009)(305945005)(4326008)(2501003)(81166006)(8936002)(66066001)(66946007)(66446008)(64756008)(66556008)(66476007)(68736007)(6486002)(6436002)(186003)(73956011)(229853002)(53546011)(99286004)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6261;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2BHbxKeVenFgcaJMF1B2RvcuP0yIYaz1uC+lPj4mFbCOh5iSP6G2LyNRC2K+UId+qYGQ4N87gx00CihH1pWrmjRaj2JqmSReWSn++azy/QT2xb/nnHRAQ9F9BerPimO9SCcuIuY4nZQY/+w1+F1chGSc8EoktP02DfyhB6V9C2ssBsFkyifv78raD77bvnkkxrrpurSgNFRssHHkqCD17VPWL5f7p4VfviW6x9TN0mf2hTKxBgdYX/OCsqzTmyLfBrRWFobQkvKCcr5PvyOZ8lCNFheHZNOGuWYqLUQuNXPLUFHbc8m69yUPUTWCq9K6jCBi4q8Jq0K8rev0/wx8FIaZW7eClT/0bAG3TWIxC8Z0RCFBWFwp5igaE6jAeFaLTFps4rHgaPJlaMGwOWCJ/o207L/am4eiKCyBYorbHac=
Content-ID: <F60AE97F2E0EA24E81767672790595C7@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff01408f-97f5-49c2-a32c-08d6fef3a8c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 13:46:18.6102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6261
X-Mailman-Approved-At: Tue, 02 Jul 2019 17:26:10 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 2/6] xsk: add support for
 need_wakeup flag in AF_XDP rings
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "maciejromanfijalkowski@gmail.com" <maciejromanfijalkowski@gmail.com>,
 "kevin.laatz@intel.com" <kevin.laatz@intel.com>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "brouer@redhat.com" <brouer@redhat.com>,
 "xiaolong.ye@intel.com" <xiaolong.ye@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 "qi.z.zhang@intel.com" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-07-02 12:21, Magnus Karlsson wrote:
>   
> +/* XDP_RING flags */
> +#define XDP_RING_NEED_WAKEUP (1 << 0)
> +
>   struct xdp_ring_offset {
>   	__u64 producer;
>   	__u64 consumer;
>   	__u64 desc;
> +	__u64 flags;
>   };
>   
>   struct xdp_mmap_offsets {

<snip>

> @@ -621,9 +692,12 @@ static int xsk_getsockopt(struct socket *sock, int level, int optname,
>   	case XDP_MMAP_OFFSETS:
>   	{
>   		struct xdp_mmap_offsets off;
> +		bool flags_supported = true;
>   
> -		if (len < sizeof(off))
> +		if (len < sizeof(off) - sizeof(off.rx.flags))
>   			return -EINVAL;
> +		else if (len < sizeof(off))
> +			flags_supported = false;
>   
>   		off.rx.producer = offsetof(struct xdp_rxtx_ring, ptrs.producer);
>   		off.rx.consumer = offsetof(struct xdp_rxtx_ring, ptrs.consumer);
> @@ -638,6 +712,16 @@ static int xsk_getsockopt(struct socket *sock, int level, int optname,
>   		off.cr.producer = offsetof(struct xdp_umem_ring, ptrs.producer);
>   		off.cr.consumer = offsetof(struct xdp_umem_ring, ptrs.consumer);
>   		off.cr.desc	= offsetof(struct xdp_umem_ring, desc);
> +		if (flags_supported) {
> +			off.rx.flags = offsetof(struct xdp_rxtx_ring,
> +						ptrs.flags);
> +			off.tx.flags = offsetof(struct xdp_rxtx_ring,
> +						ptrs.flags);
> +			off.fr.flags = offsetof(struct xdp_umem_ring,
> +						ptrs.flags);
> +			off.cr.flags = offsetof(struct xdp_umem_ring,
> +						ptrs.flags);
> +		}

As far as I understood (correct me if I'm wrong), you are trying to 
preserve backward compatibility, so that if userspace doesn't support 
the flags field, you will determine that by looking at len and fall back 
to the old format.

However, two things are broken here:

1. The check `len < sizeof(off) - sizeof(off.rx.flags)` should be `len < 
sizeof(off) - 4 * sizeof(flags)`, because struct xdp_mmap_offsets 
consists of 4 structs xdp_ring_offset.

2. The old and new formats are not binary compatible, as flags are 
inserted in the middle of struct xdp_mmap_offsets.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
