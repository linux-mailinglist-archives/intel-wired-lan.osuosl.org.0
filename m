Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFJUIuHLE2onGAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 06:11:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FFA5C5A13
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 06:11:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB1F941158;
	Mon, 25 May 2026 04:11:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4TG7lqcw9iRB; Mon, 25 May 2026 04:11:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D74A4111E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779682269;
	bh=u3dSovdKIoYYEuhTtG5GDFqrXydRbeQnNc72Gk0m9yg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aFOBmVs9L3WnLmYi+0IdNiQShI9VBITyRLscGt/4eYGjeNgyeGrAVR1WbpfuayQwx
	 7YIqRUuxzW4F0IIKim99PdIFbqAtlZ1toMvX+eCX+K5ZqORsiZsOxO1rFyQnZOEkgo
	 qk/bjHKjXTjtU+ENmO2tJ8ILevKXEmNucE03W09sdeIGOmR3hgf2js77dumHTdYAxC
	 I6y9jlUWxFWDxIZMUEwoyr6av0bjnKCY/LokiqSj1bkcEemoZ+1AkJiPDCPj1Kc4lf
	 dHgOFmpeObM+qmMwS+z/rn1tx/ejRPPXqo03VFSPRSWvEKO3/HVHvwJXuTRZdO036/
	 YIip0ZySkVvFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D74A4111E;
	Mon, 25 May 2026 04:11:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C71BD69
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 04:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B846460EAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 04:11:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id taMplpNAg-tH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2026 04:11:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F3B0C60E96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3B0C60E96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3B0C60E96
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 04:11:06 +0000 (UTC)
X-CSE-ConnectionGUID: 43qlCeIhQoy9F0RMGS5CFQ==
X-CSE-MsgGUID: sfLteILWQX+HBWqVSVD6og==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="91974034"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="91974034"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 21:11:06 -0700
X-CSE-ConnectionGUID: bb7Qf3yYRAGjxABPkzRpGw==
X-CSE-MsgGUID: JDOHlHd6TZazgVaDjowWoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="241349071"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 21:11:06 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 24 May 2026 21:11:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 24 May 2026 21:11:05 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 24 May 2026 21:11:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GCa5oL8l/rBfO1XxSZtor0XM+BccTAj52ufmcumNV+L2+NZ01bj3i/XrHbDm33AIhK5jO4jWAmouJM9RaLvBeKhSb2fg7CMLDDSNHeK2recTR6leDVuIcowGgicnWwwzcCowMfCYuV3mEXGEd0Xr5srU5cQoe+CpJ2Kw6hnTJ7fAPHKsAa19MgjqNHIFlv2VSUFIs1qSsq+lPqvZfUiijW2XlaHPN/VVFIGzjoCS1FT/sgVURREUolE9VjETmuIAUSwxITm9n9F8TSH/b1EgBkHHN5OxpQhH3MIc+nrQueup8RUXo4K62VA5JSLUx4m83319vVS9FEZSRgooh9Ew4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u3dSovdKIoYYEuhTtG5GDFqrXydRbeQnNc72Gk0m9yg=;
 b=aIiA7Q9WOyF9UrumVvuL8YuSQsP31G1aqRftYVjcJEAEjBnXy8jtR0sKu9LtgGUkDtcysmAq/5j536hnXF7TKwrDJuW87DxIolHUGRQOzezGpESPSbnIqQ1C7EctyCtaQmUNxdyfqP6gtmtrzKFBIM0XFlEEUEc7JMS2n3QS+4yTSKhagrXlZppL8TbevG5MbntlfEcxmi19NBh6aLB4P3L3VH02K+V8ntRp07dPbiCtrxBaf+JgBsf9ufsR4CsSeGzmY4OqKwAuTwUvCDtZgIbRsGjA9oxWR6UUIivzDX7mOCe+5I8QN6OKnrcnXkMUD+FIKb/3NEslMvD10WV9ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB7004.namprd11.prod.outlook.com (2603:10b6:510:20b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.19; Mon, 25 May
 2026 04:11:00 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 04:11:00 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: add rx timestamp
 tracepoint for debugging
Thread-Index: AQHc4Ri3Nu32IPsjdUuO4Q8bswwctrYeL2eA
Date: Mon, 25 May 2026 04:11:00 +0000
Message-ID: <IA1PR11MB6241A226EF59F7F6D41C77D48B0A2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260511073657.1073780-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260511073657.1073780-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB7004:EE_
x-ms-office365-filtering-correlation-id: debb7109-d88f-4342-01af-08deba13a14e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|18002099003|22082099003|56012099003|38070700021|11063799006;
x-microsoft-antispam-message-info: fb+rXiH34A+fqVHk//v+gsHnUYSnwA7dG1VVDbSxm0lwsf1XSFf+xnxivUDoK1KjSDdCMGRVBzUiqY3BS/m/srb4wz9bS0wkoPoWZRp4qhyfgq10Asw9wkVnl2Cm8JKP2N1zfMhFBEKyidfDtOGViwJ8QeAcNMFlpi5zbaZOj+iGRTv4+BavFXz2bSIG2wIihLBe5wQsge4DpCxdUlNjn2JCXi1vbM9PV74Vn48gRCgDU5xvAIngDSu77Jhu9u8dSQSmjikGc+6sWmlt1deVwaMbfTThLenXRmIyR4ppb2fjenQo7J4ODHQ7xIoMwzRO4fSUJnMxapZBcKqUPikE4E4+J+BAT1qmdEZMKEtUIQV9TSflW/eKSvspE8LbBERleQpxH0Dviha+Dq8ln+mozvaLPtkrctierMEmoUtvIz69qzJTFzXHvBMkTM3pQVAdvNAZiqpBvpBtg15L3leceCC0nLBuAf0XLfGp7LjBB0gyxoUhW0ZNjhCyVAjsx8DEDTSl+TDROp5MSWm8ygFO3VFfQ3h8LbLyATdrmH2dQcJq/ul9TZOEu/dLPlfLrnE3gI2hTk2lbH2E4rjXcg+DDAsrhfJ+353zJW8uCC/gFmmpBcVyxcDpsfU+auETrNi8BAL6TnEiDBI6m0NqXZqyQnm8p7isc54tZ7lOZqm2vAJPcCAVM+U4T80nHHedvSj3alXiWePXDE9Aj5j4VOD33PN8GRzwat6Acazkh3fbsOzRY8/jhTduddO3ru+l4ER1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(18002099003)(22082099003)(56012099003)(38070700021)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ID5ydNEcvXxA/0N1NZeNvDQrrhLb3CfWEkVYSs+6MHvfTIyMdbMAaPRrL68Q?=
 =?us-ascii?Q?r/n9x0s7swOht+HgcjKWIHMjdPiqhgWmb8zew7khUvq9FO6SuzOcQSUVPlS2?=
 =?us-ascii?Q?lFTK8HMpiUvqGR1xGawMlrPSOSj3lsXbpylvWiQ5gBMwOFd80kwmu//NZVPI?=
 =?us-ascii?Q?/mgqLScOHBrijzU3cP8+QRlXsVu4nFFpo1fUjV1X7JBVW3NgruCW2I6hGcmH?=
 =?us-ascii?Q?xHlj+Miz6apd23Bk9KgUYKKYO9QddcfVHdDk/XYooXso/9H8sUh/jt9PpeJl?=
 =?us-ascii?Q?7aQ1WvySk2l0eXgkPzOB8RuFa5jhqIU0iWWsdFxqBLknTz1s5hubiEScgC0U?=
 =?us-ascii?Q?T518riS/B09/+2vRX347sy/h6UMcDFGqnXE78r1e6kHS8KJSIhDf4y6yh/7U?=
 =?us-ascii?Q?rowX3rN1qY4anH0C3+mMxR/MccPiG9ASVhGXPe0opS0Cs1uJI/YhsMmn7rLW?=
 =?us-ascii?Q?6+F35KzDuqeEHuW+GW8RgK1b1dFwjIh17Gn7xKpnryil53edGmOj45gX8AUo?=
 =?us-ascii?Q?grg48hAozzf0bg/kqBJ6yEVyyeFQLWzwdhGGXrdJ4trlwmJYEgqAXFTbN/FI?=
 =?us-ascii?Q?QZ8fs1ptnTvkrdIeAlWO/ZsUh1LUuwIbeC0697G/0SOtaEDBBmDrceU63s3Q?=
 =?us-ascii?Q?g91brSxLTeBosm+pM7j7vg5GlS0nijPWCMQ0/s36fqqY8Tt0I5rU23f349x+?=
 =?us-ascii?Q?icqXeaXNye2ikC5U+FrkYFXE/uxifJEKq9uOeZa+f1EThe5NYzE91TpJvqmZ?=
 =?us-ascii?Q?iMMiYUUb6B86wjvhztnJSWtZZwYQcnal7oz96EDSgG1trVEKpLB1MMiHQWaZ?=
 =?us-ascii?Q?Q8HvFSDMhbvTwn8b98f9y5WK/btb3VIB3Gr3j8mkqGSagbPfT8AtnhIsa2Oz?=
 =?us-ascii?Q?Psugn9yxPWFwuEltbrMUygj80M99VkmW4i/2YYvHBVuCGM84zhxNdTRm3/rd?=
 =?us-ascii?Q?IgcV/o4X+Db+22RxyCtG8iaozh/HqePDmYkUeTqV8eYFwqXKr7v6QEqG11jw?=
 =?us-ascii?Q?a7sFxHttFVBDnpLbbu77wV0DG/YmsfmmRMIevyEbIsB9JdsjsmJSJoGC0UVk?=
 =?us-ascii?Q?BWvjOUNpRLZ7yGhVN6N/TZYewMO172sll92YLsEPee4XN3VgJTuTo8QRq1IQ?=
 =?us-ascii?Q?bq5zt4yHseHEFhxksVEa40aAwh/+ZtsSZ02CjN3e2y6EpCdZmtGn6aRa21ln?=
 =?us-ascii?Q?PsfpYdx42YYjhJblC0Ye2spppUWNrXpu6Ln19MuhSUz9RA2Fmksf+VSsSjT/?=
 =?us-ascii?Q?ffCQXrL5H/844gEDf1grjPb5LtcIrDDZ9akcZ0G0IqW2rObW7Kw8xPnUTV8C?=
 =?us-ascii?Q?KhdFfwjpw5elgwBkWluJd3cK06MmiQ0TK4djXU/nPCwSq58gTPM0aDaL2bmJ?=
 =?us-ascii?Q?+sGTXZUcgQsMg5ZbM+ecJa4/7F4vcJ/domUbm4xcyzaOW/k4T+HoxIBHfzLa?=
 =?us-ascii?Q?RJ4noB6BIAjTM63S/sqDPohf4Gy8K4Q/Xd8qSZUky5v/rZhwzJfjhCGFm4iQ?=
 =?us-ascii?Q?AggF5Mo2aRVMnpjCJB63mJ43wkBcfP7tJnvdhxV+79F3lYizwGxQRwLv6Kxf?=
 =?us-ascii?Q?TVCRoUIpIFgn/cWxKSsNSidciN0+oWeNxctZlCdoPp4YAafX5UlnD6gr7THM?=
 =?us-ascii?Q?YG5d+sIkVkOm7Vw2IahwR4rViMFdYgU1WnuhoAU19dOom/cR1UHv3TsQJx0L?=
 =?us-ascii?Q?r2KjCbIQ8NqLggP6qNlfuma91APhRCHoqYNQiRCQXL1hJh07FWd83io4YVEa?=
 =?us-ascii?Q?8USPqQDA24xvmKTTy+gUoy1c+TJoTfY/TJ00RcOCRCshYAxNX4wlf/2Hvuri?=
x-ms-exchange-antispam-messagedata-1: C/HL34T0/c9Acg==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UdjxSUQJD/Eja6r3/wC1q7VTBNgcCy+VHL+fiY2X+9lCrxVY6VCwHCY7OrGN96h2Hr6WE6RoeaV331ws60DcA+6OdQWBsMXr3QAkcJv/DwGTiOkQLGpyw7/eU3L/ui0HKlVog3ktZYXhDiVL0e40zG9BBP9wex1vBdmpZ6nHnBDP8PFTWHMQ0deoTavNpmWfbErnIivh6eVzKijeoBHAfwaCj/sqcdh4UyFV0YfPQ8RLrsWO0/CAsrRCovvL5h2MKTwoz6OhFTtXFGKtuOfFgzZSxX5EA6FGN2KcLfJXky0bAzUk02Q4v2sae4Hj6U9tfnglCrD4/g4fCoTLiwAKeA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: debb7109-d88f-4342-01af-08deba13a14e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 04:11:00.6273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lQUeK1J4jiEMAmhIVVvuJGwix7o1dT3B2UKyD/YkahW5GJkNFGjsI3nP542y35SYFYyY4QZT7G5HxID1b7+P6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779682268; x=1811218268;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aIM4/9xDYGurXuV14AmgEWf+ZWGzbrAgKl5rTjJ47uc=;
 b=EYUIjWH8FUFGI/NRQhnkhc6vqt2k1Q0s4xapT5APDZSc8NhzxTomWAo1
 ZCYE+XHx0TUFeZMrkLbK+XPSNcBU2duqxT0gudiTvEEwSZk4PU6/XTsfM
 KNrHozhQR9Y0yAqXo8e10Rs0MtRkd+j03y8gzMTZ16d6iTCJQu4AaFD8/
 raCYzuJF/sLJLBf4+JSaE/nedna8Sj4U26tt7t5HCfeJioLFV4RY5E9H3
 cNsQ3Kjf1jQg2Nmwlak0OSfMas4UzMWYPwIbvh7nKa+dRnyE+jkGbEhDO
 OgkI+oXNyEo38Jt3nXUppTsY/FPKifEAO+7TkHYU2SVSIfIlCx0yxlXm/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EYUIjWH8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add rx timestamp
 tracepoint for debugging
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 31FFA5C5A13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemyslaw Korba
> Sent: 11 May 2026 13:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr=
 <aleksandr.loktionov@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalews=
ki@intel.com>; Korba, Przemyslaw <przemyslaw.korba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add rx timestamp tracepo=
int for debugging
>
> Add ice_rx_hwtstamp trace event to help debug PTP rx timestamp issues.
> The trace captures cached_time, ts_high, and the extended ts_ns value in =
ice_ptp_get_rx_hwts().
>
> Enable with:
> echo 1 > /sys/kernel/debug/tracing/events/ice/ice_rx_hwtstamp/enable
> cat /sys/kernel/debug/tracing/trace_pipe
>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c   |  2 ++
> drivers/net/ethernet/intel/ice/ice_trace.h | 18 ++++++++++++++++++
> 2 files changed, 20 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
