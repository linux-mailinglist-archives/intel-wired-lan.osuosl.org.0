Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02CF8426F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 15:31:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 512CF41ACA;
	Tue, 30 Jan 2024 14:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 512CF41ACA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706625115;
	bh=/Y7QnnAn63VFFfXr07CCZliCtQBhxvlz+Km1Tui/cDs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=46oWGDPR/Rjsvun0lvCVjgDbxS9bfqgSxoD9Eiisd/5MwJxwel7MNA4idSVnzF24k
	 HmgoAuCeUs4CdXoam++Omv8CStKhdv9vJJ4yBNYiCqxDcG0hQke7Ddibtt487lRnhE
	 ws9PtMHg2Mx8wK7n0zBk/zlez7dtF6BCNztck8WSG9aRLG4WysAF9UWVWxTjIZHYQb
	 n84IgoKhZ02tkMrq7WXdoQbMuICngO4WZwZ6s7mrMur6RwHWbK4AW+UeQmCD2Rf30o
	 HDA08oG1ID2kTNAHWqxCsp4SjDl4I57PugXQ5SStesHjL4bFo3wOQcDzsujrBUwDfK
	 cq15MBOZPXLbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzNR57GomRbg; Tue, 30 Jan 2024 14:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A32F40A47;
	Tue, 30 Jan 2024 14:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A32F40A47
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2847C1BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 14:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C57841C21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 14:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C57841C21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aScxHDwW-H-8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 14:31:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0CB2F41C1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 14:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CB2F41C1B
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="21812544"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="21812544"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 06:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="29927796"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 06:31:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 06:31:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 06:31:45 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 06:31:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARhoDmL5QIYHuvE40y/GOhoj/U+Cq/bkIt6j7RVKRo2Jh1rq/4yxtgZqvj+7Q2+UEjtoc3OluWCFKVY/P+Dcnlcpjuylr7Qt28g/HLk79JhrHBt3TI35W6HLExVyW7vl+iCyp9wk93rWIA66vSte3GTMFYLchW5buEGsXL86xP6x98t8RTZ8Ds/x/YcfTQlsk6riY4k7amUb4D4ax8bqywgLvaS1XuQqxnfAEtNotPFkaQpbC6dDCxGfnlqV4ivfeoNz4W04C67CUDgXV9O6owWdMMgn4Uwlf7h+mx9RYSpZvAcyNF/P1pB5sVAKRoXkteyBVKwQIfOBqQio8nVglA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Y7QnnAn63VFFfXr07CCZliCtQBhxvlz+Km1Tui/cDs=;
 b=Da/hbRk5ByzlvkK9LM4UQsy6w5N31Z7BR23RWDYi8qNAaAvWlKjstfvQvIjmLXBM73WoYNjqzFs2fh4AfqLEnN0NA5pW0DTGPRse6vfz4zper6Vpo2hMEKrCd9S/xXHkaPy2jFBdFiU8+9KP6soKS5w2KG7HUypph/HdTW0TuhsNyq5epFuBSdaw8sI+Ju76VudxMaIoS1NMJ5Vq+RmM6q2OLDPc2Wv/2VZRX2v0nCRX4OpXL+eCFc9PtItyC+uxDaffO8H0gcviCiDfVk3g9MaAoi00sPpvd2EGezCBYieBK3WrklCk7PXvlwL3WipBHSWDnkz0rPiut1Fo4CpyhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ0PR11MB7704.namprd11.prod.outlook.com (2603:10b6:a03:4e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.24; Tue, 30 Jan
 2024 14:31:43 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::c04d:e74b:bf92:d1bc]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::c04d:e74b:bf92:d1bc%3]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 14:31:43 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport
 extraction to LAG init
