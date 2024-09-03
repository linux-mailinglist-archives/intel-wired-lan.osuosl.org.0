Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D322396A7A9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 21:45:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 770F260828;
	Tue,  3 Sep 2024 19:45:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZuSy4oUs96tV; Tue,  3 Sep 2024 19:45:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5ADE6080F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725392708;
	bh=Q1v4odrtDA+z1+rATP9uqQ7vZjYHTMRDNV+HGGigaVw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZuHDCEke/5OKC5/RgC4D7CVSfvHyLqZv6+wxDVhu1oiZSQDvTdHnnGZMxbeo5aNbn
	 YzqBNJcTXttdxbwX4oowl8dTjIBKqnJ5uif9j/B7pODgMFzkaiIDcVtVY1neUV+6rO
	 hyxT1m8h+EOhHljDGM2lCFukMMKksNIUnhQJgKnZk1+dUJwC4M+DaCBBXZdxuF2zrW
	 9PpxnZjsWJ1RdDCBfbcRNDdQFKD7Js7dU5mF6x43hov01NHI588a/DRiqBlh3Bv8c8
	 av6a0++FKxy/MmZpzu3rolGa8Qw9JkX8VANwOXfkFUSVK1+mr3GfL/4AgaKI0yNa1U
	 bbuuQrvYOFqWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5ADE6080F;
	Tue,  3 Sep 2024 19:45:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9E1E1BF344
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 19:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C047480B54
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 19:45:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0Hi30F0hl4J for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 19:45:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 882AD80B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 882AD80B38
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 882AD80B38
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 19:45:03 +0000 (UTC)
X-CSE-ConnectionGUID: YIvWKry9Q4q+1rxA7u7gZg==
X-CSE-MsgGUID: R6XaqYOcR86NrGsnPNXBOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35382352"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="35382352"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 12:45:02 -0700
X-CSE-ConnectionGUID: 5poS45xPS4axdpHY4LiHaw==
X-CSE-MsgGUID: wBrhEZpjQZ69h3WeUJBqkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="69832714"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 12:45:03 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 12:45:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 12:45:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 12:45:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AKhom9ZU6uYodebShnfLAO2ynHglIrpLfl1lcdOK5vJn6tk06lbujHt+mj7jiXBFrEXSBRN+fwwE4m9GmAGWuMvz2zmLVOof+6Bsdz1YSzqC6DqxQdod2UfgoAbg4rUVgFjp0qLqIyIJoe9M4Qv40/eJwvUgQ1f1wEihNj69YAkAHX8sbVaL2v63TqSWxjaC/xWnTxV9xHWCQzvxM38beTVxU4cimx8u3bRzCD8EgQxdCRy4EK+32fhGQuUIn+hloHTOT9iu+BTBQDzJiwW2CoCdgzhtuMX6xeREPandXsWn8kjUDg1+sQxh4axDHaTCTv5eycswjeOVjRmVIwzT2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q1v4odrtDA+z1+rATP9uqQ7vZjYHTMRDNV+HGGigaVw=;
 b=Nz8w9DmlTFa8vl7x1M5hgh8XeUvYyBSv7o+etqbTq3GPcQZcnU6aYyQcYEB9mignAzMnZhD59us9xgmvSV3ZSvMfXecsRCZlE0uYDlZftxD6I7CJgucpultgTQZHEgFI4Pp643WoafhHILSUBmuCvy0sXecV59IhWZD/x3cEyhMfPpmsuCPEukxfpq8KjXQx2n4/BtXAV5mulfQ3nyjWv0FkS7+YvCy7Real8i1GoP2Ewl8YRhsWmebtH+3eB58At0BhUuQYBSJAwZJnXpFPxVnyM1ixAmWRoUV/zIKoNtEQhMSBxqPN+yxSJdHLaAxUeNtsE6qWKZ3+EzKs/EnSag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.27; Tue, 3 Sep 2024 19:44:59 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 19:44:59 +0000
From: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, mschmidt
 <mschmidt@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to reset
 vf for tx and rx mdd events
