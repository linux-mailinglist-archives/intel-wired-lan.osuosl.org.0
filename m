Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFPrJFNDwmmCagQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:54:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BC330439A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:54:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84E668278F;
	Tue, 24 Mar 2026 07:54:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xUkRZn3mT1It; Tue, 24 Mar 2026 07:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECFBA826B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774338897;
	bh=6iS0HAYG0eNhpkkIT2UkW5Et1DV8J0+8qHnkTrqslbA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tw8hp6EiUTOoW0UcQ1AKWW5YLV3OrUMNC7fZ7up0RKtCb3qF0jmcsHDgFmAwaCnDP
	 mm8CBkqBHhI+5lyaQCnxIqVl3xCNyqcPnKm4CH6QZW+vVrGOPB3+IbgQmXM1PtUnnh
	 kg4qeT1FbbopOla9jyL8mKz/9ZoU/lMwVxhcoxD9UJrOyVK08rB15j4RGt77s1Y55Z
	 BlvbxfBOI+FY3mIEYxzTr/sSqUG4Amg+1rF1YwJcZ4sw4+iBHwg2If1jWHfMpa5BZf
	 83EWkiLyY1CYOP2EGqat462xm2Umqog+5CilwCVYOnj5kWNAIF44TP5ELTt0YaXC60
	 /Bd4G9hrbcrrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECFBA826B4;
	Tue, 24 Mar 2026 07:54:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 112B5F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB3DC403E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FRgn6Q8SNKn4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 07:54:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DE5E640156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE5E640156
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE5E640156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:54:54 +0000 (UTC)
X-CSE-ConnectionGUID: /F6/ikQASfCgHt+iYFtkLQ==
X-CSE-MsgGUID: O+xG+hYCQUCs1yDvq8e4eA==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="79204785"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="79204785"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:54:54 -0700
X-CSE-ConnectionGUID: KZvknKjQQ1K+bJJYhux5RA==
X-CSE-MsgGUID: UsgbO0WkTtmi48qWKHpfig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="217712526"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:54:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:54:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 00:54:53 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:54:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LovKgSjh6Je4eYAMGAyn3GKZkY+lvuZ804+z6SczTg74+bfHM1K5oLxidP6N+m9kpIVII6ktAFBJy0YcswmH0FAWSSibLq3YEWpvDWeIRoWRhwp/TD1x9gNw6HsFcBy87ykBjRxFQkEfrV4JT1/JBWUmFH1L0pK1bzFdXAd4wjClD0zwGbMYcF/NCbxWR8XECsFo8JUzxOtFnpAU2YUrTdJuUbI4W3TWOjvLmy8UR6NRXOyv5tSOuyqOJYNqmJim/HnRujgiFXYZ1+2RyT/qx1KF+GTxNw3jnmTLMHIJahR8O+ji4amQkXqr4+S5lmakFzFIe7zSVX5fOgDmSgjyAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6iS0HAYG0eNhpkkIT2UkW5Et1DV8J0+8qHnkTrqslbA=;
 b=j9bu7ZUNCHQ8m1rmKuFN6KJPEgcaGhvJGEGn6ahAQA3UVdRKCJShxHASB57kZ57v5y3r3qRlGSfHoZjlrUhx7VwAIG0zEW3IU4zNNRWAcIJUY6+N62RvoZY8RQuhjiIyedkyRwJUXHET4WSAeJoxcx6jCi9qGHDnvMoIhD7jOfykxYLl2dGQ4SKW9EY4OsEGlUPq7HNB7ne2XaogVINV1gnMVKzMMAYwywpUQwPzJmTLhaduLj+oBv80Z9QcaeN0RbEM4F2zXeMnkTpubkrBqdWaFP8Mw798OuFdCriRPn9JNd06Hi+QABwJJtUAXNKDkulaFYpb4hNfDnl/LKbTmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:54:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:54:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 05/14] libie: add
 bookkeeping support for control queue messages
