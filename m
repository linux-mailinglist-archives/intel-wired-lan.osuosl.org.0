Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEBFCF25B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 09:19:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEE4F80E4E;
	Mon,  5 Jan 2026 08:19:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DPF2kJOUGeks; Mon,  5 Jan 2026 08:19:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A23980F0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767601140;
	bh=LLyoKTNydj10L+GZq+Up4V69GsaNfQbenxmT4s4GsoI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M7MBYiWQVpeV8WVop3HpncXhbScjbebAkFB0Dvos3zKzYMbiQ1aw6arPcipBETkyp
	 N0Te3KfsO+NCG1VspWgtr6jIQiQfCVseF2bjR6z5FsSnQp0FxRORdtzJmF+ejj8GF6
	 tLCLQnFc9KjozgXLlD6eHwlh1Lcu8Yj4EQelDBlHQY0uEm/hBlMOwbvmDFpN2jOaWT
	 sq2Ew9IZpaYo/2qyQ4eHhJgulGMEnFLaz6WimohUCaqD0BG0/lTCAEjfLe0M76bL+t
	 64T7aE6CMyV9FVkWnaQmh/eCjZ6Q9jgyh1uroTI0NU7gzyEwctdeW6Gn914SKZqIHB
	 macLR4J/zAiwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A23980F0B;
	Mon,  5 Jan 2026 08:19:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B2E7A2DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 08:18:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 99CBB402A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 08:18:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z_6Vrgyzr4rS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 08:18:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5FA614009E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FA614009E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5FA614009E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 08:18:56 +0000 (UTC)
X-CSE-ConnectionGUID: qL9WTzjvQCyY9bCfAjDM+A==
X-CSE-MsgGUID: J8lp71iSQKeVZnV5ggFCfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="67977684"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="67977684"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 00:18:55 -0800
X-CSE-ConnectionGUID: KdmWO65vTcWmTbrbH47ZIw==
X-CSE-MsgGUID: N8vQlPrnT7OJ1aKHvjiN3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="201572030"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 00:18:56 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 00:18:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 00:18:55 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 00:18:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fv0/rQSUURYMQ1wQzfMhqLR0u9uuIHIpMfNqTtfLXAQQ703sapWfl4DQZFyI1Fh0i87Phs9IPMcjyMAC+B3f2+heVJ1gxhm0LGzo3sxcCQVPzgxedE9CjQ0G8Z6miq7G72koaPL1cIG7keaMw6Y4TOw1KvM+mgo/czGtAc6vdh4HtPjQ572h2N4JxFM2vkH1sjVhYIGBFowX/sIlG/l3TwurIsndgPER4+fTwxAd+X8wolNL6IrUUinlUmcNPu9rJJWUr+S76nWZORTqqVfovEdVyk/Gh+NPmOU+jpYVzdccOc4O83fkXx8NtAJXkT5Vty4vuwy/bvyJA5253DF7kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LLyoKTNydj10L+GZq+Up4V69GsaNfQbenxmT4s4GsoI=;
 b=arFJyddZe43Z6AoqRmX6NAByaQ9wIw8PsMgZvfHZp4s1YmJE8bUjXEnc8KFoN6fvNRFcocFqQ03VeDVp3EXp6/ZpQVk9XWKzr5T9HmEw33C4djKZNRLHSR/1qBpwC5BeL8Ymk7jLRrC/JkiLmYzMm+1M9ydqTx6Yyi1Q1ahM1nmht6DaJ1k5sYOwE7Aa9va4a9U5swAPlaNgz8HDKTkWH08Si7XsGYlTKRaUOZV6REPq6vUI06vZGshxWHeCRKhbC9ivARrlQpc97JVS3vvlmSOVQ40RW+5XoSuaxYb8H31wVAYfcXG0s378rsUHnutjLgcTS+BwoUUveU+48UaO7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 08:18:53 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 08:18:53 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
