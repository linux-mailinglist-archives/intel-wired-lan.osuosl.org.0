Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1awRORHePGpCtggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 09:51:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9096C37FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 09:51:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=xCHvwIC7;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3B1E60FBE;
	Thu, 25 Jun 2026 07:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dgxofo-eyIsJ; Thu, 25 Jun 2026 07:51:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEF1260FBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782373903;
	bh=loQ2eajmtVvqNAvULnitAxpvmFsercXz+ytzpokkE2o=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xCHvwIC7pzc0IlH0H1TsqBIzcltD/84nJs/o51SiDQAaleQV0xw4SDC52FUaDQW5J
	 EfjlyKWT3ZjX3gmgjre5d+3L1P6WR0q2PQSSAWqbqA3Rw+eqkcxv6iHTa37eJytKiT
	 XyFzGgeM/ASlSyG5DfYl5iZUvgRuuXHZxM3mUxY9WwumPUxdO7yBQVQmEze7HUTFUL
	 RoL2nEa7oUaxmXjU9mBgXRGqNReJGCWAfQ5QIr6uDcGq8TVPy2WxSPRTkG2qAlg53B
	 a2PBUKbtAoajKlquVJ/dNjlyH/h2glwNUmZJyaK4Sv1WIJ8+gaQ5Kj8F18ZlaxN+QY
	 XI77Z+nf4cJbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEF1260FBC;
	Thu, 25 Jun 2026 07:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EBE46254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D50FD40B84
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hrAuvlAtMMER for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 07:51:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF3A240A44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF3A240A44
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF3A240A44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:51:39 +0000 (UTC)
X-CSE-ConnectionGUID: h64bo2RgQvOBVuLDrxhm7A==
X-CSE-MsgGUID: ktvyWsIFS+6hJDumq34abQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="86991183"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="86991183"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 00:51:38 -0700
X-CSE-ConnectionGUID: I10b5wiBTaKFXgJ9c+nfLQ==
X-CSE-MsgGUID: UqmDwUGhRquQQ1+SaelpwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="255357120"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 00:51:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 00:51:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 00:51:38 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 00:51:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oN5MuDQTFDNwmp3KFUswuUMDpoN+pTufNJxagr0RDJ/cA0EMWre/g3/dT/YQIXcCmRlHbZvJyvvQU0kGASr0Bx3Ptxy2as4r2XaGS7OdkeYkgPElXx52n00kmEy6KtalkMqFyOu8pAvqbRttQ5yF+vR+CVOv6dupc1z9OrsQHXi4qKm/BDW8m8WdZalxg1IALhmgNTPi5ov4XnGMYerIzlDDj0gMfTZPkj+gB3rAZkI5n1U/BmCynWtxEOlD69ZOhEF22vBGgANPOjA4HbpBw9gUJmccHsRjRseM9i2OZ9Mj4HKq5CW5OfsgdeuMtpA37U4zyw9UBTDpDqfPRw/NxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=loQ2eajmtVvqNAvULnitAxpvmFsercXz+ytzpokkE2o=;
 b=kOGPDIqjb275DrOO3IAJGLOInBSgKvXIP3i14254htHJcNz5iRDjLvXpd4G5y+SwS7VIT6seq8fHA7GHwm+Yfx/J6C0QAa2tveKoJEUqRC/i/r3LgcrRoQzARDnVdTdcTfee6KQNUZEp3gQad1QQ9qf1yHjxbUsWPbVXQ5gg9Z1b9Xqg6Qp7ut6Or05nsB7alFQTXUvBLHu9HWxJFwoDwp2zLmo+SLTsTtHI0SV8mhhYPj+Octn8jhcDOH0otbdJZdLryZS+cAJq9PmoyLhNyQXEH5e9jPhV++RjBzdmxW3RO37vpHTcRqUoXgtROhwCVStvaRxc/dMy+boOni/8oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by DS4PPF11E6CAE14.namprd11.prod.outlook.com (2603:10b6:f:fc02::c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Thu, 25 Jun
 2026 07:51:35 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0139.018; Thu, 25 Jun 2026
 07:51:35 +0000
Message-ID: <5658849b-0425-4132-ba32-5801e2907c60@intel.com>
Date: Thu, 25 Jun 2026 09:53:39 +0200
User-Agent: Mozilla Thunderbird
To: Robert Malz <robert.malz@canonical.com>, Simon Horman <horms@kernel.org>, 
 Grzegorz Nitka <grzegorz.nitka@intel.com>
CC: <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <20260617120753.1785565-1-robert.malz@canonical.com>
 <20260618152003.909400-1-horms@kernel.org>
 <CADcc-bydFL4KNDQEznStE41NFXuCey9S+kyXg0usbonwyWpiAQ@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <CADcc-bydFL4KNDQEznStE41NFXuCey9S+kyXg0usbonwyWpiAQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0013.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::20) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|DS4PPF11E6CAE14:EE_
