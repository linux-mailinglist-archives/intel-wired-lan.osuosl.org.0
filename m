Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1AF67E0AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 10:48:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2194D611F1;
	Fri, 27 Jan 2023 09:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2194D611F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674812935;
	bh=Taadd44R+QeH8Ggc9bcjPoxMvSjiVnwgEHc45pgrm90=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HEpKEWaTHc7GZQTc7tHxw8PH1Zj60HaJyIqvDJ3dGeXzK2Q5xQ5gs1i713ruLli3e
	 gnZZIoxhuqXd4D4BCTKQaGxs1Qd3ZwycYeOkig/SWS6Rdq3fshE9qrAkYBA+E9/7bB
	 rhoW7LHaq9uN8VsgzmkkjxsFkrvZmwEV0rnHYk3wo+stwEyhnSn4/smSX/XlAjX9ks
	 7voBuzlZI5LfUapVCtbVbSL9lsuRSJYHdGrQMo/E/kD0Gc3dQ+mxbX3OfCMKd+3g29
	 lyUYipuyBPJq89Dih22aPGyIv4BlBTFaqznSP3kokZuBaqbBe77oPk9va7rL6cn0Fn
	 GKzSxyfB368vQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tnUtIuZkC8fH; Fri, 27 Jan 2023 09:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC5DD60BF7;
	Fri, 27 Jan 2023 09:48:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC5DD60BF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F02261BF346
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4E3981D5F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4E3981D5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQidKV5tg3CB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 09:48:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8382981D4F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8382981D4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:48:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="389428265"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="389428265"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 01:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="613128217"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="613128217"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 27 Jan 2023 01:48:46 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:48:46 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:48:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 01:48:45 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 01:48:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L7qxa0pa+8EFz8ajXBOR2H8Q9cgwjt+8T8k2oFGkhpkRx8RlzdbWxqczNNLAI91BYhPrEESzsrLPoMEXPvl93x1KEi53fc0revnX2U/gEvdydTSeZ0rFkm2fbmpe6/y03zPaYM9puZCtu0McQdpo6Era96RR0ImQr8p7DAshxxtjcZ6NrF69VNBtvnjJQFfjAx1kKC38dpqnDrc+IDdj9My7z+GcqtAmfLA7KNaKPDy+H0VDbMgTAclQdjQp4ooc6yuU1pFEZ1LwDczLzzQe/AHGchMDnNsPZh39wupHpXTDGy9CrY6i6xBZ65cNSU82CpFlGnrSQ03dbLO3uIP2sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atVwoNuVSRupXKj/S8IdsDpkjd2ozNyMLJRtDzwmiVY=;
 b=SsGCX120jieMXHNAOAhGJs9fRZKKozyaonKKfOxRTZ/jsiKI8NkPHq5ALfjPcHTONvM3wBnybfr6+xqkihsgy7QWJE2fFfmCkXgC3xg4pee/dlbNtiB6ZiIOozS/tZJLRwuduPxpYMvjy7EgrbzZD1RChLXsBfWuFfQu+aLytEve8LP0eTRtl0e480sVg+9yhdMsjEYj7lv2VJbhJVOC2imyhpGIwJQvEGWgWzIUeim+GfepJoHb6HQJkVDtR6rEV6UeGrs2p2lzP8iQnwjo/o+JSeM6/7gpa0+fcDDZ2jwyV1UDLjXnqxRQgAo9wosAPvcQuZyXwqtG+SPJ+tpn1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by MN0PR11MB6058.namprd11.prod.outlook.com (2603:10b6:208:376::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Fri, 27 Jan
 2023 09:48:43 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Fri, 27 Jan 2023
 09:48:43 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 12/13] ice: introduce
 .irq_close VF operation
