Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE4FA10109
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 07:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFF8E40B7B;
	Tue, 14 Jan 2025 06:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0tBbvebdENU8; Tue, 14 Jan 2025 06:59:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D006407A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736837948;
	bh=UrWa6Ph51X/EXnj9XQR9pZD5nFa91x/ilA2SEt8iXRI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HZHegj/vH7hFJBl+kY7bbg06LaegILQk9XccAcqXbQUzUEqSu7m4UWqC6qakOIQ2o
	 OBgjhdOTmQOiTsP69ZKxs/lkQh54fzxUnwBhnmo9ar3e+fiLC4xAbjQcUnIyEvCbht
	 F+CHuZA+orH5oeKzpocicXt5HEdtLrmGl3Gi910mX0pYDsiPyprKE41af2GE6J4x90
	 5RYpLB5asjUtDd7yZHKZ7XFbQQcmfrCh+ocF0Y/SQxtKo0EyArlhzEKOJiy/Ar2rfp
	 ZIznEjmeyHYy0fyzolwTqq0trpZnIwW5s+PaIO4ocKQWDD0MLLV38wrY2b/tF5hlon
	 qbR24h3iq1/uA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D006407A0;
	Tue, 14 Jan 2025 06:59:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 66E99B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50A604057B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HMG_jdGpPAQq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 06:59:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 48836409F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48836409F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48836409F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:59:05 +0000 (UTC)
X-CSE-ConnectionGUID: YBDjJTBnTNKYeAN1cLlwkg==
X-CSE-MsgGUID: Ytvotl1ARDGbpq0HycinVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="47701493"
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="47701493"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 22:59:00 -0800
X-CSE-ConnectionGUID: 87NgJ1BAQVm+hynv1YpZnQ==
X-CSE-MsgGUID: A/HZPPHVTP+ZTxBnr8TDZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="104798976"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 22:58:59 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 22:58:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 22:58:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 22:58:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LjANwugSeYh7P/jC+AMwTrSHSEoMhulzA43Q3Sbk/HzmhdNh5EcI5aUzam5MkyfMRrR484kTWRElH+tdJGWCJAGw8v2k5Oi5WBF3tpg7rZ2beciH4WWqfWIU431XYKW2gdzV10m6N4NE7YkG8tGsDUi0MGpsaII57J+745vmBKajO5lcWPMLPPetPIRj/Ud8adfbaG4poJkZ4ooiWLt3C2FcOw2yMsfK9W/7mPcqtNgfS2wRU7SkQ/itJv+h6GribCtgD3YvyTnNZQAvl38tHtPLIPmlRneKuuNG7tbariCpUaau0ilmzEZQql0sLF13c7P2gM0J7nHmGxlJHg7kVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UrWa6Ph51X/EXnj9XQR9pZD5nFa91x/ilA2SEt8iXRI=;
 b=IF5Q/jDIaVqdisqrjPZ2dpSecotrQ6czOoVXqGEjHT5DAEUpdtcZDqnQYMrregMRn/LirkstuVTq8TA8igA/zg8awL75/cKN4WUso/Eiq3uBaJXMvmLo2F7tMu32CN722QAPVcwsamhbBClvA1wCpDR4fg4EoHerbfnjLNbfWIj6Wc7H2HQniLKJYGmS+y+UebsWfupMLyZ33B3EAXPQS5way9veqK3oSY0FQkg3xBoWXI0zMzcXYZXW9WtQ4LYPtqDgR/e5juJd6Mtqy5226wm6Pjc7X5+5hM6z877w5VJx0Cq1Ar7bXHpWtuHJSLPbs66zyUG9Fp9kMW/jdi2/7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM4PR11MB8178.namprd11.prod.outlook.com (2603:10b6:8:18f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 06:58:42 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 06:58:42 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Brian Vazquez <brianvv@google.com>, Brian Vazquez
 <brianvv.kernel@gmail.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 Manoj Vishwanathan <manojvishy@google.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next PATCH v4 1/3] idpf: Acquire the lock
 before accessing the xn->salt
Thread-Index: AQHbT9eB3wTDlUDUKEyF6R3qBdPZ17MWA7Rw
Date: Tue, 14 Jan 2025 06:58:42 +0000
Message-ID: <MW4PR11MB5911B26BFC9FD45342B6B3BABA182@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241216162735.2047544-1-brianvv@google.com>
 <20241216162735.2047544-2-brianvv@google.com>
