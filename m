Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA8279A548
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Sep 2023 10:02:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3825740972;
	Mon, 11 Sep 2023 08:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3825740972
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694419364;
	bh=fOSpBdC+XuOwaNJIeOyGOYjPLB0JUlR0aRSh2t2+P1Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yLZdsXrfj/FgnPoab1ru9kxsIP+wea94hXypIHGWbsgUqPz/xgkiHenjMRi1nwL3Q
	 m4HKxOlymv+PeGKjPgjmd6B+L9HQB+xVw9Ga7RguKMogAVNgi/YyB9j+jiSKWOqPT9
	 5F74pUyk8jw57Zs+WCBo2s0geUK9cfsz8KxAnRhOFYr7beIs6w3MBW+/Zf6/S1lKLl
	 2n2c4NkqBGiQAl6HYKT5R/rOJPngze4CstVpUUmFCZ0lALQSKjfLY9JL0CuOAgrzLP
	 xFfbPL27FdE+9u9WfFoqg7KciTlJWChXi20R0K3WSQOuNOt/1vKIGXWWC+1rxZHtul
	 mK9DID1GY/dpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 31J6dcp90RSw; Mon, 11 Sep 2023 08:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1913A40950;
	Mon, 11 Sep 2023 08:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1913A40950
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2B81BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 08:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D79CC403A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 08:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D79CC403A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wEifeZUmavP1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Sep 2023 08:02:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1D2D4037E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 08:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1D2D4037E
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="380720926"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="380720926"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="743250305"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="743250305"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 01:02:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 01:02:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 01:02:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 01:02:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 01:02:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dB1E2n+raOYie8+RokPyoXlZ1d8LVXCwlfxbpnsrFP98Hum4LO8rHB6ULzrAxgArkDySYkaVmYp5Q6Zw0wWhz2BqavPJT9fnKOO5DKgd0nsyZr22ZT+9+i/zT5vLQ16QbVelXXMX8OH590rnuCoIhXF+1nHsD70lMSgUxXPqr5wW/1g1fklMPGMSagkNG6J02obHmMSx6fLFTAU9XdAMfvl4u4DhIIuM3ScsQcmVdvEjd9OnBbY8I70zDIkNr2eJvEpS8qkdPh3DMLivWR5pUWMsuyAgm4sDfSMUyfXWlJUXl0RU/TEa9mVFx4CCaUxxBV/dahe6cF4GVS+N1xBGCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZLHWbNRE0FJj1ywi0+mWr3mJyfBDprMsGuMD0eN32Y=;
 b=jJAfYg/GCHk8vVcO0qMUxPBNWVAY+cLPCN5+iMEL7i/LYmku38EPEN/QSfUmmx3z+D+OPJTfdWqszBD+ran/7dqMpm8yEFABI5ZkC9s0WK+pUfAhJM5r0gZ9rKIYOzpuHc22q4xhw230LRvR9cTqLCFeDaMirX60f6YCiyuThkCRpgfQJq+i/+ue2seOx05+xRB+xmMarNgICO67QbRDWwGQUYBw1WDPdv7PX4dFWTnTmGMaPtjMD5LxMpgTMoS88fbtRQAI3G5nm27y6iDbisoJI9U9g089E/P3e8p3ME0U2S2FvZDyvZd4xsgqNuQDsCMO5GtRH4xog8FFfa/YlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3528.namprd11.prod.outlook.com (2603:10b6:a03:87::26)
 by CH3PR11MB7346.namprd11.prod.outlook.com (2603:10b6:610:152::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 08:02:10 +0000
Received: from BYAPR11MB3528.namprd11.prod.outlook.com
 ([fe80::3bfb:d758:2458:62a6]) by BYAPR11MB3528.namprd11.prod.outlook.com
 ([fe80::3bfb:d758:2458:62a6%5]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 08:02:10 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Vinschen, Corinna" <vinschen@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] igb: clean up in all error paths
 when enabling SR-IOV
Thread-Index: AQHZ1mu3PZ/oalv7bESHY0Q/pbqz66/5avSAgAiD6ACAAilsgIARR0bw
Date: Mon, 11 Sep 2023 08:02:10 +0000
Message-ID: <BYAPR11MB352816052C64937D7201247E8FF2A@BYAPR11MB3528.namprd11.prod.outlook.com>
References: <20230824091603.3188249-1-vinschen@redhat.com>
 <ZOdWAdHNJzDs5ss7@calimero.vinschen.de>
 <c9bc7c2a-622f-5d82-69e8-2d24ba3875fa@intel.com>
 <ZPBK46hxIJCmuKtr@calimero.vinschen.de>
In-Reply-To: <ZPBK46hxIJCmuKtr@calimero.vinschen.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3528:EE_|CH3PR11MB7346:EE_
x-ms-office365-filtering-correlation-id: 6f502f3b-1865-447e-be32-08dbb29d66c6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8qQH7smfVeisnF23TAnUzRMfIzIBBJWlhJM8Ng1/pZ0FalzfqJiWTr+y1f+c+rZkoy4Yc7MHDxkUcGKmiClTgOtiHqjsbaN62OdRXfJ+84xK2aYq4KA5SX8s27wWtLA4EXs8RhA0WWGNq3ox55aWVSlm3An8BbtVtwmStUqm56ecOl/L9bF2Pb6zS60geoIW/enyB4ePvC/qbmy/LnnqG9b6wn0t+I235A8wCxMEYYzlfhCQrA1oXDPjBysRRZd/MlWUzy+jodi8Ma98+6gPgsViEogpVMk0OrczF0AOL6dEETRPcoIT2QXTLxAAbxEKvoeIhTCEp1cYnWD0nxRg5h0kW8asR+jc3LY+/5ol/2Dnp6eEet8HgYlYPsUWKqidTfLV2U7SiuDXTLrU89u2JgiXyy69CeMHzGRQNzeHxZs6SQo944xRbnZgNkV3jWSVo8NATUaHvT78oxs49Dh//7P3qOU/dnaXKcNemp9PkQMwlFArt42jkSeY+Uta8IzUPvifY+lMHFyMZT2F3S3y2kINFOPQT+Aioz81kexoK1dCfM03YfRjwJLibfLniwEB3Bypq6CfV0fDOTfs8l+3aSpPN0zk6NH/MewaRyEW0yXuIOSadKPJOkkbZqew1Mxz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3528.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(366004)(136003)(1800799009)(451199024)(186009)(122000001)(71200400001)(6506007)(7696005)(53546011)(82960400001)(9686003)(38070700005)(107886003)(55016003)(33656002)(38100700002)(86362001)(4326008)(52536014)(83380400001)(478600001)(41300700001)(316002)(8676002)(110136005)(5660300002)(26005)(66946007)(76116006)(6636002)(8936002)(2906002)(66476007)(54906003)(66446008)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1B6RU1ccCjTu+q2gOSobHOXFLIgyeq3D3iqN0dCDlLKNoICOK1RsKlO8JHUe?=
 =?us-ascii?Q?/isEsPVknt2yZdB6ie3nPOjQPzOjspf59o+4oRqT59ElSX7QBWgP4jHqGPe9?=
 =?us-ascii?Q?l3AYiVDJZdml/d2DB41eufGl6jRKgAbgnKybblueeLVaCZERC2112+yWZ1NS?=
 =?us-ascii?Q?PluSQdYNSewCBEdTci1l1rZOex6zlylfTKZwmy2ubwr0n8hs//ILGr6Rl4rs?=
 =?us-ascii?Q?EnO0xZdx1L23/0UCbUL5b42b8jefF1BqTj+3dfu734rdv+HtjruuQx/BSKIJ?=
 =?us-ascii?Q?aWv3CnYmGE2sJDkANdl+ARviA5p++B5/reEKtd2xgTO5UZCxHiPowQOJHV3S?=
 =?us-ascii?Q?TbGlIn6OGe4a6nPLicEzU2NIsT7bmlPu9JGdjc1rP+BnnBuSvQ1RWG7GHJhw?=
 =?us-ascii?Q?QQsbSXyCOWsn7VQUCiTQ65cI6l1IP0FEZVQxqfYbM6sqEZ+sDgWqSVga/p54?=
 =?us-ascii?Q?mj+6bHGKXgPTUDNj+NrFFdHeuWUuPyz5Mxg5WSiF5/fs96Mn/zB6OB5bM4Sk?=
 =?us-ascii?Q?iXRoW+rlarn30uPBQCzRv6X57Y/jTwiDs6T+aHUmNhi9W8okrl8CcdvFhsyJ?=
 =?us-ascii?Q?VHfRdYbNNfZ+Qn3VhlrNVvDkosIlJtpsrjrRlNuhjnw8F2QC4QanOeVFur78?=
 =?us-ascii?Q?A3lAucZes9hq+cFt6HK71bJPHr5mbX/3qxSUX48gmM0imuwLWTusZwWyW3hk?=
 =?us-ascii?Q?WWnVOa5Vk/91aW8rBUhKJxAwekzkgaz7VWzb9yqQtnKinM4AXcEqukqUlpaA?=
 =?us-ascii?Q?SKIKE3tKVro8xSb2PjsF/zoKm2nQR6Qaf85dwlYNynlzy8tJd79eXiLOBkGo?=
 =?us-ascii?Q?cEhQOOHyci5OgRfKA3fgsI8A6JaZQe76vb+U8g0hNbgSYwahOpICTeeYL1Mk?=
 =?us-ascii?Q?W+LlX8CgRi/o3bFElX1ONS9sF3oFXKmGcIHMiqE3bvn3lmhOKQP705e1QnVa?=
 =?us-ascii?Q?IMXCB+ceY3LsKuswApFoPIlohEVcypx+ghu6IlM/vFNi9GFSHmBxhgAiGxCo?=
 =?us-ascii?Q?GDWdHk1epYWHDObCsCOxFNVK5kjRIIUQQzIBcLcWCNTh/XKbS3uiEDaaYq7p?=
 =?us-ascii?Q?V4FWE0jyRyH8IC+yw3YlhhmBhbTAN4DN2DRgV5lz9xOBz14f3uUg2aLOl3ni?=
 =?us-ascii?Q?eXmcNGRbKevuns3IZY2jTueXXIXkMNqAth6KAPfDR5NxHTlusOpNJUecM6cx?=
 =?us-ascii?Q?zUDrh0/LEBc3LGhj7ezWzIt/09z5ZankKMcG4beUCAAvMV0jyI0LmFrbVsCU?=
 =?us-ascii?Q?ijQFeimWb7KxacYkn+89e9I9qPldIDmO48wWvUS/rDc28+jrJzWZ1fGkfjC2?=
 =?us-ascii?Q?X8c4sqe0AZqQVllXfPVw670Pe2noY2HpCEUzVuqsnJyfTUSIyT31ZL8qJzZ/?=
 =?us-ascii?Q?5DxQLQLrk4zxRrCD7yD6OqD5/jCEUSHgWV/26dshilsFLQai0xvYqRDkft6b?=
 =?us-ascii?Q?CBsClghMr0c5q0mjU9WrmEtP0ejYRHHqMw/vC2f1dvV5rcUjVP4JiHc/yRGM?=
 =?us-ascii?Q?9LAlvj3ePV3fXbev78w+NiwS6T85kCqAJT7bCTWbvN0tVZ98UW6iXKn0L0BQ?=
 =?us-ascii?Q?FQvy9UFf/wfYiSv+uxgr5An9L3WuV5nYBPoBT5Odu+IfrIoI4fuq5GlVeRTN?=
 =?us-ascii?Q?sw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3528.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f502f3b-1865-447e-be32-08dbb29d66c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 08:02:10.6740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4nc4np6AEU5QoBgVBeLET5TsCVJWlLebQeIuaBVG6JVJTF4JrcSpzLqejPaIhr1zT9oqDKmNaPRDuEjJqoXVo8xXzilQLGLLLnYcC5FMXkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7346
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694419357; x=1725955357;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HMOc+6T5f0298mN0Lx2NO2+oc40KxxtYcSzst9WBKtM=;
 b=GDHrcXGNx2Qd+3u13lUEIomgzRwOAS4FpfeVhEeOAWh9pQdJyW92SWJX
 FQew9r4x93joRtZaolUhaFxB77vcUq2gkCptIkbWZpnhX3wLWoW+YdKCY
 FdkRqjY6s2x9/k3rMBtiFXRqIuCK5rcKfFzpxoiyRUUUiRPMk71JTr6+N
 pQ5yoF99g3HzajcqiouFasdBQP0phAgCyP4bSv3R12qLnn5b1DxAud5D1
 fCVvHIxMvkiEhcfLUbnSQeY1m8kFXZKrqsyqWQTa0FSrjTeOtkprHhhXO
 z1k3Ga9sjKrGiElhHNL59rbaGLl3Vp5hoc8Ae/E+KGoFUzNVYWcCMusJX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GDHrcXGN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igb: clean up in all error paths
 when enabling SR-IOV
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Corinna Vinschen
> Sent: Thursday, August 31, 2023 10:10 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net] igb: clean up in all error paths when
> enabling SR-IOV
> 
> On Aug 29 16:09, Tony Nguyen wrote:
> > On 8/24/2023 6:07 AM, Corinna Vinschen wrote:
> > > Question to the Intel folks:
> > >
> > > On Aug 24 11:16, Corinna Vinschen wrote:
> > > > After commit 50f303496d92 ("igb: Enable SR-IOV after reinit"),
> > > > removing the igb module could hang or crash (depending on the
> > > > machine) when the module has been loaded with the max_vfs parameter
> set to some value != 0.
> > > >
> > > > In case of one test machine with a dual port 82580, this hang occured:
> > > > [...]
> > > > The reproducer was a simple script:
> > > >
> > > >    #!/bin/sh
> > > >    for i in `seq 1 5`; do
> > > >      modprobe -rv igb
> > > >      modprobe -v igb max_vfs=1
> > > >      sleep 1
> > > >      modprobe -rv igb
> > > >    done
> > > >
> > > > It turned out that this could only be reproduce on 82580 (quad and
> > > > dual-port), but not on 82576, i350 and i210.  Further debugging
> > > > showed that igb_enable_sriov()'s call to pci_enable_sriov() is
> > > > failing, because
> > > > dev->is_physfn is 0 on 82580.
> > >
> > > Along these lines, isn't the first and foremost bug that
> > > igb_enable_sriov() has been called for this NIC at all?  In terms of
> > > patches, shouldn't the guard expression in igb_probe_vfs()
> > >
> > >          /* Virtualization features not supported on i210 family. */
> > > 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211))
> > > 		return;
> > >
> > > get changed to:
> > >
> > >          /* Virtualization features not supported on i210 and 82580 family. */
> > > 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211)
> ||
> > > 	    (hw->mac.type == e1000_82580))
> > > 		return;
> >


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