X-MS-Office365-Filtering-Correlation-Id: 74517fed-588b-47bb-833a-08ded28e948c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|4143699003|6133799003|3023799007|11063799006|5023799004|56012099006;
X-Microsoft-Antispam-Message-Info: LZf+9nUI2Axn+OO0BVUMpp73/RTQHXLGTGmvDi3ZiExDmHbjH0w/FsZyYbX99zU9Aqz5V+rFqIMKafXJtPEOMEMWQF3+eLOFUUJIVZmKkTn/uIN8xN8xF1bwA6IdnPha3mphgmH1fEL026JrSoF9MUj1M1/y/CPxw+jen4WXXNnkshv4gG57jM8OD2CkqI3zT2ZvJyj8PwMK6qF+bFnxCrl49NyxhgVIx17imK9BR/69+gqurODmrZu3yV23qF1eVSpwFjNhzqbki6Fc+KEaQ9dgUlCVFFSXLOiI/iI+fNDeYsMj7JbqWahgc26BmTZ3Tp8O4rMzaejMjG0VPCG/vSatCfNN3tGfMlU1efHA0VX/PmmL18llmM+mZxlCa0Yaet7dZbWnQZ2n/al7JuRjjR5qV+U7UHc481hwirQbrZkfO34vI0EHjWZ/d2L9YptelOSy4tIqH1VfvlN5+ivGjq98IdL8faB/8ruXLYpTj2H/qvbIYf90t0kYmSn2+x+4yGMnLkh1z9T1ZVN35MX0gHQcAvIOrPmVdgux0TC1U9otGWXT7CCVdcyMGfXV1mQGQdct9QAbBux4g+hoEjgx9Yd0mvesywT2w779+un9I5soAk8BkI0NJXCd1pdhNvC15j1SRwlB4ZXVL+R4Kyp3+0XK5CIzf7GyIYvXs95wa4w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(4143699003)(6133799003)(3023799007)(11063799006)(5023799004)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T05XdXNKQmtUdERvNHUwLzBNeHJsUG52QjVYTlVHN0lPSkhOQTVhSm9XcSth?=
 =?utf-8?B?Z3dNeG9POURpYUtHS2VCVmp6eVZTb3RobjFsMHUxRWYwSlQwR3JFYjlGa2lT?=
 =?utf-8?B?SFNYQ1diV2RWVjVQcG1qOUZyN1JCOWxBK2lrejIwV3hiR21oM3BkTXU1K3RG?=
 =?utf-8?B?VERrSG5jQWhXd1ZTd0ZjSS9kbFhTQmxhbjRST2YwbUp6eCtuMlJTaG9mb2pv?=
 =?utf-8?B?bXJOSjNsV2hxbDNLVmpRRmJta2RGMUw5YlVQNTQ1VVdUZElVSXFRTDQ2ZVFw?=
 =?utf-8?B?TnVoVzZNQS85MTFvd3B6dDN4YWp3MFUzYkFNTkVBNjZkWkdNZFltSG8zWVNT?=
 =?utf-8?B?dWNYNU8rZTQrWVJJVTRnQktWRGkrU3RBNzcxSWNEQjlFOGVoWGpQSExlVVZs?=
 =?utf-8?B?TVlvVFB0dHBTVDBaeTloR25kM21zZUYyajJETkNYL0hjWmQwbnE1eE9vbjZs?=
 =?utf-8?B?d2RlWnJ3VmlTVnFHVEJLdUxlMTN5N2J2WmhQaHIzeEkyWXlqaHhrN1pYR2o2?=
 =?utf-8?B?Y1NaVm9IYmx1M0k0T2ZFN1BnREhuVGNJc25RSGh6L2t3WHo2a3h3QURmdC9i?=
 =?utf-8?B?VTlBV1YvWVpxWUdycVJ6TGQ4SUwxQi9yZG11b2JBeEhaQ1hDeUR4b1lrVTNJ?=
 =?utf-8?B?dGhweSt1UDBLbkJhRys4R0k3VHV5dGhvOWplaFRJZkdCcDNOWkM0SUtaVVd2?=
 =?utf-8?B?Q3dRcmFieGFoNVZOWU9iL0NSaDNud0J1N3Q0S2VCVWd2dGRSUXpvTXJ2eFJ4?=
 =?utf-8?B?NHhFVTR0RE9nTFlIZVJqS3hOcmNtZ2Q3Ylh4MHFnSVRNMmg1NGo5T0d5V0Fw?=
 =?utf-8?B?SzNCY2o3Tmc1aS9MV3R2ckdTaG82NFB2ZnJhWVRqZENuRVRudFFDU1dUcTB5?=
 =?utf-8?B?L0VjMkJjZkZjWW9KVnNrYXVzdHVPVFpMWnZvZFdjZjNWR2RYQ1VTamJDZUhq?=
 =?utf-8?B?d1BpaFlCejk4NXlEWEtEY0NZL2lLQjhZaWpsWXROaDZDQ1FkR21FZzhsNlRM?=
 =?utf-8?B?VGJhTUoxSzV2Z3RIWmZFdVdVejNCSitmcEowak1SVHlrZUMyaDliOUR0MSs0?=
 =?utf-8?B?RElvY2ttWHpZMm92N2pNWEdFQ3N4UWdOVEJkZXJiS1hibDE1VTZEeDZMY0NE?=
 =?utf-8?B?QkUrUWtWa1hrT1FQUHBWcHQ2YnlDTW9hSGk3TFJoSnl2WHd6ZFFtUXdEZnpn?=
 =?utf-8?B?amVVeWxxME1xNzRqc2lsOVg0ZHJ0VzZSQkkycjdCd1I3Vmd0UWxDVlBHSG1z?=
 =?utf-8?B?ZGs1SEhqdGkwelByMFZLSmVTL1BqYnFXd2hWK3hyek4yblJzQ1BIUERta1FS?=
 =?utf-8?B?eUpNV3R1blhlRVEwaENoU0tiQW9GU1RVM3VuRlFyOGlxTFMwOWNkSnZZdDc3?=
 =?utf-8?B?SEplOVpZemNYeWNTcGYxSDUxNkdiWEFlWm5xUXpvTjg2SjRaYW1JSitiOFZT?=
 =?utf-8?B?dEM4UHhraktONFd2V0xkK3NNVm5Ea3BUWFJGd2hiOFlISCtkd0J5VnFOeXpB?=
 =?utf-8?B?UGRvT2FuRGpvY2pZWkNaN2ZFTXQ0cVhHSC9QdC9WNUpzWktRY0dtMzhtT1Z3?=
 =?utf-8?B?a1p4ZmlwckR6TkphakhVNDdSY0lPZ055Z1J1dzFIMExSOXVpcUI0TTNZN0VV?=
 =?utf-8?B?UE1oSVduL1BlUENmK2d2MGx2b1lRYWpJNzFKZTE3ajJ0UWs0MVkyeWlSWlhr?=
 =?utf-8?B?am9mNEEzZGZ4cm9GZi9pcU04c2Jpb0hGTEo5Q1FpMHoxdkVib3lDdnJSR0Jk?=
 =?utf-8?B?YXlMTjA0d2lnUzRaZUhBck5CSWVoWWxxSFMzM0RjUHRzenZjd0lWMS8yMEVy?=
 =?utf-8?B?UklTdnpZdzJhMWZHVnRFSkZ0L2JpWVkxVm5ueTg0YzRPajNmZElreG0xZGxS?=
 =?utf-8?B?UldjbEdLaHFZeGtkU2JycTA2TXAxTkVtdm50cytiRCtmRFNrazZTM0pseEFv?=
 =?utf-8?B?T003WkprVlc0UC9Uc2h5UzlMQlhTWVFGZFg2L2ZnTFJ0SmlvZW54aUN4YTkw?=
 =?utf-8?B?eDNEaTAzb0UzcnJiOXVxSllhcEIrOVIyLzVxdFdjQWllaHRZWFBGMENQNU5X?=
 =?utf-8?B?WllybnY1dzd3K2JVcnNDVERYdi8vSjR0SEQwWHhSWjRMZjRrQS9sYk82UGRp?=
 =?utf-8?B?ekM1ZjlaSUZEbmlYNVJTalg0UmF6eU9QSW1QRG5GUE5RcUx4YkNkcmFLWEt5?=
 =?utf-8?B?NmhtSGRaWWgzWWFkWGh2TlE5a3NvQ2x2eEhVQ21hek9tYWJRcFJtWFlxbndL?=
 =?utf-8?B?TEQ1UHNrTmN0VmhEYlcxbE4yVzV0cnM2clVqWVduYStoOUlhYkx1aG5FUGsx?=
 =?utf-8?B?SS9IWklFbDU0Qlc1bms0eGtkVGM2S1l2cHd5UVlDMlpMNGppYVNjSmd4MHBj?=
 =?utf-8?Q?+svYnUhNLjkiAdPE=3D?=
