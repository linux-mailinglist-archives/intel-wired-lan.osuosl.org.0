Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7F6538CFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 10:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99BF36116C;
	Tue, 31 May 2022 08:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QC_3cw56xhBP; Tue, 31 May 2022 08:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8921460761;
	Tue, 31 May 2022 08:37:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30CAB1BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 08:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2AD6940C8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 08:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDQqqMISkRyv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 08:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0BEE40A6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 08:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653986264; x=1685522264;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dVHIYxGRbZb/VHg/8WC74jV4H9YiZvqgryF8XaG74TI=;
 b=dXMTyR4pet6fgLIZWQ7iJbdncM3qHvBNtnh8H6I4FcZWY0saZzucV3zy
 1oe5ieV1gNjoBd3P+8wi/nPsvJfzvN24SBF2j/LWno+kEF1tLHeYb642Y
 t/Th6ZSvvOSHS8YKbGGj62oBQZC64N8bw/iRe7EUIvPv9AvapZk7Nwl2x
 hnZ3BuNnir1u23s4MgmVRc/gzTNZMniWIw1efdjNSVgFf2cXauGGsM7Gc
 hxYXjfc4gOW01bceuAwv1t02NhFiBOZrywTmAe+M3dWbUSokTiTXF66G3
 bI5kNKmrLsrvTpe1p/dpZ6cAH9ESCIqnlHGnFSaRD/dXsNVKzZmiLxF6E g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="257254672"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="257254672"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 01:37:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="576302256"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2022 01:37:43 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 01:37:43 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 01:37:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 01:37:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 01:37:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LSG8lS2oZBYmsuYSSu3AU7IaAoRhdbxF47kanF2dQQwN55OQfZd1lI/vCmUPh7nQQMm/KjSEkaOyiIRTmVAOWR/W6JYjroCekPEWzUsBfGuj94MyXZXuTT4hGudhb7M2fwwDUuSM7G2xlRha+l92sJAR8F0vnk0+kq6kFAApAF4sw/VZkffB43tN9HAF2A5aLW39iPVDxjoYa9gqIH32ap6DhL/zehuK1kwT4DTLptpOlJQNhDWr69GWePfHPIyqkRrm+tovKawumcJDlZHaOyc+2r7G+US2WRfWgpBuCEaqVujS3U3kgQOzrCFszsF7fuX3t93nUpvT1AOxKPyf6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=42jl59JTUN+WFtPe2CndLbEYrNPunnOiTZF+7bJ7Uko=;
 b=krtKpDEhlm1342DNzzScx1cJc4YdKLH42rXDCq/Zp3pTzoIE+7cP9qDpd7I56QF5eaNUjSJZ/l5N1AyUJbIthC+UWNhEtQdpFGzyVmaIvduqoZWQ5janLKK6ds1JB656/XvIsJT69XS1Wi/1fNv/aiwk1sf9NMa11n7Zi0GrX1syK0nqPEHyRthFYqyYUOOeDodFbEwQqsmweSH6OXM2zNXW7ihHBvXP5Vf2Flh7mXYpXAayTlCYGKbDU6SdePtkAiaoZ3+b46/k4QM1PiUQsThWNkt6brH/da3CBjHRjJlJXjMNp4oQIR+k2VvLwd4NDCHUKD3NhAD8yCowHp0EsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 IA1PR11MB6371.namprd11.prod.outlook.com (2603:10b6:208:3ad::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5293.19; Tue, 31 May 2022 08:37:40 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::5110:69c8:5d4f:e769]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::5110:69c8:5d4f:e769%4]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 08:37:40 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4] iavf: Add waiting for
 response from PF in set mac
