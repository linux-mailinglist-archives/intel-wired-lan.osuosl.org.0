Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E989C57AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 13:26:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 194C480D69;
	Tue, 12 Nov 2024 12:26:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0gcX2y1AnQ9J; Tue, 12 Nov 2024 12:26:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BBBF80D76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731414388;
	bh=aJpcTHbIQ2PtkgiaNhHv8Iapgvp1GsJ2Oep59VnMAMo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d7CwH/LdINfJdmolhEJp/5pbNAH0fieYgTyjguzVe8TC6Iq4aLqHWNPMiVL/AfZcp
	 FDWMv69uq4JivMisYWc0cVzI5V9EVcygH+SUfYJiD0epHBvqP+XLeug2L0VzLxpYD1
	 ruTVnxFkfDQ2/VHodtuvWAEQgcYlW9ruaGW2i/mEf1c5iqJFe+CDeERtTDZP9GsbXg
	 0SUJYOC71+LTzRrTZPl6TSagrgp0a2UBo1CIyYLu0mZyc3NlcZgpftQlT5no3qeVLx
	 vZd9wvIipCIYFlWDPFAWOl3rQYD9KJ3RUFlbdWa4ThKbYuIeC1H5AiOw9TOuh6XqbX
	 BhExf1i17U+4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BBBF80D76;
	Tue, 12 Nov 2024 12:26:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 58B8F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 12:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4441A40620
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 12:26:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VTkzbi_NtqqN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 12:26:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED09E404C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED09E404C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED09E404C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 12:26:24 +0000 (UTC)
X-CSE-ConnectionGUID: veuVLXPPTPe3sVkfNs6OFg==
X-CSE-MsgGUID: XzUiWum5SQaigrTdgi4L2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31340359"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="31340359"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 04:26:24 -0800
X-CSE-ConnectionGUID: MOz0Num5Qum9RnPY2tXTZA==
X-CSE-MsgGUID: KJwR7+prT7WevCjY3BtcDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="124942411"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 04:26:24 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 04:26:23 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 04:26:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 04:26:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qETVjYssxqB/k+cFZqyNALOFBQ1/o02f/3+93XbKpfZemjd6f550Cy/GPC7apqFIfPBdwfvKrHvpY+Db6cclplKjiiSjZOC5guoVvU+5dO6xTRQrhUTqYwt9djYKyWNiUbujhkjpZ/KTRuw9aVofpVobOlYZMvZCwGwELg6ap1iKznr0VQdRce/5wmZup6qY4LUQdgBLlovipNqPzBWWDOcIbe8jSVgSbx5HMfzXY2MKz6K3C6pzKthXUeA9SRZZz3pDgGSNVaM+LKkbLqvODnS0Snxhid5FeXCh4oXVfpGgqRIVu1gR6ilVobpCNLNJeCjtpps8mtai+V1T3vX98w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aJpcTHbIQ2PtkgiaNhHv8Iapgvp1GsJ2Oep59VnMAMo=;
 b=yTGxoBtJJIxYyr77bntLGwOIJHg53zpj5J6y4r0mHvkJutg7D6zndGZ0iJcVLyOzthpvivzTWYh2IcHF24rCQjd4Gt0mBJ9SQPNEbp9b+jNhMnT1rXmYTyLklHFk9VSIqRS5DHN8ZSt4Me+89+rVW0DS/BaQ8/hWAV2lFRuhirKqYmFYzEj5+WB2P6c43k6nW8TDyHri715PDX7UUwsSVDgvUsEwzy5itCFrkEq9rFj619cpwvLXai9wgQN/xdi4AnBUgDLqbpLGkOz9C185PGsohUxH5QhT+HCoijtX9QyIAPjJDb445rkIbmsFfqgwMd2UQ0PcnE7oOHsToRQveA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Tue, 12 Nov
 2024 12:26:19 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%6]) with mapi id 15.20.8137.027; Tue, 12 Nov 2024
 12:26:19 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: Yue Haibing <yuehaibing@huawei.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "ast@kernel.org"
 <ast@kernel.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "hawk@kernel.org" <hawk@kernel.org>, "john.fastabend@gmail.com"
 <john.fastabend@gmail.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "vedang.patel@intel.com"
 <vedang.patel@intel.com>, "Joseph, Jithu" <jithu.joseph@intel.com>,
 "andre.guedes@intel.com" <andre.guedes@intel.com>, "horms@kernel.org"
 <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "sven.auhagen@voleatech.de" <sven.auhagen@voleatech.de>,
 "alexander.h.duyck@intel.com" <alexander.h.duyck@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>, "Pandey, Atul"
 <atul.pandey@intel.com>, "Nagraj, Shravan" <shravan.nagraj@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net-next 2/4] igb: Fix passing 0 to
 ERR_PTR in igb_run_xdp()
