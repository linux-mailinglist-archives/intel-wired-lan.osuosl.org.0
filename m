Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A91C9D1110
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 13:57:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A70E85071;
	Mon, 18 Nov 2024 12:57:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVhb6VvH1Qm5; Mon, 18 Nov 2024 12:57:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E51358506F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731934637;
	bh=Nmp+e48mPcsi0SKI1TxdpQ7sX8fzVfTSLXEjWtZpoWM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4erp6ApshQvDtU6Xgd/erOeE3Skkzg6jd2347Xz0eQKFjnlg1QZ+Ps5VelxUy6WYL
	 KwAFdycptWPZP1l/ov5cI9AIbRi4B0jRz/H+rxpVvXiXMLvAagnpmBeV5D8ov+a2L2
	 liVUWRcUs/ykM+9MvuoDtOljigS/GX3QweAWbkMIu797EtDI4YBx6NxaOel9UouMmN
	 wLh2dTj5EGqEojhOCPe7yZrsK983XpK31upJZp3UwCbYN0tJkeVdVAj9sHvxB2KBG9
	 hRACvzlmeAcdz4N8nTEsYVpgTy09tdo1eYQlrYURnLh2uV+nivGcRVPE9qyP9HivC6
	 LJuz4r0wjTsUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E51358506F;
	Mon, 18 Nov 2024 12:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E5002DB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 12:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C344540B00
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 12:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5UVpXU7l6IGx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 12:57:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 39AAB40AFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39AAB40AFC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39AAB40AFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 12:57:08 +0000 (UTC)
X-CSE-ConnectionGUID: IKObP+FBSYywnnl6Xsx+bA==
X-CSE-MsgGUID: 7T9JGak1Szm/ELDcH68Qzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="31294627"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31294627"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 04:57:08 -0800
X-CSE-ConnectionGUID: HDaofOfvTCioJySAx7HfFA==
X-CSE-MsgGUID: CubpDApkQcusDfuzpMzIpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="89354573"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 04:57:08 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 04:57:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 04:57:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 04:57:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rrbnrndNZox/+bX3Xwg/Iq/SsDPjpvfpENcm+VR2cy9p/Dx5diwn5Z1SVRvDB+IftuYvm2iLR14Z2h0wHOMgKZWTtculf+ziTdAHWts+Z/eT6S8hMaiVctsdLi7KiNW4AfwORAyE6B7TwoXJXrCLLBJ/drN8+9KHBIMTyY0stCC/O1K2z1KAVQ788WMHKSpbIyrii59r3+JXKKObZYoZUpk8I3LYYgYsQPrXIYgo3l0guY7EFedm/sqvUZgKgUla8a5uy3St5GvWDQm+ZA3+9Vg1Cb7tWvBux+43vnIIvJIMQd6Gq87QS1lmnVfz3t4d5Zcs45eYd1qPa3B2U65TbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nmp+e48mPcsi0SKI1TxdpQ7sX8fzVfTSLXEjWtZpoWM=;
 b=Sjlq39DKH39Hr3+3zqLfcmyVom9hbXOmVyicpsGELaUeyS6QN6qKLfPfKThLoFKRU070L+fEMnuNdzG+p1D+LgUa0q7V00I/N0t+ZqdOl1Or5Z1Mtxnpqycyf9WTVjfa0JmVLRsi3G5TyOvx5Yzx/+vUdrh5Z5CO7ln/I7VfTIY5UHhU5hGs+ynQNl3uLzWq/g7qExYeaJ+Y+t9Vp8rK/W6DUjNPwvAb9IRckxW3GKyVsqfwgskrrPqtkRIO5h1U0tDdgzHsqPheUXqf6e8FdPxHBfRFPOPS7IUI2OzawoDxL+KMSVqoNlUdWfj+7boPPrGEDUTW62eqwTJ+nKN6Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5885.namprd11.prod.outlook.com (2603:10b6:510:134::22)
 by SN7PR11MB6678.namprd11.prod.outlook.com (2603:10b6:806:26a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.21; Mon, 18 Nov
 2024 12:57:05 +0000
Received: from PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e]) by PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e%6]) with mapi id 15.20.8158.019; Mon, 18 Nov 2024
 12:57:04 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 02/10] virtchnl: add PTP
 virtchnl definitions
