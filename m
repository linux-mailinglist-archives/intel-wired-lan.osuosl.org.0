Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4B080A8E4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 17:28:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DAE283E46;
	Fri,  8 Dec 2023 16:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DAE283E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702052897;
	bh=0VRb4UkW09ZJ5Zasmy5M5PHo9lENP9QpNF8qb5iRZLA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vh1faGKPlR5x+j/rZCHwZ2rec4XWsFDLCUHz/xB+fXwQ4DU/96Yp5Rfz/26M94X6o
	 pSBu8lYFdwdO6ABV4Uo/2Zns838VRs3jyHXhECeVUjW7S3Ezw1vsI75NTCmbz3gsNi
	 MURcoNV5hkx7W9vzWT0q3/ZP3do6+xn/3Bewm04MBzoAZhzo/kkxTXX5Tlnulbrkpv
	 CeG4x3Ucea7gemnk2BaUy0B4vwPXVqkjrAGaM4HTud5PKgUK5ibToPwaOdHFBEMTFH
	 lAOekPApJD5Mnd1D9xU/Cl/Qd0FDzMMLQLCrdwCDuT/sBGXOIRT+ZwvKSs+boUVSwS
	 UMfNbm2oBatig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pBZbEbDdmJOK; Fri,  8 Dec 2023 16:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52CC183DC3;
	Fri,  8 Dec 2023 16:28:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52CC183DC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97ACE1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64A6682122
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64A6682122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t5iQ-Aa4md9Z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 11:10:53 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Dec 2023 11:10:53 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C40B8394A
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C40B8394A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:10:52 +0000 (UTC)
X-CSE-ConnectionGUID: fPFZte+/TH+GVMr8YTp5jQ==
X-CSE-MsgGUID: In9ovAXCTY+sELLKRsvDew==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="12989660"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 08 Dec 2023 04:03:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 04:03:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 04:03:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D6gsgXGCHUVqSUYGis3Ub2Q3eC14LxkbKMRfPt42XFLGjhvXwR6mDojXIyFibppCD915CuAZF2KVAN6XqlTmwbKfxomqaO5gk9vb2r3m/RjfbTn2waZHNeTA6OToZ2KaVXqkV7WE41WoxbtVbAjaBV6voiKX0GLa+s3MoW1OyRUt65OlvM8gd2xlULAk5fnJbU5Pdq1NNDy7MTuFf1xjUXRvvq17bGZ8JQ4ph3Rd5UtZWqQPyJcrwCYIYdi0F5yJodcOqYv/7BxAx9yzIUbohO553ynKEYkwz1VxJm1UoPgp+nzZ3iQgdwwfiBOg8L+zlNXbm/qxZl/NuSlJqr1dCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oywCcxpvcq774ikp9Zv+0+tlrr44eyqIRY/PiJvY1H4=;
 b=MULQUuWicyhwO8tH2hSYh/B8CqznGdh0S3loNQgv81xDI2UYEhL3Void+cRAovWRHrPkKGtirx0KqEeEAKjJdE04pPp2G2poqMI4NihJvn55G3aN6rdMmBL5Wq5BHPW4aEaEzdBDA4BQECPBAgdTLL4F7R0amQBPWrgBtcMLBEx7MEPIKgwQodi0kH8jDE1Cvx8bYdGck8l/4K0r4LwN6PGfGUskPqfClZByGOBge+e7/nvBdwMi70B6+EF2RQM9ESe+RK+erptlOM5/kzdNlVFJpBSBaBfd0aURAHiu3jv0ZFyrIrwS45mgAJZTzH6bY69LZAnhFHr0lEz8dxMs8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9)
 by SA1PR11MB8543.namprd11.prod.outlook.com (2603:10b6:806:3ac::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 11:03:16 +0000
Received: from CO1PR11MB4771.namprd11.prod.outlook.com
 ([fe80::be2d:30b4:c304:3c2e]) by CO1PR11MB4771.namprd11.prod.outlook.com
 ([fe80::be2d:30b4:c304:3c2e%5]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 11:03:16 +0000
From: <Divya.Koppera@microchip.com>
To: <justinstitt@google.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <shayagr@amazon.com>,
 <akiyano@amazon.com>, <darinzon@amazon.com>, <ndagan@amazon.com>,
 <saeedb@amazon.com>, <rmody@marvell.com>, <skalluru@marvell.com>,
 <GR-Linux-NIC-Dev@marvell.com>, <dmichail@fungible.com>,
 <yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>,
 <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <louis.peens@corigine.com>, <shannon.nelson@amd.com>,
 <brett.creeley@amd.com>, <drivers@pensando.io>, <kys@microsoft.com>,
 <haiyangz@microsoft.com>, <wei.liu@kernel.org>, <decui@microsoft.com>,
 <doshir@vmware.com>, <pv-drivers@vmware.com>, <apw@canonical.com>,
 <joe@perches.com>, <dwaipayanray1@gmail.com>, <lukas.bulwahn@gmail.com>,
 <hauke@hauke-m.de>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <olteanv@gmail.com>, <arinc.unal@arinc9.com>, <daniel@makrotopia.org>,
 <Landen.Chao@mediatek.com>, <dqfext@gmail.com>, <sean.wang@mediatek.com>,
 <matthias.bgg@gmail.com>, <angelogioacchino.delregno@collabora.com>,
 <linus.walleij@linaro.org>, <alsi@bang-olufsen.dk>, <wei.fang@nxp.com>,
 <shenwei.wang@nxp.com>, <xiaoning.wang@nxp.com>, <linux-imx@nxp.com>,
 <Lars.Povlsen@microchip.com>, <Steen.Hegelund@microchip.com>,
 <Daniel.Machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
 <jiawenwu@trustnetic.com>, <mengyuanlou@net-swift.com>,
 <hkallweit1@gmail.com>, <linux@armlinux.org.uk>, <ast@kernel.org>,
 <daniel@iogearbox.net>, <hawk@kernel.org>, <john.fastabend@gmail.com>
Thread-Topic: [PATCH net-next v5 3/3] net: Convert some ethtool_sprintf() to
 ethtool_puts()
Thread-Index: AQHaKJpxqmNUvj9Mfk+NlKo4i1f/T7CfOGdQ
Date: Fri, 8 Dec 2023 11:03:16 +0000
Message-ID: <CO1PR11MB4771F4677509E46589039C75E28AA@CO1PR11MB4771.namprd11.prod.outlook.com>
References: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
 <20231206-ethtool_puts_impl-v5-3-5a2528e17bf8@google.com>
In-Reply-To: <20231206-ethtool_puts_impl-v5-3-5a2528e17bf8@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4771:EE_|SA1PR11MB8543:EE_
x-ms-office365-filtering-correlation-id: 30bca623-1435-4a6f-20c2-08dbf7dd47da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MCgF64TdUI6Arpa+VKjJwa9bfr27PxvBUl9A+Pq/4QRVb5o0fGn7xiHfe1qKOA5w0RRgXMmWWq2fLeYo06gw5PtXW9VPMLsBGqVkTD0bdquch6FZcewhocdYiCJoYxTyEL0fkDUSQgshF1gUBB+fSXwMlOLLf2LRRNmhG0dMlg6x0JN5pC1woPo+Wp0pZazE+rjqicGaoXiqMm1qy5kXqjqB5VlXoBk7eeBTPSsHaeA8VD5o0XGsqAfcmVC0dCZy9XI61VfxJ2OsactDx7cogQ5edIeaUVBWWNtvlTdBuDxLb8FPf2s6XVLouEkC6QPy9Pil9zu30LkR1OdNVzM8ycIkykOdYGNTCNanxxkJeys/a0OXZzkYRcu6IJfkpI2wcIoJGpJjJTLYP43NM0EtHZFIEVX9fPi4HwL13ymee3p0y62j8HrXIL53wB6hYc2XNk9lBdLvOjcaybhHAD19OMaX6ZrmOSDerXcSpTwwonnY6+YMi3+nXF+zlXi+O0ZlqrAe4eMb1vAhBrupy/6LxLol98HJVkqBrO4MLxzM3LiBkfMq7svbmr3lKk6JuFk0HGgEJOaMsZdTABEGw3ClT61ZwKWXhOT0N+qa8pHuLNVJiGnz3jRk+TfchuqGH76p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4771.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(39860400002)(366004)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(26005)(9686003)(6506007)(71200400001)(7696005)(54906003)(5660300002)(122000001)(4326008)(41300700001)(7406005)(8936002)(64756008)(4744005)(8676002)(52536014)(7416002)(110136005)(66556008)(478600001)(2906002)(7366002)(1191002)(66476007)(76116006)(316002)(66946007)(38100700002)(86362001)(33656002)(38070700009)(66446008)(921008)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnV4ZXpLL0d3TU0xRjdwS1RxNkc0aE53NXRtTzRLV3NSUEsyU2lVSFBLNith?=
 =?utf-8?B?T0xqWHpDQ3d6STFGUUlwTm9IRm96SXkrcDYvYVorTmU3WmNwUURyWUxkVVIx?=
 =?utf-8?B?NmVmOHZLUzNucm5iM2NqQmRIN3ErN25IS0JoNkowODNMNzF4c0V4QzlnZU02?=
 =?utf-8?B?VXVVZ3RNcEE3bnZZZHJnbTl4bTZaMDBXOTFFSUloQUVQNUN2Vi85b2lvMnVu?=
 =?utf-8?B?dVBKWWNINDNKc0ZJNWJXNFdiN2dvZUhQQjhDQkJRWUVoaHNLVVlXN05RaUtk?=
 =?utf-8?B?WGY2N1BsRmNQcEU0clB6ekhqd1kxbGZpcGVGdVpidHFVNzZyaFhRbDlhZWt1?=
 =?utf-8?B?RUVWM1Y1UGVwZmNSVC9hSkRzQ0NpMEZJUm1XZ0Z2MzJFamJkN1o1eEdzZC9v?=
 =?utf-8?B?TUhvNFVWcjdpUlZWLzRzZnhEeG1xOWo2R1EvNDJQeTNjdHVjVy9wMW1iaGhB?=
 =?utf-8?B?VWo0MlRaU3FwYm15YitnSTZITXFtUnNva3RXbERCV3pEY3NkSCttWFFlNW00?=
 =?utf-8?B?MFoyMW5pL05OaGo1NGRDZnkrYjUzeDJqMTJvS2dncm41VDlmTjBkeEMwSWFW?=
 =?utf-8?B?eUdjMkE4UURjNldacE1sZ0Fia3F2NWFmL0tRNnN3WGhkazljZDJSbW5BKzNi?=
 =?utf-8?B?N3ZtYkpRRDFGN0c3a3lqUFg1OVZPaEJ5YU03RlkwNFcrWjNPRFZoL1RXT3Yy?=
 =?utf-8?B?RmlvVS9IY2lXbEtQTkxHd2VnTE0yQnZCWVJDMHFMQWF6SjZsanhJZHRoQlVJ?=
 =?utf-8?B?STk2ZHNxTzZ3K3ZFdkZnT0pKWUlBQ0c3aFpTNkpGUzZSa1I4eXBZTWJzajlZ?=
 =?utf-8?B?YkVYU0dsZk5mOWZzZG4yRlVFbUZ6b3JCbEdTcXZnVmVYUW9FTVFwcTJiV0Nj?=
 =?utf-8?B?LzNPbGJkWFcxVDhERHlmbitodjU2cm4zc09zY0VIU0FhRExUcUVBc1NBRDU2?=
 =?utf-8?B?eXpGalNvc05IL1BrUzBkVkZWZGpJM1BHczhidVM3eTU3bFhaaUEzb2hiRUNM?=
 =?utf-8?B?cGIvRnAxbWhLRFhFalhVbXQzRnhLT1VrWHR1Zk1IWGUwU2w1c3pYSTVkVlcv?=
 =?utf-8?B?OGFqVkV2YXkwdU1vcDBRWUw3bi9pL0VYRW0zMzlneDlPRktFWjRhdGw3Q3JO?=
 =?utf-8?B?WlRBK1dwRWtVK1ZxUFh1UjUvZUZvRGJSMERpTkg3L2pMd3d3ek5CMHJjN2ZC?=
 =?utf-8?B?bDVkaGVnRng4TC9FUVQ5YUNaSG1kRFZCVE85ODZFdG5TNjN1eTFDVmNDK1ZE?=
 =?utf-8?B?OTBHUjUxTkt1MXd1d2Uwck9laGk5VmNVd3lPbnJBaDRFeENSVTRYZVU2RWJv?=
 =?utf-8?B?V0V5Z1M0REJ2aU5CcHlzMnhpT25LWnBUYXMvc0s1NE8zbE9VYWhnSjh5K3g5?=
 =?utf-8?B?SXROSGJJSkJUaUQ0NkV6VFdZZkJqMlU3aDc2NStOMDNlUjlhWU54bmd2OWFY?=
 =?utf-8?B?RkRJZUNuZDhockV6Q1JSMXlFNDRLQ2N6dmlJQXFRc2ZmSjhJbnlqMVkvbW1r?=
 =?utf-8?B?R1JISC9XazZJM1NCRUdDMGhQdXFrbUVReHZLMFZGQzR3WDhjNy9KQURMdHUy?=
 =?utf-8?B?K3ZNNXA0L3NaaG56YTZRdldQTzZhV2J0TU1rb0RWRWNQVEtjS1RLWlhITEUx?=
 =?utf-8?B?K005QTNnM3JmSGttNXFHZ3g0R1Y5U0NuRHdPMDU1dWc3TFdxcTA5UU05VitI?=
 =?utf-8?B?WjVtVTdMNGhiSHhlVnJYZC9mWnFmRjNkS3dpYVlqMGtlY3VmUE5UN1EvVzN4?=
 =?utf-8?B?QldKMlhrV1dTZHlBSUNQZTF0MnlrZ1BITFloU0tOV01QdEUyV0FPRElibFFT?=
 =?utf-8?B?TkYwcmFSaVVrZC9nalkxNEJvTS9aWWZJb0hYcGxxL2RQZXBNWTZJUWlQWGdx?=
 =?utf-8?B?NUlyR2ZKRTMxMHhWMWZGT2QwWXBGQ1VNcTFQZUUwdTlsTFhLelJJMUFaWVFS?=
 =?utf-8?B?U08xMTNQQ2x1QUJ0emxVY29Za1JTRlA0NXBpWUh1WVB6a3ExdGZWYVBUMjRt?=
 =?utf-8?B?cUhGSmpmSkpHRUlzWmhYcXc4YWNhaWEwZ3pHNTZncllOVFUvN1h1NmhIYW13?=
 =?utf-8?B?RGQvdWVUVWh5RG1Md2c3V215dktBVGVRL0NHOCtPZENmbThMcnZ0ZFZaRmRt?=
 =?utf-8?B?QkxJb0tsaEpSd0tqRUhzeGJIa0xCVnJRYnJkZ3B3YlQxdmpFZGh3WmJpMEIx?=
 =?utf-8?B?ZkE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4771.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30bca623-1435-4a6f-20c2-08dbf7dd47da
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 11:03:16.7912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8pcL4sM3lbdx+R7o1dmt2OOoXmUyzVL9O1ZVhN3mIg++n6W0JJGwuwfuCqdc8uVB1AwNzHifgnFUfr0HJzigrgybn5n08gIiV5PCzZLvBYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8543
X-Mailman-Approved-At: Fri, 08 Dec 2023 16:27:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1702033853; x=1733569853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oywCcxpvcq774ikp9Zv+0+tlrr44eyqIRY/PiJvY1H4=;
 b=WiviwIEPl0QdOd9t5iUq5UG5uDG9HHM7K33Eyq+F5V1qH0z+/wi2FON4
 9KlSaTgNdLGPt+8tudBUD3gaL+tyKZxYExoqn0Vj5/6bz9KgdUv4MCNS7
 U1p66j2Erea2SoblOdlyqNNzq9R7T+NDrZhiOguU8gCmBqVXBMKBxJm+k
 D182F9sqZ6JKZUi3sFB8o+Zx8QNGUVHCVluzCTCa4+fWyHDfYtEFvSeMj
 j3l2DRP0Yq8Ff3uyPyzUTx1fi7fqqRVdiglz9wF2RgZg/m3Lo9z+ouIyq
 FxDUx92rQGWWYANZXN3b7qqmHWCFh6qY7ycWjnUOIVSDOf52V7ca6fJ+k
 w==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchip.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oywCcxpvcq774ikp9Zv+0+tlrr44eyqIRY/PiJvY1H4=;
 b=ML7DyH0iq7yAVdiWko824DhgTLQo4TYysRuR7UDDrvgZojmwgZ/KhK73eDpx0Xs3v32/3j/u+m6Jfs2SDDauvJTjJ3isLg33J3fCg5ItkWsyRUKa4l38HZIo+RTxRVgUOsW2FWPlQHROahbzNj7rbTXgOxxsYKo81iPBb7cgtLWwRUXy0Qm0OhEEpGnqAGo4STbCAiVDlmmHXbfxuSjhu0yHRoPQDgRxltbt9XsTHERtvDoIo2Br1cgEwrPAjTY2tRtcdAeaGYCbCnVF75fCqolF/ARxL+06wXupaW8VLYPWg4vHHeRZoQnaK4aQnM/EuceKM9EMtcV13BGrbzJWnQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=WiviwIEP; 
 dkim=pass (2048-bit key,
 unprotected) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=selector1 header.b=ML7DyH0i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/3] net: Convert some
 ethtool_sprintf() to ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, keescook@chromium.org, netdev@vger.kernel.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, nathan@kernel.org,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org,
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> This patch converts some basic cases of ethtool_sprintf() to ethtool_puts().
> 
> The conversions are used in cases where ethtool_sprintf() was being used with
> just two arguments:
> |       ethtool_sprintf(&data, buffer[i].name);
> or when it's used with format string: "%s"
> |       ethtool_sprintf(&data, "%s", buffer[i].name);
> which both now become:
> |       ethtool_puts(&data, buffer[i].name);
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>

Reviewed-by: Divya Koppera <divya.koppera@microchip.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