Thread-Index: AQHbJ1tJrCg529PfR0uilfL8kEaF2LKzrTJQ
Date: Tue, 12 Nov 2024 12:26:19 +0000
Message-ID: <CH3PR11MB8313753319728FD3B9246CC8EA592@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
 <20241026041249.1267664-3-yuehaibing@huawei.com>
In-Reply-To: <20241026041249.1267664-3-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|SJ0PR11MB5866:EE_
x-ms-office365-filtering-correlation-id: b8364324-a859-4d3f-c486-08dd03153647
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WMo7bFBAM6C1W0m3Dacr6n93et+al/GSFn0pffaygk4Q7AE3xXSMSjWc7/Hl?=
 =?us-ascii?Q?HJ7oFF1aci+D4Iwiem6pI8B/iMcaAE2nf5WhQIs+bcxK8MbjPmLvtCo6P0qm?=
 =?us-ascii?Q?gkkmyEIdU0wICUjlH2YtgZI2S70hsZSlEtVlonJV4TU9j8PZih9RJN9E2I/u?=
 =?us-ascii?Q?qZIHo0XCMBoGu58w6egXCgU4EggyV7EiI9U2zFxKjokyKEMNvVfKEnE3zWNi?=
 =?us-ascii?Q?xqqQllkMHR1ZJFasLYBq5rhIbqMAivGAxV6JlIUZmp3ZXxcbHhMZhfcR/xev?=
 =?us-ascii?Q?CnaoSG4qIypsbb4rdFY0JbIJDINAKVqjkk7FUWEf3t4xw2DO22HtsHjchRgE?=
 =?us-ascii?Q?EwRTw5lhH6sKvW6AKzn5gy/Z0kKeH3CHF9r9KaFW+x7KHJL6KyG/uoDODC/+?=
 =?us-ascii?Q?R/G1mTQACo1t6pPvlBlT9v1nKOAtUlUNDKRuHfR45kzgMh35cF0aakpafYTG?=
 =?us-ascii?Q?go0MpjncYM+2D9emDb6oSQIj7vOWchRn8EfGgQ1IQTC9jyXnsVBC6KGmdThp?=
 =?us-ascii?Q?lbtxrnFcd0bTdHWbu+hROmXsqO0YKI6rbhnv8TTSDIKK6VdtjTUXKD5lYXgL?=
 =?us-ascii?Q?iPJzMbjH+2DasbACww+1GPQPSE03iSysnb49waZAtvgOZGsZ7BbSDErtPpJV?=
 =?us-ascii?Q?Pb2uOj5zAxSMqxcyKLDGMOa/MchGav6ZJWynU282AiqpJpEfgP5WgeQDDKe3?=
 =?us-ascii?Q?s9TqYz+W9eR1srf0z08RwlubXJJ++cNaR/6DNXzztCphVRgwEfvSbhHb2oTX?=
 =?us-ascii?Q?2JNmrNfyHKbWhs9ddX79BzCpv9eO5OII0pmzEyGCFHk07y4VUNKsvlJD3RlS?=
 =?us-ascii?Q?fHG6G8L+hFsX5mbmU7CIUnlYjjeb0oO2j3QAWGRDUgbtjunGWXW4HnEoe/uU?=
 =?us-ascii?Q?w3VHGJMAbXHoitgUIr+vkhA/eHzbGWQeAm3ygsd+KJeeHabiH7+uHHfgb1rI?=
 =?us-ascii?Q?W4u2nv4uu1NXVsQZdzZpOwcP03tJSO6yeCB25IWrxD59Ftp0pfBbWMTE2vWw?=
 =?us-ascii?Q?q2V33C5aZXkXgYQIhSL9XGf3fSgROsix599VZhhhd6GcO4qB8KuxDa1qoZ3w?=
 =?us-ascii?Q?h9Q9WxFqyvsGT8bnOrJ4ZYCWnmQAJdHnjlVBBrpVbmIVkOyNuzLoUn0Net06?=
 =?us-ascii?Q?QqxZ6hYBMDJ3XVFCpGk+7wu+djxJbarPL9Ys+YNZViPXXjPJco51IPV0iQ3B?=
 =?us-ascii?Q?p7B+IT2FeaYPL4oH5q/qB9Y93gMJkEc8E3v1LIgBoLVz82n764TVpDm95XI1?=
 =?us-ascii?Q?CLbMPhRq0Griu2hFHxOnMzM85/FC7tIIFMhPdNAfncSfnTnRUq3sObE44DUt?=
 =?us-ascii?Q?9nRkZpHkTgbMmax0+VYNTKmUwGbgpX+NSnQGeQAmVRL6aq45Tqnj7xI0nFvq?=
 =?us-ascii?Q?sC9WCrcjzWVVj5Z19wQKG/6QYual?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RylSiWAOscoIXEZLoxIHTRy0zUgd0sKl6cGsva7AbQKoSS3rTQ5BhTCNx3sz?=
 =?us-ascii?Q?u3VmLZ3KtzYu/ejKL4dCo/gjsgTXmd3i3tSzRdbvMJ4AIsKHZ6J6JtidPfBM?=
 =?us-ascii?Q?rtXlaUhbFES2xJOw6XNd8c591shRoZahulJCP5Kpo9uNRay+XcnZZoCF8DB1?=
 =?us-ascii?Q?OyfUA65swtT5djEm0eQW8bi0AUrGm1IrLh7uQj18pQ2H6LACQRl9RAmMz0PO?=
 =?us-ascii?Q?xjUs2E+yD08Sfp22mB3jK9c5wtBP8kvLXFkjuvp1krvbF7MRpTxevsKzbwvW?=
 =?us-ascii?Q?nkrJh6gviZkvAxPh7QtsG2J9TrvxaX+jAaAQefoGzrizDZPPLBO04gbMXTro?=
 =?us-ascii?Q?t4vqz6U7K73uSPqB4VUXWDUim8p/hlJO0rVJZa8a2Us3BxUP4vJrG0VJLzPU?=
 =?us-ascii?Q?JdCKuMN96y1ujhpSLOlRSGZvp4+LyhiDp1wNj9/JsQZyWaRHumHti0d5D5B0?=
 =?us-ascii?Q?YfNb8P7mx8HRqUx4qhtjAT/qhZ80NNyO8LCoPiL2TJdl1KAmWJCyaUfztzoN?=
 =?us-ascii?Q?GKRhht+r7CUhKbC2eDNhswjA3DUwYcJ+sdgtOtCkGMrc1/lHWgNGeFgJXSmu?=
 =?us-ascii?Q?N8hAWOTSzMD7O+WawDEVRQ+uf3d8UJ9N8C22EW4XApPlzhgxTZbmfU/sdyuO?=
 =?us-ascii?Q?mGmm156mhTI+1261ZcXwwGGOYmhv+hTEqybJ+OnHeS8VTwOMWmSU1QpLABNP?=
 =?us-ascii?Q?IpBaEhEpO7gwRPKl1t4GK0/1770+aLoOClgL9r5t24GtN5zJcqelz1BhIclN?=
 =?us-ascii?Q?vh4NlAuvDWWr5C0aH1SrXlZ0LxrPN9OoJEV5FNodjCkiXAqaSV68pvDVOjQB?=
 =?us-ascii?Q?tjotMZxBjpMtcL3YVEF2Te9nIoxGoYQQbnuMySI28Ieoz9+HZKQbFdtnhvwY?=
 =?us-ascii?Q?QlcgDsDvCyJkaqyWDfRrSB0cgn7zW1tErGBpOSIfHZM+E/itSVnvxKbQPRlT?=
 =?us-ascii?Q?2HqDofIcfD4t1B8uHlQe8wwqlZyzkOR5fI0jWOduAeI6jKjCxrubfZoGEg2W?=
 =?us-ascii?Q?ncuT4ovORYrF3pbDm92YPR2MZt6sWI+obTrVCRBhPXwI6NxMRoDHnrePtr2/?=
 =?us-ascii?Q?SNl0ljLZv7SzAiOYlOr7+OMhfKO84BEMsVQUIfL8ywt8l7ssLb2i6E1nuSwX?=
 =?us-ascii?Q?ceyWUM/0xB7G7/mrSGNVJFWBFBInPJBE8AH6s2p37PZJDpBlMsGVM0rCVrZS?=
 =?us-ascii?Q?cpY67Z48pHWmMD6mrbGWBYLGd8IeFQONci+hjuxkQteQ55RkNStLzSz6oK6M?=
 =?us-ascii?Q?2Gpj3I8gDNRiOixJtiAbJC9BF3D5lbk6Hxr7rM+ihxOcINb6pdT8MZNyAA6D?=
 =?us-ascii?Q?hY398sCHkyK8OP0OE0paPeCxaY5/4/3eN4+ZV5DYYKTGzQJOdt6Ym1Dxe9zt?=
 =?us-ascii?Q?Nm+QqsASe6E4Ra4sXuEYG4QTa9UJb/JTzEmov8xpKp9XSEBYhVbtABnaU9lD?=
 =?us-ascii?Q?ijnKE8plRPW7szDuDtHfwKjsA4v4XGJgDL72I9ji0NFFQJ3lMQNy22auIpdc?=
 =?us-ascii?Q?MFXt4vUF3P+Cw6hpEhHN4qd9WdI5DtsCxVx1hSImszwEPocG7orGXf1bK1QB?=
 =?us-ascii?Q?N9d62gKvdq4Q9yIiBqtZM5/qLIZKcU2luF+qKcIw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8364324-a859-4d3f-c486-08dd03153647
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2024 12:26:19.6069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BLn7FDkE00XgjeexIxumNrImiY7gpgWJkWXgl4kk9/q8AnWvVyiVsAIzGT3sDI4YUZODdP8dWRMfC2DJeW+AnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731414385; x=1762950385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aJpcTHbIQ2PtkgiaNhHv8Iapgvp1GsJ2Oep59VnMAMo=;
 b=euTJIPsa9RJTkfR5my5AInGr+hXUXnve7TJD2cdbrR4T6koAVU1/xLI0
 pGNUwAxtRjztkwuV50ZIM4ikR8ktVK4ixRJl0p+2YnjiTiclXlfch1qbM
 c/MBhUvuAdlQSnjDh/qJxVvgeahyzeTckWhBJGi9wJEJjTd4+wdLlcakY
 v/71zjoHvSgiMxwpO5hp3Gik82+kh4SaIoobeXY30iEi2lzzrru5pk9xx
 ZBuXg9QFs6BjKspRY6CyEmQKTIuJfh/QqEBukIdoyaqCwbLvxCdBdYr0r
 pgXuhJPOikq5E/mgVVpPOyfezdmUt6eOvZa7FhsROmF7ew8KnGM3KKnMf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=euTJIPsa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/4] igb: Fix passing 0 to
 ERR_PTR in igb_run_xdp()
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



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Yu=
e
>Haibing
>Sent: Saturday, October 26, 2024 9:43 AM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
><przemyslaw.kitszel@intel.com>; davem@davemloft.net;
>edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
>ast@kernel.org; daniel@iogearbox.net; hawk@kernel.org;
>john.fastabend@gmail.com; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; vedang.patel@intel.com; Joseph, Jithu
><jithu.joseph@intel.com>; andre.guedes@intel.com; horms@kernel.org; Keller=
,
>Jacob E <jacob.e.keller@intel.com>; sven.auhagen@voleatech.de;
>alexander.h.duyck@intel.com
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>kernel@vger.kernel.org; bpf@vger.kernel.org; yuehaibing@huawei.com
>Subject: [Intel-wired-lan] [PATCH v4 net-next 2/4] igb: Fix passing 0 to E=
RR_PTR
>in igb_run_xdp()
>
>igb_run_xdp() converts customed xdp action to a negative error code with t=
he
>sk_buff pointer type which be checked with IS_ERR in igb_clean_rx_irq().
>Remove this error pointer handing instead use plain int return value.
>
>Fixes: 9cbc948b5a20 ("igb: add XDP support")
>Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 22 ++++++++--------------
> 1 file changed, 8 insertions(+), 14 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

