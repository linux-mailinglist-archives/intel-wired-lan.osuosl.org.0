Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5FFC253F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 14:23:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF318616DE;
	Fri, 31 Oct 2025 13:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ky-x2Qb0SPr8; Fri, 31 Oct 2025 13:23:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FF776170B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761917024;
	bh=w1JILFl/UcZFAOOj/PqOpFkS4GGwOzxeip6H9V5l7qY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i1887/J2kJkAK+75yQb9LMc4l5LXkEY4SDMbIAXp/5+Q7MxGIIqJXcguo4IrjyRGs
	 yn61AXLLoFRK+5cLjplxGhUhPeOmYgM/7g2jG7M1qZxRBimqP1s6yfADEz2YTfsmKe
	 S6r/4m8Aqq9UX0AuL/HHPusibYdG/wrk3xtQXAshbbSnMNJUcasf3KS3AXGBu3vAKm
	 KQ+7H6BWr3CPxHZPQGqZZ5t+v0ZGtKsUc5vj4XxvEcSwdquwPxZTGYVu+4WzlpSnIw
	 TZ/ZhS533mByUakPSvlr2A96mrEyQPEg0Rsfc4GqDYvlSssd9o4rdAx2KL8NEfTPKh
	 VyJzFkTiXhfSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FF776170B;
	Fri, 31 Oct 2025 13:23:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C4098445
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 13:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA8FF4112E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 13:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PMJL4dEUlU3y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 13:23:42 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 31 Oct 2025 13:23:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D223141120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D223141120
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D223141120
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 13:23:41 +0000 (UTC)
X-CSE-ConnectionGUID: gzgYKzmuQpKjQPdW042xQA==
X-CSE-MsgGUID: pqmCpDkPQW6ubT2j/2//WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64175018"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64175018"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 06:16:36 -0700
X-CSE-ConnectionGUID: bMBY1z8ZQtOlYurn6gRC+Q==
X-CSE-MsgGUID: aLzEqNCgTtqUjxLFg5AiKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="186171220"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 06:16:36 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 06:16:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 06:16:35 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 06:16:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UKWdLYTip/Ow4MUyFhaUlk4kkUNa9U2oya+09gTqCSJeMwtWaWMgVV4cNeOB3FTY7rlcK545BHp0b2OiRii0gMyDm6YjDLxKApZk90qafW4OHy03WLZO9kXrek98r7Qjs/dC8GLGcovIjL22q1sUPb3Tfer6LVAxsGj3x9dyedDFln32db1d54asJXUDHUirDj3qYN5DJk4oifcKj4Z/nZNrFWrNNR4+NAhlzIeWZuJ7Qocd9mrsg+T9QFvM5u1dKGiPT4te8hHJ0ln8ebo60yIhTFLxcqUI51HoOdIPF6qEdRjotTvOOpicPfq9/Vb4Mdp1KIpGt5Gu8hvADy01zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w1JILFl/UcZFAOOj/PqOpFkS4GGwOzxeip6H9V5l7qY=;
 b=LJFOmb6MsVb+536EPEpVvbeOC8OiO3eh7ApOfnv9AFGSS5hjlObRzpifLn1l362pGpBzwdRCHeMn6nCnKz98bZktt2u19dHkkbnPsQCkfBOZBf++G6O00Y6GVinM8EBr2T4jyLfmRtCO+1segDVkF8a0Vons8XQ/yf/bN+obRHgU5L4rGLIISMvQQLk9bc4Eg/E/kLm4rVI8AN+mcbxjsOjlJC5zHq73oYw2yKUS7uLsC02lf+OkNTsO6pnucJH3Thpisj9Gvl3VwsA1fSWexlV305U46X+veL2eitmj9wQ1gvBvW/HOQOG7lCIWXPhnl7SGeJbUXMxixFEQ/0f5Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by CH3PR11MB7179.namprd11.prod.outlook.com
 (2603:10b6:610:142::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Fri, 31 Oct
 2025 13:16:32 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::d4f7:82d0:1ef9:7913]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::d4f7:82d0:1ef9:7913%4]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 13:16:31 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
Thread-Index: AQHcNt1Odp6Twuez3Uq3OwWXS+xf/bTcCh2AgABYOcA=
Date: Fri, 31 Oct 2025 13:16:31 +0000
Message-ID: <PH3PPF67C992ECC03C41F65270D5ADF9A5991F8A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
 <PH0PR11MB50136C164F50663E363A7C6796F8A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50136C164F50663E363A7C6796F8A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|CH3PR11MB7179:EE_
