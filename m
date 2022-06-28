Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C40255C0D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 13:56:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3CA140A0E;
	Tue, 28 Jun 2022 11:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3CA140A0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656417369;
	bh=h52gxLB43WRtFW7C68pS3MxBzyZ8amyGYl37uhBZGco=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hxuj61uiisTqdKPTMUNBDQCx0h+gdI1DRdYaoqAjMoUMrCTngJ1UuCkQnxJqR1vsT
	 upKovmT85RYv166DkENRUG/sygBnBOyD9PJWAtYvFC8OIbfZGAQzrUX6ImR/E+UFg7
	 w9nEE2Vg5NE982Bl4xBK368oaz4AgsihLY2DEhAO3SJ52qrir/x3TGvqfmOlhuz16j
	 HEERJFNvPjNVo8n+ZgChkzWKIWcyXI7cJzVprQJqgr/Us7yEuQIzLYvdH+nUYHbTbk
	 2NLJ6JC8dpGkg1jDOIiarIF6PaoZqsb8vd0bBhrf2RCzI24R0BcJDSdBLNLkP8U2Zq
	 9jpFESC2UlBDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3sia5ChN1nx; Tue, 28 Jun 2022 11:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD80B40593;
	Tue, 28 Jun 2022 11:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD80B40593
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 934F91BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F7FF405CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:56:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F7FF405CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GAADtkGCn19 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 11:56:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3117400BF
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3117400BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:56:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261523276"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261523276"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 04:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="540464826"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2022 04:56:03 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 04:56:02 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 04:56:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 04:56:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 04:56:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BtKqLhVMNZzO6kF4qPb//utWI4tp/QGQCw1Tr0qjdpKBUaIN1Jm0p5PktbO3oKuoo735joS8D2CNv9Pr4Td5fXzOUacXtHb5Rz1grSEv2yMuhqL1QaP5h5MZWtWec+JtTjxqgQ27EbcruX81VQM2TsSV0Y9emNR7wSVRJ6w36m2/iZtejrE8lGnR4h14micRBha4AlcP67FgLk/yLMdtOVCmbGFnQ+clTIozpW3awLwhnUr7LinBbWmDDAEXRZ49Hws1T9QeCRQNGfZEY0ueXkZ3tChbOfjeXH//tAg04zIgbC/JXbP4YsKU8ASJe7hZBHOuXYrVC1+L6eM79zT3lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vtTZ1o+ddhT+kyaIDkC/asa8DYCgx3REorEQ+DD/ttM=;
 b=BuLNMO7+kI95GuqyY7XFtzaX9KlOzP5jpbJi2V4Pl4fE3g8FXS1JAnMYE1lTp3HqEfayDaIf9pHuL32F8X+PoIzarn4uI2dtLW4Ns1cbgzNU4PF2mq/6DkDd1rvlJtQDDn3F+iVAwRxq0+8SwKGj3rmrQnLOF1pRPVOjnslGhjOAMR6CPkrhFBlp1YGHJfIWfzQg/evIWMXNXyO5SS/VLUJ+dLGVKiu43Ry0jAUQOSDHB82QgUzRrwX73ac8HxpsT/3v1wCJmil6QXbk6OlBU10JZgytZbtlmzFsGwkEaSVEWe5QrzaaXYwBAg2kvFOHQAGIsHHGJEwXd31e/0XdRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MN2PR11MB4744.namprd11.prod.outlook.com (2603:10b6:208:263::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.17; Tue, 28 Jun
 2022 11:56:00 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa%7]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 11:55:59 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add support for vlan
 tpid filters in switchdev
