Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5C780A8E3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 17:28:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F8E983E38;
	Fri,  8 Dec 2023 16:28:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F8E983E38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702052893;
	bh=sSoi7YycHBUQ59q8+8zG1oerOZOXFbd7akdGGdv9ZGs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gRs/55QPdL9n/Sowmm1XYP00EWSQvUYoPuSCCiB2lRCT9CMZXfLwX7hpl5RRBKzhd
	 g6xItw0kjKS+OrYqVTl8sh+iONFXyIvfzZ/0S4l8YNIppFYtLQVUTTtJfroObaQrJ6
	 nrJ7pq503K8iDTDjxwYsgBwgLWLRjJt5QtXW7VI7c+fMrrvVxzBPYIiBZcnmU9d4am
	 KK08nUgxugigEXx+azzlKu8G46+81cU/meenzFdAOg92mN4JYXQo8NTS7kTtnfwfEq
	 4hFV453ycomDJkUPZtI/bl9GmnIGQgAFQ8pY6xkoqNRaMEmgFC4FILo37b17vEWh6U
	 bcH8bxAWoUhgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mEp4kssH0wPb; Fri,  8 Dec 2023 16:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E714383DE6;
	Fri,  8 Dec 2023 16:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E714383DE6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AA601BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A38D416E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A38D416E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hf5QssdveDdP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 10:53:43 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Dec 2023 10:53:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E32B24161B
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E32B24161B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:53:42 +0000 (UTC)
X-CSE-ConnectionGUID: 3e0NrtFURd+b5G5ahGbLkA==
X-CSE-MsgGUID: ByjXocyMTD2zBApuqawf4w==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="180148518"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 08 Dec 2023 03:46:32 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 03:45:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 03:45:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAgIk/6QprF53h2o12pUFOBi49+RtBzI6MDv3h1HrxN+UHO94bdr2jApmg4YhxUb2ftmor9BzHtr5L+91LtgNPz/I2OOkYSKOqw//H9CTGCvPr/M1xld4rXFEsJNPYp48DLlcezIvnwLczrfa6b5e74YzD1Rv2v3BZ6kDQwhfwdymQ/+5/FypJT022n6+KDpzE7OE8yychhqDyWmQ+weZjpNv8+m5KqcJ8qnXQAHvICzfS1uTt9i0XRa2BFkTbCPmnKYlSTEV+32cKQRR6HHnOUxoqgMzZI8oiTBrNqSHA/jRV56tjRkTPMKPuFA8UbLrZCyDXb3TDI7rPl9NlllWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TFzEVkrtdkDnecnm4Wpk02bP9YsYLIVSeyZ6cPyg7OU=;
 b=iGowH8kB77pa6VxsozIleBNNKSftdyZgMy9crRuivqPsXzg4g1IHQnQ1Hfuxuoslr4gEzZxSQmKe8OhIoM6qPjxWmEaswtENXPRmeo9HLz3P6GAGZWdqzGz7blaZZs8l2QDFfUmqnURuFiUDuvhJdqbh5Uza3LpsM18ne1C/0lIMeVXuEYcX29niC4SgYSFAGi/+sP/5TwLc9CAOascWpyAy831gfTAsH/CcdM6CwZbf2VGrttxogRJysF65Wo0Hk12YWo/2NAOEhfur0the43+ozuUKME5Ww9iTRg2IoDd2x6+DZEhIYCzU/Kw3TLy8QCHqVKUnp59CvxIZazJBuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from DM6PR11MB4124.namprd11.prod.outlook.com (2603:10b6:5:4::13) by
 MW4PR11MB8291.namprd11.prod.outlook.com (2603:10b6:303:20d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 10:45:56 +0000
Received: from DM6PR11MB4124.namprd11.prod.outlook.com
 ([fe80::af51:1aed:6d1c:6d64]) by DM6PR11MB4124.namprd11.prod.outlook.com
 ([fe80::af51:1aed:6d1c:6d64%7]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 10:45:55 +0000
From: <Madhuri.Sripada@microchip.com>
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
Thread-Topic: [PATCH net-next v5 1/3] ethtool: Implement ethtool_puts()
Thread-Index: AQHaKJpSOq0mHraPM0S77nPVwW1Wl7CfNdhg
Date: Fri, 8 Dec 2023 10:45:55 +0000
Message-ID: <DM6PR11MB4124F675444E8BA0523264F8E18AA@DM6PR11MB4124.namprd11.prod.outlook.com>
References: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
 <20231206-ethtool_puts_impl-v5-1-5a2528e17bf8@google.com>
In-Reply-To: <20231206-ethtool_puts_impl-v5-1-5a2528e17bf8@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4124:EE_|MW4PR11MB8291:EE_
x-ms-office365-filtering-correlation-id: 795540da-659c-4df8-0aa2-08dbf7dadb35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h/+/FTei1hfSE5QUMpHFvgmqMd6ersNN1yNf/rcvXbzkM/PaCOWaHWASxhzd64P+RUAXEDasAJfsfkTHSq4H9o9O4pQnmnHIa0eeeiC7d4Y93tWz1faFw5+eMg6BwN8b6e6gwQewNfwDkOLRbpZ4DL7N3MwsyI+SRyNVd9XGCjiUVVhK4G9D3f6CxENCWl4x6/rkcHhRqW0sCMuoJdTOezN3pk8/4KSHopbAWDwnQUc16dckqNWZEE57SILnJH35oA5nzUfTMi1uu3rhEgBKmgIYQQuhulVshcQRSV6N1u4z1wal6F7TRPYh5zbE6yWXrtqg+McXFl9N/+pbzNCFamtoUy4c/UQU0qHbiEtrwuBrfxEvC+2uWjcjYW8nUBiEdkcVNBXtRkR5bnycRwGRPReqL8tKQwG4os64L9k4SVCvhMbOWVvncVaE4SyjWj6qzruLCkeFYKuROJ11EPq4NpqHFeo8qVRfmv0dauTIiu8kc4H2YucdRlROsOEym/Ct72NbsvcKStZ4ZkurI2Kypc1HzRmIbzwOXmWkdgqVXoqwm0jxsBv98j/dFLdmJJXyEVREslvtPceypUIovDCJv0V+3hh/qnXXjgtIgToAOIZkGtkUmcqvAghKbLbNSY/UL4/Lm8g+ZbiU9ffEainEAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4124.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(396003)(136003)(376002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(5660300002)(1191002)(7406005)(7366002)(2906002)(7416002)(52536014)(4326008)(8936002)(8676002)(86362001)(38070700009)(921008)(41300700001)(55016003)(9686003)(558084003)(26005)(66446008)(64756008)(66946007)(76116006)(66476007)(54906003)(66556008)(110136005)(316002)(38100700002)(71200400001)(6506007)(33656002)(7696005)(122000001)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjMwQ0U5WTJDcXhPT1lud044ekFxVGpycU15UU5YZjdrUnU1UWdUTUZ1RTd1?=
 =?utf-8?B?WU9yMFVMU0k0QVU5MVlVVlE2Q1Z3N0RmdU1HVG8zRnNWQ1ZydG1Xc2ZUQU1u?=
 =?utf-8?B?RXFFWlJPWGhOUUx6Q3Jwa05wN0tGQkVkSWMyNVB2QzhVSExJTDhCZXl0Mjh0?=
 =?utf-8?B?ZkRiVitKaFJTdWs3UDZaOGFCOUtObnN3RkJGVkpqTXFINC9WTWpDdXY3RG14?=
 =?utf-8?B?eU02RjY0Nlo0Tk9kTE8xU0NtQ0x3aktLK0pkUzN0RDB0S095Z1AyN2l2RVZn?=
 =?utf-8?B?QlRDeitrQ2lVeFVkOVJPeWJQZEJWak9JSHpjZU1QdHpQZXlwakd6REd0Zmxk?=
 =?utf-8?B?eFBzVUJMaUFwYlpEbElVWUZaMFRNWmhyOFR5Qk9tK1FEM3A5VHpXMk91M0NX?=
 =?utf-8?B?UDNkcnBveDhtTVhUaGVvcVl5eVBVaUFrK2wxNTQ4b1pVZ3E0VHVPQ1hDZmhy?=
 =?utf-8?B?dHR6VlRybk9VV0RBVjJmRys1aGJNRXNtbHRhZWkyT1UxZ0pMZEs3Nk9WdzBa?=
 =?utf-8?B?SXpkVUdqbzZCVHRVVStlUDFBaUxrRHdqcDhSTFRUV2pkaWo5TnNGQjh2SWJJ?=
 =?utf-8?B?cWNGNTZWVlZIUlRmaDhtNXZ3TWhxbUVKZnJJVkM2RmFmM0VTdjg3b3VIQlMy?=
 =?utf-8?B?UjdkYWs1WkVqMm9NUWRPODJENGhIMUMrZzFXV0RLYmhTWDVXd3hud05jRDlP?=
 =?utf-8?B?Z2FyRjRCNVl6Y1RPNkRRN3IyTGVjNXA5Zk1CMEV1TjFQQ2EzVkoya2lKekpK?=
 =?utf-8?B?RHBNdlVwdW9HbHkwL1B6R3FBR0NnRzBHOGx0eCtQL3JKN1RYbkdudHNDMWw3?=
 =?utf-8?B?MDMyZWtvNFdxS2x6OW5hOFg2VEJ0T21PNktRRFpCdS9oTXd5NmJtR09aaWMy?=
 =?utf-8?B?bFhDeDZ2UUt5WWJidzEzSU1Gd2tSWlJrWG1VanlUb0RMay9MTXIwTXhxRWM4?=
 =?utf-8?B?UzJ1RUc2TFM0Y3dTTkVyYW9sWFpoeWJOa2xqcWFnNjJTb3UzMTh4ZytMdTIy?=
 =?utf-8?B?dS9NQ0p1TWtUVFJWbWk3RUhVZTJVN0FjOFJhdUlwNkVrOGhZNU94MkZtRE0w?=
 =?utf-8?B?SFA4ZmJZSk9FWmhON3ZKN1p1YjVxVWdhWlVxTU05M1BGdlJuZDdFdVMyQkc2?=
 =?utf-8?B?Q2pWeFFCZDd3NlFqT3FHY3p0VDRRUi85Y3NJT0xpU2F4YW9GWTlhYjRGdGo0?=
 =?utf-8?B?aXh3SFJseVZDRHkya1haejlQMVVTb1p4NEw3L1B0eXY5NVZyd3dKZ0NGaGcw?=
 =?utf-8?B?NklFYmxPV1g2cW1tdDJGNmdrVVY0WUVRdklLNVYzeTNTcGZhVnNDY3ZpRnVK?=
 =?utf-8?B?NXBhZVNYSXY1aU5IWVJLYWthL0RXdTNFdWtqMHBrKzMyUXp4RVJ6QTdZZWpy?=
 =?utf-8?B?TXZFblNLRFVYakQ1Z0E2eUhIM25mcDZGNkZTZmNXR0lwNmdINHF4aGpaSXk4?=
 =?utf-8?B?NzREb2tpZHFsVlRseE5KazN5Vis0VzZycUN0SHdNTWhaTmh5elFMWGtudlN4?=
 =?utf-8?B?dTlPUktpdTN6V2s3RVkxOWJjSEV2OGpLWW93cm51cVNrd1QzTHdhYjh2MUZN?=
 =?utf-8?B?ZEZFVHQyVlNkbnVtR3dMRk1sc1BXdGZxY2haeFh6dmhhaFE1cnlqcUlQaXI0?=
 =?utf-8?B?RjhlNkkxUFJTdElrM2Znb3EwTjBNTmRNMytzSWhCVllyeHhOVnRsSTFMeFVE?=
 =?utf-8?B?SGhCd1UweFZaZituQTRkb0hIQkkvVEtialdXNmRVeVNTcStWL2RpakFORDRP?=
 =?utf-8?B?Y3g4WFVTcWhYK0J1eTFqeUJkZ2krKzg2dDRzT3BWSzRZcnNyU2paTGY0RWxm?=
 =?utf-8?B?VnJuTURGL1diWTVERG1MZHgyTlk2Nk0zb25RNS9DZmN4Nzd6dGVXZnE3NHZF?=
 =?utf-8?B?cEtUSmkvOW9SQjBUcVMrUFZpUEZvVVl4M3VGTFJpNTB0cWNzWmFkeCtPbEtu?=
 =?utf-8?B?aVRlNldub1BETU1KMGdWQVF4ZVRkQjNBMVozZzU2VlhJdER6RmRHQmNQU3Vi?=
 =?utf-8?B?alFmSWErSkVPN0NGZHpxQkZzdDZjSjlEY2p6eGZHcC81SnFqSjVuaTNNZjYz?=
 =?utf-8?B?V2xhTmkyMkhtWTE1eDNtRDE0UkU5MXRRV0ZCcVNXa3Z1eDFvQXFmc1duMmhv?=
 =?utf-8?B?Y2dDcjdHMlo3dzVBQjJleW1mT3djTzFKWlBsUnIwUXJQZ0xrUEZyemUyZyt1?=
 =?utf-8?B?cUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4124.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 795540da-659c-4df8-0aa2-08dbf7dadb35
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 10:45:55.5444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KZwULr+JuDj2/keqFQbk036G7+tYZ/Dgb93suShdlzQYZwEUQp8TE5MsiZSkOYdTORdQQmvTdzTy4RkFvXJN6w7a7lahGm1TuwMiQk++YhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8291
X-Mailman-Approved-At: Fri, 08 Dec 2023 16:27:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1702032822; x=1733568822;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TFzEVkrtdkDnecnm4Wpk02bP9YsYLIVSeyZ6cPyg7OU=;
 b=PjsFnyF1301/Ap0vNkwnBjpKwJSvmF8qycVIgE3ogEemoOozQUfBH1Ak
 drkoDVbCiSz3xMc5ISValQwEthEra3saeT6LXdyMlhE65ZQgKsZ1Ed3ch
 eamGq+xa3QeAI3FYctgZ0p52O2MLXR87YJvwNUhvFZcLJu880aiv9KIei
 Wyf52ZVbr9ODdf+0SCQM2aufneRjGvLdS5cwHuVn/rfQlpShiEZRYCxze
 PVYTaV3CxOW/WbAHtGanhP8GivI2PBuFmTAqWlf80WLFyrhOKyGXlYwRc
 sfvv9rYa9vizJpT4+w83Dk1ubcmuK0r6UYPctBgooZj3Uv+kCTt3Folil
 w==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchip.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TFzEVkrtdkDnecnm4Wpk02bP9YsYLIVSeyZ6cPyg7OU=;
 b=RyxHwG6VRm5i+ZgFUEU+j3FjkWSCQw3uuWn7H3SM1el3XyNr3yhjTQj71KhPgwMTTNST7VMFm3+fqtVyp8KzDN24gZo0isG1ANS5jnnFYaIeKLNdLKJaZxJAU0F+QdhMgxs/tr+xsQlsKd7Na9vrmyKGrJRJMb0GBHknXXc1NEEvFr72BrDE7iLMerShol2d2eWFkjI1SK6S30G+/7UAdPDRjkeYVSWacP6UxYQu6xAPT5lsy9jnuDM/wI8ckx5WHDsAzg2JEshIsgGEmfpoTh1dAc+BO6yF/tByl5iHmnMeeeRfKovwu4+L34NBxQq7fB8Hkni7QprNW1R37HvwJQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=PjsFnyF1; 
 dkim=pass (2048-bit key,
 unprotected) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=selector1 header.b=RyxHwG6V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/3] ethtool: Implement
 ethtool_puts()
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

> Use strscpy() to implement ethtool_puts().
> 
> Functionally the same as ethtool_sprintf() when it's used with two arguments
> or with just "%s" format specifier.
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>

Reviewed-by: Madhuri Sripada <madhuri.sripada@microchip.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
