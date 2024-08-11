Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6922994DFDB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:39:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65DD14131D;
	Sun, 11 Aug 2024 03:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aP3jMVZl9oc1; Sun, 11 Aug 2024 03:39:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2655412A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347546;
	bh=t7ecpZth2oWj0SKgnXXAJbpUihhbUvRR+nP0C3jDYYw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2bfEs9imiV4YtD6TPOC0noL2hS9CT3BmCDZxx0NGQWsukvcYS8rWcFRL1jqJ0nmJf
	 kodYuCX89PkieLrhVhlLeA9EoympcqGBKRSwI00hQ9rwU+3uJnVqRn+sfgJ7dOg/b9
	 DrvRRndXAdA7epDoq6H7KZJpW+bRpGBRhyK0NdBhvLnTnCgfsAKnyQcZFRwBRAlaNg
	 MZWCdRlHmO4KLA1ceSB7/ONDvIYxNo6coDGs3YBkvwhUZpF9YbcGUtHNjsyhJVh+za
	 aAIvPp70bEEndfnKurw/MKiCWI/+RxbOYTFqVZNweCWUjUmAwDWrvtFgaXy7IU5vcb
	 qZvD2qIAo2HPw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2655412A8;
	Sun, 11 Aug 2024 03:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F2D11BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C76740279
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g2A8G_5aDvDD for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C091400C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C091400C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C091400C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:56 +0000 (UTC)
X-CSE-ConnectionGUID: xRZZoBwHTMWrZiD3M4sxVA==
X-CSE-MsgGUID: fkKpElsyQWqJ9M/Hx7FmZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="38933480"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="38933480"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:55 -0700
X-CSE-ConnectionGUID: iKERmmnZQDOwTJyjaYtAXQ==
X-CSE-MsgGUID: PZTZ5bZ4Q0C9C7+d2aF3pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="58002964"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wJOR7oui/2iWnM1ifOgf5hYgtqjtrcmjj0DKjtVRaOa71P2T16h4O25hy6uXjoNXNWpxcy6QEfqd1JmtlpKCkazR51IZGg9HT+rsI7uUvyJ8HQwuDRc5gEGCzgiMiiVT0mML+s1vqfEJxlkU+u2eYmOU+rBPHBhqJUJOKi2qePT8s3pDJdvASZECKf5Pj7IczCE+aih9SN1aZFGbpvsHF0P0f8PIyfZCJbVaRFiFjSEkaktJfeYcDMRILKOvZxjj9v4tExN3n+BJ9OIWV/Y3B69y9dtsFQeyD2RGNaIcpMDpU0QNy2aGZgkFsjXt7i41OSLF6SVg049gVCL6XUaZQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7ecpZth2oWj0SKgnXXAJbpUihhbUvRR+nP0C3jDYYw=;
 b=Flh6mfZuPD4u89jNGY0ajwD/wBMBbW72ts8JYgZS6nBTHXsPgGbY8cWQIgvWIZrIheirmeJK3uuXAjPJkxd0FO6o9h6BQK9dsE+gsxyJ7l7TeTfGp1DCd8Jsk4IAc1kgBCigGdswVTJdDrvyht2bBykYRzFm8IXuUip6jZvOeqJqLlhJUMs5Vai5JisM3jpe57S+wD2uY9zOouYIEk/cutd0FBJOt4tQ+FLEGJpZGD874wLs2gIqg6+PUtYd2Nx4LCvs4ZjATrzR4Ae9M03yathEjZ1+dMEG+VA/JTuI4nq+XcdnS65AYa/zOj/Ycn3Y6j3XgWueZLCsuWjVL/Ig2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:52 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:52 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "\"netdev netdev\"@vger.kernel.org"
 <"netdev netdev"@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Report NVM version
 numbers on mismatch during load
