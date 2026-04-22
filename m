Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MvaF1q86Gn7PgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:17:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBFA445CC3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:17:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A11240286;
	Wed, 22 Apr 2026 12:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rp4lbMyQAtup; Wed, 22 Apr 2026 12:17:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6089740291
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776860247;
	bh=osqaG1Ow9+s1mAalLIvCznCpcGGL7ImDjPu5sn4W7GU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n79o32lOeLsJblNdqRHStw0JjSedbE9+VDgX7nPddAN1AhjeIC8fY+0bJdFbf1jB2
	 G4Tp8Dt2OqoN23empTpVs1h9CsgX+AWnCozeSF8NC6vmMZitVcXXKTGYnza5+rWkYH
	 Fn3Kb2xY16Kmy39puxAOVBzINR5yvYi8LOz3o6OwfqV+3qKlFl98oIP7hdw+oQnAEX
	 MIsf2ZGBTJqnokJkv5LAySxIDn6wuQXv+pkqhoKqnuCLjeQQ7NsQGq0vDySOMjEFZu
	 qn6tHIsggJeVh7RgBXTiqNPQZ9EkFHa3zls/r9kGbzOhf5vcuA5Jgtxua7bgUVBdwY
	 CPLlAcfUVp1/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6089740291;
	Wed, 22 Apr 2026 12:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6933C183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F39440226
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Svlx5dHyxcAF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 12:17:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arpanax.arland@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 516E44023F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 516E44023F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 516E44023F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:17:25 +0000 (UTC)
X-CSE-ConnectionGUID: RFGW8GGVT/uFgFHcGG9iFw==
X-CSE-MsgGUID: EHYovhA7RWWufdTShUT9Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="65345641"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="65345641"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:17:24 -0700
X-CSE-ConnectionGUID: se5rqXzLSRWZoqgPlRFgAg==
X-CSE-MsgGUID: HoYodiKsQmWpFp20vbqtHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="237375929"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:17:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:17:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 05:17:24 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:17:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dxDmgy0iEX0DgJpBxn3R8C/9NLmF4a5lSVW7QAtpNlqVdFqFZryjBsGIsfCtDE+Uf17CHW3I3fKmw9ydjQ9GSZ1uy91LfihDzwE1eQdnJGTNDoSgxEv+1pcIMyPxqrkW420llL33tcTaE8FQjKlu9vsxWJpYCyzZdraEDia5SRdJs7xsPSyLHtYvb4fWo0TjsQGArBabrjnArLUznCKD5yrSAac2RIgP/wOMJ5Avh2P/+Ej6vVD3rxHUkCNT38k/oBJZbsO5j3PMjnNIfqRiZ1myM6gcIzhgoWq5MyG5mczYDeRuGR9i1lFNrhqN7h1tLuVcT8tRPS+AxODoIi5czQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osqaG1Ow9+s1mAalLIvCznCpcGGL7ImDjPu5sn4W7GU=;
 b=i/TCzVigCMX5xtlD3LzJYukbskXhYKJfdOzR3zB17lun2RLOziQa8L3/hV/uPAa8MbvD0eoFGkO/DawjiVWqme2h1k0KrY2ZIZQvK0hZUvUKYP2LRlyD8e6LlJBzZd0lcNveeG1hnp9eavGpz82zK4qklCHIgOGc0+b3c6R9TBy0kNiqaTDXsxRaE4krwtZ+rIom5XMiZQqNmeztja7Yto7ANFjIvxjiu0P6svTaUMh+7tBu6wQ6951WwDt/759p5GU4NXKUk9Gm5nXEuZZgEbtOcpvoU9ajAlRslcIHF5M2JTtjfWQBVXu4Wff4q/uMbgbe4BQdxk/taFML/Dgkag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB7155.namprd11.prod.outlook.com (2603:10b6:a03:48d::6)
 by PH8PR11MB9533.namprd11.prod.outlook.com (2603:10b6:510:39f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.12; Wed, 22 Apr
 2026 12:17:17 +0000
Received: from SJ0PR11MB7155.namprd11.prod.outlook.com
 ([fe80::a279:5eee:c8d:31c9]) by SJ0PR11MB7155.namprd11.prod.outlook.com
 ([fe80::a279:5eee:c8d:31c9%5]) with mapi id 15.20.9846.011; Wed, 22 Apr 2026
 12:17:17 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: reduce loglevel to debug
 for 'Can't delete DSCP' message
Thread-Index: AQHcuCdSTe8qHjLp0UmjQ2rf1XsAJbXrGOew
Date: Wed, 22 Apr 2026 12:17:16 +0000
Message-ID: <SJ0PR11MB7155A6B756016E78FB060450802D2@SJ0PR11MB7155.namprd11.prod.outlook.com>
References: <20260320050548.422684-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260320050548.422684-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB7155:EE_|PH8PR11MB9533:EE_
x-ms-office365-filtering-correlation-id: 5689fb94-fcb7-4e1f-fbe0-08dea069181f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: uH3DjQjC2vvY0CO+4QQbq4RwaEchdMfoI23HCNCSvaqgm+gUmlz+d+XLMGtdyoR9ci5T+JZv4JVoSgRJBITL9zXqE8OxZ9NjBA8DGE7HRRFbhic+6Nb92OnyVTA8xfOH18oCqGGo1bVU95QWApOlzjoHpG2idmh7/+HJS7MUKixfktgPzznSVnF59xgrUCKDFTgTIpEcawPjAgbdZq0zc3t4hl0lp33HLx6AsRmJucTZRdJGGDqO8Fo1kFI+KOjtCm8SbUsSWO9uKLGOEnaxPzXitYf0uTFWipgSytwxSHdNfgec8CAIyrIQ9OzZXvpeXM09IdAsO4cQHuLc/uyO+5Y1lx+8H+y0MaZCca5XmDn7e0nWVIQZLtr48mgZyh9tE4X6XTP+gqBLmsEbwc6A1Wy2524UZnAZ4hoNrEJgCMlWfTMkwC69S5LZlBVIIhs636tLvYWeXGD1dqd+Nno7p4GLXDoD0s/oWIPUT1f47Q+6EjjhWDegVTc/IDtlhw3aAr591rM/VScTXVz0OuHi2OaPPzh8ULhxK12xPgHsexJJvOM9EUFsou0/wiYQ/MJIqKS0pzo5KCFLg//KdzyJ/ZlJrdtBHnd4GFQOGU3OBLq3KnXGTGxGdiO0XLbCPbVIZp76WMc+Tg7BYbGkw7oMws3eVkah2jodNGJTi2cfvlNz1TKiVIXOR/vvxv1YjuS5QIbNr6Lx9Pe7tjXHLzr8zyk0uT1R5+kzOu+V+YzuPTo+iAkBbJ+e2PrQh98BMoNf/730+mgN8KUuQaFjkImUcUypsGvxU69y5QUFAzgwbaw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB7155.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8bbx1mewwrwbvAsIZfqkKHBSziOVv+lhzBpnlmACaSme3aF/25IyiwI+/LM3?=
 =?us-ascii?Q?3hKG09mqKkJZt/nSzNl/b/R1pVoqBkgXk4q71R461ODB8hg0QDWN+UhUyYr8?=
 =?us-ascii?Q?/QkXDlFIz/nr2/GsEY3aGeVAUSn9TbWthhJbY1fhEcfHTQiQUOq8gmy6xsyz?=
 =?us-ascii?Q?yyreblAkTCNFmdPBnotnbKl+IkrIz/+9vj60XAj6QRRNyT2OMpVGzZvWPR+J?=
 =?us-ascii?Q?EgB15mxctPM+Qs4yKsXIt+c3omKJIOYV/GHDSvme2009WK4OaZkf3na4krOj?=
 =?us-ascii?Q?1Ju/78ydGOLV7RfOIM4ngeJbO+TI6zBHpMhL4ap0tRMZjF63ZJGDOPkxHUM4?=
 =?us-ascii?Q?+/M1W26YgvYCLVf2Up0h4prMj/c8Vas8ThD2oGl//EGcfCLovFDcOckPc3gH?=
 =?us-ascii?Q?JxiByDtosG7U4D7QrJQdEzwk4caxhbWSwOTdECNx+T6eND+ivCe4CTNHplcS?=
 =?us-ascii?Q?zPQttX91gxYnGe/1xb1RcnIwCvNtYzg5cPSElL2dfz2gUtdkYAejvGHDMBXS?=
 =?us-ascii?Q?RjTOGKYOGIJC9welR/QwJKkGVyj4v5yjiJqQBJpg3lz64cSDBs8zYgqd/kTW?=
 =?us-ascii?Q?9WmYjZPUryP6W4npXpTXaXzcE9w0BWrecI+nD+aQ222ad21BlHxDDOESCzBY?=
 =?us-ascii?Q?0ZgMUmGurW0rPMIwtwUlTJaT4AZhVYgHpafoATiYeTLLaJdVqqd58Xi5Tqsz?=
 =?us-ascii?Q?SBSKlAvcWWfBwc9QZRywDYplMFYmRfMnSztn+vGQEwonuCGRPOD8SL+O3Nr/?=
 =?us-ascii?Q?ZWC0O680jaxsp73peBWSGkwpUF805ULwLPHsBGDVQEMHc7xNYpO1B3q1kvOG?=
 =?us-ascii?Q?01aQ2ScWTgzcfiykMk9Y3lu1a9LTFQbJyYF7rs6ovzuY7tWgpkQOt30DcbF+?=
 =?us-ascii?Q?IhrXMBgKMwzq5sVFCDf7y6uQq6yEwQ5VLKdw/w57OTE8aDbWwbAMhlqgPknn?=
 =?us-ascii?Q?mMbeHJIO9RxbqaXDPpPCxJQQbjxTrF7XvrSBoAP0iGWvJf25nRtUQsShZ1U5?=
 =?us-ascii?Q?ECTOU/OXro2cmLmJY4NN9V/LvBIxa8kPhg/GUzwBGc/0hTC69BATA3cvUdaZ?=
 =?us-ascii?Q?3YFnyeEK2MJrb/o8S02LGedUeKCrw7gLYNb0TT2184KRbbd8IGHexbw+kmyH?=
 =?us-ascii?Q?RaoClrz7ZZeKKm5YcnQBgwSHi2L6p3jw4loSF1MVgjBzzu0BmigitAPi2chn?=
 =?us-ascii?Q?BJhIzUv+xi0oQkpNH1r5g8oNOYZntztPjvWLvvoTcZbTrmxq0t1q8iGQlhku?=
 =?us-ascii?Q?KItv9j0hzy2vyEDR2WsQYdjkkzZw4J+dWnSX0pCCJ82Jl/wEmcrILGd2qb8W?=
 =?us-ascii?Q?hOtzW19SVhbWx4iCJh98iKdDpjA+j09f0uJckzmmRa5fHGJwF4IW79KFOdmQ?=
 =?us-ascii?Q?FRcJ+seVd0WIHRC8jwoBLalnN4GWjQy6JKBiymGetNHb+9zVlU6MXlHUGVeU?=
 =?us-ascii?Q?+3RTJsyHeOKSaDskSP0MuTuXAOUpVKuKzlNw49295nFTgocODZ5ianKo1GaN?=
 =?us-ascii?Q?Mq1UeMfJo7X9fvcspsT7mwVVru5YS02rpIuQ8Y31c7b9zifUwOYghDZAw743?=
 =?us-ascii?Q?yxW4x10HbYGFHk6MfkF+r/7Zxq0xx3cJ2wKNyz6rxDNr/LB4GQjkAwPcwcQ4?=
 =?us-ascii?Q?Duuwu5L67qRFg+s+Lg1UeNIzMxKXkJaKhdG+PJGsXH8CvBFI5PloSiDX/UP7?=
 =?us-ascii?Q?kQNUz4aw9DlhViX9WteueSts4lLjuUy44v0R9Rt4ZN2YzXKi/ZlXB+Z5LawN?=
 =?us-ascii?Q?m+eU7UMegA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nzDvBRHP1Te+dq/O+xThujuRz7AwoLrwT4p3hjWwarTz/1CbfsRCRiRMG83JqhuI3e3opDIZLdIzebulynSnJjyIIDpzR1dDhRfNr4V5Z0D/78DUHGcY3tOceifHM9/oMTipeCDjNmIEUOUY5Zzuhek9926ybeYkC7FLLfa0gXVym+jW2bJfgus8gdZzcv0V5vJJYMjvHvbMeid3IAh3px8VcltOPrKNG25+KfUxzfg9xHbBnu/Mz6kStF+KAEhkZR9Mn6yfrNDICwDGLmt82wW7Qh/62LZrdZVEj8fifGrHT/2royhsu83BpGIe5KnYCnvR0V6z0x8uDG8CT9EARA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB7155.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5689fb94-fcb7-4e1f-fbe0-08dea069181f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2026 12:17:16.9829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sfP+j9+FeNfHwjfwRJzAb9bMxQ9ldww/kY3CtOTBTeSWYfuZiyDEmBt+iakTA/c57oeopDOwcFHvb3jmME+6A8VDt77vcUbnt8Ijq2pJwCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776860245; x=1808396245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Df77IR64SkRbvrvpVvs5l7KoHKwvUaGm+r/ENeQAQQs=;
 b=FMzjNBtM8T8QsKOMgAtDimQgNA9vMNqMZ96mEOcqXTbPqEnZ6FUP0wC2
 D+YbxC5e68aMahFbSozfJ+3oTYZ4w0cdYFHQf9IEVE9ZD5ya+y7rXOJCL
 iL5A026UEpRyvLlmbdFG9eX8OSlCFtZOXjqQ7LXXBSfwb92MlFT73uuHk
 24lpeTUaMwr1mvdIjas1V0t70CI5oR5uOmsshlag0w+K057rvVqqOXeSp
 dy7rd7bhSoweB8qZQTqSQmCoH1+0kxcnXuJTRH/4AXFu/QUCC/EukPwTA
 anXeg12WnB56lVQ8eH/M03lla3NShACeejaiLvJNDBrH7FpDxSX4hslg+
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FMzjNBtM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: reduce loglevel to
 debug for 'Can't delete DSCP' message
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,SJ0PR11MB7155.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 9DBFA445CC3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, March 20, 2026 10:36 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: reduce loglevel to debug=
 for 'Can't delete DSCP' message
>
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> Reduce netdev message "Can't delete DSCP netlink app ..." from error to d=
ebug level when in FW (firmware) DCB mode.
> This is not a real error and a kind of expected behavior. The device is f=
ully operational and error message might be wrongly interpreted by the user=
.
>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at=
 Intel)