Thread-Index: AQHcfhoHE7JVw2ZrXEidHT/ICh7TVLVDOy3w
Date: Mon, 5 Jan 2026 08:18:53 +0000
Message-ID: <IA3PR11MB8986AECA9FFA815EC3B2C5DFE586A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
In-Reply-To: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB5024:EE_
x-ms-office365-filtering-correlation-id: eeb7261b-e0cf-4586-7c2d-08de4c33104a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?FrJQi+6zdngPCuTogUGOGxLaFuZ1LDOCQ5TXdcAWU1YyRImpjfY3iKUa/Trq?=
 =?us-ascii?Q?Kr0AIN0ddxCX7YGMXrwoyxM5p3AJHN171H7IiVWOsEYOs6rC4FqYm/45aMmm?=
 =?us-ascii?Q?06myyUnlPiRLeuP3ypHlvN4cNC/C0urkEEM4ThcT2AWGm7gn9ceV2dCExldy?=
 =?us-ascii?Q?7O8S2yaeCHlWx7oz1RQGaCGJJxcRE0yItuYDGYa07eYXb+bBrHOOmjfzytEe?=
 =?us-ascii?Q?cSYfV/JyyIpMy6cfUkOTufF4Jk0CH3LCC8rLtn+5tR5GHK6UbRKrWrBicCuq?=
 =?us-ascii?Q?6fQk7Dj7H/6WZC4Geoc1LHhlOqp7ylyMC7D2GZIDIHCmeQfe9+CVuvlMRRv8?=
 =?us-ascii?Q?djZOTqBrmaPQP6qDx8jQpXcva0g/KMpEeIT9Bo7dcsGmjckpj2hYJU+GReSp?=
 =?us-ascii?Q?55bKBCkwPP2pVzYh+KXrKRvKdzXT1CKIOmSqjO0gv74B0PiHeb1/EyDV/89W?=
 =?us-ascii?Q?oMlFE+1JU6x/jzmw406wM6N4STr7zoo21Qf+Oy5rymTQZRg0MX+limyUsSdV?=
 =?us-ascii?Q?ueKcOWDJN2XssfgyMmguDNHkUOuNT/uIgmSZvqFWblEnZstyeEppNl+6oXiF?=
 =?us-ascii?Q?V9C4p98U+SNcPnuOaJXo3hZh4Gh3gLcrEugH7TsOmoX+TD2fbIJsHmIxfP+R?=
 =?us-ascii?Q?eqoVaU+szF+fpcnszXdJ7cfhq8TNnl7lPZtNqleOI28gI2eO2MTKhahd7JZc?=
 =?us-ascii?Q?8WyummcZcdzBcj9lXzKyv/8vsft/bXyLNaDjNAUOK4/G6WBMiDfOuyrqC1Nu?=
 =?us-ascii?Q?s6E10Rx44uF8krPMuQ2jcnFgBTVmRTC0zPm8a3dRK8sWVyfCczxvUh/pg7Qv?=
 =?us-ascii?Q?pnbmBQsPdmd39SRgDXG9WW6Ezcehbl0jgTFwAAF17BNP+ps7pAbJlZffhwpA?=
 =?us-ascii?Q?h9DC87a5TqQ0Vz4jvb1TTGQlAAsKSK5tM2K8gRK/PaWMgdnt+32ZWlA1zqSC?=
 =?us-ascii?Q?XK6L45JFUn+yDtDg0dFrKCFos4/Js4vFIRzILiiPWaI7qRbceEbr8ew4Pub5?=
 =?us-ascii?Q?/nJdN/8glzohdbTc9nhSQEBeFvVckuOCBlKwR32iQa9YY56G2wtGIosL70IU?=
 =?us-ascii?Q?0u9AXYG8laUa5vaiiCYwCKfFMUnQ4t4hPLOkLTcPF+R14qwr+Fx1E7rcbn3N?=
 =?us-ascii?Q?oeNLQwVhrzrNbCCcSvEBV+jmvE2qkesyvgbJZI8u9UFsTlXpngJcKr59AAqs?=
 =?us-ascii?Q?AvUYOhanzJ2sojksEegclUbedxUOu28EPaLZl823g4kSscDJOybG8ShGgHey?=
 =?us-ascii?Q?J5pBzj+/9bmBxJOsVploYYR6YkfQe4CxjmwIVC7HZVUnVrXeLvXcPbQ6tZ++?=
 =?us-ascii?Q?4PriE5MESeLkj92kbyVu84TO1H0YjhzPdJeolO/XEZppN7OCWVPtL4JSGoPn?=
 =?us-ascii?Q?fUu/M4iCFx+eavM/dulw5HYipIP9NbeZF3jHjiRRsd6ihLnluR+Npz/Y7JFA?=
 =?us-ascii?Q?TCXR8VQVCZiaTgXcnk0ZfvytdVtYWyRS0W80Wjkldm6Rc1LQEf7ptWlUtz1c?=
 =?us-ascii?Q?CoaGP+Kcc95P+LkmlRNRXSh8qHxryavMPaXw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7Z1C8ilKKBBbNimMsTPfPagz3nDdiOjOweREA1UjNucZ5iAk7kRvSxfxVSlN?=
 =?us-ascii?Q?doIWl+87txh5hYCvmwq5p/o5yg1RtfO9u51A9PRoMW0TmAO+QD+INRx1xFkI?=
 =?us-ascii?Q?uwxpgkz6cc3ExN0jr5ceZkBWpf6kYxdg1B8T3TCSaU+uMTlv063KUV/C0Upm?=
 =?us-ascii?Q?cF1v/btG/CUqnMRq4q8o2/ODD1qVK/MsV/Wv1zpYJM0b0+Ig7iryAtvIONa+?=
 =?us-ascii?Q?iwtwbWmszMStg0ceycdH7SZFdIDgVWyOitdhzNww7agUpj9lgArWk1SaBepP?=
 =?us-ascii?Q?i8sHeSlXwZBTg2Ffjf74mDkLwSDWDY9Kxr0OAC3v1tuTy1MVNKpw1KEqaGn/?=
 =?us-ascii?Q?2h/1LHs/+B4EPxmT1+fSsjL7GpPhNa5z6Nd87SbvHfQQLKm00jaRSW+LS5IF?=
 =?us-ascii?Q?PYUa4INmyWUTqeaAUgU4s5kke2iWr/T4kmu+0Cwy/B76WefJwZ7dY4D9/vDi?=
 =?us-ascii?Q?rGiEDwVhrfoA65xMN9LhPhJIZutTPxvIiGxXt38uND3YOBhVdz41RZs9PWxS?=
 =?us-ascii?Q?GzGZWW2MtvaR8ph5bNJ4fxHh8kxO6iV9SSMQOq4Fhk83r1G7kVCFdN+XaVQj?=
 =?us-ascii?Q?No2+NmnfNY0BIerwaO2c/PkhUaklZ7Dy7t+rPveCIqY61VFvvwibcaNFYuh5?=
 =?us-ascii?Q?sBo4T7aFrdsow8lYb4G6yjAHtHlrXNG8jWNcAvPXQXoeA99vv/DMnlB2wHl1?=
 =?us-ascii?Q?532RQt5dVwBJNrYG2AMeXk1GkOkk/XhhMFYnkpovTyt13R16xqPT+9QRD3Rw?=
 =?us-ascii?Q?DC8xhEgAvgVwI5L8VlmEDVc54WMZiye9SEKSLytNTw8Bgp/O15uAGwlwWb/M?=
 =?us-ascii?Q?u1DnNitcTsc7mNmzZbwANOAnUED7ud6ig3hQEEcKCPeJQ+kpYuX0RP7/QGea?=
 =?us-ascii?Q?LLdnpjCg1cL7xQ4ZTDZa2sHr1thMV72IIG7KcJtYu6bKZE4I4tr21FVNxuWj?=
 =?us-ascii?Q?JvEmI6bdV2sVe6o05jT/lVfMUF7iqMc2zdrXfd3owGVg2nrobboEA3aXkQqp?=
 =?us-ascii?Q?y8V554qSghTQswNrezHyMRtpy6HleWq/n/Stm6gSS/tQc/0TiEnAYBeKpQzJ?=
 =?us-ascii?Q?ysZyhmjobkBZOiaxBeAzZgB1sHg4+O7FHg72onbEYFX5ws89v/x+iFpqHIUP?=
 =?us-ascii?Q?wWRdXor+IsddJ3+kEQzlr1zFJUMHp+P6469cJp5HoswW2zkCFz/ypqWefVuz?=
 =?us-ascii?Q?W/fvsO6EAl5QBzoXZ8Al/hnxspVRauhv5bYhAPFBn67x4OFGxgYORelM4Bjp?=
 =?us-ascii?Q?AtFh5BhZTP4SrrPqMVApTnx+0z/gxhKt2a5eD693bPk/3fGc77J21nwWMftC?=
 =?us-ascii?Q?knxLg8X+gJb1cwot8IdBSbXvX5GfibB90fBk/q0EBaHqvoOMluIuyyKv/SJ0?=
 =?us-ascii?Q?5KwDCawVKEwnN02CEV/KkhSkGtzVcpGlZhtJSZPXJ2tt3lbaJaDn8eItVuox?=
 =?us-ascii?Q?6Nx93AH669Dw3l9dq3N/WrNgukkczoaPpFNW0wcWHNL8gElEMMwI7tlmf0VJ?=
 =?us-ascii?Q?VafyTpD4PtwBxyhSPqBa4mo2D7U0P5oqlTjRcsC1Hc6rVfRNJiSb0T3cuel0?=
 =?us-ascii?Q?POQf6ApFGtIWj2qlhynbNc5CPO324ChdqolhN3iqqZnNg0mrSNy3Sfd3Ti7c?=
 =?us-ascii?Q?ADFk5eZ9wHwZ6fx4KUnG5TYabJd/aCmxIhPWWW9uHGfWOLfLq9JrVcf0SIWS?=
 =?us-ascii?Q?HKVnSoNJvCls3W4eHJJuJaTsaiSvZaakETRyDk6gVMQsPV4resxZ35WtMVJc?=
 =?us-ascii?Q?ED7Z0Aa10Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeb7261b-e0cf-4586-7c2d-08de4c33104a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2026 08:18:53.3015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G5+YE9EHKWBe7xxOj9IPPuWgW2g0U0Li5zlWKQvFFcVUuF9dwVu1aFWLE28b6zM+96yv6jRmQ8sAyvPSOxeow0991ALKhuCPIIfhPbvaHmQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767601136; x=1799137136;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uALBX5P3hUzIBfUbYEJEDKiF4dEqzsPTQtXPZ9efIZQ=;
 b=Tkl6BEjgZQClD++hM7x7+2nCRSJ8tNYh/RvFeKKuCdxWwTQvpGm+s7cp
 qLocCzDfF7UfmoBgHacR5Wxq8X9H7bRek29wucYxfw4E++84nnmp+J4YO
 HoSruhLbqnbfJTbHY3LP7b1BwzH4tm+/mMOSfOjAXHYffFefr+e0pm94P
 a2PW13y7jbd1T8LaJBTDX2HNjOpWE6J37t0YFcDyqZRmrp555pU35yO9b
 IvYzu6OwMeUg+GPeSb3vi0o6UEqgUixwPNZe2cP32Tr4cnuFvze0eprOD
 8d5vpFtEIY4NlI8vevBDL9+lPC9g/iqv4EkdBktS9IL0hGFZ7i2RYU/43
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tkl6BEjg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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
> Of Vitaly Lifshits
> Sent: Monday, January 5, 2026 8:58 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct
> TIMINCA on ADP/TGP systems with wrong XTAL frequency
>=20
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly configured to 24 MHz instead of the expected
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
>=20
> To mitigate this at runtime, measure PHC vs system time over ~1 ms
> using cross-timestamps. If the PHC increment differs from system time
> beyond the expected tolerance (currently >100 uSecs), reprogram
> TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
>=20
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 16.000541250
> (expected ~10s)
>=20
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 9.984407212
> (expected ~10s)
>=20
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 79
> ++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 116f3c92b5bc..4ab6897577e5 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3904,6 +3904,82 @@ static void e1000_flush_desc_rings(struct
> e1000_adapter *adapter)
>  		e1000_flush_rx_ring(adapter);
>  }
>=20
> +/**
> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and
> +system
> + * clock delta.
> + *
> + * Measures the time difference between the PHC (Precision Hardware
> +Clock)
> + * and the system clock over a 1 millisecond interval. If the delta
> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
> + *
> + * @adapter: Pointer to the private adapter structure  **/ static
> void
> +e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter) {
> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta;
> +	struct ptp_system_timestamp sys_start =3D {}, sys_end =3D {};
> +	struct ptp_clock_info *info =3D &adapter->ptp_clock_info;
> +	struct timespec64 phc_start, phc_end;
> +	struct e1000_hw *hw =3D &adapter->hw;
> +	struct netlink_ext_ack extack =3D {};
> +	unsigned long flags;
> +	u32 timinca;
> +	s32 ret_val;
> +
> +	/* Capture start */
> +	if (info->gettimex64(info, &phc_start, &sys_start)) {
> +		e_dbg("PHC gettimex(start) failed\n");
> +		return;
> +	}
> +
> +	/* Small interval to measure increment */
> +	usleep_range(1000, 1100);
> +
> +	/* Capture end */
> +	if (info->gettimex64(info, &phc_end, &sys_end)) {
> +		e_dbg("PHC gettimex(end) failed\n");
> +		return;
> +	}
> +
> +	/* Compute deltas */
> +	phc_delta =3D timespec64_to_ns(&phc_end) -
> +		    timespec64_to_ns(&phc_start);
> +
> +	sys_start_ns =3D (timespec64_to_ns(&sys_start.pre_ts) +
> +			timespec64_to_ns(&sys_start.post_ts)) >> 1;
> +
> +	sys_end_ns =3D (timespec64_to_ns(&sys_end.pre_ts) +
> +		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
> +
> +	sys_delta =3D sys_end_ns - sys_start_ns;
> +
> +	delta =3D phc_delta - sys_delta;
> +	if (delta > 100000) {
> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4
> MHz\n");
> +		/* Program TIMINCA for 38.4 MHz */
> +		timinca =3D (INCPERIOD_38400KHZ <<
> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |
> +			  (((INCVALUE_38400KHZ <<
> +			     adapter->cc.shift) &
> +			   E1000_TIMINCA_INCVALUE_MASK));
> +		ew32(TIMINCA, timinca);
> +	}
> +
> +	/* reset the systim ns time counter */
> +	spin_lock_irqsave(&adapter->systim_lock, flags);
> +	timecounter_init(&adapter->tc, &adapter->cc,
> +			 ktime_to_ns(ktime_get_real()));
Unconditional timecounter reinitialization occurs even when TIMINCA is not =
modified (when delta <=3D 100000).
Isn't it an issue?

> +	spin_unlock_irqrestore(&adapter->systim_lock, flags);
> +
> +	/* restore the previous hwtstamp configuration settings */
> +	ret_val =3D e1000e_config_hwtstamp(adapter, &adapter-
> >hwtstamp_config,
> +					 &extack);
Unconditional e1000e_config_hwtstamp() call occurs even when no TIMINCA cor=
rection is applied,
causing unnecessary hardware reprogramming and potential side effects on sy=
stems with correct XTAL frequency.
Isn't it an issue too?

> +	if (ret_val) {
> +		if (extack._msg)
> +			e_err("%s\n", extack._msg);
> +	}
> +}
> +
>  /**
>   * e1000e_systim_reset - reset the timesync registers after a
> hardware reset
>   * @adapter: board private structure
> @@ -3955,6 +4031,9 @@ static void e1000e_systim_reset(struct
> e1000_adapter *adapter)
>  		if (extack._msg)
>  			e_err("%s\n", extack._msg);
>  	}
> +
> +	if (hw->mac.type =3D=3D e1000_pch_adp || hw->mac.type =3D=3D
> e1000_pch_tgp)
> +		return e1000e_xtal_tgp_workaround(adapter);
>  }
>=20
>  /**
> --
> 2.34.1

