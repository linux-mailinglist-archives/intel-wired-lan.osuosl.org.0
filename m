Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 996BD984EBE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 01:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20F2F42565;
	Tue, 24 Sep 2024 23:14:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ZG4EPByQDcf; Tue, 24 Sep 2024 23:14:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E14284254D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727219696;
	bh=hapjI+RkTJDOIlMQNbj5SILOy/PaGgzsHy4Q7m7I3RE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hI2Y9LFNUgU7AAqCyTZwMIz+EVCAUnvROCc83xo9ZFBMcVm4wtr7whI8mkIyHl7pC
	 3pZh6/m3ZXM0fi6vIQ88Xt5RYj7e4ZfAIT84NkqaianQ97zTDuIwxm2LDvcSH7sDaE
	 O0BMiHD62rAIxGABOpszqf/gvW2LY6JA11DU44sXYqDM5Z/P5j31O/3ZUOxHydUKHa
	 0+BpcMaCYtPcAfzIfrrWq/3QQHpwT0I03XE1rR0K+gLeFJ8joJxHWfkqi1D4U62Ll6
	 67I646EesF+f+N81ZCxNPJjJcayQmLDeR5WtTwR9seno5k9iWfDbwugzUK9oteoDIw
	 vcWArOk4CPVXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E14284254D;
	Tue, 24 Sep 2024 23:14:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 063EB1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 23:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7A0F60E06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 23:14:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Otgp6tszyGro for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 23:14:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B600B607BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B600B607BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B600B607BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 23:14:52 +0000 (UTC)
X-CSE-ConnectionGUID: 5kN07RBbQdi+4RboHyjJVQ==
X-CSE-MsgGUID: 7LplVg1eRN+kE8b/HVM2Yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26113458"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26113458"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 16:14:50 -0700
X-CSE-ConnectionGUID: piAH4PovS8u3bSN1K3DjEA==
X-CSE-MsgGUID: RbM1UGfqRPeaWjaE0OPhWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="75686053"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 16:14:49 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 16:14:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 16:14:48 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 16:14:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Txm/nITpuaJqz0WhTG5Lc6m6Fl4VetBOBn+4ppirVvheApCjGUY/ZWglXY3gOVfY6X+PhLZWt0UJwW4yiUUEDoOGY8k0eRIrK7A1gFWnignW7/paN3lT0/2xWHSKH2gkno+LvqxcmCMdm0zuOJhHa1TxjT9zrlXCCauA//ZbZVYysquYIbdtssCujo8IdHbNxHZakAT1sD3/Hyn5vK7VeMsdxSBRyH/0DN5WABVR0qZk08DJu73GeXQ0W3kLFDXvHJBJ0nxLE0RUBL+mrXsfmgFKOFgiSgf7SJ3KY6mZvB7RPknc619Fd2kQ35pnKNOyiBl8XUY1XffNpk5DPF8SGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hapjI+RkTJDOIlMQNbj5SILOy/PaGgzsHy4Q7m7I3RE=;
 b=yPvCKv6rwC9Mm/fz4knR25xxJrPnJladr304JDJX/XOOL4jviU4p+yzXceUCdRLDUgkQjLe2Y+sCW/fxFrZSPxnSU5nW2eu0EZKR6Pusf2bBm0Q/QadKhTYwZ3G5TwR5mOU7ZOBg9kCdCAWSr5YlaXKdKUI/9zfxuMPCLQ8FTwsvkCrvsY8Wl4TU4yy5cjUplWSFYalkpVo3vgAcj8FTKs046AkqI+rTKg3BawEn2u2LL/N6mkc1/i8D5j2nSrFCQiyOl5rOBl0w1Dagc5TGie4mzzOeX2aa3jhqipSuuyV261iTYNAG2KKtbyWIfmz8wf8qY0mU7Bf2ciB59cKvPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA1PR11MB8373.namprd11.prod.outlook.com (2603:10b6:806:38d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 23:14:45 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 23:14:45 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan][PATCH iwl-net] idpf: use actual mbx receive
 payload length