X-Exchange-RoutingPolicyChecked: Pj9EyxO/coznYr3lvBSWW09sbTP14/A8u2oU9ymNh+ggnR6vqBlZ5kjaxCiF7PT216Xa7+biOJ7PbGxvKHwK5fklWzQUSYceuT5g+HiwBMRBzV7zJYaq7TyY/fDL7fMwobDI0kpdB0hUV/Ks5Qb2s7VutqTHYp5JZ4p5I1EnQr62XkWWBexMjHTDbAKN4L3b/Q6TVLyt4aNA5lXjwEgfzMhr1kVu/K5OSftPAvjUizaC0gqs3y2ipKTzjftPOH0u9o1ssTQ6O/nOZ1v9ihF00fGHoqZYfFoQq57LG3IQXbP9oYCOLdZqXhIdfBqo1qzShUyvViWJ5BiTz47GBa3LTg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 74517fed-588b-47bb-833a-08ded28e948c
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 07:51:35.3451 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NcQEbQ0E+ofmmjTJmeNFaH0FUMmoykQEX6pHCLz6Z06D3y+hOIciQaVMwkLA74NxF0UQO/YMVVCtbU125F0rOmFTZ1kMevhcFOTUFvlG10M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF11E6CAE14
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782373900; x=1813909900;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PBJYErrS/KUXoJQLmsW+YqFQ1cup7rVkCs++5dEkt/Q=;
 b=IS3fPRh/ahEAmHPmUQV5sNERLMKPYO103jb1IyPzNUfDeTzEY1bRnm1+
 +HbjSqFtUrZDsUlPv9pnUW+jZ+ve2+MBppRbgC9ktasdCKamzXLYzaFgW
 ldhe4lkG/xLkS4JqdWhMGWXlwDBG4Q2+6NjGlp354Ryg4C3iuXsxDlxd+
 U+P3Il1jUX9NXD73YkSRjpx4RUHWTG5FHHJAo2mTbsRbq9TJsMUvX83kT
 eBR3b2KmarObm4Kv03x2zJi9FbWw10+/X5vZ5t/zJ2f8M+wlwug+1ToaL
 nXts6nwHMITn76trvsfSpTCeCowKgyy/yKrfvBLDfpI+K+b+5KaEMjkNS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IS3fPRh/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl v3] ice: retry reading NVM if
 admin queue returns EBUSY
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robert.malz@canonical.com,m:horms@kernel.org,m:grzegorz.nitka@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2A9096C37FA

