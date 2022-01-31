Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B995F4A5093
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 21:53:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EC00408DB;
	Mon, 31 Jan 2022 20:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bWSEGalDASIH; Mon, 31 Jan 2022 20:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF0B6408C4;
	Mon, 31 Jan 2022 20:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A35941BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99C274033B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5lRn2l4tBqw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 20:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42C7140337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643661598; x=1675197598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WOF6DT7vQpGNCuxYpQ+npHk99Meu8KOiugko9IP0d5w=;
 b=TOZqTBzmiUGENaDWhijqaAeIUbLtAf49CdkZTwkg/s7S9NJ8W3fWUSJF
 OSX032/q0Tn29SAjHyRNi+7i7F3B0FittzCZ/S8FvRXh9PxFitSMA4uOM
 3Hk+sdox+B10Wki0Kje6fETbHWaSZBzSoc6oxO3rrk3OmTt2yNvwC5xLE
 QbN2GLsOSffzDGJRZz/XW2F1gkmIVHik6sWtht0yJg+j3I3CIi5x3Jb0l
 chBXFsHaeDKCa4m733O5RHdTULyyh8UR1YRDvOLhu/wcp50c6J3/SqGHk
 QnUqR6aSInZmMngJVwX5PEKp9WXdQ+MgdMR53HehF4JFmCHbMunbWjLc8 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247315497"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="247315497"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 12:39:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="675851722"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2022 12:39:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 12:39:57 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 12:39:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 31 Jan 2022 12:39:56 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 31 Jan 2022 12:39:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yya1n7hDoYEl/aRQq1D/REUkbeYa8tSJwu2gZN4CAmXSJwBTth4KsOXGzY+tWoyS528y6x5giezXALa+lja9JtFIr/hmlq2Fo8OlGLLNjuUzvXh793x6dIWFoEazozuPEBgn814BNqH4+AcLRXBh0doXy3PljwJnR5fJQBW9Do93FFr/rSkSSlg9qA4t0auiETQYLDKbke3dAAfnNrlPjefkfRzRJKQGMCp9lXbbK1owhcYanShC6/kJpQ39j6ZXGmzbNNvoNlKp9o+BkIeKxjfWqHEtrIGPIGpKmeWTYu5t+XQwgjoZKV066woPUGkR2oCm8v+351stUuZyD1yXFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8DXJwnGGWKV+zX2pMpPmwZOTmsW59wvAc/haBMDpsp4=;
 b=Nk6iFr7R2rABIsxEOv2ttWi+dBY6lnHJOyjo5aR1ImxqzL84yun2JVxHBWLfcmbxIEFYSlj6HdR+rMYHRrwBJZL7PtxeuoIyiI0Y54j3zVG5/S4JSoBOy0OYLEwEVtAtr8PyTrosLxsagdSgm4AorGqI52slBQc6zsCHOdwvp8dHmrJFtl3FIyxubN3/5/7MPEPXN0MK9SFYKsXEanJwweaZAzXfh6WHmnEFgB4TX3WXRGbURoDnthk2RGH6GfSxo9DWXfzgupbJr314yO/B2s0vrPkNdWWM7JoExrEWj0ZCrqEEi5FBFMSg6Zaa82ZgmEaHvyDSOy5wr3hVpO1p2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BN9PR11MB5449.namprd11.prod.outlook.com (2603:10b6:408:11e::12)
 by DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Mon, 31 Jan
 2022 20:39:54 +0000
Received: from BN9PR11MB5449.namprd11.prod.outlook.com
 ([fe80::4cbd:48b8:6876:75b]) by BN9PR11MB5449.namprd11.prod.outlook.com
 ([fe80::4cbd:48b8:6876:75b%5]) with mapi id 15.20.4930.022; Mon, 31 Jan 2022
 20:39:54 +0000
From: "Bednarz, Christopher N" <christopher.n.bednarz@intel.com>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>, epg nat hpm dev
 <epg.nat.hpm.dev@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH for-next 2/3] RDMA/irdma: Refactor DCB bits in prep for
 DSCP support
