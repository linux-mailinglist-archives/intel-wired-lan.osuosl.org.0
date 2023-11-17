Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DC07EF6D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 18:14:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1D8B61304;
	Fri, 17 Nov 2023 17:14:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1D8B61304
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700241277;
	bh=2K0suFnr4QOhllxvEytCrpOMUtxgnQCW0kFzti2qxd8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eHLWDruXyjE1EY5Jy+qFHI8IwJ7k+rWpWJelLz01qSoO7AEzO3kkxITcg8iDewgdd
	 fVqkcX7dHUbMwCpcgviBrzi9/C17NJngXubI0vCsIUr1c/UbczgUkn2Ax2MRdABP9G
	 tBhK6Wd85EMw3dNRH/1rU4LUxmCJH1keq6E807yA8bkaYccpi0UANNY+tUhzG2F7GR
	 CyWksPy0aRwg8/tOBaUhPNQWaMlnZ2aFhAaCHVBqhF/muNZvqqrpwyFvdAXU2ucsjh
	 M4ndBdCdyGnZ4qFJ9/EG2QEaNPWH15izJGmAEYQhdyaTmg36jaGaT38HpfmcEhUtVD
	 Hte80VeM6CrJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8HoJg_p4BqWE; Fri, 17 Nov 2023 17:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5287612C3;
	Fri, 17 Nov 2023 17:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5287612C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE7B31BF329
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 17:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4CFF8397A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 17:14:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4CFF8397A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U2ERWyGgMGdn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Nov 2023 17:14:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C00E8361C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 17:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C00E8361C
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="395260787"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="395260787"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 09:14:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="715585414"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="715585414"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 09:14:28 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 09:14:27 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 09:14:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 09:14:27 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 09:14:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GQhaSp31gNe175lQifFx0brTP+1pvu7G3STD/73Y6xWkIcp8x9a6+MA06+vBt6gOx60qt7CzU1SPYxWzD4OktNbms/hZRtVRdLHFzOVR6s7iByYrIXagl/z4Gf8Q5k5gXXis13SnS+9jPS6EK4DFxLUPXjxRJstajO/AJOmbxAxS1glDVIH2+CtZGnvWzO1ahmFD1d5JYfbgsmmpffC8N98w2ea6KSJH3QntMJHFGiqixU+mZT7sEjZHGH6zJoz0bX+7Au7a/UJx2WhjZPkYCedXplegFkuN9vW3T3el2A+++IZ+HQP15woBUGo2cP0ilXdLyprsO/g3DTsRGQMf4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TS47j+kX3L0DG7W/M7Q0WDPsnFW0VMC7LJSKSUpNCS4=;
 b=PJ+h1h3W915EBosyPoQfcVG9PbwhO75wlVEHEeQy1/tsogZLVl8FTRunKCJLNfQG1kyAXCAMTAlgO6fklro3t+79SqVmNystpVttEnJSPtZ19URLX2pl7iFiKvkGXsY1dNBHiyPvlmwKBBMrVbVal+89wR2dcm2LBHgMWZ9NIDpnJTWw5t2CNeXC5voqOFBJabFay2EZJHEdGbPmgFr6Qv0cTWapt+GwPo/aC/tDx5WpG/9ODz6tXokM3aGFjXs1r4St9M8GCRk2f1A4dGZrRXDY5ZX6MD18Xs2/b01sz2Ia1aDXtpa+wOrSDRH+HIKC1Dq5bwcoc5ZvwVX8+StrdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Fri, 17 Nov
 2023 17:14:24 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de%4]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 17:14:24 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix VF Reset paths
 when interface in a failed over aggregate