Thread-Index: AQHbNeOFnDPzlQJhnEGU3GvXaXfWYrK3CZEAgAX8LBA=
Date: Mon, 18 Nov 2024 12:57:04 +0000
Message-ID: <PH7PR11MB58855E8700EB1C1A64CA83EF8E272@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-3-milena.olech@intel.com>
 <67363354c7ade_3244ed2943f@willemb.c.googlers.com.notmuch>
In-Reply-To: <67363354c7ade_3244ed2943f@willemb.c.googlers.com.notmuch>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5885:EE_|SN7PR11MB6678:EE_
x-ms-office365-filtering-correlation-id: 28085c27-35c4-4a10-30d7-08dd07d0808e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RERLTnRidEF1QXBOb0tHcEVIL2VNRUk5WjBmSWZhMytReit2RDBmV1lRRGNW?=
 =?utf-8?B?c2hIMTU0SWxnOWtQZFM3dVd4Nno1VThiMzBGVFRjTlM1cTBzckZab1ovbEgz?=
 =?utf-8?B?aWo2Mmw0THNuOU5ab1hmM09LTzc0Y2xoQVgzTDhJeENZTld1T0FsdHlDMXZy?=
 =?utf-8?B?eHo0NHFSTFBMdGRPUTM1S0pHMUwwUzBlczhWcjZXZTFyeFZOeDNVNHJNL25q?=
 =?utf-8?B?ZTNDMHFaQmJ3MUJoZlpIUlZIcEJaOFk2MWxFcG4vQTRScUVlUW1mTFV3MHlJ?=
 =?utf-8?B?bWNxVHgrK3lwNElyRDFvWWVjZnhBQlFyMk83cDlSMG9ucTYrV3AvZU1ZL0Qv?=
 =?utf-8?B?Qm9GOUZQWnU0dFltMmhBUmdJWlNQdXQ4YVkxVDFCbmxBM0w4L21DRnBVbEZs?=
 =?utf-8?B?MTZDSzVUaFUydHR3eHl6dzZYUTBrYWxaWU8zaWJKUWVkMG9hUDloUDUrWXpa?=
 =?utf-8?B?dEpEcTk1MUpyOVU5ZGVTVUM1N2MrdnJid2xqbTdFc1dhZjZkdVptV2lpZjlK?=
 =?utf-8?B?TWFib05BUU1hc1E1V0luMGFlWHEyd2ZSRlVQNW1zZHpnWE1Pazg0Y2F0aVdF?=
 =?utf-8?B?MUFxV1hIbU5XeGFjWUpGaEJ2NE9IenBkZWkrWkpNMnlaWHN4Z3AvSHFXZHNE?=
 =?utf-8?B?RjFxclRlVWgzMmZDUmlqYVNETDM2ejFCZ0tFVVcrWVlHTmNPNDhFSG85ODdW?=
 =?utf-8?B?UCtYRGRWS1IrTkRwUkQ5QUl0WG56dlpSV3QrOTdCdWx2Z1JUTGNrVm5CSnUy?=
 =?utf-8?B?WGFuQWJIeHQ0R3RBRG9GSEE1cHFpUTRzZ0JhOUpHNHo1RFl2RDZVNHdzY3Jj?=
 =?utf-8?B?UW1UTVhSaFRvUFJMMldoVk1BRTVyYW1GTkh4YmVEbXJYbXNTamdkTk55eStY?=
 =?utf-8?B?MXd0U0lOOGN0VkJMdllnOFozZzh2VXFoZUt0dHlKRzV4M0V4Yjdka1Y3ZG55?=
 =?utf-8?B?eXBHSWtZZmQzSkJRWEdiMWdmZGRuZ1ZHYjhFT3hiWlZNZDhsMmhwSEdjQVVQ?=
 =?utf-8?B?ZnRPTmFpZERQZVoxcXptamJibUNEQnNOMEI0Q3JkRk15NGxCQ0RmamdxMWJR?=
 =?utf-8?B?ZDJOR1hNRVFhYjJFZkRoQXd3aVBiZVJwckJRSUs5Smg1WVRRSU91SVFabDZj?=
 =?utf-8?B?OUlFWDNpcVNEQ0tQUDhCajRlbVhMc2R3aFl6NGZ4YUc3YktPa0JvZ3lWU3Bt?=
 =?utf-8?B?WWRHUVlGbUFQUUZOR0Z4NUxUemE0aW5STWJWMnZrN1grN2FCRnFGVzJiUmU4?=
 =?utf-8?B?ZTd5WHVZT3JETURQNnE3L2ozaVlzUEZvbUs3SVBzd2gvUUhVcDlwZEkzK3JW?=
 =?utf-8?B?eUFsc2g5V0JsM3lEaDczR0lpNjE3NUsrb2N0ek0yZnpYRFdvT01DVHdveHJB?=
 =?utf-8?B?WHRTYkc3RTliSlBpeGRPcWRTUUJRTTFOa3BCL0ZjOVk4KzRuWUR4dW5mam1P?=
 =?utf-8?B?cUwxMEtja2M3ZWp1ZnIwdHR5c0FKOWt0amFQSm16TDhEWjlaSndKdXgwVm03?=
 =?utf-8?B?c25CL2JMNzhlMHFWZDNWWCtFZlZtKzJMYk5jZ3dQU2tDdFhLaDNoL0hadjZD?=
 =?utf-8?B?enVHLzdkMExkVmFCN3gxZlFIUkpFaFZQUXU1bVBWWm4rMm1EalU1ejFDdmFP?=
 =?utf-8?B?YU1ydE92RnJIbGJ3QlBoS1d2aDZKU3hOZXc5bm5PMXZzNGh1RnpMZGF6cEIr?=
 =?utf-8?B?OG5IZk5jNHg0eE1rbnhLbkJqSlZnQU9HRlR0QUNxN3hNbEw2SlRaSy96OFZ1?=
 =?utf-8?B?eU5NZGR3MWVENTBBZHF0NGxrc0FLekQySldBeTVLbGVXcjBTbTkwcTNxR3Z2?=
 =?utf-8?Q?eT7tU2cGYioTliQ1xYqKlfKyKpVILnTU4arvQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5885.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dk02RXlTbkNyVkFIeFVNUS9nYkVRZFFKUTFVenBWYmJCS2llK0xIMzd5akp4?=
 =?utf-8?B?WkRBTGg0QjhmaXJ6S1JaREtDWkFsOUpac0UxWEIwV3czbmlVUERleldvLzZt?=
 =?utf-8?B?cll2VnNJV1c1Uy9GcGV0Q1hMaUhkVS91NUhvTmxsQWltSUhZMzR3ZzhCYjhW?=
 =?utf-8?B?V2VLSHJKV2Q3TlNzcDFMQlpwdS85VVVMdkZVa0ZHS1lvdXk1aXdmb255KzBy?=
 =?utf-8?B?cUxmMytXRVd2Ym9iWGhESlVJUVVOUVdrZEtzT1VVNElmbmxQZlRKbDFlRTZ0?=
 =?utf-8?B?R0N4WFk4cW1YWSs5M09oOGxjZ1loWlZFQis3ek1JUk1Yc2pZaWpGNzZnRTRi?=
 =?utf-8?B?bUcwSlphZ1VEMnFjNWk0K1h6OGtERlp4ejNsaEJGNTlySjFqUnoyK0MyUXVh?=
 =?utf-8?B?bExNWkZkNnV4dUk3Q2JkWGx2WG9pdHlsaGNhWVJyNitqZWhnZUxsS25lTlRt?=
 =?utf-8?B?ZmhISG5uQXhVRStGNUswR05aaW95enVxb2t0WWcwUDV0T3NYQmZ2UG9iQTVI?=
 =?utf-8?B?UU9WdHppbWNPNTFMeStOVUluZVRuNWE5MldmOGZuaC9JVFJkc3BBeURzVXhx?=
 =?utf-8?B?Y05SSWJLSU9pRHRNQmhmZWNzdUF0KzdrWjFZUmFITmsvUythYjg3Tk8yVzRI?=
 =?utf-8?B?QTREc29rY1piSXQxZmF4SXp3T25hZUlKRlZHMUI2cU9PZEJCMWlKUnhSa0Fk?=
 =?utf-8?B?VmdVQ1BqcHpERWlKWGlEcHNGYUVkK2ZhaHFsRVB4VTZ6V2NmL3JHSGJwVVJw?=
 =?utf-8?B?bDRLcCtDZFBNcFhycDd2OXZzN2RNZXhjT1RpR0FFZmdENGFJTlJ4MVR2R3lC?=
 =?utf-8?B?Q3RuTnhFSUZhczhIQlBTRXA5VjNZR212dlZBQ1Bqc2VWcUUxVk84d29ZVDg4?=
 =?utf-8?B?YTZzWlVpOEdiUGtRVkhVUmluUVl4TndTcnpaRTdVclRFYmNnUEVLMmFEeVls?=
 =?utf-8?B?TkVLemJETmtLTVRIb1RwTTU5UEQwNWxnaG12ZW1jVnFkYlVBSzBpTExOSnV2?=
 =?utf-8?B?WEF1Q1ZtZlZ5Yy9Xb0xrU0R3SXZ6WXptcEJydDdQNldVVzZiYm5FTTA3dFgr?=
 =?utf-8?B?VDIwNGczcDRHQkhERmJEM0JrMlpTMjZSVFNtRU9JUlBnc0k1ZjMxbWtXZFhJ?=
 =?utf-8?B?N1lMcGROV1hmYTBKRTMwcXUwK0h5Z1RzcWFhcVpER0JLUXBYWDZsc0F3WGts?=
 =?utf-8?B?OS9WQjBVbW9HWXBOWENyTkdxUDFhZjU2QUYzVmVTWG95TEYvZkZJelFzdVZB?=
 =?utf-8?B?ZStWSEpJeE5IRExsbGlBYWhtY3l2c1FSelk5bW92NVpCYlE2VGYvY3Q5K3BN?=
 =?utf-8?B?WURUSHhIVU5TSERVTUpCNzdqc2ZjWkVlc1dVamJmZE5EYUUzZkMrTEdWZzJN?=
 =?utf-8?B?RUZueFNzN2U4cTNYb1I5UUc4bE1lM29VYXJHcC9BVzBLQzZVRFV4SEFJZmpj?=
 =?utf-8?B?TUdtbytJT09uWVZVdmYvZ2VNemE1L3hON2NURGJ6TUIrOXE2dzBwcUJydU9t?=
 =?utf-8?B?bHJ6WUVaTmY2YVhWY2J5Ny9QWVpFK2F1eTNkZjBOcUV2RFdFWFl3L3RsMnF5?=
 =?utf-8?B?bjRKSWhscVo2WlNvVk9vd1lRL2RwVHhIUEM1cC9wQzA0Qkp2bit3WU1LVDhu?=
 =?utf-8?B?QWY3aHQwR2FvMjJMRkJYVUhQdEN3MFlrQXJxRGxTdHh3UDYzSFpWa1VYS2NU?=
 =?utf-8?B?K0c1OXc5dmdMMktTdXBaeXdHdnZJZVNJUE5LM0YwUlQxRDNvOVR3N2hkdm8v?=
 =?utf-8?B?RjBBci9rbGhBaFo5c3YrY1o3Z0J0SVU3bUFSbk9PTTJDME1hd283MjFVR0to?=
 =?utf-8?B?empwczc4akhvc1hXL3dnck5hQ0dXQytqM3U0Y1RpSzkzeTdIallDWHJpbkZ6?=
 =?utf-8?B?QjdaanMvTnk1SWpPSjczK2dTc3QraGQxZndMdGc1NXd1YnAxcytUZjhpc0Nq?=
 =?utf-8?B?YkRlL1R1Rk84cEl3Yy9PMGlmcXZtS0hiUXUvMG5XTTFqaEJVQnROdXdNK1ds?=
 =?utf-8?B?WWp1NzREUzVqRlRRNEhPY1hKYk1oZTRBODh0TmZ6THdjL1VIaVFURWlOaDI3?=
 =?utf-8?B?VG5YQXRLZ1o3bERnTnlzQTUzZHU0MFJHWkhtb0RxOXc3THBPYnlYT2ZFMWVC?=
 =?utf-8?Q?hhQFnvmo4VMKsQD2EzIFG2MFv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5885.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28085c27-35c4-4a10-30d7-08dd07d0808e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 12:57:04.7543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pE1pJ71CZEiyDaeVmhW6ogvVJ0mseX8su20c35laVZ7V5FeHHbl07HbvmQqv4/89rnizxyW4uqQUAw6GPdMdWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731934629; x=1763470629;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nmp+e48mPcsi0SKI1TxdpQ7sX8fzVfTSLXEjWtZpoWM=;
 b=CouLKxwK24h+XLGr8kB0DSrn+8NJzfI/RBNMBlKGz+zz+YhhwKAsb/Oc
 1i/ZB1KiJv6in7mBJ0ECuiRhPSSZY2DkfP17d9zBIeKkQFgNbze1TLnYg
 cA2q/ZbtjfX0eIOtS3HShJXIDrY8h6Ffhtj8zq6q6v04wj8oeSdUJhNdc
 Q1/TPIe6QNBgt8bvxfzVLon1q9YpsyDkVoqR8dve1RYZSgg3m1z1dQe1w
 v6hKhh8xlQhwr5BlRcU9mItfXV9F/N5FVQ4jJgWSv8lTZKIC1lU+sg0Te
 ajZ+y3GqVz2eFSMIa/8ftW1MczYLMq3BmS3wmNWK9td731Ve2LTzKedGO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CouLKxwK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 02/10] virtchnl: add PTP
 virtchnl definitions
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