Thread-Index: AQHaSxxHdUgssp0OfkGytnfPplQJebDye8hQ
Date: Tue, 30 Jan 2024 14:31:42 +0000
Message-ID: <PH0PR11MB5013321A30682BA4B38D0C5B967D2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240119211517.127142-1-david.m.ertman@intel.com>
In-Reply-To: <20240119211517.127142-1-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ0PR11MB7704:EE_
x-ms-office365-filtering-correlation-id: 88ac44d4-9608-48db-10b2-08dc21a02dfc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4SuhTGHWOOu/NvQu+29YhwVhh3uGjgFWjnZhWlM7a428LHFvsVqaQ7DXuHkIrektjroX7S8DsxU9V0svfvDb9nP37bkpbdzjOMi7Tj3vKeS+qcdfkv6KuyFdsmDfQm3wCZGJozu3YrlOHHlRFPEL+1l8Ds+Vp8JoAA7Gf4C/hY8o+75w9OYfjeynZi5NDEtMZhJn8m+IdKDxtzUhjweP+lsEmgRlVdOC6PK5VLdk1IURk2G0fDUTsUAoAU1GuPTXPWUIbVAetiQSsoTkOoMmG6NFOxN5YXCaVigNQAo77v8vZosjnH7o4QxAoFzjpeKEloA97n4OHEXMDMlWFBh0xeHxGLA8QVbNio4/WgQBoFxkBhWms1uaTg1u2ATdCSNXWmyiMjeoTtFsuOMFIXHC1kKzCqrdg73BEuXpTGtfu39cIfeJbCacH/5YUlH+4I1fqrsHExldKTOK5nnK2AJ2BR7A5RJG+Fd63IXoJWCTmC4P4BzBPhY0Np/Gb68DL0iAx4uFKG41uWtna974wpoUswa0dHHiyHbefI2y723ZXrlF4OiuuI+/GF3Qg7wDXrD9XBa4hntZJMPUIttJiYJJHrpDdK9uW1XUDRhkEoenSgih96TSSizhgv3rSMaX/QF3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(376002)(39860400002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(41300700001)(71200400001)(478600001)(86362001)(54906003)(53546011)(6506007)(122000001)(9686003)(55016003)(7696005)(38100700002)(107886003)(5660300002)(52536014)(2906002)(82960400001)(33656002)(66946007)(76116006)(8936002)(66476007)(66556008)(4326008)(110136005)(8676002)(66446008)(316002)(64756008)(83380400001)(26005)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dkv+4eglDsSD145VCWHAriFaYNwfRYvCD572V3GIv3WR1DU8auzZlH1VD40r?=
 =?us-ascii?Q?wDTLQIu7bDMq662+cCS8OmDTKX1H1Z2Chj78UtUG3fD4Usca6uoxajRqtXIl?=
 =?us-ascii?Q?w3vEI4iTCJMZsjukANAZcrOE58WkiMeTfws9u7sPwXLiqFoS78De06qJZugQ?=
 =?us-ascii?Q?yTd4hRZ5/JdpvZce0dC3QqvwR2g+9QAHXaww4cnEnRBRlx9MUq/HSzRUXncv?=
 =?us-ascii?Q?XtUNaxhfd+2/oMoxMlWa2a6PcAU5+/y4CFf9NJ0BQHcWuHvXCRB/p8n2SIiz?=
 =?us-ascii?Q?Mfoyr3N8BlrsuEXa5p7vakuH6PDRLXaj5mT8qJCCaTYnQeOIgE1zrCKZWnGm?=
 =?us-ascii?Q?0IHUY7UVCEYNOmp6WM4tPhgr0cHFzpQQo3jap1IJrzq2StyYQ3kOdlfBohQ6?=
 =?us-ascii?Q?kFotBB7h+JWbUM3NoQ5bROhA0QHMB1AF2yia+XVqYxk1/hF0cw/P3iVxr84H?=
 =?us-ascii?Q?IpsG14QUkw8vCQnCFbSIibM0hGREAkdrY2TqEAQziFD66n+hCX0G2JC9Oc4D?=
 =?us-ascii?Q?nURebkC9LMPsN2HVEFSJzxDZGHorIaDWFD1LlkPrNvlzMovg6WMGZoOV0VsC?=
 =?us-ascii?Q?D9k8MwnZiuoaHeBpGGg0gs11FPHsTDpdhqfJW4J8EC9P0vJp1zNkdC+Q0fp0?=
 =?us-ascii?Q?W7f6myJR65MRl3q7HqUcksowoOZx0XDHu4ZDAGa4yjB+MkjItVdropdhrhcm?=
 =?us-ascii?Q?lu1t2iRLhfUxNYC85CB8RFufKyojYRT2Wb9cSetxUk+JuY5Ktd/6LD1Or2uo?=
 =?us-ascii?Q?xsQXwBHT0YKmcu0Wu636XJtrBwn0ze1d1VFz+oM+uEr8qsNTW1ZFs6/kJxmY?=
 =?us-ascii?Q?ljtNtsCMfoTPjZiGzH7rDBeMgVjtkgBbjJEJ65KG+u94se8LEpyDt9K+BY1N?=
 =?us-ascii?Q?h7Z5pigb14qBFfiy0N+HkWMAN1+spBUtPsH96SAZsDUYWabu81MD99VcPwVh?=
 =?us-ascii?Q?IV/9p0C1SqjDKSezHeyKhRhUetjBXQJibelcAf0Ch2SG3tRSm7WfcPC0k8Zx?=
 =?us-ascii?Q?3werbwCR7HL6qJP9uA3J9GYb8sRxhf+HmKx1vcV6RvRhSbUmdWViARdp3GUs?=
 =?us-ascii?Q?11OSp4rx18TRi2D/JAG0UcXfaKDBB4IiiG/OpWIDRl24+aAl662Ddxs4cMyi?=
 =?us-ascii?Q?Bng2qirWumHU6DLpR1LGrJ8tvRVqLRvQLwpeN5Yoqg70p6H5HfUhTgzgAMZa?=
 =?us-ascii?Q?A3HdipRxXwYXT3Ro8KS9XXp19ClVARoDtm2Qi8w5Jdh/hDrSJVeUQhv9FI6d?=
 =?us-ascii?Q?erAkpT90BIwQhL9w76tr14RoNvmSXDDqmS87dpiTBaw1prukyziPNzB5Ll5M?=
 =?us-ascii?Q?Ab45kSzRLC1eeQ8LIH2yWO3WgINNguAstUEQ444eeUA81tV6npxeiE2wIL7p?=
 =?us-ascii?Q?Q4yjDFe99JwnMzYe8fTc7uQzGVvrgpDuaFCrH60c1eA7Ot9Ghg4B3KMLuHoj?=
 =?us-ascii?Q?ubocoJnHsSwlHeYQR7S48YSzZwyGcYLUe/yd2C1dBWfQ8RryLVi8icvW+gNR?=
 =?us-ascii?Q?/IT1mAdKGH/qnaa+jCzlET/uqEZYmic2U6Lu7VaKuc2t1BqeeM/7R45O1XpJ?=
 =?us-ascii?Q?xhxrBqt95tXKuqf0Q7omz0C1TzN5gdrJcIpsJckFclVrBa4HSTm8X6G/t7NE?=
 =?us-ascii?Q?1Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88ac44d4-9608-48db-10b2-08dc21a02dfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 14:31:42.9123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 403Gcr/LUCtQ3TUAp1C1+EaytzENfbS0Dh0HxgH9A21KME8wa2GmdFY/doF2ocQFrnD5AHhJDKbnGXCOv8ky67/Hq2YNoB1F7CUDNgR/7Wk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7704
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706625107; x=1738161107;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Is18KWfoYEyO7Y9w/QX2cjTgSkvGwrrKudWoP40zky0=;
 b=VFySzjPFNhwqCZBmbs22CSXow33g0mpYHWDd6kTIRjyndInM86bH/Diz
 GI96dibB3lJUxEAxuN0ocBkZzo0Uwgz7DmrhTV+7LuMr+Kx8zROc+DTe1
 hB8Cf4WAKhXwvJI8WJbM1Wb74AksddSFQFwCLAIH+/6MN5+o0jfO4IL/Y
 bDIH8rAfM3m5yM3AQK/7hIVLaqkf6GA9sRgX+jowI8zlhmCks0KbW8geJ
 Kx9cIZafTwWaJ65PMw0ypPqJ+tMv2IuXFj5OWW1XpoBTAvX5sUGxsMBfu
 to4dxlTURo31STq3tnInBBmFQz+IyJJ56jQkcNXLkwmG9CE+TfsDsYl2e
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VFySzjPF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport
 extraction to LAG init
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Saturday, January 20, 2024 2:45 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport extra=
ction
> to LAG init
>=20
> To fully support initializing the LAG support code, a DDP package that
> extracts the logical port from the metadata is required.  If such a packa=
ge is
> not present, there could be difficulties in supporting some bond types.
>=20
> Add a check into the initialization flow that will bypass the new paths i=
f any
> of the support pieces are missing.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 25 ++++++++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_lag.h |  3 +++
>  2 files changed, 26 insertions(+), 2 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
