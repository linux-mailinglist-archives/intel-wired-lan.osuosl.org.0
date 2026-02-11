Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOf+I0s4jGkejgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 09:05:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E636912207A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 09:05:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EAA941143;
	Wed, 11 Feb 2026 08:05:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NFHGaC1sYX7U; Wed, 11 Feb 2026 08:05:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E60FD41146
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770797128;
	bh=5eRJmfeYBRSwrnIJAEYU2I1oc4Alz7Jhmb8ZOStDa30=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xu/aYtHJzltGMK544EH5JXk2oioIQDCcj/N5jx3X6vvJyLupaADmuHNr7KUiiM7KA
	 XiGTRGdQ18MJIO4KKx8dLDMzdplz6nh9S+Z3nCtJiefKboATq/+TDNWjZdrBTT8lbV
	 8Mi5Z+r5MGSgpRu+FE03EfxBfNp2LkbdEY6lHeuDZ2Up3BI3NKkOrtmtfcnNGl2337
	 oUm4S0zFkAwIGOrV2y3DeXmpVemN3no1UzaRp5h1muDuj+tGTu41tD9+By+zQKAzfL
	 Jr6VPbPzkSgvioKh2xLQBz2wn99KSkegKSWAo/oPgkKGahbyqDbkC1QjlqgZbYaMIx
	 yZaOxyL/SvJog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E60FD41146;
	Wed, 11 Feb 2026 08:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D31C1F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 08:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E60B0406BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 08:05:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pTdDIgsV6f9S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 08:05:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7644406BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7644406BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7644406BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 08:05:26 +0000 (UTC)
X-CSE-ConnectionGUID: WfQOnemTRT6dHHpGYqnT2g==
X-CSE-MsgGUID: OkE8RzSmSqCqYF//aMlJig==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="59505239"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="59505239"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 00:05:26 -0800
X-CSE-ConnectionGUID: 8IG9NnnLTJeVBWFcwgqBuA==
X-CSE-MsgGUID: dlNkFAxhSWujVvR/GYOr3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216699060"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 00:05:25 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 00:05:24 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 00:05:24 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.25) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 00:05:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M45Mbz6UUTjzyqFYm2nWOKURqqMfJuSh5bvTmvnHXzhkrTsOw90JrSuuG55IKuOkujq8Mx5rsFLPOHkQx83MgseTwYstE6jJTL7uXXTZZi1U9gEyAq40L/hwWvKTyc7CCotr6mWv48mYFo3ac8UyGK1BPucskPaN6aHl+i5cCuzfKWJw75jzJKhzJj21TmKfVopmM5jM9WdQ4ccwoVtSYzCQH31/1YOYOU4Ki2ZzWmzyhQJWEQETckTjRByznsWaU9TacdY0dAGLaSP6jZbr8THmcjhfdCgyyAbM8nC7QKzhhzSe3t9n2IgyaAllj4UD3+/uci1TFSn+xFv7v2y+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5eRJmfeYBRSwrnIJAEYU2I1oc4Alz7Jhmb8ZOStDa30=;
 b=uQzEGYiF5qE7era6FdgBS3pXn3zjBid8PxbtnzcWAedEj7rwThv1fuXymxAXCOEg94x3mTb0yioDJPl8nVOif3XSvQjEeRZpxjKDhHGtl6I29CW6UbJVKcMcB32vUG0DmFPbvgX91fOCHRhpqdggq6UqH1fpFr7ex75MnJis6+pFnv8qUnPNLLOwLvd9kgq2+6oJVlm3ENUzpeqtOVEZThRLNb/WFDyomVDxMSPBiisuRDMTk9PXQJ55P9P+GVgU1MRI1dYlr44f478N0VdtILRb5iy84tmOLD7Enp+Fm2gFBWv/8MjKmdD7Jkk0I0EAUM9z1vrhandzEvD6FNiUig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6833.namprd11.prod.outlook.com (2603:10b6:510:1ec::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 08:05:21 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 08:05:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, Donald Hunter
 <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Andrii Nakryiko <andrii@kernel.org>, "Martin
 KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song
 Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, "KP Singh"
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
CC: Jakub Sitnicki <jakub@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH bpf-next 4/5] selftests/bpf: Add
 selftest support for bpf_xdp_metadata_rx_checksum
