Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47576C838FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6D5C60E24;
	Tue, 25 Nov 2025 06:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w5xnUkGc-_KS; Tue, 25 Nov 2025 06:50:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4254E60E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764053443;
	bh=mneV3Apx3E0NmiXKZ31Ws3bYAk+MTGRDfEVAp/kP4NI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fsXbSHON+SH4qxmH7EAOQx3WQu0bA1pF5hb7h32wXc6xD+zQzASTduSc5c5RD5j5e
	 chxy3/aD+8N3RLy7/vOQyIfaaCnyjQ+3L2aIKT1Nf/6cZK4jIjC/Iwa5oj9aqRYRJU
	 xa5FQN3xGChC24yZWV8WlUHjLfD2AK+mcBCDTn3QtmsVHjPZIMEssPs8vrg62G9jLk
	 PoKcVT+7oxEH7TKd7OiVHseueAtmQ+tz7kE5QMOkmtk+sT+NJ/TpeGDNRSbdEDFThJ
	 yRl9gsdv4Sqit/7DDjgWAIME6162xt2Gu9El+gxRk+zjxNj7xhISL+fZ/2iz1rf2EG
	 UfNwIHA1k1reg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4254E60E62;
	Tue, 25 Nov 2025 06:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 038E2E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE6DE60E0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jfGoOT69w9a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:50:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E64FB60D9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E64FB60D9D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E64FB60D9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:50:39 +0000 (UTC)
X-CSE-ConnectionGUID: Ol0UsVu5T4q3JWnSMzufDA==
X-CSE-MsgGUID: napVaOpJTsq3YEEu9DmnAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65248555"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="65248555"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:50:39 -0800
X-CSE-ConnectionGUID: BlMUGEQTTfWnFrlIdT/4ug==
X-CSE-MsgGUID: v4QMVsmORkix4JKiS8nfHA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:50:39 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:50:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:50:38 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:50:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R7YML1VRxNjag6ImIakuA9aog/IWQQf7divIFenO6yS5vnNQ6xv8iqirGo8r68JtWp8xw46Vz1YrZ+Md5IcJMXM56S4KzZviDbOghkR4YbjVMGCSHErcxnY+weuAy+mpAmvTVf6YAkmB4MxRz+ij9VZUCJiay3EFQBbJCrmcNoz4RK58alEblAK56Mo4TbOQ+jfje/ptv+W2JvD6kzbTXvR/rvjceqmVNgIR//iXFEcEdjOs1W1efp+hOTLol9DXjVKQ68h9byGKuNh4VZSeCbWoCp7CV0oEP/1tawKDDeIglONTH/SKUt4JsCD1V9cYiYMbEcrqykpZq8S+0PZeMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mneV3Apx3E0NmiXKZ31Ws3bYAk+MTGRDfEVAp/kP4NI=;
 b=HzYwlgGAYURVUAQJVxLDlaEEg8D82beWxmjGmv/n5/EVWfbfkyp2qUnGcLFaxQ3sEvAwrIav5cd6grhdamXwVfNZ9jPXoGUG5apSeRaE48KLAF4caIuAVg/9wEVCqSDNy2p2+LyBKKLdDZkkQZRzDxvb8cwmMGPaA5VL+v2k775rIVgDOjNWC7SeHCcbs6xEOU0LqHZG/XHuExaDWu1KDsSOSBUkUMo053gg71ZdU4mfSrcPJjGMGHH+fN5tLtCKacACi+onELDBpbxyb2NllWdd7CtiNC95fsbEP05ZNU6votnpdWzT2zHiya6V6pwBuQqRukXbPnnwI/5NUu9lhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 06:50:24 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:50:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/8] i40e: extract GRXRINGS
 from .get_rxnfc
