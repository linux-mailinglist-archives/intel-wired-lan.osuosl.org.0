Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ORiIIiwHH2qudgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 18:39:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F84630468
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 18:39:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=qtYfb4Hv;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A194413A8;
	Tue,  2 Jun 2026 16:39:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1nIOXXuWwLra; Tue,  2 Jun 2026 16:39:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92985413C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780418344;
	bh=isdMR8MDJ0Rlk2OYzhH3DSz3HVDjRRYCxqZW02qSa+o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qtYfb4Hv4/IXEFKM1Vy5cQV0Ix3e+YEK31Alo10qByPhDGejxKk0AFNxQoEqFSrlR
	 xLMfEPVc74x9z1B914cJchZgTXhLvcuWTsnyIlEofC5V5dINNbSh6QlqOlL8oW8u0/
	 QSpMBcGSzmRF+tL35RczAZQEmoUfwM+GSN0drwal47G3jEfmYn4gla2iQ+0ATG/ePj
	 nB1mHGx/BqwIgLTyq/XuBJuUONhYICxicb/vr9gm0+FZnN7c9VhSTgmxccjjmfDy6t
	 fqTTsBbTsjRVQ4aJf5GgKGJmRK+++9uG4puxW14MOCr6q/Ij/4fbwrfk3eHRAaglK3
	 l+WEvSaMWrS2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92985413C7;
	Tue,  2 Jun 2026 16:39:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B5067223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 16:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A4E58224E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 16:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TK3ASpp4js1D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 16:39:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 910EB82256
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 910EB82256
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 910EB82256
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 16:39:02 +0000 (UTC)
X-CSE-ConnectionGUID: ziYQ2VY+TGuQuVCgqgGNCA==
X-CSE-MsgGUID: fnb9pPAuRuO6Ac3Rsyppzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81241182"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81241182"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 09:39:02 -0700
X-CSE-ConnectionGUID: 71+qJ95lTWy5pNNSe4IuBQ==
X-CSE-MsgGUID: +7kdAJ9CQFG1Ma2MhTGDPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="282071161"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 09:39:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 09:39:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 09:39:01 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 09:39:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jMpowz8m+MNa+d/yHPxC/4TLfnTODNmioaECgE6mVM2LwIVt/MVYay/r2OIMGTu3qhWb+qdhhLMuL+2AomPy0/sLgQgxic60gr2g5pNredj8Ocj72SHPhWjKltQdZJARWRnmF6KKHs6W/PsY/C3s0hZOzoecDamYhwLN+3nbpFcnru+F61c70ZDq7X+66X78BbIAXukVFE6uj1ctnf5aEditOacRoTczP2q9DHrsB1mGyGY972+AVEWQisNSBXVSQZPSC5SVVWhXJdWmDzwc8kcWaSUavH6PoAUF0cbmJRDscfEVsvX2d2pafG4ZNlVaMSqjFBp1V8otIfAF/oi0iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=isdMR8MDJ0Rlk2OYzhH3DSz3HVDjRRYCxqZW02qSa+o=;
 b=hIirGxuhjLONCFDsKrY13VOzFh98YAgypB1tYSPLwtDjFQQuQ3Q9rPYuOTvE3DT8op9zSzkR6cpHef/ihn9BxHsnFUlR1N76lPHG2JCrWb8KTbu7O0L/wYVXz1jwAyQv7UDMDSMHHJVXuBM18S05XW0R8vCZPpFoGzpsoNkyrK4M6JxwZSaRhg62ubTNgHO7vHZVxD0srSpPFo5ac9VcWFIMrJ29jYcIJ5tM6l8xwAcfFrY4rCWuYUBuMnRJjiLzViXaRZv8z2TT2xW0iTkxhFJ2XiLiDIi7tkicK2SrDrIWpq5GrZ7rkVx5cSjCpY2CoZ/38KhQR8xo3iP1g5IX3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA3PR11MB8001.namprd11.prod.outlook.com (2603:10b6:806:2f5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Tue, 2 Jun 2026
 16:38:53 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 16:38:53 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix PTP Call Trace during PTP
 release
Thread-Index: AQHcvbqpBkx15LDXxkKLSVl3kahU5bYg0vkQ
Date: Tue, 2 Jun 2026 16:38:52 +0000
Message-ID: <IA1PR11MB62411266AAAB73E2C6AF3EF78B122@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-3-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072332.130320-3-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA3PR11MB8001:EE_
x-ms-office365-filtering-correlation-id: 0e6f0bee-ead1-4185-442e-08dec0c56e9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|18002099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: f/ypXukI1jZh8r3HbRHIpdAQpigC2KRdPJctrdxuCO1E7dW7aJCxSZTmKLY8sYMRQ1Ty9qGkHRzlQwUDeBjT/r6FOxsPB3DGgXxGJwTmQKfTcEOsAxD9jmsbT+dAsopT53mfRXUr0udNOg7Pfi6FUhAdp8flgJp0AoDyOVge2ILrqrphdaVMgHtFpDBs/iYrZncNjK6VTTlBZDsv/4FFwlcK3/MesB5eBhjhwpuyKBa1Zi0J8yWFEOZ/MJ97n3Sm92AkubKgopFXV8B4I/RP6CKFeOK5OskjP0hJ2WUV+6vBLeta/tOngHWhcBthdITKh24bnt/mvaxgaCax87Rev0OszHfYDdeoP9rnnEwLSBJ9jq2vCvKQv2Q2X5D7qARzE1yW91Bc2li2JQPlAultg8BozYRBZc5+FP1PxArk9ujoiy4rSBoExeLGFGg3doVtMtp4B7RTGHTUtNPIdY7L/YKSeLtPyqsBnPLXOto2pQMr2SViuNauPfWVdFqz00iGSIeccrP3yR45xbWNE6qltyit/K4jypT4M7UjzZ+Iu3m3J2wXYDj62sxRFaNk/YOp5U1hIcmbG2ygMDet+lwna3ACcMOzBHJ9Ca70pWSJxjBhubo2gSyN6DuHcv/LK9HkyHFn//kd4OBLNkqtUK5ZqKQXdTsR+iIjVVpyebwzgQjB83hVIn6XmTm8gFRLjzu37Lqp1oRduug1ErBSM5K8qDomAWymyBgCu+yeaKaBccIHGg7HI0zYXkbSvRJXRB/D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ubKgHYpUA/+ZjHK2R+mDEQwHOvYyBNdv++BZtJmZZ1bPJilrRaOoxQagqpAK?=
 =?us-ascii?Q?2wUtiVg31OPWy28zDw9okqnR5ISsxpf7x3VK3gdy1YWAHnCMBcwYPLuVsUW8?=
 =?us-ascii?Q?zZE9UEHOWiZpF/6h8j5SGPxZj6Aacs3ql9UePlV2cDxJmyjX9Vdnx8bD4Jwr?=
 =?us-ascii?Q?94/QiC5T+9/nh9o120NbtkUniN5gOSSaCzTIcbfsVH4Tov/0YriH1zyObmmN?=
 =?us-ascii?Q?cGWuWd1k3GC6ECg0VLnvRDh/yJal4bMibw3wgg6hZ6rsCqg6QR9HSx+hCYBL?=
 =?us-ascii?Q?I103vUYrec0pRlipVIqeCWpXvW1eqHmEc1kc6dAahTtYF4HqQGZyzT+qy/IF?=
 =?us-ascii?Q?ZeZK3jO+9Xxk0sr4ymOb4HHINtoFu7pI4USvAKVTWA7rC3pN3ZGFXDlFUAx8?=
 =?us-ascii?Q?vogSCF0XoiNbQeRuthE9OaaHHCWS9GYepJRGH1AKQTpyingbMGtN/De7PsFZ?=
 =?us-ascii?Q?Gr78BljoYMvphAyFq6tB6s9z4WGGRZtThhCI1dIr3RfUMI3c8R+T7LZm8V1a?=
 =?us-ascii?Q?0z2bHUedT0ilozrKUxh5tnvPDCKmr5BfjiSRIwn/39idivrwvs6sQ3VOujWV?=
 =?us-ascii?Q?QYizh0ITD+EMls6HVcPe/ad0vjfiLVE5WNa209ayTQuAH1Sf5c26oRm1ogfS?=
 =?us-ascii?Q?HCaYwB/jwoz0jNhZ3GqC8MhrVjTzGoK8DsEDqfPNkcRLyaX5qfTlsx3Enx/k?=
 =?us-ascii?Q?EfnDLEKGysn+h4jCNPiHoALoAk4V87nl2xnppk8gKXmMr//0M4UwfggjOt7n?=
 =?us-ascii?Q?gs4jGTgzQnRmVCDjSR78nKjdGCBBbU5J2tiJUb2ezSG7IG2D+R+YX7LmugE6?=
 =?us-ascii?Q?1hYrvR2PfITd4OW7YaRF09ST0f8u38p9xiaxZ4BIr7qSYd87MKMyVPeCf/Xl?=
 =?us-ascii?Q?eTo98u5bCzHZmQPH+yXxxjTeX5SV+rB+KO6Z6X40Jnl7LMwzSzMwFW7q797X?=
 =?us-ascii?Q?TrpNF8Ef83tb9sMGWJl3VhOxHUUv7XeTc4+gTg070Ej9kyixYav9t262Gh2M?=
 =?us-ascii?Q?bu3PDTlf6DXsoYhNvgvIzyNfEQZKlCclFaQQUSfs37YT+aox5FIgfpSc974m?=
 =?us-ascii?Q?+A9YQMZtlZw1aIxmipXMvG5N1SA3ohVgQwk+exSSUn84ak9qYXowCbQx06K2?=
 =?us-ascii?Q?7lk+wqpvqnkp9GsyF7rIJG9/8m3nDRZG7qNx88iHHb1nTP24nDavPl3ne29M?=
 =?us-ascii?Q?+AdgKhuSZfCAA9SLYySv6s9gWxNBRaGEVsANhLb7arhXgrpkNlUdKpEW5C4O?=
 =?us-ascii?Q?KqUiuTEfvwONfSMRTVFHGgwhLioikfHe8D0Ql2sGA8w/zxJYXHhsdNi8YdEx?=
 =?us-ascii?Q?aLA5DQA0jM30ZM11iBM5r/YVO+jq55bua8Fr34kmYfFf1vVk3iFsbxkFWMLu?=
 =?us-ascii?Q?+sB3ScvQP7JDkZzdT3gWGeNBpZWbxcMQwBx6lcbl/Y3KpVjwSZs4ojIfO+2x?=
 =?us-ascii?Q?eOi/KWsqQDWn4mvk4E4OiMsqWIu1pVDWM+X0WnethzzuF6ewUNbDRkGh5qZ8?=
 =?us-ascii?Q?fGMHJNRh/EQNsCUvEi+M+PGHsMbksdhUpaMjHRJMS6RpQpYByiXP84ZlyJ1I?=
 =?us-ascii?Q?CfRmYVBfqy8yTn2qiO7AQmdRuYyZUuWi2vUoWLGSFhfVIigouOGUqeLa7uHW?=
 =?us-ascii?Q?bBAJz+5D5YdKYE2HFUiUwnhNSufXlyZPceEu2TMR40/c4DcKNv52+Gknr5K4?=
 =?us-ascii?Q?nS7iLK0UJxntcAETcTREj/9Xs89WecP/cdoLkjo4T5llgb8N?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KYZPW/1JIzMPdXCvkxmYolLOrGol/lGPYxmzYT0Sdn45HGrdh5UJvZPApicMn0mSyEks1mRecQ4eh7WGPATv4IP7uEth5tLbpv1hPN3RyIprD2DVSp0FBXYYN1qv/TVqgIPWgzeu8xTGBNWNk4TcDhxpJxnQsq0I/NNAAXRPDLTx1vzjnQzbVhIGmwpghito/lToEB1dkhslOg+GQdR8XRC2Wvv/yrgeb5ZWic+KqWRMklRKreDo36qU+oAIcVgDifVeT1m3zVdCDl9iUQeLAfqc6bsICSA4JF6Qw1vsETP1uNIO/3YR4YQgWYM6TK6Dk3XLikbkLBA1Y+OdL8AXrA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e6f0bee-ead1-4185-442e-08dec0c56e9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 16:38:52.9090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RPY0koOaQVj36vgLG+EYpIGVvpMJfX1GWkJJTH2/mOZ7pzwlwvp7lDZ4wQQ6Wm9lKMSxfZ1Lm3Vm6qx9ov4rRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8001
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780418342; x=1811954342;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9vPdOw8dF6KX678CA4Mt4NGIf6tZR+qE8iDT01DaXXQ=;
 b=HmA9Ea58pcI/K0HD0CgL5cF32lw6MmMKU+Q2AgsMWMJXkQau3FnPbSj9
 wrBsqlkNR4L0cHf5ifwitLG4jmdfLAaLtdOfzyDVvQ+R0FeCtYGwkqrNh
 VSNfEhqpfUaG1Gf6m/a+Aa8RK4wgYNtbF6lP/103rKVgST+qdW4VaMk6G
 fHLF2uuqHXHRdf7wO7pwj9881Qyxdla3fkvPwJSyAsPuxEY0kSy8nxFNk
 M52tHuuWOGbvHl6XibTbkfzvrggGnu3ZJmAK/5kWfYMrOA9/dvW9O+gqI
 uB1vF57gD0MCuBr0krGzUlDTM4zuWNf9aSDpjg+8EQgJUJQqLX0gzNPNm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HmA9Ea58
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix PTP Call Trace during
 PTP release
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,IA1PR11MB6241.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6F84630468

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:53
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: fix PTP Call Trace during PTP=
 release
>
> From: Paul Greenwalt <paul.greenwalt@intel.com>
>
> If a PF reset occurs when the PTP state is ICE_PTP_UNINIT, then
> ice_ptp_rebuild() will update the state to ICE_PTP_ERROR. This will resul=
t in the following PTP release call trace during driver unload:
>
>    kernel BUG at lib/list_debug.c:52!
>    ice_ptp_release+0x332/0x3c0 [ice]
>    ice_deinit_features.part.0+0x10e/0x120 [ice]
>    ice_remove+0x100/0x220 [ice]
>
> This was observed when passing PF1 through to a VM. ice_ptp_init() fails =
because ctrl_pf is NULL and sets the state to ICE_PTP_UNINIT.
>
> Fix by detecting the ICE_PTP_UNINIT state in ice_ptp_rebuild() and return=
ing without error, preventing the invalid state transition to ICE_PTP_ERROR=
. The only valid path to ICE_PTP_ERROR is from ICE_PTP_RESETTING after a fa=
iled rebuild.
>
> Fixes: 8293e4cb2ff5 ("ice: introduce PTP state machine")
> Cc: stable@vger.kernel.org
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/ice_ptp.c | 5 +++++
> 1 file changed, 5 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
