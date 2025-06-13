Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B983AD84CE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 09:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5586560A8F;
	Fri, 13 Jun 2025 07:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HnzGTbzauIdZ; Fri, 13 Jun 2025 07:49:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B90E060A77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749800973;
	bh=w+E+esp8nq/skjmytXOW+vGM092sj2pVIZo5LJEkCQU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vdmUU+rsS18INmoVfXN8mmjzJik/jQfpvjFxWPUmmUAlIaCOYzl1pEEgT1Q88lzR8
	 +2ZSTuIM6g4dxKJJdB/NjlN/Qk3Nx/Cpd9h5rUF7TalPAN5EVElXz+GGDC0tRvvkVq
	 pEul8ZdWMUJN0Tas6AmpZFnQB4/+r/FOJW2ui2dFOjnN0dewyKjieInmelVqeQ7iCq
	 /nK3C8KXQSQJQLnBkMcTiG1RwQxRu4EFb17Sq2iVAttMmOGTpgxOoazqF7bRqxm7uD
	 GL48aOZp4/z3LJ36UC4k+OJpx5qma6Cy+34HbLFXUpVA+y7rVUd8IQJPC8CxLrhxKy
	 FgxiXxhXZhhZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B90E060A77;
	Fri, 13 Jun 2025 07:49:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DFAF1BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B12A60A72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gRZ3Tj6ir777 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 07:49:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DDE0D60A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDE0D60A6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDE0D60A6A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:31 +0000 (UTC)
X-CSE-ConnectionGUID: pQsqucTIRV6Gc+5sqTx25Q==
X-CSE-MsgGUID: FV+sP0GlQCmSdvAWYER0JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="69452461"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="69452461"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:49:31 -0700
X-CSE-ConnectionGUID: H38N2mDIT1mP7XxoourYFg==
X-CSE-MsgGUID: RjORiWEeS7aDdgFK/LiqEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="148646412"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:49:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:49:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 00:49:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.40) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:49:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QNq1IC7s4yUZBI2aFQAsF7KOeEHFCBwE3NDarluevBFb9WC5FxqGxs+Sc88yLeuLO5c/+09FyXe+Kn56kkwuAhYN9+02cqlhlyZuJ/1LVSyk0Y0QVSNvNSAkDR99gsnzP+ulzEAtBNTyzTpgXzJD9IkmH9TwOnWYtPELqo0iGEmdikpiwCUuBFb1becPaDQ+8p/h5pCGIhJlHLhdfKwd4R62hLOwcfXz503lRONE7qyeTpHttZNWh8MvpcP8c/aRgupvMWQOldrGIgui05MC5Jdg+/0QZCTk4q2Of5F5D3WH5qUdtpb0I8fKja89TNssvHSshOubkpZbnVycbeoCJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w+E+esp8nq/skjmytXOW+vGM092sj2pVIZo5LJEkCQU=;
 b=FXViFG2aV01VeLfJpFbZWlpNAC6aTuoks8ANbJuzUS5tgm8+Bvc+jg6ZwjYDKPptrbANjf8yQ2g6H+IEXiLZygjOAl+SYOiDGduh0GmDZEVVrWkJaSlTMVjztd4L67TgIeaCpJz0pLCKy0S2V0Ut+iVovs+hp+fXU0jXo29vuOZfmwGT5AAwFqK5+CeqzAw2zEEXiehdJGHtuRqCrn2MWl6Q6/prhKj4WXgGdPZF78PzGZq2yKRVOyOX9ewpwncw7xXa72a23WI6EptxmPzr7qGBNYP/HP6Xm6Qfzs5Vcjb4SRjmkEx+fNlNCR4bq/kbPjvzziCO6XN3qS7a/OqysQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF691668CDD.namprd11.prod.outlook.com (2603:10b6:f:fc02::2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 07:49:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 13 Jun 2025
 07:49:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/7] eth: igb: migrate to new
 RXFH callbacks
