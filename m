Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C464254B416
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jun 2022 17:01:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18FA540B57;
	Tue, 14 Jun 2022 15:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Oqj5tzG2XDK; Tue, 14 Jun 2022 15:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCDC040B56;
	Tue, 14 Jun 2022 15:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 874EF1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 15:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7480140B43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 15:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UwG9a9UXWbeg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jun 2022 15:01:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECC254010E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 15:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655218902; x=1686754902;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nKluARxMQi9zL10EO/FvsQxGyLJJ49N5qShyxwZTrxg=;
 b=Hjd9PeGm5LpJXgiWOlwSl3vAnmCC9sJx7E2kxKNemxSKtf4GLaNW8mel
 YjT7maeh0Hq7/fm3noC4nLT0Zvs3RwMXKnZxUPm5cyOHr29gJHLio0ZfI
 g+Ubh4XDbWVaUqOfoLyM1p3ZQujricaV66u9mkLxYMtSBaCF2M5VRfJfu
 h1egSGWtu13G8RvB5EeISEsrPo5LMa+tck/Mmkexh/yDFslHO5QBVPrFA
 R1+EkFObw2qFaMQ4F5YupHXbnu+y3DCd/c639mPAgoKwfYCQhlE8Y8RKQ
 cK6iLzX6uBJuZF452KLbhUMbAlQrySFW1uawANAXRwqnqg5QWKZOUR23I A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279358208"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="279358208"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 08:01:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="558377854"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 14 Jun 2022 08:01:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 08:01:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 08:01:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 08:01:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChjYCWdlaT1/yCBfrTu4UG/APWq+WFvPSgIRaU0Xl16NBHptkY6MaBw/S2vjQOEHxwe+YTrZrtQXIvnHShkvD1gLvCuKecEbW/+7a71qmmmmI7ixRAZn+1XsKx3jJZmmiM6c5EfZt3HuaO2GKhkw5pJ3RWqVCngJSBuvwQezyxAT6erPU3FxgYxnGq+ISwXBaNNi8fgR0W/ZqOJKBhXEUSId0RLLySv4dAXBe4YIWL3P28ccvNBafD9AO2PsTg5NRgZl3zYzobABexnMVVJpLB56Fk2VIS8F08oIUADeKZs4RQ9dCcMjpqGdQteYD9ervgsseoqvHMWElh/nOkcphg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UL10wiIF8ms3oXCVEw8YGkN1Y2S9W1KimDJv5c/oKSw=;
 b=kRF73DJQT7K0zOuG7NncztFD38xnWpEcqpEynnnjtHj8AfbyWpNC+DIRfn4OkdjYlv2q5ZElIameKx1DNzc1HL69nrBwqu29QaQ0hkTC+7VhUztVcfH0a1aq7W0FZh4Lo8zHUCiRpsv4asE0wxcqqb56fUlVHZo+/wzmMyh9ZT452TNzaL765lIYAIuu6kYoloohzdVNnsgX8/RkhmQ5MB1F04b7pLPsJ16QDcqOTEY88fj4yEDvjslubPKO4KEEcnIkonfkFCiaGa+a+q7TK+4dkisQkqOhBnfaQJ0tYaFD3PjBbaAcxs4mtYXepThO1aIL0bxLEGE/ViKxOQq7yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5360.namprd11.prod.outlook.com (2603:10b6:5:397::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.19; Tue, 14 Jun
 2022 15:01:11 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 15:01:11 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 2/2] igb: Make DMA faster when CPU
 is active on the PCIe link
Thread-Index: AQHYcCsKb+YiMy35L0eMGgVYBuwEaq1PHrQA
Date: Tue, 14 Jun 2022 15:01:11 +0000
Message-ID: <BYAPR11MB336759CD46D7A1BD30A86BC9FCAA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220525113113.171746-1-kai.heng.feng@canonical.com>
 <20220525113113.171746-2-kai.heng.feng@canonical.com>
