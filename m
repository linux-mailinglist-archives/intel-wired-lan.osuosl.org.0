Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +xEABwDyKGomOAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 07:11:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C71B2665E02
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 07:11:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=u7lkaxit;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2D5C6085A;
	Wed, 10 Jun 2026 05:11:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ATJFkKm_WtGb; Wed, 10 Jun 2026 05:11:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49A7D60857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781068282;
	bh=HlyZG4CrCsIazP3GIT0Hs/LrLYXADygVDXdgmv6uVuY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u7lkaxit7WxIy0gnOamf62IyqF+PM4/AonA5Al3P449lA2jBiHdgrkry/9L1pF8WU
	 O2XjWJnZQxvNlK2E2ln3mvqHEquINBQa9HUfC6L/pVGlk/aRSZJLhM0jRm8ZXhHVNm
	 QnBoLDJqBkwOmVwJpylUQmIjk1oxs8+YZjjToqW0rIPCIZMPOPY6EqpJ9pYuXdXLIm
	 z19zEGyyzz3Jo+iyQXTO6lpIJcS6xdj/2kMx7ledrnYwpqxcDhHsaQNQw3+s0nVN8M
	 1dkn4rGP8EJxV2eoN895zmjF6mw+epuKGDLKm91LrdLsu3xmCvaWaJJhGkjDNP9lGU
	 /s+E9SmmirITQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49A7D60857;
	Wed, 10 Jun 2026 05:11:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BF95F196
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 05:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A74F5812EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 05:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C3Sihbtypfjt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 05:11:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B852E8127F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B852E8127F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B852E8127F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 05:11:19 +0000 (UTC)
X-CSE-ConnectionGUID: DYVAuOltT/6T8Yrm6fgMfw==
X-CSE-MsgGUID: Fert5uIsSoi1br/cdN0Fcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92525409"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92525409"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:11:15 -0700
X-CSE-ConnectionGUID: 1XTjLm85RI+TecciVOEwBQ==
X-CSE-MsgGUID: BS+ZBFxHTOaqKatw87Tgyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="244921801"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:11:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:11:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 22:11:14 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.33)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:11:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZVZz/n9AqsNmO47KVvDgIyFODFExbo0/ktnUEwVyLM8PYs6X01tyHI+PDWPUmrnKj0wsIvdbR5BtzWIi4GyDCS59yGwCTtOCCJLh0O8FhXY1j2QCjf4ujCO/riByeu4JxH0DmBTyjVous3231K0k9JEht7cDYOr7EjUgzSduYPLv7dyqUtnFrYyzod/Zch9Qv8HHO8j8CEHHDlURxZzpaWX+lIWAFuvfA8eIT9sXcz2lgTfA3PgVlpngizH7854n0Sxv/OAK23cIEViGCEokA/nyBkZW7uCj3TTieAbXHgn185xiW6io1y+EFMsS5OlgQWxF8rsInVLasba6HHm+zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HlyZG4CrCsIazP3GIT0Hs/LrLYXADygVDXdgmv6uVuY=;
 b=SNyJUTzEbsuTTh9CqroHk/NAbGm8QX0EdScxTHgkHw7DOK8iWSVWW9oB+iVcAQB5O6uozCZg8h7VoJOxA+/fFN33oHJOMu8a9BsKierShNkcNxrUrtB+M4AXayOpznneA4A/qx510jNw067LToINuGMYQSpntD/xPhqA6h/0V74QfkZvbbe4ti2teA9suC0VWOA+Bd3OeBYnvowSoIfyPh9phmwsANaHq8NN6/a1UhvwC1Yf/HU72R1kFC4mlUZm1873fSUkrz+i6CSu5WA5qzTtqUdavpInve95FGKPqf1b3cNrTri1kgvpTm9y/Xg1O/+KqroSneG1P2RkqjXNmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 by IA3PR11MB9255.namprd11.prod.outlook.com (2603:10b6:208:578::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Wed, 10 Jun
 2026 05:11:11 +0000
Received: from CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee]) by CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee%4]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 05:11:11 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Michal Wilczynski
 <michal.wilczynski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: add missing xa_destroy
 for sched_node_ids
