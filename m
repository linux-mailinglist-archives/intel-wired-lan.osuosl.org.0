Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D14D84047B4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 11:24:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50BB78336D;
	Thu,  9 Sep 2021 09:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 79SLIcdz8VqV; Thu,  9 Sep 2021 09:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66E3281A73;
	Thu,  9 Sep 2021 09:24:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 533841BF86B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 09:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 404784055E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 09:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6J-Ucgs-Fr1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 09:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B5FF40185
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 09:24:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="218880107"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="218880107"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 02:24:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="696160554"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 09 Sep 2021 02:24:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 02:24:09 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 02:24:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 02:24:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 02:24:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFgUZLvRpNIAAh/YthMLC932x81yKJuceQmH9eI8pi+OyandH8J1bPJ/q75Mqmf2LsObkuddEPVfJpmmSlNQ12G0vLKFgsEe9IaktK6O9TpHNEirS7PuE05V5fb0LMh+dYMmMKayDHnKwfxFGO3fureFJ3GRTQKQNhvj4YEwT2XBYQGu+kBDuS6dYxxGjdA1xGve8KDZ73wI0bQEJKNXIOyxJUR08+OQGW+BS3Gq2ZBhSb6HdDjQeYNVeSUc1QleLmdoMwAuv3nzccExx/cCoKa/djOyvQTKgV44zTfaNyF6oxvyoCkEW7Plh3ffZlOEPPstT3peXJum3drtvyyapQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=n9fKmtHbiviq35kzxiDCoHW/4IdvTHwwpEH2qgsRZ2g=;
 b=CAC0B3ZrzIszI8OVaFee7YU139VVFCS3cHVJmVYBTiR2jsyAUaLh3f6SQhzRkD1GsNGviG8arLvL9dMWm+wNGcftAsVQx4IzLgAl8AEcFJVnJh+iLyt2HZUWSTAS5Kupgg9wQ0J8DWYOjzUKSmwB1kf1xB468z04Mi+Vyz2kJWBl6SrHyvytN1IRqc1cmDW0MG2+hwKXSftZ3RuhF1P1jfOzqPd2QrgNuF7/AMZ3YjW8PbDR3h5MfhIvBZrg+lpezSz+lKpY5qBjJyB5WLqUTaLc8oVf9NTW8AWLRvktwtXgnrsT6Y5eQ/V2A+zbKenhXv4QMT1a7qShKP34SWUGJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n9fKmtHbiviq35kzxiDCoHW/4IdvTHwwpEH2qgsRZ2g=;
 b=NNQaDOT9/Dx70QRLmqKVWiuzYRRICoWt8JiEGik9a9aVv3136CLMQjRO10v9Yd7VLJJI/KVvf6P0yffjF6qFUVkPkEbEury0VKNYOLLlmY8PqMxK0ySzCWtYZ4e9d9mNOm4JZcl+YiTfBJUpXBI/YEdfLWTxqSlhuXvRr0uwpTw=
Received: from PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Thu, 9 Sep
 2021 09:24:07 +0000
Received: from PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221]) by PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221%7]) with mapi id 15.20.4415.029; Thu, 9 Sep 2021
 09:24:07 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH net-next 1/2] rtnetlink: Add new RTM_GETEECSTATE message
 to get SyncE status
Thread-Index: AQHXoNimVzUXkjuVtUCdGyBU/1Tj8auS4GqAgARwniCAAApOgIAAAHuggABqPwCAAH2kEIAAa06AgAADpCCAAE4LAIAAxVmQgACTXICAAAjlIIAAWwUAgAAPkwCAAAwiAIAAi8MggAANkZA=
Date: Thu, 9 Sep 2021 09:24:07 +0000
Message-ID: <PH0PR11MB4951328A680F3D0FC7F9051CEAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908151852.7ad8a0f1@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YTlD3Gok7w/MF+g2@lunn.ch>
 <20210908165802.1d5c952d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49516BE62562735F017470A4EAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB49516BE62562735F017470A4EAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc485084-82ee-40a5-1e8a-08d973739330
