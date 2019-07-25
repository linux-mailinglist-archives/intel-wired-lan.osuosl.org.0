Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2441C74A9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 11:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1D5B862C7;
	Thu, 25 Jul 2019 09:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFKD8l7aZP_z; Thu, 25 Jul 2019 09:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1474862B4;
	Thu, 25 Jul 2019 09:57:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06BA61BF577
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 09:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 02CEF86283
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 09:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MqCmRAMqfFsL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 09:57:41 +0000 (UTC)
X-Greylist: delayed 00:30:33 by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30057.outbound.protection.outlook.com [40.107.3.57])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 33BE88625E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 09:57:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XKosNsjIWB0Rwh+zLM2vPjb1t7AkHEVMHpncG6ken/WFjy4QcrQFR5lD2Tx1X7peVlfm73GTzVQonioiILtWzYGnl6ykmpTLifZOaW/C7wMiprIGnmB1x3XvWi8CQUIJ2nZ0FNSTeAafbQi/YOzKKHzfw+kwcDnGyHtwTpFoUokL/7a04vMIdjkEbUyFiAyAq1Ou6G+KW7rWZFZksJauVaz1Hwd3uPbwJF4lQ+5dzCLYaXEclKegMF5FKiURsgG9So6md45jxDhvN1y5+okCAIf8efLhmS6RfD8g2Nl6qSPrmms3WlXpFRPzY4TMta1gsvmYHnz9REWZpFukjX7ClA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XDGduCEYR/tRBYLj7DokqOqMB/G1KRNvrjCZko1HRTQ=;
 b=QrL3CkWO+hC3Eu2i+4S+kFf1R/U+20Eo9WSxfJOlTIM8ZcOPszLlNuN0+e8SM7c0jiTyxavwFf4wOz50Gu8OH17+jbiQLMOmtr1VmGe2dfXCvekoVUafYAXwu2Uyq6pTUCj9yvyfuCm6SGalrBUJlMmT/XMID/CWZIrR9dP27032kjehLEyBWFkYwGkSceLRzdrO6ZGo1+Ws9ibWYtH6lwIQ/5TOyJ60SJJ/pE+1gidKoP8w5tC4TjI/yfKCkU0KtHcSaCdwkjoPTmqAJeNFdcJxjdZjaX5HLoz6lSF3cFJbrzwGfJOSGkUB32RBKGb1idURR8rvhi0mGcNnribSjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XDGduCEYR/tRBYLj7DokqOqMB/G1KRNvrjCZko1HRTQ=;
 b=Al1ZDS8XvrCMSyHfGgQvK0F8dSt+LAdTzaL+W8Um9hn3aYweWtPAcTKDely/qFpPSbyA2C/dxqmVSwac23zvf55T6XSW7tzsRWGkO9totVGFSmx/VpJWxp+XMZUf+XQCbPS5qRwZlO4LIC4pJr14peXjEMPWMa2WNloCStCV3Fk=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB6405.eurprd05.prod.outlook.com (20.179.6.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 25 Jul 2019 09:43:06 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7%5]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 09:43:06 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Thread-Topic: [PATCH bpf-next v3 08/11] samples/bpf: add unaligned chunks mode
 support to xdpsock
Thread-Index: AQHVQiNte53eRR+QTUqnn7befgzUpKbbFmwA
Date: Thu, 25 Jul 2019 09:43:06 +0000
Message-ID: <fd7b6b71-5bfd-986a-b288-b9e3478acebb@mellanox.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-9-kevin.laatz@intel.com>
In-Reply-To: <20190724051043.14348-9-kevin.laatz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P192CA0024.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:fe::34)
 To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [159.224.90.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 869f8f85-bbf4-492d-a22a-08d710e47f03
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB6405; 
x-ms-traffictypediagnostic: AM6PR05MB6405:
x-microsoft-antispam-prvs: <AM6PR05MB6405829A28E48F36AC1EE9F7D1C10@AM6PR05MB6405.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(199004)(189003)(6506007)(36756003)(76176011)(102836004)(55236004)(53546011)(386003)(305945005)(66946007)(14454004)(64756008)(26005)(52116002)(5660300002)(8936002)(6512007)(3846002)(6116002)(81166006)(66446008)(99286004)(6436002)(68736007)(6486002)(7736002)(316002)(6246003)(86362001)(66556008)(486006)(81156014)(31696002)(2906002)(25786009)(53936002)(6916009)(66066001)(446003)(8676002)(11346002)(4326008)(54906003)(31686004)(71200400001)(71190400001)(476003)(186003)(478600001)(2616005)(256004)(66476007)(7416002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6405;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UgtbhasJw2gu1IVQU9J/7jrL7wKn5RJ06965Pal0TBtWfZkY4WLErzQZtVhAlqlisH0V3k54+ZJ6rynJnA4mR48bn/VdUyqTmYhmRF25osbek/hKjHBFZcZeoRSYJnqtickOAXS7zJngYJJMF5pic6ni3RO5xoOgLLcqMvlJY6+mSdzRFkx9amnuGhiFzN8D6cXndx3y2rM0/3CiEyxOdzwpV6gRgScaIyKaT8sUlYkBLK9sUd+mEisFMCAXQm5Z0DiHaMqDCK4zD6/SWPdho3X8VrZ+3pFBbx6zktg3XGI11eeL8UMSE/GaPXdPYymv3CWvyM7mQ1MV2Gat1XPFDD2LeEj23fn28ZOxNLQRU7VRvpNsv+yn/Alu7IeONlN4Mza3pQZVTtCMo9l0y12qqQZNI/kwcwK/rXxaGSqQYbQ=
Content-ID: <3858018B23BE0C48BA41FECF6A806CCB@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 869f8f85-bbf4-492d-a22a-08d710e47f03
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 09:43:06.7446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6405
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 08/11] samples/bpf: add
 unaligned chunks mode support to xdpsock
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
> This patch adds support for the unaligned chunks mode. The addition of the
> unaligned chunks option will allow users to run the application with more
> relaxed chunk placement in the XDP umem.
> 
> Unaligned chunks mode can be used with the '-u' or '--unaligned' command
> line options.
> 
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> ---
>   samples/bpf/xdpsock_user.c | 17 +++++++++++++++--
>   1 file changed, 15 insertions(+), 2 deletions(-)

<...>

> @@ -372,6 +378,7 @@ static void usage(const char *prog)
>   		"  -z, --zero-copy      Force zero-copy mode.\n"
>   		"  -c, --copy           Force copy mode.\n"
>   		"  -f, --frame-size=n   Set the frame size (must be a power of two, default is %d).\n"

Help text for -f has to be updated, it doesn't have to be a power of two 
if -u is specified.

> +		"  -u, --unaligned	Enable unaligned chunk placement\n"

<...>

>   
> -	if (opt_xsk_frame_size & (opt_xsk_frame_size - 1)) {
> +	if ((opt_xsk_frame_size & (opt_xsk_frame_size - 1)) &&
> +			!opt_unaligned_chunks) {
>   		fprintf(stderr, "--frame-size=%d is not a power of two\n",
>   			opt_xsk_frame_size);
>   		usage(basename(argv[0]));
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
