Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D318C48EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 23:38:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F0C040B19;
	Mon, 13 May 2024 21:38:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CGSh2QYQy9bO; Mon, 13 May 2024 21:38:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DBF840BAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715636280;
	bh=GXiuXmmZPDgO5C3aeHWH/BNbhqP8jLH7A+XLb2gwyWA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=51gD/+Ai8dVXk1fEplPbyB8U10InWZ/9MokGr1jfjGP7sEMTsPEPVkXp93wkO84ek
	 Kr6axws3re9N48vd9YC07fw++OH72Zu4cp1PBuT73CtRRJa+Z0be2VeKne4Jv+bUOS
	 i+Jk0lY6w9szIGYL+J6hl9bsvavl0vBy1VjkhkTo0FsU6yNw0dHPXjUre1DCsGgZbP
	 Lkr8h9lnR9bYQn7e8EhlMR11ZuV84LBIQym4CHUUQe9cGGslmHozt7VYCzU5BAVWZg
	 YeZ3rj+53o9++nNUm4QRfQLcU53FVvO8ha55Fi6A9V+Fzs4ECtXSqn/yQ5q52NBcKP
	 UGRW0aJYTze9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DBF840BAB;
	Mon, 13 May 2024 21:38:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C7191BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 21:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB39E4076A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 21:37:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zeyLxiCaaiJW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 21:37:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 28F0240739
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28F0240739
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28F0240739
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 21:37:55 +0000 (UTC)
X-CSE-ConnectionGUID: 05YFuCoJREKHZe6Ks3tMPw==
X-CSE-MsgGUID: otZe+8TESy2ougJDo36eUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11466971"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11466971"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 14:37:55 -0700
X-CSE-ConnectionGUID: CN8ybzCyQJOat+9ijXLJNw==
X-CSE-MsgGUID: 3p5UHH67QbSM5SnfHJNbzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35210563"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 14:37:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 14:37:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 14:37:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 14:37:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XzPnWrLNSYnpa5bbppyfCvsc+62iq9OHreNqO0P8U8zcHQ5FnVnXW55SXVUdSC65uy+cNFK2dSVmHx7/c84vVZA2udv4J1Mksvq4CNUd7Po1X15SEXnLmVdKk+OOGrSSvyZOVaY1+E+p+TygL4Svv6Ijsnfh9sI0PGWi2U9ZCDUA0inhpHBn2t5vYldZtVGZSEShvZ6Emvx4zxaK2B40g/s8jzlVdRaAX7NPbhM6+18t15CWtA2oV04VX6/dEprmJePKb7fYrDupOdKgtFUBvdCLobraQtFaxZXXeduvcLI1cMoIgVLQCFm3wYvUDRmFe4D65Dv5Qhm0Tk6XlKxiuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GXiuXmmZPDgO5C3aeHWH/BNbhqP8jLH7A+XLb2gwyWA=;
 b=TNjlGZroA0kztCVl1521ryk9thDfudaft4Jud7aXxjQtig9ehs4WHIlqCUVk1/1Vjh2tIpo29WE8AFDXvqDHlJXFyszwZNR0pUxWbyA9GHVkwQ4SdgVaVfjVzhOP3SO9o8WfeNkOAP1rpVgHuY5BOnlf6XvAyyq30CLYfwcVL/QHxzxYRg7VhlVkAl2XSJm5IBLOQGr7qhUJdlipVbB5yR1nBQQaMMctTAV+EF+r0yw25i0VdXZZRYaxXNdZql52xvu85qQA2JaRl0zygnAJlbHoAo5C/BEZdDaeSnuneftAC2GqfJE4IlIwdVEai6ZDT/4yzkK3dzpI/qMqk7/kVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6660.namprd11.prod.outlook.com (2603:10b6:510:1c3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 21:37:52 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 21:37:51 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Kalesh Anakkur
 Purayil" <kalesh-anakkur.purayil@broadcom.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v2 05/15] ice: allocate devlink for
 subfunction
Thread-Index: AQHapRAuoD0qpkt2qkK2++944vlVILGU5PMAgAAP7oCAALvJMA==
Date: Mon, 13 May 2024 21:37:51 +0000
Message-ID: <CO1PR11MB50891AEDF7A2EA2D1C394E44D6E22@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-6-michal.swiatkowski@linux.intel.com>
 <CAH-L+nPnpxJKscC74YoDUr6pirHNuiBBFN8U+o9zRsW8gw2C8w@mail.gmail.com>
 <ZkHp+fIvfw2m4De0@mev-dev>
In-Reply-To: <ZkHp+fIvfw2m4De0@mev-dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH8PR11MB6660:EE_
x-ms-office365-filtering-correlation-id: eff9c255-6b78-4981-f687-08dc7394f136
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bkRtOHMwZ2psOFk4V3QyR2J0WUdFc3BjSHYxeTRJU2xSZ3ZLcDFKdno2NEpw?=
 =?utf-8?B?aFF2dnpROHAzL0VKeHllSG9uaHhYdjFGRjBMaHFnOVVuS0VmaFAyYVZHRHNZ?=
 =?utf-8?B?c3JkNTZ1U0pSRVZrR1VFSHRzVjh5LzJIZHhkZEhNUHYrdVQ4OWdHU2lZZVQ0?=
 =?utf-8?B?T2tmYmhsUmJHQ1pXblp6M21xWFBtZDJ0MFIwZ0k0RFVTM2lwc1ZXdnd4Q094?=
 =?utf-8?B?aC9CcEZtdCtzUm9wNzFnc2VlTEVTUVhrbkxFejAyaldybk8yeGgzeWhWNDdS?=
 =?utf-8?B?Vk5zbkM0WWsrZ0RIRzYwYVBMd1hJNU9hRTlpVk4zWEVjS3ovUHgvOG9MM0lr?=
 =?utf-8?B?bVNWUnlTUk8xbTkvN1loQkczVTVDWnVWcG5xaWtJRmNGdDgrVXdqT3RwcFpF?=
 =?utf-8?B?dVFRS0pSYk1JakRaQzZiSXNFemZMNzB0eWh3RVZrd0RnUVJmN0xFN21KM20y?=
 =?utf-8?B?MzNBc2tvZUZQaHhGZEtBeEZha2ExWXlzak5FN1EvWXRkZzJQeWdWWlJSNEZP?=
 =?utf-8?B?djdCWjJkeUR2UDZkdS9KY0VMOVpSSE1JSFlUSjZOeWMzbXkyTENpZEhSdVRx?=
 =?utf-8?B?NDVCWHc4d0pEYlJ0NEhWeHU4d0N3TVU0Z0Frb3QxbjRsdEtienhtWDg3ZEJk?=
 =?utf-8?B?Tm9BUmhNVDZ4Y01GN2NwYXd4RUxuWGszcjN3cVdRUVJpd2xlWDZrVnhFNTE2?=
 =?utf-8?B?ZDVuMDdYTXpJb01PMlhwUDJiMU1iNWRDMWF0dUVYWGRXVXZGUlEwdyttdjN2?=
 =?utf-8?B?TWZKM2laa1ZDbFFKQTd6OXJlTzFUV0dScDZ4VzFhN2FBS0QwcG1zT2JocXlH?=
 =?utf-8?B?amp1ekkyN3Boenl5QVN2OTNWKzN2aktGMHh1Nmdwa2RSNmg0Lzk0TnJaZXFM?=
 =?utf-8?B?N0FiZGdpZ2hoOGxDSEp2ZjdQYk5aUHhFOVdYQk1HU2xaWTZYR2NNMFh6ZTQ3?=
 =?utf-8?B?eVBTVmdjR3J6MWppV3FjN094T1RjSDhlL0RGTVVmMFpCUVNmVFZrVzJxQytv?=
 =?utf-8?B?bUJyVUw2R3RldTY5WlJBL2dmSS9BbEs4empqR2NnQ09zR1NUT2ZxakEwbXZZ?=
 =?utf-8?B?YTJsZjIrRHFoWm9WZkNGL1pqZW1WQ1QwamRCZ01IRDdlbDhkOHNGWmFTZWFJ?=
 =?utf-8?B?Zm9CbXdQQXFvVnJpRDJCc0tReGFYTTdrVklFMHF5RFU4WU01ekUvRjJoaDB0?=
 =?utf-8?B?dm1zQUdvbCsydG1nQ0lYZHlpU0c1M2RvOGE4bTJkWUtTT1hDV2wrZDBGNjlV?=
 =?utf-8?B?UGVOcDZZRkc1VDhBNlB3dWt2SFIwMnVxbGdhcUdqODJzV2Z3elRKZ3FhRlFM?=
 =?utf-8?B?QU9BaUNkUDVkTG9rczRkbjN6aWU5U2wwU1BVYTBkRzNobkJpWHozOTdTUlBI?=
 =?utf-8?B?RUlZYzdJZ3pRVll5eGNkbnB0SWQvOHNuRWNkcXNEeDlaaHlCWndJWEpXMzRT?=
 =?utf-8?B?TkFOT3IxQ3NDTWJIVzc2czNCdkljdTRzLzRMWXpEaFJBczhUaVFBcGg0MnNn?=
 =?utf-8?B?ZjRWMjlPbkpkY0tlcjRPakNqL0trRUkyT0JKcGtWVnY3T1RQMHN0MFQ3cFF5?=
 =?utf-8?B?dVl4cnAvWWZPdWk5bHU4dllqVXphMllvZjVINW1iZll1eXI3UlVLSjJQYVI2?=
 =?utf-8?B?ZktWMTBjajFjK0o0ZENIdEJlUmZFZmtlWFp6WUxsUy9zYm1QaTVBbk1VWXlx?=
 =?utf-8?B?QTYwd1hiTzJNWXZMcU5UelNZTFJMZHptMlpEeWVKOFhvTVl3YTVnL2I4dU9s?=
 =?utf-8?B?dmhEMzJSY2dUbGRFaHRrdDNjd1hSRG9VWHphV2Z5VXd3aGRlRzRNbVE3c1pi?=
 =?utf-8?B?bjdrYUZmK0thdVMrd0g3QT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXJxSTlYTjFaOE5ySy9kZmIxUmtNYXZtYzA4L2FxK2t3OUJmbVdvbE5oWVdU?=
 =?utf-8?B?enJ6bjhsWDZZSGxYTmlyS1N5bmFYWkU5RzN6UVJFN01ubDY5VDdZcUFZeFho?=
 =?utf-8?B?UFA1azMyd2tnMmdWMCtjL0JyTHN5dWlkMXAzS2x2ZktWRVNYbVF1NjV5UFFZ?=
 =?utf-8?B?Wm1XdHpNRFN0bFhOZ2trTlg0ZUl4MGZhOXVFVlJHL2VZOEtqQjY5blVFRUtr?=
 =?utf-8?B?YlErdkxVNUhobDNMWm5zYUtXQ1JicXEya1hVa25RWDJiTU41cURSd09rUlNy?=
 =?utf-8?B?OXFTYUNBd1VWcCs1cGJSMDRIeFVFS3A5c1ZHRkwyRlNpZHFZWnNwZ3dsYmhW?=
 =?utf-8?B?amhJeU1aQllWZHdCMEN5Q3FnamwwSVhORUgweExLZDJVUHg0WGRDTFJlMUFl?=
 =?utf-8?B?MXArdi9ETXd5K0NFVXZaRjNKMFJCWjU3ZG5CcnBxa09TSGlDa1lKYWRRT3Fw?=
 =?utf-8?B?UFdXNEJXYVJLWmw3OHhZS3ovcXZWRmIrZy8rbmxMSGxVY1VhRTFDa2FHUTQ5?=
 =?utf-8?B?RnJtWFFqN05BUVpHV3I5OTlsR2ZINWliVWNvUllXazhKU1FNUjkyNGNpRGsz?=
 =?utf-8?B?SjlrSEhlRW5PeUFVNmZ4MGZUNG1FUlFGdEllSkw0eTdYYjZGdTd0UDk2d1Bj?=
 =?utf-8?B?R2JZMkRXeDNKT2l5ZzNiR2xzOWZUOUhGQmFEV0xpUlh1b08rSmVJNzE3clpB?=
 =?utf-8?B?cCtQaWFPNHFka0FtR0h5UHBaekt0b2Y2aHJhc3llK0ZaMzNPbUljYmdRVmZK?=
 =?utf-8?B?dmFNRk5Vb051WGQxcTJSVFR3RWJzS2RhK25oUWhuWU1lYWJ0QVNGL045N3FO?=
 =?utf-8?B?QUZ3QzdPdWh6USs5amJacVM2Nld1Mk9CVzRQaWhXbnVKVk5YM20vNjd6a2s2?=
 =?utf-8?B?VGJhUTVPaVJvYi9NSmNBcXIxN3pkVGJuYkVGbGFGblNkOWhUREYrdDM5alg1?=
 =?utf-8?B?ZlJrL1o0d3ZsUTV5ZjhFVzc2ZVpieHBxdVNVWExocUt4S0hKVDdMb3N2Zlht?=
 =?utf-8?B?MkF3bXl3S3R3T3FNZWdGa2NEMUI0eVNVMTF4dHA2N3QwcDlQL0dQOURpb1Bk?=
 =?utf-8?B?Z0F6RWl6ZkRqSkF1Ym05TXhjNHoyakY0TW1ZcE5BdVQ3UkkzWXVKcXFrZm1J?=
 =?utf-8?B?MldodUdieFd6OWgvOE5rNWhZWVVXa0VBOC95WGV5NVdCYWJyQVorNURyNTdC?=
 =?utf-8?B?N2YxQmVTcVc5TXUvbTFPNmhhQi85TGl4RnczVlNkbDBVTzAydVg2ODM3bHlo?=
 =?utf-8?B?b3A4STY0a0RRK0tSNWF6NCtjeTV5ejJzOFRCVnNGWGM3NGhVd0pyNE01OHhX?=
 =?utf-8?B?Y0dNeExmRm5LTmg1ekVaNzNGY3hHR3NJNzVyTGV6WkQyN1diN25qK2taQ0xx?=
 =?utf-8?B?bGdEbWNEQ1dtbkNRQ1U2R0s5dm1qQXNxUS81VzQ4U3F2K00rMkFBS3ZwNnFJ?=
 =?utf-8?B?NVlhaTl3ODZwOTFnMnlTRy9pK2ZhQXpTR2ZCUVRIUTU0MHk4WU9nYzB4UG5r?=
 =?utf-8?B?ekFjaUZYNTF6OXBSc3Qzb0N4VXBGVys4QlNvL1RqWUFOWWJHNitkSC95QlJK?=
 =?utf-8?B?bjVOUThmbjdFa1R1Q1ZNQXBKL0hUQnN3dndUWTJRS2EyWGNLQkVlaTNZUitG?=
 =?utf-8?B?c08vQnp0c1d6ZEs4amtLaC83L2laWmRQYW9ybkJJZ2s5ZHhvcVZpdHo3K2RR?=
 =?utf-8?B?cnVxRUl5WDhERU44WG0zNVRRQ21vT1Rlc2pJMmxvc3FPVkl6SlJSUTB3ZTNR?=
 =?utf-8?B?aFFROEgrb0ZKQVEydDIzTmJGcTFTRkJlWTRUbWxQbVM1OG41TFBMemk3b25X?=
 =?utf-8?B?TkthYXRnNTI2TVBNMXlxWDR1dDFKMWR4UkFJaGtsMjNIYkM2YXNRV3c1cU1D?=
 =?utf-8?B?TzZiajFDUWk3M2JueVI1RVBEV0oyejdLb0F4d2xxcUlHcmZXbmdJckk5Z1Rv?=
 =?utf-8?B?TFkyQUU5S0tXQTdJK1cxVmxSbDNuMkxlT05wcVQ1a2tpUWpicmJRQ09sRzBk?=
 =?utf-8?B?eUwvUmc3N21GT1pGN3B4QVZXZ1Z5VUU2eEU0WHgwUHp6QWx5bE1CQTZQMEdh?=
 =?utf-8?B?SWdwY2ticVd0SDhoK3RrNmdvcWZhWUlTcnBGc3B0R29KcHB2OENVWEVhSEQx?=
 =?utf-8?Q?tzDluWEFCR5LAo4M248FmOBss?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eff9c255-6b78-4981-f687-08dc7394f136
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 21:37:51.8744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zW+m2TDsBsosrozmj7YTQ799Fkf7wYgS0hXIHP+Xr1kssjmUxG/7oY9ZovEWmTqS8sOVcecM1IJNwvLdWYOzHm/NYezaB/jInjJvZI8oKmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6660
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715636276; x=1747172276;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GXiuXmmZPDgO5C3aeHWH/BNbhqP8jLH7A+XLb2gwyWA=;
 b=I+ZkllNwmI6qMCBloAXmI7HaoP+ailUT7IsFEnEFLCoSyECGE52+XixO
 8oLnFsCF1tVpWN7tkKjsn2TxywedYt9mT9SCAEZUPmP84o/WEgGra/0lz
 SOwIS15B2R27sMlItJAygSLE8YHzSOUdR/Uo6M9JuqvyjGCZfOz3vnRjF
 KXtYpEKm79YJPbWJah5aWRf2MmhL3Zoi9bVUGKyDHd3fz0riX8RV0Qnqw
 O/Zwc8kH+0kGH5Xt0N2xWSg7F22P5Okkc1sjq/Or32SEj5bG8+a+NSiQ4
 2L0QhSelRbqpvzWTUkjRUZMwO8MzRuOuxtFgjtoukay49DsILNVPqfdv6
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I+ZkllNw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 05/15] ice: allocate devlink for
 subfunction
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "shayd@nvidia.com" <shayd@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWljaGFsIFN3aWF0a293
c2tpIDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXks
IE1heSAxMywgMjAyNCAzOjIzIEFNDQo+IFRvOiBLYWxlc2ggQW5ha2t1ciBQdXJheWlsIDxrYWxl
c2gtYW5ha2t1ci5wdXJheWlsQGJyb2FkY29tLmNvbT4NCj4gQ2M6IHNoYXlkQG52aWRpYS5jb207
IEZpamFsa293c2tpLCBNYWNpZWogPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+Ow0KPiBQ
b2xjaGxvcGVrLCBNYXRldXN6IDxtYXRldXN6LnBvbGNobG9wZWtAaW50ZWwuY29tPjsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsNCj4gamlyaUBudmlkaWEuY29tOyBLdWJpYWssIE1pY2hhbCA8bWlj
aGFsLmt1Ymlha0BpbnRlbC5jb20+OyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5v
cmc7IHBpby5yYWN6eW5za2lAZ21haWwuY29tOyBTYW11ZHJhbGEsIFNyaWRoYXINCj4gPHNyaWRo
YXIuc2FtdWRyYWxhQGludGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJA
aW50ZWwuY29tPjsNCj4gRHJld2VrLCBXb2pjaWVjaCA8d29qY2llY2guZHJld2VrQGludGVsLmNv
bT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbaXdsLW5leHQgdjIgMDUvMTVdIGlj
ZTogYWxsb2NhdGUgZGV2bGluayBmb3INCj4gc3ViZnVuY3Rpb24NCj4gDQo+IE9uIE1vbiwgTWF5
IDEzLCAyMDI0IGF0IDAyOjU1OjQ4UE0gKzA1MzAsIEthbGVzaCBBbmFra3VyIFB1cmF5aWwgd3Jv
dGU6DQo+ID4gT24gTW9uLCBNYXkgMTMsIDIwMjQgYXQgMjowM+KAr1BNIE1pY2hhbCBTd2lhdGtv
d3NraQ0KPiA+ID4gKyAgICAgICBzdHJ1Y3QgZGV2bGlua19wb3J0X2F0dHJzIGF0dHJzID0ge307
DQo+ID4gPiArICAgICAgIHN0cnVjdCBkZXZsaW5rX3BvcnQgKmRldmxpbmtfcG9ydDsNCj4gPiA+
ICsgICAgICAgc3RydWN0IGljZV9keW5hbWljX3BvcnQgKmR5bl9wb3J0Ow0KPiA+IFtLYWxlc2hd
IFRyeSB0byBtYWludGFpbiBSQ1Qgb3JkZXIgZm9yIHZhcmlhYmxlIGRlY2xhcmF0aW9uLg0KPiAN
Cj4gTWF5YmUgSSBkb24ndCB1bmRlcnN0YW5kIFJDVCBvcmRlciBjb3JyZWN0bHksIGJ1dCBiYXNl
ZCBvbiBteQ0KPiB1bmRlcnN0YW5kaW5nIGl0IGlzIGZpbmUuIFdoaWNoIGRlY2xhcmF0aW9uIGhl
cmUgYnJlYWsgUkNUIG9yZGVyPw0KPiANCj4gRG8geW91IG1lYW4gdGhhdCBpY2VfZHluYW1pY19w
b3J0IGlzIGxvbmdlciB0aGFuIGRldmxpbmtfcG9ydCBhbmQgc2hvdWxkDQo+IGJlIG1vdmVkIHVw
PyBEaWRuJ3Qga25vdyB0aGF0IFJDVCBpcyBhbHNvIGFwcGxpZWQgdG8gaW5uZXIgcGFydCBvZg0K
PiBkZWNsYXJhdGlvbi4gSWYgdGhlcmUgd2lsbCBiZSBtb3JlIGNvbW1lbnRzIEkgd2lsbCBtb3Zl
IGl0IGluIGFub3RoZXINCj4gc3Bpbi4NCj4gDQoNClJDVCAoUmV2ZXJzZSBDaHJpc3RtYXMgVHJl
ZSkgb3JkZXIgd291bGQgYmUgdG8gcHV0IHRoZSBsb25nZXN0IGRlY2xhcmF0aW9uIGxpbmUgZmly
c3QgdGhlbiB0aGUgcmVzdCBpbiBvcmRlciBkb3duIHRvIHNob3J0ZXN0LiBSQ1QgaXMgcHJlZmVy
cmVkIG92ZXIgdXNpbmcgaW5pdGlhbGl6ZXJzIGluIHRoZSBjYXNlIHdoZXJlIGluaXRpYWxpemVy
cyB3b3VsZCBhZGQgYSBkZXBlbmRlbmN5IHRoYXQgZm9yY2VzIGEgbm9uLVJDVCBvcmRlcmluZy4g
SW4gdGhhdCBjYXNlLCB5b3Ugd291bGQgZGVsYXkgaW5pdGlhbGl6YXRpb24gdG8gYSBibG9jayBh
ZnRlciB0aGUgZGVjbGFyYXRpb25zLg0KDQpTbyBoZXJlLCB5b3Ugd291bGQgcHV0IGR5bl9wb3J0
IGZpcnN0LCB0aGVuIGF0dHJzLCB0aGVuIGRldmxpbmtfcG9ydC4NCg0KVGhhbmtzLA0KSmFrZQ0K
DQo=