>> This is an AI-generated review of your patch. The human sending this


>> [Severity: Low]
>> Does this check allow an extra retry execution? Since retry_cnt starts at 0,
>> using a strictly greater-than check allows the loop to retry 4 times
>> (5 total executions) instead of the 3 executions intended by
>> ICE_SQ_SEND_MAX_EXECUTE.
>>
>>> +                             break;
>>> +                     ice_debug(hw, ICE_DBG_NVM,
>>> +                               "NVM read EBUSY error, retry %d\n",
>>> +                               retry_cnt + 1);
>>> +                     last_cmd = false;
>>> +                     ice_release_nvm(hw);
>>> +                     msleep(ICE_SQ_SEND_DELAY_TIME_MS);
>>
> The review is correct that this allows one extra execution. However, I
> intentionally kept this verbatim from the OOT driver (1.15.4) to

This OOT change was made entirely by Grzegorz, for E825C. Would be great 
to acknowledge his authorship (+ SoB ofc, below).
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

What was the platform that you have encountered the bug on?

> retain the significant test exposure it has there. The absolute worst
> case is one harmless extra retry before giving up. If you strongly
> prefer strict adherence to ICE_SQ_SEND_MAX_EXECUTE, I can update the
> condition in a v4.

Please update (to have one attempt less).

