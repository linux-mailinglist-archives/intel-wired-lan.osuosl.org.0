Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB4948A86D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jan 2022 08:31:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42EA1833B7;
	Tue, 11 Jan 2022 07:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id snCpNnp4sd2T; Tue, 11 Jan 2022 07:31:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49A64833A7;
	Tue, 11 Jan 2022 07:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BB321BF332
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jan 2022 07:30:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14DC360B6B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jan 2022 07:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tw9MplcZygoS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jan 2022 07:30:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E850660B61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jan 2022 07:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641886256; x=1673422256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z2rLt1QXnRILZb5X4pSsAKDNElUMIb0XIV8w+65ogoM=;
 b=mwgjKtuDiUsh+rxAxbq4OBcplVul3V40yF0UC4qU2bv5XAPOGloMqqIK
 LpkII7C3tqOnKSjA7SmwmfNE8nkd/PgGF6bksw5n9Dy7YVc/kW4s+ZJ24
 eYXH5SLyynwINzFXG7RPf4fTpUWoVdY27kWUhNaoeFxfrh1Pq2HEtt8jS
 BiqwTSIAoywKVGjkxlGtDW+1UXaIl5WUs54Ocf+Qp1iwz/GguaIuXZg/e
 g3sPmbxiUroP7h0nGNjSCB7+B5xl/2hppt9VT1Gcsym8r0S72So2CisY6
 yCXonDWguxZ++J5GRkWYfi7JrZSX/xwRJMSb3FNWHLbWxSGyLFfl7p/Ud w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="329765046"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="329765046"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 23:30:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="619733295"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2022 23:30:55 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 10 Jan 2022 23:30:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 10 Jan 2022 23:30:55 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 10 Jan 2022 23:30:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cu+k05pB1pbzAWZkm7JuuKvK2CzWjQdkegCwQdLYsK5Wp/UtYTOjg672PTBM5+5gdn4yEL9FDz7RBQFJuAYs01G3wr8UOHMjZNSGBjTgae9cgp21lft0mbR5MjfgOvvtXu5j8lqy++/ajSQwSacnfl7TUaE470SAvcgc541tiL3eOmL/3LuR2kJeqpPOdMbeBfhgx4dpHhJa4ySPRzWrI0zrpdbfsnonC/eCvzvYehyZJYVCVXSG5roACnkk44yx6x781aHJ70TmPd7kQA72tl8WxGvjNYuCAj/tjbp5WLoYOSNPfMcgVoS6vOt8vYeV3porTJk5BtqKVX0rRI1bQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z2rLt1QXnRILZb5X4pSsAKDNElUMIb0XIV8w+65ogoM=;
 b=FK8xDCbrezUsRtMvEC5GS7+vngIQCNFqTQmkkweqQHAKu3HfLXMh737QpIUATgZ1PnilykMI5EfqAvVcYTndEB7B3AY4uLcKRpyYi+GP57Vil3n+vkSQG2uO1uccKCQvk/RdS1FWfdymRIFPom4m7/27tIG0fkAsb5SnClRXW66kTpzLueCiuYL8zscBw+D++Q59W4SlmyEnNaCeKi7YpQI8FeVxxyDracKc2BB+il+OoIHGHFXeVdaFeal3s56GF7FPnjqL9LyvJeK8jyRG07jCqGH5xsHNuvAbE6cpYyZox/WYs2PU3HSLGYeutZbFZlLc0xsTAp2N8kkDzEkOdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB0079.namprd11.prod.outlook.com (2603:10b6:301:6b::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Tue, 11 Jan
 2022 07:30:53 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::42f:73e3:ecb1:3b75]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::42f:73e3:ecb1:3b75%8]) with mapi id 15.20.4867.012; Tue, 11 Jan 2022
 07:30:53 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net-next 7/9] ixgbe: pass bi->xdp to
 ixgbe_construct_skb_zc() directly
