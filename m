Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7891B0D1B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 08:09:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 149FD83F00;
	Tue, 22 Jul 2025 06:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id by2pTf1gHOM0; Tue, 22 Jul 2025 06:09:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5191483E72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753164578;
	bh=/OBnNfvtjJmDDTHrvUVI+C8YBxXk0EeTUeMkmqiIiLk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gLpaPcvi9SFMNQ0a42V4251PPGBLjWZA7LvudGR69GqLtTFGGJifknAGml19RwDsJ
	 6ctF3EJ9HmMfaEk+pYYUeDQecZx3TcwIpvZdtIO+dhbeFyLftON2AZFPdFUTVXtrPZ
	 Geu+Y3tiHzFQGpf+MMV/9T3Lr5Tpy6oo3e9CjQbCT2bNIkuG50Kb3bHIK+onMdP0yd
	 Yzs5vu/YaGMqdQnLWOv4XMZm6b48chc48IyD7o1F5IYlnFfWozRo22yh6143UCGw/I
	 4WRCU9Bw44acE6wqv1C+lxqcEtQehN6VDWjY0FxMp6K9sxH0nLTbi7kQbNRSUq6OWM
	 flXRvl+zirNbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5191483E72;
	Tue, 22 Jul 2025 06:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 68DADE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 06:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A18083372
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 06:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UjCEK4e0tZAb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 06:09:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A1FA83267
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A1FA83267
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A1FA83267
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 06:09:35 +0000 (UTC)
X-CSE-ConnectionGUID: ChchN3BGQJW3Pc3QPL+JhA==
X-CSE-MsgGUID: uzwJnFtUTu6pDQEaHpQFow==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55357555"
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="55357555"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 23:09:35 -0700
X-CSE-ConnectionGUID: 0wZFEvzTQI2sZ4FivmY0Zg==
X-CSE-MsgGUID: d5YigVWYRRm368RnL3oOoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="163328729"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 23:09:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 23:09:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 23:09:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 21 Jul 2025 23:09:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=saAdKIVgQHmDxKb8i5YDzdnxMcR3NnRa8qu01lkcIOIvQBH+gjJ5VC+NgPHBF6REDnPc4wkJLHehN9sQGEuaRwFTxau8yv1IeZZdNUwKHNOTmhcGyjyhHR78BN8y+WyvQyaOXpV4mwMNvh2B62SYmPUJ4S+QFIkj5l4aJCacjHQksv52v68kZBK8JhkEWm5VhXgtlVxrX8VGJdKi2GZBknPoU22lIWON+RGRJgAv2PjQRaX6RerfrwfVJXtN8oiCk3b1p6NehPZiI9HwsuDiKjdDNc7zgEq2jNdlnG18Fk1BLHperT+U+CJ+tzHXDkHpoF2sfvkc8Uedg4e0VDA0xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/OBnNfvtjJmDDTHrvUVI+C8YBxXk0EeTUeMkmqiIiLk=;
 b=a7rcjfqzEYfsfpkotf4fETDspDep9OHEh4leFczxcf+J6G1qCtaGdfzmyGgMypIuYPxNgEJhqvrs21myf6DY9heiJhdBb/nKeC2+c9ulB1d/eDcH20YSxSb6DIrbwRzT7HfPoF5O6lcDLGXnBHkqIC5EJLNT9+vDjGDKU4JB+OB4TD+GsHpW6Udu6w79D90AYDkajJOAA33OnRJw9Z360qFhJRV67umvZgwGujNOpGJGXdyf54VgPApK2dXBL3Zhkg6y4+I5xiPEsxFfvhF8HspnywNwo3wh62FCx1MzylQdiSUJ9MdRa2LNMvaCzOXyifraBqTjoMkTpWNqWRW8fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8726.namprd11.prod.outlook.com (2603:10b6:408:21a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 06:09:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Tue, 22 Jul 2025
 06:09:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v6 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
Thread-Index: AQHb+oBoGklZoVbD6kGFcXQeWR6xSbQ9qD9Q
Date: Tue, 22 Jul 2025 06:09:31 +0000
Message-ID: <IA3PR11MB8986CB0C440A58F2D4B34496E55CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250721204352.1853765-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250721204352.1853765-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8726:EE_
x-ms-office365-filtering-correlation-id: 8471751d-a453-4689-086f-08ddc8e652ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0uC2qy68LjBnQdZ+JNrCqiuR1rVhPjkUoVIkFHmKbnH6KZfO+C52yafN+4pL?=
 =?us-ascii?Q?nqU6bc3aD00URAvnwQ6dVjAaQewzpOLAnUAHbwkzjSZyEQN+1PaBWc8PGD0M?=
 =?us-ascii?Q?RBwKgn/SSMJDwM8gtZQKZGNLwRxizWBC7wMGkasHTxTeRZt7eY9aPDtNUFV6?=
 =?us-ascii?Q?Gs7Y3zxMrKSJiJmpJ9bmFOHYLJxLuSlRsx2bW95Wsg9pDf4UxVipcKDSu9xa?=
 =?us-ascii?Q?vzcksIrZfkMV86fw+dR0IYhQZizWTgGY4WkTzncpfk+5YRn5F+V4tRQbZkJ8?=
 =?us-ascii?Q?NT0/iOC3KF9wisIjV9ybLazvTtW1ySYyRZSqL0Lw2qYbBITb7veLkW3SoT/t?=
 =?us-ascii?Q?zaXA2Lprc4nlDmQO9AOishSQeuvNBeJeEcqFU10zA+5oVnQT/US6S+8AJQWp?=
 =?us-ascii?Q?xoLrPssC2S/9pLt9aY/PwQO7UvcddgG6ApLQ0eocAlYhTqvxOQoI6HDVUqoY?=
 =?us-ascii?Q?81MCLIaGfjG2d0pZeQIsrP0DYD3htU0VhOXLSXFJBb6UkhMvTeV4hMaMqsz2?=
 =?us-ascii?Q?RQqEy/pdN2X3OzH1upuFNEgctJ7GJLwS0JDIOZPWRURPxGWACynktrMRDOZu?=
 =?us-ascii?Q?8rQXW4r7H5pTGR57c8rAfwfJXyaHkkWD5YOrEUmwyaZlqOqA5FWuwfrxmKBL?=
 =?us-ascii?Q?aXuSbxxvu2LZE+Q0PEITn9pwk5N+lIUSft+SqiV7m7zxaYbpXKDAp1gBbmU0?=
 =?us-ascii?Q?2H3upVZgaz4vmL4cCIV2athEULwlfswlhcjZ/AXts4QhFE/zNFh7+KBAvn0S?=
 =?us-ascii?Q?HTxqpHjeMZhKZ+XKWA9WryesXE9NfaCktcK4BJ8h1bbBRMZ+FqIggi8LC8Lg?=
 =?us-ascii?Q?Vi0cvfVBJbV2v6JKsGe9+CvYZEwt3YHGSPtZntJ1L60MgxY9pZJPGlBnLqbq?=
 =?us-ascii?Q?oenoSA8SZ4fhl4fDyljuAHWd36qo73xpgMG3NSw2CObrmQT5nnblt2cFMpbY?=
 =?us-ascii?Q?jrSvLg30pTwAS2H410bOILhWCXKgi1zMYLk5NAQglO8flZn/XmsE+ziy4ZCL?=
 =?us-ascii?Q?0ghgwAr0XE0U3nrePag8dnkvvXRhJWDLsrBYAk0T1nWHRlXy+uMPGAeQI82H?=
 =?us-ascii?Q?SrT2JZdyWbvmskDsPiQF05hm4dcriCLNXA/ODkLW1I0ZP7trP1ZdrPDapq+n?=
 =?us-ascii?Q?mT25uUEnNU3oMggG3+XwkazEATKTUc0mdYY4L+8qTrLqbJVtMf05yk8gtGJi?=
 =?us-ascii?Q?KF/PHtZNILqUxRqoezoc1y+cuEpchHN/JJZpgRPlRQRdbj5YCDnQ05X64qSz?=
 =?us-ascii?Q?LJclJ2TJcQCvmp5wm96rcu1jhPFKsDIB+J50WZqeWw0OfDYgBfVFFzXjY7sl?=
 =?us-ascii?Q?KQLD+TVpSnFYwXF+oQN+lHjjdBoPPbU4HPBWWOAkyh01YsSGFY5rAUboVSTc?=
 =?us-ascii?Q?wEmKC7P/C06PboROH7T12f7mGOtLSWQzsJ1VogCHIhzNI41tZ+JtLqTifBrr?=
 =?us-ascii?Q?qiDiVQnJ5p5pCuF0ZccB9bJ67PLf8IaNI6OIiBlA31u1wkNscyBNog=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m76GefXnQ8OzyoXAYVx3H5uJjsQC2RUe14pP3qdJ5l+Fk2l8CXfG0xLuGaV1?=
 =?us-ascii?Q?+Cui9UafgzR3J9CM6lN4d3Wn+0hlod+jntJ+1v5d20dWfGO9E5LquPSDEvlO?=
 =?us-ascii?Q?ZKF+WHPrxviZVN38P1RcLwUKY1e85ejecs8N6pPGY3LQKi2wXcaqiqR1v2r0?=
 =?us-ascii?Q?ewZsh+y2hqDHS9wgSTHejaK+4X9usR4vHPixy2fpfES6pmZnSanqkRoPkWF1?=
 =?us-ascii?Q?zOcTy4ecVc5PUQFGhPtBOs+q4qvkM7MAaatURT3DoJvMlcLAnpeQ1p2piURK?=
 =?us-ascii?Q?UJs5PQ1bB0ej8CWVUhiSPq9FsFlUu61eDzVYfVltuLvPhsffD1drP17wZpyi?=
 =?us-ascii?Q?IfoVzMmsbwNswf2zFufV7BLGYx8xh4mDjT43EpV+FFd1/oVobizINXcpq3a/?=
 =?us-ascii?Q?lmw3iE2YiwJVneu225DI1JlLCOBMP57Sf/6l1UJbgeRRKELW1XeHzYAv2vl9?=
 =?us-ascii?Q?5LOXnHWkwd1CUir9U/sjOUAysNIKkUJOVomhoE1pYVF8W6quVaClowhIuN8S?=
 =?us-ascii?Q?3LODD9QdoJpczEsQsHUF+7NsNnjkr2B+++tLJswiiQdhMQBq3rqdreoglIDj?=
 =?us-ascii?Q?JmKPCXJ/HaaKosfRssDvAeENI5UO2MshhHyuBRXiAkGGD3MUqS7gV3rtGi7l?=
 =?us-ascii?Q?EQunGxgMnIUOFdVWfhwKpp1RYuVsEuiPxAlyp4zjlVhhS89Joypy9khez0J1?=
 =?us-ascii?Q?K8fn28cz8V8HVxP/VaaqPoTNSsHzdm6IiP/V3bEQXG94V8WsC/o0x3tnM2Vl?=
 =?us-ascii?Q?HuFjKfKAPEuAs1kHGLGMa6CcJYOp+Tz527KNqrpTk2/nFtYdXmj/TVjikNw7?=
 =?us-ascii?Q?fqALv/aDFh2JsDaXlSwYzkdnBy07gwHsUFSm5FpuFCdBsJ3zJ+kMpca3x7nG?=
 =?us-ascii?Q?C9utlqlFTWo2Cvb+L3mkDUKdAC883Gi5++ZisdUG8fvgEAofM6zCXsUW6aKa?=
 =?us-ascii?Q?FD/FiSwUYLwYVAEivdYCHIAheTrci8p9z3z0azetShbHaw6rp5PMpT3OPyNS?=
 =?us-ascii?Q?nTgTYPdUK/4yzjMmydvzHFOBeXluHYcd+5H9YuAmq+psuNd+b7YMH8QAxswl?=
 =?us-ascii?Q?P1mIIWdqnjE6ncgEUOxvV75Yh07y27ZmgTqbg9YQeQRaohD053Os5uOCbj7p?=
 =?us-ascii?Q?n8UW1CEKqIQsRTrCetCFpccWOLIsMcrJLFz8g59gopKDmLI9xCjsaJ5vN+BU?=
 =?us-ascii?Q?TKPeJbaVJ138ue/QuwHlD+OsEE73mOCOga9fMzYFAnhBpAM6nWYTV229KeV7?=
 =?us-ascii?Q?ovhM3wcFylDhMfOGCB40AnMcVZc5HwtTArkHZ167WKpIRsM387BhXahwH51J?=
 =?us-ascii?Q?I8yoh9v0ioLLsqxLcaowG6OVY3jZs1YMnIsA5nNynvIi0oiz4lT22tSaPThC?=
 =?us-ascii?Q?6lXTkJp6L0oeURcJ3ZVFwc2R00vBS5Omz/1RLfAFhkqorN196XKiYWExEkuC?=
 =?us-ascii?Q?ncWodTK1Whphp0QZ1G+XfQvgogpBRRliE62Qam33yFFo0JZC9kKO25I+wmgW?=
 =?us-ascii?Q?giSYEzNv+kdY2Hxy9IwmCEDg6S8C8AW7kNtJJshlYB8thR2UOMQBH0F9vnUT?=
 =?us-ascii?Q?bZRSQm2uF9tpI4tMI7JpJonYdkz7bryKfiEaOLZw+1y4l0Vu9LktAVjlHykk?=
 =?us-ascii?Q?lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8471751d-a453-4689-086f-08ddc8e652ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 06:09:31.4960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CQCrGBIsGM9n7wxKzndnTE5GykAu+g0WgWxcZ5ppEJHdMKu19inObztZ52TCQSiCIJhOy/EZKaxmOdEr+mG3xaYD2vPHlNlGmGwlANaviyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753164576; x=1784700576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pBOfgaSJYW9gEXuJsdWMyObOUu1o/56+LW/bN3M9spc=;
 b=XZqV/RVCZwXVo3vGtLc0zt2KTRZHCeSBZK9j2TXiS+BmV27ic3oDN2SL
 ZYNfVenutq0L7ZcjLcQ2fQReuHG3nkfPItT1vFEzp2R7PCjhpx0WsSC4o
 3c2g+EyoTzFKUWtez6jaCnRjOvhjmNROcVecBSWx7upIzWCKv/8GfA9qs
 aVhsrHg+GMbtgMwIlY7xJtEi1r3cZzmGSq1CoTsND50i4lSU/zCkkt3TI
 2ZU4/PyqjEWbT/i1kRfdJlshjBd+/Kav7oKttTsjmF9/GmA9baJ8u1Sme
 2dLSHhURyZ06l0bkr8WP50JNLrHp80PwElWePzW5VfKs3bT2gLuxHQXei
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XZqV/RVC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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
> Of Grzegorz Nitka
> Sent: Monday, July 21, 2025 10:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH v6 iwl-next] ice: add recovery clock
> and clock 1588 control for E825c
>=20
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>=20
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it provides
> control over PHY clock recovery, and PTP/timestamp driven inputs for
> platform level DPLL.
>=20
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
>=20
...
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h
> b/drivers/net/ethernet/intel/ice/ice_dpll.h
> index c0da03384ce9..90e624b1cb4e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.h
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
> @@ -24,7 +24,7 @@ enum ice_dpll_pin_sw {
>   * @pin: dpll pin structure
>   * @pf: pointer to pf, which has registered the dpll_pin
>   * @idx: ice pin private idx
> - * @num_parents: hols number of parent pins
> + * @num_parents: hold number of parent pins
>   * @parent_idx: hold indexes of parent pins
>   * @flags: pin flags returned from HW
>   * @state: state of a pin
> @@ -101,11 +101,13 @@ struct ice_dpll {
>   * @pps: pointer to PPS dpll dev
>   * @inputs: input pins pointer
>   * @outputs: output pins pointer
> + * @pin_1588: pin controlling clock 1588 pointer
>   * @rclk: recovered pins pointer
>   * @num_inputs: number of input pins available on dpll
>   * @num_outputs: number of output pins available on dpll
>   * @cgu_state_acq_err_num: number of errors returned during periodic
> work
>   * @base_rclk_idx: idx of first pin used for clock revocery pins
I think s/revocery/recovery/g right?

Otherwise, fine for me.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