Thread-Index: AQHYFsQivbSCTrY9gUOR7M2IxIwCbKx9lyVA
Date: Mon, 31 Jan 2022 20:39:54 +0000
Message-ID: <BN9PR11MB5449CD8AA462B56CDF4DEBADB2259@BN9PR11MB5449.namprd11.prod.outlook.com>
References: <20220131165921.1392-1-shiraz.saleem@intel.com>
 <20220131165921.1392-3-shiraz.saleem@intel.com>
In-Reply-To: <20220131165921.1392-3-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0d06814-cabe-4454-c4c1-08d9e4f9d67f
x-ms-traffictypediagnostic: DM4PR11MB5293:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM4PR11MB5293A4BA4083BF6C0B0E1EEDB2259@DM4PR11MB5293.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OhRQiC7tBIhApZoUyqFnA4wgdvCqGFyw6Sz77HmzkTpEQJY+1/qpTo1cN4itdHf8IieqeB5NThFhpId5cuNswDEHRp+mymeamY+AKGvu0bzNd599INdt3EcDEUPlyjq17c+2la0v3N3Jg7GqCwwDy5s8X9s2baKoak5AJN6aPGvNKiqNQjdv/5P/HHra3Okb3ueF21hEvFCrhjQc8rB+wEd2lXvJKm2L3arso9v/X5zzJWVFyySLXXcvuqj3+8XxBXZG/8/np0Mvglk2vjg+4Oc5dXyudbaa2HuSib0a78VQTv08g/9GU7Qqi/XK0ciJ6tfFdjugexamkQZlYl3Fz9XkD1lvTZ9SDX2oGHm9xLAdGVF0NSFKwClOVU5WTq71mMwgkG9p30oL6yVw6GzKlhg2w5+JZo1tW4CPX7yQHLhdClFaOzAvHZlMcbCkZ12pH6kwNycuf+epbLZQb4ok2DmK2uvPpD9s9SaphbwxzSPn52b4sp9+vPNCiOMtJomLAvaoRH1pMcY3cpuqGL7BGdhtOfy/q6785yKLYaKKmjCxLLOMd+bwyT3x1yULcFfHCsJIouNCuxRxaLL2dP81Bx38BUBlV0UU1tPq6bPapoyrgVuE/Kqs+y5gWwuwLQQSSddhV39GtjYVJBrIpSGRZQB5QnBmdgF3MfKqEV8onkooC9liyNgzOG+5iLwsrnN30imU6t8yybcBJXTIdYTM9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(9686003)(82960400001)(83380400001)(110136005)(6506007)(26005)(2906002)(316002)(122000001)(55016003)(186003)(86362001)(107886003)(64756008)(66446008)(66556008)(33656002)(8936002)(8676002)(76116006)(4326008)(71200400001)(66946007)(52536014)(38100700002)(53546011)(38070700005)(508600001)(5660300002)(66476007)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CwTc7TJTbX//F5vSRasBimyXv/Nki/LCVoQtHj6JwEhXRJni+i7HCaFqO9Pg?=
 =?us-ascii?Q?W2L12nS7VQJXLO+qlyplZnnXeqMyK6iwzM0650HGDagxoX2NzPcUOqHsKeg9?=
 =?us-ascii?Q?G+4Jb8iklubmJ4dPGx2BegTmgtkbv67lQn6wD6Js31/zO9aU1sIwjPdpLv+y?=
 =?us-ascii?Q?2OSQ3D6tRyDYlLPtDCoys9jtc9+hUAFEytN5HkcSIQ63bxn9wgjGFDU5yl0D?=
 =?us-ascii?Q?iqrl5nmbHkmWOAjJu8stjsh51Gkn5LhchGiN9xBAP0rWy4G8/BB60DPVYmFB?=
 =?us-ascii?Q?Mxe/vBXPYQAqI9mzC+ZkFJlQWl3oO9Rt4KySaNsZIBYPSVvHpEBc1ZZqJiiw?=
 =?us-ascii?Q?FXgsamgTs+tDLy3F60ZT+GIDVCPcZkNAyYbCm4FMXVJ6AOsnivBPRxCEiTGO?=
 =?us-ascii?Q?rrlgnCPCECBAzBoIhpekoBdOuXIhOUj7dhyAB4neClk9Z4eAEVQBtaAI5kOT?=
 =?us-ascii?Q?UhaCEuTWtZG/EAAicy1gAvcGFvI3xegPb3vej3AlCnrX8MGyogFFYwejZLQf?=
 =?us-ascii?Q?OHnvuvEf5YmZv+HyPdK7puNHkn9wRE+OHwxTY2HKTuqBDOGumKBgYgQiL1V+?=
 =?us-ascii?Q?QYOD/GqWvYRG4Tt1f1JHIc5w86xnMJxaQMNQTzF5ok+LxZU7zLBiEzmvcyQ3?=
 =?us-ascii?Q?71ZattZwjnwRxP1V7p04aEsddTnEDAw0/atRnNRa9Cp6wnyShJqhviFblxMq?=
 =?us-ascii?Q?f82id2IX2RLnp3g4gBZky6arj7L9qrRm+S/dU1ZHcNJjdc/U2z0v0eb+5c38?=
 =?us-ascii?Q?n2SOM2MgbZq77d0T6MAdkIW8lEzUACGdtL20Brw8RaXiuoQGMrs9wUhd2goT?=
 =?us-ascii?Q?HI94HL+NGtkskXBkq+lr1l2d7cIPD/pXk5vg8aM8FOqBfA2HxB/LCDVEnj4g?=
 =?us-ascii?Q?ITytKcsUQqX1j5hUWXR6lJ/Vpp31s9eeaqZ1tkDPslGFkdM6pz42obUntOgX?=
 =?us-ascii?Q?BJV9bSCDjgjZo34B5g2Lg7HT6TGhY264AE9ctiHohk88QFnmXbKeyOaXzh+6?=
 =?us-ascii?Q?CLbv+eMUUSNtZgQYPaooHYezkxvX/RwFXumil3Yax4QWWk14yVu26oXF3owu?=
 =?us-ascii?Q?Vi/taoN0M7lFqFSewUvdhGJIE30ftsE8hMw6KVeI6sqNiXn6Mtra+9degLew?=
 =?us-ascii?Q?52yPCsewzQhIyCzZlSWoKyhUbghIksV2ShJecSiQeelsVoEm6vmB413aY3FY?=
 =?us-ascii?Q?GsgS+nZfYHbi4pEW6zXtGcFQ0TMsKDLI0mj5v8IY8b6dtfr9rGKospRKYf7u?=
 =?us-ascii?Q?GGbUXMhKjMGyKOqTlVwrq/irJFLJ76QpSsa6nMSMdwmkqBWK4SIxoq/obHBy?=
 =?us-ascii?Q?AV3FO2yC66lT/h7xpW9K2zwVWWjWL2tcZ9XMbogajRaYCy37OVeoZkLpmGBD?=
 =?us-ascii?Q?KqcMYIKEnMPGiRGlasP5UYPhEcQPXdfSsRmjmwyLFFd8meriEdzFOC4RKfrK?=
 =?us-ascii?Q?EAoPIMMA3Ke9FM9J/JjLhQCG8Mv8UTfvYHnXArdynGCPRRjAyyCttRGIQ2R4?=
 =?us-ascii?Q?K9wgfbJ0bdwwnbKeI0dMHCdDjJAHsnCwdjtjcMw+/lsLGdYT8zB5t12KUCk1?=
 =?us-ascii?Q?gY6C8z8P15w3+6agOGnZ5ege37J8YZzHAxan7XOgEZ9OCDNfs3xpHBQzkhSU?=
 =?us-ascii?Q?Hhjd+OIRGG/joGgcd3PK9oUG1l/LT0/NNxPceFqOeHKL5heHXj/ILmZHDlQn?=
 =?us-ascii?Q?jVk9Eg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d06814-cabe-4454-c4c1-08d9e4f9d67f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 20:39:54.4917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O7WcmrT2IWcvwbqsVR13ZjFcfVdUzmFrF+U7BF3NhFNBn0VucLxwL78iS+Orh+MbIQiFmE225jAYCBZJSCmAyK7nJ09MffjdAGyJ1rRIv6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5293
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 31 Jan 2022 20:53:26 +0000
Subject: Re: [Intel-wired-lan] [PATCH for-next 2/3] RDMA/irdma: Refactor DCB
 bits in prep for DSCP support
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patch seems fine...

