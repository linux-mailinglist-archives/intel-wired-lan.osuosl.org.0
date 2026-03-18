Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKciEnXIumm6bwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:44:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9529A2BE817
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:44:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22B1B40CC8;
	Wed, 18 Mar 2026 15:44:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M6Hs-n_VhXzS; Wed, 18 Mar 2026 15:44:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04A7440CE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773848690;
	bh=AK2TKn1E5pF3N80FQBod0l5TFqqCuGAKwfjeLBCPD6A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SkbZ2rRxpePzh1SMrISFujFIJSccSxtwqGkuXFG1BIxjHf2PxvBXYvpbJ7XBPL2sZ
	 zePhmjpdpYBfExRSjrpfPENd/AxfjT03xuIFTZ7zJevV2yuEqv0CCi8JueL405+/15
	 B244xNt/cXrxu9mIPKj0vGhzxIR8N8pVM8x9bsSp2T0YqZvnw9fgsKRsUQFcHCu2Cv
	 pcEVyQvpBxlMMTQh5k4KorlctTc6AUFYB7aWMSZ2zslIitsjiJo7wZe+GmQd1VWlnN
	 r3cfejZkjvzcGiM19n8Lz1fW/yUaCCXEMIpkdEjkguPdNQAm8vk+H14Ilw4vJgll5o
	 fKDeTB4fVkkYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04A7440CE2;
	Wed, 18 Mar 2026 15:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A36BF1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88BC58276E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:44:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AmUFZ-NcxUvK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:44:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 766A6826DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 766A6826DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 766A6826DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:44:47 +0000 (UTC)
X-CSE-ConnectionGUID: FuWiL/FUQE6xpyyfc9PjjA==
X-CSE-MsgGUID: QA0Z89inSCyuH3EsgPtLNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75087733"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="75087733"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:44:47 -0700
X-CSE-ConnectionGUID: geQPfhr8T/OtgKYP8prEaA==
X-CSE-MsgGUID: 8RMxnHTtSECFKKWbtVmw8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="220100179"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:44:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:44:45 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:44:45 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.41) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:44:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cQUPFDOrtco5PnxQ2VHDmVo7ad4z1O/382DPDYZEg53gUsv1bb+q2OJzbvMB1azyfHDaw8h3EZZnkgIneuhp3zpPMbq8rn/4E/JqB3vxZwBjRjzRripX3/Io4mzCbE8fxW+5ZbOTGoQhQs4ixbl5Fjiv5s5ZkTAzBXHm9f9edUY4DY0i4G7rJ6yInmRZAAYMQZTEdZArpnAmKEuuEva1t2itsqTsKtBkm2e/rkIYZEArGB4m3WP/B7K37ChpsLkOvgYVWrWAplWN7P8+e0RrkO3Edr3ijEVFrjBbUNKL+dWYiHaLPtOliX1dHnbwsCH7yu0YyjVx+9rMuJvleUi2CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AK2TKn1E5pF3N80FQBod0l5TFqqCuGAKwfjeLBCPD6A=;
 b=IoAyn/wpWTeFTqE3ZaxXOozuGN6wQend4oxPOicDaZmcxpl+ZZ+PXgu24een9pqjLLZgkH47AG3NX4VBvfx4rmooVMgC/tPdOAmHcqGnLmDROfbMhkDKFP3Jvf8KyNLHGSBxaz8QCsTwSCRgCVz2pOprLEPgvwBJ9BZV31HLtqnijVs4tOqh41bfwyy3FXsXWkVUtuQB4dKepzdU6qPzTCecwu2LNA8qUn/0LkuKd096Zlia/wJYmfF46VU9NqYEClX33aBjAnV9mpD3491DGAiwBnhLlz7fNMmUjQBe67n4YfcFERvmc2n71QeIyGElYjUKHPA8yM8/xCkewG9wgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF11A2D5672.namprd11.prod.outlook.com (2603:10b6:f:fc02::b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.8; Wed, 18 Mar
 2026 15:44:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:44:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Stanislav Fomichev <sdf@fomichev.me>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "michael.chan@broadcom.com"
 <michael.chan@broadcom.com>, "pavan.chebbi@broadcom.com"
 <pavan.chebbi@broadcom.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "mbloch@nvidia.com"
 <mbloch@nvidia.com>, "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>, "johannes@sipsolutions.net"
 <johannes@sipsolutions.net>, "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>, "dtatulea@nvidia.com"
 <dtatulea@nvidia.com>, "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "willemb@google.com"
 <willemb@google.com>, "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "linux-kselftest@vger.kernel.org"
 <linux-kselftest@vger.kernel.org>, "leon@kernel.org" <leon@kernel.org>,
 "Cosmin, Ratiu" <cratiu@nvidia.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 06/13] mlx5: convert to
 ndo_set_rx_mode_async