In-Reply-To: <20220525113113.171746-2-kai.heng.feng@canonical.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed75031d-0b23-43d3-8b1b-08da4e16b885
x-ms-traffictypediagnostic: DM4PR11MB5360:EE_
x-microsoft-antispam-prvs: <DM4PR11MB53605C2E52DBE28604D2FBFEFCAA9@DM4PR11MB5360.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 632ha6Aj2pnPneSM3MU1bDsZzGs2b6wlC+tlmp239JhPIwaBYW7LYjGNXM35M0CQwMZppuWAjEovE5lIWc+99c2XEvVfGSJC+9Y6k4WR38KezO18KWUBv/7gcjEfhg+C4rmuPUnZ0GORFsErCZgWTzFpXKIuzJPreRDYqXf+ZV3xDuXGIQJb3m1u/lLMl4hEkIgd8bdSDQPT4IfTR0UlG72eZVSW3gN8tCmDts+/EATFmjReKkxOUvJxDkR6nD1HCjA0GhWW/54tQlkHQhHe2iSxccyzqtTtTGaYAUdnPxYHsefIPR+7zl31dba73IiNV2vj1a0VFOC6bogZFYDaJ+R/X+4SiZc+daLUOzifo7jOhDGvi/56WGNtfPYcDw0MzQk2LwDNMjium948H4GULqbI01ctTETyRdbBiokNXJ417CEhdG0CFBco8RxCopX3YMOS4uNDyvSqHeW0PDI1idYj9Y5LdRDJGFta2L1HNmDkqVoWlAGaFylwLxHuCUaXkRPr6OYo375Cku0w3DpJSlR7TH10Puc0Iww9M8zvWzDer6Or3fgnyluUto8rCI70iOehSLQcUAmax4j5RUcW6+YH6Fmd8XP0nN5Q6QTy5iNSeGVNCMq69KQkN/nhyNOrA1mC+SziJ600z6MHXxAwMwnUs/aaFNniMram220Xd9KE+G+OTAxwBykk6YobfF1JV76Izz0kqv8F3egGNVrYkA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(26005)(5660300002)(2906002)(38070700005)(52536014)(9686003)(82960400001)(122000001)(55016003)(83380400001)(110136005)(71200400001)(508600001)(6506007)(8936002)(38100700002)(316002)(186003)(53546011)(76116006)(66446008)(66476007)(66946007)(8676002)(4326008)(64756008)(66556008)(7696005)(86362001)(6636002)(54906003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VBcJJ4Q1+CTlD/bqX4+h/Nm/3KQzrdPBZ1f8ExVEySrInuOD5pI5YGjPja/F?=
 =?us-ascii?Q?D1wgXlHqzDlteTPl4QQgfY4ew4nk6kptdZQp7+dLq6jih+xn2kObk1R5G9WY?=
 =?us-ascii?Q?MGAPXXaUKV3l/2+sP3FMcjQczejqWd9wnJByrI7WUe3P/RD0VEug7agLg6es?=
 =?us-ascii?Q?vIdhcaggaWi8JHGvSum2JXVUZhJKl5hqmLV0p0myP6D6fAFXd5bGF3r0WYeF?=
 =?us-ascii?Q?GCNMdn8oclfcFuoTfmlXDJaxGUoSr1/hmOq4KnzBqddFzsdLx7PoadSDdhl6?=
 =?us-ascii?Q?22r0K8tnLbnHKptvnQQhyZiDtB8bB+A0cLQFIDinp/r7C8gwYbheErAcfa5G?=
 =?us-ascii?Q?UP4TwCbW0FugzhJ27gv1+ESrK7WAetiysTC7UDorU+u8KN8MCs/NTNr7bLUl?=
 =?us-ascii?Q?7fzTQblf/HqLrLUp6ERkW3i8YrHZBNeQVSNnXHcV6/1Xgt0SEbZd80uWfVv0?=
 =?us-ascii?Q?djTw9TpUswzIqp1shdg2ClKqxn8kNC6sfhdFftVzUxMB6Yu6LokLekNZI3Hs?=
 =?us-ascii?Q?JwgQCrKwG1v2YHFxsOi/raA4DBqJKVQ12jgaQsuAQZzqv5bE0j3SIemoac9Z?=
 =?us-ascii?Q?IFsnuW02S044PYU/kuCuiTvEN/8nC6gJhPSvEN4nLGXqS/4XNyEwc5vfU1A1?=
 =?us-ascii?Q?OWqgEblgFivMs1biVVyLB9h0vV9C0hF93GbdpWK5fs4gkLnhWPE/fDnM1p6R?=
 =?us-ascii?Q?yC/SrAbI45y+2uydjNQDtpCYr4qCSgwADbI4cw/TY0KUAikI48PHeDEA9OHT?=
 =?us-ascii?Q?cXcpDI74Df8VeuDieZvRpuH+ypkKD27H5PsOKeAPuOkMk2wACBcLWIpz4TYD?=
 =?us-ascii?Q?M+fmdAU4kG2JwRmkRGQpFzcB7tKLpWRHg/pyPH5mhXpMbOC8HQuBTn+0bhoQ?=
 =?us-ascii?Q?Rjj6UFrfKkXSPbb2GmH71cbsUTUB/OOpx/+1FlxxMvF5KveZ+ZiqDznBlg13?=
 =?us-ascii?Q?YgIq1KxQD3WPkqnWLFeYcJn63xjb3uLqHdzaNExQS1uHIeJpNWVKj/hgcvOl?=
 =?us-ascii?Q?xg6TzrBhhJbZBSrbNJSm9X0qblALlnUu58Sa3mxsobVGYoBK0qu4ReDOi28j?=
 =?us-ascii?Q?BIJnlEeMRUiqyxj947wJkmt6dX4azmVpRFrRLqzw5hbrLmPTSuRldn3DchAU?=
 =?us-ascii?Q?qCAM6V16ulA7CZgcQmLLZGWlILAMwtjeEvvwc3ga2gS5n3diewhlu5HPBH+D?=
 =?us-ascii?Q?dFgPDYkRmd3ULr3OCoiwyPQnDqgXXe7nqldpz5vE8eD+dcRfUlcbJpbnlt12?=
 =?us-ascii?Q?eI+CeJPwOqivupovfHkLMyYUNLG9ZZ+ePk5K3NryBiIepQsJTH1EJjMU5fRw?=
 =?us-ascii?Q?xTm29opPGl6ZP1PbYNyefnuhhopjtDiYavxmiuuhZbGUUUzBFczr3UJdrred?=
 =?us-ascii?Q?HbL1N7i/mfxBRQe71T2C3bDeEztjZIhFHHafMzGrUJ4XZdG1o0gSfovTOhAG?=
 =?us-ascii?Q?k/QpNInmIXJeOtpzHnlD920YUeIhJaUwb04uQeNcuh9ZWIqZv0zOb1oi3Ht9?=
 =?us-ascii?Q?vHf9CqnJU0tpczL28sgNsUdeRFTFftvcegrpr30KFBxuJfkAozJZU6ui9DIw?=
 =?us-ascii?Q?cT4X0XW08rR3Xq2ccJpOAHjxpkL0do8UfaSzskm9Rkabu5iNLVsuqXLfkoGb?=
 =?us-ascii?Q?zFj8QtF/wG1Waa5z0Ps6+1cBYT1WDrWsZKdZB4l76glx4AmDRW6/ltt3tg3U?=
 =?us-ascii?Q?TGb0urwbO4xC1KyY9KqAl0X6fCh9DicIfG4fumO8vmQewItKs7q4kKdo1/bA?=
 =?us-ascii?Q?mxogxNMz9Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed75031d-0b23-43d3-8b1b-08da4e16b885
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 15:01:11.7728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TawVVKC3w5AoCLSVRbkRoJhQ2PIWxnL4OPzoaY1k9BHjAY5qO2nFpaLAzu1yAp0anj6RaSXJp1qWRK3iPqESzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] igb: Make DMA faster when CPU
 is active on the PCIe link
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kai-Heng Feng
> Sent: Wednesday, May 25, 2022 5:01 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>;
> Kai-Heng Feng <kai.heng.feng@canonical.com>; intel-wired-
> lan@lists.osuosl.org; Jeff Kirsher <jeffrey.t.kirsher@intel.com>;
> netdev@vger.kernel.org; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v2 2/2] igb: Make DMA faster when CPU is
> active on the PCIe link
> 
> Intel I210 on some Intel Alder Lake platforms can only achieve ~750Mbps Tx
> speed via iperf. The RR2DCDELAY shows around 0x2xxx DMA delay, which
> will be significantly lower when 1) ASPM is disabled or 2) SoC package c-state
> stays above PC3. When the RR2DCDELAY is around 0x1xxx the Tx speed can
> reach to ~950Mbps.
> 
> According to the I210 datasheet "8.26.1 PCIe Misc. Register - PCIEMISC",
> "DMA Idle Indication" doesn't seem to tie to DMA coalesce anymore, so set it
> to 1b for "DMA is considered idle when there is no Rx or Tx AND when there
> are no TLPs indicating that CPU is active detected on the PCIe link (such as
> the host executes CSR or Configuration register read or write operation)" and
> performing Tx should also fall under "active CPU on PCIe link" case.
> 
> In addition to that, commit b6e0c419f040 ("igb: Move DMA Coalescing init
> code to separate function.") seems to wrongly changed from enabling
> E1000_PCIEMISC_LX_DECISION to disabling it, also fix that.
> 
> Fixes: b6e0c419f040 ("igb: Move DMA Coalescing init code to separate
> function.")
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
