Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACFD5D531
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 19:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0238C2152E;
	Tue,  2 Jul 2019 17:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5My8HearxPr3; Tue,  2 Jul 2019 17:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6845321538;
	Tue,  2 Jul 2019 17:26:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3611BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 11:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B03885F5D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 11:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dh-9EidYPG93 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 11:58:22 +0000 (UTC)
X-Greylist: delayed 00:15:26 by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60057.outbound.protection.outlook.com [40.107.6.57])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD0E085D55
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 11:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3JscJrlhK23FTALjJAWEPsMBvAsikFiFMcXrYGeKSc=;
 b=A4Ywz8jt8V+O6SYXsTWFzktxgzcv3qbi5Jw86vYUozQZHA4kHUapnDZshJwYRjuez/2wFxGz74R6duUW8hatg1WcD1uX7GSfBfjkZ/hMMaKrSw2DPOkH6klm4zymd98k24E0lw+PAeC5KrRHzda6DR+KJnsw/6PQ8JyjjbCWZL8=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB5443.eurprd05.prod.outlook.com (20.177.118.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 11:42:52 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::9527:fe9d:2a02:41d5]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::9527:fe9d:2a02:41d5%5]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 11:42:52 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Magnus Karlsson <magnus.karlsson@intel.com>, "ast@kernel.org"
 <ast@kernel.org>
Thread-Topic: [PATCH bpf-next v2 1/6] xsk: replace ndo_xsk_async_xmit with
 ndo_xsk_wakeup
Thread-Index: AQHVMLepaHKAfTCLxEm8ejzCutA5DKa3NRqA
Date: Tue, 2 Jul 2019 11:42:52 +0000
Message-ID: <a57b5b49-bd03-92af-cc5d-fe11d1d0e437@mellanox.com>
References: <1562059288-26773-1-git-send-email-magnus.karlsson@intel.com>
 <1562059288-26773-2-git-send-email-magnus.karlsson@intel.com>
In-Reply-To: <1562059288-26773-2-git-send-email-magnus.karlsson@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0402CA0012.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::22) To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [95.67.35.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b24073e3-5639-4b8e-ad65-08d6fee26a79
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB5443; 
x-ms-traffictypediagnostic: AM6PR05MB5443:
x-microsoft-antispam-prvs: <AM6PR05MB544378838872A2A05A765AEAD1F80@AM6PR05MB5443.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(396003)(136003)(39860400002)(199004)(189003)(486006)(446003)(53546011)(4744005)(102836004)(2616005)(6506007)(5660300002)(6116002)(11346002)(476003)(110136005)(71190400001)(26005)(2501003)(66946007)(66476007)(66556008)(66446008)(14454004)(3846002)(386003)(2906002)(64756008)(186003)(81156014)(256004)(52116002)(99286004)(73956011)(81166006)(76176011)(54906003)(71200400001)(7416002)(53936002)(66066001)(36756003)(6486002)(6246003)(4326008)(68736007)(31686004)(478600001)(6512007)(6436002)(305945005)(7736002)(229853002)(316002)(25786009)(8936002)(8676002)(86362001)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB5443;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7Vsr7mwJGPKxdgVkrgXJbXYq2jyVMk2bFlbrdwCHxDqIw9Xeqid2/z9juB52GOKhSBAHgW6qnTPuq7GIxYyr6zstWlAeRomEX3TbqAX0JONbo5U86M5Pg/P/V3OeUr13qgJXmom3M9kMuWEHWqyOXh4xObydrS9MBuV/tSOn2nIpIKxDwePHZJaRqsCrv6AJjk55BirWKjbJe04osxFQAtzUYkIr+IJNY+P1i0AJPhHGYyi1Kv/pzuOpnliNDdfjYrI2kL+21TgUZr2vbXdMO9Lam9BKowwBU5lLu58E3YJRqvEbKzSqT6xOH5NFv86jF0RGJ7COuMdaAbj8xe4mCDMNOP7li/7kCxCLt2TvxXsnOMtPutBp/nsxaInR/iyQxUSAsCRlzUvBfu5ZLOX4D5RvxTBUz5mcUIdnNL+v2ys=
Content-ID: <AFCF971AF860124981B96D27F3AB962E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b24073e3-5639-4b8e-ad65-08d6fee26a79
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 11:42:52.6654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5443
X-Mailman-Approved-At: Tue, 02 Jul 2019 17:26:10 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 1/6] xsk: replace
 ndo_xsk_async_xmit with ndo_xsk_wakeup
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
> This commit replaces ndo_xsk_async_xmit with ndo_xsk_wakeup. This new
> ndo provides the same functionality as before but with the addition of
> a new flags field that is used to specifiy if Rx, Tx or both should be
> woken up. The previous ndo only woke up Tx, as implied by the
> name. The i40e and ixgbe drivers (which are all the supported ones)
> are updated with this new interface.

This API change will break build of mlx5 - XSK support for mlx5 was merged.

> This new ndo will be used by the new need_wakeup functionality of XDP
> sockets that need to be able to wake up both Rx and Tx driver
> processing.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