We have been carrying this bug around for a long time but at some point we need to set dcb mode independent to the number of tcs enabled.

iwdev->dcb_vlan_mode = qos_info.num_tc > 1;

You can have 1 TC with VLAN/DCB/QOS....

-Chris

-----Original Message-----
From: Saleem, Shiraz <shiraz.saleem@intel.com> 
Sent: Monday, January 31, 2022 10:59 AM
To: epg nat hpm dev <epg.nat.hpm.dev@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
Subject: [PATCH for-next 2/3] RDMA/irdma: Refactor DCB bits in prep for DSCP support

From: Mustafa Ismail <mustafa.ismail@intel.com>

Rename dcb flag to dcb_vlan_mode in irdma_device struct.
Add a new helper function, irdma_set_qos_info, to set
the VSI QoS information passed by the PCI driver.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/hw/irdma/cm.c       |  4 ++--
 drivers/infiniband/hw/irdma/ctrl.c     | 33 +++++++++++++++++++++------------
 drivers/infiniband/hw/irdma/i40iw_if.c |  2 +-
 drivers/infiniband/hw/irdma/main.c     |  6 +++++-
 drivers/infiniband/hw/irdma/main.h     |  2 +-
 drivers/infiniband/hw/irdma/verbs.c    |  4 ++--
 6 files changed, 32 insertions(+), 19 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/cm.c b/drivers/infiniband/hw/irdma/cm.c
