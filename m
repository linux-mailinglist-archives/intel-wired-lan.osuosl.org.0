Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNo2CjRLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:45:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEB6A7173
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:45:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B61C4060B;
	Wed, 28 Jan 2026 17:45:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MU5PwLaB_Uli; Wed, 28 Jan 2026 17:45:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96FBD40562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622321;
	bh=1mPsQiz3bwOLrm/yzard9B1KLDOcOq1YKTEKO/1RZo8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=26fFjNRG4Tj5es5Mm60fTT7XagwUz7glwX8azgdCMiseFB6movN7aYn4Rh5h2B5Dk
	 MBrOLrSXNgMAyF4jtN0c+RetipO/zL+Saj6ypoX09Fh4URKP3ux+lHqCgJDO0cqJiw
	 /StP6ylyTAC727NfMnch10FSdl27sW69MEaJ42OTHsa1dcoAFy84oVBHlayfteXxBO
	 z/48L3M9dtBsYn7OuCSApr2YTlOhNkWfkVb1R+lNNbUK9QJh2UBDcQxlp7fgDznczI
	 ouOmCKj8LzmN9B2TmQyDHLMIyZ7MLE39pOcqacjt1r6dWRSYWvdo3U7gGpKZDVO7RR
	 Op0fRGRuahqNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96FBD40562;
	Wed, 28 Jan 2026 17:45:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 115241AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB6A26079D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:45:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nIGI3sY4RZr6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:45:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F0CEB60788
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0CEB60788
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F0CEB60788
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:45:18 +0000 (UTC)
X-CSE-ConnectionGUID: /iNzJ3ABQVa4HmGqeggJGA==
X-CSE-MsgGUID: tPZEYax0RUO2IT9kUBNjYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70934096"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70934096"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:45:18 -0800
X-CSE-ConnectionGUID: Q6UPh2JyQYewMTbRaYwrvQ==
X-CSE-MsgGUID: oGOUjXBmQ/CIKb+EnXUk0w==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:45:18 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:45:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:45:17 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:45:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nluNS0aDJpGJUzG8eoSwTyPKChG3evyve+K+Ksj6q+mFQ3WOI7eWp+mqPbhpZRXO6Qp21o4z4RAEuoIpOL1hUjuwRbI3NzjgxiF0hJyvc7JwBjsWv5MQwnn1SKdKxRNarmnP/cXgLlD9L3ySPmtMEQ0YAyRQFn4t5LXfaE0DI8sQns2YCrtEoZPFKOtuTDVyT8ryswwouRwkh2ohozrTlpxG+Vu8bAmv6AmF2gP7Gz94noHGp6Y837hvSthkVDeG14QqVLP/h5T/2GTI0GpOHxAVHH9eNoPiQSTEHZuseP/vpjsGZpNaiOcawlL6Dc9QgLtqaoYW6ogDK7oS7ndCzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mPsQiz3bwOLrm/yzard9B1KLDOcOq1YKTEKO/1RZo8=;
 b=YVBUfsyUs8onX+rl//NN/fDhCoPNr3Se04TUXN/wltTmmB3ndnUOYFVW8TKgxexhdNx/uOOTU4cv0g74LA0HXTaySWjhEBsw49kZS0xBpdM4tmYsz9qE6W9ZOeoKYZdp2FSDuHxlqDUZ3KuboXj52yCneoGoSDXOI7Qv5ifRoE3FbbYwVaxtKoQtkWtG1NPSbZ2r7HuehVAEbl1BEOh8+DLTvuO8jGTv1LrgAsk2xesiltYfn3WCaYb+H6QRMKvVusdRh7lzWRogO1xtfs08DKAUCtooVGf9arfiVAAkEuRzn6+CNgLvut4SGs9WLHquG7oxcCYcb3jBDCii64LIVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:45:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:45:08 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 04/25] docs: kdoc_parser: don't
 mangle with function defines