Thread-Index: AQHctuhsJm2rxQZIu0Gj7pihsmblR7W0bixQ
Date: Wed, 18 Mar 2026 15:44:33 +0000
Message-ID: <IA3PR11MB898652A3F1D02D49E7ED3889E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-7-sdf@fomichev.me>
In-Reply-To: <20260318150305.123900-7-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF11A2D5672:EE_
x-ms-office365-filtering-correlation-id: 82b6f527-1189-44ca-b728-08de8505409a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|366016|376014|38070700021|56012099003|18002099003|22082099003|7053199007;
x-microsoft-antispam-message-info: 6ETbjn3a1V2NWqvRC1hQpmIGgxbbvR67hMTVWWequxM83WvFKSRew5Z1AKxNI8M3kCQA9VTsfAb1LxYeuqTmOGc6cB7gI6wjiUAeC7J0Xg5WIki0hRouxyEkIVSgiv5Xv9p15MVBqaGPaNsSVOa757njnZ5BvVAxUpADwIMrLtED6i6rMijVdPpYxTtmaBWvoWYsCg/EgUR07UZvHvloSQi4QVM9l+MVIDXgJbJHDgNxcetLAa1xI5KTYmCk4zc1vtFKIE1v3ciqki6uddgWzNoqMEzj+pi62V0xBg0FYjwQ+ZitILc3bj24kxYV3l0uC1x1I9SzR6nVzbGWBL6GY7kiYuJAhORiegPADhGYJNX9eM5J6mFDosweMrkdByRVq+w3sWy84YmtJ7N5t06Js0b9aHZDqVUECHx3IWRr/lER2OcByJEpPoqbFLEEfY1HMwNUBewSZirPKGR6+pSFz0lBAf5Kt5Ne6JdXO2cGSALSpTcneMyU3BiZJvz7CNjD6KT9PAfAb5UrXYIOPGWLZZCKs7jnJ49AUfmNRiu8K73lQue/9iU8bg7IKBfYBsbS3O48JiKpvV7aPukfKzsQTvjJB+uxGzNg+UyKxkY1ty2YUxh8pOBUzbBb0qAGYQ8RgfKIqgkRNG27uv7RbyOocsIXYVp52TnoFMqVVjmFuZIZrBJryYOEYKp8LgQ459SqLnrhe3LxcwjLtH+PrbAQ674sKiBhRXuCE/wf4Jt+95tJ91JrcFxopkWwB5bmFwKwK4u0aZUmBCdNAMofMkBWoB67+H13ouHQ5JG/Cm34CFE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8aSfmOJVDXjzxaeHInBsF4MN47AtKaaK7Y6Ne6D3vxK+6H5U9FeVHSPXQJHg?=
 =?us-ascii?Q?SBMQnyxld7ARhi/UFz1+IJW/bjmZwTA3OdvWybxSMgDEsu134O3l1snV8XgS?=
 =?us-ascii?Q?333PfMYRrelz8iey+CHqAXW4gh+OCCNTyXjrFCR/jwuRGYPEdPh9Pn0XObiq?=
 =?us-ascii?Q?pJSiVBrd0XzZcTR4xszBfnYV63FaMDNkaVJJzvdhMx802bnoVn4hAGXSsjoY?=
 =?us-ascii?Q?8FOXcL0WIF7HnpzTqx3wZFXF3gyvslwdzIn1CDd/ffHO7Vj/biWwt5CqyWad?=
 =?us-ascii?Q?+sdTgM8hEx5v+9/+6RGZ8x8OOlPhKN8+HYgy35Xqi6ptLd8SNW1kJhhv1SwQ?=
 =?us-ascii?Q?NKNvV30Bz5VVTuT898l2R5nCJ3r3r49nZZp9sP8q89sLYzh+p8jNOFBD0OTg?=
 =?us-ascii?Q?EgVg2ygMlvZdaIZKLgMEZv4gS41hL5cYw9IX3Fptz2/IZinfjt/YjU2UE4yR?=
 =?us-ascii?Q?sdU0snCgGzYEWwz3HViBABr7UHVbsKLnJ4pXvMk4r98MoSgrRMZ5ToXBQW27?=
 =?us-ascii?Q?rUgUqk/M+/z8NC/y50HJGgMC5MpuwHnAIFSmWPGO4AlBpUCZqQWvhUZF2jz4?=
 =?us-ascii?Q?dqk0XjcdSqtZuSBpH/8Qs1NObrP3hCztKReiOUP1wFesDwgpCTOPdr9n421o?=
 =?us-ascii?Q?SI0HcwFy13RldJt3n5vOvPNN63F+Fhqv9eKLvPDSG7+tfB29jUm6oV0AtqHK?=
 =?us-ascii?Q?OfViuUKpYLcJtbx8ehNahMLMPznfYjviFNhTPhYvEGeQqmhD4EyricilI9fT?=
 =?us-ascii?Q?Ng7/5No3r6AJSFxwwyy3WikCg0RchC3qPJdIwenGcXvMjrNSSY7S6V0Z8SZZ?=
 =?us-ascii?Q?+E0l0IORf4L19Sox5SIqAsl8WlUST51I5Os+eBoMESSB0XGPVW3YYKbxjdnP?=
 =?us-ascii?Q?xtIA80G6O/faJ53ZwobF3EJxu8tUkSAKMnCYM3nUkk7QM6ppAi66ow9Hs0Ku?=
 =?us-ascii?Q?mGanTdbCWlJ4FF1kM6ccac6zsttYyTOAcC05CXN80TtWG80kC8OlHmqbrrF+?=
 =?us-ascii?Q?HavsqtcVwsGGetzjriR54xXjPRIITVQaWPOcVmN8epriIUqkKr5Sw+ZCn1Dh?=
 =?us-ascii?Q?UzBtxNMTjYiLCphx5+3E1EUmf0HfIbZ7upKnmHsQGWz8uPTvlqIrCp491ndV?=
 =?us-ascii?Q?mGLtGu/V2f0YMJVdKmoCcDBquVqvDP5j0jY1X3nhGs2JH1CFLZ6DniXR0IiU?=
 =?us-ascii?Q?2dFyigcCkMK9pFMKSNH2sik+s7iidmLuOk9emvZ/hjdFp0Hnv9aBaz6vzhNA?=
 =?us-ascii?Q?10sQgGhEGpJXuPbftNNHOBZgqb3X5lHxE3HDPaaMAqq09spbZf2CE9sOpywp?=
 =?us-ascii?Q?b07yaakmFNGIIgK1oBXKaYdNbT14gLYBGQeNT/zq0hsojT56E3PbtT/phkzo?=
 =?us-ascii?Q?SiQ4+6oZ6UwLGZ8EYA2JluOXMZzW10Nb3owu15jLHFQPh0bIzPrXXoq4MuuE?=
 =?us-ascii?Q?TIzVKugzJbavMKXFYrESQb9YxWcn6b4H4nna7ybkwX8heW3k7RfOLbaATR4C?=
 =?us-ascii?Q?lZLwyk4J6V49oHu3cboOeWmPcVGy97xR7AWAATMzT1xa4YSWj6ahGjoHDRTl?=
 =?us-ascii?Q?bM+08JeXI/BxZIzRy7TcakCy8kbfth7ICVHxmQ/rqWc1KPLPUnYkzKwkvNnK?=
 =?us-ascii?Q?jX9ZJ72OOl1XuQOe3BHHngsjG0JVApk5hdRaW1KeS/HWMO19PmJ1ngtfCAVE?=
 =?us-ascii?Q?8Cbcta7qe5Ra3quWs+dOyS2pQ2lfd0xAJ9WLiUK2NgpfqXtbe8yCw7A5QOw1?=
 =?us-ascii?Q?gwyitJI7TOqLKJtkWUt0XIJSjAgeoGA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CnlG2doMbTbd2oqYmVJH+T7ahQQ+bCrOmD7FQjJRQGre5SdGmU46PzBx1pSknPDNSU7PKmtWIxdonDc6RenN46f6lFSNII3YbF5JM9irDR7o4JX2NOXXmKp19IdhnvxOO4Sa6Kbn9dum3dHNGN8DioMu8e4L0nEh8PSbTbWf4amKHp0uKegcPMbit3pfgKRRwDReYsRYSNFxAYQs3pJG5sOItgTMBfRP9CbBEdXOjV7avORCFF0mvsffE+rNCwzNr2LPzRfQozgSW+OpKMj9GwA4sdXzGK0EA8SeIevQxggjJNmD+F0xzIfveDbOEuMyScZ1e2QowrZqDampP5zj7Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82b6f527-1189-44ca-b728-08de8505409a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 15:44:33.7791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o+j6AZUeiiYGDzq30XmD60pqVtpYT+/F34UORplKzwfv1m+sSh2gCt04aP3mIW66Sasxszt/WHRaAmr5I87R3i6geipVPQ7TdO/JWwksWWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF11A2D5672
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773848687; x=1805384687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Oz1HKxXV/zDS6Gc3x+M53QZZ3pDKhwSmEPeyija4BgM=;
 b=GR6K6qrB4rbiFfpshz9DAvg4/Cb5vnGIk8gUukW3XlM53rHbyEWOklTl
 9XGvBlMMV22vlR69p5TpZzPcJcfRHcLEOY/Lp6HKpKFDFeYb0f4QePlPK
 zYbhfXLtcsr0b/Ul72PaiMzSuc5idqbojSXKxhwSxDs6fSJ0jsb9+zNEt
 sXxwOfqvwMDnlw9jbIQQvVHs0s2rBAAl9j7QQ6fKIUoYkaILdcCTK4AzR
 cHh93f9aoI4/k9xlWeP6ZQbVdqulQEwF6NFg9nIQH7yy0i5XCcP1vEPkj
 6qRnosddIP5rwZLDjN8Brub7fLom35YAKgzHkrM9ioP7E4TzVk1hk1S3a
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GR6K6qrB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/13] mlx5: convert to
 ndo_set_rx_mode_async
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:cratiu@nvidia.com,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9529A2BE817
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Stanislav Fomichev
> Sent: Wednesday, March 18, 2026 4:03 PM
> To: netdev@vger.kernel.org
> Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; corbet@lwn.net;
> skhan@linuxfoundation.org; andrew+netdev@lunn.ch;
> michael.chan@broadcom.com; pavan.chebbi@broadcom.com; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com; tariqt@nvidia.com;
> mbloch@nvidia.com; alexanderduyck@fb.com; kernel-team@meta.com;
> johannes@sipsolutions.net; sd@queasysnail.net; jianbol@nvidia.com;
> dtatulea@nvidia.com; sdf@fomichev.me; mohsin.bashr@gmail.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; willemb@google.com;
> skhawaja@google.com; bestswngs@gmail.com; linux-doc@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> rdma@vger.kernel.org; linux-wireless@vger.kernel.org; linux-
> kselftest@vger.kernel.org; leon@kernel.org; Cosmin, Ratiu
> <cratiu@nvidia.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 06/13] mlx5: convert to
> ndo_set_rx_mode_async
>=20
> Convert mlx5 from ndo_set_rx_mode to ndo_set_rx_mode_async. The
> driver's mlx5e_set_rx_mode now receives uc/mc snapshots and calls
> mlx5e_fs_set_rx_mode_work directly instead of queueing work.
>=20
> mlx5e_sync_netdev_addr and mlx5e_handle_netdev_addr now take explicit
> uc/mc list parameters and iterate with netdev_hw_addr_list_for_each
> instead of netdev_for_each_{uc,mc}_addr.
>=20
> Fallback to netdev's uc/mc in a few places and grab addr lock.
>=20
> Cc: Saeed Mahameed <saeedm@nvidia.com>
> Cc: Tariq Toukan <tariqt@nvidia.com>
> Cc: Cosmin Ratiu <cratiu@nvidia.com>
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  .../net/ethernet/mellanox/mlx5/core/en/fs.h   |  5 +++-
>  .../net/ethernet/mellanox/mlx5/core/en_fs.c   | 30 ++++++++++++------
> -
>  .../net/ethernet/mellanox/mlx5/core/en_main.c | 16 +++++++---
>  3 files changed, 36 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/fs.h
> b/drivers/net/ethernet/mellanox/mlx5/core/en/fs.h
> index c3408b3f7010..091b80a67189 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/fs.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/fs.h
> @@ -201,7 +201,10 @@ int mlx5e_add_vlan_trap(struct
> mlx5e_flow_steering *fs, int  trap_id, int tir_nu  void
> mlx5e_remove_vlan_trap(struct mlx5e_flow_steering *fs);  int
> mlx5e_add_mac_trap(struct mlx5e_flow_steering *fs, int  trap_id, int
> tir_num);  void mlx5e_remove_mac_trap(struct mlx5e_flow_steering *fs);

...

>  }
>=20
>  /* mlx5e generic netdev management API (move to en_common.c) */
> --
> 2.53.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
