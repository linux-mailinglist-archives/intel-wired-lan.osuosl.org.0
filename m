Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E494CAEF1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:43:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B64360D58;
	Wed,  2 Mar 2022 19:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rjQ7_opy7ELt; Wed,  2 Mar 2022 19:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40E6660F1C;
	Wed,  2 Mar 2022 19:43:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 344DA1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2162560D58
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqN8L8TtlxqD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1882860F1C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250216; x=1677786216;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bJlhy5ijgs2eWoleCDPnRFJ7DypbORmDtXfAa2L0zc0=;
 b=g1ZN3+SdIXV4M9okCSXKBExD4XgnDl6bLN2tyXPX7NHXppzY5wwOcn6A
 jNCVHcN3mkbvfCy0+wTAyLTuX//OFnenunb34jWGb3Dqr7/c9oiPpwFbI
 3tSOLAHby+m5UbHsn0kle1kA52Yuth2WlrxqeYSwknnYiV2IPOcr2QdDw
 m2RGlyRBIhQR4ogSRKYSttsFz/einqe8wjkloGLLVddSVGL0jOJJWw1w/
 sAC+rUWzW/sg0cMfNvHL26iQ6kLG+OxkwLPVLZVU5ErkqxPCZdX99rfPD
 wpvWQAfLel//+MSqSqx+GhbxwiLHfDfTJPauFbWwtGUO2XlszTONjaySk A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="278165733"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="278165733"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:43:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="808005301"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 02 Mar 2022 11:43:35 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:43:34 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:43:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:43:34 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:43:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cYV5zT6h/b2T5SfaoKBOXNN0ChUdreo5XB7Aq2j1q2xrjVOd+5bw9P878dz1ki9DMROKW9k6RDMtaTMJpxvbpHqt43xrepz1ZO6pK4QI5oh/k9Wxie7Trx0VzrmR24L4XUkQWnhk8nca0l+nkhJSq71NCbLycOkvIw7VH3pjYMxYgAyJ3l86GT6Wn4d6PpWMRjPIjznCJOIZxjVKWoWkOwLs117L+S8WbQqbq6KKSJ0sloecASU31sv3IaIiFTlK7N14rb0ZJbhzevyL1FAF1Q+20tYAdSoTpG9ANdzw30PmrgRVx/uNDVfyEGeWqIjZLwib25zfxsVtRneV5xQUlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrbWRpKrtdiYnFPaI826mw2NZJZ8I5ky5iZEs+N0CmI=;
 b=KtP3rM/03oWqSqoArh4HXWpKUqKOlwXsVfRbfHE6lySkOXHOiuFvGAT4ug6Fj6dDfdpVyBhY4b8dlo0nzuPSIrbKLK80Nb8eo/Np3Uakl8a2zfOzLqhjsu8wlkurQlicNeWE45MRFUykjYyZC+5yyTKODW7f8gr+FmEIkrAryFUPIbs/iHrPKozb4HnPGgjmcNzgCsAtWYZfAq79fWs6k0r5Cp+Dkvz0RmWJ0P5ubQvUTcRCnT9qCnEws4xAqgj8R7glbgLRP75jO3JF7HpZZwpxUCv/CBjlrP7U03dcfnU44wsOmJX/w31nKhC0yinKYMtGESJc5/PgzMqBq9beqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by MN2PR11MB4447.namprd11.prod.outlook.com (2603:10b6:208:194::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 19:43:31 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:43:31 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long longs
 in ice_sriov.c
Thread-Index: AQHYKExqptZD4xdSeUizpXvKqe8wJaysitwg
Date: Wed, 2 Mar 2022 19:43:31 +0000
Message-ID: <SJ0PR11MB562987E2AFD5722EED8397E6AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-24-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-24-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c337902a-c9b6-4dc2-62b3-08d9fc84ee50
x-ms-traffictypediagnostic: MN2PR11MB4447:EE_
x-microsoft-antispam-prvs: <MN2PR11MB4447AFDBD253349250CF45E3AB039@MN2PR11MB4447.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XrgtHa6O2dZCYzUSob+2VrJDVAjeeh8rOG8WEaoN3lCCzThdvVdl0e80SzR3yFvFhS/GKkhgHjQv3MbHwegjD/P67oVRtbsAos6gNSHwPqC0H2YG2RO6oqpGHnDFCfvFIqgPy0xXFdyhEUa2xtGk6Gs/XA/new8/iWrhUQwHPX0NMW124nv241E+0fv2UsnR3RArobBk2PjyvCND4ZcsFFna3FeMZFxHXRpluA5wQdHaXu2FkGmKmIFea5EGIzdjqsBX3zUN0MZPnbUZAzSKTQVxvoEq23tpGoJSbobPznsTYB0oI72Mzcbzwwuxi6EMgsGWGNrn4RsFF42i/s6TPywQxe522RahL6Zg35QLd0843jNUJB19GYJdFSi3j97zB6QJ+XOUwEZ7q1myBL8iOybWSmQUJn14E+V6je6bqiSrsloIQ/m26Eg7Phfm6YnybH84R4PF8vrWDTrs+x4Ope9RE8oIq2IX5R3FgVq2kw7CsGUfWwYERVyyGgNH8/tQreJhoThBx9tQhpQx1gbggUtGy4TZFfv8qeK56JmVbcSbkAuW1kilzPCt+9q112+qnFE9QK5IAWP6vS/vsmfnkSxMWxBpFPX9sM+mus6n0OempYWKeXao0IlN+5MAYz6fzT7UeqrngLTdKW9QhKm4ZKm6TkEQI7b9QkBkgjdialbGnUNk9ov5i6cAGMfjNpoPTeEVOmkJSCctz4LSeTZxaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(186003)(7696005)(5660300002)(53546011)(4744005)(26005)(82960400001)(55016003)(122000001)(6506007)(33656002)(316002)(110136005)(38100700002)(2906002)(71200400001)(66446008)(66476007)(66556008)(8936002)(66946007)(64756008)(8676002)(52536014)(9686003)(76116006)(86362001)(38070700005)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?am68KtBMVtdY9JmFGJnwIUXUYfTICyQbcD4KYIzuj5Ih47midY7e9qn/P1tq?=
 =?us-ascii?Q?Wyit1YfHImdPVPo8GsOLUP/KU7t3aeKPIDkSv5OuHKWIiPrMWILfsRHsV/2k?=
 =?us-ascii?Q?O7CtjbEtYOuUUbeJAMunr24rMNjsYlGga5nizb904EcambtOXa2XqfyHbucP?=
 =?us-ascii?Q?Uz5RxX1k97cP0RufcCEhQesVq7DV11rudj9dU0ciPgbAE7Jl/rK7i4p5GIkV?=
 =?us-ascii?Q?4ZX9txPMx/lKOvSrcRqxHSRu7yxZ6KXYcXBF8rxhUb786+7VYF3ZpJLZZDOk?=
 =?us-ascii?Q?2VC2oL1Npxco12iBvE6VU5rX32/GDlGEBNg0jSZTGa0/44MIXG/WzH1rHooY?=
 =?us-ascii?Q?FwpSDW279msYIXweiaU+SW3eg8/sIK5UaEUmzqsEhDvufaNKxse3TVyDjB56?=
 =?us-ascii?Q?W5XOwCViaxiIdVTwtJf2tTip+BmhhwytH/a6DkfmDL8BOVucz7Icpkwzck68?=
 =?us-ascii?Q?K4g0Y/p0apnYBzz3y0hk5xIht1PruSioxK7iZIxtupIquJ3dmms2bk8oc17k?=
 =?us-ascii?Q?Nt5OscqQfXCK2gw5oDGP1SYufEZfZhhO2ZhrGQD8IvUMK6HDU54ACfB83+wt?=
 =?us-ascii?Q?kQM4wfCaYuusx+1ZeCKC15u80AoMPGjhxJPUpnO6IV19pmzQHV8VF3cVMfEc?=
 =?us-ascii?Q?eCutsHuv7eK2ldCGTTqW4En2wyZbZUSiyvwBvZriYhbF3EL7jnXxY8Bwl5xJ?=
 =?us-ascii?Q?cVDHHJXAVs5Z7wLlgaUG587DqZGLvlQS/KWrI7eYlPvY0gSqRtlMtqCEOBrY?=
 =?us-ascii?Q?fhf2lCUloELtjBhsdGa679ovpZUfv5m8hDH8ap0JozWfbC3P4GUQQ4DKiwCy?=
 =?us-ascii?Q?6PQtPGIWWILOp8ZQypGCUe3Fi42751jXCZSU5BEseSU1HAC1z2ATkPUc9LuS?=
 =?us-ascii?Q?tc2Tye7Rhqnlle/OLoDwOiDMkD+715vARZ3iSNk3OtaiA4tyezU1/2L0EQC5?=
 =?us-ascii?Q?OKm9LJMz/KVJaVySSpFlfsli0GltHu+8OaRrT0AaauSucY9NwnYLx5NeZA1w?=
 =?us-ascii?Q?tE00CpjBujja/wpYJjzC1NRgGG/Ag3oLem7HTtI0tlLQfxfCtI4jmJUR18r3?=
 =?us-ascii?Q?UROwMh3x7FoW0AYklazK4XtoVTiplX26ZzvluGN8G9BG52ycSodp9Van+xv4?=
 =?us-ascii?Q?WEWIX7pgBYpJ+CS0ZkXbArBPowmuH19oqc3nAv0+FrFVjq9Yl8P/WtVIlH7C?=
 =?us-ascii?Q?8/YRF78yTPzN9jG0f+1t8KkddlHyykJuUYLulaTbNl2l12Y4X2UjioaV27qH?=
 =?us-ascii?Q?ej52AnIHJpuTKBEs7EUmk5PxN5KvRXtUyeoeq+kT9szz87RpBT7+rQKTBtve?=
 =?us-ascii?Q?qTd+kKPhnLV8G/wLrJhXIAjOYfOlRAt4VmSnr30Tg3zu1LGGyvdwtO9CP3De?=
 =?us-ascii?Q?K7btRtKEHp60M/cY/QiWCiZ1fL6JdXZ8gtWUuzH5snkbPljuqKgRBEUedzxS?=
 =?us-ascii?Q?VGzxo4TXwDG/SFqUEP0OvXzS6zJIV5ijQw0x32gO554VU78osgrU6fAkmiqE?=
 =?us-ascii?Q?9ed7Hnf/kg4mY2COppQy/KgBqzpKXmMv/TiaWpGwZYjw+bTqIqZrs/5H5Nu0?=
 =?us-ascii?Q?WvXXn68rZ8wY4Tavl4GHdc+64TRqQCZC513bsLBYyEkPzRtNFA9H14NEl7Fl?=
 =?us-ascii?Q?M7M4xaCcpmCW5jAVGhShJyxz+BjG3LrSzzQsUl3G/zGr0qMvpblZideaLWeT?=
 =?us-ascii?Q?7tKO0Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c337902a-c9b6-4dc2-62b3-08d9fc84ee50
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:43:31.2982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z7SAt5At5MziYy/EjMcKJYsWxI64eM6da63HhePQpI3qzHe2h54fHIAe/2g9HQcSXBbOpokIKZHkQfcjlU8n7LXrEGls/7Nl9/Ujohvzs9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4447
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long
 longs in ice_sriov.c
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
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long longs in
> ice_sriov.c
> 
> Before we move the virtchnl message handling from ice_sriov.c into
> ice_virtchnl.c, cleanup some long line warnings to avoid checkpatch.pl
> complaints.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 39 +++++++++++++++-------
>  1 file changed, 27 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index f74474f8af99..4f3d25ed68c9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -2325,16 +2325,21 @@ static int

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
