Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74810C135CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 08:48:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB72E4131C;
	Tue, 28 Oct 2025 07:48:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Iqkq3e-oN1i; Tue, 28 Oct 2025 07:48:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FAA641322
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761637698;
	bh=tYr9r4uqdMsoBwn8rWylfKRmEjClSQXnDe2omkqK8lM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YCVMbj5dhIW9szYqhooOCkRD+1quer/yYirGh6LuAzdnJ++wPuE/aympcwgjF8a1S
	 7oEdTOKv3ICJ8P9MNtueovDh4ucXvbJuYE4lqhbeAEO0+UucAwy/gPzkk+SSmEiO32
	 DynviFM529GA7Ji+IHSZUW13zxzy+yOJTOqJvuXme9Ni2IzU70L2oiNKlEOUxm92dK
	 rLO5iO+D6I/NO/NWW8/cSbpCgj5lWGdXWl0Jumo0J3VVC87mbYHWeiGVsNTOOoHwPT
	 LJNYsZ3yMyWWtnDxJwAoArv/3/mecN6IQvTUIYS+TLqtwQM3R1elVbiaWDKHqIF1/Z
	 rlFtdcfsMMlVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FAA641322;
	Tue, 28 Oct 2025 07:48:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 775F970B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 697EF40D75
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:48:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NinE5EwPFBJv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 07:48:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AAEA84000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAEA84000B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAEA84000B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:48:15 +0000 (UTC)
X-CSE-ConnectionGUID: zVbUqLzNTParsjNqWSFrCw==
X-CSE-MsgGUID: H2b8LR5IRfiMgbbAG6uFEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="51304577"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="51304577"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:48:15 -0700
X-CSE-ConnectionGUID: 7juMerxzScinHGZL1DVpig==
X-CSE-MsgGUID: ezKVNT4SRSmZiAFQB9nz8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="189634054"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:48:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:48:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 00:48:14 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:48:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U9CDcBo2KTBl9SUDrQUxt+laBOunLILxbOWG0DlSeW7jKWhU08scDD8/hVBINu4tqqKX4RVOJhZyKmWl4e84FqJ3PlfqRbiGe2uPhKCggQWdc1VisKm82u3mcTNGvCckQwbqmLihUOu5zcODRCbau/5HU2ygX+cEDbN3LeQlcEcLW3kzL9Js4IfID/m3D9Q6T0uPf9sFte2aa4lawWDLc8jnlWcLbJUlRDslftUM46oSC3KhCsW942HIjCDAjPmVMyPEuenbEFGa9OuKo9SxiAcXZ5VuvBcp79AGS/x/mtTKJORrblnZ0C8oUZAoTD6DP4hSBD1WrW87fLzoBbvAcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tYr9r4uqdMsoBwn8rWylfKRmEjClSQXnDe2omkqK8lM=;
 b=r6J+BOHVyRR7hTJ0sPg/T78AnbFHnqZtO0UZu7qSmeMz5KWg4QtnQJIGQm4b3p0icUsTlp7cUK8jAjB1ARpY5u9Z6NrNwbVfn26IgmYwGe/iAix1JwYyPYv1e+XzAQKHADnQlrv1b7oc/+k3/Irhu5XSQ2qz5TZT/+aWNuXM39lTBu09pWIN4b+Ze/VpZVXubtD1GJ7uyIQ5rULkAuiA1Bgyka5VR338bpoHEz5D4nDySRjY3mmnGkW04awjFuvFSUJ/BxvaYb/beDVYM/UlIN94mlAscTJtvUdbypU8Xo55YLaLjhHOk+3l7p1r52/KpvPjHwSm1cwi5Y2NCFhjbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN0PR11MB6280.namprd11.prod.outlook.com (2603:10b6:208:3c0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 07:48:11 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 07:48:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: use
 netif_get_num_default_rss_queues()
Thread-Index: AQHcR94EDKN8Pv2RHEqIaQ/GM0QVPbTXLX/g
Date: Tue, 28 Oct 2025 07:48:11 +0000
Message-ID: <IA3PR11MB898627B7BCB9ACEEE31A377BE5FDA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251028070634.2124215-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20251028070634.2124215-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN0PR11MB6280:EE_
x-ms-office365-filtering-correlation-id: 0a92852f-491c-4b4a-5db0-08de15f65817
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?us+emJNtVfycUiq4GO1dZo0e2bLhLCCVNzaDvprXNhIZOGFoISITeyXyVRF1?=
 =?us-ascii?Q?QXJlxglduTchg8SODxPFYqhLqjnvzCIndBD7IkEzr1MIolZn7o5kVwMsmAgH?=
 =?us-ascii?Q?Hjeq3UuOoQ96G8i5nGcZDM4aSWUA46WJumW2u3KSNCiumyR3ECdaqLyJ3YCB?=
 =?us-ascii?Q?Jx6JKlUn/OkVQ2rWBpWJ9DZoN2nP8L4TU0N9cijmAMxnx11966zpPdGR9x1k?=
 =?us-ascii?Q?Iw51kSWEtF1Vs5EOLLbso+2Nk4tpgIPnDHDCDep0rC4hu5w149uku1dOZ0e6?=
 =?us-ascii?Q?TeWFSJqmQfAmVjLt8qfIJjQJU1uQp/mLsnM8WfZo90cRNMH2m81AnNnu2Uje?=
 =?us-ascii?Q?nJsNedBoCQ3IT3rz1ekJu7u+RrN0Ast30Kt+bJKAEeVWdepeT8PxxCYAIUOm?=
 =?us-ascii?Q?H4F07pQuZa/ZkWQwSzSlvIxRFOnsJ65IekxhpznryKQDAEg7U/GFSUPTBbt7?=
 =?us-ascii?Q?yByz2sAOfl83RA47E6tNJbUOD5tNFWMbekmeUzug3gN9ZyBG/CBupnFVMx5V?=
 =?us-ascii?Q?3zetdS7jxC9Sgg+NSshBlFcxQgoiPFDwHn6AM80PtarFFy+3OmhUDxD2a6wn?=
 =?us-ascii?Q?muiDsrNQuFeuMU95w8UZyla6e7kl0UnWPIpPmgB4yXc2BkOTogHx3PZXDyBA?=
 =?us-ascii?Q?rZfO/oWSB3vbLuWQdatzJKahgkBlnwuyXHK3pj8F3HylxgcFJAaGspiS9NQ2?=
 =?us-ascii?Q?DMWig2JQwtIzKfI+cxop0tGEIf/6a74Ih+YdX8ZAa8Vt7A/Rinf1dUubVJyQ?=
 =?us-ascii?Q?qE23PaQJGA881RWVLgeGGPQs35ClxgrWiTMN+cjkhiq/FIbOnf4yj8IR0lk/?=
 =?us-ascii?Q?xdZwsJCU4iAxcyBh+a3uh0a6TkDb/LD4bTLYv04O5LnpxalHnq1VlLYjgXk+?=
 =?us-ascii?Q?AodQwZtV14zpsC+lKQPJyIAanw1UyvjprjdM4toU0v3vsGnWO8H20EJZ2UlN?=
 =?us-ascii?Q?erG5ENF5ZoWExfKaYI8ohr/QUvz+5zil/QqdkTJ+q/sZ8Tpcg8lpSLpnJMVa?=
 =?us-ascii?Q?M2fYpcN8wfAY0M4RRgHaXW3JloScetQg0baYN7yrZFUJ+C35QCbu2P7KKB9Q?=
 =?us-ascii?Q?fd+kEhW6gwa2XJ8c6dd+9Vy5GnvGoV4x1oa/p+qK0lSc0rbyYKto5EQFlICa?=
 =?us-ascii?Q?pA0h01h3m2AL19LJmuAbhdEI1vRs9AypP1TENPaGP8FAOGLGi6Xy3N3zS88m?=
 =?us-ascii?Q?OPg+XJtuscp91ZHZCffoSsv1pM8SnrhsqZwlqm1AWBpEvMde5iIuUBrxiIqY?=
 =?us-ascii?Q?lDYUxIgH6jm4AH/R+kwElU8xt5cke085ciYBAiviJ6QbK2Cu1HNJ4N0WYMkk?=
 =?us-ascii?Q?II7ONvnf7qMPualSEwRsnQcuPZhBUWmWbYsb6h4y9VmChI/XXvD8x0h/GaCw?=
 =?us-ascii?Q?+1dGW3ACx19+o4L883klmX9OHnecWb6ZhQ8crT+sR3b7vA+3pj2rElKgzXsa?=
 =?us-ascii?Q?eE6pyrpeBmHHFUUgGRX6DIhWscai5u9UOHy/zvQJx1MohEGdQFFlWM1XqYP3?=
 =?us-ascii?Q?4TB89gKpim9L9WDeoxB36sGm/T0nVadDm99Z?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BrnZuIv/j4evb0Ds0b9Pvyc1kheT/2ie539Ez1bN/7bOzkGErpWYU8BnYl0F?=
 =?us-ascii?Q?+k2Gtb3p5odXincHu31Q+NnVgFVP9hN7JNgIy/rOwS6MmLndV7YEV5Za0LkY?=
 =?us-ascii?Q?e/BxxZCTzB87j/u/PjjpPAHes6LNXrHACgZUPGzQYBACdSl2O/ekMD+GJCXk?=
 =?us-ascii?Q?QbnafxQg4oaI3Z4bp9/QJyljFYtL998t7CrcadHatd8WL73zxgTr/P3JFbAD?=
 =?us-ascii?Q?QRyqUun28cbhSZH/i69Gvo20sVEUIrJ9nd21havLt3gfG5wa2m3OoEdHq9FC?=
 =?us-ascii?Q?4NLGnMg3QjH6cQPXbEUwN3BNJc/McAepq1TVhboefLeAgLbCn/EFyJuGg1x2?=
 =?us-ascii?Q?qcWAPlG1AGqZ9zA7DRnyiVOXUH5p09gvq1W7tZV3+i2iE1tVCabEig3R33rv?=
 =?us-ascii?Q?CkwJ0/r0siRQwizHGvI0x89zFfx880Se4D+RDV4/8LpCXO7JztL6Clrv4xwn?=
 =?us-ascii?Q?MiSFb8zom13Y9MzS46hhmtEz5AwIzwy+Q4FwUAkKMdW1GJD8KmCjiq51ZZa+?=
 =?us-ascii?Q?kI9cJGJ6LljAcTM4HIDBOV2MLyI2BXS3lnp6XE++NQ55k3YsdAe3lwYeWovz?=
 =?us-ascii?Q?O0zSR/OEMY1wP8WElbDWGIQnlzhyr5UWQVWj/SbNC1IxENjUAC1KzMZ0Ql+D?=
 =?us-ascii?Q?lfexau1MYAUCj/i241nf32n2fQLWnmuHS465mD6F3TfDR5D7zK+ODHx+NWhy?=
 =?us-ascii?Q?7kE0fKeD9OguqwWsLjVAYsgsqBnfqhNtwHRwpkRaEX4OBOTOI30KFy7WVIPD?=
 =?us-ascii?Q?f36nL6ZfUDa4D0cXr/KMyKbkdhDq5Sca9E30EgWNtCaMlA5iSCy1HPKhlq2N?=
 =?us-ascii?Q?BYKQOSyvwr8GNbOBQA+5edU76MA3n1Sd07JVeTXn9VmUxgaaxmHoI9H70OsH?=
 =?us-ascii?Q?2TKFF+ZRG1nGKV5piZDIDJjsU7O+OnLSW6WhynPfRd4V7QicaIb5ktgiLKbY?=
 =?us-ascii?Q?vpqV4Xu6ZFvT6ZRZ5C22q/B7ngQeFLyRZhXGkiGm4AKNKZeUF7uyMwqD7S5e?=
 =?us-ascii?Q?47+TNkc/7Py+lqt8cWVAh9ofBtRVNpWl/5RcGa/4wNw/kyOjmbdMzyEHhCEK?=
 =?us-ascii?Q?PDp8zDHKGvQ0KsCtyDAxkbtWxMbx00qMTLdeiAmeHt8iuVssojsxXOW6+YEZ?=
 =?us-ascii?Q?FPhGT/uYIMRXdRfyFxYSw3jZs58kJGiiiD5BQ5DevySPaXIiAlKUTWXNMkkZ?=
 =?us-ascii?Q?ZzRZV7eQeCivXX/RbjM7Y0MR0mtXp8x7riQL5j2Yje8qYhGDkLtxCcZfv5Bk?=
 =?us-ascii?Q?0nl+Q3V585a7gWhTRFVSW4MCwifsiLiwTfD9fv1UfyOyfw6utJ3TbXXO60kH?=
 =?us-ascii?Q?aslcWJOmE5Z5ErBKI9bPWaMWAtyVOY9UCT0b+KH+l2yjOLxhy1j04+Yfp61W?=
 =?us-ascii?Q?8rVYYTjO/Yk5rh75/s/G3amDRpq5fYavbf4tgNCpj5unn0TtGLOAAnzQ4iz6?=
 =?us-ascii?Q?Ha2zeEz/XcCgRkOuGSh1hxf+hNsTQCjhlbnO8Jk+Vh2a26Qk0YOEVngMlK74?=
 =?us-ascii?Q?qNolaHdlEvFTcZFyzCRwFDQmHaMvUs3BKME6L4J0JQRjwVUd9Jtg5FViPLdW?=
 =?us-ascii?Q?VULv5s1dDG3I9ZW/tEauQkNKZi1byTSBMsvr/dUGiUQXy2AoyDs5/GJ6pL0c?=
 =?us-ascii?Q?fQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a92852f-491c-4b4a-5db0-08de15f65817
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2025 07:48:11.6659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RmqZGA24lrjhT3VBuZ7R7bUBTAR5BU5Mt6j///b4a1A1muU+WOYzLWnit3uqVOLzu74fwPbSKqw0UNigKJzCbM1kMg99palDfRpjVaeBzcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6280
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761637696; x=1793173696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WIslDdfUICOdA5+xM8I0qAiO8zb1mpUhn9TLizPpWpc=;
 b=cuOwjlbLD2mMkzuPwTiUUAGNcrmiaoi2Hvh+nbLUwRz4Dm8dmqX9cQDp
 nV39CGeldy1WdUO3fpB0n7YLe9V4QvNxyN/XZtl3LwxJam0LJo/gi/7yX
 /35yTvUI9qUWUtpQAQJ49HOYQCYsUtbz/5cW5M09LPgXq2cCE7f/J2g52
 OYLrAFsMdwT+EeuMBuROAk3+4J/L+6eDSZ6IoeBe2J5xhPSOPXluS71RW
 mttV66POALN2d4CaO+JFXXCiYKomucCwMxTfbm8f7JqM3CQKMBACXtK2w
 0uvrfUkHF8h1fDGxFvrNnr98GndplxWKu//U83Im/OOwtUwLrdCreZmzJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cuOwjlbL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: use
 netif_get_num_default_rss_queues()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Tuesday, October 28, 2025 8:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; pmenzel@molgen.mpg.de; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: use
> netif_get_num_default_rss_queues()
>=20
> On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
> Forest) loading ice driver with default values can lead to queue/irq
> exhaustion. It will result in no additional resources for SR-IOV.
>=20
> In most cases there is no performance reason for more than half
> num_cpus(). Limit the default value to it using generic
> netif_get_num_default_rss_queues().
>=20
> Still, using ethtool the number of queues can be changed up to
> num_online_cpus(). It can be done by calling:
> $ethtool -L ethX combined max_cpu
>=20
It could be nice to use $(nproc)?
 $ ethtool -L ethX combined $(nproc)

