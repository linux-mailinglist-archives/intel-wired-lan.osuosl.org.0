Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CA1rOf+M+GkVwgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 14:11:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC48D4BCC2F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 14:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB1D98437A;
	Mon,  4 May 2026 12:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cpPEL3mEVDeS; Mon,  4 May 2026 12:11:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BF178438E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777896700;
	bh=xbDyB+/rSDY3Bmys3grz4HWQP6JRcIa8LSQ4oJLRVCw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=etZbMhYEnOmwiFgbOflXZfvqViDNQG66iHAvjWw5mccPQSm2jPonqcZdpMn8hB3zI
	 UmW3zHCvt6HnublKTkhBhW2uFyH4FnAtNgYHEL05Rc2OR6acvuAgoGIdrkJMzDeEUD
	 7U3gtFUM1Hnb5FqjdUkVfKqqvKGv1xW4ajB6UUm2wCU627eVPqo90yHDVzlcZYJa/H
	 iywtbMTY1M7sNfLX/bCVfZrvV3pTMN6mLSm0NLXS3PFZJnBbFURfGmQbWvX7dd0uZL
	 NKqE40DZ/u6O8p5JQgXAmdqLc+xozKM5Jds3ztLcVrR4YepSjELMWpCkxz93Fl6syX
	 jqrcYmAnV1bMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BF178438E;
	Mon,  4 May 2026 12:11:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 02E28190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 12:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD3E04177E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 12:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QhPLeg_m-s-l for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 12:11:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A88D941394
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A88D941394
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A88D941394
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 12:11:36 +0000 (UTC)
X-CSE-ConnectionGUID: fjbATtd+Rnyic1yiWQ9vVA==
X-CSE-MsgGUID: ZkINm+oRQnmQegpfA8/jTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="104200970"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="104200970"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 05:11:36 -0700
X-CSE-ConnectionGUID: bOFlvpe5TFiY7m4k+1ojuw==
X-CSE-MsgGUID: E//ZO7XuQ02++Iqela680A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="273617581"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 05:11:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 05:11:35 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 05:11:35 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 05:11:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hJwXhN9XNhcL7XQQShk9Dmk1IqFOpg7kay0cAY2MO/HP9sVRS2zPjjAX6h5tMdZHrmHnME5b7LXrkTAFNbcOKLMritgGaGa6z1vJCjOb1fdac2I47f1gq/QkYMSJia85koKTNw9rb0CRFxPK8oA8s89hmCot+yuiEQjlZf/kAJ5TvNANsJLM3XJ2G3rvHjvzRjDTbL3Et8T78/7iEsWH8G6tu5/emOyvNhBCo6mPfxclTIsDNXJY7O4xGsCS12cAoavMbHsBt8zZzyinbil4msllOW/wQJGwEyxSp3stUKp/X0Saw3SkLGtmabJoSSs9NzfmiN403nZKh+F9+EW8bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbDyB+/rSDY3Bmys3grz4HWQP6JRcIa8LSQ4oJLRVCw=;
 b=CbUD0fEvY3j2O/Menv+MnaTCOXsd99nfIix+Hz9ntztbNwZdilAR5euynuj2lWA7TocYrq3+AggFHAkNQrixPBYuz14eD56IK+fSBnyIsqm6MqswPeF+GsJsjfzbhLnzOXry+LICIDtfjsxfGbwEJzQxCRYx1wIPr4LzEhKDq6+8hmS27LAoNyxU22AWItD8HDadCmondhC3/9bvNBD+XTKbbdrhIzYFjka18vFST8oh4gCrunZ5+t+lJJveuxszX3eoxQcASerjcfTluFJOVouCGBZS1GJN7Ijg7aOPF2LtVa1mNAP6NTMqoMjvVDJl6Ne8HnST+cRUPaMTtidPoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 12:11:26 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 12:11:26 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix PTP hang for E825C devices