Thread-Index: AQHaGOR/y4ga1R0REE23AcFMLTskCrB+wPLQ
Date: Fri, 17 Nov 2023 17:14:24 +0000
Message-ID: <MW5PR11MB5811F86577017F7DFCBB350BDDB7A@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20231116232842.1999143-1-david.m.ertman@intel.com>
In-Reply-To: <20231116232842.1999143-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|SA1PR11MB8427:EE_
x-ms-office365-filtering-correlation-id: 2c0a66e6-46ef-41ca-db41-08dbe790a5a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cnDlBBx5BOoffS+bvIOSONL++GwmZknAymtV69gx+NoY15rUjhpeOIp9QL2L2KdDGHXGAuuosutM0bP2Tt8co7iSL97ynZ+Np9rhqV0CVU/XEsx3OV0MXgx3pUeFpO6dZUAG10wsjdvr+eCsRlw7uRV6Kz10WmOxzwRtOnKFkVdimlxyGWAYBHb00PlejfyNlO4x3q8mLucnrZqISdfCdCWtAVq/lpaEMP0yi98hfJCKZ4S7egu1xxh2+1Wsr8eTTjT4vCM75pVyTWY9SBOBFK1N+h81bdpFJC2aeOkh5nQHyFtIf2RSO8f7nAOlC3lgt4xxwuY8gj/iiyaSvkuw/k8ze/ENLFlhtoeyEiFFrsM+F2OYZ/IDoSc18Yu4uOvN+6GqFBuKF95ErsT4dAYGxA2EHUWLSmQSdSiWpJ+QTRkFcukPdwSyQCQTK6RkbD/gCbzlqdI32SqF1msXvu3YixboN0ebzQlelEgmSqERNW6xY3ztYTUCIwI2sZ7IfvJ7WMjpHm5OHlx6r69TXqJVNMKMMCWLMKsy+34vBg017hAebqBT4hnMHWFepnH/lhuW5+z5zcozDu5OOzSKM0JqQ6ZvdayxnjwfoDvV2XhAsAM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(346002)(376002)(396003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(71200400001)(83380400001)(122000001)(7696005)(9686003)(53546011)(6506007)(26005)(82960400001)(316002)(38100700002)(76116006)(110136005)(66446008)(64756008)(66946007)(66556008)(66476007)(38070700009)(55016003)(30864003)(2906002)(33656002)(41300700001)(86362001)(5660300002)(8676002)(8936002)(52536014)(478600001)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Uym8oCgkn0BQooBNKkrT566gTCVn5Qvi7T2/kOeatJhFjN6A7EJtknqdKNdT?=
 =?us-ascii?Q?AIpjdB2y+92nPtVwodJ//ibt9uqoNf/yfBE7cob62opHoRmQB9CF8cFNpgnZ?=
 =?us-ascii?Q?wjZ4287azG1kp3/IcweN3HOqxTaZjnyr5ucRlS2jZCp2DKA3gSN6L6qMTm+/?=
 =?us-ascii?Q?SPcQ+B84HTOVc933pyrQnSXRrZ0zvSZeqM9ZVzJEuvDhiNTyjVaE16eHO4bJ?=
 =?us-ascii?Q?dUJlh/TAMt8OWoy1suG2D0/yVF4/7Dr4dvEg2s2LregL+Ko8FoMGWKYZaokY?=
 =?us-ascii?Q?eVswL+klbymbG7eTi07N1RQR9rt4ObaCK/VD+aPx0DtTG8+jVCeIls0hEmdk?=
 =?us-ascii?Q?KFbu59Y0aV8rypoVv+3nsJmsv2L1o1XgLAvEyYVsXzENKfDhuKGbF6ZmvQpH?=
 =?us-ascii?Q?8mbK2uL9cQcqImqAwZeAgMg6j+SEZaaoM4m3X7xqcLhZ+YaR35AHrLig4xLK?=
 =?us-ascii?Q?y2vsqRn6wUQiDQ7zvVCmW0FHnkRfFn2NV4q2jgYWypSmfNC1S4v0+fMheAFF?=
 =?us-ascii?Q?yycSOcsSV9w7EOkrKoRuN6TR5grnfuaWC8nWuV2O4lbccTfAlKDIFretBjcg?=
 =?us-ascii?Q?aIFyoNEt+7iGYzeoHQqj15jQTcXOxebRi5p3v4eNKxVrhgQFNB/YyAhxBVHC?=
 =?us-ascii?Q?u+VAP8k166uh0jGmElSSuE+mtb7jldDhvrbMFsyD/0hP6UXgsYRESst3pK1I?=
 =?us-ascii?Q?yspnnKlq4vQvPSL30w02myoVnS5ytAbBjpz+YsuAILJxwmKiYZ52BJlPYl2D?=
 =?us-ascii?Q?0/P/kZ1XbaB6BvG3ry3rzWtTriaXY9gDLghsvulm0PQu9cIYko0pb+yFpoRN?=
 =?us-ascii?Q?eiUdDwZr+GP3HE+aOrb/+VJYfMY6VFZ2OUQYEQpemLJ2hWXbseyqTkKf1giN?=
 =?us-ascii?Q?PcwEjN5A/vqE7SVC37uwjOwFBNm/7akZbJxTzewewMqqAqbuCjcO5YWK8Nk5?=
 =?us-ascii?Q?RyiIZs1kVgpnihaDLuUaX9SHuGn39U6VRT3lJ8pnzsyubKqPa5ZPmgG8fSfA?=
 =?us-ascii?Q?73v6B3XQElVySsDzCJDH8lOI7bNZ7lqsn/Gwjy0zB5w6m5dIXOQH+uP34F9W?=
 =?us-ascii?Q?XCabJ9rbSD538p2xNXF11x7mQr2ks42tXZ/8Cq9ZV9DiflqYLtVdtJcYjcPO?=
 =?us-ascii?Q?8wJkAJSNCyw0Ss2ui48aOQQV7n2BMnY9u1Hkgp9GwB3i/ascuwHHuHVUa7in?=
 =?us-ascii?Q?n5j/aDoPfhFoQZxEkBMtQwreIr+EuhYsNyqUC3YvLz3Ja6Tz8G58IXhTCMyG?=
 =?us-ascii?Q?wNeWK6+8awBz7oSDwP6oUtGSue7IR75db/7/VIWbN6aiv5pM6+mFcDwIQPgE?=
 =?us-ascii?Q?y6uwu4kGvrmj92ZMYHcgY8Vg6CVhlIJ5Fmr1R0TvOLHcIl0apcr+COw8S6AX?=
 =?us-ascii?Q?Jcswsx9SANcAKjW0m3wdKw+bM26ruJxhGij2qbVsC5zscI9Jcck8K6mOAPMD?=
 =?us-ascii?Q?jUQVxxZhnTXsw7WV/sMWJMwPmb6OpmsGABJrDQt0vzSsBfVMsxQxY9f5Ul0m?=
 =?us-ascii?Q?RWi6BgQ5E/aMpThafsgBTIlN38txwXeSat80EyNaxVFpnODSf0VGIwhqMwDt?=
 =?us-ascii?Q?WT5r1TAMdg611NAuQ2+df7RzbNOpLYobYNTkcfWh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c0a66e6-46ef-41ca-db41-08dbe790a5a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 17:14:24.3476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OySR5fnyEKkJllaIVCiwtN671K6yD1q4ANbRkyLOb6gcL7pEBKunPhKHU+2Zt9C8gBdyf4o4zN0qS4c4jHDDzvgwNZsnuAWicshFMIBoREQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8427
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700241269; x=1731777269;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bKg1ZY95elAyRR2xRTeg2V3JqCo8gyu3KlvGwr1t/1U=;
 b=Guk1Ns/kmj/OirfLjjBiQUiIvWsyRo+zu6aBwfzVWlMEyq1MqCKVIiiK
 pXj4crhaCf9/+fAl2wlx7AG4/bB6FbhHN2lULPXpQcEdJBNJH1fL75wvq
 Kh4yRzHr8wslGclGFsqTjdb0GVmYgtz3R5Aru3eujS7OppBLdYHwae9Ds
 PDln7xO57dRenJrdiYRjW7o5w4SEeSA6YzREVR//wBNztBnPWb8dy0DQ+
 TKqgH7f7GM1KeaLqVI9YBNx49W/rqqBaycEoSAYCWVQoyVtAlm1S6s/0o
 1Xrs/4HfY3wHSM8rtyOn8uJhU+OAFcG6GTmSI9C/sK7AQ6u4U6AJx3ajk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Guk1Ns/k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix VF Reset paths
 when interface in a failed over aggregate
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Thursday, November 16, 2023 3:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix VF Reset paths when
> interface in a failed over aggregate
> 
> There is an error when an interface has the following conditions:
> - PF is in an aggregate (bond)
> - PF has VFs created on it
> - bond is in a state where it is failed-over to the secondary interface
> - A VF reset is issued on one or more of those VFs
> 
> The issue is generated by the originating PF trying to rebuild or
> reconfigure the VF resources.  Since the bond is failed over to the
> secondary interface the queue contexts are in a modified state.
> 
> To fix this issue, have the originating interface reclaim its resources
> prior to the tear-down and rebuild or reconfigure.  Then after the process
> is complete, move the resources back to the currently active interface.
> 
> There are multiple paths that can be used depending on what triggered the
> event, so create a helper function to move the queues and use paired calls
> to the helper (back to origin, process, then move back to active interface)
> under the same lag_mutex lock.
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on
> bonded interface")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c      | 122 +++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_lag.h      |   1 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  20 +++
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  25 ++++
>  4 files changed, 118 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 57226f70c6e8..8843d7a5e179 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -569,6 +569,50 @@ ice_lag_move_vf_node_tc(struct ice_lag *lag, u8
> oldport, u8 newport,
>  		dev_dbg(dev, "Problem restarting traffic for LAG node
> move\n");
>  }
> 
> +/**
> + * ice_lag_build_netdev_list - populate the lag struct's netdev list
> + * @lag: local lag struct
> + * @ndlist: pointer to netdev list to populate
> + */
> +void ice_lag_build_netdev_list(struct ice_lag *lag,
> +			       struct ice_lag_netdev_list *ndlist)

Adding static tag in v3

> +{
> +	struct ice_lag_netdev_list *nl;
> +	struct net_device *tmp_nd;
> +
> +	INIT_LIST_HEAD(&ndlist->node);
> +	rcu_read_lock();
> +	for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
> +		nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
> +		if (!nl)
> +			break;
> +
> +		nl->netdev = tmp_nd;
> +		list_add(&nl->node, &ndlist->node);
> +	}
> +	rcu_read_unlock();
> +	lag->netdev_head = &ndlist->node;
> +}
> +
> +/**
> + * ice_lag_destroy_netdev_list - free lag struct's netdev list
> + * @lag: pointer to local lag struct
> + * @ndlist: pointer to lag struct netdev list
> + */
> +void ice_lag_destroy_netdev_list(struct ice_lag *lag,
> +				 struct ice_lag_netdev_list *ndlist)

Adding static tag in v3

> +{
> +	struct ice_lag_netdev_list *entry, *n;
> +
> +	rcu_read_lock();
> +	list_for_each_entry_safe(entry, n, &ndlist->node, node) {
> +		list_del(&entry->node);
> +		kfree(entry);
> +	}
> +	rcu_read_unlock();
> +	lag->netdev_head = NULL;
> +}
> +
>  /**
>   * ice_lag_move_single_vf_nodes - Move Tx scheduling nodes for single VF
>   * @lag: primary interface LAG struct
> @@ -597,7 +641,6 @@ ice_lag_move_single_vf_nodes(struct ice_lag *lag, u8
> oldport, u8 newport,
>  void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
>  {
>  	struct ice_lag_netdev_list ndlist;
> -	struct list_head *tmp, *n;
>  	u8 pri_port, act_port;
>  	struct ice_lag *lag;
>  	struct ice_vsi *vsi;
> @@ -621,38 +664,15 @@ void ice_lag_move_new_vf_nodes(struct ice_vf
> *vf)
>  	pri_port = pf->hw.port_info->lport;
>  	act_port = lag->active_port;
> 
> -	if (lag->upper_netdev) {
> -		struct ice_lag_netdev_list *nl;
> -		struct net_device *tmp_nd;
> -
> -		INIT_LIST_HEAD(&ndlist.node);
> -		rcu_read_lock();
> -		for_each_netdev_in_bond_rcu(lag->upper_netdev,
> tmp_nd) {
> -			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
> -			if (!nl)
> -				break;
> -
> -			nl->netdev = tmp_nd;
> -			list_add(&nl->node, &ndlist.node);
> -		}
> -		rcu_read_unlock();
> -	}
> -
> -	lag->netdev_head = &ndlist.node;
> +	if (lag->upper_netdev)
> +		ice_lag_build_netdev_list(lag, &ndlist);
> 
>  	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) &&
>  	    lag->bonded && lag->primary && pri_port != act_port &&
>  	    !list_empty(lag->netdev_head))
>  		ice_lag_move_single_vf_nodes(lag, pri_port, act_port, vsi-
> >idx);
> 
> -	list_for_each_safe(tmp, n, &ndlist.node) {
> -		struct ice_lag_netdev_list *entry;
> -
> -		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
> -		list_del(&entry->node);
> -		kfree(entry);
> -	}
> -	lag->netdev_head = NULL;
> +	ice_lag_destroy_netdev_list(lag, &ndlist);
> 
>  new_vf_unlock:
>  	mutex_unlock(&pf->lag_mutex);
> @@ -679,6 +699,29 @@ static void ice_lag_move_vf_nodes(struct ice_lag
> *lag, u8 oldport, u8 newport)
>  			ice_lag_move_single_vf_nodes(lag, oldport,
> newport, i);
>  }
> 
> +/**
> + * ice_lag_move_vf_nodes_cfg - move vf nodes outside LAG netdev event
> context
> + * @lag: local lag struct
> + * @src_prt: lport value for source port
> + * @dst_prt: lport value for destination port
> + *
> + * This function is used to move nodes during an out-of-netdev-event
> situation,
> + * primarily when the driver needs to reconfigure or recreate resources.
> + *
> + * Must be called while holding the lag_mutex to avoid lag events from
> + * processing while out-of-sync moves are happening.  Also, paired moves,
> + * such as used in a reset flow, should both be called under the same mutex
> + * lock to avoid changes between start of reset and end of reset.
> + */
> +void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt)
> +{
> +	struct ice_lag_netdev_list ndlist;
> +
> +	ice_lag_build_netdev_list(lag, &ndlist);
> +	ice_lag_move_vf_nodes(lag, src_prt, dst_prt);
> +	ice_lag_destroy_netdev_list(lag, &ndlist);
> +}
> +
>  #define ICE_LAG_SRIOV_CP_RECIPE		10
>  #define ICE_LAG_SRIOV_TRAIN_PKT_LEN	16
> 
> @@ -2057,7 +2100,6 @@ void ice_lag_rebuild(struct ice_pf *pf)
>  {
>  	struct ice_lag_netdev_list ndlist;
>  	struct ice_lag *lag, *prim_lag;
> -	struct list_head *tmp, *n;
>  	u8 act_port, loc_port;
> 
>  	if (!pf->lag || !pf->lag->bonded)
> @@ -2069,21 +2111,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
>  	if (lag->primary) {
>  		prim_lag = lag;
>  	} else {
> -		struct ice_lag_netdev_list *nl;
> -		struct net_device *tmp_nd;
> -
> -		INIT_LIST_HEAD(&ndlist.node);
> -		rcu_read_lock();
> -		for_each_netdev_in_bond_rcu(lag->upper_netdev,
> tmp_nd) {
> -			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
> -			if (!nl)
> -				break;
> -
> -			nl->netdev = tmp_nd;
> -			list_add(&nl->node, &ndlist.node);
> -		}
> -		rcu_read_unlock();
> -		lag->netdev_head = &ndlist.node;
> +		ice_lag_build_netdev_list(lag, &ndlist);
>  		prim_lag = ice_lag_find_primary(lag);
>  	}
> 
> @@ -2113,13 +2141,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
> 
>  	ice_clear_rdma_cap(pf);
>  lag_rebuild_out:
> -	list_for_each_safe(tmp, n, &ndlist.node) {
> -		struct ice_lag_netdev_list *entry;
> -
> -		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
> -		list_del(&entry->node);
> -		kfree(entry);
> -	}
> +	ice_lag_destroy_netdev_list(lag, &ndlist);
>  	mutex_unlock(&pf->lag_mutex);
>  }
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h
> b/drivers/net/ethernet/intel/ice/ice_lag.h
> index 9557e8605a07..ede833dfa658 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.h
> @@ -65,4 +65,5 @@ int ice_init_lag(struct ice_pf *pf);
>  void ice_deinit_lag(struct ice_pf *pf);
>  void ice_lag_rebuild(struct ice_pf *pf);
>  bool ice_lag_is_switchdev_running(struct ice_pf *pf);
> +void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8
> dst_prt);
>  #endif /* _ICE_LAG_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index aca1f2ea5034..b7ae09952156 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -829,12 +829,16 @@ static void ice_notify_vf_reset(struct ice_vf *vf)
>  int ice_reset_vf(struct ice_vf *vf, u32 flags)
>  {
>  	struct ice_pf *pf = vf->pf;
> +	struct ice_lag *lag;
>  	struct ice_vsi *vsi;
> +	u8 act_prt, pri_prt;
>  	struct device *dev;
>  	int err = 0;
>  	bool rsd;
> 
>  	dev = ice_pf_to_dev(pf);
> +	act_prt = ICE_LAG_INVALID_PORT;
> +	pri_prt = pf->hw.port_info->lport;
> 
>  	if (flags & ICE_VF_RESET_NOTIFY)
>  		ice_notify_vf_reset(vf);
> @@ -845,6 +849,17 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>  		return 0;
>  	}
> 
> +	lag = pf->lag;
> +	mutex_lock(&pf->lag_mutex);
> +	if (lag && lag->bonded && lag->primary) {
> +		act_prt = lag->active_port;
> +		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT
> &&
> +		    lag->upper_netdev)
> +			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
> +		else
> +			act_prt = ICE_LAG_INVALID_PORT;
> +	}
> +
>  	if (flags & ICE_VF_RESET_LOCK)
>  		mutex_lock(&vf->cfg_lock);
>  	else
> @@ -937,6 +952,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>  	if (flags & ICE_VF_RESET_LOCK)
>  		mutex_unlock(&vf->cfg_lock);
> 
> +	if (lag && lag->bonded && lag->primary &&
> +	    act_prt != ICE_LAG_INVALID_PORT)
> +		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
> +	mutex_unlock(&pf->lag_mutex);
> +
>  	return err;
>  }
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index cdf17b1e2f25..de11b3186bd7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1603,9 +1603,24 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  	    (struct virtchnl_vsi_queue_config_info *)msg;
>  	struct virtchnl_queue_pair_info *qpi;
>  	struct ice_pf *pf = vf->pf;
> +	struct ice_lag *lag;
>  	struct ice_vsi *vsi;
> +	u8 act_prt, pri_prt;
>  	int i = -1, q_idx;
> 
> +	lag = pf->lag;
> +	mutex_lock(&pf->lag_mutex);
> +	act_prt = ICE_LAG_INVALID_PORT;
> +	pri_prt = pf->hw.port_info->lport;
> +	if (lag && lag->bonded && lag->primary) {
> +		act_prt = lag->active_port;
> +		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT
> &&
> +		    lag->upper_netdev)
> +			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
> +		else
> +			act_prt = ICE_LAG_INVALID_PORT;
> +	}
> +
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
>  		goto error_param;
> 
> @@ -1729,6 +1744,11 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  		}
>  	}
> 
> +	if (lag && lag->bonded && lag->primary &&
> +	    act_prt != ICE_LAG_INVALID_PORT)
> +		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
> +	mutex_unlock(&pf->lag_mutex);
> +
>  	/* send the response to the VF */
>  	return ice_vc_send_msg_to_vf(vf,
> VIRTCHNL_OP_CONFIG_VSI_QUEUES,
>  				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
> @@ -1743,6 +1763,11 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  				vf->vf_id, i);
>  	}
> 
> +	if (lag && lag->bonded && lag->primary &&
> +	    act_prt != ICE_LAG_INVALID_PORT)
> +		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
> +	mutex_unlock(&pf->lag_mutex);
> +
>  	ice_lag_move_new_vf_nodes(vf);
> 
>  	/* send the response to the VF */
> --
> 2.40.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