x-ms-office365-filtering-correlation-id: 63449933-8a25-49b7-b31f-08de187fb566
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OTVZL1Q3eDhpVHN1OXVBVVIxMnRhZnpUSUdTVFdiaWxab1lQTVJzNitjQmNP?=
 =?utf-8?B?SzdJM3JCVDhsSFIyYm9XQkF5a0FOYnRQYWRHQ2oyY09JZUZyNFozbFNWM0dG?=
 =?utf-8?B?bFIydFJ5SXRRV2Zza0dkdGZmakJQRzZYRUtsVlhvN3VURm9HcHAvQ2dsMjRk?=
 =?utf-8?B?S2NjdnA0MEdFS1BHUmpIdnB2ZENTTFB0OUlDVHJuRFJyS3RtcTByYjNoUVlY?=
 =?utf-8?B?ZHBtZ2loTHBybWw5V3lDWjJGRkl6VVpwMjM2RTk5SFdvUXZvNjNuUzVra1c3?=
 =?utf-8?B?RjRKNXJnMy9jSTdCYWVNNHAvZU9nZHBMSlBUeS9mYVJ1U0M2c1NHck1PRnhW?=
 =?utf-8?B?SE95L1E5Q2JEUlNmSFFmSGdPbVhZbm1lemFtVHQ1U2dzT0swMXIxWm1OcFZJ?=
 =?utf-8?B?VlFPcUw1ZURpMFFxb0FwVzFlYUpydlBWS3VTWlVQVE5BaHJVRlQvZ2tyUmpl?=
 =?utf-8?B?ekhMRFBaYW9zT28xcDBVelBjSXFyZ1RJTk40WWRvVTBKaVBJaDNsOWZhUHRy?=
 =?utf-8?B?KzFHWUgxYkdTVktqek9VUlh4QTRKajRjOSs2aFV3c1ZXeWNqR0JoK1FEQ1VS?=
 =?utf-8?B?dU1ncWlKNDhKeDExWEdzS0RtTHM1N2N3UEg1SVA0ODZPUjM5Mm0zZXBVa3A3?=
 =?utf-8?B?clVlS3ZKZUVnbnlaVnk5bkJZeXVyaVVrYnlGMERwMEZWTWVNU3JHN25PK0dp?=
 =?utf-8?B?UmxsTkJXNnNIamluNjFqbStVYmRNQUZCMFhyVEluQ3p6SE0ydG9xNHhFR3Fo?=
 =?utf-8?B?cjQ4QWt4Z0pRMzZRRUlCUHJycEhHMURHRkhmdlhSejI4NGNVeTdtd1lFS0Q3?=
 =?utf-8?B?UWVoOXhhcUozS2dta1hPUmR0MXNkOGpSS3BvTkp0MGhHL096ekdZVUM5cGE3?=
 =?utf-8?B?cDBmS3gvU0IzUHRJTDM2d2VuMkZOYVl4VS9wUVlaaXQxclBNNjVidFdkN3hS?=
 =?utf-8?B?MlFkWmQ5bCtwSnRxVVR0a2pMUTJScEVEd3d5elE0U3FIdzBJODd5RkpQT2lJ?=
 =?utf-8?B?MmlyYWFmUlhhd2g4Skh3Qjg1ZkJ0VVprY0RaSXpJZVovOHJtQm94c1U1WFNF?=
 =?utf-8?B?K3d3OVhpMWdCQktuWGJnU1V0QkJtV0pVamM0MkcvdnBlZkV1eHJkenhBRDFj?=
 =?utf-8?B?T1B1RTk1RTZPMTFkUSs1b2pQekhlMkhrZFFWT1NmZ2RIZ3JoWXZlUVg3STJX?=
 =?utf-8?B?dW9UK2Z5MUFOZEY0U2hjaDJST05URG8rNllmeTZoTHlFZU45dTl4K2dlc0Jv?=
 =?utf-8?B?VnVRS3pwTnFXcUVFZktNWFdrNWlYR1dhUThxSS8wQnlQY0J2SXdCUmV4TG95?=
 =?utf-8?B?Vi9qRDFkK3FlbmluOHc0MWY2aGo0c0JqVkhjMXB5WlRvRXFRMy9WZXVDd2Mx?=
 =?utf-8?B?UnZpRDlWUldicFNoZkJwcWl0ejFxTG5QU3BNSUF3enNkTWRxTFBlQzd3T084?=
 =?utf-8?B?akJlVUkzbEhFTGF0QWwvQTRQYzZ3Q2tzNi9uOU9veSt2YWZoSGpsSlJiM2xu?=
 =?utf-8?B?SCszdWxQOFBIRWZMVEE4SmRwL2dWbkthRk1rdHRLbG1VSFkyaUJ1MmZ5dk96?=
 =?utf-8?B?WDNhelhlSFZHZ0FGVTV4bGxOdFFwRVY2VUNOWWFEejRxWU85OElRMVFwZ24v?=
 =?utf-8?B?ZWpOZGJybGxzRm1JSm9pVjBnWGNDMm94SmpkRDcxalN0ZEV0YjNqb0lBNVNk?=
 =?utf-8?B?cjRqeGcxZkNWMFgwaXFkeGFqRk45RTBmRmNXOEs1bzBCUWVqdENJWEJQQ0p4?=
 =?utf-8?B?Lzg3ejh0YVAxZDdXT1JPUGhqZG5ZbEpjVGRYZDdHc2pwc3EvaWxTbi80eTds?=
 =?utf-8?B?ZUlxQk9aL2kzTHpka09kZG9RWVk0eC9xU1pTK296ay85NGEyaXV4aUpnZU1O?=
 =?utf-8?B?bEhRN2xGM1JVcDlZak1NT1ZMSGhnUDgvQjdTUVVzVWJzNmtsb0dXV0VLZ3Rn?=
 =?utf-8?B?T216ZGZBQkpsdEdoeWZXSm1nNVFPNnAvSjlKOC9ZQVlQZUozcEtBUnJhREcz?=
 =?utf-8?B?aldBZ2M0VVFycEJkNWlDZFgxSUovcWh1QXdRait1YkUvWkJjVXpQaWh5T0hJ?=
 =?utf-8?Q?Ji2YQQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RzRCU2dJQ0ExT1JoYmxHWlpKTDJsNUdHeG14MEZoK0F1dWltRHpFWGdGQ0xW?=
 =?utf-8?B?ay9vZkdyWDJTT0h5ZndROVkvVkhpaEJESUNDYW1mRUdKUXkwTTFEVVFjWWs2?=
 =?utf-8?B?N25JbjI3MldPL0RSb0tJclRCempxZXpndyswTVR6MGVtNzBwSXV4bGtNdjdr?=
 =?utf-8?B?U21QcEZuR2JiTUVvMUV1d0MvWkp0ODNFUlMrbzFUbXQ2ekNmWTlNVDgyb2hs?=
 =?utf-8?B?L01hQVV6NEIveEJtamF2OTFjdzRYdXB5TnRsUnBsaGJNQ2V3OTVQeDlwTkwv?=
 =?utf-8?B?Nno5NndoTHlmUk5SakxWbDJ1SUF3MzZTdzhvYTcvZ2NjZEtRSWIyWEJGaU5V?=
 =?utf-8?B?NzBPbDBTakFvUTlqd3hNWU1mYzFDaVI2TnQwd2l6eWFETytPSnJEUktvckk4?=
 =?utf-8?B?bUxocTVhcGEvQ3BqSWJTQ0JBa3hhZWU1RkFrZ0FEYWNicnNZTWoybjNuTXlV?=
 =?utf-8?B?Nmg1MzQ4dno3K1g4U0lOSWM1ZWxQeFpNcVZYQU9XUDFMQ2l4L2tVREJyKzJN?=
 =?utf-8?B?dEx0Q3I4KzlyTGVVV2FWYWJZa3laSU5DYkZXLzdUc1hZSmhGL1crT1dmVTdi?=
 =?utf-8?B?SEpmV1BiWkVadU9NNWJqYmY0bjFPZGxvMXdXQzYvRjY0REcxRDNNclNiQjdD?=
 =?utf-8?B?eU5TbDZhbFJNT09iVmN0RmZqK2VpZkdDS3phZmp1T0s5TmpUK3VxdDNjSkw2?=
 =?utf-8?B?Nzg3NG5JRWp5cGtteEVSL2ZlMzZKSWFGS1lxSHZzWEtFSDFzdTJIVEVJakF4?=
 =?utf-8?B?a2JEWlc0ekJ2VmtzMnN3dlRaMUhranl6QnFkYVNrUTdmU0NNRkVlV1daM3hp?=
 =?utf-8?B?eE9BTmE0U3UrMEkwNUFiYlFTZlZ3ZTVvOVhjTEVXOGp3am4veEpUL3craTlw?=
 =?utf-8?B?bW5rSDlHenYrbmN0M1QwVlFUWTE1MEYrRFA5SW1RRC94R1ZhMG1JS0duL0NB?=
 =?utf-8?B?UC9raE9WajNEYmoycFMxcDRWTWpZOWZlVnVScE1pUFI4bFR6OWVuSThwSlM5?=
 =?utf-8?B?T0tqQjNUWDMwb1VpUWdBM0ZLaXFrN1k0aTI5ckRRbXRzNUo1YTFQZW1hSCtT?=
 =?utf-8?B?cElqS0dXZmlNYXg0UCtFUWdPcUdQRDdsaXlMMkFMbGxHNlpqSHNMeUdzY0Iv?=
 =?utf-8?B?dVQ2ekRGMlpDNHJwOWxQSFplcHczVEwvQTBOUjVvYTdzTWUyOWsvNHc2bHo5?=
 =?utf-8?B?Rk03ektxbGFuVHdmUjBVa3MrUEZsaUdiRXM5YWdxRzM5L0tGb3RFSExwOFdr?=
 =?utf-8?B?cmVEMm9jb2d5VEYyQ25ST3lPTlI3OE5zNWl5MkVmZGx2MGRGV0NVNU5hQ1RL?=
 =?utf-8?B?cEw0NmpCVHZtZ2lkRjArVjZYVUFNMHVGYS84aGo2dlh0VGgwRi9vSzRqd3hl?=
 =?utf-8?B?TmxnbEhwRGo4SWhZSS90YU4zQ1pJOTF2UjQ3d2k4N1lKN01DcVNqUld6YWpI?=
 =?utf-8?B?ZHBmWE80VlJ5Mm9pRG13OW51cjN4bkoxcU9GK1Z1bE11ejB5UzhvamdxK1h1?=
 =?utf-8?B?dTMrV1RjajdZK28wVzdDVEY5L0gvdDl4SW1tNDhsSEdVUWszUG1vcUZPTWlR?=
 =?utf-8?B?T2dOQ0U0TnNDYkt3WTh6bWJvRzZWbU9wUEx0UXNGZ2hhcmNpMUhXeXJIMmZp?=
 =?utf-8?B?QjAwVkdnVHFXdlhwTGNwT2theHNKcy9SN0NqVzVVVm5PWkpzSWttS09sVGpr?=
 =?utf-8?B?RjdMWVl2cVBJb0JGYzdPTzdpL2pBZlZPZkY5dFBHdkJKREVpczZ6c3Y5ZmNK?=
 =?utf-8?B?Z3BEbWl3ekhzdzM2M1pZWEs2U1FUeHV6eTkrcFZZSm5USjF2alBOR2JhYjhr?=
 =?utf-8?B?RGZOVEl1SklmcjlqTjAwNGZ0OTRhMktGQ2FNcktxcnBSdjQ1NUtNbVh2M0Rm?=
 =?utf-8?B?MDlLdnVQZUVLc25zVjZRdzhueW52QnI3YUZhTGJ3UmR1ZmUrLzltd1JaK1BB?=
 =?utf-8?B?SXFHZ3V0N3psR2dqVWs0eUZaQzAwbmhaU0N0QkdJM3hUUHRNdzlmdS9hTXZa?=
 =?utf-8?B?V3ppcnE4Z3BlMnZKeHV4WWp1Ylk1SFptWWl0bHZpMDlJLzZwejdGSEJEYTJK?=
 =?utf-8?B?M2JVZ1FjOEZBOVUvdWNHVWdlZ1ZzMlkvakFwTnE5TExxTGVrbzhDR25MY0xG?=
 =?utf-8?Q?kF7Qx8pVBOrj/UVRthapX5lyG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63449933-8a25-49b7-b31f-08de187fb566
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2025 13:16:31.5895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C/PWECKW072SCBX9LBLWApVdqQl4iIexKE8bJ8ZFVv7FWG10XHIXgGniTZzEhoyyybTEHzrbhQI6D1H4OeV7Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7179
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761917021; x=1793453021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w1JILFl/UcZFAOOj/PqOpFkS4GGwOzxeip6H9V5l7qY=;
 b=ghUMoTrjFrPorzZxvb0eSuXA2uU1MQ294Z/6cEgIusuT+UDlaAWV2TpZ
 /hPzrIfiSBjpNHd0LnJM1e2niOhz3cDxlDl4GzLBJYaK7Sj6VN7e7Zuv8
 9t4Ep5/dMr7Ycu9lrXTXZtAovZ6PSfSqZGw9+n09ELyfFZstxHTIPnRLY
 VeOaUIhIp0sEsxTaI6pRg5sS9imDroBQVVcMPf45ZvSUOSAzL2y4xjc/C
 +C/+QSsXFp4q3JCq6BYqEgaMO1PmyP1DF+G2V44oVRUpSPKhYd/wRaYim
 KEZsTTWm9ylGT/keG6hfB9x/pTEdUYMdrkX65qdfX6WKh9X2/I/mmqD5B
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ghUMoTrj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
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
Cc: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXNE CNSE OSDT ITP Upstreaming <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBBZGQgc2Vjb25kIHBhZ2VfcG9vbCBmb3IgaGVhZGVyIGJ1ZmZlcnMgdG8gZWFjaCBSeCBxdWV1
ZSBhbmQgYWJpbGl0eSB0byB0b2dnbGUNCj4gdGhlIGhlYWRlciBzcGxpdCBvbi9vZmYgdXNpbmcg
RXRodG9vbCAoZGVmYXVsdCB0byBvZmYgdG8gbWF0Y2ggdGhlIGN1cnJlbnQNCj4gYmVoYXZpb3Vy
KS4NCj4gVW5saWtlIGlkcGYsIGFsbCBIVyBiYWNrZWQgdXAgYnkgaWNlIGRvZXNuJ3QgcmVxdWly
ZSBhbnkgVy9BcyBhbmQgY29ycmVjdGx5DQo+IHNwbGl0cyBhbGwgdHlwZXMgb2YgcGFja2V0cyBh
cyBjb25maWd1cmVkOiBhZnRlciBMNCBoZWFkZXJzIGZvciBUQ1AvVURQL1NDVFAsIGFmdGVyDQo+
IEwzIGhlYWRlcnMgZm9yIG90aGVyIElQdjQvSVB2NiBmcmFtZXMsIGFmdGVyIHRoZSBFdGhlcm5l
dCBoZWFkZXIgb3RoZXJ3aXNlIChpbg0KPiBjYXNlIG9mIHR1bm5lbGluZywgc2FtZSBhcyBhYm92
ZSwgYnV0IGFmdGVyIGlubmVybW9zdCBoZWFkZXJzKS4NCj4gVGhpcyBkb2Vzbid0IGFmZmVjdCB0
aGUgWFNrIHBhdGggYXMgdGhlcmUgYXJlIG5vIGJlbmVmaXRzIG9mIGhhdmluZyBpdCB0aGVyZS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBMb2Jha2luIDxhbGVrc2FuZGVyLmxvYmFr
aW5AaW50ZWwuY29tPg0KPiAtLS0NCj4gQXBwbGllcyBvbiB0b3Agb2YgVG9ueSdzIG5leHQtcXVl
dWUsIGRlcGVuZHMgb24gTWljaGHFgidzIFBhZ2UgUG9vbCBjb252ZXJzaW9uDQo+IHNlcmllcy4N
Cj4gDQo+IFNlbmRpbmcgZm9yIHJldmlldyBhbmQgdmFsaWRhdGlvbiBwdXJwb3Nlcy4NCj4gDQo+
IFRlc3RpbmcgaGludHM6IHRyYWZmaWMgdGVzdGluZyB3aXRoIGFuZCB3aXRob3V0IGhlYWRlciBz
cGxpdCBlbmFibGVkLg0KPiBUaGUgaGVhZGVyIHNwbGl0IGNhbiBiZSB0dXJuZWQgb24vb2ZmIHVz
aW5nIEV0aHRvb2w6DQo+IA0KPiBzdWRvIGV0aHRvb2wgLUcgPGlmYWNlPiB0Y3AtZGF0YS1zcGxp
dCBvbiAob3Igb2ZmKQ0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2UuaCAgICAgICAgICB8ICAxICsNCj4gIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9s
YW5fdHhfcnguaCAgICB8ICAzICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfdHhyeC5oICAgICB8ICA3ICsrDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2Jhc2UuYyAgICAgfCA4OSArKysrKysrKysrKysrKystLS0tDQo+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyAgfCAxNSArKystDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyAgICAgfCA4OSArKysrKysrKysrKysrKyst
LS0tDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDE2OCBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMo
LSkNCg0KVGVzdGVkLWJ5OiBQcml5YSBTaW5naCA8cHJpeWF4LnNpbmdoQGludGVsLmNvbT4NCg0K
