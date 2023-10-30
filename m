Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0FB7DB3A6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 07:45:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87EEF80E7A;
	Mon, 30 Oct 2023 06:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87EEF80E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698648307;
	bh=/C3Aps2cFMKdHmWC66NMGCL/tIll7jblGSRE2Mv+38o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WjQAJwJS1rvJGEk0IQoXLbppIxNiRWZfvD/Fb6jGEnC9KutUWF0IKlcUc1ADBHXkN
	 0I4vNTnvZm/jqpesS1YHkab/8VEBLajCDaWbnPDE84eOJ1SpQzCMbqZS2w7JAnRd+I
	 cNJ8eYuaOIfjc+s9cG7udLlccS2VrWvpJ3Ng35okqQBxoQfSH5X6u+EkIoyB16KoqJ
	 IRPnvRyAWycx3oA7OKAXPd7jtMkhCMZ0+lBUIfKTyuG+CvsyVYP2qFcYrMVn+tFv7t
	 kTuMNJKKPnyFjVwZyY1vARgy/os7HG023Ddgx13yD1UdEZtOyyn3nLkIXAw6v4J6g8
	 NPMDK0SHHno2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BkPKEwXoX1jn; Mon, 30 Oct 2023 06:45:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC72580E7B;
	Mon, 30 Oct 2023 06:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC72580E7B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EDFC1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 06:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 313E570A86
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 06:45:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 313E570A86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zv-tY_LtGrNl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 06:44:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BFE470A83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 06:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BFE470A83
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="452279358"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="452279358"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 23:44:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="903895153"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="903895153"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2023 23:44:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 23:44:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 29 Oct 2023 23:44:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 29 Oct 2023 23:44:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cNiRyvIl5XAMicDiy1glrnWeQCj1K8G+wKkJ3wZLH//92e+UAS7wbdLO5iAO34JBCP3AOAF5UMFOQgRTqse3xFgvjMYEizbYyUENRccbmY2xRjjDnW4/vyj/ABk0eF4BdB0vYxlR4w2mms86iQVVeecNLgr36QF1mkoz2opOUVobaOrX7U8fJ+SYBIbECW+2QjBXEm7x/Fhx+b3BXu2V+1Tn2UFQbUVHRpiZNFyEsLG18v5bgxKjIrVoUHt0ePVSmbjPXD8BX1DCU6Ppjoe8gXAB3omJrDjjj0fp141dDAYTAGC11Xct146VOPOjEqO+EH1Klt2xQ0qg6ondGyYoYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cHMPQGmy2hGYKpKPnAmr8ZMXF8jHEET80aYOvbwh2/M=;
 b=ERCMPEwulxwzmREXoZ+0KMaRii+9yvbfvLc/Kt46uUZCe44SEW6nphh1SKwqX0FPoAQzw8XYK5EzEj/JeTtYgafvYH9hZaIYSAxb1w5BElUcUmLuNdKsG5EVLnbGmYfS12zfLqPpY8q7zuJvKccqboDSGHT7iFLTs8N5eMouGV+R84h8dtD1FSEf4zMpuBrdZTICqn0MJ3Bp1daiiQZMTm1XxoxpTqzhAm5ZyZ0//VbRpvwEQ+MYf5jfkI3f6ND+E5aeVJukiFWifz9AMzsgkG0OstCjaudsmbgaNFCCkxO1Ama6SO9hXLt8MAGLhkzxNBQYScyvFEM+gXCCV468ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BY1PR11MB8053.namprd11.prod.outlook.com (2603:10b6:a03:525::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19; Mon, 30 Oct
 2023 06:44:53 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Mon, 30 Oct 2023
 06:44:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: mschmidt <mschmidt@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: lag: in RCU, use atomic
 allocation