Thread-Index: AQHc48KXlwgmux9ILEyKuWpjr2RRtbY3ZRCw
Date: Wed, 10 Jun 2026 05:11:11 +0000
Message-ID: <CY5PR11MB62584E5DC55FE21F11C1B3C18B1A2@CY5PR11MB6258.namprd11.prod.outlook.com>
References: <20260514-jk-fix-missing-xa-destroy-v1-1-de437bf52347@intel.com>
In-Reply-To: <20260514-jk-fix-missing-xa-destroy-v1-1-de437bf52347@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6258:EE_|IA3PR11MB9255:EE_
x-ms-office365-filtering-correlation-id: 51e6cb03-7639-4c00-c1d6-08dec6aeb032
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|11063799006|56012099006|18002099003|22082099003|3023799007|38070700021;
x-microsoft-antispam-message-info: ln9cXdPM01iHf09vPTIHyZ6R3VJfm5H2Gbfo1woqo6YFymVzQWjmhHWUA0yXBr1LrR8eVyhq+wyv30GifnzQu33Xrj2phBmcucFgUG2BJahK3CS4EMIC24YvmqnLtQB6xNRZpU+Vqde6qnEyDVzFa0OVl2I1w9ZmnkPKG5N0i8Ci3NK+YAptqgXjRHyYEcjhiBF2czYgUPf6MKu7gudwKBw3v6BB8Yy2rxDau38gMFaFe2MLhMy923OMHDhEnyHU1lMRDed4qYwDDKV//8TZANJcAV2ctxAoG6FoEqaQZ04Myi8QOzp3wfN79CMjcik/iWn7u/IJMP4oJvqt0p4ar6j0hpMfov+VwwdwTHxe7Szml6LLQat7tXfXF6V4ETR3TWBFK/4fWtdbZoEWls0UsJwwDGSYDVXmE26KAaOic/UeZwXCjxDMuGxxpGpXOPOQEdpODEMxhj6yTnVFMASDZelIGmPYzJMRX2VfglC82Ip9EKLVw0IZHc9q2RJ+hHPTlmUoUFY99FbmmTI6XPbGOt8lSXZWqtt/aqlD3yqBNNwOUR+1eplkw0ZZSWAFtc1aGRG2qXQqporppR2+a8DRcyMJD4wXZVNwZjnAmSLprDdTUn3ayNcgO3j8YzZ6mPXsYgs3OZq3uDSOOvxSUP1KMY5zHwL8x7fZOw90x2ngT/jLnBcaSLdex7vRPB/nPj9utHw+0E5auP7TN0lJDIcnZJHZCFvXorJIpJZp5xAvL86v/9zQNS77jzUOiXqHhrHY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6258.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(11063799006)(56012099006)(18002099003)(22082099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ODhSQU5vQzNKTUlNQnBBSk1yVHZVVk5kdlF4alZhS01VaHVWRC9sZkovdHlD?=
 =?utf-8?B?cWdkMDhHSTQrME9BYjF5OGJhSm16ZmxLV0VSMFFsQ2lBSUxtWGR4TjJ1ZkN5?=
 =?utf-8?B?TW9Tb1E2ck02U3dDdXAzWkM0dm43TmFxNEcvdkxLWUcxY245NTFjd3ZoMzlH?=
 =?utf-8?B?dEZQSjNSaCtPOGxlT2hqeGMvVUgvbzhrbGYwQWpmU1liUTZsWnpmYzdab0Zi?=
 =?utf-8?B?dmVGMzJheHQrbFBVQWQ3cEx4WklqQnhsUldNdVB6RjBKTEcvcVZyWDlzL3Ba?=
 =?utf-8?B?WEloNXcxMHNSaXl1WkdrM2tmNGR4a0hTaFF2RDF3ZmNpV24zUUZza2licC9T?=
 =?utf-8?B?WHo5VUVWejhYcTNZOUYzZjllZmxuSWRGc3BtT3ozeGJTbHRreXZHeUYxUWpU?=
 =?utf-8?B?ODcvYWtJQ2FHbytoSzF2NHJtR0V5ditSVW5EUFE2MERsUEpoK2lNL3VySEw1?=
 =?utf-8?B?ejZVOFIzZ2JjeWE0c09HTTNQSjk5bERWZVhzSGxmMEp3anp5d0RFUFJ4K3c5?=
 =?utf-8?B?VmFac1BoZExLZ2NnTTFLR3hvNUEvVE4zM2pvMDZaUnNIT2tkSWVvWE5QZGZx?=
 =?utf-8?B?Ykkwb24rZDYzcys1Tjhuc0psaXZlc3NwRk5kV0N4MmdqbjhEb0FZT3JDMkV6?=
 =?utf-8?B?YTJDckFTRGMxMFBtemFDbjNWWHMzUm9sNCtTNUtBcGhiaHNyeCthSTN1VjNK?=
 =?utf-8?B?ajZWNXJuanZQRFQrZmhkUFNtakkrVU5kT2tNNldoYU5XTWpNMmpwNnhYQ3NQ?=
 =?utf-8?B?MkoyUVU0eUxxUmE3ZVc3UlNQankwOURWNXFBTWlWNkNJUTdJekYxWGtoeXV3?=
 =?utf-8?B?bVJGMzdxaTZxZUtwUWxSRHVud3pNY3lnRFZxOEJXWVZodjk4ZWRNeGxHbHAx?=
 =?utf-8?B?THR4ZDFleVZZZ0ovZ3JHdlcyYitaNHU2cnMyT0lobnJVMmJweHRidXdKVGJh?=
 =?utf-8?B?S0IvMnRSME9pcFJ2NlF0ckpJK3o2V1FvT25BV3lSWUc2YkFMdXpFMzNKMUlq?=
 =?utf-8?B?NEZ0d1k2WUlYa2hOSlFNaEhEeEJCV0tudno3aisrNUdaZCtwclYrYWU1a2R4?=
 =?utf-8?B?WDVNdWdKbWZZN083djZhNjNRRyt1NGUrbDk5Vk8vb1U3UklCUEVnT1VUaGRi?=
 =?utf-8?B?TVUxTFhqTk8raWZXbDJaTkZNSHFNcitTc2xUbjNMc0NNUExkdUY4b3ZJWGhJ?=
 =?utf-8?B?eTB5Zm11SmpQUjV1bGxxdkJhdlQzQnl3VFdkMHJKcDREUWV6aG91V0FKVFZO?=
 =?utf-8?B?WnlwdFgxeWFBSDdncnhubzF1MTFxNDBUTmJhcFVTZWdrQUJoa252STdKdlU4?=
 =?utf-8?B?K0h5ZFBuS2tjaWRpTkZVSmJtUlNLeXFCQndubnRlNlZJeW9LeHRnOWtncnk0?=
 =?utf-8?B?cVlMYTZNZk9vcmVlOG0ySXVTdkMvcXZsbUtnSUtOc21WRjNBRXBWQWdrUHFX?=
 =?utf-8?B?UnFkbFNzVXpjL1d2R0xmSEZvMS8zaEQzNkNiVVZQWmE0ZjE5ck5XQkNUREdx?=
 =?utf-8?B?TC8xUjFuQUovNHZYMDFhMVpKdWlIazIrM3ZINHM0Q21mMFJ1TE9DcnVmR01D?=
 =?utf-8?B?RWhaMUZ0RngxaTE2WWIwMmxaamY4cTE2WTVkeDRQbXJFVmllTkgwT0FFK1Zt?=
 =?utf-8?B?eDZqRTBwK0M0U1FFaFMyREpuOThYcFdlT29vcXZyVFB5dnFQRk5sd0FiMmh4?=
 =?utf-8?B?MWVMMjZWYmRCSXRPTFRmTVVtc2E5TSthOEpKR0dObU00N0s3OGkyYVhiVmlW?=
 =?utf-8?B?c0cyMDF1OUVVMU5ncDI3UVpYQndtRUZWQW84Z1IzbUJUZEpwdkRaNGJIaFA3?=
 =?utf-8?B?dFFwYVZPTStZM1RUTExWWXFMT2Nza2NmTFNGRGNVeVk1NldkODhwWnlxWmZz?=
 =?utf-8?B?aWVRMER4VGxNenN0V1I0VXlRMmxBMDFQSVJET0tpTnR5U0ZwL0lSZjQ5bC9R?=
 =?utf-8?B?aUNvMWNJWGlRUC9oRWUvOE9CZVRTSEZXaTlLYkEveGU1ZUJWeDNKdWs4RUhJ?=
 =?utf-8?B?N2h0UEc3citGRS9jZjVydGcycmZHU2xvR3JsZW9NZkgwcllQOS9ndnlzazlC?=
 =?utf-8?B?aWFWWGdzbnlpVWk5dHBLb1RZZVVVY3duRFJadnRxSzZCUUM2clR5K044eExV?=
 =?utf-8?B?TXBKaytoUHYxSklSc1ZvNXBsOGh3Ry9Yc3RncEVwUXNsaW5HeG1WU0grblBB?=
 =?utf-8?B?My93MC9keVN1alZYWlorckJaVXQ0R1dQdUkyS015S3hYVDZLcE5JVjd4bzQv?=
 =?utf-8?B?Y0o3NDdFdWUzcG1CN1FramlnWXR0WnczbXZzVGZ0b2FJWWNRVENNZi9aSHg0?=
 =?utf-8?Q?9E0IklpXo/w6RTSJLu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LnoyX6EPIqF+uHQL70hVh9xSJquTQrLymY/Udx5xTvKshMfHluS5Zz71wQxW8imsrLEZSQlHEOgmaAjqk4LnIyULlS8FqHl2sXAHD5WYsTue2jAIbJGnFQKVznTNyLP7xy2GSKNPwkSGHt7uBsHOrHc04R7rsJsCKgGH64fwqquGePifjlcVDre9VxAZMtMU7AnAjVLCVtBcXWNx3YeWWRMFVPaF6HFjlmxvyOKobfNae+2X0kM7bP7yOOs5DEyL6mZCPun0/syQ7T8l63c0gA5UWcs4YbNxqVOjrgR8C58cygQoyI8RxKxKUwuzEjBrKyM5YtXYOOJ2cHHTonKvzA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6258.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51e6cb03-7639-4c00-c1d6-08dec6aeb032
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 05:11:11.5743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YpWRLHzQ+noXjG8wwonddAQmaHVWnrLy0DbAHW2EBDrJAiw10zIHKki1rpnXkdITopybKKHDxYE2w6Kp0X+RvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781068280; x=1812604280;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HlyZG4CrCsIazP3GIT0Hs/LrLYXADygVDXdgmv6uVuY=;
 b=HfCq0GZXxdaigw+YLguEpuTssU9oABwi5BOUNYJuRA+38wWYbANXIkI7
 AlP/hMQqc0k6pRXfsB5b3bhU/fM2gAZqv9HEfI5mFc3frLmMk0ORfbHA7
 M4LNNzO9/vG5LfH2oZCg8rTYcXSP4HhU6h412FzzSWYJZMIxecI3jfrP5
 8ZUQDyhw928oQTQtYDGpgdNrtX2MQTLjAjdxLjyThZeoL4RyF1XnWqN8g
 M2w04vhw64sEellHht8OPjjomhSNGpvT77H8DXijahMULpxOqE7M/Nf2C
 1SkFqcp9sxORnqL/YuugRPw7Yq/QC2bZZAxEeX5p6nClNXF46I3qtEcUE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HfCq0GZX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: add missing xa_destroy
 for sched_node_ids
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:michal.wilczynski@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C71B2665E02

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMTQgTWF5IDIwMjYgMjI6MjUNCj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxh
bnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNs
YXcua2l0c3plbEBpbnRlbC5jb20+OyBNaWNoYWwgV2lsY3p5bnNraSA8bWljaGFsLndpbGN6eW5z
a2lAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5l
dGRldkB2Z2VyLmtlcm5lbC5vcmc7IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaWNl
OiBhZGQgbWlzc2luZyB4YV9kZXN0cm95IGZvciBzY2hlZF9ub2RlX2lkcw0KPg0KPiBDb21taXQg
MTZkZmE0OTQwNmJjICgiaWNlOiBJbnRyb2R1Y2UgbmV3IHBhcmFtZXRlcnMgaW4gaWNlX3NjaGVk
X25vZGUiKSBhZGRlZCBhIHNjaGVkX25vZGVfaWRzIHhhcnJheSB0byB0aGUgcG9ydCBpbmZvIHN0
cnVjdHVyZSwgYnV0IG5ldmVyIGNhbGxlZCB4YV9kZXN0cm95IG9uIGl0Lg0KPg0KPiBTaW5jZSB4
YXJyYXlzIGNhbiBhbGxvY2F0ZSBpbnRlcm5hbCBtZW1vcnksIHRoaXMgY2FuIHJlc3VsdCBpbiBh
IG1lbW9yeSBsZWFrIGV2ZW4gaWYgZXZlcnkgZWxlbWVudCBpbiB0aGUgeGFycmF5IGhhcyBiZWVu
IHJlbW92ZWQuDQo+DQo+IEFkZCBhIGNhbGwgdG8geGFfZGVzdHJveSB0aGUgc3RydWN0dXJlIGR1
cmluZyBpY2VfZGVpbml0X2h3KCksIGFuZCBvbmUgdG8gdGhlIHVucm9sbGluZyBjbGVhbnVwIHBh
dGggZHVyaW5nIGVycm9ycyBpbiBpY2VfaW5pdF9odygpLiBXaGlsZSBoZXJlLCByZW1vdmUgdGhl
IG92ZXJseSB2ZXJib3NlIGNvbW1lbnQgZXhwbGFpbmluZyB0aGUgbmF0dXJlIG9mIHRoZSBzY2hl
ZF9ub2RlX2lkcyB4YXJyYXkuDQo+DQo+IFRoaXMgd2FzIGNhdWdodCBieSBTYXNoaWtvIGR1cmlu
ZyBkZXZlbG9wbWVudCBvZiB1bnJlbGF0ZWQgY29kZS4NCj4NCj4gRml4ZXM6IDE2ZGZhNDk0MDZi
YyAoImljZTogSW50cm9kdWNlIG5ldyBwYXJhbWV0ZXJzIGluIGljZV9zY2hlZF9ub2RlIikNCj4g
U2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+
IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jIHwgNyAr
KysrKy0tDQo+IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQo+DQoNClRlc3RlZC1ieTogUmluaXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNvbT4gKEEgQ29u
dGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQo=
