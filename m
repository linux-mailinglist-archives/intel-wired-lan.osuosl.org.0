Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULAWKnrQgGlBBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:27:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2090CEF45
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:27:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E5FB60B60;
	Mon,  2 Feb 2026 16:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StpdAAn7q02P; Mon,  2 Feb 2026 16:27:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4225560BCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770049655;
	bh=njOTE2ZSYIxAFLY+Zm8UsYjhSxDZ4yRLkQiS0fxAJxE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kOxN8UNw2hooMl5Q2JYF7Eef5kgJ3FTSuoQu3/gEtLwpulXKpH38FTZj4/gfJ50jF
	 fWqpyXSDQmuE/VxXaP1R0vx+RigbxEF0D/SRvZIg9OW2S2npftujNLYNUIKUysgrj9
	 s/EtzXejRLpBZTlCRO2HFo3czrx/NRuHQoKZlYGubYk7qelY/23QLmEyv9d7VltlIk
	 B3rySXKSlih1QDCCtgtzy0Y7xunSKvu5aBk3nortpIqprsQpi1iu0m2opb1rQquCkr
	 +oj+jhhiaV3Cdl4E7k0rifoUz3lpvMYD+WDEua5gaZyT126s67Zd0vkB4rrmE2rcHF
	 BZYBgWDWVqzRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4225560BCF;
	Mon,  2 Feb 2026 16:27:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9607C1E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:27:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78864407C7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:27:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KPQzrssbAAeg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 16:27:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A33AB407B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A33AB407B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A33AB407B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:27:31 +0000 (UTC)
X-CSE-ConnectionGUID: 3pEQ+Q3JSmSrL4W6+gLuEQ==
X-CSE-MsgGUID: FbZJXavISHGEL9UUHU7v6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71292845"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71292845"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:27:30 -0800
X-CSE-ConnectionGUID: AmUV9Xk2TdezoCEE3pH8Sw==
X-CSE-MsgGUID: DDk305YKRi+vmxAQk95FHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="240678457"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:27:31 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 08:27:30 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 08:27:30 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.54) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 08:27:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I9Dc/34OjrcpPOA7dE1sG6LvdqR8KClvXtXE35iw0pF6bEgA1tbsVVMzZWfn3iQBsbR6uagB9+6rkF4y4Qrp/2lOLBULuQKiAHyCNxlM8MehH4h7mvUfDYahlPwqtG57Qua36zQU2TwzyqcFDbTItAIVTe61a4mpZ6HO6fK4E26mCcptsURAksDG2qL6TIQuGyzLw1du8yVoWmxXxTI7D/GDJejA5anndGyGAs/xwLGL8AeJtGn4stM9ZkChVYPJvK6mD6lkQRtZ4RaRVNcbXEP1+dLUWKqEobB45tyBhZk/OUODnaP5ufk4P5wDk8UnCIknQ1SEfcfS67K9yenDwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=njOTE2ZSYIxAFLY+Zm8UsYjhSxDZ4yRLkQiS0fxAJxE=;
 b=E8b3c1ynN2/iF+kfQSd1b6j/0htJoTfMMaGqddEpuDuVsr83TKXQrEkIKJ5fy8/srm6h9te0DpID6IdLOaYKrs3SbQFK29gdO1+DuaCJD4dUpGprGG6ZHuHM3nAAiLAbuVPRGt/QIT3Wj25HxIKM7ZYnGNSsp7gKD5ffhuxPFILkAeckS2eZexXuWiJ6vlUGsd8Aamby9/G959N0xXdpJcTWbtyt9KTbIORu14vIk0lfdBgltdTFpYnTeDVjSVDsx4c2IFONkI2CUI6vObhmmuZ3aonnkP1de5b/bc4ZO7yGy+AxqZayptg9SK46DSAkp6qTXkDpn7Kr4xmzTNUA1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 16:27:26 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 16:27:26 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Li Li
 <boolli@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric Dumazet
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] idpf: skip deallocating bufq_sets
 from rx_qgrp if it is NULL.