Thread-Index: AQHcXW7nbRX7oLt0DUGg1Xr02/xaDbUC9KNw
Date: Tue, 25 Nov 2025 06:50:24 +0000
Message-ID: <IA3PR11MB898611421333E6356065540AE5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-1-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-1-89be18d2a744@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8073:EE_
x-ms-office365-filtering-correlation-id: 4ee3522b-bbd8-46fb-27dd-08de2beee8ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?RWhCclBudG9rYk5UUWYzNmR4TS9VT3p3Y250QzRCMSttemZEYjVtTDhuSlBp?=
 =?utf-8?B?WmQ3ZnN3QWJlQ2hPRXVaaDlTUG1yY1BvM1d1alRhZm9BRkVhMEs0NTVyWEtJ?=
 =?utf-8?B?S2pXRkxNNVNQcGpIWFVXcUtndkJKbllyQVk3SzRZTWtRQmhhY0l1L1V0b3hO?=
 =?utf-8?B?QWhmcGdFVTBtVlNsL0U2OVdEV2RJZ29FWUxOUmttUVkwUUs1Y2Q1VFRuZGdO?=
 =?utf-8?B?eFZKWHNyVzJyZ1pZS3A1aEZoYSswT3Uzajc1OGtCdVYxVlg2NXpiNmVrdkZD?=
 =?utf-8?B?dExXU28waG1ZdzBidmlKTVUwYXBHaUZ4dVVuQ2dKdGxvZ1YzQzF1c0lUZWVo?=
 =?utf-8?B?Y3BCL0xHMEc1V1BrVjAvODR6aWd5NFpVMFNzdnk5R3JnaDdjbTlUWXBNU1Ir?=
 =?utf-8?B?b2hzUmlPN1NjMmVnRnc1bGVnc2VVNjVsVGUxRTQxSmV5Qk9TVmxUeGJsS2Yr?=
 =?utf-8?B?bk1WbmFPazFSa2h1UFpxcTJObzEwRUxDR09aRWlSd1NFaCtjNFlSektJdVJO?=
 =?utf-8?B?elFxdlF4ZzNyVFU1S0JNTkZaV0hIeFVIS3JkZnJabEZhTVRBWStLdmQ1S3Y5?=
 =?utf-8?B?S0V1WmlnUnVyMkhaRXA0OE5vYXp1WnRZUHAweDllRmVtU3VrUWc1M1FvZHR2?=
 =?utf-8?B?U0QxQVVzRFJ0VG53SHBFblZjemNWcjRYaXJBNldhUXpWZkZWZ05RVjBVSU9O?=
 =?utf-8?B?VlBURkpPVXFEYTF6LzRaSWkzSFVVOFA3bldPRkN0WVhXZmc3ait4YjZkTXY5?=
 =?utf-8?B?Yi9LYUFUcjJkVkprRHZKc1FPUE1MMmsvWUtJemdrd3ROQkxyMkcyYWowaFFC?=
 =?utf-8?B?K050WVJHZUpsb2lEbEJUakZhWmgvSjZqSGZtVmN5OXgrMGhaVTRXRlpPWk1X?=
 =?utf-8?B?Y1ZHQS90Ym5tc0ljZXdEMG9pN3pKVTIvei9KdnFRckdDancwRVRIbUZ4by9u?=
 =?utf-8?B?dEdGNk53K3F3TEJ3L1FXQlg2aFhpUDc0NnBWK1ZxdkRVbkdDd04wd053LzJ4?=
 =?utf-8?B?Z2xaQlYyemY2a1FCK0hvbm51WXkxT0JBYVZVMU01aXlRMjA0WWwycUswWFA3?=
 =?utf-8?B?TGNSN2VSZkE5d1BaL0o4VThXWnBEY0F6ZU16YkR5VjdyNWpEdTRlZHROSkpw?=
 =?utf-8?B?SGZlRmRKaWxZZUNHdjFPVWFLUW4vb0lPNi9ua2JBSkhqSGxMQzNtM3BnUzZw?=
 =?utf-8?B?VkhPbkNPNFF1M0J0TFJ5NHRNeUxOUEFBSFVOTXZFRDlzTWtUbElXZll0bTJE?=
 =?utf-8?B?TElYd0tOZ0tST2lQNENoOTQ0YVRJRnF5b1lNdnN1MjZqYlZtMUpDYmtiMzBi?=
 =?utf-8?B?VXIwTFIvOHJZTmp0RjFmaGZBSlkrMmoxb0lNQ2VjbmRyMURPNW9hR3owOW1w?=
 =?utf-8?B?RVovTjA0WGIyYWdOZkszcHVuL2tMR2JMSDZHaEI0ak1yYjJVYTU3MmNIVmdx?=
 =?utf-8?B?eW1RQ0Z5U21kOXBENGplUktMK2RSTTc2RU5iMEpFeitpbWtacnRRNTVtd2d0?=
 =?utf-8?B?Z0czTy9tQ3FMa0dkWE5LaG90d3Z3dmtPVExiZWVZNWJxWVVjYWZvYldhbVdE?=
 =?utf-8?B?V0VGZVcyejhURVkwVndMSndwR0t3T1lpMlZUeVdmZzNtNE1VdDJkc3FWVFR3?=
 =?utf-8?B?ZFN2cmExOUZaeVAvN2crMjRNdTRxcTB1eHBqQ1FNdU1YM25ZTzFVS3J0UURC?=
 =?utf-8?B?a3hsd1llZHlDVmFodTJiZHhuWWNBQWJDWmo3QmRXN0ZTN3FRaTBJMkZxaFpv?=
 =?utf-8?B?Vi9LcXJJYzZaNnRJaTBZRFBwS3F6RzlnUHQ2Z1htanl1M25valFTOHVrNVor?=
 =?utf-8?B?RTEyemNvd1RTbjVRZjc5WjRSNkl5ZE5CcUVQZEpwUHlGNDZTUndUVk9EaGhm?=
 =?utf-8?B?N3ZTM3d5TUMrUmd5VFZmemVKMWZIUFdORG1Nc0hNV2diRW5YR1FKaHh6YUJB?=
 =?utf-8?B?SThIL0lUZldPRndSVVQ2YWFtM3p3ZVJWOXJTUHdSYmVYRld0cUVBWWRRRGdl?=
 =?utf-8?B?Mnpwcm1md2puRUlxTkFZKy9wTHF2NW8rU2JtZCtZVURkTVZIWFNERDZYZkpM?=
 =?utf-8?B?d0xOeXZsTk43NnEvaDVBQkdhZkdDbWlFOVZVQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cU9ZOGc0T1VtWkJ6TzlVM3dTeUpvYUxjVFJHQkxCbVNZTUZtOXhSbkU0VUN2?=
 =?utf-8?B?VkpIRTFKZkNLNlhhamJ1M0ZlRkNIN21rYjB0UmUzNTF1enBCY0hQUUZLSU55?=
 =?utf-8?B?YTVFNEZ2K0V2UFRlUTVyTkhFbDEzZk45WElUM2QyWkJkN3ZWYkJzN0pSZWtF?=
 =?utf-8?B?TTZRMzl2RmFRalpLckZmMmE0bklsNG16WVcvVmE4Mk1NdDIyalVTM1FwZXhE?=
 =?utf-8?B?RzEyekgzTTliOUtqZndVbUJkMDNDb21LZUJqanFhZnBFTUt0ZSswQ3ZaMThM?=
 =?utf-8?B?dDdwTzFpcFEweiswcmRueDVzRFJFbW5yMmI2TFhpdHV6LzVPdWc5QkZRTTFo?=
 =?utf-8?B?Tk9RSXZpSjIyTEhXN2w1MlB0L2M2S1NXUVdJbHpNK3RpK1FnT1hPdXFwbytl?=
 =?utf-8?B?Mjk1VUlXd0s4V0ttS2xmL254MWJSWTU2RXdYWUJCS1I5ZXJsYlQvUTh3NW1x?=
 =?utf-8?B?cldSV2V4T2xsOFlpR3ovUWM3OUdmZU9pZ2dFMnZlbWxuUFdzamJGYkt1a0ZC?=
 =?utf-8?B?MElCc0ZoMFRTWVlKUnZqSmxhTlFQcXRpN2l6MWwyZ0tCaUZTcTVFQmlQRjg2?=
 =?utf-8?B?cjRBR09ITTlIWkVROVVWRXdNN1NsVmVlU2wyRm5ZRkFVb2dWOHpmWjlnUElG?=
 =?utf-8?B?cGhWNUxTMG1jT0IrYWxnUmhmaHJ1c0NibnlXdVIxL0xDU1dPdUVHNHJweXZ1?=
 =?utf-8?B?dHZNb29iOTBuWjV1WmVYWm9NTHBSRVRWaGFPT1VBc1dxeFg4K2ZtQjJqc1gr?=
 =?utf-8?B?WXhSRDcwUGw2VUFuL1hRWU5lVnVSTGk1amRhQkY1dktWYXpPT0Y5cUtrRWlZ?=
 =?utf-8?B?K1JRVUNrME5KLzlhMVZ5eHpIa2VRTjFqcGNESEQvQjZ2NjB1UlNEcHA3UCtP?=
 =?utf-8?B?R0NVSUhRNUZjNVpNV3QxWFBvTFVDYzJrSmRJWUxGUzR1MXJ5Uk9jWnBzUkRt?=
 =?utf-8?B?bEJFcmNlS0RDdC8zRHBNaVZrWUhWMDFyeVRpVTlLNm1GN0VudExBMXBpMEZM?=
 =?utf-8?B?THhRWGVLK01BUjVhNFJNZDBTQjRDUTQ2TmpwbCtlUmhpSCt6bHprTzZ5RUxR?=
 =?utf-8?B?R3VnVFVWZUtXVVU1T2V5ZHAyM0RRa0RQdndRQTVIZU9hSDU1Z25oMTFpSllL?=
 =?utf-8?B?RktudEhqT1JsMVpTOTdGdWRZQzF1UmFodHlzVVZtaVZaNTNtQkZwZXBqcGxj?=
 =?utf-8?B?YnA5MHVwOFhYZklhVG9Ia3FaTUhSVzdnT1pMRzZDYkl4OHR4Z1hGZzJESkxC?=
 =?utf-8?B?UmEyZU5xZkI0RTFKOTlnd3ROOE5MaEQveGVaVmdVTnNGN1hDNWh4Y0cwTnRv?=
 =?utf-8?B?T3BQdUZ4c2lKZzliQi9KRFBwbjlScmd0YWZrcEdPMlU4Tm1PL1o1NDU0eDJp?=
 =?utf-8?B?ZGxJVUJ6WU5sMmloM0liUlZKYUhoZUphUWxkZlBpZy9INXU4YVFoZ1hPcFJp?=
 =?utf-8?B?UnEwUUQzY3JqUFAvSUxMeUZOckVLUWI4S25zaU5pYkMwdG5VdkJzN0VqcUlH?=
 =?utf-8?B?VlJnbERUTVV6b1FCWGJjRGp4RWZCNFRSZVIydmx6LzNjbldQUEsvN0g5RUhv?=
 =?utf-8?B?RVRyQ1lUczVGaDBPU0ZKWTR5ZVhWQ2JSUTJEQlNvaVQ5N3BNck5EcFFvSS9h?=
 =?utf-8?B?bEt4eXNyWG43NzcrUEZrL3dUajY2THlkMFkvOHVLTkI2SmRVa0hqVnhlWVRN?=
 =?utf-8?B?RklHOExtclBDaEt0SG95bDVVblFqckR3Z2dIN3ZlWUl2MThTM2xrcHRQYklF?=
 =?utf-8?B?dnFlV1h3aW45Y1pJMGsrSzVvd0REdVRVTGtyT3djK0VQRjlwWldyVnBZTDdj?=
 =?utf-8?B?R1R1dVdRb0Rjd2xhcUFYOWdkc0NiUEtMbHphYmtnSDZWVU0xZkVLNHpOdzJO?=
 =?utf-8?B?ZTBSbWVCV001ZTcxbktvdjFQL09uNlV3WW5kbE1HcnpWMW1Wayt1dDRSQVpU?=
 =?utf-8?B?UThlVDFrZXFpOGNUbkw2bExKbEd0QzMzanVCZG84ckdFSFJPODFUNUdsRnhk?=
 =?utf-8?B?b1h5QXR4emMydmdyREY2bDVacWljRHFDMTRKdTE1dWNQbjRPL1Q2a3dGSytZ?=
 =?utf-8?B?M0V4VXRCZ2VodDhsUUdWL0paL0VzUkJ1K3VaU0dkZzc2OU9BY3hnV3JOQmYw?=
 =?utf-8?B?RCt6N2hZcVhJVW03Q0x1SDNrdXRYbVU4MXdvQkVHMVVxSjRFZWswOXppRGtN?=
 =?utf-8?B?RWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ee3522b-bbd8-46fb-27dd-08de2beee8ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:50:24.3003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eTswIiuqdega2HFoFuTUfsxQDEtZNiVb1f3qu3BQe33K9n7xn6YVUnJ842JinGkzbi0WfCA/rIPZsETLVUEyVv8l0eXXB5jCPPlRxLFXFVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764053440; x=1795589440;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mneV3Apx3E0NmiXKZ31Ws3bYAk+MTGRDfEVAp/kP4NI=;
 b=GW/HVe2pLOwjLNx9qOQ3PAq34w0lCJ4XRlWgk3PUcIHQf8sZj5DM174P
 F0YfceQei84uy5TBSsm0rPFI/Ge+NvPIwsRgAqI21kxmzsvMuZfxZ8ac+
 8oK80z0CODXrcn+rer/7kqcZnnscXLoRxgxWjxn51cAQMXHoLMqmJk1gA
 aI+/DDLzy0wkTilHvLfApMOSudLiOasP1raSoYaJlasKWpooBWuMbZXX8
 /CDK2OpkvqCT9ODogaIf3ByaXpilhSuCrX4HAwTI7Ui7IH0Qcy45CGLH2
 BD3aI87uuH80ZV+7HRuTIBy5MDXA3FifIklflvoEY8e6EfqW8+bJrgU66
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GW/HVe2p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/8] i40e: extract GRXRINGS
 from .get_rxnfc
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgNzoxOSBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5n
dXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVu
biA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQNCj4gUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWINCj4g
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNv
bT4NCj4gQ2M6IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1pY2hhbC5rdWJp
YWtAaW50ZWwuY29tOw0KPiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dza2lA
aW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBrZXJuZWwt
dGVhbUBtZXRhLmNvbTsgQnJlbm8gTGVpdGFvIDxsZWl0YW9AZGViaWFuLm9yZz4NCj4gU3ViamVj
dDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IDEvOF0gaTQwZTogZXh0cmFjdCBH
UlhSSU5HUyBmcm9tDQo+IC5nZXRfcnhuZmMNCj4gDQo+IENvbW1pdCA4NGVhZjQzNTljMzYgKCJu
ZXQ6IGV0aHRvb2w6IGFkZCBnZXRfcnhfcmluZ19jb3VudCBjYWxsYmFjayB0bw0KPiBvcHRpbWl6
ZSBSWCByaW5nIHF1ZXJpZXMiKSBhZGRlZCBzcGVjaWZpYyBzdXBwb3J0IGZvciBHUlhSSU5HUyBj
YWxsYmFjaywNCj4gc2ltcGxpZnlpbmcgLmdldF9yeG5mYy4NCj4gDQo+IFJlbW92ZSB0aGUgaGFu
ZGxpbmcgb2YgR1JYUklOR1MgaW4gLmdldF9yeG5mYygpIGJ5IG1vdmluZyBpdCB0byB0aGUgbmV3
DQo+IC5nZXRfcnhfcmluZ19jb3VudCgpLg0KPiANCj4gVGhpcyBzaW1wbGlmaWVzIHRoZSBSWCBy
aW5nIGNvdW50IHJldHJpZXZhbCBhbmQgYWxpZ25zIGk0MGUgd2l0aCB0aGUgbmV3DQo+IGV0aHRv
b2wgQVBJIGZvciBxdWVyeWluZyBSWCByaW5nIHBhcmFtZXRlcnMuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBCcmVubyBMZWl0YW8gPGxlaXRhb0BkZWJpYW4ub3JnPg0KPiAtLS0NCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgfCAxOSArKysrKysrKysrKysr
KystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfZXRodG9vbC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0
aHRvb2wuYw0KPiBpbmRleCA4NmM3MjU5NjYxN2EuLjY0ZDA3OTdmNWY1ZSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYw0KPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jDQo+IEBAIC0z
NTIxLDYgKzM1MjEsMjAgQEAgc3RhdGljIGludCBpNDBlX2dldF9ldGh0b29sX2ZkaXJfZW50cnko
c3RydWN0IGk0MGVfcGYNCj4gKnBmLA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gKy8qKg0K
PiArICogaTQwZV9nZXRfcnhfcmluZ19jb3VudCAtIGdldCBSWCByaW5nIGNvdW50DQo+ICsgKiBA
bmV0ZGV2OiBuZXR3b3JrIGludGVyZmFjZSBkZXZpY2Ugc3RydWN0dXJlDQo+ICsgKg0KPiArICog
UmV0dXJucyB0aGUgbnVtYmVyIG9mIFJYIHJpbmdzLg0KPiArICoqLw0KPiArc3RhdGljIHUzMiBp
NDBlX2dldF9yeF9yaW5nX2NvdW50KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYpIHsNCj4gKwlz
dHJ1Y3QgaTQwZV9uZXRkZXZfcHJpdiAqbnAgPSBuZXRkZXZfcHJpdihuZXRkZXYpOw0KPiArCXN0
cnVjdCBpNDBlX3ZzaSAqdnNpID0gbnAtPnZzaTsNCj4gKw0KPiArCXJldHVybiB2c2ktPnJzc19z
aXplOw0KPiArfQ0KPiArDQo+ICAvKioNCj4gICAqIGk0MGVfZ2V0X3J4bmZjIC0gY29tbWFuZCB0
byBnZXQgUlggZmxvdyBjbGFzc2lmaWNhdGlvbiBydWxlcw0KPiAgICogQG5ldGRldjogbmV0d29y
ayBpbnRlcmZhY2UgZGV2aWNlIHN0cnVjdHVyZSBAQCAtMzUzOCwxMCArMzU1Miw2IEBADQo+IHN0
YXRpYyBpbnQgaTQwZV9nZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgc3RydWN0
IGV0aHRvb2xfcnhuZmMNCj4gKmNtZCwNCj4gIAlpbnQgcmV0ID0gLUVPUE5PVFNVUFA7DQo+IA0K
PiAgCXN3aXRjaCAoY21kLT5jbWQpIHsNCj4gLQljYXNlIEVUSFRPT0xfR1JYUklOR1M6DQo+IC0J
CWNtZC0+ZGF0YSA9IHZzaS0+cnNzX3NpemU7DQo+IC0JCXJldCA9IDA7DQo+IC0JCWJyZWFrOw0K
PiAgCWNhc2UgRVRIVE9PTF9HUlhDTFNSTENOVDoNCj4gIAkJY21kLT5ydWxlX2NudCA9IHBmLT5m
ZGlyX3BmX2FjdGl2ZV9maWx0ZXJzOw0KPiAgCQkvKiByZXBvcnQgdG90YWwgcnVsZSBjb3VudCAq
Lw0KPiBAQCAtNTgxOSw2ICs1ODI5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBldGh0b29sX29w
cyBpNDBlX2V0aHRvb2xfb3BzID0gew0KPiAgCS5zZXRfbXNnbGV2ZWwJCT0gaTQwZV9zZXRfbXNn
bGV2ZWwsDQo+ICAJLmdldF9yeG5mYwkJPSBpNDBlX2dldF9yeG5mYywNCj4gIAkuc2V0X3J4bmZj
CQk9IGk0MGVfc2V0X3J4bmZjLA0KPiArCS5nZXRfcnhfcmluZ19jb3VudAk9IGk0MGVfZ2V0X3J4
X3JpbmdfY291bnQsDQo+ICAJLnNlbGZfdGVzdAkJPSBpNDBlX2RpYWdfdGVzdCwNCj4gIAkuZ2V0
X3N0cmluZ3MJCT0gaTQwZV9nZXRfc3RyaW5ncywNCj4gIAkuZ2V0X2VlZQkJPSBpNDBlX2dldF9l
ZWUsDQo+IA0KPiAtLQ0KPiAyLjQ3LjMNCg0KU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rp
b25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