> 
>> [Severity: High]
>> Does dropping the NVM lock here violate the caller's assumption of mutual
>> exclusion?
>>
>> Callers of ice_read_flat_nvm() typically acquire the NVM lock beforehand to
>> ensure an atomic read of multiple sectors without interleaved writes. By
>> explicitly dropping the lock during the msleep() window, another thread, VF,
>> or PF could acquire the NVM lock and modify the NVM before the read resumes,
>> potentially resulting in reading torn or inconsistent NVM data.
>>
>>> +                     status = ice_acquire_nvm(hw, ICE_RES_READ);
>>> +                     if (status)
>>> +                             break;
>>
> 
> I don't think this is an issue. The NVM resource (req_res 0x0008) is
> an ownership lease, not a content snapshot. The FW grants it with a
> hold timeout (see the timeout field handling in ice_aq_req_res). It
> never guaranteed a point-in-time view of the flash.
> Very similar behavior already exists in ice_devlink_nvm_snapshot(),
> which reads the NVM in chunks via ice_read_flat_nvm() and deliberately
> acquires/releases the lock between chunks (with a comment explaining
> the FW reclaim).
> Additionally, the lock is only dropped on the failure path, where
> neither bytes_read nor offset have been advanced. The driver simply
> re-reads the failed chunk after re-acquiring. So no data that is
> returned to the caller is committed across the drop window.
> Overall the lock drop does not weaken any guarantee callers actually
> have. If we wanted to introduce a true snapshot guarantee, that would
> probably require different approach and separate patch.
> 
> 
>> [Severity: High]
>> Can this lead to an unbalanced NVM resource lock release and potential data
>> corruption?
>>
>> If ice_acquire_nvm() fails here, the loop breaks and returns an error with the
>> lock currently unheld. However, callers like ice_read_flash_module() are
>> unaware of this internal lock state change and will unconditionally call
>> ice_release_nvm() upon failure:
>>
>> drivers/net/ethernet/intel/ice/ice_nvm.c:ice_read_flash_module() {
>>          status = ice_acquire_nvm(hw, ICE_RES_READ);
>>          if (status)
>>                  return status;
>>
>>          status = ice_read_flat_nvm(hw, start + offset, &length, data, false);
>>
>>          ice_release_nvm(hw);
>>      ...
>>
>> Because firmware tracks resource locks per-PF rather than per-OS-thread, this
>> errant second release could forcefully strip the lock from another thread on
>> the same PF that successfully acquired it, exposing the NVM to concurrent
>> modification.
>>
> 
> Agreed, this might be a real bug, and the one of the three I think is
> worth investigating.
> If ice_acquire_nvm() fails after the drop, ice_read_flat_nvm() returns
> with the lock unheld while callers unconditionally call
> ice_release_nvm(), so a stray release is issued.
> 
> On probability, though, the window is very small. Reaching it requires
> sustained EBUSY across the retry budget plus a failed re-acquire
> (which itself polls up to ICE_NVM_TIMEOUT), and concurrently another
> requester taking the lock. Most reads happen during init (ice_probe,
> and reset/rebuild via ice_init_nvm), and NVM writes only happen on an
> already initialized driver. The devlink/ethtool nvm_read paths are
> also exposed, but hitting this race would require precise timing
> against a concurrent NVM owner on the device.
> 
> I'd prefer to keep the scope of this patch limited to the EBUSY retry
> path and not take on the unbalanced-release fix here. A proper fix
> should change the lock-ownership contract of ice_read_flat_nvm() (on
> error, the lock must be released by ice_read_flat_nvm(), callers
> release only on success) and update all callers. Code change sould be
> simple for all callers but ice_discover_flash_size(), it intentionally
> holds one lease across a read loop and would need to re-acquire after
> each expected boundary failure.
> 
> Given how small the original window is, I'd rather not trade tested
> OOT behavior for the risk of a complex unbalanced NVM lock fix. I
> actually have a patch mostly ready that fixes the lock-ownership
> contract, but I really don't like it. It changes the design of
> ice_read_flat_nvm(), making it less intuitive for callers. More
> importantly, I just don't have the resources or test coverage right
> now to properly verify such change.
> 
> However, I can modify the failure path for ice_acquire_nvm inside
> ice_read_flat_nvm. Instead of bailing out immediately, we can just
> retry it within the existing retry budget. In this case, the
> probability of leaving ice_read_flat_nvm without holding the lock is
> reduced even further without needing a refactor.
> 
> Please let me know what you think about my thought process on this.

I think that both AI-reported issues against the lock are valid
concerns.

I think that sleep was the actual fix, and re-locking were merely
a necessity due to their expiration (as you said).

A proper fix would be to just increase lock-timeout to accommodate all
attempts (and still do the retries&sleep, but without unlocking).


> 
> 
> 
>>> +                     retry_cnt++;
>>> +             } else {
>>> +                     bytes_read += read_size;
>>> +                     offset += read_size;
>>> +                     retry_cnt = 0;
>>> +             }
>>>        } while (!last_cmd);
>>>
>>>        *length = bytes_read;
> 
> Thanks,
> Robert