Thread-Index: AQHcuuxRUORis4glxk6X+hSLN9nrOrW9UQFg
Date: Tue, 24 Mar 2026 07:54:49 +0000
Message-ID: <IA3PR11MB8986531BDBB5DCA01698BAA2E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-6-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-6-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF2AD6B04BA:EE_
x-ms-office365-filtering-correlation-id: c49a9efb-6521-40dd-4fa0-08de897aa037
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021|18002099003|7053199007|56012099003|22082099003;
x-microsoft-antispam-message-info: A0q93OJKG8jqEMxzjVlD2nRiq5HOGbOhVzVffRrvQvlv3tULnRNMMJktKX508AGsugYcv5itPWzJYZ7J9pDfmk8jzHlHu15g4ozvUZpU7fXSO36lSvPpfydEgSaD/Hmw6gqcIZI0tazPelKD+T6cFQ0nEAxvXfG6QFxsSfhrsKxvNYU1jXo+6GHVlXF6noyedjv9AKtxXWZnLaelOYUqhf0bGowTb9iBNK9zVrWv7HD7aagtmScQx5phJsP0ZSnY+5rmdo1tGxanDTWoZc06Fis09ZVAbE0ZnUEkFFTPvjYwb351XpnVFAAcJ5nUClhvDdkr7SlBxjP8OuSrd2qMfhktN/IzLDiqXslJilyOqeuCt83RQ5xtClVZWiqGe/F2LAxo6vpJ2n5O/fp2vqT3klbM0Hnky4iFPzM+bMaUIriZVPJcpCEKj9UEltg3Q1Vhs8x85U8Eg5E0yjMTkPkxazdudEBf2hcouqEGydOxNSACpQw9fDOItkA609+wwwYIPKJsrG+87iA2UORGXlE3HvRtIqjCTXcMjEc5xGTtvEOMKPWgJZ5xVqznBqQKJjI3iOAYsrpq5Bn+tYvMdIyLL/6U/u/c7LLKtwoUsona1oazQaMZGQTY1rpWpgpqu90thMDKG/4WRRiMJdR9MrTqYlpc3YpgSpgM9htx0cTFHUP1vNNSwtp1gn3LYmezG//ojkj8R8ZbwsAvohtX8JQSILHoAsCxpx46u5UbHw9w6cokA0cV9TFAyCsIyIWSZyHsLI2WQX+CfE6y2lFFhlLztARi2M0ZjlAptG2f9OqgF/I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(18002099003)(7053199007)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cLpVacZ6miTeNCAD3iaESRuVDTw+txOOtaDEV4uYSRERmr6v1aj0tS40ZBc9?=
 =?us-ascii?Q?dlctDgazsUgejB0vluouaiYTGDhR4+f5I88tYHryYTxecDf0dxXbR+1cM6hn?=
 =?us-ascii?Q?CcVfZQxYPYAGF3CGukK0PYjGTDgLxQC8fnJK3ss2+NkAnbEOBPmb86TXhKRT?=
 =?us-ascii?Q?lW1pNEMt0NeZBvebR0Vwr2F5N6p6dTKdGnzccnEmEs7UjjK36RN/OXuOT+V0?=
 =?us-ascii?Q?lYBnYmWYBHSwKPOAFp/zpjvDUaB8TpUN9EFCDn8/yPRBXi+i1pPQRlmQBGTZ?=
 =?us-ascii?Q?KpZB7vorUFrrPp7J9VfNGcVkmVbg1i6wWOqorJ7ylgc1I2acz9BevCz7lIlO?=
 =?us-ascii?Q?cjWAfwYY9BzfaxszoyrSxP+3hWERsMKuMJpnSPTOlXNLTVFulloXdz5d8iU7?=
 =?us-ascii?Q?88rGHx+Bfe/2cM+gwBojxTbU828nyjazrcVaLz2nuGn+0BlGLmEZ2VuTeT2u?=
 =?us-ascii?Q?gYKoAOq3R+Ra2WgxIrlDu4GAsZ3XErwFuLRLlyGGO9FDRAKrhWOw2GQ7gnpR?=
 =?us-ascii?Q?dg4hja0Hm7hmEFAujjkFexaNROog7WFh/807A0RoEu6SPGssY8ZDnkYjYmwO?=
 =?us-ascii?Q?CQHzk1FPPNY8Ak/ixXLAnynCIdIZxPQFYSB24Bk4Vd9LDIVFMfBpus0NddBB?=
 =?us-ascii?Q?EtUCv5ii1EubnO+hRkI/YFDG45lY8wtNgWGKFDRdEBgeXud2Qi0e6+zZ0GP3?=
 =?us-ascii?Q?R8Y9BcCkl9ZV3oLda9Tf1axBba9om8oRT4CdwZEPMYiA1GKdODKYCYAfJSzV?=
 =?us-ascii?Q?aTdvkd04Z5APPyidDAxTTskFIYXF2DIy7oIdxizBppSj3j1NbvulVMffw/cx?=
 =?us-ascii?Q?R9xIEkkxQ1ncSCEvMHuhn3nF+NR0fH5+FetLOLQNK4AhIDSDcJ2bVpN1KQ5b?=
 =?us-ascii?Q?Z3XxcxHshYNjP/MtfeF7MGCT5FKO5m6lzrG9yOrua/c7hFkF6gusuY2bwtvs?=
 =?us-ascii?Q?wabO1oc76BGaOF1xjjmwdcxkYPTMec36oPWVfb2IL/x5+gpqT/9Uue+lVnRC?=
 =?us-ascii?Q?1EyNx0xeCQfcraK2JERRaiDU6Bwq6WkwlR/mL7LOjdvVeMbvLa6ZDKteHjaU?=
 =?us-ascii?Q?fbp/yLr9kBeTosZL3AnaoxsqldKG8T4BhLcY+wl/Nz/lvb6L82ZELUm6n97M?=
 =?us-ascii?Q?M1fFXohqUzvy6NwkRvpW6iyMgSyyeNcSLypirb3qXTzCkACCBb97Aw/+qHyZ?=
 =?us-ascii?Q?SC0oJAn62EZBfsnTMUsvmkSZAQ7gF67IgoxyIAolKXLaAZBqyQ+JNCmDXoDl?=
 =?us-ascii?Q?u2/OXWlLY7q+K7dTaoVy20IKDY68J8NjBZC+KLKCcz2c5QcRKLauaPVatPZH?=
 =?us-ascii?Q?jN3FOP2j4T0EXKNpBq7qWmvb6FVLWOibbLjB2WKaY47Tf7NsVf/urYIkCKvq?=
 =?us-ascii?Q?tw9cXkJZuFRJXN4EvHyGjLBvNFPpwH/UerN9wWHPPQMOP2M9+13ByA1kEn3l?=
 =?us-ascii?Q?SqK5+rvxhZz1U3LDsziD9g7q+YW6WJL1+Ae7jHdd4Us5pvr/Yz9TpTGQInGg?=
 =?us-ascii?Q?2XEAiE6z8wwpqABAR3M74+Mkg6PIqAz7dfAvEz0bhaXZfakdHIczd2T1Ywu7?=
 =?us-ascii?Q?KMBtEyDJf6odV+qLbdGH4QJxlYYBcEVS380o4sTyHhUBbOYprUKGXEuWGFiB?=
 =?us-ascii?Q?Gl72oGwuNqNKhC+9Zr36k6qKto5dtoAxfujrV6BQatpAvVfuIqZUzSnbwC30?=
 =?us-ascii?Q?lgcKLVz7D8XrEvkr8A5kImtQ4YNyRxphhNio6Vy+U+Fs4HyQGST/zIR18UrC?=
 =?us-ascii?Q?8Xwv+bVyvHs1tww3w9QU3OynMlgxAJU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tBruTg/h3vsSINdrIjnaMoA3sDD3O8/T+2KgagVhOW//7ryDRP23wfAenRSUGakH+Yi+v4n2NYxPXO4gsE7Jro6Hoq74Ej2aYcfNoGIrCeountLXeLNEU9Nn7qwZAEVgaGvpH0B1gTX5ywBrPHORFs01Jp1NslWzDS8Hx4IxmjEkAbJMKNXUvZoKyNicEwomF3wN4T920j71FIPO6PEm6upORFaolYd2OsPcfVGqsCZmA54xFs3K2mLjE8BZS3/Cp0pXTfFdyLop8769+Ex1Xf1VKWZa7uzFJA26J6XKrTJE+PzaWDDtxbpuRWXQ4sqCZxJe0gKJYWduQVKP+QP4pA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c49a9efb-6521-40dd-4fa0-08de897aa037
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:54:49.9823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJy/B/bKHU+pGd92iC9IuMM7xJeVqs0a4+Qfi4Rls0iRe9hDTbU/ZH8LZXR+7E1gUhUKB0XYLXqjLsbp8U+KxS6YJTh1hZ+IZON/nLKFIts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774338895; x=1805874895;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TrXkO6KeMst0kYpgempeFpVvenNMjv28g4EiqP5OGmk=;
 b=h4e3IVHwq48K2+UCGtPGhWWztSam7nL60GRU6rAgedzNGQOHXItgjMNr
 1sBBqze4iix+dt1k+p+/sq2mfju+8qeSnH+A7+swMGoj34/yREDRxPUqk
 q9+MO++e+ydXNlnuqAnE7+TZ43lnDQQZwtJMyUjqXaBeOOVI1o9Zm3lYN
 nVF2eyVyyUDvpKHlJiQrstNTQTlJp/n0akA6YV/r0GoJNfrbYPk3RxZxc
 jBLkFhTrtMWYlhnRoakNfOV5ji3Co65rzJMKmjUvS7/xuZqyewXVFjoaL
 n87UNDtoc38y6YIc7Gg87XH+CZTR+N2Arvq0bJDk7+tq7uHb1aDxZX/AK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h4e3IVHw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 05/14] libie: add
 bookkeeping support for control queue messages
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: E9BC330439A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, March 23, 2026 6:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 05/14] libie: add
> bookkeeping support for control queue messages
>=20
> From: Phani R Burra <phani.r.burra@intel.com>
>=20
> All send control queue messages are allocated/freed in libie itself
> and tracked with the unique transaction (Xn) ids until they receive
> response or time out. Responses can be received out of order,
> therefore transactions are stored in an array and tracked though a
> bitmap.
>=20
> Pre-allocated DMA memory is used where possible. It reduces the driver
> overhead in handling memory allocation/free and message timeouts.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <bharath.r@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/libie/controlq.c | 592
> ++++++++++++++++++++
>  include/linux/intel/libie/controlq.h        | 175 ++++++
>  2 files changed, 767 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/libie/controlq.c
> b/drivers/net/ethernet/intel/libie/controlq.c
> index a02ce58cd8b8..ebc05355e39d 100644
> --- a/drivers/net/ethernet/intel/libie/controlq.c
> +++ b/drivers/net/ethernet/intel/libie/controlq.c
> @@ -598,6 +598,598 @@ u32 libie_ctlq_recv(struct libie_ctlq_info
> *ctlq, struct libie_ctlq_msg *msg,  }
> EXPORT_SYMBOL_NS_GPL(libie_ctlq_recv, "LIBIE_CP");
>=20

...

>  #endif /* __LIBIE_CONTROLQ_H */
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