Thread-Index: AQHb2/7GP77QBeKdvU6e9rxOifw1eLQAt1wQ
Date: Fri, 13 Jun 2025 07:49:28 +0000
Message-ID: <IA3PR11MB8986B1D18E2ECC1F29162386E577A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-2-kuba@kernel.org>
In-Reply-To: <20250613010111.3548291-2-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF691668CDD:EE_
x-ms-office365-filtering-correlation-id: 81cffe4f-6c61-44d3-d3da-08ddaa4ed310
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zJ7uMVsoqJ04Df2n/LDiS9cDUdCNR4Dz6knBqcnBdfuZh/535p1QR8j/P7FF?=
 =?us-ascii?Q?ln0QI3rOHBj07yI6yzJpnNxbCB1OWT2iPI/j3IqHvwlrmzPW8zcO6bFxIeFT?=
 =?us-ascii?Q?ukuwJHWPrIlwuJzYmdQTdVRp4Y1uLCvPeVtdSe2UUYgcE7DRZGx7EDSKE6Pe?=
 =?us-ascii?Q?5+0Hb/zh0CCqfbJbMWiT2nWxjEaPlaYssIqz1b6o3pSovQ9N6mE1xyhgxwUz?=
 =?us-ascii?Q?AZfqwZDvTsbujzhOimR1AbBDrzjGCSWxhSbxhUTMa6UNtFEhO8pogppnct4A?=
 =?us-ascii?Q?89QVzjYDSBsT6OAwens4mhx7wGFjjt7X/fbS1FnJjCa3IfAt03A9wsZYvPQ/?=
 =?us-ascii?Q?/oXWUYz1nK28LlWcGnQeulDBHDpKrwzfD0vYslM30nKakspEbGNq3EMWs9wW?=
 =?us-ascii?Q?EElzTuwB3ERhJBNgxN1HDxxHcuB844+m57FgIMGwl8+FZUolKeqRkPwAWZcC?=
 =?us-ascii?Q?fCIsNrLWxaQhWMzjsKUTO3aveviYdu3VT1mHOCxRouUSsQr12EcUpgalFHW8?=
 =?us-ascii?Q?i6lONBUi/rjnpHnLEJ8L8c3UlhOxXytCnyORFAwuscOf27lC7f8yorFWCHr+?=
 =?us-ascii?Q?6Gh7mQX1/jwE3JJslyMxN7pQR3/BH46YOqWPYf/OcmPGheSrNPk3LpXO4AuH?=
 =?us-ascii?Q?OfiWU0tdZUSURHzwZG+S0nSFceLSRqjG3zMFLxgtZA6CzRY78bXKISTncERq?=
 =?us-ascii?Q?yOs+MNDsiTpEvJcSmIETKnHnHoouYFM5KvyDmyVa2E6OsGIYIBO9e+umK/Fy?=
 =?us-ascii?Q?fleVjfFDQasN4A2/fAyayNpZvsi+ybyaFsjLwcfL4FsECBmnMqd1PRFlWAqu?=
 =?us-ascii?Q?c5swUaywLmwnlOqVlDIUagOj0dGkuK/LmcuJlcganQSyrjQDOE+oA+Kp3gei?=
 =?us-ascii?Q?Oa5wIBOrhNu3zoeGUfyk7YDsSZLdriqWhx81H54YeOBi0jwkywK35NFFh64R?=
 =?us-ascii?Q?lK9IXErQYtXqHkcpH4YWK9V8c0LyTi8n5ftkrRKHVxirNJGUw5HoPBwYpjeO?=
 =?us-ascii?Q?Y5M654d4y5usHGBrZ/q8ZQCkWiuko2G8XnvixG2N3/ZXz4BOoT0gv1NCxQan?=
 =?us-ascii?Q?SktpN1nWz8z5AiWsgGntFEADabHRlspmDP4HP8HmJIKkDbW1OJNfmqLW/e53?=
 =?us-ascii?Q?+dkVSfylFQPCIYj6EPOIu705yjnXOiXaG3W4yWIS5gRwVOjfxGGfXReYatc4?=
 =?us-ascii?Q?Wj1WfHjeXWjscEbTCa3jycIuny9P59CSwf2F4GevNgAY8jPwLPrXOg3Ilu+U?=
 =?us-ascii?Q?bJlUIX9wCZyFZ8+NVIIYhzm6+6Xhba5euYxpQq3cOX1fm1HWrkR82VHHFhG2?=
 =?us-ascii?Q?NJvKICu9fIi4zQXbHTNBD3mvXPsskBYK2STuIn1zBuZbVE4dasbQjOweXrod?=
 =?us-ascii?Q?tmKXVdBBqpoRBudnZrUqTkxtT+5RhDdPoJO0thqfJvx+4kYNr3y4hlA7knG/?=
 =?us-ascii?Q?J6CijhEd/mM4iKkrKKTLowY22+8ki6/mb7J1T5hboClQn2NXUgM+wQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DsY8Vz9fKTLl7nuU0MrUrhs4H5blJ+KarCJXzOdKHVBXivhX0X5OrBPfaoFp?=
 =?us-ascii?Q?8Dt5N/uHUoFvB3ksWHDG2sx7K4+aqP03QOfV0BroHG4eakIT7clxVyMzyP5D?=
 =?us-ascii?Q?IxUoh4rsHIkje+yLFGeDZDFtYHj5nw8+7AjS1p18PREHxjpQvYbNhtfsOSyJ?=
 =?us-ascii?Q?7dIlqPP9Dggi27KlZOBWayIjDN209OOJRJm0JiiEl6fGFSwdJNmFSidsSek/?=
 =?us-ascii?Q?x/wl2Kd3fhqP+xw6B6wMxHvrcDD9zhg6XWEzqwQS9xuQhVrd5rK/2ge1jxpc?=
 =?us-ascii?Q?5HF7qi01GOYlJrrDo1QIgWt4kGK1AIZOPp0733Kvd/oS1pPOKoQzVyap/1gQ?=
 =?us-ascii?Q?Zqf03G1JxsyFbLcBeB+6+g7gwqm30LcvZKSgqoA7QgygDC9jo5O76iRHH5zp?=
 =?us-ascii?Q?z0HoTybN723EJY5GVHEY+99LY8+2w3sosD9vBqiXI6H08+Z+H0JzB6E7R9BT?=
 =?us-ascii?Q?NyfS+vMV7S/27C1Mo9KiJwP/QZjP0KklTnETZrn8QAVGwuio29CQCeLqKpyl?=
 =?us-ascii?Q?/CPiLFad7Hj9dOnuYIbxVTYFNUmtXOGaQGxr4cXHFGXf6m7z7yWmxH7tXsUc?=
 =?us-ascii?Q?vQ29jmHV+6ZelMafrgJUuGNsEkwCxO7thpMa/EWcn4kkDwbX8yyuNoIJxD8T?=
 =?us-ascii?Q?+GbPcQDd4sISwDTXb4MAbPs62n7Vh7QWGcItDrpKoHW8YaZFaLVpEjHrX6fd?=
 =?us-ascii?Q?1VAFSnOv2oRLY8GSXgpGT8IbbDhYTgR3ZF6RzykLLylZLZcskf9tygb2rTKu?=
 =?us-ascii?Q?xrthy2PYClhv0jywiRzAfQ3JHu69ppqThUIBh4mnQSnY2cx/Oq8qi82RJTaG?=
 =?us-ascii?Q?FrFdRydJw1CSjcAQSmyRqM8azHQ7hWsKTccNChoFb/t+ocxk7d+2qpz7c9J+?=
 =?us-ascii?Q?/5rVjC9BGcRPc3HNpxTsu9/0jBE+AjzdO7Zx8KNVdsOKeLgYxwfiWGGww7ce?=
 =?us-ascii?Q?TuyUm6kgYzauCZAoG19AV4Cmh9vYJ3XojWbKhdciSdkPmlAPMbcqEZH0P4Bt?=
 =?us-ascii?Q?N3DAE6/5EJUW1DQGVriilqvBh/NAqywrNRU14sOcRP3h+Z99yBbrwLVzXgRd?=
 =?us-ascii?Q?thxXrdC0KoIHkbtU3yE7QobMuG4eIDrwttfzwcuJlfAI8iVSrX1wapNnHGTf?=
 =?us-ascii?Q?sUCEGTp+IqLbdQRkW5W02ti845ZTxh+3NDmLhMoIsUMNYgKSZNaNiEOaQAl0?=
 =?us-ascii?Q?+4s0Y0wfh2nMpzQJEGkfLUO9DgyHrzGcsA36PqG/4K6KNNqNmPtv2TpXuF5O?=
 =?us-ascii?Q?r6IbEXpwmYOl2kRDY2gPEw1pYeAWnD6FaKPhSbp1b3CRHiyHjz1jDHZIIogQ?=
 =?us-ascii?Q?nN13HaAn4xFzl7t6QzKD7LU1+aTBZpfKpNCQrZTMpBL4KTl1Sn3M8ywCLm0u?=
 =?us-ascii?Q?pYN//4KtCRnc3R6l/cXZGOM1z4NBjKEex+MRmPjPPRCpYFanFuib8HXdvJZo?=
 =?us-ascii?Q?dtD+4WAuOCCr0k/wlHxDFMaIFW1QwvvIamfDlgHoFRS0sxiVXq5MjkMakXps?=
 =?us-ascii?Q?eT0XW2B6292Qr8HF1SjQAyMEo804sTNt5kBA9UsOL185ZtNloat6qstb+E1/?=
 =?us-ascii?Q?NjRYqsxiUN0+ybMEt2BpnG0H20UT0Tt4UAAp0DnShm9VNkFSzH321U45OhC7?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81cffe4f-6c61-44d3-d3da-08ddaa4ed310
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 07:49:28.1496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kHjyaRX17HyjslRAe3D3FbbkvWS88QS/lizAMKu2bRux28vugpuny1PztNi/VFu+EZUdT+oM2HnOVkispSaFXLR66bGTCX7uwd5hjYCOCLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF691668CDD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749800972; x=1781336972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cHF9V5Rvztytl15vQQcFFAGNyWZZxyPf+tJr/wcaM7s=;
 b=cXv4EM+ncQrrAQTaE547GyE/M2lrItm1pescgdgdAfLNmUKIfkZqUnzQ
 DKCp4pw07UN0u+2h0nypsMQFFKa2rtV6IkiP10pwCTSHO2Xf6Vd5YQabi
 HXYB9+S6sSgl/OGBtRuAgXFpMpeLcMSCh66ObEZvmKsQlyuIJ8iJ3uGKD
 WU4l158uuoGKpKJmb2TfxurLkPeWyH9Hr5WQQhTdrzI7fwSKvq0vO/v60
 Wq3cuofn8y5pr7Shz3va0tgzC1uz23+xJFgckEsRFrpHNq8hnZQ5m6PRM
 NHdfED1SAeETHjc/M39uiEQyMPHAo5V2/7NfVfVPKcRhGT+NsYp+iIytz
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cXv4EM+n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/7] eth: igb: migrate to new
 RXFH callbacks
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jakub Kicinski
> Sent: Friday, June 13, 2025 3:01 AM
> To: davem@davemloft.net
> Cc: netdev@vger.kernel.org; edumazet@google.com; pabeni@redhat.com;
> andrew+netdev@lunn.ch; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; michal.swiatkowski@linux.intel.com; Jakub
> Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net-next 1/7] eth: igb: migrate to
> new RXFH callbacks
>=20
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
>=20
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 20 ++++++++++---------
> -
>  1 file changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index ca6ccbc13954..92ef33459aec 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -2500,9 +2500,11 @@ static int igb_get_ethtool_nfc_all(struct
> igb_adapter *adapter,
>  	return 0;
>  }
>=20
> -static int igb_get_rss_hash_opts(struct igb_adapter *adapter,
> -				 struct ethtool_rxnfc *cmd)
> +static int igb_get_rxfh_fields(struct net_device *dev,
> +			       struct ethtool_rxfh_fields *cmd)
>  {
> +	struct igb_adapter *adapter =3D netdev_priv(dev);
> +
>  	cmd->data =3D 0;
>=20
>  	/* Report default options for RSS on igb */ @@ -2563,9 +2565,6
> @@ static int igb_get_rxnfc(struct net_device *dev, struct
> ethtool_rxnfc *cmd,
>  	case ETHTOOL_GRXCLSRLALL:
>  		ret =3D igb_get_ethtool_nfc_all(adapter, cmd, rule_locs);
>  		break;
> -	case ETHTOOL_GRXFH:
> -		ret =3D igb_get_rss_hash_opts(adapter, cmd);
> -		break;
>  	default:
>  		break;
>  	}
> @@ -2575,9 +2574,11 @@ static int igb_get_rxnfc(struct net_device
> *dev, struct ethtool_rxnfc *cmd,
>=20
>  #define UDP_RSS_FLAGS (IGB_FLAG_RSS_FIELD_IPV4_UDP | \
>  		       IGB_FLAG_RSS_FIELD_IPV6_UDP)
> -static int igb_set_rss_hash_opt(struct igb_adapter *adapter,
> -				struct ethtool_rxnfc *nfc)
> +static int igb_set_rxfh_fields(struct net_device *dev,
> +			       const struct ethtool_rxfh_fields *nfc,
> +			       struct netlink_ext_ack *extack)
>  {
> +	struct igb_adapter *adapter =3D netdev_priv(dev);
>  	u32 flags =3D adapter->flags;
>=20
>  	/* RSS does not support anything other than hashing @@ -3005,9
> +3006,6 @@ static int igb_set_rxnfc(struct net_device *dev, struct
> ethtool_rxnfc *cmd)
>  	int ret =3D -EOPNOTSUPP;
>=20
>  	switch (cmd->cmd) {
> -	case ETHTOOL_SRXFH:
> -		ret =3D igb_set_rss_hash_opt(adapter, cmd);
> -		break;
>  	case ETHTOOL_SRXCLSRLINS:
>  		ret =3D igb_add_ethtool_nfc_entry(adapter, cmd);
>  		break;
> @@ -3485,6 +3483,8 @@ static const struct ethtool_ops igb_ethtool_ops
> =3D {
>  	.get_rxfh_indir_size	=3D igb_get_rxfh_indir_size,
>  	.get_rxfh		=3D igb_get_rxfh,
>  	.set_rxfh		=3D igb_set_rxfh,
> +	.get_rxfh_fields	=3D igb_get_rxfh_fields,
> +	.set_rxfh_fields	=3D igb_set_rxfh_fields,
>  	.get_channels		=3D igb_get_channels,
>  	.set_channels		=3D igb_set_channels,
>  	.get_priv_flags		=3D igb_get_priv_flags,
> --
> 2.49.0

