Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C1BC2CB4F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 16:27:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A121605AA;
	Mon,  3 Nov 2025 15:27:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QVf1VFOkl7Ws; Mon,  3 Nov 2025 15:27:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17834605A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762183636;
	bh=Fbuvgln/NE1LKrKko3CA/AjDv8r0TPyc43jt85so8mA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eBMGUYT8Hvo4woQIdeI31T1lJdCd3aBIGy86JT1NqBUxUsK/d+opt5Bs7OBCrElUO
	 +cGoM21OcY+ib0qOo/r5jXjBvO17ArvOXnhtYuenTgSLGifg7GkSVp5f8qTfpFh/LI
	 HutKhekGzXO/EFuTka26Krng8nCGEPTHFdaIUKQ4yKyQURNJVBCp3uiDPpop/V2gK6
	 ghI+sNt7ZAahK+DqnQpPapDY3gGH61PV2BcNK/xjS8L3mP+XXHhDlhQL8XrgiFeCf6
	 yLiLL7Vw1UuFXOCG1OxPa2UfJmZ8p/5aGtUTdHrx3ZzkLKKJ5YlwK3U9T3SpkBGnki
	 /u/zJop4/RXQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17834605A2;
	Mon,  3 Nov 2025 15:27:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 25A971A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16B25401E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CsyiYkjZKOaZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 15:27:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 52F97401E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52F97401E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52F97401E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:13 +0000 (UTC)
X-CSE-ConnectionGUID: 5abf47CGRI6Mk9Mm2k8RoQ==
X-CSE-MsgGUID: 1k9IbH5nT6u4ClOggzI6gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81890160"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="81890160"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:27:13 -0800
X-CSE-ConnectionGUID: i+djNr9oT4yPr49E9qj9zA==
X-CSE-MsgGUID: i61UyxpkRN6WmdFDcbPJZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="224142322"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:27:13 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:27:12 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 07:27:12 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:27:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EWyNA2joT9mNuCG111s586ryrVUI2FTJzMRr+IiZK0WDMzdWZXwjsOoztiUh0d63LKBORmxaA8tbO/dQdK174VnrDKlmKC/XLXNAsywe0v/QbJFH6UQMEOTKH5oge2JorCuQ7S9MTK5MZ4MEm8TsgUxB1WZufT/dplsdmDzfHD0prwqT5hDTo0AX1zakAYyxbba6LEunZjNolJg0A2Lxn5idTX2N9714XaXFDRz8FjttWrosCuF8P6wPPw8XAxFML5spRRyfq8PZiYqbYqXi3P0ryV8al2MjlQLa/AImzNfpxcO522PAeIZ5RyQI1wArbzNorKDzUPrZlFF3QGuzfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fbuvgln/NE1LKrKko3CA/AjDv8r0TPyc43jt85so8mA=;
 b=a1qnUpke49g9RTiFmcen018bR3Cbz77Ne6X9044d5mrzDW+CeF0fYBdeZMuP2wmFm7ZSFCNaizYIJCrQj+hUql5yb7/HgsMuDFS39Cmk74nQKT1PQLdHpVqxERUy0V2s57e8ORFmqn2b4wxpA2QBP+KWv1eeM2BeaMwvuQM9/zwN7xYQ6/jQE4QOn3HgeMu+UVRsHS2qMBHOKDKLdi/V2GU+ADgSdSOxt7tfGgV66TwYYu5OA4D5mr2u592yIaP0DqnALjCRSGr5rkbuq6Yif07wAFX7I67GeejuxiBgTIQfJs09Q7gpqh50/bzRGUIoOf8U7SG1mi/vu/7SN5WH4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7114.namprd11.prod.outlook.com (2603:10b6:806:299::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 15:27:01 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 15:27:01 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 01/10] idpf: introduce
 local idpf structure to store virtchnl queue chunks