Thread-Index: AQHYQDOOzpEpV3ZgdECHKcHEJIWEOq1lSzPw
Date: Tue, 28 Jun 2022 11:55:59 +0000
Message-ID: <MW3PR11MB4554E5241DD26A1D18654F9C9CB89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220325103048.3371-1-martyna.szapar-mudlaw@intel.com>
In-Reply-To: <20220325103048.3371-1-martyna.szapar-mudlaw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e494cd5-837e-4d74-b878-08da58fd2b18
x-ms-traffictypediagnostic: MN2PR11MB4744:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mOTZfKxZhT/EpN4biv3evDJpAGYVgF4yLUzcPowb37cPJmeUKtEgCLCVAlJN7rEQnzRiEyeTsWmW807y2uYGowDsJP/0XqDSa3n2sKCoQcISxt6xTlImApmJcQPVkYS+bjTilxI2Iq5iOtvNKKKhNmpNkMGlcCgnwvhE/2r4N4nBetWH9rNf0CqwgwM/oiXEDmG2NiAcGnagO7xQWqMvPzY5/WIvSdZxBIw9KrI/1+XvCMxhdnRtQmOMSK9VXWYyEaHFZ/qt2UJz/YwQDGRAyFcQRPgvRHS2zHv+Cxgrte6BxC9FQNG30z8Y7m3B6IDKdWVAwbCtOq46AAjXAZTSt8jfm2jpZ3sT2UpWTg865KfLa32ddDMDY/ptqu8D0syN2yHgsYn1kLPKqljh+eFmPEmuBi1Liim5TK2t5GoYPUmd53LAyprhXt4bm4sBZgcZ1Am/qwDZmPFlH/oV4/OaTnvY9ZXUfJxGg6WCv35Na9v40paAm6xX65gLP+oEvYUEHm6Hwd16Am/gegk4b5g5jzUIh9QA4z2C7TIJBCtj0Y1mOMcSJdaMQU6OvHjVGmT3ryO6EImE/AFQScRhY6SbAr1ub6n6tfBFbMjBFQ+9DH16ejokZnQDrUUXYVY41jaOxS0xnycbYe9VgxK2m5484H8/myuyNf2xDGLqsc7TZx6xH8pbKqEYvw8x8ggEZ35qjftYdlmGDULByPYufV/Q/BACH9MQUAjeick7i7jrJjOPvVTVgxfjQ0ga+cKJL3pgkpkf27y+ekfB+r1JjhIPqZdFquiDXbwVRDNrkm722D0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(39860400002)(346002)(396003)(136003)(8676002)(64756008)(8936002)(66946007)(5660300002)(4326008)(110136005)(66556008)(55016003)(76116006)(7696005)(26005)(66476007)(66446008)(52536014)(478600001)(38100700002)(41300700001)(82960400001)(71200400001)(38070700005)(6506007)(9686003)(83380400001)(316002)(107886003)(33656002)(122000001)(86362001)(2906002)(186003)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ImGi4VXMndeOLv+MxXtGCIypij7J7VwZcGkCu1nIUnmjF89ems9+SfB/l+8F?=
 =?us-ascii?Q?rf0fMIKe5vjaxzFBVjKAuRuH3zpLOBjxGHuWcf/OjoOIGT4Gz543tvuKWpVx?=
 =?us-ascii?Q?5eT6hA8wEKssUkD5Z93YLDQ3bnIE2KjrNQ94uCtqDu3aKHVqlJ5QYmET1gdw?=
 =?us-ascii?Q?MS7L1iks6SSxC2w9K6Pu5MLIO9RxdRZjBVpagky0yB3xP2F5m8tTWJFbuXfP?=
 =?us-ascii?Q?S1uzjqhBoopcRXFEkREkq+3lsH+UU0ZNC9Z/mfonnMDi0Wb9gIzI9fxalppc?=
 =?us-ascii?Q?nQuj5ZJo7Yi5DD873mqMrVfWkcs3bJJX4L0ULTlH365v/7Xj5v0RgABe/jbp?=
 =?us-ascii?Q?/3h9mh00EFF0DkExz0cw2BjGkFnW5Db9BaT/hNJIbBTqkOqPNzkgEPMMP8U4?=
 =?us-ascii?Q?keUAf6EFLUZQ1zEWZc15TdJlx3zW47O2tiZ3BY2AVIlEZi6Uez/tGUOq+WZZ?=
 =?us-ascii?Q?f8+T9PgAHIGGr6lkITIyrBsS/tGX2kshCNQe4HkKUmOJLbOEBjje2sjyqYjv?=
 =?us-ascii?Q?b5T4xoeWumg/HEPnEhLIHVG7BeblVkTMp8yyieSn73ikmtKrOegwsXJlf+nO?=
 =?us-ascii?Q?32G179ieWmfoNDG1re+DM5Fs5I5qEmBHfI9Ldq+e8RJCzHf6cS76k3WUetLs?=
 =?us-ascii?Q?CNMglg6W4/G7E5hN+BHng1RtzPp1SW0jQultEvknT7/ncjxqkONrJepfqJIv?=
 =?us-ascii?Q?333n+YrDZAF3Jk0qznR7sYJiI86LNmtUa34S9LhT6vnTkm0E6afutOHlA+ov?=
 =?us-ascii?Q?rduK6R1VDOrnH7vJCKZ0ju/LpOfm565gNUvA+6yiNv5FRTDke9OYh6CmSIV3?=
 =?us-ascii?Q?c8iIQjXvUWHAzWH6ZRIqWFACL0157CmM7f5EEdsaVmbAmFMMZ6CtsTPBMeJt?=
 =?us-ascii?Q?G9rtdySYac2F6cC3nPRUo/7Pw3/jKol3oGhRmxDK/Y9ACBhgVjbydLc2WMCp?=
 =?us-ascii?Q?3KMrpnSCgdqgnhlFpoA0BS+691IVzY4U0Dg5HAqfxChsPONoXle1T90kQmN/?=
 =?us-ascii?Q?fNVy7QYD1gsv89TPi2zkZttqFDqnPgYsFAAq3RBoTYAtBxZx/ZandYlvLGh+?=
 =?us-ascii?Q?gvwbzdDSKEsZO7oYfUiXL2Zm9m4/GHMkudm3JqPqw8i9cmQGx3o3U3GBadP8?=
 =?us-ascii?Q?Lra1tMooVz04gxTxgaPgFlURzCixLO+gsORHLFWXk5vLGtA50D2575tfgQhI?=
 =?us-ascii?Q?Bl6qjZsa/6UjqochwlUUzksVzxDXmwKyQvjM8I5fm1H9gdyB7JWbhHMdUu1E?=
 =?us-ascii?Q?VD6F6mF64Q6mqUlDb0zK8rGZ8U/hys3b/WmRafh1rP6cUDpa2o5PjVbThW5b?=
 =?us-ascii?Q?C0oZzot1GRz5VyAKAbf3xke4d2r/XeEDDU8o5kEyW+c+N6nGghYnzs+Fplzb?=
 =?us-ascii?Q?Ufev8JIGLA5YzZS3nMjFRHhsGF1C7WAupWsZunmZ+VLm2maOYYucPY0y8rFc?=
 =?us-ascii?Q?T7l/mnjUPq9vrHIV37TqNnHyUzeOaujxkFMy2E8vHWx5mrkdhOLTpOCziZBJ?=
 =?us-ascii?Q?0h5T848T20orfhn+TfeOnt+yqsZO5ko24qlSAG51BC4hZEdLRwrvQKTXkiKI?=
 =?us-ascii?Q?wiac/RGvdwEpD66F5BEP7pEWYCMZjX0bht/tT1kW0q8HEMOufczvrYlZ4k4P?=
 =?us-ascii?Q?vg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e494cd5-837e-4d74-b878-08da58fd2b18
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2022 11:55:59.9044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8uZBpRjBQVmVxnp6OPND3fq1G4PRhXEKChwnhZ8wYQEeskZENJKjBcpx+2+CoYsRzl0oUKb54bTOKwZXVf8rRaOqR6gGSteigu1oBcJFNO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4744
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656417363; x=1687953363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b5s4wKz/v9hsJ8uVB8+uej7PT6VkgYEgB3WBisXOrfg=;
 b=AnvUnJ+rVRGctzfMH87+Le5n5wbsYwBGY930EJKM7ylE+Twl/1ceodQs
 2ggDuJhwNx39CDYo0MzKh2/x3jzDyRK9b39wpZZmUDQpWmzneHyhL2Hgm
 UM4qfMzRJg1uGpVZV4ISFobW+nGSyMjLETbwgiVG7gcTt5o7z9PKVeEQ4
 unw3d/zPNwV+eoOsgxIkWHi44FajLXgjvELuJw9rOsXWkXLuYhRtnVxnY
 fmoGl82RHPt0Xrk7U8UosrmHLOncjDmPnjryuvdV08AqOZVuXw13U97Tj
 I57IfXlK0G8LVSfeRkNsml/HCDyWlzCkrMLdOMIS4t/U03y19lCalMZgH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AnvUnJ+r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add support for vlan
 tpid filters in switchdev
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
Cc: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Martyna Szapar-Mudlaw
>Sent: Friday, March 25, 2022 4:01 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for vlan tpid
>filters in switchdev
>
>Enable support for adding TC rules that filter on the VLAN tag type in
>switchdev mode.
>
>Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
>---
> .../ethernet/intel/ice/ice_protocol_type.h    |  7 ++-
> drivers/net/ethernet/intel/ice/ice_switch.c   | 59 ++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_switch.h   |  1 +
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 21 +++++++
> drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  1 +
> .../net/ethernet/intel/ice/ice_vlan_mode.c    |  1 -
> 6 files changed, 85 insertions(+), 5 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
