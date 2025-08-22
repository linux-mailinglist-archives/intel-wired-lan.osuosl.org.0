Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09174B314C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 12:08:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43C4060B15;
	Fri, 22 Aug 2025 10:08:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PgbIurDRPIo1; Fri, 22 Aug 2025 10:08:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE45E60B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755857330;
	bh=DYhv0up2SHEqqLHz4DRoVx67t49WwDjSdXVeBgJ7atk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GwbwMMgyXLrR5ZRR8HH0GTJ8Xoo8ht9S3/r9wGuhp9JWf7JMzKYxQH0GiJe9KbZLT
	 BTImlyt4TWfDCT3GeOtE+qANPBoNYXQZ6bYX5AwQ0GIPvyKpU0bwZpS9tRk2CKaaWD
	 boU2HVAhmRWLjZKKgXo7jhCDDz8SPFkSISlRcrHhp23mOMzwwjY5KDKDEy/w73RK3v
	 NjsWIQar3geaiZgcDVM+wgahrh7Hh9iP/epvNAfOHY1kUKwFkkcdisxjLW2HTPldKN
	 pxd8AsWYCeZcd3rvnDm6aCshW6AaMiFF6haapdbfPa8kMP3Oq4Yjpwcpkj3LVRKPyk
	 AV9WQlFDW8xWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE45E60B01;
	Fri, 22 Aug 2025 10:08:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EE351C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 10:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74EEF60B0E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 10:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HuEOX_g87uDz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 10:08:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2A67260B01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A67260B01
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A67260B01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 10:08:47 +0000 (UTC)
X-CSE-ConnectionGUID: ebApE3vDTXqpb/91NuVnTA==
X-CSE-MsgGUID: 7Ye3AVGFT1ymdQ2g2YZAOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="75619525"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="75619525"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 03:08:39 -0700
X-CSE-ConnectionGUID: s0awh6qwQO2Socim617yRg==
X-CSE-MsgGUID: H934ManFTtaD2fyG8e4LAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="173092230"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 03:08:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 03:08:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 22 Aug 2025 03:08:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.65)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 03:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UAXB93qjLoHATNx2yFioaQt8yfWgg5uaxu/YdDFaBUuEPsqg1N/GaMr0FjsTqu8mBsgb/efe0ezE26oWKtj8Yb83Vny+yqm8xerKXnHgs40Wf+sKniIJMffs5tst/SuwOJxs20HovlYHSFD445j2K4aW0DjS1doaaFDYoy8EV0+IiDfQmRsf6id5FC3SUOJ3RESLDbNgO1/dUnIFcNu/U4FF3qq87g9puCS9MaiAqtsAfN0tIEyIQ6CuFNZxHIVXAzrBUubzBeKCPI3hf4T5vPt8Mbf6h63dkcDOO4gn+/Ds7I3P1dOSW18PCOHNEpT0eRBY8k2E21V00zYdcW5B5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DYhv0up2SHEqqLHz4DRoVx67t49WwDjSdXVeBgJ7atk=;
 b=OaOv6Rv1ebpXBZQxHvmmNfEHCPw1iDAx6MB1dU6EeetTHZ7615CDcW/cPqfsXT55v7aQXKEPkaVXkSbiaGqvHU0Yqd1l/gGYm4w4tDK+Pn5SyrhY6ZrxOv8aBvzGNezMd5B/Rwe9R2sUs/bIDzbXEuXM4nuPt/bR24TNti4pSoIGpmK0hzekHHXT+XFNzFrtSRdlPuOoienVgHYtdu0nSPYl2a5LD2LoOz/6m88WMvv5/IUu/2bZzKmKFLgLIBHes5UjZf1tq7g+9zlixyW03obqbtxJLBHSI76fuFL7toqJat6wdq/9tR8RtOiL4o0lQOYsEPN0ohzyY71+lgRpvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB5946.namprd11.prod.outlook.com (2603:10b6:806:23a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Fri, 22 Aug
 2025 10:08:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.026; Fri, 22 Aug 2025
 10:08:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Linga, Pavan
 Kumar" <pavan.kumar.linga@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce local
 idpf structure to store virtchnl queue chunks
Thread-Index: AQHcEy+RKnrTVq9dFkefJTY79hXQXrRuZl+ggAAMmnA=
Date: Fri, 22 Aug 2025 10:08:31 +0000
Message-ID: <IA3PR11MB89868BCDB793D4B320399923E53DA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-2-pavan.kumar.linga@intel.com>
 <IA3PR11MB8986F4E37360430BF937A210E53DA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986F4E37360430BF937A210E53DA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB5946:EE_
x-ms-office365-filtering-correlation-id: 10ceafa1-6159-42ee-1f41-08dde163d918
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3eAM0K38homiBo1/RADuAh5A1G/VLZRwoukLoJrlD2aKlnNg8AR4GnbvqNVx?=
 =?us-ascii?Q?TYkmAKOEGtHv5KEF976a7KiYnBO0Hcdj9m+n4mAz2m1jFtL4C9VDiwO4mbv/?=
 =?us-ascii?Q?iQog0k84rtkFSps9i5WKNzINANIABVRJKs9X03cVfQsbReOwPfz5llSIkgHe?=
 =?us-ascii?Q?sNHAwBL6IUT/lmX8pJq25AnbKcP+aFDNQTIY/UerutJquKNaSH8M+wOHvDFB?=
 =?us-ascii?Q?/ujAmV879oqMHzY+YXl8Eyr/y7QZQoFG3KO9QqjTQiL4jOZoUW8No7+QaxW+?=
 =?us-ascii?Q?Sg+doBd/3bBg1UvjxcfWeNTt6PgbuKKI9APLXbjVS4CtL2qu7iDBMDK2j/mX?=
 =?us-ascii?Q?tdT8kEU3AAfshSGOWVJRGD6GAAZqeJFOyJy3jJHQT3CiW7b5gabfUwpkDn1P?=
 =?us-ascii?Q?rFU+XlktgF+SWGaaG5H8GzxwPeh0RIO9pN/iBYWtijpaYmFJfv/8HVjqijez?=
 =?us-ascii?Q?/UMVyOwLkXm9lC8BLng7ObJNegy9tdJ7G2fqybD1/6FUFpGHCIZ50/UBUEyk?=
 =?us-ascii?Q?GRZWoHF5wtkx052m26gUAqphOtH8ajiTHBLNwJVKgzH4a61Wp32viVES7Yak?=
 =?us-ascii?Q?SsSHZMrqAscChM2S4pPgwf0+YsB71MfROj2IJVkMjThtBmZeL9Et7YJ1FLmn?=
 =?us-ascii?Q?YnzGB3rnFf6torigy/LBiSbvDzNNhWduoMUHoWKs+CdDKr60LizE7TEUa2c3?=
 =?us-ascii?Q?7mPE5QWEvZMIarFWdFUj01ndz1aiInKBUMTGkBC07TfqZKYVRD42Aol7WRm8?=
 =?us-ascii?Q?5IwNSOMaR69WGYx+GUg9f19nyH8oez2W6Oo/TY04DFDbjqireLtYlUw8ZM+n?=
 =?us-ascii?Q?NoYWjb7KR33zsPAG7X46D7rSp9zPXbf9pZ3PHmlbKPBRe2ABhmTa2j7tliZz?=
 =?us-ascii?Q?5Sk+TSZEKcwMSK26pHpE1GVQyjY+Ff3TtQK/TYOFC1cyL4J6jKLaT9AGY3nd?=
 =?us-ascii?Q?f0ihNWO2Jnd0ZLMZLHfssm2xXUZxxFUKEumpt05fD4hI596c8UCer4iX7qKd?=
 =?us-ascii?Q?swlc3Z25psoDeLQQfNEks8TCbHirHEx91r/P4Yih1q6u6x/buSKA0+g1DXZt?=
 =?us-ascii?Q?xZpdEIyKuNssySgEajtQzun4s/pTWCRxb6NtLpRuCT2s0vIr6pdMQxqAxxLL?=
 =?us-ascii?Q?migUAFCLBhYp07z9hxu2qLsjq7rJVHynaSeYbvBeBbwyLS+FT2rIPOEdGfHc?=
 =?us-ascii?Q?4wr94IFX83Ow0wAO0kgBQ8WPbekyeUo76yM0wAsN8kqf1n/mclX02p1WHxtT?=
 =?us-ascii?Q?d/90LXWMpYhBeZ+5PoCrczBMy9grzRK+wG8lsvtDEG/5+S/r11Xwa8KpfVPj?=
 =?us-ascii?Q?QUVWEOKSpCzekgahOMMdqSuJfF2Umz+zgA+kA4JEapoNVAeLO9nEaKxAj26S?=
 =?us-ascii?Q?7tzwnFnf1nH76pPzmNO4jWaKFAPVmAT9+V2S9LWLYk8/IJ2ScMiOB0vNrNIo?=
 =?us-ascii?Q?/dzxyvmATq6TgKWVA6FRYYiNBX83EL3tm/aM2e/+R/BWrpvieuSTcA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gfA89qihZZsAMolDwPRfdmRirAGoWsFCwwZjWN6NKWX6GFZNPoJpZYqeT0tH?=
 =?us-ascii?Q?uAZFMHJcWWckVIIIilma9mpXJ5NkGsvaplQBZ6BZVx4qOTnZ2ZxollStbf9k?=
 =?us-ascii?Q?OyuPFSeemFWTkm8Tt1gA8afhjhMRAILtD9G4Lk01XuNCPEozV9uPJJl70XE1?=
 =?us-ascii?Q?DzdhtBfNc1Z+3XugPLc31urdYrP+CDjzyvqJKZC43e/z+zI2ERm86cCJKSWM?=
 =?us-ascii?Q?vlVHl4VyPh0UpmuRg0hbujySw+at1hlpj0kz4UkjZ7QKfmGI+1kVBmJnZ3Ek?=
 =?us-ascii?Q?TudIPVZAYrev1TdsOYdUY2AZaPQDgNrYdgvoG6AejEe/LF3XHVzT9YRvCzgJ?=
 =?us-ascii?Q?sG+Wtf9K+9owpuzEBKKbYAPWq4Vq+ZEM2wE0joEYd08v2QCzgU3dvtBPdXaZ?=
 =?us-ascii?Q?A68f09Loa7YFmvw8eEXUsF8cVWE+RM4P+ab/yYpmEf/IF4god9bJCOLWK7no?=
 =?us-ascii?Q?lmfbDvnOwDQTH1fVC88Zfyp2uYFiLI8RXQ1CgmSh9T3Rf3Rc4FxgBsdb5URv?=
 =?us-ascii?Q?yxirbWN3Jp5Sc96g87FnE/fadi1mjZIrD6Fn3tKxDUbOSBVS6F6f0xyInNIv?=
 =?us-ascii?Q?yk2VzHYjQQvHYgUcKX/6wTcX1DiXyqDUskXyPYEb7cJB66DFi8JhtgjJzzyx?=
 =?us-ascii?Q?6q7aZBWrOL+eSO+mc5UhMtArB/zyZfI9uzZq0CZUYcGxxov0e0DL4tQfsf3S?=
 =?us-ascii?Q?LpH9olA9js9Edu+C2eUOPc9vMtferCMRx0mcJ1yow0uFet3Jsd8zly2i3PDi?=
 =?us-ascii?Q?N3Ha+o10bo2cKvxTp9xBDhTEZvcXDKmuaXBKD6297w3VcMuKhNb17uWkNFtT?=
 =?us-ascii?Q?OGbc43mHxISUBmVxtqAiBKslvVdN0JwbInNrFneiJl05Z9ZPwmpo2wPpdrPX?=
 =?us-ascii?Q?4hGVAqZRP87tr3OwFlQ4BVRSat2cvCwxmjuv4gAD2VvQ93WgebS1Sp7YbNUB?=
 =?us-ascii?Q?nJjxiOFgKFQ7E2QDj3Ha4hSOnFc+hlLUXwO2knXF4vd4o4WUknV3njqveeSz?=
 =?us-ascii?Q?f2wXhUuj1zivKdAnyFHqiH1g+xTVAG3+2Chq4y8f7N0PGo6g/UYtLUqiD4Zi?=
 =?us-ascii?Q?qKLbTbk1+Z5Cn5xTA+9LMjAedl1wI9hLqPoJdp3i7Fg3TzDTMHZO7xIBCQeq?=
 =?us-ascii?Q?8JwjOAxSayGwBrsCHmy7wznCdIzzNnOH0ZqKot2KyJMHY8diKnREKQUk/0wB?=
 =?us-ascii?Q?gGSpW9S9ZD4VKB2ySgKQQ3ctlliVuxh8iIcn+SFKPeeXnSdDKdwnC/XSdfCH?=
 =?us-ascii?Q?6gbU9ponu4gyf8Kz0lVCs5OepYohsXSD5dbYHRs+vZcJ8bbCz5EIRrS4BkpI?=
 =?us-ascii?Q?SNLNQ9s0gLl4m35iadCHJVl7yPXyoaYzn0Krd3PDAU131Ju6mZp0C0R/u85t?=
 =?us-ascii?Q?ECuvLPqKogsECfJNmDV49GzVvpPl9ntGCRnaVgLbs80f5kkOcKMuS+FxAsb1?=
 =?us-ascii?Q?aa64XqO3NxEoAofQ7Q7QkbeqR+rRoH6iS8HaDyzMJTob1oZ5FFSbejQO6PDc?=
 =?us-ascii?Q?XDiZcGC/d/PIRofUv+L+amFaSYSdcvilwHUuT7w6HDtWnY7dj15tbkgEY/it?=
 =?us-ascii?Q?jGlUCEWGSNnFEmV8YKbSmiQOC83g03i5u7UZOZ9kkZeBSypGeu75rWIitmn3?=
 =?us-ascii?Q?qA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10ceafa1-6159-42ee-1f41-08dde163d918
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2025 10:08:31.6363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZDFApoWY7RWIBx30Mey64mhpMyJ9GUZkF+gSKDJ7lp0NvsRAzgtgg/cUUOAimPjLBC3gYDInTzC7wsJ+VSypwun3Kefi849XPg3S/VhgUp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5946
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755857328; x=1787393328;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DYhv0up2SHEqqLHz4DRoVx67t49WwDjSdXVeBgJ7atk=;
 b=Iq255jgFHTXtwkM+aO01GcB9YHGV72cBdZICzg9heM8aGrEcIgcMV4OQ
 4tPXiKASLamrvjRqztsytpTHilUUPFesdGPfOdox3lwNUGayh3wWxw2qw
 WvjBA244oq81JkrzAY4zOCETuO0ETajSe2hIW2POX37Dyw6iOY5I2Pf14
 +TPtsgqY1INnY9zg2055DiphKm1hz30d9WnEcvvokJX9fOq9Uh+mwp2wM
 1yuSf9HNPnGX0EKoy55ZY8rXqhdbLNkLQeO/wGf/cS3IN2jEELTh9lck/
 bNVuTv+skB76PUMBRcqdwNTG38Ep3gl90sLgiGmF2EMWvfLkwvMGoFLDb
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Iq255jgF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce local
 idpf structure to store virtchnl queue chunks
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Loktionov, Aleksandr
> Sent: Friday, August 22, 2025 11:24 AM
> To: Linga, Pavan Kumar <pavan.kumar.linga@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce
> local idpf structure to store virtchnl queue chunks
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Pavan Kumar Linga
> > Sent: Friday, August 22, 2025 8:32 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>; Olech, Milena
> <milena.olech@intel.com>;
> > Nadezhdin, Anton <anton.nadezhdin@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce
> > local idpf structure to store virtchnl queue chunks
> >
> > Queue ID and register info received from device Control Plane is
> > stored locally in the same little endian format. As the queue chunks
> > are retrieved in 3 functions, lexx_to_cpu conversions are done each
> > time.
> > Instead introduce a new idpf structure to store the received queue
> > info.
> > It also avoids conditional check to retrieve queue chunks.
> >
> > With this change, there is no need to store the queue chunks in
> > 'req_qs_chunks' field. So remove that.
> >
> > Suggested-by: Milena Olech <milena.olech@intel.com>
> > Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> [PATCH net-next v7 1/9] idpf: introduce local idpf
>=20
> ...
>=20
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