Thread-Index: AQHYbDHsPxUuaGhnGUOlEKFGbkXk9a04utzQ
Date: Tue, 31 May 2022 08:37:40 +0000
Message-ID: <DM8PR11MB5621417A1F36B648A0E26946ABDC9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220520100713.6632-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220520100713.6632-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c3ea77e-e692-42b4-6690-08da42e0d2b1
x-ms-traffictypediagnostic: IA1PR11MB6371:EE_
x-microsoft-antispam-prvs: <IA1PR11MB637197B88BF0C1B65064D2D5ABDC9@IA1PR11MB6371.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TpXLscgNYypub1BuhYOLuugF16JWmkMlMxGddrIMrxBVO0f+dm9S1JApxN5egTBViGZTs67q7AS5PSBVuzO4w9qMgkYfoOvKkbduNeUA46/bCB3Nkj3KHWSRv18Y55T3J/uEOHDkYvdiAEQxu64nHspp79cCOrzu/Gn9ZBUHqUijhMDfABVojf1gq5hSW3vjIfMgNH4P5jBrx9spoeLmprKTgK01fK/qp39bj35RwLbDvu1ErhqJ+85KEns9rwvy/8MlC+lQLrCSwDjlLEG9wn9payO2D0qpl/FVLzGWG3vILpopkiA7rHgC/P3bZ0ecnwBR8HLyqeUGMiYPMFEDIAavaKr5MSE4rlk3ghMRKcv+PlY15HRcd+DCitIgC5Ksy2CJBZXXp3pogMuI0IffX0F8G0LKFKZ2k+TI1YUszha3zme5xKJmhF0ND1bQOf3pHBakd28G9v9Fz/RndYCAdTa2EwD3gtinhvYfel11oVJhVg5G2TYipCo4fH5cwvUDy6J/478pidX65ozIymSN6JrqhjXguc5WdhG8hKHji0d7A2p1uciy9yGvz3cHAaQXRyQxxTv6nb9An8zeof0kc5kPBJSa1mnqWZZKQIar+fpn4p0zr6RHwK62u0aGwCNAFAPrFFSklKIIsWbPZ86gvUIQM6lp1c6bbiDzB/YJBVd8WszKqcmwEXXzTYSwDbCfHbZISS46o/HjzIWoA8FvoETXDWt9ZMJ8pD5vwoT9Ne5sIXsoBML7ceS+MvRmzRWz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(26005)(107886003)(6506007)(53546011)(9686003)(55016003)(316002)(110136005)(71200400001)(8676002)(33656002)(52536014)(38070700005)(76116006)(66556008)(66946007)(38100700002)(66476007)(86362001)(83380400001)(8936002)(508600001)(186003)(64756008)(2906002)(5660300002)(82960400001)(122000001)(66446008)(4326008)(69900200002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MklP7p3lmCYFy3Bjij8y5cL9pvIqwbfpOpXSJmUkm9115DiqODGPye8YOXsP?=
 =?us-ascii?Q?f6JFNGd/APBOm9wRxQm+ivWkzvmF0tkkkV68fJgDuTd98I10TseRgjigM6It?=
 =?us-ascii?Q?P5IUdYIWdVVf6XLSMoTCKrWCHA7PCGkRy+lS3nsZK6IrOK7INiDuype07PT7?=
 =?us-ascii?Q?tD1aHzYzYon8C62Wcso5spF+KDNCG7wbp4hiVHqRjvxgsX9XjV/HeQnoFknI?=
 =?us-ascii?Q?G7Ysx+0XlvKd3U7EOmIzG5HQXrKsMxcWBzPX+kqvSP1a6NLF/kaNys2VqAMm?=
 =?us-ascii?Q?xDB/NfXP6jpXB6k2hXvM32TuUA2EAEMs671y7es5PivFOa7FC0B4FwQWOt7X?=
 =?us-ascii?Q?ph20twoKJyO3TX9WJC7Y8ReQTnwSBMKNyGPToE78rhS0naprW2A5+O5k5aZL?=
 =?us-ascii?Q?xFJYBpsh58lQxqBrQ364tKBS2wFs1T8CiByS7wvWRFy7L5FZO+XIb2+xng0F?=
 =?us-ascii?Q?zjcJUyiZewJh1hfuUGnM7DfWQGpelJ432p9Op9D30qbByvTlz0LeR5UetKB+?=
 =?us-ascii?Q?urJ4p4GVKoAwQL3hgOesSUF8oWanepSZ1F2eFeb7eRNGSWQ/jaVdRK+TpFHR?=
 =?us-ascii?Q?ON8ap5egv7Dnfj4RTqF7m5iJhbsEeDYvat+gnSdxiB33QMoPx41iDKhlYl3n?=
 =?us-ascii?Q?neXMxPwEsyHPR12oKq6mvYl8M5NsSSoPKzpgf4ESP8uqu4OgbuH6CqidcD1K?=
 =?us-ascii?Q?kVlGE7yhEnw+8HQTVoHyLcDO2aG4i1TB0FFVobidPsBYJHnIgf19xdwiRBau?=
 =?us-ascii?Q?HNsb9bqeooWBOKavkNFYkt5Y3A0g9JMzyh6bsdDT1xvflBno2EL1PfODspcT?=
 =?us-ascii?Q?OP5eASTGbhSpYgWh/OFqkrr3AX+9X0W26aApvCnhL8uRUUCIVVJuZheIFRPh?=
 =?us-ascii?Q?E7BdIC/3880Lago91XRO8Ih2Catn2XwFXjPweZ1LjbJ0jm0NPPdrTPjMQfq/?=
 =?us-ascii?Q?EvS3Q7Wza3VBpQBrC3PceJw7q5qHHeq9H47X6EblMe1ZCWUblTOqthYSHNhl?=
 =?us-ascii?Q?YNKt5h3YTJgepe9linIfLz9Y84imFodK40TsrngKnxjsPriyI8YcnNZ0yUNC?=
 =?us-ascii?Q?rtvOR6a0Ptl/s6ofT/88jBbd/DbY0bLBWVb6dv932b3ZKXRjNC1XR6UoCF1T?=
 =?us-ascii?Q?RLvOxEXi2Ffao3vi7agieIT6XqkPq3AN0R4ig30Y0ZHNrY6ZLCgDFMZ9G6zO?=
 =?us-ascii?Q?MnYECRZyHsnTEj2WSNoX2UDrMFUg4Kg9d3Pf5Q81n6mwkL3mnXhcOY+tvjGr?=
 =?us-ascii?Q?8GJNwu5sJLssXDAUVOOXb/wQIV4SX/8S9qGWUt64JkJNzgNSRXWRpT3FHqIb?=
 =?us-ascii?Q?BRr5ZQfeKxq5e1BpyoEse1we+V5HsfexPbepRzkHZQjuOsYTNxzOZwUNQe7N?=
 =?us-ascii?Q?lZ5udhyrkfYNvExLZO4P4Ent3MLIpRsKMsnqq6GBN3E8PYx69pGRfk7M0S4f?=
 =?us-ascii?Q?FZkrtkrVCqKHJB+Di9hZV/mwIEJ8h8tmVcTZqT7dVSr43NXV5JYSJ4yOZZ6u?=
 =?us-ascii?Q?hE7cySVlgZCDOlPDA8+0YAcUSY+3rTxRtIjqow1bI59I6F5MCaKl6/QjBM6G?=
 =?us-ascii?Q?naDV5PuGd7oxCzrLzs940xeFKNy+zFoK2fU/Xdq9mwaBkaIqnBcGY0eZ5fIZ?=
 =?us-ascii?Q?hf5IIqP4kpoqDKQKXiZOfZPHfae+theQmlrEAwUw4f+L/OPOXkaTDABQt/WE?=
 =?us-ascii?Q?WrMd04OOVmrVAJBEMltipy8wD27aUDoAr6rKdx3CmP9KKy3h8o/2SOUWea1Z?=
 =?us-ascii?Q?dzAv75hWzJipF24vpPF7gJofS/yjY70=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c3ea77e-e692-42b4-6690-08da42e0d2b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2022 08:37:40.0983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AhcgvY2lYpkALkgvbGURYsnkUoOBddeVWQgFWPPA75QjY7F2IR7Xwx1bTc43MAWnYAyibRo4pV7wqni7Ox54NBPmoXzZPPfTctEkzY90eg0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6371
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] iavf: Add waiting for
 response from PF in set mac
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, May 20, 2022 12:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4] iavf: Add waiting for response
> from PF in set mac
> 
> Make iavf_set_mac synchronous by waiting for a response from a PF.
> Without this iavf_set_mac is always returning success even though set_mac
> can be rejected by a PF.
> This ensures that when set_mac exits netdev MAC is updated.
> This is needed for sending ARPs with correct MAC after changing VF's MAC.
> This is also needed by bonding module.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v4: Rewrited some code to avoid passing a value as a condition
>  v3: Resent the patch to apply to next-queue
>  v2: Changed __IAVF_IN_CRITICAL_TASK to crit_lock
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   7 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 127 +++++++++++++++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  61 ++++++++-
>  3 files changed, 174 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 49aed3e..fda1198 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -146,7 +146,8 @@ struct iavf_mac_filter {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