Thread-Index: AQHa/jEp8o+enl/h70yZYqF5/3fzAbJnsifg
Date: Tue, 24 Sep 2024 23:14:45 +0000
Message-ID: <MW4PR11MB5911B25C951EDEEE19A4BA61BA682@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240903184956.1572344-1-joshua.a.hay@intel.com>
In-Reply-To: <20240903184956.1572344-1-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA1PR11MB8373:EE_
x-ms-office365-filtering-correlation-id: b353277b-43a5-4b4d-ce33-08dcdceeadb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?SNlD2GcIganRVxyCJG94796gnZuGwxS1sRgpeD1ToCiga5SVQHcjI2HYiKSK?=
 =?us-ascii?Q?q/5sysY3leZdPEvRUukYxdfi2k28Pc3SFsYHhPTeD/gIzrZChfx2/hMQ8QCq?=
 =?us-ascii?Q?t0VTLRzgYVJkTWG8BDlf1fkpZ9tEYJygxZc6HE1MFUwIp63vCGWRcydpUkfy?=
 =?us-ascii?Q?StW6EMyUwsqnatXGCAj3xHRp5HzzQDbBroNPY1pzisUe0Co8T+9EBwnBLs0z?=
 =?us-ascii?Q?Wl5RXtPxUdVHFuMvyneJRdl44ZESXCbsoHNOeb6wTm53cCHOYIRqrFhe5kmZ?=
 =?us-ascii?Q?Z9udogyredaVm2rhVw5e2FmIiZ/VnR+cp4FPByG0+S6vA0txBoX37yAQQxfP?=
 =?us-ascii?Q?TWCKTgpLDbTDYysFDvf4fQTCI0F93O7Z/nbgNyqBVeL+8rCMlq7LqxEAqCx2?=
 =?us-ascii?Q?WPBIg8ZGCd0z4utwiWtrDpE97viko+7xnmaU+QiL7nDkkEbTawYyod1qEqao?=
 =?us-ascii?Q?yQNCxP+PZcRdBbvC9bHQlvSPOZSbJEu5dvjyfHjj+UZEvswNZ0EJ0Q6Ow0lJ?=
 =?us-ascii?Q?Rs3FIEkeWf9WdK9UJg6CyucfXXhEsK794KVbEX+cBcte7DEpBQ1G5vfrHG3i?=
 =?us-ascii?Q?tTRwa4yS7iEVNNjR2SNjxekI+WwV9pqp3PV/90E4HwtQdVHX8Mc+LxT4jPq9?=
 =?us-ascii?Q?1mYAnMflAhHzk4PkDp0xdksIlB1msjotiAOYvI55U4hu9lqWS1MlgXD4ZCK9?=
 =?us-ascii?Q?r82b8Zu+gcYlFXeEj+DSaY/UTqVziIgcpum6bLuBFjYmQZYCZGPVQA8/iRkH?=
 =?us-ascii?Q?TtQx7LhwH8y++5jrk+u2szwPBweh1vRVIK7g0uoBNlWwqvGcFS18+cUlvAIW?=
 =?us-ascii?Q?2b/QECm3rgDlj0d33XVevGlFp1F73oe1h3nLbKmcRaFt6Xzl2MFOgATGu6jY?=
 =?us-ascii?Q?hEB+zKYF6wLsDIimuk+samFajpCJJm0i4yeTC7L0bHtNeV2vLbByisrVbXWA?=
 =?us-ascii?Q?nKtryxceqDA/Onn0Amy1XkrDQLWj1jUQEhRiU8SaPnihpB4sMX3t0zDao1TZ?=
 =?us-ascii?Q?257KH20kqGbsfMEYijjllH3bUaGxsImk3b5BcwE/nnUp9vM/GrnkkwTE/7cP?=
 =?us-ascii?Q?5rXKUjA7ZsWqmGRYscp49DVBddPWTn7Weu0VQhovqhxir6SDCi/vNo57RbjR?=
 =?us-ascii?Q?mpa/2Qc/cQPGeqePD1xqbBiV/45bsRoybLexPaH8x8ohBnJkLbAOHg8/YiZf?=
 =?us-ascii?Q?g53FgjSLnNmA45RHlYKHJLn+bfBhqV4wx+C3WM2Vpg3mvHdC8UKUHfNmdajJ?=
 =?us-ascii?Q?FoZ3/7UjgOiLirrTUq58FI3HrUvvtkN4V/2Op1r3KfKrMs7QnZ3RZFy91yLU?=
 =?us-ascii?Q?evvpKOu9dOal2tC/ZQgriorgVUWDRYOxAzVmlVV2O9sY0gafKa9kQuFJFCHN?=
 =?us-ascii?Q?rsocbgid0nm0KugaD9JznjyTCuB3n4iv+Z0C/Gkv/4soCsoJLw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tbrM69Yfv7GiV0bNiMJFebKbvgJPAMxh0YeeQ0btcSOh9obN9JoYq6QCU+7S?=
 =?us-ascii?Q?MguaZT4k5OVxkIbAgK8v8bD3UKVXZhaOaiXxQC2HTOHBJCQ1PlaIzLXgCfsE?=
 =?us-ascii?Q?UQMMZSmZL3HI5kFR75ktYZOwx3kwth6PSa7CRPA/Hv/g6nC3ZLSCrazcfCKo?=
 =?us-ascii?Q?yhyLJTSdoP9MnfGERnKDtTCR1jHjjHCPaA3dBy70howw0MKnHVFRHYygTvJD?=
 =?us-ascii?Q?JU3RZearoGIrEV3/4itar4gWvCkgifGYt203nxyNDMDGwAT40WmPwR122PGf?=
 =?us-ascii?Q?IIxwe2bNHqD5VMf70neBr+hBoqWOOhKHuEvdArqV9DNln2JkA4TDVapzIeAM?=
 =?us-ascii?Q?pGQAwhWg5PT7h86o6kj4ELvkbp0QT1AJ3QI6buDmwlo9/DpD4POd7eZdrlbG?=
 =?us-ascii?Q?B3BNzNRCSPfiALfyHmLSINfjJHlZTLdTO8zOP+gBSIJ2UQf9R/apAHxF0iBK?=
 =?us-ascii?Q?GL2FGKCSmkyaWGyBktR4GNzKp3SDxHU3PE5s4nx5kFIVUk7XUXmwnoGJ//3b?=
 =?us-ascii?Q?Hos2qogpuU+iwS+kWtPVb+RDqO8u/1ye8uESqVnQs78qLox/p019HF5ILA7i?=
 =?us-ascii?Q?oxJ+YbH7MCte8TesFwivJYkJyh+q3qtbdXI0b8WC2/GUpn1HtcYUxbIOjbBy?=
 =?us-ascii?Q?5TGe9LdfHw3hjTZPaWaZsup1kBNzBAjQH549Mp1w+k2lokxRXEgQNPQyWq4w?=
 =?us-ascii?Q?ozssY1nvvQ4Cejm0IiCZ/Zi+qQkixDCHIO5/0aYrxesJU7sFN2QFNiT+2z90?=
 =?us-ascii?Q?CgpmmtUNj+hs4P3DbSh9AF71henmWmZT1zZVsTbIJFhzmFeAqO9kxJ2U2Xfb?=
 =?us-ascii?Q?mzpA8lZxx02Jy2chWGG85wx7rQnHdJlqcH5WUUQWIo9MVoHOITafMziRBvmi?=
 =?us-ascii?Q?QdKflEpimi4+OgiA+x5rqy+VWWVsSK9hbplHHbrKIlLBIY69YnnQbz+MVwdM?=
 =?us-ascii?Q?tsZQJubHjhkNYmBchOB6bNpgT1rcocSggPEZYa4aaSzygehfLG5VfNhmCcBU?=
 =?us-ascii?Q?SzByTn1/K1Ws0RwBf8oxI6pUHbHGJrve7LrKV2bLFesm4bhh5H3F/Avj3n5v?=
 =?us-ascii?Q?B3vLseXECgi7IBIFnj3ITr7wul2XKkXYk6vwUZ9DS2X2fGtTSeujT0C4tHyX?=
 =?us-ascii?Q?idSH7wq/0MdNjyJLLQZhVywAv9gtrFb3rXRscpipiQdORvZVA6EKhUZt5dhj?=
 =?us-ascii?Q?/UwihUfMopsHcLZ+f0s5J9UDzqry7NuiFofg5h4BbRL/+6NsjiwASpP/5Fpp?=
 =?us-ascii?Q?3Ac7P4nYGSb0V6dv1ddpZHLf54RbXeF7oJJY9UWcPxXwT19wNCLxyKTaeDQL?=
 =?us-ascii?Q?5CTQfzejSNq1qqfiYaHs9z0i8OXlisYsRI7ijYNx/tmO1n6VNAZDpkEbenKx?=
 =?us-ascii?Q?AXxK4O+Qtmcu7C9ENF6uVOzndlbB7qUH/r9X9BKHjmwxagBR/QjqwKucnK6K?=
 =?us-ascii?Q?OptRjWFCGlnIXDqbNOzdkxBGDnVPb1GTAP/DQu0TIHOh0pblSm+TuaSaHHro?=
 =?us-ascii?Q?rnT90+CwXqrTbXRERo16errzd3tA2qB1bpCPrjQGOIOGbk4jnr2uoPEG0FZQ?=
 =?us-ascii?Q?LZB6B6yQKq+N2aCahK/9SzZBSPM5CYq9u4737GrJkcSPUs2rLur8eyDRU5IO?=
 =?us-ascii?Q?bQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b353277b-43a5-4b4d-ce33-08dcdceeadb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 23:14:45.4637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsrUA1alHz+gVCkR0z4pyNJ9eFzY7tpnjQw4bsQQe1TIl3k9b6zqqQi96QykOQlaYAHfLw9CDtqmuYPEZyIe6fgD2SAVtwwaNwamwUjD/q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8373
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727219693; x=1758755693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=76ybMmGNJb9SplGvJcPuC7tBW80G0VQ247hDNgsbyX0=;
 b=KvoX61DW0cv/1dbgzBx7oFpFDW2W5GcSPiH3d53sSzsIiUdSVlnzXt9q
 NpMRmwxng3rK6Pu+bxEN9ClRT1RbQHOI1Wtr0n+KH2BgQI4Sl5rKuRtJe
 v9jKPnBRIdAcBaIAondm3WUe0TpbfDlxPiXvgocDijqyOpHH/VMmu1kta
 Leq0q8jHAQiWlxv1YMIOS6Q4QmtQwq9wKThB23hmqpS/LG+C22caOm5SD
 jjml3dObGzB9UG8jzS/bh2cjMUk5gujkkLhjXDREMKuNhg8MAY+Q1upjB
 jmSre8KR3zDGzpfJpFqS0ZKpaRRVtzuj8KBXwnCxE0E3DB9e97fv9erRr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KvoX61DW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: use actual mbx receive
 payload length
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Olech,
 Milena" <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Joshua Hay <joshua.a.hay@intel.com>