Thread-Index: AQHX7D0U0sdTJ+BkmU+w4HKt4HHRRKxdoaGw
Date: Tue, 11 Jan 2022 07:30:53 +0000
Message-ID: <MW3PR11MB45549D6C03955849FC75BCF89C519@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-8-alexandr.lobakin@intel.com>
In-Reply-To: <20211208140702.642741-8-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2698caec-96aa-4710-38e5-08d9d4d44cd6
x-ms-traffictypediagnostic: MWHPR11MB0079:EE_
x-microsoft-antispam-prvs: <MWHPR11MB007932108E0EB565D8845FEE9C519@MWHPR11MB0079.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ggnwON3r8QgkZsI0Nu9yjAlPSWV1P2MNX5UplyGU3Q2zaUtbTzkRD5yCHP9qHzfnd0ubfd/ABRcnzHtFSVPYlUvygodB7GIEkFOj84UByw3O1tg0OMh/1J3JcPAldGcp2ot2NfRXIVFwNpp+2AWfhEPCmzXCS5g6ihGpPJ/C/F4kpO44XwnKrqXL8T7HpB2v0xy6AIZUYavO2yvwn+pUvRMyj3f5W0tOMpBOv/07GFYspCrZOMe5ypSNNqjq5nOlmUXKo9SmUA5oi0+CMswdE8bdhxcaxAkDBQC2glmUqP2CDgnbzEmslD4GRnKodAMNwV+VksEV6fS13Kpi081XY9gA1IjiqelOIFHrDWoE7O4sqMY+QB85mao4PzGZ7UMSQtqR0SF1p6Apndi1/79FI/eOyfAwKq36bp4DHjrhrZME6r4IXQFlsM5JjR+DJKUW0MTMpJoOEAFy6x2czYBodyAjNu83j1gubQkv7Z+oGShgU7f0rFRGRCotDCAQovBtGvYZgF19e17ZMfNLqRbIe483tjKrFr7tvV1PvKV6/RX+pbsJpYJp9a2x8MLzZXjCq+weUV5/hAtwlhMrcw70otPcm/tgQh5tMQPoWIH21xCWlaWw9ngsSBD693YWhfMVICSHf97U1GAUOopizTxkT2aGUnm8M5zm0QfUeiq2c3pVSUjLDcSrZpn8L7yBagQ3qlBc3mlqjrKKvqBNwBIunw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(54906003)(4326008)(316002)(26005)(66446008)(186003)(7416002)(64756008)(66946007)(66556008)(71200400001)(66476007)(2906002)(110136005)(508600001)(9686003)(7696005)(38070700005)(6506007)(83380400001)(52536014)(38100700002)(55016003)(5660300002)(8676002)(82960400001)(33656002)(86362001)(122000001)(8936002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?dVl37AeqwjSQMKKzCCLNdWr2b1iAAE5plAn35Qh8jPsio01alxnVZAcET2?=
 =?iso-8859-1?Q?0T/x2L/OXlGPIWC5uHQ1agd+Q+HXtUFuDuRsRlvmjMYFU7MJRZuS6st/LL?=
 =?iso-8859-1?Q?4ZYSSQ8+eH5CsYeRdHE3by1l1jP+2rM2PUgS6+JORQQXBlYdcUISmiND9k?=
 =?iso-8859-1?Q?t4+PyPrNir3SGKf7hTCUrLcEa72zbEhosmUGGTnr2FkmP7Tvzap/YT50dz?=
 =?iso-8859-1?Q?pqmsqWUgjSl+49nv9Z2qS9fetX9Ai/N3rYg0DsCaLBcYEJKgQQbJzdn9rs?=
 =?iso-8859-1?Q?8HaTQ2r2jrO/7ht6TVJgGb3aqONcP1pM8CDQr8cT2sTW9Myqq2lSgRuR0b?=
 =?iso-8859-1?Q?WTc5erbNzDgXt50jw3ngEWcCsNfDiB2jRki8l2Ccj5jA26aer3Kel5HrXu?=
 =?iso-8859-1?Q?B89frYF/MKw+dJTjR3wxDQOBNYD3a5AEmKHFTaGpvHN6EQUoD9Kb/cZIZq?=
 =?iso-8859-1?Q?UDrcXp0RuGRqdHj/exxqUtZWVJDL1f2sAaXMSfUZScFpQ1PI2ILI4d8xW6?=
 =?iso-8859-1?Q?r4uMqXsI0V80sjSw1jCqvgrAE8nIVRNyV0t6nrAk+A8kKNbxOHdO7+4THF?=
 =?iso-8859-1?Q?VTVNw3D+1sj1cB2izgP7WtQ/SqW6byhj0m36npl0ux7KcMk8v6tTjHn/DV?=
 =?iso-8859-1?Q?ubH6AynNlw4Ib64uPHVAaNUPXE+3wKyFAxLTMrcqaB4CDIStBjQixJn2fJ?=
 =?iso-8859-1?Q?VrXThEcUBjyR1UGcwBQOi/H8d3XAFUEjyofA3kMx7oOEN7+Uci1C9oJeO2?=
 =?iso-8859-1?Q?LD/qBNwZC/QQnws/+ew3/qee26ex8BOuntg3th9AnY36qUkcteR7A0K59K?=
 =?iso-8859-1?Q?n6G6RyEMwB5YgSwnYVT0/oehLQg7b8lKrbnVjsF8OgtkiNvPubgWs+9MvN?=
 =?iso-8859-1?Q?V8CRNdWMQoOAB9H1rx9Qq+ELdRp7hRl3aMsoPfSiH6f4DJeboZBhV45ZBt?=
 =?iso-8859-1?Q?FUc6zri+/CcbstrC9vUU0ATmy6aiwPl8dBF0Igmu6QREpkGMjd/++O7Hyj?=
 =?iso-8859-1?Q?TclruMeIUJyO0tSwnmuK8tGjZz/AUJqBIFyD/Zb2VpzdbwgTsPsKCJRsxG?=
 =?iso-8859-1?Q?jte1vrnAOd3Il9uy1BErYU16PAkKwhlmRqgm0kgpJfOhBKX5pJSlx7ZJkd?=
 =?iso-8859-1?Q?oXCRINdJqOjJiuzV0CxwaY7app3k0CkQDTTfHng2XPQi00VkxEaYwgMv2a?=
 =?iso-8859-1?Q?SXujDqAN3lIg9OKtk8nncczemrZJViEuOhB5KfnGgCq9m4XWXnOmr4awnj?=
 =?iso-8859-1?Q?7qnD7E0pYG94H2ttqHu82U+FZnvh4cO83oR78Pki/I7vo7We3elvSZjaBl?=
 =?iso-8859-1?Q?hmlDFv0q/bAeNf+4DeopoUu56VvlOadwBnFUwR1Vc2lFIccQTPXBYeC8Zm?=
 =?iso-8859-1?Q?awFf9b8ao0+UFof6tYdyfxcOvXTtjgqXW5S68T6qQ1XTLE8bg3/N7wjWWS?=
 =?iso-8859-1?Q?v6q8T15CYaQ0UKuxng5ttcqoY84vsnWtW/AOfX7SAuv3Er+eeKPzeb+yNK?=
 =?iso-8859-1?Q?TY8zaMMLVKfRRQzd7Vod9XZKDJigb/QzFtCS1bqTu9Le96iU//O6Vt3+74?=
 =?iso-8859-1?Q?kke/OLM6oUAB99Y7EL7KEuVEskCs2trc3aUs9kizmM6BnwmDNeNzKTK/gY?=
 =?iso-8859-1?Q?2K99KwF9OCCUxgGvCS3ibnhPNeaak/oud9taiSEIDtFtVsoMR9uEuvggm8?=
 =?iso-8859-1?Q?AvCiF8tqXzToHMQz66fBOrktiOhE8GDjOYzvrvUTm+XPhfkc4XaMA1s3L5?=
 =?iso-8859-1?Q?Vfow=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2698caec-96aa-4710-38e5-08d9d4d44cd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2022 07:30:53.5805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KSmSckwNltUTQJGlNaFeFVUc/n+5DWf7N+EsZCAQy3T3ZQIxSWrpf+GLbaK15lmLjuDhP8TXfZC17I3dChY2SorRdebnN1em6iCVtDWqXPQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0079
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 7/9] ixgbe: pass bi->xdp
 to ixgbe_construct_skb_zc() directly
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
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii@kernel.org>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, KP Singh <kpsingh@kernel.org>,
 Yonghong Song <yhs@fb.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Alexander Lobakin