T24gMTEvMTQvMjAyNCA2OjI5IFBNLCBXaWxsZW0gZGUgQnJ1aWpuIHdyb3RlOg0KDQo+IE1pbGVu
YSBPbGVjaCB3cm90ZToNCj4gPiBQVFAgY2FwYWJpbGl0aWVzIGFyZSBuZWdvdGlhdGVkIHVzaW5n
IHZpcnRjaG5sIGNvbW1hbmRzLiBUaGVyZSBhcmUgdHdvDQo+ID4gYXZhaWxhYmxlIG1vZGVzIG9m
IHRoZSBQVFAgc3VwcG9ydDogZGlyZWN0IGFuZCBtYWlsYm94LiBXaGVuIHRoZSBkaXJlY3QNCj4g
PiBhY2Nlc3MgdG8gUFRQIHJlc291cmNlcyBpcyBuZWdvdGlhdGVkLCB2aXJ0Y2hubCBtZXNzYWdl
cyByZXR1cm5zIGEgc2V0DQo+ID4gb2YgcmVnaXN0ZXJzIHRoYXQgYWxsb3cgcmVhZC93cml0ZSBk
aXJlY3RseS4gV2hlbiB0aGUgbWFpbGJveCBhY2Nlc3MgdG8NCj4gPiBQVFAgcmVzb3VyY2VzIGlz
IG5lZ290aWF0ZWQsIHZpcnRjaG5sIG1lc3NhZ2VzIGFyZSB1c2VkIHRvIGFjY2Vzcw0KPiA+IFBU
UCBjbG9jayBhbmQgdG8gcmVhZCB0aGUgdGltZXN0YW1wIHZhbHVlcy4NCj4gPg0KPiA+IFZpcnRj
aG5sIEFQSSBjb3ZlcnMgYm90aCBtb2RlcyBhbmQgZXhwb3NlcyBhIHNldCBvZiBQVFAgY2FwYWJp
bGl0aWVzLg0KPiA+DQo+ID4gVXNpbmcgdmlydGNobmwgQVBJLCB0aGUgZHJpdmVyIHJlY29nbml6
ZXMgYWxzbyBIVyBhYmlsaXRpZXMgLSBtYXhpbXVtDQo+ID4gYWRqdXN0bWVudCBvZiB0aGUgY2xv
Y2sgYW5kIHRoZSBiYXNpYyBpbmNyZW1lbnQgdmFsdWUuDQo+ID4NCj4gPiBBZGRpdGlvbmFsbHks
IEFQSSBhbGxvd3MgdG8gY29uZmlndXJlIHRoZSBzZWNvbmRhcnkgbWFpbGJveCwgZGVkaWNhdGVk
DQo+ID4gZXhjbHVzaXZlbHkgZm9yIFBUUCBwdXJwb3Nlcy4NCj4gPg0KPiA+IFJldmlld2VkLWJ5
OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+DQo+
IG1pbm9yIGlzc3VlLCB3aXRoIHRoYXQgYWRkcmVzc2VkDQo+DQo+IFJldmlld2VkLWJ5OiBXaWxs
ZW0gZGUgQnJ1aWpuIDx3aWxsZW1iQGdvb2dsZS5jb20+DQo+DQo+DQo+ID4gKy8qKg0KPiA+ICsg
KiBzdHJ1Y3QgdmlydGNobmwyX3B0cF9zZXRfZGV2X2Nsa190aW1lOiBBc3NvY2lhdGVkIHdpdGgg
bWVzc2FnZQ0KPiA+ICsgKgkJCQkJICBWSVJUQ0hOTDJfT1BfUFRQX1NFVF9ERVZfQ0xLX1RJTUUu
DQo+ID4gKyAqIEBkZXZfdGltZV9uczogRGV2aWNlIHRpbWUgdmFsdWUgZXhwcmVzc2VkIGluIG5h
bm9zZWNvbmRzIHRvIHNldA0KPiA+ICsgKg0KPiA+ICsgKiBQRi9WRiBzZW5kcyB0aGlzIG1lc3Nh
Z2UgdG8gc2V0IHRoZSB0aW1lIG9mIHRoZSBtYWluIHRpbWVyLg0KPiA+ICsgKi8NCj4gPiArc3Ry
dWN0IHZpcnRjaG5sMl9wdHBfc2V0X2Rldl9jbGtfdGltZSB7DQo+ID4gKwlfX2xlNjQgZGV2X3Rp
bWVfbnM7DQo+ID4gK307DQo+ID4gK1ZJUlRDSE5MMl9DSEVDS19TVFJVQ1RfTEVOKDgsIHZpcnRj
aG5sMl9wdHBfc2V0X2Rldl9jbGtfdGltZSk7DQo+ID4gKw0KPiA+ICsvKioNCj4gPiArICogc3Ry
dWN0IHZpcnRjaG5sMl9wdHBfc2V0X2Rldl9jbGtfdGltZTogQXNzb2NpYXRlZCB3aXRoIG1lc3Nh
Z2UNCj4gPiArICoJCQkJCSAgVklSVENITkwyX09QX1BUUF9BREpfREVWX0NMS19GSU5FLg0KPg0K
PiBtaW5vcjogdmlydGNobmwyX3B0cF9hZGpfZGV2X2Nsa19maW5lDQoNCkNvcnJlY3QsIEknbGwg
Zml4IGl0IGluIHYyDQoNCj4NCj4gPiArICogQGluY3ZhbDogU291cmNlIHRpbWVyIGluY3JlbWVu
dCB2YWx1ZSBwZXIgY2xvY2sgY3ljbGUNCj4gPiArICoNCj4gPiArICogUEYvVkYgc2VuZHMgdGhp
cyBtZXNzYWdlIHRvIGFkanVzdCB0aGUgZnJlcXVlbmN5IG9mIHRoZSBtYWluIHRpbWVyIGJ5IHRo
ZQ0KPiA+ICsgKiBpbmRpY2F0ZWQgc2NhbGVkIHBwbS4NCj4gPiArICovDQo+ID4gK3N0cnVjdCB2
aXJ0Y2hubDJfcHRwX2Fkal9kZXZfY2xrX2ZpbmUgew0KPiA+ICsJX19sZTY0IGluY3ZhbDsNCj4g
PiArfTsNCj4gPiArVklSVENITkwyX0NIRUNLX1NUUlVDVF9MRU4oOCwgdmlydGNobmwyX3B0cF9h
ZGpfZGV2X2Nsa19maW5lKTsNCj4NCg0KVGhhbmtzLA0KTWlsZW5hDQo=