Thread-Index: AQHaBaBBZaQD4v8quEK3DaRyG+cd7rBh7Yvg
Date: Mon, 30 Oct 2023 06:44:53 +0000
Message-ID: <BL0PR11MB3122C6FD50F99E15C3F99E00BDA1A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231023105953.89368-1-mschmidt@redhat.com>
In-Reply-To: <20231023105953.89368-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BY1PR11MB8053:EE_
x-ms-office365-filtering-correlation-id: f84eccbe-d707-448c-e594-08dbd913b915
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fmxN+LoITg6g8/RWP9prNiTisToG69aM+eaF7XwvD1j/ORqhj0Gy6A+OUvTdsOgHx2j+ti+E3/1hbAbY8KOagK5yV39aVBWiIVilnMi2uWahpQrCq3/57VudYZfNiGNT8WoC3QawJLPSkJUF4O1OkIVjfPFK2kmQrS3AtAKo/46a7BgWyoljnnpuXf4dqbX0vPzsTDidH0D2sRE+QQUNXd9B1DqaWiy7Mjt7y0uHAea1bjFnRQAz0JHzLOJAyr8cjNkTMJcynT2mKXJoljqFxfF7miIiX8P0cUXfFyiYfeJT7rKLsv0qJxT0OmxLZaP3KefPG9XRslcElGgh+ziDFXuzmKZLSKJeKF9PGePK6xwBr5ddwYARwDHJ+yZpF1zGz1mbphBnQOQXhBANXr6xu7iaKrDB47DJm6LoCEywiRPDbkYWhqX+vhunPMphQzsmFWeF09z1lUfCWcQ3NEWOjEZaSYXweObJY/lXmVahCWQN0//sHjFpJwS/kc1RfMbajc0GoHHjEb1Aphh9KkgkTi/206JujdaClhzvnDuI8S5dkEHcQXGDspooqsKCJc9g5ub5Mbu2rW+TyzU3QaOOlyGMgIKs554h0EKFKJ6Ckmw6fwJ4BJC1GiMr/LbR/sf+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(366004)(376002)(396003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(52536014)(55016003)(83380400001)(53546011)(478600001)(76116006)(7696005)(82960400001)(110136005)(64756008)(107886003)(66946007)(66446008)(9686003)(6506007)(316002)(66556008)(71200400001)(33656002)(86362001)(26005)(41300700001)(38100700002)(8676002)(8936002)(122000001)(38070700009)(4326008)(2906002)(4744005)(5660300002)(54906003)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mJowVd+aSu0gqgPMqvM5jBGYnTno9uCS7u64aH3E/rJbRwVTU60i59SBjZ6U?=
 =?us-ascii?Q?7DunYlPXcjrIIxhJof+nQ4wKUI8KBRiLo/HvuuTB1P2E0JGUYpeDmMdZHhbi?=
 =?us-ascii?Q?0iFfdZbBaRR1f25Z5fbRy4plOpJE1WYzMDkYSUQ4UeBKBIbb51clTdGMe1EQ?=
 =?us-ascii?Q?oNBGFmxB5EHojmDnU7Soa1QlCQLXwkQJ+wc0mWwKC/ynFOKlvq9AksaL+dbC?=
 =?us-ascii?Q?3BzElNi0b59kFkVTbjIqBrc1443w1YJA2p94uVB0X3sVO8ShvQZOTq2Evjmb?=
 =?us-ascii?Q?zQH6BHkrsdXWK9RT1K2NX+SdJM3RzJpoJNnFF+ABlGw+Drn00OMVjRY2h/vN?=
 =?us-ascii?Q?7Ny3RZtbX3a6s4Dhw+J2ckbp4bloUuJncK+5n/arTOb5U6LkFP813I+Q172b?=
 =?us-ascii?Q?fljbg7cHlwc5dJOzmbSZ4yZIa5D4D/RHxpzeWOqHGKEEeQpJvl2bBXZbtIz8?=
 =?us-ascii?Q?V3QvuCyNSuSvzVTZKsF7UJsxsno+EB2SowmNidG+tmNTxuZGylzj3/exkR2G?=
 =?us-ascii?Q?pcpJ7Ss4z9wIvZphxAHOF9gZtLl6rMQvyZwEtqblMQe8NbZcAgpH7u5E/x4s?=
 =?us-ascii?Q?alLKngrNqPxruML1PePaQLjaRI06wsuMu+wLs1PKF/mwua8lEIWGjZBFdwkF?=
 =?us-ascii?Q?UA3re+twkxrRhC9V2zU5u53epnoIWB8w5shF+YxCR1kXhThgMKHMPlAEwIhn?=
 =?us-ascii?Q?SNVLQM4DHumESQgqR7FxCBaVFsMSVauoyHfPVMhFc8CmdLJutOVpFLEaxKlu?=
 =?us-ascii?Q?xZ3YlaKNyB/tAlI+C44TdXkREIjCO4zNMlMIX3P2VlTRd1mweDA0PEUDLXzR?=
 =?us-ascii?Q?kQ+UwwwLEZk2X8tmmRwvLz8Q7Q2SAdsEhp6t/oWuTQg8MGrxCRWNGPX4J8mz?=
 =?us-ascii?Q?O+4LdNitZiu1ZXzmBG0ThQ/a9EXbrsSQRhN4IbTr1INykatB+27ohgvKpVEn?=
 =?us-ascii?Q?5yZjCBuFQgTsbUoO3yOiEDlgx4qXAyOeIuVdHAkbitcRYe1P3Q20+SPgNAL3?=
 =?us-ascii?Q?+X4qBuaSMBAiOR/zECCq+oo/SWiK+K5SwZI4A2HArTBCYJ1CjOqlhLdTeHNt?=
 =?us-ascii?Q?6LaUsQoTqcmwajO1KyUxdG4D3T4O7VZHO8WtOgW+CmEeXJYSj9Gwpj05Ha6f?=
 =?us-ascii?Q?upYype+CSLOoqTOmqvWbRzX6T3wkOvgNHmI5tiuFvS0Wv5sN7r/ezaBe/Ii1?=
 =?us-ascii?Q?AGL6DfH1Xge7Ujd9V2VOJhUgAlGyg7dngCFT65t2Iew6lJdUG9XICLc2pQFy?=
 =?us-ascii?Q?zRJd507Eia0WTvX/TG2+eAHaYEjaNlVfF5f88G3VcLas7IBK3JrsBSWQHW4d?=
 =?us-ascii?Q?3NFVNqtDDPDEWuXWwswUR3wTIK7vnpBjmS+cCvwmTeQ1DGNjYVa1DGpGeRut?=
 =?us-ascii?Q?MvUKS4W6cStM5hetoIHUbqcUzB1mDcaRzNiGesNlGi6BmBMI/7q8VZMpOXxV?=
 =?us-ascii?Q?lYQsL5db4vuDLsaVFkncwgYcjJ6/Nk9z3cF2pBIAnrENrbFSiaEoxriEqIe4?=
 =?us-ascii?Q?jC6EEwY3j1J0/vYbL47KoRbB6BL5Z3r6gAFSAXsv6IwAIzdxJQI01TjNDrId?=
 =?us-ascii?Q?B/04hetm4krBLz8t4OiUHDwyULlaZ57YxiS4+t4aMs+T+3AoywCA1HskgbYM?=
 =?us-ascii?Q?5A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f84eccbe-d707-448c-e594-08dbd913b915
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 06:44:53.5624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 26Sef1gCwly3EZT+B/Fqw4Koz9Cbvdd8Itwnq3ovzN4mMtIZRapoE91fSoJulG5Q4aidiUbeTn96wsxMDiQiL26dwXr11mTUZuTUA6eZwCMUFXBh9I+eqfR6EWAWlep8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8053
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698648299; x=1730184299;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y6GF3zjhU1hmjP1s8ssSL0f+O634I2kCiNVCzEJG+7s=;
 b=ReSrbppFhGYeS+J7Crz7lZiUwk6Vk7ZKmheNET7aTz+A00LcN/U5MW4W
 fwKjMJXQaqzEXg6lB3T/V08/xALgcQZAf4pKWtWocSRsg+AxcYIo0OrcV
 L+K1Awz98qjV98tzJAbVY++aY4EWjE3+p0fMJfNhzCQErHUo5AiOFDva/
 HYSdeMFHwN2du86kU8d2Yi1T8xOI7b1H5lDV+HvYN6n3AMPOE6/eJAQL0
 lTuz60zo7x0SnWIkpokDAMskO6W2GCP9DcB3FmLH2v13n+FZHTdz46c93
 MoBLwcWBomhvCjNotLzkLfyu1be3mKdIJcROzBhZh1WQ6KsQ1Txdg1mJH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ReSrbppF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: lag: in RCU,
 use atomic allocation
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
Cc: "Ertman, David M" <david.m.ertman@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Daniel Machon <daniel.machon@microchip.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Schmidt
> Sent: Monday, October 23, 2023 4:30 PM
> To: netdev@vger.kernel.org
> Cc: Ertman, David M <david.m.ertman@intel.com>; intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Daniel Machon <daniel.machon@microchip.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: lag: in RCU, use atomic allocation
>
> Sleeping is not allowed in RCU read-side critical sections.
> Use atomic allocations under rcu_read_lock.
>
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
> Fixes: 41ccedf5ca8f ("ice: implement lag netdev event handler")
> Fixes: 3579aa86fb40 ("ice: update reset path for SRIOV LAG support")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
