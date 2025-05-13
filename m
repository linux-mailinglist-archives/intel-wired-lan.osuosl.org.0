Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAE9AB5037
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 11:48:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E46F40D9E;
	Tue, 13 May 2025 09:48:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IgzS5ZAyHwaQ; Tue, 13 May 2025 09:48:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73768409FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747129681;
	bh=pM/+By9tEagme41KY11xcaLw1nzC+8pVywR6vnmcwZU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d63t9K1y+R+aRii4uympHyTXqLmlJWzGjWFjpks/X0wIzaZfJdNJ2M3tvqAaDApw+
	 vbeYG7LsXL8OnYZQXF12Wbyr9w0nUaWK39QvHsXV9ov21/CtfdiGferWJ1Qg1adfs7
	 CfeSQoEi0vnftEBgAmYW4KnrSUsbRMYafgQeSwGQuSJHnvvZLKeyHk90tLPE1Fxnw3
	 8tc1x+JerzwV36zjL+u+Gye7reruO3FXSEw3L5H1j/MEdkU2KyKWumJSfk6lbXEVSk
	 2pMlmZDQQBFBu0ZRU1gkgS2a9Neh2GsOnFtUmUxr6xns9tAUKx+kC+8Un52vxdDpa/
	 4YCV5bN/5Ojgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73768409FC;
	Tue, 13 May 2025 09:48:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F5A9153
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 09:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 547806082D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 09:48:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pPgaJyIVcxKn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 09:47:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 761D860813
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 761D860813
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 761D860813
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 09:47:59 +0000 (UTC)
X-CSE-ConnectionGUID: NKVu08+ZS+Ke2keGKkgqLQ==
X-CSE-MsgGUID: mhcMCDl0TVGrOaDLfSrL7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59636914"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="59636914"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:47:58 -0700
X-CSE-ConnectionGUID: wO7UcOJrTPS2skAdlyCl0A==
X-CSE-MsgGUID: AqJCr9MhSBKca+0FuBCSxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="142593655"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:47:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 13 May 2025 02:47:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 13 May 2025 02:47:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 13 May 2025 02:47:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KaPc6VkRK8rijVtBVbr/qfwUIgZsBncmlqMHOOfYAzTQbcUFhASUtPIzK43gvC0iV1BizRCObAcpRSpA1s1oSzpJl21d0+/7ffXEdhOgJtDSoEU3/zWTys6eB39kSgpQlF7Q6ClXmqMCCQDjiicfs0m1MbyykuSue7MSiX2vxLlqXNdoXYRQqMYKSg7j5FK81ONGEkLsEUiySV9i84juo02El28JBrT2UkB1c9+9wUWY4Eq/29tVFBlS0vnYSmna3B8jZeQBcLlrj8s0icULG7kOJZTxSX32Op2W4bzcNaR9m/daao1wr5PcRcjijfhtACVJpFbWdqs4vNELrfZnsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pM/+By9tEagme41KY11xcaLw1nzC+8pVywR6vnmcwZU=;
 b=Z930iKOfZdTM+XHtf4puBKpZNy9uiw4ntk299SeV6Y+VbT+eA+sHLulROv7a3YRG69XCFH75nxb+DmhUy9iEMaWa9wl1k22daSeM5uwvpOaSdGL5hh/WzkBHodejupzcY5zIkGrFvM1nPaK+8PnLuitsNEmwVsMLM9uhr6ELoarKKWYpPNk/LJ3mOjNxpXm/pIez0V486VP2p7PPdCGIN8fgukCEwRnO4/6+yzrW+teYrYOQx1o763ZKdVwPctrMF0EumUBGfTLqSW2aVZu2/ElY37iGFdrCAVCjnwr/R6CMPrlNcmlKRIX+gMN6vuH0mqzRWd99vrdOGQVegBG5xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB8152.namprd11.prod.outlook.com (2603:10b6:208:446::8)
 by DS0PR11MB6472.namprd11.prod.outlook.com (2603:10b6:8:c0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.24; Tue, 13 May 2025 09:47:39 +0000
Received: from IA1PR11MB8152.namprd11.prod.outlook.com
 ([fe80::c08b:cd53:5bd7:7784]) by IA1PR11MB8152.namprd11.prod.outlook.com
 ([fe80::c08b:cd53:5bd7:7784%5]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 09:47:39 +0000
From: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice/ptp: Fix reporting of
 crosstimestamp
Thread-Index: AQHbwxIrQCPGxGaBlUqpsOs2s0AyvrPOpIIAgADXaYCAANUKIA==
Date: Tue, 13 May 2025 09:47:39 +0000
Message-ID: <IA1PR11MB815204401D58BA7FE3471617E496A@IA1PR11MB8152.namprd11.prod.outlook.com>
References: <20250512074721.4118376-1-anton.nadezhdin@intel.com>
 <4fdd9b80-ae0e-4445-9a15-3ff0be3569d2@molgen.mpg.de>
 <6fdd97cb-dad0-41a0-a9b7-ce5f91dbe823@intel.com>
In-Reply-To: <6fdd97cb-dad0-41a0-a9b7-ce5f91dbe823@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB8152:EE_|DS0PR11MB6472:EE_
x-ms-office365-filtering-correlation-id: 564a7404-a6a2-4b6c-98c4-08dd920332f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QktZeHd5UnVHUnZNSE9tV0ZLa0UreFhCTzQ2Qk1Zc2VFdnNsT081bG9Mc1ZK?=
 =?utf-8?B?WjllcTVLNDdGWFRCZkhodzJFdDA0YmZoV3Z3TlIyLzhyMXZYQXN3dzI0a1dz?=
 =?utf-8?B?VTlFeGJWUmJ5QTlxcTlKR0tSdllVdEdvUEZpbGhOKy9iTVlOUUdCUDFuSndS?=
 =?utf-8?B?WUdiODZhcXFjK2JzQTU5MkkrOGUwY00xa1hzKzY4ZmlicE5GWnJhdlNFUVZ5?=
 =?utf-8?B?dmI1czNNaWdoMEs1YUx1VUZCS3h0MUE1RE4rb1F6aStvQTlSbmlNZ3YzbS8z?=
 =?utf-8?B?Z2s2c090NEd6UzNBbnRwZ1ZZaDNVVDJ3ZlZXeStNK09uVXRnampqNXkvTUty?=
 =?utf-8?B?T2lLdlp0THRFS2RzSXplOXQ0S1BpTHNjUE1ERHRMYVkyS1RDRGRkcjVLekxa?=
 =?utf-8?B?K08xa0lTTmR0Y3Rkb0YrU1JtUFRoQi9oaVhFTWVZbzdJaVBrTSswWmFSM1dp?=
 =?utf-8?B?aUluNWlONmRSaGFmL00wZlZKUVZkaUNtR1lPYzg5ajY5czhKMkY5eVU2NElr?=
 =?utf-8?B?VmJ2cCtVdzJndWgvZjFRMHF6MmdUQjNiT2FTbE5KWVhHS1hpaDMyY2t4WFpx?=
 =?utf-8?B?dTRxcEYzNjRlRkxWT3ZvSGd6Tnd6aGFVcDNMaHJKUlRDdVFwT01tWE0wM2Yr?=
 =?utf-8?B?SXB1a3E1RWllbjVpTHd2YkRya1V3WmorTnFwanpma0tIUlVmQWpianZZSWw0?=
 =?utf-8?B?Tys2NFA4bVV2TDRQcjl4a082M3N2Zk5LQkNTS3RNMTZsQVRpRlZaNk9qekZt?=
 =?utf-8?B?L2xiU3dYNkpiTk1vNXJDRytsVjRXdVRPZTZmYmdmOEhKTFNmOEhTR2UyNllV?=
 =?utf-8?B?UTd0TzJpR0JETlpDYm5JaE9BL2VqTUdwZGM4WU9ISFJNdGtOWnBJd3JEYmJF?=
 =?utf-8?B?UVhHRjRMaGtUUW9XanYreHVtbk5PVWtsN0JxSHF5cFUvcjJ3a1V4VVFvb2l1?=
 =?utf-8?B?TkVudWVGeXhIbGxCTkxJRm9qeDFnalVzejRndDZ2MEFZTjRTbnh4U3hJVm9I?=
 =?utf-8?B?SVQyeFZSZWVRUnZDaU1MWE5MSjlSTk1YVFNGanZKeElpeGlmaU1qc2JmT1B5?=
 =?utf-8?B?WkJYYWVPTTdacGtSM2FxdUVlcGNzM08wMXNaTWh6RmwvYjdhS3RHQjNHNjhu?=
 =?utf-8?B?cW1KYUVxSDJLSzdDdFFOeWRqeU11VVpKdVNFdmZ2MTdLbjVveEJlNitLUEpq?=
 =?utf-8?B?bHVnNlg5M2pFSlI3cHdjY09XYm03dkp0ditOeE5pT0puWkhSeS9WcjUyUnFj?=
 =?utf-8?B?QkR2c3YvdHMrcXdlcEprT3dYSjFpdU5GeFZWSTV4WWU0S1dpMVl2VU1hOHA5?=
 =?utf-8?B?a01UM05LSjRnZFNDMUZTMHFDSDdlbzhjR0xzZUVoN0lHMkNlK2FjNGxFL0NH?=
 =?utf-8?B?bktxTWZFUk5abnNhY1ZTdDllWUpHYU4vM1JwR1I2WDdub1NJZjZBSnRBcTJl?=
 =?utf-8?B?RUVIaS9QbFNCUTVEVW52VDRnUHdWTEQrbGhNNUs5OTBMRkVZVEgzWW1GakEz?=
 =?utf-8?B?eGpxN0VCTFFBTm5HeitidGY5SFRTd24zSzRjNk94dTUwVnQyY042cnZKTEZ1?=
 =?utf-8?B?T281WTAzcnpseUk3OFRJekZuUFcwZDVTQTAvMnFmRitVRDFrUW5ndXdCblJY?=
 =?utf-8?B?R3Q5c00yOHdOL3UxdE5qdU5kU2ozRmV2dyt2WHZTNG5iSUw0c3A1TlpRRUJW?=
 =?utf-8?B?MG5nd3RNQkdsa0ZJUUtwMVN6WXJ3T0YyenZ0algxcHVhR29uZlJaU1dDMFZ6?=
 =?utf-8?B?M1RCa25FSXc5MWZqeDRzWVBwMTgwRElHaE5hbWF0RmdRVlc5UitzM004SzRI?=
 =?utf-8?B?R3M4emJxNmR0TjJrVFJaWkZQTkxvOHZxSFlvb3MvbmpYYUhPYVNBRmFmSUNV?=
 =?utf-8?B?bjZYSHJJUGxBOXFDWTNkVFFScXlyZWhFWGhQQ1dHNU5ZVHV3VVkrOG9HWmdP?=
 =?utf-8?B?MU8rNFBFbjNvaitGUWxIbnlhRGplZUZvaUsrM29aYS9yRk9HbjNob3BSV1Fo?=
 =?utf-8?Q?zWaF7dgxkhhzALFms3RUZvCbk9PAUU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB8152.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkFyNHdYR2lBWWY2L1lubjN1SUY0bzNnWGlNQzJmYUhZb2NxSGtXeTNUUVJn?=
 =?utf-8?B?cjFPNk5UVUt6VTM3a29nNEx3WXFBcXhlcVVoUnZyNG1iNVlqSkdDRlltcU9Q?=
 =?utf-8?B?bmhkNE9KR1VRZ1BtemdURnl5Z3BjL3VMWkxIK0ZXc3RtcWJsdURuaVJsZ1Bo?=
 =?utf-8?B?YllDc3JFZjI2V2NTY05ZRm1EcDBlR21ncktnaERiNllSN3Y1RGdRdEQyNlFT?=
 =?utf-8?B?cXo3Wno5d1liNUdwTHhlZVZKRDNKRFRUUkxVVk1VV1lVbDlEdzM3cDV5MUZr?=
 =?utf-8?B?QjFBcTJuWjJtMFk2b0FNVkNNVUxGQ2VGbk1QVVppbXRFdEI0RGs2aWVGajZT?=
 =?utf-8?B?aEdVNHNjSDBZWnhVQTV5MllYMnQwVFZ0eVRQbnNwOFJFUlhTbk5Gd095YUhj?=
 =?utf-8?B?TFdpdnEyZXhPdUxHR2w3K3V6dEFDRS80U2U4Um4zL0ZQNjNtY1IxL05TNU5t?=
 =?utf-8?B?RkFBT3dESk5oNnJvNFk3aWNHVkRyR1ZjUGZxZXQ4MEJpd2ozZ21NUE9zakl4?=
 =?utf-8?B?OFdlYVBJMERGdXI3ZVZPaGZ3MWZtdzBicWtmNjVqY0R3Vmp0aGp1U05QanpC?=
 =?utf-8?B?TFVwTVRGd0FkejVKbGZxT2lhM0MxOXRqV2N6bEd4ZnVzck41SlJTNE4wUHA5?=
 =?utf-8?B?UUJHejVmaUVIU0lvd2Rndlo0K3ByQ0lDQjlkYktGWU84RFozeThQN0UrY0Y4?=
 =?utf-8?B?VUJnSCt3TkhRdnVySEEvZnZucHJienRoTStKcFZGcnZNRzZnZ3duUnJHQjIr?=
 =?utf-8?B?c2dlelI3aVE2akEraXJ3Z0dzSk1BYzVpdkFVL1dUamFSMS8xYlRnZ0NGYVpJ?=
 =?utf-8?B?b1JwRUlGaVFWR2J3bHZmdkJmVVljSEZMZWpUWFdzRzZWVG9EQ3QySHdwTWtj?=
 =?utf-8?B?d0xsblNxeERHcFFhcVE5Q0hZUUFUOFpYVHIrVzRBRVp4NW1ZTUR2UlZJU1RT?=
 =?utf-8?B?SFNXMmJyeS9ON2xqQVpLaUQrZ3VnS2hhUHdNQk1WTVR0dHduSDFxWm0xd0Qw?=
 =?utf-8?B?aDJwekt4MkpUY1hnZmRGa3hZVEFHYWlOY0VYRHNPT1R0U2pwdWVkOEt6UWJk?=
 =?utf-8?B?M2hDWVdpYXdRbU5Zd0l4K2FHOWVLOTdNNEphbWQvZGE5eXRDTzBhdFdoeldv?=
 =?utf-8?B?ZEtzaU94Z2p4Y09JNEFKeUdiZVdNYzdwQ3lpRGVvaFV5RFNXQzVvM05vbXhz?=
 =?utf-8?B?c0cwN0xTMmxZbGN1eXgzNTFUWFVFc2g4MmdEV294UnA3bFVDUUVHWmhkalFO?=
 =?utf-8?B?UlFoWXBNdFBhQWpCTmRtL2RsT1M5R0JOYlNkZW80SzdNTCtuVnhETGhwK1VM?=
 =?utf-8?B?YnBWYkROTXVVVkhLenpINEZORHd5L25rdjd2alE0a05qY0czcUpodDI2NHlF?=
 =?utf-8?B?Ri9TbUJGK3JUUWVkSjY3NmhCSXA2NTIybHU0R1RmNDJGVXFkYjdMN0lSaWtC?=
 =?utf-8?B?d2RJd3ZZWFJtOTJhQ2k5QXpsYzRiTElKSitMMW5rS0lZQWRSNklCdFpsbVhT?=
 =?utf-8?B?VlZGMHdvY3hjNFFrU1NYcHpWOFpWSEpVRDNmL1pWLzArdXJuNFNCWlNSOHFE?=
 =?utf-8?B?UXFWWEdZTlZkM243eXRjRStXbEdZVnN3Y2E2bDhxSmtZVUl6TnNFam9FZ1FX?=
 =?utf-8?B?VHh1c3pTWUphaWVyamIzQzRveDV4MkpNYmhPVGhKR3BLMm9ZSFJtazdwUWt6?=
 =?utf-8?B?VkRoclpOYzE4NnVUenZ5UmdUVnRLazh2MHAyOW55KzFBWFYrNzNyVyttbUMz?=
 =?utf-8?B?VDhVRkFiLzdqSHBwdy9Valo2YkRYU1FSMDVHbmFQYWkrQnduTXUweTFaYXBH?=
 =?utf-8?B?N0NJZFZSL21lWWc4WnNzUHdLMFhIVFNtVFkrZnhlL0tUQ1p2SlN5dFhPSFQr?=
 =?utf-8?B?dlRyV216NWV3S24waC9jQUFqeWJ6WWs0Y2cxUkhOMXNwS1dwSlRhd0tlbngz?=
 =?utf-8?B?MUJEVFBiT1laeFFyYWdaU2p3RzhuOHFhMzQ5enpMakl1UXFVdXpGTzluQldV?=
 =?utf-8?B?czRlTE5DQld4eXBlUmhnU01uT0FWMzdXTEw4QUd1c0VLY29lL08rblJMYkcz?=
 =?utf-8?B?Qld1c25samZ0Zzk0bit1b3JNdGpFZkY4WjFuVnlsMEZGdFNrL0VlRzZyZkYz?=
 =?utf-8?Q?oNI2ds4uarstpUfQ4mLJAHMI6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8152.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 564a7404-a6a2-4b6c-98c4-08dd920332f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2025 09:47:39.3497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nj/zDiwJGDP2MDX8MVAfdGkmAM/9GXBUcSavtP7+1ebyk9t6a80W3x694L6ocJGX80lxeEV1CvrIWiihjXiHpQN9kMIc4R6AtHxgBnFyzAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6472
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747129679; x=1778665679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pM/+By9tEagme41KY11xcaLw1nzC+8pVywR6vnmcwZU=;
 b=emA/8J/qEeCQ8Ow6vIKiAWmkmdgYtu5QVPpFb8vbgZdcpaO//mknbzmw
 xDqt0hfQecpyMSnGU7LnDcOL5L7gV42q1kJTDgOkvEVUfKisjSfZp6Ter
 p+EBrihPVEUI8Eo/yj9Y5wT18rbfG9tSCfFTYildJU1RA/LVJ55bjDbPZ
 q8rurUuzsbW76opymk9LloV8DROMA4bT7WSgbT/qxmfR3neBxb0YTSA5n
 IV6DyD0BkygHae3SGJR+7U5u82Q73bvaUkDiwDYQeyBbBXfH9iu9FIK0G
 wzysIjVxglIICLEq2j+MLmXJqaDABmFe4Y07wMPL8zZa1vQROXO2Evngh
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=emA/8J/q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice/ptp: Fix reporting of
 crosstimestamp
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

QWdyZWUgd2hhdCBpdCBzaG91bGQgYmUgZml4Li4uIFRoZXJlIHdhcyBzb21lIGdlbmVyYWwgY2hh
bmdlcyBpbiBrZXJuZWwgd2hpY2ggaW50cm9kdWNlIHVzZV9uc2VjcyBzZWU6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMjAyNDA1MTMxMDM4MTMuNTY2Ni0yLWxha3NobWkuc293amFueWEuZEBp
bnRlbC5jb20NCkFuZCBkdXJpbmcgcmVtb3ZhbCBvZiBjb252ZXJ0X2FydF90b190c2MoKSBpbiBh
IHByb2Nlc3Mgb2YgY29udmVydGluZyB0byBuZXcgQVBJIHRoZSB1c2VfbnNlY3MgaW4gdGhlIElD
RSBkcml2ZXIgd2FzIG5vdCBzZXQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4gDQpTZW50OiBNb25k
YXksIE1heSAxMiwgMjAyNSAxMTowMSBQTQ0KVG86IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdl
bi5tcGcuZGU+OyBOYWRlemhkaW4sIEFudG9uIDxhbnRvbi5uYWRlemhkaW5AaW50ZWwuY29tPg0K
Q2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyByaWNoYXJkY29jaHJhbkBnbWFp
bC5jb207IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT47IEt1YmFsZXdza2ksIEFya2FkaXVzeiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29t
PjsgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+DQpTdWJqZWN0OiBSZTogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjJdIGljZS9wdHA6IEZpeCByZXBvcnRpbmcg
b2YgY3Jvc3N0aW1lc3RhbXANCg0KDQoNCk9uIDUvMTIvMjAyNSAxOjEwIEFNLCBQYXVsIE1lbnpl
bCB3cm90ZToNCj4gW0NjOiArVGhvbWFzXQ0KPiANCj4gRGVhciBBbnRvbiwNCj4gDQo+IA0KPiBU
aGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guIEZvciB0aGUgc3VtbWFyeSwgSeKAmWQgc3VnZ2VzdCBz
b21ldGhpbmcgbGlrZToNCj4gDQo+IGljZS9wdHA6IFJlcG9ydCBjcm9zc3RpbWVzdGFtcCBpbiBu
cw0KPiANCj4gDQoNCklNSE8gdGhpcyBzaG91bGQgc3RpbGwgYmUgImZpeCAuLi4iLiBUaGlzIGlz
IG9ubHkgYSBidWcgYmVjYXVzZSBvZiB0aGUgcmVmYWN0b3IgdG8gcmVtb3ZlIGNvbnZlcnRfYXJ0
X3RvX3RzYygpLiBJdCB3YXMgYWx3YXlzIGludGVuZGVkIHRvIHJlcG9ydCB0aGUgY3Jvc3MgdGlt
ZXN0YW1wIGluIG5hbm9zZWNvbmRzLCBzbyBhIHRpdGxlIG9mICJyZXBvcnQgY3Jvc3N0aW1lc3Rh
bXAgaW4gbnMiIGdpdmVzIHRoZSB3cm9uZyBpbXByZXNzaW9uLiBUaGlzIGlzIGZpeGluZyBhIGJ1
Zywgbm90IGNoYW5naW5nIGFuIGludGVuZGVkIGJlaGF2aW9yLg0K