Thread-Index: AQHchBisNDtw/t/LN0Sf+rwl8ViPTbVPtdCAgCAB3uA=
Date: Mon, 2 Feb 2026 16:27:26 +0000
Message-ID: <SJ1PR11MB62974489C265924B9206E58C9B9AA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260112230944.3085309-1-boolli@google.com>
 <20260112230944.3085309-2-boolli@google.com>
 <DS4PPF7551E6552C3D8014B51CD9ABDF66BE58EA@DS4PPF7551E6552.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF7551E6552C3D8014B51CD9ABDF66BE58EA@DS4PPF7551E6552.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SJ2PR11MB8297:EE_
x-ms-office365-filtering-correlation-id: aff94716-2b8a-4456-0dcc-08de6277f3f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZGRiNzcreURvZVdnMG54cnFvay9iRGFRU2FkRkhiMDJEK2hzbGNJZTAwT3Bw?=
 =?utf-8?B?dmNWNFpTaFljci9EbXBRNnVqT1VlNnVVZHB5QTRSdXdCL3dXK0NXblRIR0VM?=
 =?utf-8?B?U0liR1VtUzR2MWw2amNBbkd5eUpvVytxaHpUSThEbndPQVR6YWxuSUtnL0ds?=
 =?utf-8?B?L1RYVTlBY2twVjlkWndVcnlhbmhmVkU3VjFNcW1QQ2hjT0FMZnZ5a1NzeDgy?=
 =?utf-8?B?TitWNVZUTkxTazdOcU5Oa1l0YkdUOU9uZjNzQ2tzR0M5bEtwR0FHY1FWRlow?=
 =?utf-8?B?T3hDK0Jyc1RjU0tyTEYxdzE1akVPZTdPK1o2WGdOQWtvei9GazRRbTJZVk1u?=
 =?utf-8?B?VGNJeFJQNEhnRUFPQlZCcjBiTnNOTkt4U1gyMWV6T2hvVk0zTVN2Wk9vVmZ6?=
 =?utf-8?B?anVrN0lzbG16SnlYNXJ2Z3hOeXdkVmVlWDdTMWdpR1ZTb2dxOFNkaGhhN0V5?=
 =?utf-8?B?NDY0YWc4L0d2bFBUTnpWdzRuSnE0eHd2Y01sYWVwTG1hdTZMclZjMkJYL29Y?=
 =?utf-8?B?NGxVT0NrcTJ1T282VDJYYXFzUEdpdEZUUmNiT3ZQcTBzSjJLaGt4ZG5oS2ly?=
 =?utf-8?B?QW9FZ2orVUJWaXZvdi85NlF1cEhKSWQwMjhJb1RCb1NKNytPb3VHL0NKYnlC?=
 =?utf-8?B?Uzc4bW12cDA1RExKKzM4SjRXQzU2VGJmZkQ4bXBoZkxGcnJvUG5HUmNlNEZS?=
 =?utf-8?B?ZHlERDlvZUcxS3J2SUF6SjdhaGxVTndYTEUwaUdNTjZRUkVzeXBNWXZWcTUr?=
 =?utf-8?B?aXJLUDB1TWhoYUNSU0lDREZMVUZ0TzIwT1NxMHFOYU10ZmhTR3pzUFl6TDZ3?=
 =?utf-8?B?V0pmTEJYcHpCSC85VHdjcGc4eGxNaFdwcjlZaVZQb3ZxdG9JZEN5Z1g0L0hB?=
 =?utf-8?B?eDdpVzg2Q3gyekpJZWk5RUtLUVk5QVVqRDU4SXVBY3VpWGhTZUx6YXBIK0Ra?=
 =?utf-8?B?aUFtMENiaWE0YlFmdzR3ZVdCNHpBK0hRbzc2K3dpSTU0QWptRW53cU9UZnhU?=
 =?utf-8?B?eUg3OTdmbEh4dUtWZjdUTnc3c2VWYklLTmsraG1qTWRDdTR6VzhFZ0NteEhq?=
 =?utf-8?B?UGYyZXVqMG9qaXFyV3oxQ1RsbjhyczdHb2lwQXlEeDNtVUdBcmRMMVMzMWIy?=
 =?utf-8?B?ZFc5U3BpVnQ0SURrUkxEdHZEYUdudFBiUVg1MGFXRHNtSC93clhDQzFVSHh1?=
 =?utf-8?B?VGc0M21KdXZVWEFEd0tLWU1Sa29VZkkrOFI4NEM2NStlK3pQbWMwWFRMMGR3?=
 =?utf-8?B?T0M4OVdkZU84WGpVd0FPd04rOVVGNTZhS1UvakhxRjlzdEtBZDNwOG5jbVlp?=
 =?utf-8?B?RnRpUHpuV0VXSFMrbTh2Q29DNFR5VDZMQmo4a0dLb09LbzZUdngxMG4yRm4v?=
 =?utf-8?B?TzNjMXpMSmM1eSt0c1A0K1p0bjRQUmdqYzRFNlhvNk91TStaS2pONVUwTjBP?=
 =?utf-8?B?RUxremxZUGpRc2NUSnI4OHByMHpBWGFMMnNRNEdsTEFZTytJQmNpc0w4cnhm?=
 =?utf-8?B?a1pBUENGREpsNWxHQW5ZalgzZm9ERzNLUWcyVmJkU3lKZS9oRHRPWjNnWGRE?=
 =?utf-8?B?WjkwN21raFBDSEk1MG1JRFcrenNETHUzNVNIL09XL1Z1UmhiUndvb0hQUG9P?=
 =?utf-8?B?d0RvRVhuMGJSSURlSGNRQVVybFlVVDhDZVVYRFFoWFMrVzI3YitvZzlYc2Zt?=
 =?utf-8?B?UWVkMEFPeUNCeTJTOHZOVzlXSXZtWmFLdWRLeFY4Rk93ODJFSjA2OWdNTlNj?=
 =?utf-8?B?cGlDb2thOVhrekxocjR4QUlrY0wrK3Zudjdhc1V6a0FvMk5oWTR6RkgvRTBU?=
 =?utf-8?B?TEtVaUlXL2ROaWE4M0dQYXd3VUNlMHlCQlZhM1JrZUFtVzEwVzJpRHJtWmlF?=
 =?utf-8?B?a3BuQjg1UERib3pMZ2VodUhkWjJMam1vTmlhZFEvM1YzQ2dGT2hTdnBlTnJQ?=
 =?utf-8?B?M0sza1BhQzVFaElxb0ZuN3BDeVNDSXlMTE84OGR6Ty9pMmtmYVI5dlVMbUFj?=
 =?utf-8?B?L0U1aVMzRkY3SEFBcW5PNUZyRSs2UmZKMWpNNVJhWTVjUTlCdFAzdjZXUEZY?=
 =?utf-8?B?cE5BbWNoTzhaYm1kcTcvUnNqd1gyYXVaTDZsVGI5ci9OTVRlWGNzQVl5WjZQ?=
 =?utf-8?B?Y0FEUVI5N0JaZnQwL0JqTXFHaEVFMjRYVDQzWGwrVTN6cWlqQ003KzZBck91?=
 =?utf-8?Q?KhN9r2E8AQJull0pElQzrPBf6w728rHxrIqjQKQIzzJ9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFR2ZnVnaUVIZ1c2dlhEQjQyUEVacEEvaDBKMWhqK3MrWEludnJEK3pqNkhi?=
 =?utf-8?B?RkcvZ3hiY0Z4QXgwU1FOYnNzOGQ2aHJvVjJ6emdhaVBra00rSHJPblRNM1Zk?=
 =?utf-8?B?UVdLTzNnemdPZ1h2aElHN0VVMjgvVkF0WU1CdUx2NVlxTStqckFMMjh4UnQz?=
 =?utf-8?B?SjM5WFNWWGs4WWxHMVdLUU1YVkQ1d0tmZ1FpeE96WDZGVVlpajlDelFvaE82?=
 =?utf-8?B?c1Y2TzI4bWFhaWJYc3lhWHRsc2plZ1F3SXpNM1F5RDM5TVFPYXREMnN2VkRG?=
 =?utf-8?B?U2c2QUZ1ZUVkallxY0t6bTlFS2tOWG8wU0Y0SThlQURlQ0EvYUxVYzdncjlx?=
 =?utf-8?B?UG82aHJNTEhBMUZwZzZPQlYraUNJYzNSY2dEblBEQk1BWENsWSs0Y3hrZEhC?=
 =?utf-8?B?Kyt5L0JzQzBJcWY2b0diWlBKV2ovZDNOVk5Zc2N5clZZNzJ2QlhmcTA4UC9l?=
 =?utf-8?B?WmVRbU5QMGVVaGRvM2ZEU29KcTJDd252Y0M3NmxZK1htY3F4RlJDN0pySHVi?=
 =?utf-8?B?TXRCQkhsSHpsNGJmcjhMbU1NaU03blRnaUpEQkFQNUc5M2hLaHhvRStGQ3Fl?=
 =?utf-8?B?TW9LWVg0enBjTWoyNzZPZFRMeG0rOC9rZDVpYWttZW1RaHhmc3NFaTc3RlJJ?=
 =?utf-8?B?Rm5vZ2M3SkhsRG9aM2kwcEpjV2MyaEsxMkdlTDlVTXl5NmxhVFZJZ2tmdkx2?=
 =?utf-8?B?Tmx2RVlXOElzNUdJM2JjU29iRTk1TTZSeFFqV3N5ZWhSTTNLSWNJbjI5eHFr?=
 =?utf-8?B?ZXhiNmVGUU9KRFhLV3hvcEtVa002SkJOOE94TDFvVlJ5Ym1aaVA1Q3NhVFRQ?=
 =?utf-8?B?c3NydWV2dVlMSXhGS3NrcFZpdGJJMm5UbFUwSFBKY0FrZlgxS3l4dWZYM29y?=
 =?utf-8?B?cEZvd0JQMXBKdGM1dXI3MEsycFU2RWFmb1NOamJ4dEtGWDF5cnlSbFJ5ZytM?=
 =?utf-8?B?bEU0YXdNNWxuMjBkT0cvdU9CMkszRm5nWjQyV0g1eVNXTTBzU2t3S2JWYVRC?=
 =?utf-8?B?ZFhjb2wwTnROcjY5V2RtMXVPcEJvMExxN3h5QW1pR0hITkFySjZPWk9ReDdX?=
 =?utf-8?B?S0NPWm5DZkZYTFIzSEFYaHg4bnh4K1NPZFM2ZzE2RDVtLzJJcVRYYmFmVllh?=
 =?utf-8?B?OEF2V2ZvSkhWQ0ZRREJXbWFGU2VqNUNrbk1xQWhqT3NSaWE3U0g0cElaZW9t?=
 =?utf-8?B?UkptcHkzN1dlQTB6ZGlzbjNSLzV2MDhib2pNREpHQXVvam9PbWlqYStEbVd4?=
 =?utf-8?B?dkJ1Q3RSejRzQWxueWZDNnRPQm5jL0ZURHN0Q2Rjc1VGT0UxQVpvMlp1QjNV?=
 =?utf-8?B?bnVHa1EvcFpUQUtOczJKYW1IZGpXT1BlUjNhR1Y0a0tUdys2Q1pCcUpzUFl1?=
 =?utf-8?B?MjhvclFQUGZqaEVRSkE5azdsM1pLZWNTVWZNSFN2V0JkRXBPRmR2OFlVRGoz?=
 =?utf-8?B?Smh6a285eGs2T2h2TTlUV2VTU0ZvdVd3bUpYRnVpakxoOTBmTHhlQ29URGpH?=
 =?utf-8?B?WDA0RjlCbEhEMnZaRGx6d2IxYjdvSDd4M3J6T0lXT0owTVJGeWhjanI3dnlL?=
 =?utf-8?B?WDgyeVhDSzNSQUxvNVRmMFRPVG42THhjb2lmQlpPcVFBL1dTYVNHR0VVQ0J1?=
 =?utf-8?B?Y0xjS2xsU2dORlk2dVA3WDVHVEZNdTR1TUxZbms3M1Y5VENHa2pyek4yWWNi?=
 =?utf-8?B?QU8wZjVkMnMybDlIU01pLzN3SVJSUlRBdzF3S2UvWVlWd0FDZ3B0TFhhMTli?=
 =?utf-8?B?Z3YvQ3hsRzhFL21XTHZLa1NEYzVtMnNlU3R2YVRvaEEwVElIMXByNmdoMktH?=
 =?utf-8?B?bjFBeENlUU1obEtFUCt1VkVwdWxIdzJJNmtJa2ppU1VvcllJZVFWcVR6NjhJ?=
 =?utf-8?B?aVFRWXdTQkhHd1cxREhFS2ZwQUx0S1k1Q3NFNGpzR1AvODZ1eTFBR24vbzJx?=
 =?utf-8?B?NUIxaHhjSWdWQlg2ck1YR01odWFuc29Fbm9GMGZYWk5VT1BFcG9UQW8rMHlI?=
 =?utf-8?B?RmdCdFFkek5IWUN4MXFscWlRVWJ0MU4xWXVKcE5ZeUNwWTVGMldXNTArbE5a?=
 =?utf-8?B?YXNvbjhTU0prS013SnpUcVl3L01GR2J4dzh4cDhReUNieXBib1R6VEdSc0FB?=
 =?utf-8?B?cnc5RXZzMXk2dTJ3NlpMeTQrenNWd0YwT3FjUWtMZktQUXNPeTRTbExBdEQ4?=
 =?utf-8?B?Z0tWamRuMkhJNHk4MHgxVHJnWiswcUVCTUlBTzJ6dFFZSmRGZVp1QnRIRVpU?=
 =?utf-8?B?ZlB3MzJNVmxqb3JtNGgvTXdiZCthQUZrdm1SaklPWGppalp5S29CQlVoUVo4?=
 =?utf-8?B?dUdPeU45Skx5VWo5RnR0VWNVMmRCR3BzRjNGK1RGQktYMlRVVFBRQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aff94716-2b8a-4456-0dcc-08de6277f3f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 16:27:26.5939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aCVhagFfxr1lEFViuEu9CDGV6hkBvllfkR/8gJ62dufI2SxNemJJiD+/PTdUem5auNQ8SzPrkO6ZKeMM4pU80Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8297
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770049651; x=1801585651;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=njOTE2ZSYIxAFLY+Zm8UsYjhSxDZ4yRLkQiS0fxAJxE=;
 b=h7gs09p/iEdEUlIY9iput0o16vCzkpJmUWg584fsgYC3mNhH1lKdUjGW
 TNr8z43O3Gwelrkkr3JbYXdop4EGEqyXDZFmp1vRdm8jul9gKLKIra+Kq
 xHCvJTzdG+s6G7AFtMNl1lDfluyFZdAwFDsfl4S9/VjHZ9QSuVFxhYG1E
 emJg02aCP8Ybk2mFrjm3sNRjpZpYuTzecQC7Zc/TggWvZZPK1Ux6djTTa
 A0AjF6dTduAuBdhYewOnuvV3zJbami7w3qbgQ/OU3e86rL+k5YXGDKwSg
 vpZXQXSbPmLNND+Fac9/JYZNzd2I4FaFTF3ldBlRHx0H8ierTMbHh+zEP
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h7gs09p/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] idpf: skip deallocating bufq_sets
 from rx_qgrp if it is NULL.
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,davemloft.net:email,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: E2090CEF45
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogTW9uZGF5LCBKYW51YXJ5IDEyLCAyMDI2IDExOjM0
IFBNDQo+IFRvOiBMaSBMaSA8Ym9vbGxpQGdvb2dsZS5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0K
PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxw
cnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVt
YXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47DQo+IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vv
c2wub3JnDQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnOyBEYXZpZCBEZWNvdGlnbnkNCj4gPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFp
LCBBbmphbGkgPGFuamFsaS5zaW5naGFpQGludGVsLmNvbT47IFNhbXVkcmFsYSwNCj4gU3JpZGhh
ciA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPjsgQnJpYW4gVmF6cXVleg0KPiA8YnJpYW52
dkBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCAxLzJdIGlkcGY6IHNr
aXAgZGVhbGxvY2F0aW5nIGJ1ZnFfc2V0cw0KPiBmcm9tIHJ4X3FncnAgaWYgaXQgaXMgTlVMTC4N
Cj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IElu
dGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVo
YWxmDQo+ID4gT2YgTGkgTGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiA+IFNlbnQ6IFR1ZXNkYXks
IEphbnVhcnkgMTMsIDIwMjYgMTI6MTAgQU0NCj4gPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwNCj4gPiBQcnplbXlzbGF3IDxwcnpl
bXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+ID4gPGRhdmVtQGRh
dmVtbG9mdC5uZXQ+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgRXJpYyBEdW1h
emV0DQo+ID4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1
b3NsLm9yZw0KPiA+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOyBEYXZpZA0KPiA+IERlY290aWdueSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFNp
bmdoYWksIEFuamFsaQ0KPiA+IDxhbmphbGkuc2luZ2hhaUBpbnRlbC5jb20+OyBTYW11ZHJhbGEs
IFNyaWRoYXINCj4gPiA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPjsgQnJpYW4gVmF6cXVl
eiA8YnJpYW52dkBnb29nbGUuY29tPjsgTGkNCj4gPiBMaSA8Ym9vbGxpQGdvb2dsZS5jb20+OyBU
YW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCAxLzJdIGlkcGY6IHNraXAgZGVhbGxvY2F0aW5nDQo+
ID4gYnVmcV9zZXRzIGZyb20gcnhfcWdycCBpZiBpdCBpcyBOVUxMLg0KPiA+DQo+ID4gSW4gaWRw
Zl9yeHFfZ3JvdXBfYWxsb2MoKSwgaWYgcnhfcWdycC0+c3BsaXRxLmJ1ZnFfc2V0cyBmYWlsZWQg
dG8gZ2V0DQo+ID4gYWxsb2NhdGVkOg0KPiA+DQo+ID4gCXJ4X3FncnAtPnNwbGl0cS5idWZxX3Nl
dHMgPSBrY2FsbG9jKHZwb3J0LT5udW1fYnVmcXNfcGVyX3FncnAsDQo+ID4gCQkJCQkgICAgc2l6
ZW9mKHN0cnVjdCBpZHBmX2J1ZnFfc2V0KSwNCj4gPiAJCQkJCSAgICBHRlBfS0VSTkVMKTsNCj4g
PiAJaWYgKCFyeF9xZ3JwLT5zcGxpdHEuYnVmcV9zZXRzKSB7DQo+ID4gCQllcnIgPSAtRU5PTUVN
Ow0KPiA+IAkJZ290byBlcnJfYWxsb2M7DQo+ID4gCX0NCj4gPg0KPiA+IGlkcGZfcnhxX2dyb3Vw
X3JlbCgpIHdvdWxkIGF0dGVtcHQgdG8gZGVhbGxvY2F0ZSBpdCBpbg0KPiA+IGlkcGZfcnhxX3N3
X3F1ZXVlX3JlbCgpLCBjYXVzaW5nIGEga2VybmVsIHBhbmljOg0KPiA+DQo+ID4gYGBgDQo+ID4g
WyAgICA3Ljk2NzI0Ml0gZWFybHktbmV0d29yay1zc2hkLW4tcmV4ZFszMTQ4XToga25ldGJhc2U6
IEluZm86IFsNCj4gPiA4LjEyNzgwNF0gQlVHOiBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJl
bmNlLCBhZGRyZXNzOg0KPiA+IDAwMDAwMDAwMDAwMDAwYzANCj4gPiAuLi4NCj4gPiBbICAgIDgu
MTI5Nzc5XSBSSVA6IDAwMTA6aWRwZl9yeHFfZ3JvdXBfcmVsKzB4MTAxLzB4MTcwDQo+ID4gLi4u
DQo+ID4gWyAgICA4LjEzMzg1NF0gQ2FsbCBUcmFjZToNCj4gPiBbICAgIDguMTMzOTgwXSAgPFRB
U0s+DQo+ID4gWyAgICA4LjEzNDA5Ml0gIGlkcGZfdnBvcnRfcXVldWVzX2FsbG9jKzB4Mjg2LzB4
NTAwDQo+ID4gWyAgICA4LjEzNDMxM10gIGlkcGZfdnBvcnRfb3BlbisweDRkLzB4M2YwDQo+ID4g
WyAgICA4LjEzNDQ5OF0gIGlkcGZfb3BlbisweDcxLzB4YjANCj4gPiBbICAgIDguMTM0NjY4XSAg
X19kZXZfb3BlbisweDE0Mi8weDI2MA0KPiA+IFsgICAgOC4xMzQ4NDBdICBuZXRpZl9vcGVuKzB4
MmYvMHhlMA0KPiA+IFsgICAgOC4xMzUwMDRdICBkZXZfb3BlbisweDNkLzB4NzANCj4gPiBbICAg
IDguMTM1MTY2XSAgYm9uZF9lbnNsYXZlKzB4NWVkLzB4ZjUwDQo+ID4gWyAgICA4LjEzNTM0NV0g
ID8gbmxhX3B1dF9pZmFsaWFzKzB4M2QvMHg5MA0KPiA+IFsgICAgOC4xMzU1MzNdICA/IGt2ZnJl
ZV9jYWxsX3JjdSsweGI1LzB4M2IwDQo+ID4gWyAgICA4LjEzNTcyNV0gID8ga3ZmcmVlX2NhbGxf
cmN1KzB4YjUvMHgzYjANCj4gPiBbICAgIDguMTM1OTE2XSAgZG9fc2V0X21hc3RlcisweDExNC8w
eDE2MA0KPiA+IFsgICAgOC4xMzYwOThdICBkb19zZXRsaW5rKzB4NDEyLzB4ZmIwDQo+ID4gWyAg
ICA4LjEzNjI2OV0gID8gc2VjdXJpdHlfc29ja19yY3Zfc2tiKzB4MmEvMHg1MA0KPiA+IFsgICAg
OC4xMzY1MDldICA/IHNrX2ZpbHRlcl90cmltX2NhcCsweDdjLzB4MzIwDQo+ID4gWyAgICA4LjEz
NjcxNF0gID8gc2tiX3F1ZXVlX3RhaWwrMHgyMC8weDUwDQo+ID4gWyAgICA4LjEzNjg5OV0gID8g
X19ubGFfdmFsaWRhdGVfcGFyc2UrMHg5Mi8weGU1MA0KPiA+IFsgICAgOC4xMzcxMTJdICA/IHNl
Y3VyaXR5X2NhcGFibGUrMHgzNS8weDYwDQo+ID4gWyAgICA4LjEzNzMwNF0gIHJ0bmxfbmV3bGlu
aysweDk1Yy8weGEwMA0KPiA+IFsgICAgOC4xMzc0ODNdICA/IF9fcnRubF91bmxvY2srMHgzNy8w
eDcwDQo+ID4gWyAgICA4LjEzNzY2NF0gID8gbmV0ZGV2X3J1bl90b2RvKzB4NjMvMHg1MzANCj4g
PiBbICAgIDguMTM3ODU1XSAgPyBhbGxvY2F0ZV9zbGFiKzB4MjgwLzB4ODcwDQo+ID4gWyAgICA4
LjEzODA0NF0gID8gc2VjdXJpdHlfY2FwYWJsZSsweDM1LzB4NjANCj4gPiBbICAgIDguMTM4MjM1
XSAgcnRuZXRsaW5rX3Jjdl9tc2crMHgyZTYvMHgzNDANCj4gPiBbICAgIDguMTM4NDMxXSAgPyBf
X3BmeF9ydG5ldGxpbmtfcmN2X21zZysweDEwLzB4MTANCj4gPiBbICAgIDguMTM4NjUwXSAgbmV0
bGlua19yY3Zfc2tiKzB4MTZhLzB4MWEwDQo+ID4gWyAgICA4LjEzODg0MF0gIG5ldGxpbmtfdW5p
Y2FzdCsweDIwYS8weDMyMA0KPiA+IFsgICAgOC4xMzkwMjhdICBuZXRsaW5rX3NlbmRtc2crMHgz
MDQvMHgzYjANCj4gPiBbICAgIDguMTM5MjE3XSAgX19zb2NrX3NlbmRtc2crMHg4OS8weGIwDQo+
ID4gWyAgICA4LjEzOTM5OV0gIF9fX19zeXNfc2VuZG1zZysweDE2Ny8weDFjMA0KPiA+IFsgICAg
OC4xMzk1ODhdICA/IF9fX19zeXNfcmVjdm1zZysweGVkLzB4MTUwDQo+ID4gWyAgICA4LjEzOTc4
MF0gIF9fX3N5c19zZW5kbXNnKzB4ZGQvMHgxMjANCj4gPiBbICAgIDguMTM5OTYwXSAgPyBfX19z
eXNfcmVjdm1zZysweDEyNC8weDFlMA0KPiA+IFsgICAgOC4xNDAxNTJdICA/IHJjdXRyZWVfZW5x
dWV1ZSsweDFmLzB4YjANCj4gPiBbICAgIDguMTQwMzQxXSAgPyByY3V0cmVlX2VucXVldWUrMHgx
Zi8weGIwDQo+ID4gWyAgICA4LjE0MDUyOF0gID8gY2FsbF9yY3UrMHhkZS8weDJhMA0KPiA+IFsg
ICAgOC4xNDA2OTVdICA/IGV2aWN0KzB4Mjg2LzB4MmQwDQo+ID4gWyAgICA4LjE0MDg1Nl0gID8g
cmN1dHJlZV9lbnF1ZXVlKzB4MWYvMHhiMA0KPiA+IFsgICAgOC4xNDEwNDNdICA/IGttZW1fY2Fj
aGVfZnJlZSsweDJjLzB4MzUwDQo+ID4gWyAgICA4LjE0MTIzNl0gIF9feDY0X3N5c19zZW5kbXNn
KzB4NzIvMHhjMA0KPiA+IFsgICAgOC4xNDE0MjRdICBkb19zeXNjYWxsXzY0KzB4NmYvMHg4OTAN
Cj4gPiBbICAgIDguMTQxNjAzXSAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NzYv
MHg3ZQ0KPiA+IFsgICAgOC4xNDE4NDFdIFJJUDogMDAzMzoweDdmMjc5OWQyMWJkMA0KPiA+IC4u
Lg0KPiA+IFsgICAgOC4xNDk5MDVdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBGYXRhbCBl
eGNlcHRpb24NCj4gPiBbICAgIDguMTc1OTQwXSBLZXJuZWwgT2Zmc2V0OiAweGY4MDAwMDAgZnJv
bSAweGZmZmZmZmZmODEwMDAwMDANCj4gPiAocmVsb2NhdGlvbiByYW5nZTogMHhmZmZmZmZmZjgw
MDAwMDAwLTB4ZmZmZmZmZmZiZmZmZmZmZikNCj4gPiBbICAgIDguMTc2NDI1XSBSZWJvb3Rpbmcg
aW4gMTAgc2Vjb25kcy4uDQo+ID4gYGBgDQo+ID4NCj4gPiBUZXN0ZWQ6IFdpdGggdGhpcyBwYXRj
aCwgdGhlIGtlcm5lbCBwYW5pYyBubyBsb25nZXIgYXBwZWFycy4NCj4gPiBGaXhlczogOTVhZjQ2
N2Q5YTRlICgiaWRwZjogY29uZmlndXJlIHJlc291cmNlcyBmb3IgUlggcXVldWVzIikNCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IExpIExpIDxib29sbGlAZ29vZ2xlLmNvbT4NCj4gPiAtLS0NCj4g
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYyB8IDIgKysNCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gPiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gPiBpbmRleCBlN2IxMzFk
YmEyMDBjLi5iNGRhYjRhOGVlMTFiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+ID4gQEAgLTEzMzcsNiArMTMzNyw4IEBAIHN0YXRp
YyB2b2lkIGlkcGZfdHhxX2dyb3VwX3JlbChzdHJ1Y3QgaWRwZl92cG9ydA0KPiA+ICp2cG9ydCkg
IHN0YXRpYyB2b2lkIGlkcGZfcnhxX3N3X3F1ZXVlX3JlbChzdHJ1Y3QgaWRwZl9yeHFfZ3JvdXAN
Cj4gPiAqcnhfcWdycCkgIHsNCj4gPiAgCWludCBpLCBqOw0KPiA+ICsJaWYgKCFyeF9xZ3JwLT5z
cGxpdHEuYnVmcV9zZXRzKQ0KPiA+ICsJCXJldHVybjsNCj4gPg0KPiA+ICAJZm9yIChpID0gMDsg
aSA8IHJ4X3FncnAtPnZwb3J0LT5udW1fYnVmcXNfcGVyX3FncnA7IGkrKykgew0KPiA+ICAJCXN0
cnVjdCBpZHBmX2J1ZnFfc2V0ICpidWZxX3NldCA9ICZyeF9xZ3JwLQ0KPiA+ID5zcGxpdHEuYnVm
cV9zZXRzW2ldOw0KPiA+IC0tDQo+ID4gMi41Mi4wLjQ1Ny5nNmI1NDkxZGU0My1nb29nDQo+IA0K
PiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBp
bnRlbC5jb20+DQoNClRlc3RlZC1ieTogU2FtdWVsIFNhbGluIDxTYW11ZWwuc2FsaW5AaW50ZWwu
Y29tPg0K
