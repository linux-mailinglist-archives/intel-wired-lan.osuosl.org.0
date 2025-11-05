Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BFEC3437A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 08:26:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 176B383E63;
	Wed,  5 Nov 2025 07:26:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMjJEcpIryzG; Wed,  5 Nov 2025 07:26:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 720E683EB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762327585;
	bh=mA1GpWfTeJ1qvpCtZolTkbOB0BsEbfN4x4nQVMQbhcY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D4XMrIzFevd6m4M1S424FZXNPkIoFLnQmZz5a/aDousHszfUEBO6EhPRs7D8sKhjF
	 5zCsko3e3NO/pfFnnO9DXOzpcF3AvIezfYaf1u0q4W2CrwJOpT1LC9Acg1lcgS7vdg
	 1SaW1F4c+zT2+BvO9ybBnMNuMscJvdhXE6uZoppGUS+gML3Z7EV/dMRoTR0M8oupAZ
	 AdcdjrSFrB47Or5TgHkLoZEkFD52Si/EpzYUEQf5vTBM+KIHgJ6QG8ukDZYX4QJdWC
	 A+WpCu65o7mH8wqGQi94IWht6ywCZrf8Oc75aZNMj9ktXK+V1wjE14zq6tBIHX10nc
	 ju0lSW1KfM3Ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 720E683EB3;
	Wed,  5 Nov 2025 07:26:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 232D8462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14F0E40EB2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:26:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uqNdzXmzU-oE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 07:26:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 588D940EB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 588D940EB0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 588D940EB0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:26:23 +0000 (UTC)
X-CSE-ConnectionGUID: +yNgeMpeRAu4PU9QHM0UPQ==
X-CSE-MsgGUID: HLDgdqtCSlWQXqyUVqwLHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64534636"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="64534636"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 23:26:22 -0800
X-CSE-ConnectionGUID: 03jbxCWwQtSRxxN/jqQvKQ==
X-CSE-MsgGUID: 26Po/dJXQVKSm4HiviEDRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="210865137"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 23:26:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 23:26:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 23:26:22 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.31)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 23:26:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DcC8GeqIWpoLNIAk4RUTarfiOCkGMzICSIW7gV3v+5uieozavqAn2j3X0m+Fv9ngecGWRhzD/glstb6NMbMUOyTWW2gxPdS9VQM6nzsUsJj18P34u4ooimSOzEDv36osb4BCrU0BWKx9GaOpbXkZrP8aMZrFU2uKyCqBNeODcIZK11xx61LFEijTwUaq39kxw3qFpE9dumLZFmB0wGU9luVbJv7IfLblsXOCYL9T02GyrfmBKGqEMYyHga7AsahEraHR2sNDE5Svpf0wgHsPiyPzMc4SOgYZuEz3sVVKscAXg43ThbRHVvYCO63KBIsehtfZSp1sI15tWEep34H+2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mA1GpWfTeJ1qvpCtZolTkbOB0BsEbfN4x4nQVMQbhcY=;
 b=xNGD2dz141i3sZM6mjOVl0GqU5lNGDFlq78hrjkWkBl15a/bF+5uJwdONuUG45PZW5C6Xp5K7ybWsxirEwcgDqNCDrJ9lXOxvnFtvPteBEAYiJxIcRaJK/Qpe+LoZekwM7+NQd7n4hf8T1aK56Zcf6g1wNwp943wfsBJKw+TP3pw5mt58qqb650SR5tzwlhOwWOHGv9z4zbTCgt7JnU+/WoNei5lPbfSpyNpcBwkG6Uf30Pu1u5bDDl79Nn/0l2lWwC5779ZFfGPFIJe+lJar9WRSt1QvFlGXtqeLtbOLEl1T/AHzPHKLTGubpd2eko2wXzbhFS81wcegq1HSax5NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 07:26:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 07:26:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: cap maximum Rx buffer
 size