Thread-Index: AQHZK6Pk3QK0u1jTkkm8cZ+BJr3gI66yEbMw
Date: Fri, 27 Jan 2023 09:48:43 +0000
Message-ID: <CY8PR11MB73644666867617089493FAD7E6CC9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-13-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-13-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|MN0PR11MB6058:EE_
x-ms-office365-filtering-correlation-id: a1ff7c54-3e1f-4808-800f-08db004bad7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q/eAtaB/twHErUa+pmuLT5dqQ3FvKUbkJJxSh6ikGe132TXHqzuM3WC6gGbYtYWRnP8pHYlP0hHdXwp/KLBl30xcseFYS9aql1K6w3bm2qV+SNRfoyTgJJt095griRYBf4Mj4Jd7VV/SPLwLraPWICYC5yRfKjLKsbaipKBkaKHS3ODr+ZIVtPjBVgr63KJGsZLQJRkINOY0VFwJLNrOCtAMlBfxJ+LHGpTiaV2ZafUkYQvd7kgJ7as9MYjbPYO3Lm+8ktAZrgXlsh3jLOZCq5TW1hHQIPglj/KabQJw2Zk8lWnHxDxTKjVCTAgUeEZl1rbZarBLzS1+nLRkYnzzMjsD1NCKucoD+AsTawVuFMegFdhdUitSuTi4tc4fRrILYLUbLjhjhzFAM9gOQnW9xkmNlBqYRs2ZHq2SHbn1N/Dlo/cr3looVjadgAJFVVKdcu+UPkn0Lw3cEXb/59BSXH5f/5HZYGyim21mHl5+5wCBxNX0+ztR6B/UD0yaS+e+EeFNti77rSy4pJAJ3uKPacBFfRGDPESDwRhI3OHJSCDBd4p9v2beb83ITM5CGTk1rOq/udjr4KX+DgXFdt7Duim5QsVbOTjGsSnMjOvMjEiaBFud4CHWHF/qGFAFpVMHh7s4/6qcSIuADVJHgxRbXsWDGvUmy3hbiHPCpWh6zTkqay7O/bKPrwU2euk6WvIOMKWYWO+UHkImfZYRtlV1GcYlkjefMQ1OaYR0b6fweR4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(376002)(39860400002)(366004)(136003)(451199018)(33656002)(7696005)(71200400001)(8676002)(478600001)(82960400001)(316002)(6506007)(53546011)(66946007)(5660300002)(2906002)(76116006)(6916009)(64756008)(41300700001)(66446008)(66476007)(66556008)(52536014)(8936002)(26005)(38100700002)(122000001)(55016003)(38070700005)(9686003)(186003)(83380400001)(86362001)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6AWc4q4Q5iW6SXj5C9qa6fDnzNh+PR1mt+3xkLMlds+1HHjR35w08rxnRd3S?=
 =?us-ascii?Q?LALdN5X+VjeV7e0S8KHnsr5K02ttWeUFwnn4X24fbUs4T4GSnxZvfqFEFGu/?=
 =?us-ascii?Q?sZjI25cd5JS13+Lx+/wcpdymjIqmDv0tuGTmnhZF5m/pkFCSHlGXh1js3j3m?=
 =?us-ascii?Q?gQBXwWvETHbAa1OS4vYtopBXxPePNA9RH2iIHA++fPcd0lE3NbaYU/Qnq81o?=
 =?us-ascii?Q?W1Zlwy+4pikvbkb8lLWb6/u5swmSbjasmn7zC4wB9zABJz//Oaa2ZSco3B6S?=
 =?us-ascii?Q?Pp9qW/eS6IpIO96mEvgRvS51QLDILePFAQLZGnlWi9gwbiFMaK3QszYYJWE4?=
 =?us-ascii?Q?afZlXfL/uigQ+gamWtqK3u5PEY6XNb46feR9gsQmr6w5tnEs2xJVZtYAihDa?=
 =?us-ascii?Q?k0l8UcEYY2l08S2Rj1oQ1v5w4Ia8Jz7vzTgwZmGwLlyvG35KsOo19uPdv7Wj?=
 =?us-ascii?Q?rWW8R1Df1xnEafaUQ5rkb4XIehGXeD9Kdc4BfJQgRWMBIqyAmd2Q8LUYcmV9?=
 =?us-ascii?Q?in7OnC/xfvb9lrnTNkuOTd6PvOs+uemAOUIDn7RqEYpY4MMJ+oKjSSiZs/J9?=
 =?us-ascii?Q?HPMfzFF03HaBB9T0cf441hCwaxc1viTocx5QMOe8n2lDKB1V9F+EF/R++Lt5?=
 =?us-ascii?Q?cEPnTKQfQHgVKAYUOex7sxy7Gjg48cCQf5e/tRFuzietQD0WNkRX2Y3rPI3i?=
 =?us-ascii?Q?aUUr3zvRDeX3PJaGWRge5/GSmFbOrb9AWd+/PkW3tuOR96VglA0GXlOmkf4e?=
 =?us-ascii?Q?tObp7Vy+Y10IZzU4krI+yf9eEwoi6bsE8Cb8zs70GRlDPUoryjWx7jeCYjEC?=
 =?us-ascii?Q?KdSPeExG27KXURMH1cLO5TY856ohB+oygcP95TpF71eJ6+WSHlEWhsAT1nVi?=
 =?us-ascii?Q?k0kNCq8fI0Q+cuwvYQRWjKhWKfaQXXLzlR51Ka7gUDLrfQAjf28y283nBWAj?=
 =?us-ascii?Q?mJIPtmqJ8xcj4ud/WIrKFbAOIssTKb1fq9ZRJokoNrV3d6bFCHwiE3nPScWF?=
 =?us-ascii?Q?5gc47mJqBL942b9tR5EUlZ5d11ct6Sh5fEusZxhL1ojTI6quZ4d4K1ybhS7c?=
 =?us-ascii?Q?DdXCYmE2+de5kSzj/RW5evxjOP9tfLEEYxqrhw6xVLkl62lI/VEWDgiSVBvM?=
 =?us-ascii?Q?kq/gIEsBE50lw2p/mqVoVK7P3s/8fB7IKuC8urAUDsqYCYjgOPd/l0vnUHEm?=
 =?us-ascii?Q?wHnNtg5Jg97YxirWrqC8KIITn2gtoQsGFlUG3qqAdqB6bJP+wAo/CLr8DyZf?=
 =?us-ascii?Q?sw3VzUs9yiq5HBz/RfZlgin20JDrK1K6XhlaX4grrkZ4GvySz8eARYxEg/KK?=
 =?us-ascii?Q?W2rX5NYeU7057fyidGx2nlQ+EmH3j23M9nnuET5VC/U02GNTX72C7MeKGmyg?=
 =?us-ascii?Q?OFKNoWXoKShlQCffI2Pmr26I6mTT2x4qR9AR+J/vBYcc0B+SqfPkcGicQGTq?=
 =?us-ascii?Q?2V0DXiSMhQE5go320F7oalRsfen3urpFEwdy8MVL294uC6MQ4g3iyvxAlim2?=
 =?us-ascii?Q?DHX6Hucn6eo3al2hdYiDdurstwnQOVXKz6/rxZz+TwdKKkwWvK+Sma8q6JaG?=
 =?us-ascii?Q?JLEv/Kg76QCSfHQZ8NZTRuIGk+chbvr9zPz/hISi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ff7c54-3e1f-4808-800f-08db004bad7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 09:48:43.6196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8ki9GyiZw1dcJFi24R6iiu60oK+SMtz6NDiTio8DtsGO3bQe6004tqxY9lf30tS3iklCN59SGn7sSQUCyzHxxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6058
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674812927; x=1706348927;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qi4Kdfzm+Z3rrfbWcRC+SZVPNXHHkBIEd241wdG1anY=;
 b=IFoeG3xEiPuEbJrGHAjjxCL75H6mMlJP7+3Fl/90aaKnMNI3BhN20vhY
 HWf7Q+sMq1XgEp0ohaZkXQ/WoZVr6ncH+09CZLfIJlzufZg/sMvn4HUeM
 d1cqGhywZNgTzdTkBL10uCVhAOGfcJ2g6N1dbvMMKLA13hus/O9bHPWJR
 aukulJnFbFubCxW3O1WgMTAsPYCpV3lkoqygmKmcNRSN1mCUa/oPKFBTz
 BCzLHOKvD45bmtVnPJslBTfGyXiUEd8oAu5lc3MipIbQkShDYZfHeEylz
 blbr1JuUMbmdmi49WzhpHk8BnbQgZKeSzCDneucdGRg1ne5rM2SsJPop0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IFoeG3xE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 12/13] ice: introduce
 .irq_close VF operation
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
> Jacob Keller
> Sent: czwartek, 19 stycznia 2023 02:17
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 12/13] ice: introduce .irq_close
> VF operation
> 
> The Scalable IOV implementation will require notifying the VDCM driver
> when an IRQ must be closed. This allows the VDCM to handle releasing stale
> IRQ context values and properly reconfigure.
> 
> To handle this, introduce a new optional .irq_close callback to the VF
> operations structure. This will be implemented by Scalable IOV to handle the
> shutdown of the IRQ context.
> 
> Since the SR-IOV implementation does not need this, we must check that its
> non-NULL before calling it.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1.
> 
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 1 +
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++++
> drivers/net/ethernet/intel/ice/ice_vf_lib.h | 1 +
>  3 files changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 4d8930b83b35..356ac76ef90f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -807,6 +807,7 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
>  	.trigger_reset_register = ice_sriov_trigger_reset_register,
>  	.poll_reset_status = ice_sriov_poll_reset_status,
>  	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
> +	.irq_close = NULL,
>  	.create_vsi = ice_sriov_create_vsi,
>  	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,  }; diff --git
> a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 2ea801ebb2ac..d16c2ea83873 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
