Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C06FDCF2DB7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 10:53:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 638A040624;
	Mon,  5 Jan 2026 09:53:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id auBmPpSWvhO9; Mon,  5 Jan 2026 09:52:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB30740625
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767606779;
	bh=Csr8LrrnUhhX1l+HZkkgmrcDAZ+E80eKpJDZHjoXGg8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LYqp36iDoKxqHMJ/oyGdPyaMMPSPqw2Klp3wY7OSfeZVQh0kHzHfxehDkjPlvPG1U
	 04SlUxxqybUvo2y8l6fsLt6K7a56MScFfRtzAAekVkhyruRf6wdgcKfsS2irTL1Lmc
	 yp8lBvpRHq8MT0tR8sv50pBf7JU8P4I5LzG2k9te2LHr5lpO7iHMXIT+CiWuWjeI/R
	 XJdfk3bgui1vmy0gindOJvuVFutHZ4SED9ARnx0PCzT7UbSNiAMzySY0S+AZa2/rtu
	 ee4Rc2SyV8kHjvApSkIKA/XQUpk4JYHlEcbPlJrzSiMMPOY9aZ2V7kEA/vl31V3v/I
	 7TGpKBU0Oqgdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB30740625;
	Mon,  5 Jan 2026 09:52:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AE328249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 09:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9FDE380BDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 09:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H8w_boRV4bDA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 09:52:57 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 05 Jan 2026 09:52:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B3C1380BD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3C1380BD2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3C1380BD2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 09:52:56 +0000 (UTC)