>Sent: Wednesday, December 8, 2021 7:37 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Song Liu <songliubraving@fb.com>; Jesper Dangaard Brouer
><hawk@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>; Yonghong
>Song <yhs@fb.com>; Martin KaFai Lau <kafai@fb.com>; John Fastabend
><john.fastabend@gmail.com>; Alexei Starovoitov <ast@kernel.org>; Andrii
>Nakryiko <andrii@kernel.org>; Bj=F6rn T=F6pel <bjorn@kernel.org>;
>netdev@vger.kernel.org; Jakub Kicinski <kuba@kernel.org>; KP Singh
><kpsingh@kernel.org>; bpf@vger.kernel.org; David S. Miller
><davem@davemloft.net>; linux-kernel@vger.kernel.org
>Subject: [Intel-wired-lan] [PATCH v4 net-next 7/9] ixgbe: pass bi->xdp to
>ixgbe_construct_skb_zc() directly
>
>To not dereference bi->xdp each time in ixgbe_construct_skb_zc(), pass bi-
>>xdp as an argument instead of bi. We can also call
>xsk_buff_free() outside of the function as well as assign bi->xdp to NULL,
>which seems to make it closer to its name.
>
>Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 19 ++++++++++---------
> 1 file changed, 10 insertions(+), 9 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