Thread-Index: AQHcvbqvKS2CYSlvnkaZGA+pJV1BeLX9pW/w
Date: Mon, 4 May 2026 12:11:26 +0000
Message-ID: <IA1PR11MB62410636303305D93225E2578B312@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-4-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072332.130320-4-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CY5PR11MB6257:EE_
x-ms-office365-filtering-correlation-id: 983a7f50-fc2d-4d60-3cab-08dea9d64432
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: pP96Kffx4dTdx9582TEuyfGJNtRo9PjA5jR+UFXKBSJ5dEwxHhukX7/XbfFeef05VNkLe1yKST5/2HtqYk8wURyrUirG29L8o8oHS7hquy+Pazf9GVVGJi0PlmwzAqdA3fO1WDMPmjaZMMkWUPaUB4brASiZa3chl5NQHQOkMGkTjpmzu6XQkWYbo8QcB6H8Czrly150h6piD5FcA290ne1jReDlmzR6qRRb+Ya1Dl3tipx3Iq14xKHd9C5zWXY6XP9C98mW/oeGcRHKSk2NaZ9UkzWr9NREwICiHfVxGW3bpX7QCPc90ZHFqa6fcUMUrhtsWMlguCWhJVugjTCBWB4cTDF9N28+/Nbx21Svlm386lPsU09piBQmxIvjKvK14TVsjwx9o8HRHg4idQttQZ6kiBSSgw3mKQ36SP3T4LtZyQKvFP10N1mOdocZI2JaMtnz3gIBTvvT04IJvn2HVzfI0VQt5M5wrHERRqnFOlvgMLy8/vdqF0r0GSU1aMy0Ea6qsdVCIkLr9SdHwgxahxva//rJEXgAScPD6vzuFPozqrufOlxh2yPJJdF9ab+Y3fc5c8wJ9vbg7ORI0t9hMSqc9LM6kM6BhSGdg62SKSu6KkHUpiSbz1eCJU1Tw0prrDJvjAlzxMs9VK7cSO4R6KXKivOyUWyHhX9z+vq44k58KJBj+owUEqFbtWilS9mpaUcY2/TVeH/QydZSD2WgXD2uWNntmvFtn7pFrA/+zW1f2wOx23nmFy9FJXTH/TpZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3I8VoH0YBaLB+PvIqP6v6quv6iGs6YvkLZsB+YX+I4aRgKtRmEO3eXxrH1I3?=
 =?us-ascii?Q?sgo70TWZOd+F4wh/TS75bUU+49k8lbkfG1cQZFp1DJDTLKExvISu6sg0myCv?=
 =?us-ascii?Q?umxBGqMZQ3xpAfjLYD6lCYMZSeOffBPjrygPVUUQYr7/nU024OaMbInFq9wD?=
 =?us-ascii?Q?3R2kDQHhNJTg99/6DY3MdogGLF3muJRTGoDgRrhDUnoG4eQld/IFm9UUIkL+?=
 =?us-ascii?Q?mamHHfm1/a0IEuqSliis2SCAcRHd/fxU4KjHMM6QyAaVzy28bLXACBodMi9j?=
 =?us-ascii?Q?Rmv8G8J/pvqp0KDcWrXn7gI61K8be89uluma5LD74WJ6N7k2h/b+dg7nUlh/?=
 =?us-ascii?Q?8/OpzUKWMKNTeCNonLKQwHH5YjLAlDfpO+8PL5Po6V8PUplmlIoxsWo7Cfq3?=
 =?us-ascii?Q?m7lXo4CmSeXL42IuZYTQCS64sZpG4UFquWqwEBq6XuSQhK0ZSTOWpyJEPRCF?=
 =?us-ascii?Q?FalOCSPyYF+7GHtBksdDr7Dz4xvABG1Yri/HMzCjcYh8u63N2mYjMyRGWBnW?=
 =?us-ascii?Q?TVuk6xxXfpXRDEUx0HQr3MaNMbksipwminNChzyJj6xNyTQ00i+kUu/+aJm6?=
 =?us-ascii?Q?evO25cBJdRHsJPeKHnuRqFHH9ZmbRw268cwFdjEoLVKV+zLoBNduXfeXtTnu?=
 =?us-ascii?Q?JAZFcWL29xuv7rK2YGkEnmSHqlw1+p4LX+8RyMQEeALi3ZG8ZIAmi5v7v/TC?=
 =?us-ascii?Q?NBHuolmZznWKE06ZLe1xKjHqSmJu69DgbUYmT38nIXrOMf8eWDJRAekZiMG+?=
 =?us-ascii?Q?eGpf3+PuFOkIImDNAuFLQqzWtLGUemNdyRJOcIMkvInxfR4L2o/S8TM6klWs?=
 =?us-ascii?Q?EZUDCcT+amqkLYf7F3NWMvT3OB0PLT4FcBhzM+NMzo1+ozel0TWCKrF4WDw9?=
 =?us-ascii?Q?5CIbC0q/tAL1OqW1JrOEc2TAorJjGceg1bliFww9PPraF7oJnZJG0S67T4q3?=
 =?us-ascii?Q?khyKnonpZtamXgAGa4Qu0RDI3IbTpyAiwqCdbatIk9aTlHf2+UQEQ5AGPGTO?=
 =?us-ascii?Q?qh7Byt+tL26JWdWXerTtt0zPUmzBywapSlYrrOfeP38E580Gb4EDtBcr69kf?=
 =?us-ascii?Q?JZruUuHagySEQpecSkNhZDfL+pY4QPXy4rmhtlMX0zHSCfMAX0MZ9BB3N5pX?=
 =?us-ascii?Q?U7KAbN10zyV+FAj6HzZDpNfNjiUoAwmNhsQYgtWHEn3QtEAxLupdZjgQO6sN?=
 =?us-ascii?Q?TsaAuwumv7ROMy8bQrtxIN7BioOURuMkZhMyHmo+IDXpmC04UTvUFNQ65trk?=
 =?us-ascii?Q?c5CMT4ACMLPOpFt0i2hEUjzOaazTo3FIiTJ/wbGDiaYzF6zG9Hi7n28VsugR?=
 =?us-ascii?Q?liyDb0AKDxOZ7I6t4hf+9e+kdiUf6CJujReYD04KngTrg7o188J695GvwwEY?=
 =?us-ascii?Q?qtLs2f2RrtNuMLvk7yXNaDXKNkTeXiigZaLzpAzgkrOV/LST80XYdaeZVXVI?=
 =?us-ascii?Q?yrHvDXg9BdN145zXrDGOcw4ttpiKnSJN3UDkExZUUcpBTveZ2JnA+5Zc3+zQ?=
 =?us-ascii?Q?ej72bRFdvDQw72Ok7VLDLjiSIhX+A4l4TQaHxkJKMn4xLfKxuoBe6ciHErEp?=
 =?us-ascii?Q?o0yJadVCH1Wk6yR2K53mMDjKCfpCAuAuDhtfilEIZZYmLiluX6x29Ar9IE3r?=
 =?us-ascii?Q?Hp+PfT+RtOkUpTN0o6VWJ3Jx1bkahCVEDc+O0TIwC+5iS77EdWWEhV6u7Mbn?=
 =?us-ascii?Q?/JVwQMfw8hdCt0YyGycmWruhZKqGvd9VL/AkvLnRIGyT0we1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dYhk/6kaZWVn0lOSTaeMk8hvoHAHjaWjnNh5m6BpYyo4FgAaG3oKWFsMkfzEpYRnbYj57GXuKGiFp6fl5pAL+32pSMAdAwOdycL3WPNfQsh8ztNDN4ccoSKMAz87jN7GSOaL53gq2+sTFeEWdOGihlqMZ6v9hRTmOJ9UuKwchwaL2eXSvR3NURTOpm6JkM7xr6LrtbjVFxfAp1jcsFpaRidtPF3I3H6kVAuO93o/g/zVMsbhu0wPgYh0NiKEKjvFR70eNoTPgD4m40VfxVpI/KTZPGjJ0q3ZQMhLYejIrVL/C2ZuCkicAKANkcyxZ+z+dea7QcN6CEBBRU/v1LDinQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 983a7f50-fc2d-4d60-3cab-08dea9d64432
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 12:11:26.5190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YMvAyf2czGeJAMBJ3tekOXGYPKgcU/bO76izVjFA8zpBXnF2t+jRe2mpI/C1UzuI64ymOTWrGRBDu3Ot22RODw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777896697; x=1809432697;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=udq35WEYSz1RTlUhslHXeM5jMsxbpiuhBf+byBgdUvQ=;
 b=Q/aVz1gjnI/oUzRHOU6KjtOaZ1btulr7CCNeN+D/HKHGJ3GvYbYRtGgV
 P/sHYUZFhTYKDu4+9Fi1nrcnv6KsDVmda1UPQ6KwCBfjKIi7Os6L/+N4w
 KhzBpGFqs7uUkyBTOkJwE4sPqPNr8+jFbPZ1bc7e+Ke9PYGZxuw/sRLaA
 B04xyj09EBZs6GbQnqB4oPhgo+NaeCI6y+EPLebuF2PnRl/kFAitKQQhC
 rUER/V+gaLRhX8PeYBDtyswstKQDRUoEMyBiJqWjfTYIFK1HgWI6FlgU9
 g8FUSHtuxEQ+VFj7tdFx+7lRUAudiB5q3JtHSKFH88INLKVW99YtlLtL+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q/aVz1gj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix PTP hang for E825C
 devices
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
X-Rspamd-Queue-Id: AC48D4BCC2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:53
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] ice: fix PTP hang for E825C device=
s
>
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> Change the order of PTP reconfiguration when port goes down or up (ice_do=
wn and ice_up calls) to be more graceful and consistent from timestamp inte=
rrupts processing perspective.
>
> For both calls (ice_up and ice_down), accompanying ice_ptp_link_change is=
 called which starts/stops PTP timer. This patch changes the order:
> - while link goes down: disable net device Tx first (netif_carrier_off,
> netif_tx_disable), then call ice_ptp_link_change
> - while link goes up: ice_ptp_link_change called first, then re-enable
>  net device Tx (netif_tx_start_all_queues)
>
> Otherwise, there is a narrow window in which PTP timestamp request has be=
en triggered and timestamp processing occurs when PTP timer is not enabled =
yet (up case) or already disabled (down case). This may lead > to undefined=
 behavior and receiving invalid timestamps. This case was observed on E825C=
 devices only.
>
> Fixes: 6b1ff5d39228 ("ice: always call ice_ptp_link_change and make it vo=
id")
> Cc: stable@vger.kernel.org
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