Thread-Index: AQHckHZFwDJf4hvz9EqVGi3GauIsibVn2row
Date: Wed, 28 Jan 2026 17:45:08 +0000
Message-ID: <IA3PR11MB89860FEA17F5958C21A2D6E9E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <05cf7e030b659f26ebc4fdc65e264ea9616c9d9d.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <05cf7e030b659f26ebc4fdc65e264ea9616c9d9d.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: 6d454013-6a33-44b2-b4d2-08de5e94fabb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TXRnOGllNlY2TmtRNGI0d3BzaTJwWGF0MTRaclNhZXlIYmtUeU8vZlhtaEVJ?=
 =?utf-8?B?ay8xbitid0JDMFAwRjdjZjl1ZnpzdGZrZWtQN2gySzNoZFVqL01qaDR3cWVn?=
 =?utf-8?B?c2N0Rjl4MDR6R08wU0UreEJkV3FsbnpsbmYyMU5QcVJRS0pSRThSR2t0OEVC?=
 =?utf-8?B?K3F0ZVdrZ0cyMWVRQStycllXcUNNZG1vWkJUYzlBMThVdUxITG5zZFF2UHds?=
 =?utf-8?B?QUd3MWpDK3o5Z2dha2FKTDhGTVk1dUc4Wno2WU80eHNNNjA3QmtNSDdoYUd6?=
 =?utf-8?B?WUl4bHJ3a0oxR21PLzRMQlZUak9YUGpFcDkvdTh2Vk5jTDBJUUJMZ3l6UlZR?=
 =?utf-8?B?MFJRRVk2emR2TGJmRmxmZWxaYlZSTkZ2Y3VGcVFkUTZmOW14NjVQajhseENK?=
 =?utf-8?B?UFZPVEtnQit2QlJSQStzeHBGMmcrbHYzamZkMjZIdElkMEhLSldJb2o1ZDBw?=
 =?utf-8?B?T1cwZjZTa21mZ0JNN0p5cnM4clFidDhXdFVoUStqb0tzU2dad3lkek1jSlVV?=
 =?utf-8?B?RURxYmRkaXdrRnRrR0RyRE5GZTFyeDJtWlFMUjVSQkhBKy82cGFqdXo3VERF?=
 =?utf-8?B?WDdLMDZTU29VdzRHVUlNZFplQytkQUhsTmpkVW5sU25xTlZNbkx5K2xQcjZR?=
 =?utf-8?B?dVd1bzNDVG1qL1VSVC9IMVlwN1gwMGU2SnlZQjB0cndqS2Z5VzloNXhTTFIy?=
 =?utf-8?B?N2xFWkk3YU4xSUJFZ2xiUmNFeGFGQmVWSy81UTVwdFFhWGs5S2FuYnpsT3RE?=
 =?utf-8?B?ang3NE5yRlA4ZWgvTHRPN2NXckFCYTV1dHh2Y0c2UW1sM1Yvc3N6UEZxL2Qz?=
 =?utf-8?B?OXZCNlkwWXB1V2lqb0dseE0ySTQya1lML0pObkpUV0F1Q2N5aEJaRDNZYmxV?=
 =?utf-8?B?NzExOXFEQ3htbnNKNXlrNDQzM2c3RUdxcEREbS9tSzhJc3FCWnZnUStuVm5p?=
 =?utf-8?B?Vk9qVEp5NFBIWUVRTnBpOW5PdXhzb3NxWkxNLytPcTlWUVVYQURHNFpNN2xB?=
 =?utf-8?B?RlkzTnNpUk1TZFFyYzVJTzRZeCtuSDk0czZNUE1sWFNkbWNPRE91ckdRZlpy?=
 =?utf-8?B?MlE3cGpxWEhQVm5HMGVzaDVQTXNIdkVobm1xU05qbUh4NGtNNWV6bkN4K0hz?=
 =?utf-8?B?NWEzbGMwMnhnYkRZYjhXSzUxQ1RoZTVzNGVaeTRYNTFPKzg4VEloSTVGTjFk?=
 =?utf-8?B?a0J5MXY0aXh6eWhVaVhrNHBHc2FrWUtBUzF5VFFZTXpMWlJRUitjMmYyR1JZ?=
 =?utf-8?B?bjAyR2hCc0RieWlSekY2SzVGeEV6U2ZZUjZ5YzZTcGtGc2poR0cyRG8xVytH?=
 =?utf-8?B?M1VLcXZUTUlIWXFYSGh1eUxucmordzQzYzgwRGNtbi9pLzY3WnM1NGtHNjNI?=
 =?utf-8?B?bXlEeldQZzBTTmZxK2dBSHI4eFFYNEVidzdQOXh0aG5DZUJuLzNrMEhKcVNs?=
 =?utf-8?B?dC9ST3BSd3F5UTZwS2lmSjgzZ05Ta0VGL3FOVnppTUdPNVBjdXNzWis1OUkr?=
 =?utf-8?B?STFjM2NUdzJhdzVuSktVbVhOSGttUGwzSXhNN1RsK0JLdEU2c2JmVk1YWnpE?=
 =?utf-8?B?bUdHS2xubmROczd4OTdzNTlJdE1tTlp6SHRXbHhDbk9rUXplVmg0Wi8zeXlG?=
 =?utf-8?B?eHZYa3JFRzhmTHE2ZVpUcGw2bU1QOVpYUUhQMDVyOFRSVEp1RnZjcFEwdmtI?=
 =?utf-8?B?YkxVNjFPUFltWkx0eUEwV052dnBmTHNSN2toNStiaEVZMk0zbEx2cnBmNkMr?=
 =?utf-8?B?MThmUzZlaXd3ejhDdTRkL2t6RlVmdnNzZkNPcE5nRXNpeHBWWm84N0VJVFZL?=
 =?utf-8?B?NUo1U0l6YmdQQTlOdENhNTJjeGpmbnUreVEvUklhTFArK09OTzAyMWlQb1Z4?=
 =?utf-8?B?WTNGRFlWT0tVd09hRjFQZ1QvUkpoMDYraWpEenFKUW5EV0h2THNqUit5SEJW?=
 =?utf-8?B?eU9zb2JQNGJmTnA1bEk1azhXNjRXbHZUYU9CTStrVHZBUCtTUHI0NkVrS2w1?=
 =?utf-8?B?RVlzaEFicE5ZcnRibW5hd3c5TFBMUEdJcE5URnRyRGIyK2ZpWlpwb1ZZLytk?=
 =?utf-8?B?djRZd2FFeVJoM3NubnRXR0lEUndzSzF4bkovZHNZMllVSUEwT2RDTUtsbmVw?=
 =?utf-8?B?Mjd5RlV4Mkw4K3BXYTAxOWE0Tkc3T1lhL1V6Zk5SdzZtWml6RU9FamdCOWYv?=
 =?utf-8?Q?OJc/sFsUEtHAskW1BctEKF0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFpIK2xWVjVWMCtGK2VUZ1FXZVliYTZyVHNqOHJlYUNlUHdxcDBiN3BQUldH?=
 =?utf-8?B?blBwNTh2eHRrMW5vUC9sOGdhT2NYdVJSbFNub2JpMldNSkt0MTBTbWlrckR1?=
 =?utf-8?B?Tnc4YlRHZVBCRk9vYkJPNUs2ajVKZXNtYlpBOVRvWnNianFacXduTTdjcHgx?=
 =?utf-8?B?dUlQTzRjYmpnZ0RWcnBSRmVXdEtBMnBEYUk0Q29QSDBId3ZTdW9uVU56ZTdp?=
 =?utf-8?B?M01UbjMrNFZiZUlYOVo4RHhwRWVFWFJGZmdLRW95ZlhjaUpka0o3dGxxbk1o?=
 =?utf-8?B?WWJlSHVkWGF5ZkRDbnA4b2JrWGNhaWI3WkhOK1grd2hwa0FNNXRnL3c2QjB4?=
 =?utf-8?B?eC9lWFNQL1dsTmlvL01ZVXI0UmhUeTIxYWplL09FTjBFcTlYMnJ0dWREQ2xG?=
 =?utf-8?B?TFYzMitWLzBGakhUQmU3ZEhUL3NEV3pmUmxjYjc0ZDlML2RwNE50TkZya1Bv?=
 =?utf-8?B?S0ZtbGpmTG4rdTVjejZZZGw4QXp5VDJ5WjJhY0RWVDRvWWxQazhBSjRWbVZS?=
 =?utf-8?B?dXZ1K3JDaFJKMjFDMnUvcjBoOE9rcE1EZ2R2alM5YkVKMGZCeFpIdEg2d0V6?=
 =?utf-8?B?ZUNZZjBlWmczM0xML0duVVprODQ5YlRUblZoVHdJWlFpbEovSjJqS21Ralpw?=
 =?utf-8?B?M1lDeWRFTjk2OEVKdnQ5TFFoWk5PZCsvSkttdnN5VmIrM0Yzd3JRTGp3NFR4?=
 =?utf-8?B?ZVZUTmliZDNUdm5TaVdTMlBaa09sSXo3dmhqcVZFVzdWZ3pOSU0zV2pGVWsy?=
 =?utf-8?B?T2JySWptbldRaEMyT1NWS3FmaHd5aDBKQ09MQTdlSTBMY1Z0ZExhbGZBcW1x?=
 =?utf-8?B?b0JJaXFKN1RQZUJLTlN5QjZSR2hteUY2YlZCb0JJSU1qY1M4b3ZpWi9abzY2?=
 =?utf-8?B?em5RaEJLS09ZZS91b1ZTVDVQSDE2cWV4L29aaWJjZkJkS0R1QkliejNWeHJz?=
 =?utf-8?B?VFB4ZEt0VzhtdzVtNU9vSTNqejQydmhTYjFmdU4xUE9aOUh5SzVoak9HY3d4?=
 =?utf-8?B?N0U2UHorbVFVU1lTRm9lTG0rTWdHMWR2UFN4TDk4aVNFZFN1UWZXRVBacXd5?=
 =?utf-8?B?bnJMVlRBZ0VJb2MyZVgyZFZ4TS9Od2trZlMwSVF4ckgwL0RpTVRzU2EvcmtJ?=
 =?utf-8?B?NE4vQTF5MXl1ODdSM2w4SHVZUmlzanl5TUt2VkgxTG80SWZ3bVJtaGNHeGpT?=
 =?utf-8?B?OStMRzFncVVqNzd2MHF3bHh4QWo0MDlnWHA4OWo2NHhQSUcxVW9uRnVielJz?=
 =?utf-8?B?YWI2OFpCZDhabDV3akM5K1lZSm5mN3lvMEo5dkRKUVMxdk80cTFMbEN5UDFF?=
 =?utf-8?B?UmEyRERyc2twdUFlN3R2RXRWdXhXTXR0Sjk5QkNITmFkcllYREpPQUc1bWE1?=
 =?utf-8?B?eXZBMW9UNEtJdENnNXd4VkZ0VDE1QmZmQVU3eXhRS3J3N1AvUStVOVhocVBu?=
 =?utf-8?B?VjhlOFZ5ZEcyakJLMFc4dmEzVWxzSzdoaVFibFZQVUlsdUNUV0p1dTFrQU01?=
 =?utf-8?B?d2VGTHBlOFFBRGk1R3FCeW9zWkYxekJoUm5FWWduVkpZZXRXU1JlajgyUEJO?=
 =?utf-8?B?ZGxzMnNJNjM1S2lCVndJRjVKc2hpNGVaaEZ3c1Z6K0htMWdKUHAxU3pYWmxG?=
 =?utf-8?B?ditjTGc2MHV6YTRaS01neWNwVmJBMGRnSjduNFo1WUF0L0hld0c3dkFwSW92?=
 =?utf-8?B?Z2ZsWHh4RWVscWpXcFNJQTBvZUVQYm5wYUNQeDFDRTZHMnd5WkRXVkQ3akR3?=
 =?utf-8?B?YytqMzBOWWZKZDNrcnZldCtRTG9WaytkbytxWWJ5SW1RS3dhK0dIQWl6T2RR?=
 =?utf-8?B?cVIzS3RNQnkwTG10K3l3U1hxYzVVam41blhZa21yNURXME1Iajdub1h6clk1?=
 =?utf-8?B?UW12YWdSbFFySFd3S01BYjVTQ0YzZlFmczBTeXpKRCszSkp5TTRtOERKUHFn?=
 =?utf-8?B?TXhMa3hYSFl3L2FTYzZtdldPZ2JERWJDUHIrU1dYS3pDYjRPOG5yUFJZMDUr?=
 =?utf-8?B?WVBFTTZ4clpyZGtTMUVOZWhjK2lhNEhtUTQrTEd6cnlHNTZTZ3RXU0JFNnNy?=
 =?utf-8?B?S3d3YkxDMDFMNTE1YVpiZk5uUzJTTU5MeDhqVTRmeHVEOEZXMm0zUHBTTDVi?=
 =?utf-8?B?QmxTYUgzTEd0NUVwWFB5cFk2b0pkemluVnNyZnNERWpldzV1ZE92Rm9NUXJ4?=
 =?utf-8?B?Wi9TMmlyUmJubXlqeklHL3VITGo3VGxHSGZSNlF0b042cXpsRVBQL2E5Rm5V?=
 =?utf-8?B?UENTbVJXbjkrdy9pTHFEQ3R3am45MkpOamE2RWowSlZ2TnFWeXplRUNvS0M4?=
 =?utf-8?B?RGt0MExEUzBGeTFYdkdjc2JsM3R4M1lNRTV4VG1RMEZHZ0IySEJsZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d454013-6a33-44b2-b4d2-08de5e94fabb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:45:08.7855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p5wXZl2VJYFXHNzkHIi9/wWFyFvjXvqspV9QpoMbjmGemD9iDJh6QexySyl9et1hYGuyw11j8RbWnpFri/gIIBPEqi1dGmom9byEfKYd+Tw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622319; x=1801158319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1mPsQiz3bwOLrm/yzard9B1KLDOcOq1YKTEKO/1RZo8=;
 b=DfBSpQDkfzEa1AYyZRBw7KKmITkM+FIv5nv8Zf04ZNGS5dYyPIOhXFaj
 Xo7KmVoXB3osOMwkVYscC2JezErmD7frOCRRD9WOWl6L9OOlfXwo5HWQ1
 EGXD+Ow/EJOOCDHG2Yneyud5XcoA8HiTE0ETbRniib01KwJXXJay4/9Zv
 GOP0mvG/YtnQ7CGpPy2dMkFpHM01954qrI3JO1wL1hQpozmthrXGvanoC
 eMwpUAwugiHmv+fQ7gx9wwsBiYWBgxYcQ6cLLOziLpoD985gvk/NNUF2x
 rIXXt1tZDndwSsYnMPitaiYHZVCfxty+LANMg8n01387gch+Tib2dYeSL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DfBSpQDk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 04/25] docs: kdoc_parser: don't
 mangle with function defines
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,infradead.org:email,auug.org.au:email,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9FEB6A7173
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAwNC8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGRvbid0DQo+IG1hbmdsZSB3aXRoIGZ1bmN0aW9uIGRlZmluZXMNCj4gDQo+IE1h
bmdsaW5nIHdpdGggI2RlZmluZXMgaXMgbm90IG5pY2UsIGFzIHdlIG1heSBlbmQgcmVtb3Zpbmcg
dGhlIG1hY3JvDQo+IG5hbWVzLCBwcmV2ZW50aW5nIHNldmVyYWwgbWFjcm9zIGZyb20gYmVpbmcg
cHJvcGVybHkgZG9jdW1lbnRlZC4NCj4gDQo+IEFsc28sIG9uIGRlZmluZXMsIHdlIGhhdmUgc29t
ZXRoaW5nIGxpa2U6DQo+IA0KPiAJI2RlZmluZSBmb28oYTEsIGEyLCBhMywgLi4uKQkJCSBcDQo+
IAkJLyogc29tZSByZWFsIGltcGxlbWVudGF0aW9uICovDQo+IA0KPiBUaGUgcHJvdG90eXBlIHBh
cnQgKGZpcnN0IGxpbmUgb24gdGhpcyBleGFtcGxlKSB3b24ndCBjb250YWluIGFueQ0KPiBtYWNy
b3MsIHNvIG5vIG5lZWQgdG8gYXBwbHkgYW55IHJlZ2V4ZXMgb24gaXQuDQo+IA0KPiBXaXRoIHRo
YXQsIG1vdmUgdGhlIGFwcGx5X3RyYW5zZm9ybXMoKSBsb2dpYyB0byBlbnN1cmUgdGhhdCBpdCB3
aWxsIGJlDQo+IGNhbGxlZCBvbmx5IG9uIGZ1bmN0aW9ucy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4NCj4gQWNr
ZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiBUZXN0ZWQtYnk6
IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xp
Yi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDEyICsrKysrKystLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gYi90b29scy9saWIv
cHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gaW5kZXggMGI2OGIxNDBjZDAyLi4zYmEyY2Rh
MjQ4N2EgMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5w
eQ0KPiArKysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gQEAgLTE2
Myw3ICsxNjMsNyBAQCBzdHJ1Y3RfbmVzdGVkX3ByZWZpeGVzID0gWyAgIyAgIyBUcmFuc2Zvcm1z
IGZvcg0KPiBmdW5jdGlvbiBwcm90b3R5cGVzICAjIC1mdW5jdGlvbl94Zm9ybXMgID0gWw0KPiAr
ZnVuY3Rpb25feGZvcm1zID0gWw0KPiAgICAgIChLZXJuUmUociJec3RhdGljICsiKSwgIiIpLA0K
PiAgICAgIChLZXJuUmUociJeZXh0ZXJuICsiKSwgIiIpLA0KPiAgICAgIChLZXJuUmUociJeYXNt
bGlua2FnZSArIiksICIiKSwNCj4gQEAgLTEwNjUsMTAgKzEwNjUsNyBAQCBjbGFzcyBLZXJuZWxE
b2M6DQo+ICAgICAgICAgIGZvdW5kID0gZnVuY19tYWNybyA9IEZhbHNlDQo+ICAgICAgICAgIHJl
dHVybl90eXBlID0gJycNCj4gICAgICAgICAgZGVjbF90eXBlID0gJ2Z1bmN0aW9uJw0KPiAtICAg
ICAgICAjDQo+IC0gICAgICAgICMgQXBwbHkgdGhlIGluaXRpYWwgdHJhbnNmb3JtYXRpb25zLg0K
PiAtICAgICAgICAjDQo+IC0gICAgICAgIHByb3RvdHlwZSA9IGFwcGx5X3RyYW5zZm9ybXMoZnVu
Y3Rpb25feGZvcm1zLCBwcm90b3R5cGUpDQo+ICsNCj4gICAgICAgICAgIw0KPiAgICAgICAgICAj
IElmIHdlIGhhdmUgYSBtYWNybywgcmVtb3ZlIHRoZSAiI2RlZmluZSIgYXQgdGhlIGZyb250Lg0K
PiAgICAgICAgICAjDQo+IEBAIC0xMDg3LDYgKzEwODQsMTEgQEAgY2xhc3MgS2VybmVsRG9jOg0K
PiAgICAgICAgICAgICAgICAgIGRlY2xhcmF0aW9uX25hbWUgPSByLmdyb3VwKDEpDQo+ICAgICAg
ICAgICAgICAgICAgZnVuY19tYWNybyA9IFRydWUNCj4gICAgICAgICAgICAgICAgICBmb3VuZCA9
IFRydWUNCj4gKyAgICAgICAgZWxzZToNCj4gKyAgICAgICAgICAgICMNCj4gKyAgICAgICAgICAg
ICMgQXBwbHkgdGhlIGluaXRpYWwgdHJhbnNmb3JtYXRpb25zLg0KPiArICAgICAgICAgICAgIw0K
PiArICAgICAgICAgICAgcHJvdG90eXBlID0gYXBwbHlfdHJhbnNmb3JtcyhmdW5jdGlvbl94Zm9y
bXMsIHByb3RvdHlwZSkNCj4gDQo+ICAgICAgICAgICMgWWVzLCB0aGlzIHRydWx5IGlzIHZpbGUu
ICBXZSBhcmUgbG9va2luZyBmb3I6DQo+ICAgICAgICAgICMgMS4gUmV0dXJuIHR5cGUgKG1heSBi
ZSBub3RoaW5nIGlmIHdlJ3JlIGxvb2tpbmcgYXQgYSBtYWNybykNCj4gLS0NCj4gMi41Mi4wDQpS
ZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+DQo=