Thread-Index: AQHa6EHcmz1OsvdeOk2EASgENjO/erIgWiCQ
Date: Sun, 11 Aug 2024 03:38:52 +0000
Message-ID: <CYYPR11MB8429CB1BA62B1EAEB15B8428BD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
 <20240806-e810-live-migration-rd32-poll-timeout-v1-7-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-7-b5ada29ce703@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: 3a0c5e40-24da-4d66-852b-08dcb9b71ec2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UHhMMiswdHY1b0pGNVFCbXZDSlR0UnBRUU15cExxbHhJdTl6cmRySW5RTWtE?=
 =?utf-8?B?YkdoekE3Q3luTk9tczBuWjhoZUZHckgwT0RUSGZvYXUzVldZc2hkanYxdW83?=
 =?utf-8?B?YzBNbHZNaDBEWUVKeUFyQWFzNVpCZWN3bmtMMVVRQys0TWdMR0cwLzdBdytv?=
 =?utf-8?B?WllNcEVJZ1hTcjRBcUV0TVVPeTZvazlkQkxVU1Q0eWd4aUR1Y2VxTGJmS1F1?=
 =?utf-8?B?RWpKTmF6QnkrNG1YVUxYNnNQQ0dkNEptZ3kzZDNLbnhFbG0xNGxTUklCQStF?=
 =?utf-8?B?bm5nNlZtSEpzQnQxdDR3TFBMSHFtd2g1bWhqWnAvRHhKb1ppMnBNUUc3bnpU?=
 =?utf-8?B?bldmeXFHSjRibnd5YjFBSHpFSU9rRWhFaGxWL0JFck5DUE9QMHdRclVZY1R6?=
 =?utf-8?B?elprWTE0NnNleFZnR3lLdGVackpOb1l3OVhjQWtQNDMxWllEMlBSWGtJYXVH?=
 =?utf-8?B?ZnZLZ2tOZ2lTZXArNmxFSGpIOTk5d3Ftd3NHZWUzdURuTHM1WjdXRnh6Z0w4?=
 =?utf-8?B?RW5xYWp5R0wzUzBTUVdkRjJnVDBxcmpDWklNM2tYb0VaOGRuMzRtTGtQcVk5?=
 =?utf-8?B?d1pJMkp0YzJadmQ4b2w3d1dUbWk0QkZQZ040ckRqTDBqZkdmZ2VncWlVb1F6?=
 =?utf-8?B?SmlBcm9kR2ltSlNRUlVNclE0MVNVR0xUNTJzZmliSmlmd2RxTktKYmFCRy92?=
 =?utf-8?B?UFdZREJGM1BGNjAyYVU5aFpmUWIzK3krZXg2MG9uZnZmQjVvSFFqYkplcCtz?=
 =?utf-8?B?N3dLYTJKQTAvWTF2REExUElDd0MybWQ0QWQ5bFNaOVhFUjNZbk4wcWQveDZI?=
 =?utf-8?B?YkYvOTBQaS9pQ0JQVENNT3hJYTBKMUFXTHhLTXlJa0tqVGIyeWoxK2RxcUY0?=
 =?utf-8?B?N0g5STEyckxSOUV2UGdCM2RpRTQyb29kUHZkSCtxTFQzTURUYzYyY1FMS3ds?=
 =?utf-8?B?cXRSczBKUjd4eHNTSkZHa3VqME9pdjBDTDNFSHNnNStpY3hKd2pZQ1NJZ0hZ?=
 =?utf-8?B?bFNwYW50bGRBSlFxd0JWOFBZY2g2VkExLzFDTjFBQmhyMlNjRXJmdzU1MkF5?=
 =?utf-8?B?a2F1Q0dPcjNwblBXWVhNeFM4eG4yVnhmeUZhZFlGeDd4Tk1lUzZmTFZWaWVQ?=
 =?utf-8?B?WlBpK1AvWWlNTGtlZUVxMlFOVkFSWEc3MmpMbGtuQituS01TcDE5T25acmFV?=
 =?utf-8?B?Zy9vUVorQVE1cER1MVhiNW5hRk9zR3g3ckdGSlZTRDY0WEVOVnZwZDZLRStM?=
 =?utf-8?B?VlBLUTJFdUUyRElkbE1LbjlsQk10eVcrSW9iMjN2ZEw2cXQvWjd1ajlLN25G?=
 =?utf-8?B?My8zditTWTdMUHJCRmxJYldkaitNN2xmZERNcjJyMlU3UkhFalRZVWpwOXAx?=
 =?utf-8?B?Z2h4c3VIT1R5YWRpY0MvQUxlWnVXWkRzOHZjYkxPRS9VV0w4QUtWdVV3d25H?=
 =?utf-8?B?N2NRQ2RUM1J6ODdTY3ZFaVZNcFZyYWcycHVQZFRGT082M2F2eUR1RDEwMzdM?=
 =?utf-8?B?WmhMeFZ2SXRnNExhYldMbFAvckx3TjN0cVEvQzlPWnVIWkVmQ2FJNTFyRjVv?=
 =?utf-8?B?SDVVUThxZld2bzZQY3pIZWhIbmVucG16ZVB6bWlETkVCU01ZdnNKUm9uUjJz?=
 =?utf-8?B?b2tYdk1XWFJpakRHaTgzemdFdEdDdUIydkdXRm9mREZ0Mm9DMG0rdktscVJZ?=
 =?utf-8?B?MUI2UWVVVnRlUWkrTTN4RkN1TnJTYlU3eHZxNmZvSUV0L0RZR25JbTRIYVRC?=
 =?utf-8?B?NkFsdCtYQXBYNldiOUllbW4vbFdjSHRMd3RpU1JQVkNxSjk1VS80K2IxQWs2?=
 =?utf-8?B?TVNFV2c2dWw0ZEJBVm1yQ21CbGhXVTdUTWEyREFoWHhITzQ3WjV1K1R6UEsz?=
 =?utf-8?B?NjhJMUxoRngyU0I2MWthT2lwc3JXbGVjaVQvS0VLOXlJNWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amhXL2ZlKzEvQk92bTNWQXkxZHJCZWsxQWx4a1I0MGFJcUhMZWI5ZnMvWDBF?=
 =?utf-8?B?STAvbDVnWWNZbjdDUzkxV2IzRnRNcVVqVm9vSWQ1YWM5YmMycCtaV2piMWI1?=
 =?utf-8?B?TEtxdEoyb3BSU013Q05IcXlTRVE4TUJWWXUwVUZlMlBqY1l0Zkk4bzRIb3pn?=
 =?utf-8?B?REZWdzFFQ055ZGJkRUtCRFdJNWNQMHlxd1R2UmIwaWNpSnd0U2N3Qlh5dHZD?=
 =?utf-8?B?WWJZTUREaWFTdGJ5TGhTLytJWWorUTZFZEszOUc4aUFVUzV3dlo5K09JRzBB?=
 =?utf-8?B?b0F2Ky9Zb0N1WUFjNFZuQTlEOHVMWlcrT2Nyb2tpTXAzSk05NXR1ZUV5NEhs?=
 =?utf-8?B?cFVTSlhudlhFWWZqYXJWU21kQURXamhINGRMaTNJYUhjQ2tyNi82OTloS1hN?=
 =?utf-8?B?a3l4ZzVMNHZsZ21rR0VHV3lJNHZjNFA5cUwxSi9yT1pLNVAvd0Y5MVBJdURR?=
 =?utf-8?B?Y3ZYVlgwa3hwNEhEUlhtZ2lLcFpGV0d3VzhGSng1Z243R1dPRi9XNEdFWlZX?=
 =?utf-8?B?QlBrV1N6U3d6WUpzLzdMRjUrckFPKzEyK3plV0pnRklIdWt5Q3pCVkpaNTF3?=
 =?utf-8?B?a0ZBLzQrVmo3enNTUVA1TXlCTnQwcHhGQnRqSG1zK0JzMFh1NlBnekw1VjBl?=
 =?utf-8?B?cFovNmt2VEF5Z1pwQTd0Q3JFVk1DM1JGdk05ZXpOYWVPZTE3VEdxV2NSYVk2?=
 =?utf-8?B?QzdwU2JHcFA0SDZrTkd2SStQb3JTY3Y4ZjBVWFgwdExwVnFzTlY3Wlh3UzN0?=
 =?utf-8?B?SnZ3S295VHd1OERpalFRWnRXT0ZNbTQxVVBMK2ZjWWVOWXFJNGFlZk9FWks4?=
 =?utf-8?B?MDlxVCs1TFlzem1CaEkyNWsvcWcwZ0NFZzlsalg1ZVNOMk5OVU9KOWY1TFo5?=
 =?utf-8?B?bXFheVVrbURISEd4U2JTOHpjcmZEN2NxTk9adVlwRGZaRGNyVXhocDdPZzN5?=
 =?utf-8?B?VlVpb2hCeHljdGJ2Zk12WjVPNUEzQXNVUnlqVkd1ZnZ6Z1E3YWwrMzBvaTlv?=
 =?utf-8?B?RjRHQlorVlU1dUtCQWR2TjhEcHJpbnRUMDA5Tk9MZmgxRjdCTmlIY0pRd3VF?=
 =?utf-8?B?cFNwUXkwQkZhanJJYmo2MFo5N29VTmkwaEdCMlpMbUpCWnA4S1N0ei9nUTZL?=
 =?utf-8?B?R3NBZXI0VDNYUXkrVGNNOThaTzNlS3RQMkYrcW41cEVxRWpZR1pMQm9XMklW?=
 =?utf-8?B?em14MklmWnl0STRVTDR3Z0U5M2xQRUZFNURwVEJIVXQxbExQYTlxSHBNU1Vq?=
 =?utf-8?B?MHVCa2RaNWgyNTlVM1FMMzJiMnFxNWpLN3VINCtGMzRaYjA1b0Y4Mko1SXlu?=
 =?utf-8?B?djNOUXRCNHBsNHRHaXR4VjE3d2F0R0xJY2hudzRXWUhSM2ttZVg0bFc1YkJ4?=
 =?utf-8?B?OGJUcFZLSmUyYUZNRHlOT0hjSHZqelc4VG5DLzM1Z3RSK0FHeEZkckpRRUk2?=
 =?utf-8?B?MTNsVzl2aGFRRUE0UzNGNWE5QUJkUGhYKzI2RUlkOG9oT1RXeVAyWWhrd1pt?=
 =?utf-8?B?eERoZk0rTjd1MkU5T3puUmd1NFZmN2x3WjZwa0tjR3AyZVdYYWZudExieVVS?=
 =?utf-8?B?RW1QdzhBRHlDWUQ5MGJrTVc1bDJkMll0SnNMaGs0S2VxOVN3SXJqMEg1enFv?=
 =?utf-8?B?cHh6MUc0RGxzYjdibXpodmRyQjZMZTNsR0k0OHB5bGJxR0dWUjgxR2x0ZXQ3?=
 =?utf-8?B?YytxKzJ4NGd5dk12TzFLZktLbktxY3lkL200eUhxWEpYcVkzRXA5b3VYdnVP?=
 =?utf-8?B?M3MxT1JneExhRTZQcmFCNEtNWkQvMWpYNmtZUGF6anA5eDB4cWY3dkxHY0Vm?=
 =?utf-8?B?bkNjOWROdjBXWXczUGNSU01Yd3NxM1NHUS9reWRnV1VQSGFsUG9NNVBEMFhp?=
 =?utf-8?B?eG5uNWZVS1ppRjUzRDhWTExCSnVuclBhSFRtUG0xZ2NCMDNSYklwUTNRalh5?=
 =?utf-8?B?aC9QbUlXY0VnZy9ETjdqQWF6UkJGSjhHNlBoVURnZFFjUXM2NTdmdCtNcGhy?=
 =?utf-8?B?dTJxaElxRCs3dmJnblJOSVFjRlRieTRGWEhvZUtsMDgyNXN6MFVSU1YrSUpj?=
 =?utf-8?B?QlJ4S1lwcHpiN3FHNXZ1a0J0MDFKcTNNOGRVa1hQWWh4Nm5XckZRNHhkSjA2?=
 =?utf-8?B?MXVzSFVvdXZJY2M1dlpOd09EMC9uaVlHcmJ4dExOMldNNFFtcnlMSlo0aVdu?=
 =?utf-8?B?WkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0c5e40-24da-4d66-852b-08dcb9b71ec2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:52.5874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q56sByJWsaNe1mElkne6H2nGtrAYsDkGYnRW8QKEc7dGZm1YDs6OLb3QeXUyd6gd7FBe6gD6qsSWHVyI9h6hms1f5+qrK0KvyaiB8o6aj4dxWQ1u4EP7Z5PnzrGUd/Yu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347536; x=1754883536;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t7ecpZth2oWj0SKgnXXAJbpUihhbUvRR+nP0C3jDYYw=;
 b=Xzee7cM0MoMatWQe4/Cnn+b/3r9Q9ga+cBd48ROEcYW/ynqMq69yqUAk
 Z6DkEwDc3Q8C33BaiG0H1Mpni/x/mosFBs+Aw8N78AAlPGzGN68K+xyIt
 IaZSyjbocO2EOyj2AB15jUP2ZdanK9ZMoIop4FJb5s9iCZynTk4WQSn14
 SwPKYkNe9COSTyc9u2+cNqPkfSLwK7gkOA66RD3zGzJKt8r4qrDkJs/iC
 4g+CqxVeMLGNFif5NSZrMCNvTh9cFuOe4IOypvti2mI1PQGLtwo/H0zov
 cju8rd4n5xyL5KTtxauR23xYEM3UqMHweZt/I19RtlunXg1fMjWuKKPNT
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xzee7cM0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Report NVM version
 numbers on mismatch during load
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Wierzbicki,
 Jacek" <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCAyOjE2IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgIm5ldGRldiBuZXRkZXYiQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogVGVtZXJraGFub3YsIFNlcmdleSA8c2VyZ2V5LnRlbWVya2hh
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
OyBXaWVyemJpY2tpLCBKYWNlayA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCA3LzddIGljZTogUmVwb3J0IE5W
TSB2ZXJzaW9uIG51bWJlcnMgb24gbWlzbWF0Y2ggZHVyaW5nIGxvYWQNCj4NCj4gRnJvbTogU2Vy
Z2V5IFRlbWVya2hhbm92IDxzZXJnZXkudGVtZXJraGFub3ZAaW50ZWwuY29tPg0KPg0KPiBSZXBv
cnQgTlZNIHZlcnNpb24gbnVtYmVycyAoYm90aCBkZXRlY3RlZCBhbmQgZXhwZWN0ZWQpIHdoZW4g
YSBtaXNtYXRjaCBiL3cgZHJpdmVyIGFuZCBmaXJtd2FyZSBpcyBkZXRlY3RlZC4gVGhpcyBwcm92
aWRlcyBtb3JlIHVzZWZ1bCBpbmZvcm1hdGlvbiBhYm91dCB3aGljaCBOVk0gdmVyc2lvbiB0aGUg
ZHJpdmVyIGV4cGVjdHMsIHJhdGhlciB0aGFuIHJlcXVpcmluZyBtYW51YWwgY29kZSBpbnNwZWN0
aW9uLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgVGVtZXJraGFub3YgPHNlcmdleS50ZW1l
cmtoYW5vdkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2Iu
ZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnpl
bXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyB8IDE0ICsrKysrKysrKystLS0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5
OiBQdWNoYSBIaW1hc2VraGFyIFJlZGR5IDxoaW1hc2VraGFyeC5yZWRkeS5wdWNoYUBpbnRlbC5j
b20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0KDQoNCg==