x-ms-traffictypediagnostic: PH0PR11MB5112:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR11MB5112AC3484821B21627A56F7EAD59@PH0PR11MB5112.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SnU69RXSDuiB5kwZKcDt5+Crfx4Joc2Gj+T3TTqJoGOBx+xA/R46LkpDOqR/h+//wqoBD8f3R1W7Rqw8aWAUMYcUz15cwBQ4KbxU7O0ysWpl7R2jmUSyi/7nDfyR3lJC6aLG8tkmTCikeW2xaZq+AC0dey/eUYY+b+FjXsvwPKnYwtLfvl79NpnULm81+LUlWumRD65i8KkM2m+rVuM8VC+dB1l775Nj3fXNc7yatoie4yDmfzrCjSW7qIxSxupxSHWoBuEbpc++iZD98gxuvZivhPWtAOeJQvnhc9w2jXd2Lf5VEPen/Njbgc8xMGSgvK+5Uok2ZIT7oh7wYmmZTO3wNM633OEoL9I8K3VuPA7ruKhozwBlrGmNK8QyvhH9B+Mha/a/MNi09mmbYN3KM1EtH3jkwj4hsGIAYXYN+iKA+iE1v8VJQyBz+aIcwh1OItjJ6489/UBX7wYcYTUxvh3ydOXy6E6Y3CeXtRVyPn5zSQuScNQufALs/Wj+SAzpnARCScRJN+xgWKQI50pfBWQEnEURwqAWEHCm8ghoGLjDaDnjsdHqNwZtMw+bU/bOTD3YGXBLhIYrtozY+ypx00XA1oNJHYdthQAQWSIpU5stXoPA2jQGz1KMHuCtbNnevr8gNb6Kxw46qLmc3rPTLM0IwoBljH3eVUZ5yDo71f3jb/2cNl+g6jDaTR3Wd0wB/ItkVGdWVdK0xwqzdqo5lQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(376002)(39860400002)(396003)(136003)(186003)(26005)(7696005)(38070700005)(54906003)(83380400001)(71200400001)(110136005)(2906002)(316002)(6506007)(9686003)(7416002)(76116006)(4744005)(55016002)(478600001)(5660300002)(52536014)(4326008)(8676002)(66446008)(64756008)(66476007)(66946007)(66556008)(8936002)(2940100002)(33656002)(122000001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GEHZaZKu4JhGReSxHJCzgFrVEYL8D6IYS1oi9+uZIsLI9uMbcuC8j+jKi+t8?=
 =?us-ascii?Q?vEZOM7tsTBWAhOaPFOwjCIr80zLkzuyfm3kLwrbd+U48lRRhKxEnnHE1pB9i?=
 =?us-ascii?Q?miIG0lDyckZLeJK8MVIgebC85ktCQMIykRew77OLC5MCD5kyGMAimiWhpO1z?=
 =?us-ascii?Q?PykKcs7dhpt/2016ZXx8xv6Snlo7RdkAoMIfilTDdsVP/U/awlhg5PjTb7++?=
 =?us-ascii?Q?aMBLqMNvohfrh4IcHe/ChMn3NiJ+a77tY2Uneycn4LM33qvDXksCgPtpxQ2b?=
 =?us-ascii?Q?r4IpB12VyzTbrlA7/giOYlHRkPOp9pMFt0C2eZPqtuuKPtl5wBE6tGdU32aO?=
 =?us-ascii?Q?Z6grfx8dOrjuTD/p0VCD85q9AemYrkWbPkCfYcydMI1mL+6j0wM7W9ay/Gkd?=
 =?us-ascii?Q?GfL7ZEvlrsUXbsanPYBEJDye2PHOVxra3p80LLZ+dIfmflIC8Vp10b5jb8L3?=
 =?us-ascii?Q?upPZC+cdkoXPQJzNbNizCIsn9xV0wHirxFi1qHaMi1pG7pY0+/WPbuTsZgQ2?=
 =?us-ascii?Q?qb79mwqxoJ2ewaPSvade9TXiVd2Dxl6YVtuZJMr0zZ59Yb1QkWeFbhuIgcIO?=
 =?us-ascii?Q?t6RavgnL7US/IsdVFWdm0JAugP5s0s40nR9mPhOsxlDOWLzI5K+QPXt6U5V2?=
 =?us-ascii?Q?BA661177N9dLdB3Jq7a8rLk7yaUy/PiT1S9H2K8OJPRMeEwBo1G24YinYvDN?=
 =?us-ascii?Q?e4NI5xv8GAqtHpT1lXmqy+se4E7L+y6W5Xo7zf7/Gufpxsz/ESqnZ6ee9P3S?=
 =?us-ascii?Q?2KDSG0KJu0UwfiAW3Pl49BB6LUTFggPHXgWzRLOy35VN8jjvW47M5eNDViEV?=
 =?us-ascii?Q?b50C3yC5W4HsXyx2dg4apWcNrwqeHwWBn9QTah7L0QohQu3RIl+GWlXrV+Wz?=
 =?us-ascii?Q?bq6Uo4UBIiqdAoz20ptpsJZpcDjYX2K89P89j69QAyM8fE6XZ/Zv896PIkZj?=
 =?us-ascii?Q?UGTeYKS6Iwds5NClD+dyANhtaJUdCfbRmiba4GxMaCIXBViz3zm6gHk5lD9v?=
 =?us-ascii?Q?ZeshFOecgPQe+Gk0AxN2jUwHmo3373WusMykVklSNXJ6FnsGQctVdA0rSbav?=
 =?us-ascii?Q?mitn2YqxNYTzAloK6WOQINuwaU2vpmfwFlll67r03ZdgemeIvago50Gqvxfv?=
 =?us-ascii?Q?4PGTEkjBFxl+h/cq2RKVckLq7784S1984iUfnMhmkjKQ1r2kouxSbLbAekpR?=
 =?us-ascii?Q?vMIholW/UWm+8KPV4K+QvWZLsj7ppiK97ngPpDul+xB8hwfMxOGgwIF71QUd?=
 =?us-ascii?Q?LVIUBulsbCSqVWUWeO9e0Q2zUfmv6tbuVtwOTxenr6wuaJ8P3V/mNcaGaQ2v?=
 =?us-ascii?Q?8EM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc485084-82ee-40a5-1e8a-08d973739330
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 09:24:07.5999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8XCTeORUh7DgwWM2Ixc8Bvi7ZZmWN4Zdlr0HW4x7923Y9/Pdw0IWQk2HJ2FtbEG94YXoLf8OPg+LMBVf/WaDAeqwCKSnNefbnEHoZwnMlVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Saeed Mahameed <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Michael Chan <michael.chan@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dave,

Are there any free slots on Plumbers to discuss and close on SyncE interfaces 
(or can we add an extra one). I can reuse the slides from the Netdev to give 
background and a live discussion may help closing opens around it,
and I'd be happy to co-present with anyone who wants to also join this effort.

Regards
Maciek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