index 6dea0a4..6ff1800 100644
--- a/drivers/infiniband/hw/irdma/cm.c
+++ b/drivers/infiniband/hw/irdma/cm.c
@@ -2200,7 +2200,7 @@ static void irdma_cm_free_ah(struct irdma_cm_node *cm_node)
 	/* set our node specific transport info */
 	cm_node->ipv4 = cm_info->ipv4;
 	cm_node->vlan_id = cm_info->vlan_id;
-	if (cm_node->vlan_id >= VLAN_N_VID && iwdev->dcb)
+	if (cm_node->vlan_id >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 		cm_node->vlan_id = 0;
 	cm_node->tos = cm_info->tos;
 	cm_node->user_pri = cm_info->user_pri;
@@ -3959,7 +3959,7 @@ int irdma_create_listen(struct iw_cm_id *cm_id, int backlog)
 		}
 	}
 
-	if (cm_info.vlan_id >= VLAN_N_VID && iwdev->dcb)
+	if (cm_info.vlan_id >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 		cm_info.vlan_id = 0;
 	cm_info.backlog = backlog;
 	cm_info.cm_id = cm_id;
diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index 3141a9c..ef1d6ad 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -70,6 +70,25 @@ void irdma_sc_suspend_resume_qps(struct irdma_sc_vsi *vsi, u8 op)
 	}
 }
 
