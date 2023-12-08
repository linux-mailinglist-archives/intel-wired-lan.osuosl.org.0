Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7A180B0B3
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 00:47:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DD71424C3;
	Fri,  8 Dec 2023 23:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DD71424C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702079224;
	bh=fjJ3nuxTZ9DxeuFzW+VA7kOvz22xSWO2f0/1X7uhHqY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MssJdWQcp5dsBYLbQqklbyn/qRmSj8D1z3wXNk4bjLzkR6Jit588SJsh+b8fSWvdF
	 VdFxvOwTc3wbkWuuenlZiHTkqZhcaen2yntF1++PFshAVtowIwPzq/8i9u+64T4ihH
	 6EAeOH/Dd6lzjhA/XQdSzFSSHGkqGppQL9EIk+ap23ZZiI8XiTy7AvCT2S7V/l+R6y
	 i3y4/WptkuFl1gIGMUNPnOFB2N4McFNFX0LDh8ypM9Zdoz5cM2msPw8+GAiKLcm/jT
	 wGnQL3HPH6YCJcAIaofoeFs3hcEU1XWLurp/fanPmqA60JGBVllhIZGMu0RgenS7eW
	 Fj87Q01mt/KDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FhdhfzAnRIyd; Fri,  8 Dec 2023 23:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC37F421B6;
	Fri,  8 Dec 2023 23:47:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC37F421B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14E1B1BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 23:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFCE240904
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 23:46:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFCE240904
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VsFXOqWqBWj1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 23:46:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E368408E8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 23:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E368408E8
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="460954982"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; d="scan'208";a="460954982"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 15:46:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="842785902"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; d="scan'208";a="842785902"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 15:46:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 15:46:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 15:46:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 15:46:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 15:46:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fiUvknzV5lldIXDkUx8me0z+ySJDOjHDBTxTTiM/yb4qreHi9T7UmkcWhqixOLQY6UUnMaSjGBRQVRwnFgFV8I4wXZwgL7BBz1VdBZU+n7HXr5jCSIIz3xgUzmiWi5y+ATuMb432jCgtHxAiD8PJjMqkO0ZKacvLnac8nXnybMqhuDHlznPEd6elF89CGcxWgZihs9NgSfpTgmyLljJQJ7XuV8QN9eKn2tc/e1X+WYbjnhzc94dctrmNICT85UhRtIbBLrhQ3G6WBpDPzBLmfeQzgCxcYhgpMGCv2XwEh3gWahH/YOdPGhelLsaAVtcTi6TCJRq+718Qple0AhIPwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWg79bBkWJHCD/P7fUjpr8A8VCD1JpQtabYTw4mHBsA=;
 b=HQutwcK7r8mDFgmHK+4MIszpttRmZAWljsW4nfeBC68RMQvpdbGz1oWP3CVMZZCRhXGHvw0AHZd2cqtQlrTetf8GgkJMcBvwaYpUv+qdbX926oC9FqD9esEeijRrInpSbLZu2sJj62IrDY91wKR2xE8zc4Y3VC7JZNF3c/2QshiY19EN9iepUbMjpiJZDHOBcsuj78XORq0oDAYcPxPdPDBNkOrynjhjIxeLDNAAP5+A6O52ExElr+wNvT65iroUvIjCpR1oxpo6zXWK9x4qpY/PSl0cEOYAaPPpVf0z0Y5ZKKpulyjh/cbwbqbDN916PSVDqUIVS1VmsDCx5hYlPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 23:46:41 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de%4]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 23:46:41 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Jay Vosburgh <jay.vosburgh@canonical.com>
Thread-Topic: [PATCH iwl-next] ice: alter feature support check for SRIOV and
 LAG
Thread-Index: AQHaKToUXVlzIDYaGEyh4eN8rXhk7rCf5awAgAAR/LCAABMQAIAAA/nw
Date: Fri, 8 Dec 2023 23:46:41 +0000
Message-ID: <MW5PR11MB58115CC6EA72622E87CF586EDD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20231207182158.2199799-1-david.m.ertman@intel.com>
 <bca6d80f-21de-f6dd-7b86-3daa867323e1@intel.com>
 <MW5PR11MB581150E2535B00AD04A37913DD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
 <21390.1702078254@famine>