Thread-Index: AQHcQuFXPUZLdh6KAUGfIvdqR5HBELThJWPQ
Date: Mon, 3 Nov 2025 15:27:00 +0000
Message-ID: <SJ1PR11MB6297F19A79D6457E9CA6F9149BC7A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-2-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-2-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7114:EE_
x-ms-office365-filtering-correlation-id: ebc09aa5-c5ae-4bee-a6f7-08de1aed6f55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?49oDZZyQf2sLBO7jCy0ZnqRWn61DfaRPVENEYXUsozkC/Eo89ZwEcgj+NW92?=
 =?us-ascii?Q?NNtSOxXPW4dBtmtzD6paa8bgcP7lk1xi9t0lh6YxTM4dmFD493t5dJ+wqQ2j?=
 =?us-ascii?Q?MIBvKyKhbz4O+hv/MSOFxq5o1KS89NWta1UUdpj7UHCGLNYsRzhYzL1VIVyx?=
 =?us-ascii?Q?DAdgWjVpIr2hFynYxLaDKn4nv2MpaJs0b+YhoDRtA2FNGwKwzD1tYOg/JSxr?=
 =?us-ascii?Q?UjxQHvxtPMpJWY5iZoUdCW7Fi/BtXK4/6ZUjCN9ux/grwCy6Q/sPAfRKIBbz?=
 =?us-ascii?Q?gQSL47/6EW0Zytz3oKyoWyN6o7JAVPZkv99utYtDWDV794/wmAjLOe4gmUIE?=
 =?us-ascii?Q?+urdFevgWfmO08OXUU/3wNeyc7EiT9K6tBv6Mmoc5kY7p0eWzLPpm6QESqPl?=
 =?us-ascii?Q?UuQvz/VT+ZjOD91GWeVE5V3NcqT0Fy6r6rBpqIGW0JfV34sVBaazusR53H6w?=
 =?us-ascii?Q?Dc44VZFsid7zwkDnxZzwQantIuAfhsctPIAQUjIl++KgSiYx4CEETKDwEile?=
 =?us-ascii?Q?BCS+hoXpwLNrQXEuYeOiGJlFDVTUMtIKaHLr7X5Bxct+d+SzyyKPDIB+nei4?=
 =?us-ascii?Q?jo3zF4XzQfTu2MEXlO/svcqat4xNcU5MqO+/dF5hLjXDJ09JVtCiNsury4rf?=
 =?us-ascii?Q?LVaYbUYoG9dja9pzyPrrC42lH2qhc+pRi+edHZyuQMxdzYgi6ur6Wgzim7dK?=
 =?us-ascii?Q?qf6wP2cPZBHobZlFv1D/nYePqo0r7oX3ZsdDpa7G0Ks3vj9CEbOZA+eSMgFv?=
 =?us-ascii?Q?A7H70sELqpDweNrtqKOuiaQG1eXyNpKhtF1XB5YI0/xfsczv7vYy44fao+AA?=
 =?us-ascii?Q?L2QTnMbtbqBgy5/YvuoIJZrgCyPEjg7/bAgenDYVbOKTXCwWgrN67dWJWR8b?=
 =?us-ascii?Q?uGX6l0rGxof5cJeuaTUa3dbGeStTaR5L57HI7B9ePktur7hRn+ZSHrySfODB?=
 =?us-ascii?Q?El7hNIbFSOpTj0lCCIuyEo58087Fl6QPvB1+Z2uBsoioaNiJrl425kklr5Z4?=
 =?us-ascii?Q?Qie0DaEKatr2bV9rqaQB9i2uk3Sfeq4CGzwZtb142aKOeoWPtKeexG3jjToV?=
 =?us-ascii?Q?ay+av6WAzW5bO7T1wAv3lL1Xf6XyP/ChP7FFIiWFSRrVHCd2/uA7ic8Z5sG/?=
 =?us-ascii?Q?C1LDZLdh2xIbZZxpTRB/nYcJa7TX0oG/yVmlLR6O/99gQL5HGVZy0o6Blx91?=
 =?us-ascii?Q?m0392ZPbY+QD3IK6SozId2IMqXa088gvX2+5DQj9UOGv3qvzuN/6g5BpFKZP?=
 =?us-ascii?Q?roahao4Qr37tokBJYKnEbNwlfp6R3QbwFOq1HCVq+AxR7/cbTGGKuifkYwwo?=
 =?us-ascii?Q?LVTOAI7V1x5el72incrCy+YGWuU5bIHu1PMp0riHsfUmGxkm8dtTZK88OYWL?=
 =?us-ascii?Q?A8B3h9vtF5AB6XkA6x9NGqdZpRqIx84+Efw1zByZ4yKsIpe6clge0WjG/3Ph?=
 =?us-ascii?Q?hlyYCCmg7ZnwqQXjyebuA2N0pbsew9cwCJzuLxpi5uTeuxW2o+f7ywO0Yqa+?=
 =?us-ascii?Q?Gw2qTSRLdFwTEr++e0tXpAjSl5rUs+9CMC/J?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2aswkg76CrBIZeLolPyvqEpbrUVpJEowf7OaJDCG1ZjjM7/AS6ZVWqifGgGe?=
 =?us-ascii?Q?WhYrytvg7iHC/Q8ozOkyBaym5YnV50FsKDHXFB0oqMpE3rHrMTkR5kBu6IkH?=
 =?us-ascii?Q?yzTM6pf4xTV+LFE7Cix7ABecWOZmOAVlm8wD6Q6CHTIetKbfQNVsrfczWHCA?=
 =?us-ascii?Q?jEQhj5quR+/3LGfdLnZniuAewUjtmtU5YNTKc7aBdPegeeT1I40Rhy0G5n+5?=
 =?us-ascii?Q?kb4RPPUhd1KhPbREgi4Ld9IzYG1dNgHoDhHmuqF8nuJQOjNCL7WA/A9A9haf?=
 =?us-ascii?Q?8pv9u3UF79Oewow6xKtBFNSUR/nDmcoPZONZIlaZ0z4FVxVnnbFrOag29xN2?=
 =?us-ascii?Q?GFQoo1hzIWJik94urLIv/7Q6dUIIYwUMTZJesHnA2MQTtMi52QwkCHTSs823?=
 =?us-ascii?Q?hW1TNxRppST2eJqBI2h9l6ld3TbYdGXaj9W7G4eox9SpzPP7EMv/47RdXNel?=
 =?us-ascii?Q?z/zjIfcmeHuoxTXPdCznX6XUOIGBbjQTh9JmHfKwFo2szED7s59vYJlK9Bg8?=
 =?us-ascii?Q?Zqks5PoEuR/UYzzwsItn3dF7BwlL8z03ltMWwuczYCNmgbU/KpeJRXPSfvf1?=
 =?us-ascii?Q?zZo5TL/B7Kik1Fd25JQmM+M16mOBtGNlUEANl8qdVbvR0skJYPGFfbk+NAeK?=
 =?us-ascii?Q?GwUXcPI4tsgL7P+X314pzHcR55jhUxD83A+nrgm9Z+hMh9oZ0O9dtEDi41Vo?=
 =?us-ascii?Q?dJ2RIfWw7lErTfsYXtGJGBrAViM05iDIbDep3esvmLQ8U7oqj/FWwnK6Zl/+?=
 =?us-ascii?Q?DzEAHOaaBH2bjHf0v+tg77daRaPUK2JZBFKnEUfvp9GZh5KTb7kiBUZ8dpOJ?=
 =?us-ascii?Q?iZgN1mTY6NQjnD8Qi5bk+hKiLF34OKzVLiiuoss1mwhpI1SsWSR/NT37Qr/l?=
 =?us-ascii?Q?qM+NVHHr89exCQhDXyvpu7voEtMp0mqq/a/7FoQXYkl+Kv1PkOLJHPcuccH9?=
 =?us-ascii?Q?JJMEAM5PIXpgid2HjpRnJzpj1Umr3E7qICMS674FEhQ+KO2hy9fZqCoIaFRp?=
 =?us-ascii?Q?6j8CM8BulVeVpfpCrhgXOrZtLmzFDhyxhay1LOCHdxQF57e03DMMlHTOIp6d?=
 =?us-ascii?Q?diiC0CusMYsbn9ilYn1YK3gT/+WRz0TZ7wqzdSTT5uB8V9YJqnqO/rrj+SkR?=
 =?us-ascii?Q?9BUW/h/7Y6jUKVOp7dVgL4bNxnUQnR4JhnCeE3mOrtF+RszXhHKsmB7sK3tc?=
 =?us-ascii?Q?H1AJ4fJCfMzZB/BL5O0c3XXq4x716J8MK53hYHILHfmh8xkCF2QKynkMrDgA?=
 =?us-ascii?Q?vdKNr+yqGfhyB/8iIfrwgwy+1RkxtK2zkPAGFlyfolDrIvUXcbT9PT+6Xs3x?=
 =?us-ascii?Q?6ZVYXWvZdL2yP4sLQCFSsf3xwyI5NtnaaAphp0muTzgwHVSTFuWEYQMeORoW?=
 =?us-ascii?Q?ZqUeK76+eHiksYSjVdF8VePLa5Qjj4dCMciDNA74xOSd1K6fF2b71+NbJF5y?=
 =?us-ascii?Q?tfKO8HqnvD6dsvynUOpzdT4dkIqmsTSixjnedwwspymiXq8qU45iEreeihG1?=
 =?us-ascii?Q?42fkoGk3f8JrK3NTHQBu+sITa4ctG/N79WrL/ISpjJu8U/nR8wFQyav9XxjN?=
 =?us-ascii?Q?oUeDLDUP3wrkU8v/Fr6xPKktla/5cLo6hfX409X9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebc09aa5-c5ae-4bee-a6f7-08de1aed6f55
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 15:27:01.0015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 43uio53CSn6xBSAipcwqq1bRDKgBVQgMStrt6tpHBbttrlb5U+fbmWaZ98kfuEpkbbvPDSHiLKTN6+JizQ4drA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7114
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762183634; x=1793719634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fbuvgln/NE1LKrKko3CA/AjDv8r0TPyc43jt85so8mA=;
 b=n5MdqloIbtbBtn8Isy2gr8dyOP5tJaA0S4sayi7tA/Gf1deZ4/ckuqxt
 MdALc2ExLmO5gT3zOHobiFu0Nc0kvgf8/YJLVGxG3cqsbTHRvCmxTHokp
 HbFi7ktjkmj5Fgho6CL2psEs83h0zOC0rIPmZKx64jQNu3IBvlY6eWhXh
 rl5p1vgAvfy8kjDdGvOs+nYEwc/kxLZ7q9l6PAJTob5CbIQMOPVZtfqN0
 ZrrYDFFMltlPBm3TXcLA8HWRabaI7qKNqDMpKsJ3cHN/S8m2Vup0/Ihbc
 xKN6Ort02O3DTlls/ldi11H2AEh8pjwHwODuxZgMrpqQ8/fIKeY0v88Rp
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n5MdqloI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 01/10] idpf: introduce
 local idpf structure to store virtchnl queue chunks
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Tuesday, October 21, 2025 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 01/10] idpf: introduce loca=
l idpf
> structure to store virtchnl queue chunks
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Queue ID and register info received from device Control Plane is stored l=
ocally
> in the same little endian format. As the queue chunks are retrieved in 3
> functions, lexx_to_cpu conversions are done each time.
> Instead introduce a new idpf structure to store the received queue info.
> It also avoids conditional check to retrieve queue chunks.
>=20
> With this change, there is no need to store the queue chunks in
> 'req_qs_chunks' field. So remove that.
>=20
> Suggested-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>=20
> ---
> v8: rebase on AF_XDP series
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>