Thread-Index: AQHcTQY/6aGXTuQgdEuUJdLr5Rzv+LTjsNWQ
Date: Wed, 5 Nov 2025 07:26:15 +0000
Message-ID: <IA3PR11MB8986D09A5D53F732819D68B5E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103212036.2788093-1-joshua.a.hay@intel.com>
In-Reply-To: <20251103212036.2788093-1-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7631:EE_
x-ms-office365-filtering-correlation-id: 7bb3beb4-001e-4dbf-949d-08de1c3c9aca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gF4khWCuPJxqMEqFvCE+utb0vfzPERVLcCSBDAqLJWUDsJG8o39UsrNNBujd?=
 =?us-ascii?Q?3NknwlESKdBacsb67NJan8ZM2JMW84J0wO2cSy4rA4+/IDxeUEAb3F9YUyiz?=
 =?us-ascii?Q?IyxIgm+/BD4QTRjuTe6owd9Wxs/Z7uewLrHBC9ffAgA17IzuSVCXmOneoLqu?=
 =?us-ascii?Q?yHZ5Qszg4zap8mTXLLuBacNHsU9aOKgEyXUavm0b/PHynEnjWNimLc/CLFY8?=
 =?us-ascii?Q?5ng47oC68imovVsP0o8c/lgl/NAAkRPtj8DU1tgOZNCjKJztrKJFMKbfl7Z5?=
 =?us-ascii?Q?ScECjhrPAJiuAgs64bCqes99MkRnZnX6sbhIIs8YKR3Jle+5Y2q+FSBAbpp1?=
 =?us-ascii?Q?vFLbK0JStf85xLtbHszu6DwzJqmROKs7qNlVdJ+lHc0zGVYuOeDytgCAbL2B?=
 =?us-ascii?Q?tauZ5tJBoQ7kp4SAVRJa/6EJ1+zXDTr4JwEFUQnco5IIrupJgOSkR5GV+gav?=
 =?us-ascii?Q?uCuSMRhG//WmNw3LKeqovTBXR373wetrfYCMCGO9frPUJ/4RxiiF9696fPdT?=
 =?us-ascii?Q?cWNFQvUc9sQBKzD4I3EIoz9CCNORH8c56UP8n+P7TyPn6f729ZjVnR5a0fUy?=
 =?us-ascii?Q?WpnjgIIYxvOo49NhDx/fQbWbQfxXw85dnppmqeY6k97coTlQX1VRuFITQ4HA?=
 =?us-ascii?Q?qAgtWI2rCxFfvugBBav0bKPIhUjov+Zqrej4xckX0hPDqCllKzfXkyIm5e/J?=
 =?us-ascii?Q?+oz33tASSRIp7cLFnohshv+jVsWJ9LKyHimCdWDz1P0ytDjdzO1EvbVrB+iL?=
 =?us-ascii?Q?lhB+7VzsmvSJIIPboVK+Zdoyemgly+f37NiiHxyNm9S5DOptH6T75wSzv5dB?=
 =?us-ascii?Q?0QxpZwdFhnQsFvKeO/icXXczgTcrF9sVlfPOZ2ueQ+SxDgV7QdrzKjM3dJDk?=
 =?us-ascii?Q?McR7LUj8+Izkhlb9RRihNwZFzaxpqDRzVepn4Qe4cl6QFaQPv11cVv7ETKTi?=
 =?us-ascii?Q?G3yOf9lXMPqyW5G5O8mgQedj+UoYcXmxB4J0RANQXqQRHMEA4ZuZm+0LIFJi?=
 =?us-ascii?Q?kenPycsMV0IAOR6iuwAtGt3AFGPIg1mQmM7nCvZArLJdFxf4GPPn8B/+6wXP?=
 =?us-ascii?Q?kfXgdeODu4jbpCilE7NrG+oLFw0hVehmJ0WipUhJCiJCD0yGRmsC/ZozCScC?=
 =?us-ascii?Q?7aQTUluKuLp5xwYWKKMrhQuC7+WTaQ/4V0F6GtmaxnlQ6D5smhSMmTPZANaQ?=
 =?us-ascii?Q?rjAP6ZCvSDD9iZEzZPUdjYjkaPPaKvtaK/r4oY2FBQgNuGteal/fUbBiBaxz?=
 =?us-ascii?Q?Zmv8vv9MHq+6vklGufX9jtRfM6VQPAQa8somuPm1wEo57zw/l87JkO+ku7iV?=
 =?us-ascii?Q?RLvWKS7m7UL+aLJiW9/KqUoYbDNDNdtPmiBOMo5dhVo5GfhM+iVsIOYo7tU7?=
 =?us-ascii?Q?p0zjs7VTapAT2T5+r6V4/JXQxAXuNoQ3jXvQc5urnPiZpOT4qTWWoo9lPPdZ?=
 =?us-ascii?Q?GIstX/jaFdYFeUdO9pe6W950S3z0RtA8nHx2BwB5i80N21lvynLKDf5QlwWf?=
 =?us-ascii?Q?suX7x3QOYtAPXNkzpfDcFkQLVz2WqBY1jmpI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CUZaAXjw8rMELZdPM81j0iZtj1pVFn1STX3f6p22p/F0/opJyxjLDA0HL1aI?=
 =?us-ascii?Q?cH91Rf/vmJ287N6QDHh20cQB3sSnWB38pDgjQ+poWiCsXuxZYkv7RLDerWMT?=
 =?us-ascii?Q?cLTgIKeoyZheMKZ0CgMuanREi4vtzPuCwYoJ/FEHQy17PTkgo94PDk0EbO77?=
 =?us-ascii?Q?Vs/0Mvt0RjwJjfhxjLnbrHLYr0H/F3qLUD05QCGXth2w3HXv1MRSxiFhKvMO?=
 =?us-ascii?Q?MbL+tgdEeG/zsBd8lX0gEoeMA1qYBhLo7MtaHXVD1ukN8Y1pFTXNAPUtKGsD?=
 =?us-ascii?Q?r7dydiFtUHkEVARdp9NBzGvZ5OkraJ7h+Hrm1nD8U8JVDatQU70qYdojR6HW?=
 =?us-ascii?Q?/cxaReZNmOsuoPFBQCrpfWk0igRROblzBLmjvQNphA4s8q8LJzmCx/BMMuov?=
 =?us-ascii?Q?ec24xApsaLFJwlKhTiQTfDZYcHPjGg0HHuNnmZEKOGciuaF3sZvqktylergj?=
 =?us-ascii?Q?Vx1l/CCJhU5oZUbG2zt6eRxzrUegrw+mmluN8NXqy5Z/fvDXV0gmOniGE5Ql?=
 =?us-ascii?Q?7Yfhsz1VyH6JDbCoUY3V6apt/hOWHuLfpbVdVYmCX+c9weP+foTTH7w6T7+w?=
 =?us-ascii?Q?VpmHLzUzwZzNEJk0LTEOmHcL4AyRKta/dBpjYPcuJd4CRxj/59Sf1TOA8BfH?=
 =?us-ascii?Q?nWh0HmAPax1hvYMtuNbASR25ahLl8xYl6Iz0Iow7+v6tLB+JVjavazr8b3Zn?=
 =?us-ascii?Q?0dtR20CMQUNq2ATkG1SP+a0Jd+tjIfoSBChZiw5Df8NGy4logzoTdVD8+ixU?=
 =?us-ascii?Q?YknG4Jgyy3fWSfzwT+wRkoH8+LWG0iC+K3FktTqSM3bX8Z1tHBLvcFxZaJ33?=
 =?us-ascii?Q?3BxrY83kSAe4KH3k84+aV4YePyzn6fo9ORqtdFvRLc4Z6CmFn91+czksQVp2?=
 =?us-ascii?Q?zsGEJeTHVze65e7yWAdnfJfyyZCo0tBHtJ0G4JLRyRUQL4erqZwtD/lpmJrr?=
 =?us-ascii?Q?e25glenejqQYs7rYW0gATDFjTMsliHElk6wEbAespKPw2RwBpkDgzH+MNI+e?=
 =?us-ascii?Q?2cZeM5//uNlvFXZUDTup2XJvzxmVXTzyAHD0ZdjzPAHgMpw9QOdJ+gL75Xw1?=
 =?us-ascii?Q?H6l8GEZ9hjq3/oOXsHY8HLri3RmetyM5ZiFcC8U4Lwz/asQeRqBumClMQFYT?=
 =?us-ascii?Q?xoDVYTUOf9bEynp02zZbim8dIwXYk37sDxHgXs7E2AqPW7LWyKpx7PTJLaur?=
 =?us-ascii?Q?1gRvTd6uZ1BmsgrK+cFgByPNqTykq1OV+HsiXc7ouHmVPsw3CuWodJxM/iYK?=
 =?us-ascii?Q?uErhl1Z3qU4f/Sx8Sc59l1pj0zDm4D8HG8OjTI1+EWEj90m8rV5iHhSWuojE?=
 =?us-ascii?Q?B+dqy8s7Q8qc4wFBMsmhro0lCbWO3Duqqsz9ndiD4L4NmFW9ztAcyvVniSDW?=
 =?us-ascii?Q?rRL67gLo1BtVYc/qzcPi1CVGVeNNcbiQ5ISkFVl4ljf5hlzIQcf8fko9GPVC?=
 =?us-ascii?Q?+HEGMY6ZtBGHH4Mmd2kvUbqUln35B9Pu8AKlAmjlvJuTIic4t64/uX/iQvqg?=
 =?us-ascii?Q?3vsGXvTykRb3AALIfbNrUrrUoF5ppwnVhXsJgkhAaM1SvpeaGTeq6EvvI05q?=
 =?us-ascii?Q?J071ENPasyNnUQFlRrVOmr5MF8WUDcDaD7kEJvWIuRAL2Y7a2dxqyX6ggdoy?=
 =?us-ascii?Q?cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bb3beb4-001e-4dbf-949d-08de1c3c9aca
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2025 07:26:15.3362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PhyVtHe58qjxBhoqyZXE4V4uztNuKz7CCRK51SkDP3aLHLvb/KWZErE9zUePxQsiCylUuv/bWO59EKgIidlCmJ0I5mkqUEgV4cOFU442n2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762327583; x=1793863583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LLcy6DSSlaMed4bGlI6IW/momtifrOQqFMGDlmujHp4=;
 b=OgjCdeOG0+drXWjhW2+CYc4OrkcakbGEUc5xd4NEX+KJge3E+p6Bt70S
 zLc8WxWPOEPj+eRXpaspvUEGC6xPUHGW7SEjZJIeT8EjromAevvq0vrAu
 AbkmFV8p9miz61h/IM2MMDe2RB4+DjCoREytYC8MmokNvKOlRdm36whQX
 69Iw5vb9cr6TfQhw64CdODCMvMIMRLTx5RQSn4RCNLjRfzSUEomJZo/Z3
 7vBR32f9AbBzuSXaRYDAaiJAozrVb6S1q01Sq0evoKgsTLnvdG46qGc+I
 eDdrV0GvuwdIPLUlbeu6rNIQ398e4/d7u//wEiDokZ6eQT4zOrKXpJwb2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OgjCdeOG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: cap maximum Rx buffer
 size
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
> Of Joshua Hay
> Sent: Monday, November 3, 2025 10:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: cap maximum Rx buffer
> size
>=20
> The HW only supports a maximum Rx buffer size of 16K-128. On systems
> using large pages, the libeth logic can configure the buffer size to
> be larger than this. The upper bound is PAGE_SIZE while the lower
> bound is MTU rounded up to the nearest power of 2. For example, ARM
> systems with a 64K page size and an mtu of 9000 will set the Rx buffer
> size to 16K, which will cause the config Rx queues message to fail.
>=20
> Initialize the bufq/fill queue buf_len field to the maximum supported
> size. This will trigger the libeth logic to cap the maximum Rx buffer
> size by reducing the upper bound.
>=20
> Fixes: 74d1412ac8f37 ("idpf: use libeth Rx buffer management for
> payload buffer")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 8 +++++---
> drivers/net/ethernet/intel/idpf/idpf_txrx.h | 1 +
>  2 files changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 828f7c444d30..dcdd4fef1c7a 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -695,9 +695,10 @@ static int idpf_rx_buf_alloc_singleq(struct
> idpf_rx_queue *rxq)  static int idpf_rx_bufs_init_singleq(struct
> idpf_rx_queue *rxq)  {
>  	struct libeth_fq fq =3D {
> -		.count	=3D rxq->desc_count,
> -		.type	=3D LIBETH_FQE_MTU,
> -		.nid	=3D idpf_q_vector_to_mem(rxq->q_vector),
> +		.count		=3D rxq->desc_count,
> +		.type		=3D LIBETH_FQE_MTU,
> +		.buf_len	=3D IDPF_RX_MAX_BUF_SZ,
> +		.nid		=3D idpf_q_vector_to_mem(rxq->q_vector),
>  	};
>  	int ret;
>=20
> @@ -754,6 +755,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue
> *bufq,
>  		.truesize	=3D bufq->truesize,
>  		.count		=3D bufq->desc_count,
>  		.type		=3D type,
> +		.buf_len	=3D IDPF_RX_MAX_BUF_SZ,
>  		.hsplit		=3D idpf_queue_has(HSPLIT_EN, bufq),
>  		.xdp		=3D idpf_xdp_enabled(bufq->q_vector->vport),
>  		.nid		=3D idpf_q_vector_to_mem(bufq->q_vector),
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index 75b977094741..a1255099656f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -101,6 +101,7 @@ do {
> 	\
>  		idx =3D 0;					\
>  } while (0)
>=20
> +#define IDPF_RX_MAX_BUF_SZ			(16384 - 128)
>  #define IDPF_RX_BUF_STRIDE			32
>  #define IDPF_RX_BUF_POST_STRIDE			16
>  #define IDPF_LOW_WATERMARK			64
> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