In-Reply-To: <21390.1702078254@famine>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|MW5PR11MB5931:EE_
x-ms-office365-filtering-correlation-id: 414f767e-ab41-4cd4-5091-08dbf847ed99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +LuCzfnJ8joN8NJ+KIAnS6NoJROt/G2Tj9zGDFgeNtDsS/YxvHYnM1YjriGXnAltJRPbkkbzBtgz2r0hRF3QIt0Z0JL/53EcIYoNUXHLKFuqGDtF+ezn3pVkB7dic6RuIoqTaad3X6epZv3LPlDBTJ4ZYrQ14gR+Ywp4ey0qCAOH4/0QEP7FExdhpOUcYcPDaKv8sXGVDUrowf7RjNbETWLp1PbM67jj5f5QYSaKdcHQDvbzgyXVI8NEcVrUr5boYnDLLdD7LfFbTIk070P8GarO2ZU5nAicstNKzn/xlPYvR5dYz5gg2i1MB2Rfofr4JEAZ7JuGEdo3/qHRz94l4RwZXro1cDBahXqDlvRYiB1aU9lJG91sd8MokSeiWxpFYPBZklhQbz822i07pY8k3m6poZEBADg9m05Dw8cEAm6E4tad6sVDrhSZEMc3hNT7zYaLxJPZXMNjdiict7uYK0VOJNYeToxrouR4AOTScA8JybI/cWYu+zrinfq3xPl37AOM243nooXy7P6Ex/mBDRGzyUsfIJGS4seyVtI8hdiaiUVSVPUvfMdKhWkOh9wGREBFu7SPU5z9PrQnnWDg53tbggqYEHc6JvM0l6B241vxV9ehvi2xIBh/V3j8Z08XzT6qht+dVhvi2n4WuppugQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(366004)(39860400002)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(6506007)(26005)(7696005)(53546011)(9686003)(122000001)(83380400001)(41300700001)(4326008)(8676002)(8936002)(52536014)(2906002)(5660300002)(478600001)(66476007)(6916009)(66446008)(71200400001)(76116006)(66946007)(66556008)(316002)(54906003)(64756008)(966005)(82960400001)(38100700002)(38070700009)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZyyB0DCbEaN73tTGZhNyeDNaamyDlpiGYOk0eHH5Qq1FVaoewIT2dCnHPQyE?=
 =?us-ascii?Q?Q6AJZJoc10bHaK3TRhXIU2u3tGPiJ9lSwn1tS0jjuhoiE8/bI4cGsx4mL0r7?=
 =?us-ascii?Q?2yGBZBMoBFHWfQOaPmrHrw3sxx5zvG1T339dtzxIlMEi/YYIxI/F/UzQoWTO?=
 =?us-ascii?Q?LH1gYNPcZu5gU12hBLEipYT8FZZHhBmomZPBr3tf2SG03whqXWUR7Sw9CMZR?=
 =?us-ascii?Q?aYa1SCeATWHxMIro4PrN7LZNWKD6dEgoz/MI4MFGZ1lSC8uefY+61BQGfDJb?=
 =?us-ascii?Q?xmrsQJE7kh3GfEsJOL8MTFY+1piTOadUiSJUreUd4TLAeinMtfEipZreI1VL?=
 =?us-ascii?Q?NC9Ab9TYyhHI8mzXGg0lt8FmVFYhJl+wlYzpOwOXv2/+9RCzOtyl1L3TU0md?=
 =?us-ascii?Q?N8A6KtVsILlUvVYzavpGTOg+Qi7LtHcapsemfoCu0L2axGCOTTkHCDmxOQ7C?=
 =?us-ascii?Q?H6YtA+EsEqXpIjvojYU/phiAY8+y/bYaHWKCFUKQbuMOyNcrQUaAKmjYHkap?=
 =?us-ascii?Q?LUezbLZ9XE188Rq2OIWZ8QnWjQdF/UzbYajDeMm9fPO//ZgensSO2ecBx5ry?=
 =?us-ascii?Q?Q6YLeEHdRdfcX/jqLu4R5NZPXPieyEx7EyadqBWmRsdeX/TB63Oyvwuhq3f3?=
 =?us-ascii?Q?x3J+gjIgNvC8McFFcyzAssUS2qlQKdYuq7cIkB41aaXVKgGnc4obwJFUptZD?=
 =?us-ascii?Q?zEV6/WZfVsO0IV6hw6GEsHQkQ3jylheV46hY6riDaB4Gz2XFyKDukdGK72+U?=
 =?us-ascii?Q?bDF66zARZ/PDBVTSLELW4Ast19FdLpL+DasJnDIQ3gJebYPvO1+HeGu/q23j?=
 =?us-ascii?Q?3h6LhGgnMetQ6/9Dp+SbSpPoEVXWnBxuR+jBnXB30fvUMA/eHtHLBZmLg8+d?=
 =?us-ascii?Q?hIwN8JesH0R3BaLeILReu9xcu89LHKIr7Hfc/ZTtlrAGCWzfoht/8V2Q9jXD?=
 =?us-ascii?Q?+fBERO6R0snwfzwu7/4s6Olwxi/z6zvtGPGESu5DDnvSwumCxnmP/gzDE2fn?=
 =?us-ascii?Q?gkNtQWOcxodd4yYGjm1uAF6MqQRBR6Z5EDgeEwtNBEv/l6RF7cq2RaMPAZSU?=
 =?us-ascii?Q?+OdJ52jVKmPq9sWmkK8WvgfFPSe5uPUekV9EsiCjU1IzfH0rANrP92YjO+d2?=
 =?us-ascii?Q?UKJEXe87pA5OQR4BYfX5gdY63Ooiv9V0iqDVs2a/BNJyOAnZ1BI5Z0TOw2Cj?=
 =?us-ascii?Q?Cbyk/q5EwPSmrfsjfqCZvgkimtjxNHZMGqhco5L+uvVQoRXlUFDKh4vTMpo7?=
 =?us-ascii?Q?7xftWCJTCvECIIIvnDgZEioO8GCeya/4kRd+vKgqe+dVHWe0aEsyCAUOqHvl?=
 =?us-ascii?Q?AbMfNokfRvpj4taNYqBKsgMB8BETfQtW9BliNMFXVH+V623eihPO/FT5lGui?=
 =?us-ascii?Q?wDZ8LUjPo5i0hFz8xXFvPlo4ynnoIgIwoppItwDvn1QQ7S4Tei6Ge/BRaMm4?=
 =?us-ascii?Q?rn1bSb2DFYO8xyOhvPITE0oTHwBJ/IopssqUil2z3SKmIYC+3knpmOsoz+fB?=
 =?us-ascii?Q?ikqE4d/x8eM6Jd3mX7lMfACEZL6V22KJvxNQIl8RsNL2QJuw1j1aDBZnG5oE?=
 =?us-ascii?Q?TJWueZyEzPByG6x60Pq2WzgPOuV9wLhCeH5Jzhj6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 414f767e-ab41-4cd4-5091-08dbf847ed99
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 23:46:41.5591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7vKQDKqjGzJQP2qZgrbWcCYhcCXmBQ4wE4NviH7Sebu1IYXBkHgq0ypHDJ17y6Qx6rc9a5i4NqmqSYKXD5B/ZTQSYWEiWuwJwHDD1jYX4f8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702079214; x=1733615214;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jno2f/CVRsC7BSNsgZcGYT9+I+4F2Dr/ttiJPgPRZmM=;
 b=NYUffm1q+RHXYGH8vAvfuSaRsPmVQV+ud30xUNqFbgD+sDOoXr3+Vh2U
 PMgFJgBmiGp/ho8M3L5cFBCG2fka1PVH3xm9a+Ehz63abkxRV16sD2gzn
 5a/Yc4pKgYd1qK+xgqhV4MC5rVB1G2Sl04DTB9vSyRFGTzwM313grl85i
 HG+F9HCH0KP+8oKX8I9SIsPERLdCjZH6ucERL1tVsmQ5JzzuZH+N7FSHu
 SSmKn+ac13Dj44JFVeCu/5ta2RCXCHOdIOKyuixyxOZIjgvhzoPDf1oOE
 glCLyNqJ0PmMkhj6aPOWubCgAFKjc70/RF7Ald2y6FeN3whSKAGPaTSkR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NYUffm1q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: alter feature support
 check for SRIOV and LAG
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
Cc: Robert Malz <robert.malz@canonical.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Heitor Alves de Siqueira <heitor.de.siqueira@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Jay Vosburgh <jay.vosburgh@canonical.com>
> Sent: Friday, December 8, 2023 3:31 PM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Robert Malz <robert.malz@canonical.com>;
> Heitor Alves de Siqueira <heitor.de.siqueira@canonical.com>
> Subject: Re: [PATCH iwl-next] ice: alter feature support check for SRIOV and
> LAG
> 
> Ertman, David M <david.m.ertman@intel.com> wrote:
> 
> >> -----Original Message-----
> >> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> >> Sent: Friday, December 8, 2023 1:18 PM
> >> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> >> lan@lists.osuosl.org
> >> Cc: netdev@vger.kernel.org; Brandeburg, Jesse
> >> <jesse.brandeburg@intel.com>
> >> Subject: Re: [PATCH iwl-next] ice: alter feature support check for SRIOV
> and
> >> LAG
> >>
> >>
> >>
> >> On 12/7/2023 10:21 AM, Dave Ertman wrote:
> >> > Previously, the ice driver had support for using a hanldler for bonding
> >> > netdev events to ensure that conflicting features were not allowed to
> be
> >> > activated at the same time.  While this was still in place, additional
> >> > support was added to specifically support SRIOV and LAG together.
> These
> >> > both utilized the netdev event handler, but the SRIOV and LAG feature
> was
> >> > behind a capabilities feature check to make sure the current NVM has
> >> > support.
> >> >
> >> > The exclusion part of the event handler should be removed since there
> are
> >> > users who have custom made solutions that depend on the non-
> exclusion
> >> of
> >> > features.
> >> >
> >> > Wrap the creation/registration and cleanup of the event handler and
> >> > associated structs in the probe flow with a feature check so that the
> >> > only systems that support the full implementation of LAG features will
> >> > initialize support.  This will leave other systems unhindered with
> >> > functionality as it existed before any LAG code was added.
> >>
> >> This sounds like a bug fix? Should it be for iwl-net?
> >>
> >
> >To my knowledge, this issue has not been reported by any users and was
> found
> >through code inspection.  Would you still recommend iwl-net?
> 
> 	We have a customer experiencing intermittent issues with
> transmit timeouts that go away if we disable the LAG integration as
> suggested at [0] (or don't use bonding).  This is on the Ubuntu 5.15
> based distro kernel, not upstream, but it does not manifest with the OOT
> driver, and seems somehow related to the LAG offloading functionality.
> 
> 	There was also a post to the list describing similar effects
> last month [1], that one seems to be on an Ubuntu 6.2 distro kernel.
> 
> 	Could these issues be plausibly related to the change in this
> patch?
> 
> 	-J
>

From your description, it is plausibly related to this patch.  Looks like we should also
send this to iwl-net.

Tony, do you need me to do anything to facilitate this?

DaveE
 
> [0]
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2036239/comment
> s/40
> [1]
> https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-
> 20231120/038096.html
> 
> 
> 
> >DaveE
> >
> >> > Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> >> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> >> > ---
> >> >   drivers/net/ethernet/intel/ice/ice_lag.c | 2 ++
> >> >   1 file changed, 2 insertions(+)
> >> >
> >> > diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> >> b/drivers/net/ethernet/intel/ice/ice_lag.c
> >> > index 280994ee5933..b47cd43ae871 100644
> >> > --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> >> > +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> >> > @@ -1981,6 +1981,8 @@ int ice_init_lag(struct ice_pf *pf)
> >> >   	int n, err;
> >> >
> >> >   	ice_lag_init_feature_support_flag(pf);
> >> > +	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
> >> > +		return 0;
> >> >
> >> >   	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
> >> >   	if (!pf->lag)
> 
> ---
> 	-Jay Vosburgh, jay.vosburgh@canonical.com

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