Thread-Index: AQHcmrHlC5wEutFGMk6bUOuX41KGHbV9JOBA
Date: Wed, 11 Feb 2026 08:05:21 +0000
Message-ID: <IA3PR11MB8986D6FC7CFF53E8640782B5E563A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260210-bpf-xdp-meta-rxcksum-v1-0-e5d55caa0541@kernel.org>
 <20260210-bpf-xdp-meta-rxcksum-v1-4-e5d55caa0541@kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-4-e5d55caa0541@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6833:EE_
x-ms-office365-filtering-correlation-id: cb9bbb80-ba76-4266-17b0-08de69444db6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?WUVoeTBzdmRUazNqV0N3ZVVKVk1XbytpR3hzSlhuMi9xS1RPd0xpTTlOZFZF?=
 =?utf-8?B?Nm00cTd4dCtFY3dpcUpvRjRqOTlKTWZ1enhrVVBaZnZGN3grU09pbUg5TlV1?=
 =?utf-8?B?OEZaZndsRXhCRFE1dUkyQVZlSFhPSVNTemY1VEREM0w1QUtQdGRmL2ZXL0Mz?=
 =?utf-8?B?eEQrTnh1RGpxQVJRSUJQR0hYVFlaMDlOQWh2QjBYSjd2bWlZTHdkcDVicXha?=
 =?utf-8?B?MW9xTThBeXFsVWtxODBJenRjQ3lQZ1QyNldhNUZtQm1IdkZ5R3FjUjVndGJi?=
 =?utf-8?B?anYvdnE2RmVicW5qcXdEelpnRDRRVWd6YlZYemtKQnNwWktFL3JIMkRrYUpO?=
 =?utf-8?B?dnNSNmlGK0tkQUJJeGVKd2xTQ1NYWXl0cWN5a0xialU2enE3b2xlVElVOHJM?=
 =?utf-8?B?bEhqQUtOVFJWVCtDUDM4QWlqZXdSSERoY1lucCtxaEJMUzV5WkZJYjdac0NP?=
 =?utf-8?B?UUZON1gwaElWbTZaS0ZLVkxET3h3Q1ZqQnh3YVlRMDk2Yi8wUjVnTktDUURG?=
 =?utf-8?B?Y01USnJzaE9YTlZoMWlNNThrcGxqUTI4NDJaY1IwYnNlOXk4NDZXTlhZcjhW?=
 =?utf-8?B?UHhqaXU3eWJpU1ltTHBsMUZYbG1YUHBiSGVzNDR1c25ybnVQTXVnY0tSaG8r?=
 =?utf-8?B?MWM4MFFxMS93V0I2b2d5Wm1POGhhOVBSbHFZbmtWQjdBZU9hdzlUUkt0UmNS?=
 =?utf-8?B?aGNQQ2EyNmQvS2hIc1hhbms4a0lQczZ0RDFEcHN4MUxpc0Q0d1htcGoyV2d3?=
 =?utf-8?B?Ym84WTN2dzM1Q091dmJocXZJN2JFYThCVzdXem5WbFkxaGpEL1BJMEUrY2JT?=
 =?utf-8?B?ck5VUTd1cC9ERE1lN2tOS2Z2K2h3cXZGUXVOamhjMHNKL1ZnRDdwczR0ZlBM?=
 =?utf-8?B?VWpkR3NpQTBmRjZudGhXb2dQRksrZUtWN3pNTlgxWThxKzdiYnBiNVFYakQ5?=
 =?utf-8?B?Y1pRZmpLNUp6Ym45THhtQS9TZGFHcm5walErd3ZtbUVFZzVzWDhKbC9VaUli?=
 =?utf-8?B?eEp1RlNCYzNXVkk0RGxYUmk0M1QvM284YW5yRndtUlZUYXE0MlVRYjZ1SVIy?=
 =?utf-8?B?aTdYREw2b0ZGTkRMYUdjYml6NVovU1VVNTdEcUdTUS83c21BalhCbk96ZEcz?=
 =?utf-8?B?WXlBYmJYMUdUSU5MWVY5QVdjNHNmamVYZjgwRmtVdmRUM1k0WVNwNEo3VFQx?=
 =?utf-8?B?ZDRReUJ2cjdYUmR3MWRCNHdacExjQ0U1L3lFMUpGQ0M5T3lmMmFpeDZlN0d6?=
 =?utf-8?B?cTJiOFVNeHhhRmp0UTlXSjhNU3p1dERPTCtDRjE2bStDdW9VRGxuOFVSZWkr?=
 =?utf-8?B?bDNjRUw0UDcxRVpwdTZRU2d6TEdlejBjajR6MSt3M1A4Wk9TWWxaWkRSSDVw?=
 =?utf-8?B?M2hqVGNXbGRBeEhnNVB0TmRncnVnbENSZzVJclBrRjloR2o0ZlNDWEVjK1do?=
 =?utf-8?B?Tk4rcm5OdGczTXk0QWFCTEdwWDZWRnlucmdSREF1VmNldUoyUTIxblZtd3Vo?=
 =?utf-8?B?bHdKdjVjdndpd3FTSmFQNFdDSTlqTFdZZmQvT0VRUWZteU5xd1lMMmpnQVVV?=
 =?utf-8?B?Mjl4L1pkc3hHQzVzZGZQVUtYVXRiZHowQVVOOUVaM3NwbThDUm1ocTMzWVZS?=
 =?utf-8?B?Si9lVHkrTDVwVG5JN29HRG9Ya0U4RzdndGM4SlpRM3hmRHNsazlOUlkwTmVp?=
 =?utf-8?B?MXpNSDVCN0NNZi9uUTk1NG9nQTFRK0ZSU0kvSGpETEdYVzJ5OG5IVHdpd0tL?=
 =?utf-8?B?YkozUThvRDMvVG1HWFIyUGNTRVlTdEtJdkVkRFpNVDdlWnVTT3pCVzA3S3lJ?=
 =?utf-8?B?YmVER2RvSmJ0OG01Q3ZCUnJLNEZTUWRlL09PY1VCeGIwZXRxam1XR2hiaElC?=
 =?utf-8?B?WGFuT0VCcldxQjBlN1JKTGtXNmx4Y1ViVktqTlNaUytidzFBa2JYTi8yWmtC?=
 =?utf-8?B?Zndyak5HejFYUW9jMnVvR1lzdGJiekV1V3B0d3J3SWI4MUR3UmlYaFhwdEVO?=
 =?utf-8?B?VXBWZmlKc0pVVEpMTmF0SDd0aUk2OWJzaUh4Y0R0TWlqaDhCQy8rZUJlU05K?=
 =?utf-8?B?ZjF4K2dJeEgwbjh4T3pwOEVUekF1NGFCSzJJM3p6b0V3dDlKZjdGUlR0UXlK?=
 =?utf-8?B?eWNzNnJKcTgrWjIxNmxZTkF3MGhsRUcrUkdWOTBJbE5tUm8vQ3BNR0d1dFh1?=
 =?utf-8?Q?uFjRHtp0v8pYwLxXsGH6oHGpEX1xqyY0aXHPuL/Io8K6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkNkVjhjSUxkWW1vOUlRbG9SeWFUUDRwL003cUVVZDJqQlFuNTlYaGFDeVpm?=
 =?utf-8?B?SGNGTTVUSG8ySlphR2IyOVZHd0lVelhTMnhRdVh1allVSWx3L0l4QTF3S1VK?=
 =?utf-8?B?d3pBcUR2K3h2YXJSb1BvTCtzMlNFWUh6VjNzdGJESGhlMzZRamhXeUh2MWNk?=
 =?utf-8?B?dy9yQnllTkpGaldKNFZJekhiRlBHRnBVb0V6RE0zSTduOE9kMFB2QkUwWU5M?=
 =?utf-8?B?ejZMUjlFZWhPZG55RENncUx1eGtZMThBWU10Z0JzNFhGTVUxL2hwa0JDS1Nw?=
 =?utf-8?B?dkNmVmVNb29XTUpmWHEyYUtuL0tudnFNZHE1aHJOVm9TZmVTaVVBS0s5cXhx?=
 =?utf-8?B?dW8xQlN5S1hyeFQ1NW03TTlCVjhkZk9Sc3hINU9mWTZXbEdhMUpRT05VbUJ1?=
 =?utf-8?B?U0llQUx6bFp6eXdROE9DaGppZC9MZkZCeXlibE9pdk5NVGg0akZ5dWVEMzQx?=
 =?utf-8?B?RUFRczJ6dXltalVYcnF4eHQxUUkrUS9OYWVGSkxDS2xNQmZxcGl4QVhwdXhw?=
 =?utf-8?B?Y2ZwMDRXSjBzempyeDlYeTluaVFQRStaQzZYcE1VWTZDYS9MWFNKc2dUVXFQ?=
 =?utf-8?B?YXU5RUpwdm84TndEQ0pqWi9wYlYrMUdjZ0plSzg0blRMamJDdkNRNUFBTEFr?=
 =?utf-8?B?Q1diM0kzSjJOS1U5STVmVlhoc3MxdUcyRUZBZktkTTZXelhZQWs5c0tOelFp?=
 =?utf-8?B?WFhCKzN1MUpNVDd3cmJSOGs1OVBGYWRGd1V5LzJabmlHQkRaeUhUWHJqTnEy?=
 =?utf-8?B?VHFTN0FhdktWcXdOTHRrUy9Qc2ZId3ZMUEtLYmFFS1lMS0ROVTZlbEtEZWd5?=
 =?utf-8?B?ZEJIM3lTZVN4SkZpTnErU3dVeE1WQWtvK21OK2VZL2NKOVlmL0lQaWhzaVoz?=
 =?utf-8?B?UmFndkVqdEQ1UDc1OEdWbGlMS0kzK1l3SERKZmNzQXFrSmxJUC9KaWY4M0xD?=
 =?utf-8?B?cUdQU2Z1Z2gyWHJ6WFM4bUE2MlhZREZwNVdNaENLMFBuTFZjdXEvajdpamZV?=
 =?utf-8?B?ekxvL0tKNEhybWpPMVZmUitaWDVtTjJRU1VDY1FKTTZwK3hXYlV6Q3VEMUQr?=
 =?utf-8?B?TUVBSXhUS0tCVE9TRmw4YXNrb1dDeE1NOURERDRGZVZVR0ZQU0xUOWVVV0pj?=
 =?utf-8?B?eXc3MTNBb3VjR05jOEw2RkxFQ2c5TEJQOFhGdU8yclZEVU1Da29NNU11V0ZR?=
 =?utf-8?B?NThQN2hXN1Rxb0hYb241dkZKaFRreXFyeHJqM3RDbEo2a25vQ3MvQVBMWGor?=
 =?utf-8?B?Rm1Oa0xaV2tjVWdwQjRMSDhvcUltbDlzYzg3RElJakNKYjJXaVZkc05CL1k1?=
 =?utf-8?B?WmROTENjKy9VTlJwdCt2YUZBZURxWlY2NGtIaFVLNnFwblRsYnA2STBJMGlU?=
 =?utf-8?B?eXJnb09FbW5NTFJkcERLRVFGSWlFRFEzVUhLM3hqV09td25wdUwvVU9sRzZ2?=
 =?utf-8?B?ZFU0UU00RUQwcVY2NlVSMUsxTmpqZXFINVpPMjRwdTFpMXkwMDE4ajRBZ05z?=
 =?utf-8?B?TGpuMWdzKy9yMmxnQ0x2d1ZkYi9zUnlxSWdKZE1Da0ZCd0lpRkZZUE9xd1k5?=
 =?utf-8?B?QWp0Q2ZxYzNlUkZVbTdwaUxKKzYxMlg3Uk10RDBCa2VwRjRMb3lRdXVNemk2?=
 =?utf-8?B?VXErUU9HQm5GYmF3M1ozSmJyOEEvQ3JHbFlGSERaUTVva3RId2J0QjVlK0ZV?=
 =?utf-8?B?VGJEOG45U1JITnlEWUwvZ3BKeGd2TkJkOVNQMlhJZkI4bGNGTENsdGs5MGZz?=
 =?utf-8?B?bFliWDErT3JBWkNXd1J6RnFLTGdjaGVIejE0OHk4SGlGWkJTdm1yZWVwTTJw?=
 =?utf-8?B?VjdTRDluejJHMGVEV080RjNhTXdXNEZpK0IvSVdQZmg0b3dIZzdVVmFNblUw?=
 =?utf-8?B?akZ5d1J1VDN2bXN2L3drSE1NeFlWSUdoS1ZKNFpITHJmZGtUb1VJUk5peXox?=
 =?utf-8?B?blF4eVhWNnpPY3RKWHZIc1ZNWDJQN01LQlhhVDVES1BqeFo1MDRmZHBPM1Zw?=
 =?utf-8?B?eWVBM1U3aXViVVozQjlFWXgzUmZpQWhZMDdQMTVUb2s2QkJjbTF1RVU1bENI?=
 =?utf-8?B?dU0zU0tEZGpCdG1DaFhhUnBIYU1yMklCWUQxSFhYMXJCYWN4MlU5Y3Jub3Ux?=
 =?utf-8?B?REJyd29FenV2RmJRdHI1VFc4Y1E3R2lDck5mU3A0bXAySVV2WXhxckI2QzVQ?=
 =?utf-8?B?WitrbG9ZY2ZQakdHNldrcmlWOGpoYUlRZGorcHZKaTBWU1g1RmI5Z2c3bDEr?=
 =?utf-8?B?b0dlM0NPbjdzSVRJRFJ4cVpFcU0wWUJlekZBYW1jK0JMRkNvenR5NWVFWXpU?=
 =?utf-8?B?aXJQWU53S1lWRDFJL0pVNWtSanpSRnl1ZjNDS2Z2bk1PUE1jVTI0Q21qc2xU?=
 =?utf-8?Q?PhkA/E4OJv6w0CO0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9bbb80-ba76-4266-17b0-08de69444db6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2026 08:05:21.5430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +H3FHli6aInn+z6zCvkVuhNd3XplUiLHip6HNwYX2K9+RXvSPwBi8OscMGHdMOKYu5wzXcJxumjrjXxLAYPnWj7Wpr0FK3e+ipCUj+6lPfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6833
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770797127; x=1802333127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5eRJmfeYBRSwrnIJAEYU2I1oc4Alz7Jhmb8ZOStDa30=;
 b=LVvGvQkdL+drHlKa9taIsQA1GfZKOP6+6bpZK97HUzEDUV3QRDXKCOQ4
 +RnTROYiT57k5jwgiFzIpAPqBB/1IBLXWndIf3jq7rB/l91GAF/UiOOMK
 RAVZwvPX4xiKxtQI7R5rrfwIRxO8HqGR9Nmf2ag5Oodj+neJoFrGiz5MZ
 zbUFqg6vRHKBZBzkDYqmIVgIeC4gVz8BmpYoJhdlGJMg+bvC3QJG+KjDR
 N3DxLFVGFaJxt2CrVa4ov20hjFf8k3axTjksqLRemqEYCNY+6+fflsU8E
 3oFQmxo8oZDOMiEEBAXQBUXb1AkC6LeuEas3Ywpga0IrLKYyqJ8BdP0q7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LVvGvQkd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/5] selftests/bpf: Add
 selftest support for bpf_xdp_metadata_rx_checksum
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: E636912207A
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTG9y
ZW56byBCaWFuY29uaQ0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAxMCwgMjAyNiA2OjIyIFBN
DQo+IFRvOiBEb25hbGQgSHVudGVyIDxkb25hbGQuaHVudGVyQGdtYWlsLmNvbT47IEpha3ViIEtp
Y2luc2tpDQo+IDxrdWJhQGtlcm5lbC5vcmc+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBQYW9sbyBB
YmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4NCj4gPGhvcm1zQGtlcm5lbC5v
cmc+OyBBbGV4ZWkgU3Rhcm92b2l0b3YgPGFzdEBrZXJuZWwub3JnPjsgRGFuaWVsDQo+IEJvcmtt
YW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD47IEplc3BlciBEYW5nYWFyZCBCcm91ZXINCj4gPGhh
d2tAa2VybmVsLm9yZz47IEpvaG4gRmFzdGFiZW5kIDxqb2huLmZhc3RhYmVuZEBnbWFpbC5jb20+
Ow0KPiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBmb21pY2hldi5tZT47IEFuZHJldyBMdW5uDQo+
IDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5s
Lm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3Lmtp
dHN6ZWxAaW50ZWwuY29tPjsgTG9iYWtpbiwgQWxla3NhbmRlcg0KPiA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IEFuZHJpaSBOYWtyeWlrbyA8YW5kcmlpQGtlcm5lbC5vcmc+Ow0KPiBN
YXJ0aW4gS2FGYWkgTGF1IDxtYXJ0aW4ubGF1QGxpbnV4LmRldj47IEVkdWFyZCBaaW5nZXJtYW4N
Cj4gPGVkZHl6ODdAZ21haWwuY29tPjsgU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz47IFlvbmdo
b25nIFNvbmcNCj4gPHlvbmdob25nLnNvbmdAbGludXguZGV2PjsgS1AgU2luZ2ggPGtwc2luZ2hA
a2VybmVsLm9yZz47IEhhbyBMdW8NCj4gPGhhb2x1b0Bnb29nbGUuY29tPjsgSmlyaSBPbHNhIDxq
b2xzYUBrZXJuZWwub3JnPjsgU2h1YWggS2hhbg0KPiA8c2h1YWhAa2VybmVsLm9yZz47IEZpamFs
a293c2tpLCBNYWNpZWogPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+DQo+IENjOiBKYWt1
YiBTaXRuaWNraSA8amFrdWJAY2xvdWRmbGFyZS5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
Ow0KPiBicGZAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbGludXgtDQo+IGtzZWxmdGVzdEB2Z2VyLmtlcm5lbC5vcmc7IExvcmVuem8gQmlhbmNvbmkg
PGxvcmVuem9Aa2VybmVsLm9yZz4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENI
IGJwZi1uZXh0IDQvNV0gc2VsZnRlc3RzL2JwZjogQWRkDQo+IHNlbGZ0ZXN0IHN1cHBvcnQgZm9y
IGJwZl94ZHBfbWV0YWRhdGFfcnhfY2hlY2tzdW0NCj4gDQo+IEludHJvZHVjZSBzdXBwb3J0IHRv
IHhkcF9tZXRhZGF0YSBzZWxmdGVzdCBmb3INCj4gYnBmX3hkcF9tZXRhZGF0YV9yeF9jaGVja3N1
bSBrZnVuYy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IExvcmVuem8gQmlhbmNvbmkgPGxvcmVuem9A
a2VybmVsLm9yZz4NCj4gLS0tDQo+ICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190
ZXN0cy94ZHBfbWV0YWRhdGEuYyB8IDcgKysrKysrKw0KPiAgdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YS5jICAgICAgfCAxICsNCj4gIHRvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaCAgICAgICAgICAgIHwgOSArKysrKysrKysNCj4g
IDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL3hkcF9tZXRhZGF0YS5jDQo+IGIv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMveGRwX21ldGFkYXRhLmMNCj4g
aW5kZXgNCj4gMTlmOTJhZmZjMmRhYTIzZmRkODY5NTU0ZTdhMDQ3NWI4NjM1MGE0Zi4uNzA3Yzk4
ZTY2NDc0NTc2M2IwMWI2MzhhNTM3YQ0KPiA3OTcyMTFkZWQ0ZTEgMTAwNjQ0DQo+IC0tLSBhL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL3hkcF9tZXRhZGF0YS5jDQo+ICsr
KyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL3hkcF9tZXRhZGF0YS5j
DQo+IEBAIC0yNTgsNiArMjU4LDcgQEAgc3RhdGljIHZvaWQgcmVmaWxsX3J4KHN0cnVjdCB4c2sg
KnhzaywgX191NjQgYWRkcikNCj4gDQo+ICBzdGF0aWMgaW50IHZlcmlmeV94c2tfbWV0YWRhdGEo
c3RydWN0IHhzayAqeHNrLCBib29sDQo+IHNlbnRfZnJvbV9hZl94ZHApICB7DQo+ICsJX191OCBp
cF9zdW1tZWQgPSBzZW50X2Zyb21fYWZfeGRwID8gWERQX0NIRUNLU1VNX05PTkUgOg0KPiArWERQ
X0NIRUNLU1VNX1BBUlRJQUw7DQo+ICAJY29uc3Qgc3RydWN0IHhkcF9kZXNjICpyeF9kZXNjOw0K
PiAgCXN0cnVjdCBwb2xsZmQgZmRzID0ge307DQo+ICAJc3RydWN0IHhkcF9tZXRhICptZXRhOw0K
PiBAQCAtMzEwLDYgKzMxMSwxMiBAQCBzdGF0aWMgaW50IHZlcmlmeV94c2tfbWV0YWRhdGEoc3Ry
dWN0IHhzayAqeHNrLA0KPiBib29sIHNlbnRfZnJvbV9hZl94ZHApDQo+ICAJaWYgKCFBU1NFUlRf
TkVRKG1ldGEtPnJ4X2hhc2gsIDAsICJyeF9oYXNoIikpDQo+ICAJCXJldHVybiAtMTsNCj4gDQo+
ICsJaWYgKCFBU1NFUlRfRVEobWV0YS0+aXBfc3VtbWVkLCBpcF9zdW1tZWQsICJyeF9pcF9zdW1t
ZWQiKSkNCj4gKwkJcmV0dXJuIC0xOw0KPiArDQo+ICsJaWYgKCFBU1NFUlRfRVEobWV0YS0+Y2tz
dW1fbWV0YSwgMCwgInJ4X2Nrc3VtX21ldGEiKSkNCj4gKwkJcmV0dXJuIC0xOw0KPiArDQo+ICAJ
aWYgKCFzZW50X2Zyb21fYWZfeGRwKSB7DQo+ICAJCWlmICghQVNTRVJUX05FUShtZXRhLT5yeF9o
YXNoX3R5cGUgJiBYRFBfUlNTX1RZUEVfTDQsIDAsDQo+ICJyeF9oYXNoX3R5cGUiKSkNCj4gIAkJ
CXJldHVybiAtMTsNCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9w
cm9ncy94ZHBfbWV0YWRhdGEuYw0KPiBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9n
cy94ZHBfbWV0YWRhdGEuYw0KPiBpbmRleA0KPiAwOWJiOGEwMzhkNTI4Y2YyNmM1YjMxNGNjOTI3
OTE1YWMyNzk2YmYwLi5lZjZhNTU4NGExODc2YTNjNDc0NDBmMjFkY2E5DQo+IDI3ZWM3ODM0Njlk
YyAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9t
ZXRhZGF0YS5jDQo+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBf
bWV0YWRhdGEuYw0KPiBAQCAtOTgsNiArOTgsNyBAQCBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4
KQ0KPiAgCWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoLCAmbWV0
YS0NCj4gPnJ4X2hhc2hfdHlwZSk7DQo+ICAJYnBmX3hkcF9tZXRhZGF0YV9yeF92bGFuX3RhZyhj
dHgsICZtZXRhLT5yeF92bGFuX3Byb3RvLA0KPiAgCQkJCSAgICAgJm1ldGEtPnJ4X3ZsYW5fdGNp
KTsNCj4gKwlicGZfeGRwX21ldGFkYXRhX3J4X2NoZWNrc3VtKGN0eCwgJm1ldGEtPmlwX3N1bW1l
ZCwNCj4gKyZtZXRhLT5ja3N1bV9tZXRhKTsNCj4gDQo+ICAJcmV0dXJuIGJwZl9yZWRpcmVjdF9t
YXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOw0KPiB9IGRpZmYgLS1naXQg
YS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX21ldGFkYXRhLmgNCj4gYi90b29scy90
ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX21ldGFkYXRhLmgNCj4gaW5kZXgNCj4gODczMThhZDEx
MTdhMWQ2NzdhZjEyMWYxMTc3ODE3ODUzMmUyYTU2Mi4uYTE2ZjcxNDg4YTM0ZTZkZjIzZmVjNmRk
N2RkZQ0KPiA3Yjc5ODk3NzQ2MTggMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi94ZHBfbWV0YWRhdGEuaA0KPiArKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9i
cGYveGRwX21ldGFkYXRhLmgNCj4gQEAgLTMwLDYgKzMwLDExIEBAIGVudW0geGRwX21ldGFfZmll
bGQgew0KPiAgCVhEUF9NRVRBX0ZJRUxEX1ZMQU5fVEFHCT0gQklUKDIpLA0KPiAgfTsNCj4gDQo+
ICsjZGVmaW5lIFhEUF9DSEVDS1NVTV9OT05FCQkwDQo+ICsjZGVmaW5lIFhEUF9DSEVDS1NVTV9V
Tk5FQ0VTU0FSWQkxDQo+ICsjZGVmaW5lIFhEUF9DSEVDS1NVTV9DT01QTEVURQkJMg0KPiArI2Rl
ZmluZSBYRFBfQ0hFQ0tTVU1fUEFSVElBTAkJMw0KPiArDQo+ICBzdHJ1Y3QgeGRwX21ldGEgew0K
PiAgCXVuaW9uIHsNCj4gIAkJX191NjQgcnhfdGltZXN0YW1wOw0KPiBAQCAtNDgsNSArNTMsOSBA
QCBzdHJ1Y3QgeGRwX21ldGEgew0KPiAgCQl9Ow0KPiAgCQlfX3MzMiByeF92bGFuX3RhZ19lcnI7
DQo+ICAJfTsNCj4gKwlzdHJ1Y3Qgew0KPiArCQlfX3U4IGlwX3N1bW1lZDsNCj4gKwkJX191MzIg
Y2tzdW1fbWV0YTsNCj4gKwl9Ow0KPiAgCWVudW0geGRwX21ldGFfZmllbGQgaGludF92YWxpZDsN
Cj4gIH07DQo+IA0KPiAtLQ0KPiAyLjUzLjANCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0
aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KDQo=