> Sent: Tuesday, September 3, 2024 11:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Olech, Milena <milena.olech@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; netdev@vger.kernel.org; Hay, Joshua A
> <joshua.a.hay@intel.com>; stable@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan][PATCH iwl-net] idpf: use actual mbx receive pa=
yload
> length
>=20
> When a mailbox message is received, the driver is checking for a non 0
> datalen in the controlq descriptor. If it is valid, the payload is
> attached to the ctlq message to give to the upper layer.  However, the
> payload response size given to the upper layer was taken from the buffer
> metadata which is _always_ the max buffer size. This meant the API was
> returning 4K as the payload size for all messages.  This went unnoticed
> since the virtchnl exchange response logic was checking for a response
> size less than 0 (error), not less than exact size, or not greater than
> or equal to the max mailbox buffer size (4K). All of these checks will
> pass in the success case since the size provided is always 4K. However,
> this breaks anyone that wants to validate the exact response size.
>=20
> Fetch the actual payload length from the value provided in the
> descriptor data_len field (instead of the buffer metadata).
>=20
> Unfortunately, this means we lose some extra error parsing for variable
> sized virtchnl responses such as create vport and get ptypes.  However,
> the original checks weren't really helping anyways since the size was
> _always_ 4K.
>=20
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Cc: stable@vger.kernel.org # 6.9+
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 70986e12da28..3c0f97650d72 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