X-CSE-ConnectionGUID: EFG8+XEeTBSUG/irtX4mNg==
X-CSE-MsgGUID: bx5vLebiQD6EfIiJCxsSRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="71547030"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="71547030"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 01:45:48 -0800
X-CSE-ConnectionGUID: ErZTkU9CTwa2PTrh3aiKYA==
X-CSE-MsgGUID: 0Da/eRzETRWltFL9YRJrZQ==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 01:45:48 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 01:45:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 01:45:47 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 01:45:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ypo7uzQtQ++Pjqwsq/oibOP0sTFML9qpGBGNXVUDelXVsHeewi2TWSJs+KafpbLH5DE3TsOgruQ5jzkS1z3a+xNi4Uv0v3TiuatdjhrfeFOE32cuT66b/6UzV4OFT7Qpk+9AvyZp+CoILUC71j3ogCFS+AFW3YiDSa4IytAjisdVJQ8fZxgg0Rs9SPoeK+x+dqHtaOv93Q/jGvOJ/Fsra7to5RnVi9lctoP1tZ6PYyI5HS5EA8v3cJz7zCyLR18L8w/gc4y2LN4gbZks8vb2qvGJHzgX1xbha+N4XKTWLp++pB/V7EfhduIC2JNqfPfjfksTg2Hl8SO9vVfMyVMqWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Csr8LrrnUhhX1l+HZkkgmrcDAZ+E80eKpJDZHjoXGg8=;
 b=jQBuCzlq0PLd8Eqmk41hgkJVSaT3uimM7IN5dM8FxlWeW1CRcRQaxJdVlAh4Nq2ojs5CIg4GzjgGGaH/3nEQjUHtracQCgl5wEOj3QEVVM/JnTqAXunGFPzvMsSUcIM2UOML9ixl3EJfqRd+R+pgat4fGh2yc99qmyyLEGVrCw549Mc9+PrkwxhNDK1EqrcSFwi7DvW7yFKPeBBiukWZ3jW8Yl6yWpHxKjlYV+bl/4pp4EDBIGXEThAzgnFElbXX+4FFV7ed1y80OlhIR/Std5BpF4IctrUMawJxRjyAnPGt+taflrK+M4m6T/+MbwDt2fjUxJG9bl6H0myvRimE2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by PH7PR11MB5913.namprd11.prod.outlook.com (2603:10b6:510:137::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 09:45:45 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 09:45:45 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
Thread-Index: AQHcfhoEW8Y4o+MHLEuU8mA+VVcjn7VDUM+Q
Date: Mon, 5 Jan 2026 09:45:45 +0000
Message-ID: <PH7PR11MB5983BC48A1E7BEF4BEF86B09F386A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
In-Reply-To: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|PH7PR11MB5913:EE_
x-ms-office365-filtering-correlation-id: 2f95f25c-f52d-401a-b22e-08de4c3f32e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dAlZ46TaG5Fp1U4JRrB2wgV8Qks++NMyBndp89EbWgrOwsEfGmAs96OiDsTX?=
 =?us-ascii?Q?W9xbJWdUypWVbGKFfmGljf6bAqQb4yT8DEWJEN2xg8e2SizN3+rALlsj/nLM?=
 =?us-ascii?Q?TuJnZNlU8BH5h+bwslqMxBKLR+2RhJff/2CeBlrkV1gZpSCiVws7K0Yc6/b9?=
 =?us-ascii?Q?XipEWcXvbI9Tt0tXkO0p/ppR91ctusEjfenbum/zn7Je7uAb/a30kcNM8UUt?=
 =?us-ascii?Q?+BaeM8gcG06/94lyrbOOXeaLkrM5+gcSFDXfeiqXK+rlTiAcC6Ta9d/4kZ/X?=
 =?us-ascii?Q?1I9/PAUrM5SwfhgaFekOzosb7pub0z0QQuU2NThsCcHSyJdez6V+vloGFXxw?=
 =?us-ascii?Q?kxZvQmbnnuPQ5IL2XgQQhSAhzTaW+mTDtqvjPJzgVj2gRm1IjuZGasknsDhs?=
 =?us-ascii?Q?+n8dvgai25DCyMxk1TRKio2d/No2qohUn6UrSTYCYMAWEh4ZPq0XbVooMtdM?=
 =?us-ascii?Q?GBbS6NSkQ4iPO0+3bmVsG09MxNBLgROnvTPtIJ/ducGx8JjKnK36YP183/v0?=
 =?us-ascii?Q?rOqv+qrDDu695erSLo4w00iOTlSqfwRaDZSK5h1wGHEth48leNPf688fVZ5d?=
 =?us-ascii?Q?KR53C7pitnGdb96Tsh8PzCJU5xcc1AFlHwCt5qUJkiP0ABW2YHzKJCnd+uZ2?=
 =?us-ascii?Q?7b47YmwhTTk/Lh981YxV37XreRLPaya7QlVSj5aI2sgiBtB05HijclRQFcpY?=
 =?us-ascii?Q?U5wn9/IhM2MUNgtmD/DQsW2AeTAMcSnzMQyNlo0mngqWmRvcZGXIm4Epe3PD?=
 =?us-ascii?Q?ko2+bknkA3os5eVzGtt4y89CtF3qgBZWmTEEvSTpeihiYIWIri/9Cz73vsoe?=
 =?us-ascii?Q?2G2NGU71i992ZyL01vBIGbGWoWX4RRAmpiMgt2mhdVkASOe+qiiiddKsR2Jf?=
 =?us-ascii?Q?bFNMJ6E8ZdpjyCZFIRCRuOjkeELuFYpzcEnxXRKoUlwGf5P5WH5PR1/0947C?=
 =?us-ascii?Q?lZiGC2kDQoTpb+dv4Tw0kjj6987lhXeEhH9p2kd6pFEgaGIcbgOOvHFC5UpX?=
 =?us-ascii?Q?kNhHbdIS6L5RIGPTv7j0kbWiHqQeWtg69hKenXkUH9NUgqCbNDzfEMGBgcit?=
 =?us-ascii?Q?UHK2ZDGlCc9Ec/2r6C5/CFvMUUbl2bvCfjxOEN8GEx56FsWC2/eg5MR+QUYP?=
 =?us-ascii?Q?slNiBYwEb1jiEXjO49jUjMki01/QM97ICX72RdZL+XhuYvFmEkFDpMnmSWXM?=
 =?us-ascii?Q?Y7eNSFb52S29p5L4x7bNK6LOAu6NeGTKLSXlHFXRpCft70rGcP3iAIOAW2qd?=
 =?us-ascii?Q?0V0aTvLTmEGyIiFUzLxxJ6FPsT7rUk1njHMGOX+3MRh302WFELhhLzFIDrKL?=
 =?us-ascii?Q?h7D42/DVsUuGovKZXyHoVdmzNEXNMYI9ymUSYfCE/cbL0SeOvOcI/V24o+Vo?=
 =?us-ascii?Q?kYZB10k9XW9WVdMSbSeRzCnKWTh3Gb/xWhqyqk/t5SNq3J8xw+kKe1DIssDV?=
 =?us-ascii?Q?HXS6o+kcKk9K+FDQcXN43EswQwt38LYTGd5NE3ZCMBjfJS76+Slk6AJKKZal?=
 =?us-ascii?Q?YzELYFE+8PK0bOWHiQLEk6z4TeQXY5Ddv9rC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U5q+9Nwl1AuP1O8qdVZt3loMWqvFu9xrrYKcQ5b6pcgAvPI4fxfMq0Sf8Isf?=
 =?us-ascii?Q?BqM7fcBezYkxC8FnIeU3wq0wjB86a6EFbYh+X0zO+K8NyyEDXsYltjAq7U3t?=
 =?us-ascii?Q?HQWQR22VhaXqG+bbvbbFXwo8FXKQauiTadOsjj77VHQY4kq9DNfvDNLy2v2J?=
 =?us-ascii?Q?kyG65I9XIun26+ZOMIw5O3jVfC2fhfs2o7jgWbwnl2LQpAmJSVtBdObYvvbK?=
 =?us-ascii?Q?G3muz0VDy2pIx/9D7BUoFZGdO2OlhyUitC965KyKBMKxe7On/2GHGSxvGEO0?=
 =?us-ascii?Q?kWS8x35rTPJLPKc0w7ckkosO0wf3Rs72Gl1igpy5PrsgpY5Up5orcGgCx8Z7?=
 =?us-ascii?Q?gpheh6keT4mQl33VcCF3cDIOynYJ3+ykwwyuzlxCZFEb7/MsiXPtnXTi3O5w?=
 =?us-ascii?Q?1O2NOiUIfr7XDx88h2pmNpd/dDOb0z++kkj6sDzc2XfioQqe1nef7YOueKOc?=
 =?us-ascii?Q?gLFl6b53TUIjop3rnE6YkYn4WgSMJIcpk/kZXmXp+12ig/3+nHY3xbjnNYyo?=
 =?us-ascii?Q?QT5jw1gqRhyqaK4oLrDA+Ylt3GGsE8Dpb7rBN4y+bA7EJaY1ahYZfovv0amn?=
 =?us-ascii?Q?o/zlsrUAiWqfSIDgwbWtSZpyyTeN2JF6LBfvNveDK/yu/QgYTWv+dIkOkIqg?=
 =?us-ascii?Q?CDNWmEKfbwtwjQZ8EdbQnhURu2m9b2O48wUj2VcdUibNgFwlmk6Act68p7Xa?=
 =?us-ascii?Q?Kx8ksVWIcd4+N0xKnaFWJZH/feSLudjmEcoSRMsxnIz+cgYm1GbC2hOD5Twt?=
 =?us-ascii?Q?t55V5BNY+WkaQ18SMLR9GOLcR2IiywYi5pY3BDywtf1bT4ZkaZ0W6dYzj5ZH?=
 =?us-ascii?Q?y4oxbuTfAieabDzNF/QPwyvHzDvPkqYhlz9vDDtBler4obbotAFUY8rPsTsY?=
 =?us-ascii?Q?VWjqDFaNUcOKF3CndJJF3NJI514N0pkErjkveAxG9CESLeZZxAykQNFk1CY1?=
 =?us-ascii?Q?E2cn/w4PmRIIbZdfWbO8rKfaRUkOjyB381nE2jCLdyLpenD9j6fizHAzD/qa?=
 =?us-ascii?Q?CsBWpS15POaOIcEX3nKFSud5QgECn/H7sVdxwIRQn4m2vxCT3sqjH7Iw++TF?=
 =?us-ascii?Q?28IXsUkVoFBQ239LTlnnDs1/jABmOgVksU6550Abj/urWdSP3oK5Excuyg01?=
 =?us-ascii?Q?IPBTzYAH02a8ZrtAdb5mg9B2Y90XHW970PZWwG72eW28bnBBmaCdBSw/VjwO?=
 =?us-ascii?Q?W12uwnY8aN0XxCZRtbsozK4ZWnDSCk9A9GgiRrJDetXscW54nKCogZASiAdb?=
 =?us-ascii?Q?PfzAqNfSY61JFHPm8sjdIwdEJ/n8gdnqMasxlFeyKsrB1awpFKT61gqVkt+V?=
 =?us-ascii?Q?JrNJHQqKed59krMs/sRucdDrgtm2IZuEzTGSpPTKlimS3WMiHJ+vTHFKbcbG?=
 =?us-ascii?Q?nwnyumB/rr1lbgwGg39SN0nY8NMcSAV9IPl4xeiUB2fu0EngzUkTNCbvZhxf?=
 =?us-ascii?Q?OvoTzYZ7SjieZVdyVQG+7U53XmR3qH/M/HTrrUKl5VZMM5paLVFmlJ02n+3y?=
 =?us-ascii?Q?hhtqjU31ZGYFtzlleKyzT3249R3SDY0w4SuhKqXlrJmX23+00SXSySDJ4GWg?=
 =?us-ascii?Q?Cpmp1P8YVFgZ12MNZJDtObT4b0WsLamXnN7q/q41G1FeF9IjWVRnb/mVs7Mf?=
 =?us-ascii?Q?YdC3NX5aDtoc9dUQ+KM60u+MQWcHDzEzMKq+Wh9jEzFSJ5LGojGRq2f3VOFb?=
 =?us-ascii?Q?i+5lVNT5nCCyCkSZma7UBZJDcjU0iLej+7ORDxKxDy96ozGDRtcRoEWwr9Nz?=
 =?us-ascii?Q?xQ/3J6IMOw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f95f25c-f52d-401a-b22e-08de4c3f32e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2026 09:45:45.3485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NTw47MgBlGQfgSROly6wJrwV4POCzYitfpMB1RQumIfGOFiaEwFJsS4LY9v0fjToo+Pctrolux1nuOqMMC5t2TRYruGeUnTGjy0BdRAGnXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5913
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767606777; x=1799142777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zPETp7fbDgwumITI5+zym+RxxXXtecn8rj1DVrmuY1g=;
 b=jzmUGEIuubL1/qoKyMW65yVY4PjqZAQJdDatkQpuuKqs8+uDT9pbSV76
 VE5LSCXmfzGwOaOj24Ntdwz8zPj32POLwCr/QMZU5s3ve9/DEpCaybFAW
 32dLXQPmrA8yZF0hPggmD/jdgcu1nPVyBfq95eMcam0T0uwew/pykH7Kq
 9rX1FqYe9EZYA+Oj7ZHck/oohtAtLUDMhLzFOywgOOYT3sAYSCDiFjToK
 sDWhZlUwMf3bznAZIbDMxyEoZW8glEkh+fQRHqBFMXNQ+10bgsHI+q5JF
 e/2m2KE3wl5BVjy9C7VFyzM/AZx+Ic5vhqUuGjOm5U40vnPjUyYpRS187
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jzmUGEIu
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vi=
taly Lifshits
>Sent: Monday, January 5, 2026 8:58 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct TIMINCA=
 on ADP/TGP systems with wrong XTAL frequency
>
>On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware XTAL=
 clock is incorrectly configured to 24 MHz instead of the expected
>38.4 MHz. This causes the PHC to run significantly faster than system time=
, breaking PTP synchronization.
>
>To mitigate this at runtime, measure PHC vs system time over ~1 ms using c=
ross-timestamps. If the PHC increment differs from system time beyond the e=
xpected tolerance (currently >100 uSecs), reprogram TIMINCA for the
>38.4 MHz profile and reinitialize the timecounter.
>
>Tested on an affected system using phc_ctl:
>Without fix:
>sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 16.000541250 (expec=
ted ~10s)
>
>With fix:
>sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 9.984407212 (expect=
ed ~10s)
>
>Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>---
> drivers/net/ethernet/intel/e1000e/netdev.c | 79 ++++++++++++++++++++++
> 1 file changed, 79 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethe=
rnet/intel/e1000e/netdev.c
>index 116f3c92b5bc..4ab6897577e5 100644
>--- a/drivers/net/ethernet/intel/e1000e/netdev.c
>+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>@@ -3904,6 +3904,82 @@ static void e1000_flush_desc_rings(struct e1000_ada=
pter *adapter)
> 		e1000_flush_rx_ring(adapter);
> }
>=20
>+/**
>+ * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and=20
>+system
>+ * clock delta.
>+ *
>+ * Measures the time difference between the PHC (Precision Hardware=20
>+Clock)
>+ * and the system clock over a 1 millisecond interval. If the delta
>+ * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
>+ *
>+ * @adapter: Pointer to the private adapter structure  **/ static void=20
>+e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter) {
>+	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta;
>+	struct ptp_system_timestamp sys_start =3D {}, sys_end =3D {};
>+	struct ptp_clock_info *info =3D &adapter->ptp_clock_info;
>+	struct timespec64 phc_start, phc_end;
>+	struct e1000_hw *hw =3D &adapter->hw;
>+	struct netlink_ext_ack extack =3D {};
>+	unsigned long flags;
>+	u32 timinca;
>+	s32 ret_val;
>+
>+	/* Capture start */
>+	if (info->gettimex64(info, &phc_start, &sys_start)) {
>+		e_dbg("PHC gettimex(start) failed\n");
>+		return;
>+	}
>+
>+	/* Small interval to measure increment */
>+	usleep_range(1000, 1100);
>+
>+	/* Capture end */
>+	if (info->gettimex64(info, &phc_end, &sys_end)) {
>+		e_dbg("PHC gettimex(end) failed\n");
>+		return;
>+	}
>+
>+	/* Compute deltas */
>+	phc_delta =3D timespec64_to_ns(&phc_end) -
>+		    timespec64_to_ns(&phc_start);
>+
>+	sys_start_ns =3D (timespec64_to_ns(&sys_start.pre_ts) +
>+			timespec64_to_ns(&sys_start.post_ts)) >> 1;
>+
>+	sys_end_ns =3D (timespec64_to_ns(&sys_end.pre_ts) +
>+		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
>+
>+	sys_delta =3D sys_end_ns - sys_start_ns;
>+
>+	delta =3D phc_delta - sys_delta;
>+	if (delta > 100000) {
Please rename to delta_ns
Piotr

[...]
