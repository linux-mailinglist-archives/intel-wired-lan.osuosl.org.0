Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLOIGM0S62lsIAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 08:50:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6960645A585
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 08:50:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A34E40D99;
	Fri, 24 Apr 2026 06:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0eaMJMGjGOOt; Fri, 24 Apr 2026 06:50:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 094C340DA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777013450;
	bh=r+CaSFuGq1o1SMrTQZt4nmvuxFxhfkeiE4Jeygysk3Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VEDZumQKTl7NH5XCuzSy598B+mnYg9coBqDRr2JZ6/8dotAlMVoUXL4fG0PyaXYAI
	 O0dT5fFTZ1QZLRLdBgcj0uHx5zb943P2qKggeKTKRpzvXhe6oLu8IowQ7ZVT0ZhlJl
	 NAfeya7RPWeFV5jV/NQsKT3UXKinzzCIGqjq3Yx11YeJHXKlmnxKKS0xf5mkaEbw/j
	 2nEEPcDS7LIselgqt8GVn2+A+ksjCpN1jzoio+ueBDXSqEFDFIOdly6/SWXSw+R7kv
	 FpSnSLay/N7PvgFi4atnSyxHAmIHCgpHbgJ34PQxEeHeYnb7JVaCRE9LcnABsiybHA
	 ANvAK5FluKVuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 094C340DA6;
	Fri, 24 Apr 2026 06:50:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 93065231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 06:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7819161563
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 06:50:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Fn1SxrGG38L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 06:50:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B190861504
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B190861504
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B190861504
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 06:50:47 +0000 (UTC)
X-CSE-ConnectionGUID: aVpRmhvlQgC9DYT3/nHQQA==
X-CSE-MsgGUID: dlnaWCmXStydh7UsCGSLUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88687992"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="88687992"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 23:50:46 -0700
X-CSE-ConnectionGUID: /z6fGGk8RN23PeGK3Q+MZA==
X-CSE-MsgGUID: umGoHIQWRD6kErbeaSkv5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="233178983"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 23:50:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 23:50:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 23:50:46 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 23:50:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SEgJ7X5QZ+cK1+TVL42nf4pnZ/r+JZcA6kbWj8paAW900KcUvuBcC0+6xGE4R3aORTVR6dlC4MH4rzjIKeO+RdBX1aoaQVHqdWjkz6D6CZaCNWSp4k0ihnz4SvKmCKROkqR7Kbmb8KAlS2CDUnrBWc+Gf8k4tOautWDOLBZbYfi203wQvXlG88ccL47aETyq70rnhlVoT9C7X6zRgvzYhwzN/zinSxT2dfPwVYW9B8x+GjwtmulOVGuMB41GeVzMSvCJOMsNjMo/jaPtORljCWgEGpci+kSBWYzHQOSE3hfyJUB/NQP6HI4PeUpUAzJzzcdg/IynfoBIqweB8j5haQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r+CaSFuGq1o1SMrTQZt4nmvuxFxhfkeiE4Jeygysk3Y=;
 b=PRIsNyFhFVRdYMNYYUGR+FzOd3HXDBwbxQ9Nac2u4nbHA06fgAqgdHOau6ZLyC3+xL5gcRIcx7F9rc9ZU+iM2mtOz1QR47E7B6/WxTEbgbG84mF8BrZSQpPrGQ2pneMnFLlTcMu+KPbkzXdaSYFyUysVEQOzSl2+6lrUqfvzmPJnXbxH3ZPkkKco8+JlJdqrS/yQ+2cP7WKqNk2nbHYg5XPXfoY8VsPFdvIssjIoh6/boGQY7oOCSt1mu2547vREAp5HxnQKOeXdWOu73uR3FJf9fBsA9d48Fn9ZokMSjpxFIXd1l3ORpLr176wFHlJQyNBWGzODEsKGVm1zl6PDLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA0PR11MB4701.namprd11.prod.outlook.com (2603:10b6:806:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Fri, 24 Apr
 2026 06:50:43 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9846.011; Fri, 24 Apr 2026
 06:50:43 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Staniszewski, Jakub"
 <jakub.staniszewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: fix FDB deletion
Thread-Index: AQHcuCc8vjnUsplhokCl42v4CIqQXbXt+o1A
Date: Fri, 24 Apr 2026 06:50:43 +0000
Message-ID: <IA1PR11MB6241C36D83006F514B4EC2628B2B2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260320050533.422475-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260320050533.422475-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA0PR11MB4701:EE_
x-ms-office365-filtering-correlation-id: f0786fbc-53e0-4cea-7b40-08dea1cdce68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: tCH/Qso8CcOPlB7a7oFzfI2CrZy/jQ3nZSvF6PjEvMjzira6r/Y9isopVbl9s7s8tgdAAh1LFjUZero8wOMBg6KpXUcH8pdZYlbaNRgznKdkB1mxyMkTJGLg7BonDwwqm2bfZbaRwPxVKthEn5KG5lVXJaKAdd6Q/MinlaOgS/cArJ2eyb4gS6YAYdYzL28towfypVOEziDIy/Fai147TRG1+mkZB7WhwcJqyNIgtSsFipAkpE8/KQM+Xs3+aD99dVLXuMJd+sZjojBHnkmrm0G1u+LZoXfgCkoSAUUi/sVlAl0uA14LGr4dRcJO04JSzxWpjoCh487pZ6N0aOe6Wi1y5sotSyGyDvaf3uZvVCZ90srPlsp9XHmLnsdjp3zIVlUtml93PdaVUnMhUDYAgiBDsIs0nvZW5lC6ME0iM7S2iTC13mppEtk32UT6CBiDYoeftwX9FXLZR0aWjtHlM+x7XeUfvIJ3NAOlC8DhMBpSEvkAxMC3fRBQZ5yPy/h3qL+ZcwipwnQwPA6Clitx/Ja8ZZNDdEcR90VoAENi5/o28BE1usao+pjtD9Q66kGco0DAhIQRpFtfS2uvqhGdQrxvGzWF1lq+4j9S0XnSMe72RjtedhZtoq63zjik6gLUohvzgCYPBygK0oTklW+oWl70b0+CEB32hznm/FHa3yFgclxreN7RcBu8eDXhNdXqlh0Y8OvpcGg2PYqVrbiq5xCoIg/TVcRZIl7HkO4PRTEfzNYh4/vB/hAY7Os/LItemz4okIus6CXHpmcZQCcUJPMAM0zGs+qHtJHE1SIUTSQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnJ1YkZHcG44TWFXZ1EwMDJ6MXJuY1Q0ZkRCeFVtLzVVekZwVjF0TUZLZEdq?=
 =?utf-8?B?ZXRXV3RyNVdvd1pVUys3N2ZORVc5Ykh2dVcrTkpURTREN3Mxdi9zeEJsdXM2?=
 =?utf-8?B?UHdjNEZMTEpDbjYveHljaUx5UXNBdWh5SklMQWx6aG5lVFc0VjUwNlBJanhr?=
 =?utf-8?B?L2FMQUprc2VxNjhMOGU5V3F0c3doeW9hSGRxWnhTRWUvS0Y0ZHlNRjJtUkJW?=
 =?utf-8?B?MDhHclBaTSt5SndIS1RielBPYkU2b0lqSmcva2orclU0RW5vSEFWNm80Q2tH?=
 =?utf-8?B?Qzltbm5tRzFmQ0ZIT043TVBpbHdXbmM5RUN0WVp6OUdDclFGcGh5VUR4SDlJ?=
 =?utf-8?B?OGJ6NmVoRERmNTQ5aENESW9ydFo3ZWNQRkdyK1R5eDRYODROQWNWK1IyNnRa?=
 =?utf-8?B?OUFMdHpMYytpQlZXeldRVU5VVFMzK2U3K3ArRnBnQTZuS0w4TlhCQmFBemxU?=
 =?utf-8?B?M2V5U1IvQ0FacXBnQTM1ZEpLQ1lPWlh6dGR1STIrTHlRQTZOWXhYRFd5UGNu?=
 =?utf-8?B?cDVPYzNsSUFjT0NWWXZ1VmtyZ0NQU1RWYUsvMkE4OEZuUi9PclByY1dBdVZx?=
 =?utf-8?B?Rm9zcEZTTHk4MXFJZ2FUZmExUDF6aG1uRXI2UHBibUpiVjROQnUzT2cyOW0x?=
 =?utf-8?B?VENBa1VybStwWWozRmhIMXZ6UHJna2dFVmFFdE5zcGxsemxLbEZic21QMlZE?=
 =?utf-8?B?TUxiTVlLYVFTeFJGL1JTVVNiNndDS0l1ZXZBcVlRclhGQ2JwdDd2NGRzNW9M?=
 =?utf-8?B?eDRhNTFwbnZPdm91emgwV2VaZmp2eW44WVpVMTd0ejZNVS80QmlkcmFMakxH?=
 =?utf-8?B?bWNLZjA1OUxLRUkrVzRTc0swdndzcmEzRG5mTkxqbHdTSVN2WlRPVTAvQlda?=
 =?utf-8?B?U0VvR0lkTUdBOEdOMEJFb0FNUkxkcTlRVTFXUmxoQjBjTU9IRnB0d2hzcTI1?=
 =?utf-8?B?di96K3d6UDFPM2UvV2t5QUhNV29CQjNRU1FxRHVobWxFNmg5bjdla0UzU2tM?=
 =?utf-8?B?Rk9wdXNWMTdyQ0xjWHBkU21yV0hiNjNuNGdocTJBZ1ZCeVhsSWU0T1VWbVJo?=
 =?utf-8?B?M0RqTkNqdE5pU3Y4Z2pkaDVmbVlNT1hudnZKbFdPVHVoYmt4UG1XT2RGcTdH?=
 =?utf-8?B?aDBkdUk0bHZUV3FjNUkyQVlLVzI4bHB2SFFLMlBCbUFmckJjQ1o0emxub01Z?=
 =?utf-8?B?ckVHRHFoNU0wbjFEeStmSVQ0bVlwMEoyWkNONlp3YVNJMHlwbTZCeWNZejJl?=
 =?utf-8?B?L1dtNXZWWjJZejRkb1VMZXZxWDdLaXh4Y2RtMzlmbi9nNmtYQUdFN05zRHYx?=
 =?utf-8?B?OW9KTCtNMC9yNm1DTVlQRDB1Q0huRVRmRC8yZmRmK01KZGFsTHNsR2ErSW1i?=
 =?utf-8?B?b0JkVzZ5b0dKU1pUaERZeEVoS1BNd1BRQzJua0JzQytERUlOMVBkUStjR05n?=
 =?utf-8?B?aHhQM1Z6dGtSMkxkb3k5clFlVDlGNDNYbkF1Z0x5ZEhDdDc4MFhvOGFLRERh?=
 =?utf-8?B?YzBkdUxPRGFwcXBlcGxEclpsVzF3WWlLaElBeWZtaUhTZ2FWMWs5T002RmMr?=
 =?utf-8?B?ckQ3UUUzN1Q5TzVhaWxOTXN5UzZHSklmcDZWSEpzaUg2TUpqZ1pmdTF1USs4?=
 =?utf-8?B?VjZXRGVMVkRCZ2ttQ3R4ZndFSHl6cC84cCtYNlg2SWlXcWkzemVadTRlMUZp?=
 =?utf-8?B?L3JUYkR4dmQ2YkZJVENaQXdocVJTV292QXJYRUIyWlN5eE9RQjFkOGtCV2dL?=
 =?utf-8?B?VWYwdnllQlE0UmJrbEJzaDIvZ0lwZ1IrTUVnV3BFTVRoNFRXb2N1Ykc3UEJr?=
 =?utf-8?B?eFl1Rk9rYkxIT1JkS0Q3c1hHdUxKVk00K1hBdE9YTWFKanNTUTlRcXJ2dHpj?=
 =?utf-8?B?Y1pSbUZPTW1xTFZKL3I2dEdyaG1xNkJ0MmcvUytYZE9Ta3lyMk9lQjNTMWhq?=
 =?utf-8?B?eDFRckRzTDVtOTFMRTNGUGJkQkVCMWxRTC91ZUJCOU5qWGQ0MFlOWG9ubHhR?=
 =?utf-8?B?bzhlenRwbldyMUdudVlSOUozeUN6S3NvT2dUWFFvdGNvWlJ2bzJxcDlxeG85?=
 =?utf-8?B?NXMwUDFMZTJyZjlLUVc1YUdIRmZHM0VYUzRNcFd2SGdsLzNlTGxFL2dKcmha?=
 =?utf-8?B?Y0tELytLcjc3UUdBSmpwZG5FWGpza3R4cWUyWjJtZXhjTzdFSFU4ZDVzWUVE?=
 =?utf-8?B?ZW5lcXNwOGRkRTNxWDl1cllsWDRJTTRvWUtNNXd1ZWZCL1huZ0RZbkZxemty?=
 =?utf-8?B?a3l6aVpMU05TUlNrcFlhWGVzWHJDaXJSamdlUzJzN1V5NkR6T0cwZmNTNFhY?=
 =?utf-8?Q?nFIjmOOvH515J6jle6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WAS3q0znobI4SNKcxi95ej4YJ73XYRErsazGsTY+6g7bOk6n6WXkuj8eKcieg8SmPR9XfCP141PSgN1l7tOJiH3wNej4ABDgOQAZOua4PKKoAwx4KMmAV9heQYcKRWu5fynREUrIR35D7afFha+b/NSva4gSzD/xCaNfC/dZenIT/Kylx7YIWwzmA5A3PMMdaaUdXbjf1mVEiBwc5A4DykKsmkCsg6U289ScWU3org4ulkXSwGUgOSmkxwRU/AAlKmTtt+mN8+snuTdERSYR91NWG/o8R6Y1+8TYWU99sOM0TzG1P8uPofBDVIGGcxbbTbZPw0a8nMUJYfMcoLdI3w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0786fbc-53e0-4cea-7b40-08dea1cdce68
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2026 06:50:43.6456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t4s4bExHwGbS+tSLUtwwhJa5BJAAihWPmU3wqX7kJkkwl96fD5UWGQOBOV8ecaWJFiulCfiQdDohHoNgMYbScQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4701
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777013447; x=1808549447;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r+CaSFuGq1o1SMrTQZt4nmvuxFxhfkeiE4Jeygysk3Y=;
 b=TTTcZpGDXFSDfPAwB/BzDAGOtPcb5rz3fMuOqdEmVwygF0O2I297eEv9
 oJnSJ/Virf+6IuC4C3kEw9qpYjwK6XvcCGUewRu6MRiCGDOoC2TQ2CvDZ
 vLeJx66JviOr3PdS2nwOX448fxJv/Wa/MlESh+B2sK0paCjfMuEksSoYv
 rU3pbiNSd3cDjz7f/hfck8o3HlikYPBRYZKN686MFWTwWR0W+qYR5atOb
 SbN1QEbOcj67vz9Gq6JzrDDnrGAn53zN0p/UmdWjdEVKT57ZDLhotFO9z
 Q/VjD/mU/u7ErlilKbS3YFAKdZxnfweTv/4PiRTYMVPIV6ZGWuzVvh9Tw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TTTcZpGD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix FDB deletion
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
X-Rspamd-Queue-Id: 6960645A585
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jakub.staniszewski@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA1PR11MB6241.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBBbGVrc2FuZHIg
TG9rdGlvbm92DQo+IFNlbnQ6IDIwIE1hcmNoIDIwMjYgMTA6MzYNCj4gVG86IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXll
bkBpbnRlbC5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBp
bnRlbC5jb20+DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBTdGFuaXN6ZXdza2ksIEph
a3ViIDxqYWt1Yi5zdGFuaXN6ZXdza2lAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2ly
ZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHRdIGljZTogZml4IEZEQiBkZWxldGlvbg0KPg0KPiBGcm9t
OiBKYWt1YiBTdGFuaXN6ZXdza2kgPGpha3ViLnN0YW5pc3pld3NraUBpbnRlbC5jb20+DQo+DQo+
IENvcnJlY3QgdGhlIGxvZ2ljIGluIG5kb19mZGJfZGVsKCkgdG8gYWxpZ24gd2l0aCBvdGhlciBk
cml2ZXJzIGluIHVwc3RyZWFtLiBUaGUgY29uZGl0aW9uIHdhcyBpbnZlcnRlZCDigJQgaXQgd2Fz
IHJlamVjdGluZyBwZXJtYW5lbnQNCj4gKE5VRF9QRVJNQU5FTlQpIE1BQyBhZGRyZXNzZXMgd2hp
bGUgYWxsb3dpbmcgbm9uLXBlcm1hbmVudCBvbmVzIHRvIGJlIGRlbGV0ZWQsIHdoaWNoIGlzIHRo
ZSBvcHBvc2l0ZSBvZiB0aGUgaW50ZW5kZWQgYmVoYXZpb3IuDQo+DQo+IFRoZSBjb3JyZWN0IGxv
Z2ljIGlzIHRvIHJlamVjdCBkZWxldGlvbiBvZiBub24tcGVybWFuZW50IGVudHJpZXMsIG1pcnJv
cmluZyB0aGUgZml4IGFwcGxpZWQgdG8gbmRvX2RmbHRfZmRiX2RlbCgpIGluIGNvbW1pdCA2NDUz
NTk5MzAyMzENCj4gKCJydG5ldGxpbms6IEZpeCBpbnZlcnRlZCBjaGVjayBpbiBuZG9fZGZsdF9m
ZGJfZGVsKCkiKS4NCj4NCj4gRml4ZXM6IGU5NGQ0NDc4NjY5MzU3Y2QgKCJpY2U6IEltcGxlbWVu
dCBmaWx0ZXIgc3luYywgTkRPIG9wZXJhdGlvbnMgYW5kIGJ1bXAgdmVyc2lvbiIpDQo+IFNpZ25l
ZC1vZmYtYnk6IEpha3ViIFN0YW5pc3pld3NraSA8amFrdWIuc3RhbmlzemV3c2tpQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX21haW4uYyB8IDIgKy0NCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+DQoNClRlc3RlZC1ieTogUmluaXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNv
bT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQo=