> This change affects only the default queue amount.
>=20
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2:
>  * Follow Olek's comment and switch from custom limiting to the
> generic
>    netif_...() function.
>  * Add more info in commit message (Paul)
>  * Dropping RB tags, as it is different patch now
> ---
>  drivers/net/ethernet/intel/ice/ice_irq.c |  5 +++--
>  drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++++----
>  2 files changed, 11 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c
> b/drivers/net/ethernet/intel/ice/ice_irq.c
> index 30801fd375f0..1d9b2d646474 100644
> --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> @@ -106,9 +106,10 @@ static struct ice_irq_entry
> *ice_get_irq_res(struct ice_pf *pf,
>  #define ICE_RDMA_AEQ_MSIX 1
>  static int ice_get_default_msix_amount(struct ice_pf *pf)
>  {
> -	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
> +	return ICE_MIN_LAN_OICR_MSIX +
> netif_get_num_default_rss_queues() +
>  	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX :
> 0) +
> -	       (ice_is_rdma_ena(pf) ? num_online_cpus() +
> ICE_RDMA_AEQ_MSIX : 0);
> +	       (ice_is_rdma_ena(pf) ?
> netif_get_num_default_rss_queues() +
> +				      ICE_RDMA_AEQ_MSIX : 0);
>  }
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index bac481e8140d..e366d089bef9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -159,12 +159,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi
> *vsi)
>=20
>  static u16 ice_get_rxq_count(struct ice_pf *pf)
>  {
> -	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
> +	return min(ice_get_avail_rxq_count(pf),
> +		   netif_get_num_default_rss_queues());
>  }
min(a, b) resolves to the type of the expression, which here will be int du=
e to netif_get_num_default_rss_queues() returning int.=20
That implicitly truncates to u16 on return.
What do you think about to make this explicit with min_t() to avoid type su=
rprises?

>=20
>  static u16 ice_get_txq_count(struct ice_pf *pf)
>  {
> -	return min(ice_get_avail_txq_count(pf), num_online_cpus());
> +	return min(ice_get_avail_txq_count(pf),
> +		   netif_get_num_default_rss_queues());
>  }

Same min_t() ?

Otherwise, fine for me.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