+static void irdma_set_qos_info(struct irdma_sc_vsi  *vsi,
+			       struct irdma_l2params *l2p)
+{
+	u8 i;
+
+	vsi->qos_rel_bw = l2p->vsi_rel_bw;
+	vsi->qos_prio_type = l2p->vsi_prio_type;
+	for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++) {
+		if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
+			vsi->qos[i].qs_handle = l2p->qs_handle_list[i];
+		vsi->qos[i].traffic_class = l2p->up2tc[i];
+		vsi->qos[i].rel_bw =
+			l2p->tc_info[vsi->qos[i].traffic_class].rel_bw;
+		vsi->qos[i].prio_type =
+			l2p->tc_info[vsi->qos[i].traffic_class].prio_type;
+		vsi->qos[i].valid = false;
+	}
+}
+
 /**
  * irdma_change_l2params - given the new l2 parameters, change all qp
  * @vsi: RDMA VSI pointer
@@ -88,6 +107,7 @@ void irdma_change_l2params(struct irdma_sc_vsi *vsi,
 		return;
 
 	vsi->tc_change_pending = false;
+	irdma_set_qos_info(vsi, l2params);
 	irdma_sc_suspend_resume_qps(vsi, IRDMA_OP_RESUME);
 }
 
@@ -1845,7 +1865,6 @@ static void irdma_null_ws_reset(struct irdma_sc_vsi *vsi)
 void irdma_sc_vsi_init(struct irdma_sc_vsi  *vsi,
 		       struct irdma_vsi_init_info *info)
 {
-	struct irdma_l2params *l2p;
 	int i;
 
 	vsi->dev = info->dev;
@@ -1858,18 +1877,8 @@ void irdma_sc_vsi_init(struct irdma_sc_vsi  *vsi,
 	if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
 		vsi->fcn_id = info->dev->hmc_fn_id;
 
-	l2p = info->params;
-	vsi->qos_rel_bw = l2p->vsi_rel_bw;
-	vsi->qos_prio_type = l2p->vsi_prio_type;
+	irdma_set_qos_info(vsi, info->params);
 	for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++) {
-		if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
-			vsi->qos[i].qs_handle = l2p->qs_handle_list[i];
-		vsi->qos[i].traffic_class = info->params->up2tc[i];
-		vsi->qos[i].rel_bw =
-			l2p->tc_info[vsi->qos[i].traffic_class].rel_bw;
-		vsi->qos[i].prio_type =
-			l2p->tc_info[vsi->qos[i].traffic_class].prio_type;
-		vsi->qos[i].valid = false;
 		mutex_init(&vsi->qos[i].qos_mutex);
 		INIT_LIST_HEAD(&vsi->qos[i].qplist);
 	}
diff --git a/drivers/infiniband/hw/irdma/i40iw_if.c b/drivers/infiniband/hw/irdma/i40iw_if.c
index 43e962b..8b5bd77 100644
--- a/drivers/infiniband/hw/irdma/i40iw_if.c
+++ b/drivers/infiniband/hw/irdma/i40iw_if.c
@@ -138,7 +138,7 @@ static int i40iw_open(struct i40e_info *cdev_info, struct i40e_client *client)
 		if (last_qset == IRDMA_NO_QSET)
 			last_qset = qset;
 		else if ((qset != last_qset) && (qset != IRDMA_NO_QSET))
-			iwdev->dcb = true;
+			iwdev->dcb_vlan_mode = true;
 	}
 
 	if (irdma_rt_init_hw(iwdev, &l2params)) {
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 9fab290..179667b 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -108,8 +108,9 @@ static void irdma_iidc_event_handler(struct ice_pf *pf, struct iidc_event *event
 		l2params.tc_changed = true;
 		ibdev_dbg(&iwdev->ibdev, "CLNT: TC Change\n");
 		ice_get_qos_params(pf, &qos_info);
-		iwdev->dcb = qos_info.num_tc > 1;
 		irdma_fill_qos_info(&l2params, &qos_info);
+		if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
+			iwdev->dcb_vlan_mode = qos_info.num_tc > 1;
 		irdma_change_l2params(&iwdev->vsi, &l2params);
 	} else if (*event->type & BIT(IIDC_EVENT_CRIT_ERR)) {
 		ibdev_warn(&iwdev->ibdev, "ICE OICR event notification: oicr = 0x%08x\n",
@@ -283,6 +284,9 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
 	l2params.mtu = iwdev->netdev->mtu;
 	ice_get_qos_params(pf, &qos_info);
 	irdma_fill_qos_info(&l2params, &qos_info);
+	if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
+		iwdev->dcb_vlan_mode = l2params.num_tc > 1;
+
 	if (irdma_rt_init_hw(iwdev, &l2params)) {
 		err = -EIO;
 		goto err_rt_init;
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index cb218ca..cf6732b 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -345,7 +345,7 @@ struct irdma_device {
 	u8 iw_status;
 	bool roce_mode:1;
 	bool roce_dcqcn_en:1;
-	bool dcb:1;
+	bool dcb_vlan_mode:1;
 	bool iw_ooo:1;
 	enum init_completion_state init_state;
 
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index 460e757..7b144e5 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -1189,7 +1189,7 @@ int irdma_modify_qp_roce(struct ib_qp *ibqp, struct ib_qp_attr *attr,
 		if (ret)
 			return ret;
 
-		if (vlan_id >= VLAN_N_VID && iwdev->dcb)
+		if (vlan_id >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 			vlan_id = 0;
 		if (vlan_id < VLAN_N_VID) {
 			udp_info->insert_vlan_tag = true;
@@ -4229,7 +4229,7 @@ static int irdma_create_ah(struct ib_ah *ibah,
 		goto error;
 	}
 
-	if (ah_info->vlan_tag >= VLAN_N_VID && iwdev->dcb)
+	if (ah_info->vlan_tag >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 		ah_info->vlan_tag = 0;
 
 	if (ah_info->vlan_tag < VLAN_N_VID) {
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