In-Reply-To: <20241216162735.2047544-2-brianvv@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DM4PR11MB8178:EE_
x-ms-office365-filtering-correlation-id: a93f60c1-7165-454b-799d-08dd3468e1d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?UEt0Y2k5dVZMaWxpYlhLa1c3NForOHVqSEZqN2l5ZC9qZ1lZYTdQaWNjNUdl?=
 =?utf-8?B?RWwvc0RVTit1M1ZUald4blErWUlZSDFpQUpzRnljMU80d2RtUWM5YzJLRURY?=
 =?utf-8?B?allnSXE1VGcrM3NHMnZLWG04dUY5QTBmUzQ5Zm5qb2FCRk1lUUp0LzJtTE9z?=
 =?utf-8?B?RjN1YU1wZnR1THRvZU1HeG10UXREZXVDbHFNNFI2eE9weGlJL0QvaUExb1Rl?=
 =?utf-8?B?YmlMNzNBMmx1U2YwL0EzL2orQWRKemhKbm1xUDFiTjhTaUNnVktPUkZ6R083?=
 =?utf-8?B?U3d1eDlyZnFITlI2ZUQ1ZmpDVVUvNXBDK25GQUxPM0JWTk4yb3NtTnpGVStj?=
 =?utf-8?B?YzZjd1JmOFIzTEpydWFuSG4rN1h4d3JCVkQzUHVKc1o5ZHJsbjl1MS9Jem1N?=
 =?utf-8?B?OEE0a3Q5NnkzbDY2NnZBWU1aNXkzQ3FCN1RuaThydEFDUGdMMDgvWUhoUENm?=
 =?utf-8?B?bkkyci9kaU82S3hqOXBnUlBHTkdYNTFyOEhZNmtKVUZ3ZEVSNjFBVjZJZGZK?=
 =?utf-8?B?SGszMGJ4UGdHUHBvY2FaQXk1Vy96cEJKRnhuMXdkdU01S0pZQWdWUVBYSGxw?=
 =?utf-8?B?dEJEek9najBFeHc4VHlteHgwV2RhNVllemdSdmhEL1lYY1F6Y3VDY2czYzBF?=
 =?utf-8?B?djdVaW40cXFlcVBPSm9ETUVZNzY1di9wLy9UYk05UW0vZk5Tc0VtSXVWT2lu?=
 =?utf-8?B?cmx0dWp5QnJsU20wR3dpMENPbHZlVjVVTFo0UXFFbE93NjBRL2JsWGRINWVE?=
 =?utf-8?B?eEJrT25VVW1EYjErMHl4NnhDQjFVWTd0NUJ5bzgvOHBtMndWWitSYWwvY2Vj?=
 =?utf-8?B?cHNrbFVvNTVtaXNtWVlKU1hrVlNOVXUzNVJjV0FlWXAzVmJFMS9yR0VUSEdY?=
 =?utf-8?B?M1oyeHFBWEQzeDF5ZE5qbnZudUYxRG5qNkdkY0Yrd3BhZTZGVi9LSDVFZG10?=
 =?utf-8?B?bFh2UVZSZEkySzF0WWVZd2N2djFRaHNhUEQxZ2pjRkl5UXhXbzdNL2Z4NG4y?=
 =?utf-8?B?RVF3WU9qUzBYZWpzNC9GNy9BdHFTTDQySlVJamZVNGg0SFlISkc2THRJQWhz?=
 =?utf-8?B?R1l5dHJzT3M5djNXS1k4cmRCdlNOTVNMVndyZXNTRy80QjBFUTh6bU9Bd04v?=
 =?utf-8?B?RFIwTWxraFlNZURmVUc4VHVWcXlOYldtZVpVOHowQ1ZiQ25jYWhUeUxYb0di?=
 =?utf-8?B?Q0s1d2ZUcy8zVDl4SDIyWkVidTIxWlIwSFhwUlFvb3krT3NSSTNPdDBZRXU2?=
 =?utf-8?B?bnJwa00zT094Vno2cXdRbmRNdzRXdExJZllKYWQzU2thdTV2RlBtMkM4QUVT?=
 =?utf-8?B?ZmlHa1FHZ0xIRXFMeXF2VzllL2pmYjhGUkpKc1RJcmZSN3FYWWpWbHFWekJk?=
 =?utf-8?B?NnBJc0hsRFZnNE9EMTFMR2RmYnlUMnFjZ2xGQ094VVl5TFUyY3BqcHpsQTRR?=
 =?utf-8?B?WnA4ZjliUHBUZWpUOVdqUXF4NnZXMmt2Y2ozbXBEV1FQRlpuUVNRa0FUQkVw?=
 =?utf-8?B?VTFLNi9RMkhNeFlEKzk2RWpzZVMyeUZxdXdHKzVRSlhSUHVVZFc5RTU5c24w?=
 =?utf-8?B?QzExZlNqUVF2RG44WWMzS0NuTGhKaEYwZXNYV0xHbG56MDhJbFA2Qm5rbUZl?=
 =?utf-8?B?OWR6RDAvL0tPNGNHTXpTUHdFRm9ZdnoxR2dOeXRjSktSUjRBT0F5QnVKY284?=
 =?utf-8?B?UTBrV05WbXZMR1VxeG5JUG9SMWRxNisxeUp2c0VYRUxDYlN6L3o5RThwdEVx?=
 =?utf-8?B?MUJzVXF6ejB5UHNVZXdibW9Kb1RPSERJUXp6cjVoK255WWNBOWZjMDZxTHNy?=
 =?utf-8?B?OURReVhFN0VIOGtTWU9ZTkk0VkVRKy9PVFlsUDA2TVgwdXUwd0p5MFJzUnRZ?=
 =?utf-8?B?WjlPWGFsaHNrSTVTc3dMeXJ2a25CRUs0dGdsVm9lL1lnYW5wUklZMHdQZllp?=
 =?utf-8?B?S0hmdWJRL1Q3eENtbFlEcU5Ed1p5OWdHS1RXWDNVNHF6ZjFHajNRME1xZzMx?=
 =?utf-8?B?cmtCREVhVVVBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YitXaWR0dkF0WGZweExEbXAzQTZYLzdtMlErRFYydE0yUkREeVRZUWJyR2Z6?=
 =?utf-8?B?MEIwSjF3ZEpIK1FaeWJhSmxOK3dteGo2NUJaY3lEUGxncnk2RjZ2MnErMzFk?=
 =?utf-8?B?VGFwR09BdWhyT3Y0YW5mQ29GY1J4bGpvbERSMjlYcFNpTlpQdS9NWmwycTBy?=
 =?utf-8?B?YjVKSWErTkpsd2NiaDNNc3FyUkl6Ym9vdE9MSTNyY0ZFY2tWaldyeTYxMk45?=
 =?utf-8?B?V3NtSDlWcDdsdnJBRXVKblhZL3UwSUpjWmdxMzBYdGJWUElSY0RmWVdvWDNP?=
 =?utf-8?B?Qnp1SVNYOWVZTUowdHdRaXFwbk5NckZwM3dtajZWUVh4NThUWVFRRzlYc01U?=
 =?utf-8?B?R0lpSXUwcFQ4UFpuVVdFelVjWjJSc3BGUFN2b2h4NExYMVJPYWVWdEQvTFM0?=
 =?utf-8?B?TzlNbGU5S2R1NC81REtLWjlLY3FlK3VFSVlZTzhrbWxMOTRCWkNYMmcxaGo1?=
 =?utf-8?B?WFYwRE9kOVhSMjJ0T09QZjRGVXVKa05xZGVSRlNhcWlrcDJMN3VFM2J3QUhU?=
 =?utf-8?B?RFhSTU1mYksyWGZPVks5T1l3M2VlcUVkMzRTMUtXUVpIR0lET3FObGh0UXlv?=
 =?utf-8?B?ckVmLzIvYWVGV0dNNXZYWFc2eG92Qk14ZE4zZVRLUmZueWFTc3hNUTkzV1lj?=
 =?utf-8?B?T0ZQbUsyeGJVaUV6MFZBMDZwRk5lQWZlcmFjKzVsYTE5dFgxYXhNeTRSaWtX?=
 =?utf-8?B?TDN0dVVra1A5blVXMmtaYk02bnd1WFFseXQzcUhyOUpUbGlwTGtodXRsamlP?=
 =?utf-8?B?d25CK1JjNUhjb1BDejZSbFUwS25PcTFrckUvc3U3Wm41c2JIcFZIeGszWFpQ?=
 =?utf-8?B?dVIzcFdQbFpZYmJTN05ydWpOODltVm8xdmNTK2tWamVNMlZGU1d5WDFPRUVU?=
 =?utf-8?B?YUQxbnZOMGF1TnZHRHB2SDBFb3ZBQkF0RlVHaFpRRVJlY1RVV0VuQXdRdUY1?=
 =?utf-8?B?NW1naDJ1K2QwcEFyK3JBY1ZabjVzT1d1TlkvTFlvUGgyOFp1bHN2dzNZWStw?=
 =?utf-8?B?ZXJLK0d3U3BnckRxZ2RVMEJqVXlWRXMweXl0ZjE4eVhUYjZUY0JtZWZPbDVV?=
 =?utf-8?B?N3U0Zy9qekVsQjVzYi9yYVRaekJDUUVXRW5GRmJZZE1IV1hnTlJvTTdkOVdW?=
 =?utf-8?B?S21EbG0ySHJZWHZBYUw3UWF6NWZESk5wRVVjWG54VExKdlhqV0R3QVEwdExW?=
 =?utf-8?B?UnNNZXd0YXdjYWg5K0kvZWFPR282RXJGTlMxMXJ1MWozMndXaU9wRDlTMWp3?=
 =?utf-8?B?a0NKd256VjdCSUJYalBEL3hNakNWMHhlV3ZQb2M5M0N1ajA5c0RydEtHUWZ4?=
 =?utf-8?B?aGxLRlVMRk14bXAzK2tPU2FWbUJyMXR2dmpYelZUVDgwSGJUSFBDZVFEc0Jr?=
 =?utf-8?B?elVwTi9GZTFvMlBoR1ZwRFRyVlF2cDMrUm5VMDRCTTl5WGhFTldnSVJIcFc0?=
 =?utf-8?B?RVNKVFFHaWJEQkNwRXRBcUZwazByM1VrK3FLbzZvNlZ3ckwzSWRZemphUTlD?=
 =?utf-8?B?MSs4WWtOdFl0ZENZR3R4SGMzTk5oeEw4R015OTZ4Unk5TjFnZDFsL2pGaWlx?=
 =?utf-8?B?UitTeFNrMUt4eElSSmt0QWY0Y3AzNVNZaVRYc3huajFpTjNobUIvS0pzRkJW?=
 =?utf-8?B?NGduNS9NOHl6UVRVNEFTQ0VXZjVPSFlJbzZSQWJkV3lybEJySnFHSjBZR1Q0?=
 =?utf-8?B?UTFDc0Z2UkZWYmFLOURDNTJQaVlWR2twemZDajVncXBNTGduTmszbUJ5TzRk?=
 =?utf-8?B?NkNOTlp4SStKdlJMbFppNjF2Z2s1RlE1V2IrbHZETXNFMk9jY1FlcTlLZkFy?=
 =?utf-8?B?RlZDUW9GVlZURENzYnIrMjRLNE8wT043WkNudy9ia0ZpT3BwdU1OSHh3alo2?=
 =?utf-8?B?bzF3SDk0Tlg2YlRlbGZldjdEMUIwcXo0RmJYZmxmaDRsMFNPblpTMjdnNDlD?=
 =?utf-8?B?eVMwUjRuUzlmVUtMNTNnRklJQlFEMjh6dW5BV3pXYUVpY09YRVJOendXV0hk?=
 =?utf-8?B?dVhjbjFFZjgxcHh5V1QyeXB3dmxRRGNGZEVEZUxrZWplVVcwRXBPd2szbHJi?=
 =?utf-8?B?M0U5RGRWQWxvMDFTOGJkN2hFU2U5NTB6S0RGZElyMlpmUWNReEJaSTBDaWxG?=
 =?utf-8?Q?/rZKhyfyXTFSsBvFNaHJzrSRm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a93f60c1-7165-454b-799d-08dd3468e1d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 06:58:42.6324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8JrwM2CQ57yb5wptqD797otGuFPURl8lMbJSxmP61ltShaUjzzdADdHFxRgETn6FphHWg726RmhfD5UpdQD8zew6A5vS9iM99kYy8XEWiJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8178
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736837945; x=1768373945;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UrWa6Ph51X/EXnj9XQR9pZD5nFa91x/ilA2SEt8iXRI=;
 b=WmLS8hPTuHxDFI5W+rpKRbR7XtEdJXkTH6uLBaw/wHDu37zGzexuTPJU
 +fFrHGVmq/vHVJx3PDvo02aiFcOCcXaGmgkhPS2ryvYjV40Qyq8U5JCi+
 KHuWgqIB9ezTOXcBo4cL+LfE4MA/7/nMvIFj57MrNNx4TrW1tZxNDGrPP
 cnmz456Gzb2VI4dIq28hYeA8MEOiNoyxPwpCTZT/pAeRHIZKJuP6525fX
 XaXsYX3isJ8kskPxHUhDXxWwRmoCxqWpt37mDms/5MvJYWzbbaIxCpae7
 3iy3YPIMnLHatQ7i/ASJMzUbYyVfMLm/3vOjWPZHO5ZGjxGDoyEl5nR7y
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WmLS8hPT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next PATCH v4 1/3] idpf: Acquire the
 lock before accessing the xn->salt
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mDQo+IEJyaWFu
IFZhenF1ZXoNCj4gU2VudDogTW9uZGF5LCBEZWNlbWJlciAxNiwgMjAyNCA4OjI4IEFNDQo+IFRv
OiBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2Lmtlcm5lbEBnbWFpbC5jb20+OyBOZ3V5ZW4sIEFudGhv
bnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3
DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZl
bUBkYXZlbWxvZnQubmV0PjsNCj4gRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsg
SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47DQo+IFBhb2xvIEFiZW5pIDxwYWJlbmlA
cmVkaGF0LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBEYXZp
ZCBEZWNvdGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBWaXZlayBLdW1hcg0KPiA8dml2ZWttckBn
b29nbGUuY29tPjsgU2luZ2hhaSwgQW5qYWxpIDxhbmphbGkuc2luZ2hhaUBpbnRlbC5jb20+Ow0K
PiBTYW11ZHJhbGEsIFNyaWRoYXIgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT47IGxpbnV4
LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBUYW50
aWxvdiwgRW1pbCBTDQo+IDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPjsgTWFub2ogVmlzaHdh
bmF0aGFuDQo+IDxtYW5vanZpc2h5QGdvb2dsZS5jb20+OyBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2
QGdvb2dsZS5jb20+OyBLZWxsZXIsDQo+IEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNv
bT47IExpbmdhLCBQYXZhbiBLdW1hcg0KPiA8cGF2YW4ua3VtYXIubGluZ2FAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbaXdsLW5leHQgUEFUQ0ggdjQgMS8zXSBpZHBm
OiBBY3F1aXJlIHRoZSBsb2NrIGJlZm9yZQ0KPiBhY2Nlc3NpbmcgdGhlIHhuLT5zYWx0DQo+IA0K
PiBGcm9tOiBNYW5vaiBWaXNod2FuYXRoYW4gPG1hbm9qdmlzaHlAZ29vZ2xlLmNvbT4NCj4gDQo+
IFRoZSB0cmFuc2FjdGlvbiBzYWx0IHdhcyBiZWluZyBhY2Nlc3NlZCBiZWZvcmUgYWNxdWlyaW5n
IHRoZQ0KPiBpZHBmX3ZjX3huX2xvY2sgd2hlbiBpZHBmIGhhcyB0byBmb3J3YXJkIHRoZSB2aXJ0
Y2hubCByZXBseS4NCj4gDQo+IEZpeGVzOiAzNGMyMWZhODk0YTEgKCJpZHBmOiBpbXBsZW1lbnQg
dmlydGNobmwgdHJhbnNhY3Rpb24gbWFuYWdlciIpDQo+IFNpZ25lZC1vZmYtYnk6IE1hbm9qIFZp
c2h3YW5hdGhhbiA8bWFub2p2aXNoeUBnb29nbGUuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBEYXZp
ZCBEZWNvdGlnbnkgPGRlY290QGdvb2dsZS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIFZh
enF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8
amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogUGF2YW4gS3VtYXIgTGlu
Z2EgPHBhdmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdmlydGNobmwuYyB8IDMgKystDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KVGVzdGVkLWJ5OiBLcmlz
aG5laWwgU2luZ2ggPGtyaXNobmVpbC5rLnNpbmdoQGludGVsLmNvbT4NCg0KDQo=