Thread-Index: AQHa+xORQ5pQKMNFGU6l04JvV6qAnLJEgPCAgAHi/QCAABS0UA==
Date: Tue, 3 Sep 2024 19:44:59 +0000
Message-ID: <DM4PR11MB6117A1340C6493FB75ED984382932@DM4PR11MB6117.namprd11.prod.outlook.com>
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
 <CADEbmW17Sa6BGpUF0FAVW2Hwq-mKQ0b-2a+L8cS9aRm9=SqUYA@mail.gmail.com>
 <SJ0PR11MB586669F98C3D6D4544EA9E32E5932@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB586669F98C3D6D4544EA9E32E5932@SJ0PR11MB5866.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6117:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: 26b96323-2e9a-408c-6147-08dccc50e51d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SXd4NEU4VzFaTnhZMmNQc1JLckdZUGtIRklQTUFLcWVjYTlvRCt5Q05BYWVu?=
 =?utf-8?B?OWMrOC80eFp6cnh0cUZnZXJOOWFCa1VLbXQ3MnRBaUpvVFpvb0ZYLzNBd3gz?=
 =?utf-8?B?NTd1SGMwdjlUclZTK05FNi9XeVpPdHc4V2lCWmY2Z0U1L1pXemdxQ3hhRmpC?=
 =?utf-8?B?MG9Ob2o2WEFKT1o5WjBhWVNXTDZCdnJCVFF2UjdQaHc1LzZxUXA2ZWJvM2Vt?=
 =?utf-8?B?SEhGYllqOCt6UDFqSmQ0azFDeDJlcUl2NG04dHEwTFpyMlpvQnBjbldvRkJ3?=
 =?utf-8?B?TDR1cURvdnhkelozczdROStEQXJYQUlFT0cwZnBrSHhpQlN3cDlHRGtoc29K?=
 =?utf-8?B?cmNXbDBTN0p2NlFFcXF3blAxOVJTMkloSEdaazZ2TjB0V0xFME1uTGlLNDN3?=
 =?utf-8?B?eUd6d2k4bVkra09TT1RyaVhkbFhocGFoNHFGN29RN2tMYlZ5Nzd3eFJzZzhM?=
 =?utf-8?B?dnVvV3lXbmcxSzhhTzNCYnNVS01RK3NmdVBtSE5HOWZKd05ndklRVUZSTkZo?=
 =?utf-8?B?UlE3VHoxREhRU1R4VWtEWkVYNEZsV1dyVjFSQzdYUzNUeFlXWHNkbmg1cUF3?=
 =?utf-8?B?UzArcTFiOE9oSHRjTnJPdnpYNVg2REh5djh4N0lJY040dm55M0pheUMzYUF3?=
 =?utf-8?B?Ni9CM1hXSzRncmpua0JMQzJpakp2MEJkYktyb0Y2NWF4YXVTVnBjcmIvdDZJ?=
 =?utf-8?B?eWRaN2R2VlowT3RObzVDVHA3aDZlcjJGN3lxRTl3WThsTEMrSlNwS0lVSmlw?=
 =?utf-8?B?dVRHSVdEaVV6eG9mTm1mQ0E3YmxRMVFWanNRUGwwbU1rSjlYTUk2UzhoZExZ?=
 =?utf-8?B?OG5NaHF4dHpEbHNGSFM3enQrdzh3TkpmY1MyM21rYkNPZ0pmbXhZMWtmb0RD?=
 =?utf-8?B?eHdkUWZkU0JnUUNpV1plU2wwbjlZUjlrbklzWmsvbVg1R2NBVkRwMTdzTzl5?=
 =?utf-8?B?Y1FiVXZXK3JaU1dQNWpJRStqaGZGeTE3a2xPeks3WXphTDV4V0t3Ym1pNVRQ?=
 =?utf-8?B?YmpTdzJyN3pmVzJ2eDkrWS84QXpCM3lxbElJT2o2TXBTWERrOVNsRndMNk5U?=
 =?utf-8?B?bGRkQ2J3ekMrOTZCZ1BIdTRvd094RjVKK0twdUpsYjJ3ZWtreEZZN1hTNi9z?=
 =?utf-8?B?R2FoZUgrOTlOTTFaRzNIY1NmaGNUV21IMW1CNUdmVHMrV2w1UXVhSEdiM0Np?=
 =?utf-8?B?eGV5R2JOYldBMWh0OTVxR0R2L2tocS9yVHJmdFc4bS9XM0R5ekJDS2pKRzI3?=
 =?utf-8?B?U2gySU4waXR5S1FFNjBSbWx1Y0daM2x3aDVhZTZRSEVRcEZvcmxLaTRUcEJ6?=
 =?utf-8?B?U05VcXNGSzdoVm12NmhTU0NxekthS2RFNDlkUWY2QXprbkdjczBSeXMzdmNw?=
 =?utf-8?B?UGVJQUJ1U1lueEU1RnpDOGdvK3pkcENPc3EwVGhmRU9Pc3JxczZBalJBME9J?=
 =?utf-8?B?TE85cWdubU5nelVNN01odlM5Z0pldUlvMTBsK0JBS3dqTExSNDZacFpZYjFB?=
 =?utf-8?B?RkxJcEdZVzUxVHN0QXpYelZ0WkNqRWltQVZNbmQvRlpObU5SakI1czZmQnFO?=
 =?utf-8?B?MXh6TFZkUWZuL2gxR1pwM2NuT2JrcWw2S1dxS3F4c214eXkwR1l1a1ZlWlJu?=
 =?utf-8?B?M2t0ZE4zK2M4bElwVlpRTFZZUE5jSngvMklZNWhoYk5ORE1yOUFQWVJjeXpn?=
 =?utf-8?B?TzcrRVFuWi9LbmRGTWlNVXdPY0ZmSEJSZ2I4WU5WbWxoY3VzTzhSMGs5ZUtk?=
 =?utf-8?B?WU1KVEF6THZRUW51Zk0zYkZNRTUwNU9GSGkwSHU3b0hvaHRHb0xSSUV6UHhO?=
 =?utf-8?B?UVFGajgySGJ5c2ZhemR2a043RVFhc1NoeFdPb0N3bjVMZ0VwSlJiRHNtTDhQ?=
 =?utf-8?B?SENYcmpFM0FaK0VVRDM4cU1KWG5haHdORWdSRGtCcU02UGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zys3Tkl5KzBoM0g3d1o3UkxiNFRINnZoWDZzTFd2ZWdnZzVpdXgyT3UrcTc0?=
 =?utf-8?B?b2U4aUFiNnlvaWZlaC9nbEhXNEhicWthSnVScXhyeWhoUnkrcHIxZVc4NUND?=
 =?utf-8?B?OEhzMEhjUDkwQ1VWR2RkTDBPZ2FsMFR5cWI3Q21lNFpKWWg5b0crdHRYLzBY?=
 =?utf-8?B?Nk01QVVqalAwbktLRGhvZDhwWlg0cEZZUDVIRkNoWTRxRFY2dUNjcnlpZEww?=
 =?utf-8?B?bFljK0oreG9nMjJVRERwSk02TzRacjNGaG9JMlRZZjZNUEhZUWxjS1ZQUDZK?=
 =?utf-8?B?WWhITEs3Slh1aTNtTEVjUDJ5RUkyb0k2Zkhobmtkdnd3QXZPL2ZvYTNrNUNr?=
 =?utf-8?B?bGxWUDhOM2x6SFJCcDBqNnJ0VHZ0VU14UzNNY3B2Zmw0TW5KZm5UWHBlWGIz?=
 =?utf-8?B?V0R1a1hFQ3l1cGZrbnRlMjVCeUp6RlVUVHZvci9SK21TTGdLQ3RNdzN2RlF5?=
 =?utf-8?B?T1ZYS0V4bUZBcnRHQlA0Tzh1VmhyVVhsY0J6Y284SzM3S0hiWGR1czJkL29s?=
 =?utf-8?B?R0Nhc1pNV3gwTnZ3MXdZT3NObXNJb2tyTzdLWFhpOGdyYkJMMTh4S2xQMkZq?=
 =?utf-8?B?Qy9aTUl3cWl2RzdGUG1VbzdFZUNTL3lkSkkyQndpODJ0MXg5OWJ6Rm12L3E2?=
 =?utf-8?B?S1NHOFdBdlYzeFBreEFGbUZDM291eUhlSElEc2VERjRzUXdBWmhseGo4MFpR?=
 =?utf-8?B?WGdaT292VFVlaHIwMWIvcWdnaDVzajZvVW9tcFVOUitRYU5ZL29vTWZLZzJt?=
 =?utf-8?B?Y3JXaVpKcDFBZmdUa1hMWmpkK05SbVNBdWNTMUxmYzV2V0pFMGpYc1V4SlRE?=
 =?utf-8?B?Y3I2WFRPemV3SHBwRU91ZjJQOEFwYW9PYWQzSmNOTmNTa0NqMzA5WGpUNWlZ?=
 =?utf-8?B?NlZoeWxyeFlyYUx2OVhmL0Z5c21OaC9QcUFZcm9XNXZHZys4YUNwY3VSNnFO?=
 =?utf-8?B?aXVNam1tc0RKRVpzU1B5RXkvRnB2aTgyMEIzNDdwTE16RlJzczltdjdZeEww?=
 =?utf-8?B?VFg2WFIzWFpaTENML0FFbU9EQ29jTVpsN0dtR0Y3WHZaVEdINFZVQ0RGMzN3?=
 =?utf-8?B?WVdiZ2MwMnpyaTd3N2xSYzIyK21pVU03b2lKWDRoeWVYd2FOWG1mYmVvNTBu?=
 =?utf-8?B?djE5RWFYdGlnVXJVVGlmUmJ3ODJBVTlzejA3R1RnSGhlNSs1NXdGRlF0YWRC?=
 =?utf-8?B?MTd1ZHhDWG1NUnJ5eW5TYll6T3dQYThXMmpWR0dTNi9vb09wWFQ1TG5qWi9Z?=
 =?utf-8?B?NkM3Q25jbmlFaWs4Z2FyU1lxNlZla01mMmhHdFpIMzA2aTFXenlPWm1yeThj?=
 =?utf-8?B?cytTSTgwWmRtd0xNa1VHQ2o0ZDhyelVwN09NUmg4MzlXVGRlRGt1dHE1N085?=
 =?utf-8?B?VDVqQ3ZsbEZRTWt0eFVWY0d2R1E4Q3dnb1d0WkFIWUNJbUIwaEg1Vmhjc3VG?=
 =?utf-8?B?dzVCS0dGaFRYQmhSandSdVB2SVJEVTBjclk5RHcwcGxkWDJMTXV0bnNQenZI?=
 =?utf-8?B?S3dvcEgrN3hRcUhWL25lNXF2RERvcE1ZRGhOamVaMTVHNEhRdzJHS1Y1MndX?=
 =?utf-8?B?N3pPb1VWRzJjeG4yVFhDNERKUTNNd0dBcWlPMWZJSkRjdDUvSE1LcllPQVVE?=
 =?utf-8?B?MGxPV1Ewc3NZM29BTFNtVWhncThNeDRkd0pLaWZaZWowTjZkajNTeGRPa3h1?=
 =?utf-8?B?U21RZXNjMTNvT2l6cldsYk5oYUlxNjdkNkNyeWNqYVJuS21UYW5VY0NwS0JF?=
 =?utf-8?B?dVZsb05tMm9GOHNRRk03UE9BelEyRStzVGtpR1VTelk1d1dNVTNsQTN6S083?=
 =?utf-8?B?WEFoODhGQVIwUzZmdmpBNFFHMWRobDdRK1lkS2xYOHRrRFFPUjdrWGxIZWtr?=
 =?utf-8?B?N2Rqek92OG1IQlBvc0x2cFEza09qMXFrMTJBWVNpcnRzU0FYeUpxd0F6OUgz?=
 =?utf-8?B?ZEI0RWhqUXV4V09mem9uaFdhaDI4L0NycklPQmVsMmN3SWlEQmQ0SjYyNFNy?=
 =?utf-8?B?ODUveGQwOWxmWXZQVW5FSGNuakJlMzFWSkdia3d5RS9VTkEyUCtPbHNKZTN1?=
 =?utf-8?B?SktZd0haTlZUNVF6dlBzZUdYZXI1QXlId1Z3OXNjRlZUcVpSNXdKVEkwbkpV?=
 =?utf-8?B?a2U0bUEvTnlMTDdrQ3EwU2RDeTJvQTFoL1Q1L2duMndlOGtpRjVxamJXSklQ?=
 =?utf-8?B?Mmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26b96323-2e9a-408c-6147-08dccc50e51d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 19:44:59.2827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dr+bXdL+Q87Pd3ny+Py5Ba3nEc/oEJb6W20N93Ok9bjfHMAMz8juFfngjWLiEhT3g0Jz35leOhpPXFHM9boaTyrEAS9PX1kWjMGtbeHR5Bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725392703; x=1756928703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q1v4odrtDA+z1+rATP9uqQ7vZjYHTMRDNV+HGGigaVw=;
 b=VEjhQ7Ge1Idu4wIkjkqJ59gh/KY/eVH5JpkLz2DXbovnpRKOeFt0XjBu
 ttWlv3KBuCOM7nl6PxBYa4scjrobc2AmFDkzGj1FSbdrq+CDflvJDUx0+
 C/1fwn3TdsVb0kj+HOGY0iAat+htOv+f+zRC7zRGqT6bAgBpBbYFRY0jE
 yFpX6/e6hozcAOXwhhj2YxGYJA4sztMXjUI1PYdbf5eCtEdhLeu1KGZSK
 9EvHSKL1WZts5BEEp34pxCdyeQCCVVlpHEOR6nep1oF7ie17UnV1NW5UW
 7BLvHAolsYp+6tyuAOIJkC0US4HgQpsBI/oQhJJ9lAerj6op3zKbQ4iC8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VEjhQ7Ge
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Connolly, Padraig J" <padraig.j.connolly@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiA+IE9uIEZyaSwgQXVnIDMwLCAyMDI0IGF0IDk6MjjigK9QTSBBbGVrc2FuZHIgTG9rdGlvbm92
DQo+ID4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4g
PiBJbiBjYXNlcyB3aGVuIHZmIHNlbmRzIG1hbGZvcm1lZCBwYWNrZXRzIHRoYXQgYXJlIGNsYXNz
aWZpZWQgYXMNCj4gPiA+IG1hbGljaW91cywgc29tZXRpbWVzIGl0IGNhdXNlcyB0eCBxdWV1ZSB0
byBmcmVlemUuIFRoaXMgZnJvemVuIHF1ZXVlDQo+ID4gPiBjYW4gYmUgc3R1Y2sgZm9yIHNldmVy
YWwgbWludXRlcyBiZWluZyB1bnVzYWJsZS4gV2hlbiBtZGQgZXZlbnQNCj4gPiA+IG9jY3Vycywg
dGhlcmUgaXMgYSBwb3NpYmlsaXR5IHRvIHBlcmZvcm0gYSBncmFjZWZ1bCB2ZiByZXNldCB0bw0K
PiA+ID4gcXVpY2tseSBicmluZyB2ZiBiYWNrIHRvIG9wZXJhdGlvbmFsIHN0YXRlLg0KPiA+ID4N
Cj4gPiA+IEN1cnJlbnRseSB2ZiBpcXVldWVzIGFyZSBiZWluZyBkaXNhYmxlZCBpZiBtZGQgZXZl
bnQgb2NjdXJzLg0KPiA+ID4gQWRkIHRoZSBhYmlsaXR5IHRvIHJlc2V0IHZmIGlmIHR4IG9yIHJ4
IG1kZCBvY2N1cnMuDQo+ID4gPiBBZGQgbWRkIGV2ZW50cyBsb2dnaW5nIHRocm90dGxpbmcgLyog
YXZvaWQgZG1lc2cgcG9sdXRpb24gKi8uDQo+ID4gPiBVbmlmeSB0eCByeCBtZGQgbWVzc2FnZXMg
Zm9ybWF0cy4NCj4gPiA+DQo+ID4gPiBDby1kZXZlbG9wZWQtYnk6IEphbiBTb2tvbG93c2tpIDxq
YW4uc29rb2xvd3NraUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKYW4gU29rb2xv
d3NraSA8amFuLnNva29sb3dza2lAaW50ZWwuY29tPg0KPiA+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBQ
YWRyYWlnIEogQ29ubm9sbHkgPHBhZHJhaWcuai5jb25ub2xseUBpbnRlbC5jb20+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiAgUGFkcmFpZyBKIENvbm5vbGx5IDxwYWRyYWlnLmouY29ubm9sbHlAaW50
ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3Nh
bmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPg0KPiA+IFRoYW5rcywgd2Ug
bmVlZCB0aGlzLiBpY2UgaGFzIHRoZSBzYW1lIGFiaWxpdHkuDQo+ID4gSnVzdCBvbmUgcXVlc3Rp
b24gYWJvdXQgdGhlIHBhdGNoOg0KPiA+DQo+ID4gWy4uLl0NCj4gPiA+ICBzdGF0aWMgdm9pZCBp
NDBlX2hhbmRsZV9tZGRfZXZlbnQoc3RydWN0IGk0MGVfcGYgKnBmKSAgew0KPiA+ID4gICAgICAg
ICBzdHJ1Y3QgaTQwZV9odyAqaHcgPSAmcGYtPmh3Ow0KPiA+ID4gICAgICAgICBib29sIG1kZF9k
ZXRlY3RlZCA9IGZhbHNlOw0KPiA+ID4gICAgICAgICBzdHJ1Y3QgaTQwZV92ZiAqdmY7DQo+ID4g
PiAgICAgICAgIHUzMiByZWc7DQo+ID4gPiAgICAgICAgIGludCBpOw0KPiA+ID4NCj4gPiA+IC0g
ICAgICAgaWYgKCF0ZXN0X2JpdChfX0k0MEVfTUREX0VWRU5UX1BFTkRJTkcsIHBmLT5zdGF0ZSkp
DQo+ID4gPiArICAgICAgIGlmICghdGVzdF9hbmRfY2xlYXJfYml0KF9fSTQwRV9NRERfRVZFTlRf
UEVORElORywgcGYtDQo+ID4gPnN0YXRlKSkNCj4gPiA+ICsgew0KPiA+DQo+ID4gT0ssIHVzaW5n
IHRlc3RfYW5kX2NsZWFyX2JpdCBpcyBnb29kLCBidXQgLi4uOg0KPiA+DQo+ID4gWy4uLl0NCj4g
PiA+DQo+ID4gPiAgICAgICAgIC8qIHJlLWVuYWJsZSBtZGQgaW50ZXJydXB0IGNhdXNlICovDQo+
ID4gPiAgICAgICAgIGNsZWFyX2JpdChfX0k0MEVfTUREX0VWRU5UX1BFTkRJTkcsIHBmLT5zdGF0
ZSk7DQo+ID4NCj4gPiBIZXJlIHRoZSBiaXQgaXMgY2xlYXJlZCBhZ2Fpbi4gV2h5Pw0KPiA+DQo+
IEhlIGNvZGUgd2l0aCBjbGVhcl9iaXQoKSBpcyBsZWdhY3kgYW5kID43eSBvbGQuIFNvIEkgY2Fu
IGd1ZXNzIGl0J3MgdG8gYXZvaWQgcmFjZSBjb25kaXRpb24uDQo+IFRoaXMgcGF0Y2ggaW50cm9k
dWNlZCBuZXcgZnVuY3Rpb25hbGl0eSB3aXRob3V0IGNoYW5naW5nIGxlZ2FjeSBjb250cm9sIGZs
b3csIGFuZCBoYXMgYmVlbiB0ZXN0ZWQgaW4gT09UIGRyaXZlci4NCj4gSWYgeW91IGhhdmUgc3Vn
Z2VzdGlvbnMgaW4gY29udHJvbCBmbG93IGNoYW5nZSBJJ2Qgc3VnZ2VzdCB0byBtZXJnZSB0aGlz
IHBhdGNoIGZpcnN0IGFuZCB0aGVuIHRyeSB0byByZWZhY3Rvci4NCj4gV2hhdCBkbyB5b3UgdGhp
bms/DQoNCkRvZXNuJ3QgbWF0dGVyIGhvdyBvbGQgdGhlIHJlZmVycmVkIGNvZGUgaXMsIHlvdSBh
cmUgdG91Y2hpbmcgdGhlIHNhbWUNCmJpdCBzbyBpdCdzIHlvdXIgcmVzcG9uc2liaWxpdHkgdG8g
YWRkcmVzcyB0aGlzIGFkZGl0aW9uYWwgYml0IGNsZWFyaW5nLi4uDQoNCj4gDQo+ID4gPiAgICAg
ICAgIHJlZyA9IHJkMzIoaHcsIEk0MEVfUEZJTlRfSUNSMF9FTkEpOw0KPiA+ID4gICAgICAgICBy
ZWcgfD0gIEk0MEVfUEZJTlRfSUNSMF9FTkFfTUFMX0RFVEVDVF9NQVNLOw0KPiA+ID4gICAgICAg
ICB3cjMyKGh3LCBJNDBFX1BGSU5UX0lDUjBfRU5BLCByZWcpOw0KPiA+ID4gICAgICAgICBpNDBl
X2ZsdXNoKGh3KTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgaTQwZV9wcmludF92ZnNfbWRkX2V2
ZW50cyhwZik7DQo+ID4gPiAgfQ0KPiA+DQo+ID4gTWljaGFsDQoNCg==
