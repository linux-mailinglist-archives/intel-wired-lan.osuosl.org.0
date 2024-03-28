Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC49288FDF4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 12:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FD61606A5;
	Thu, 28 Mar 2024 11:22:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rLamOYwwtfGK; Thu, 28 Mar 2024 11:22:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AA6D6064F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711624934;
	bh=J6nM1ZflClP/+i7FMFwMQHwncQcEs4HyQj9asAtmmwU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DKqK0sDoA9lHsHEOpCNFFT3ozQM15ipGlI3/uCXgcYsE8GSR7vGwSXS0vkYPi+rZ6
	 JXLgp7+WMOfOasZ+AK2vsawdMysHUaGS/tecNdnwk/8hje/KHWdqJyDVNz+VrDC6m/
	 8eslvwsm/zRlCXfX2U/FHGmBDaBCoR3PgBdRsJvnoTwJBx8FLtAnQcaVtZ7Ja9NMHb
	 kaSnOksRNHeDCBJ9x4jVfQyY7h7TefLaNBGLgNqwTHmsi1plqD+QlAehTUgE1BYk3e
	 4/NPwfxEqIgrytMALzMS2+lIMv/Z2frw6SXp0Q2zOaT/JzJ/YTUJN4IgDrTJEW+qXv
	 kOG+S6e40GyxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AA6D6064F;
	Thu, 28 Mar 2024 11:22:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D4D11BF37A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38BFE6064F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:22:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d-HFdkLD1qRx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 11:22:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D51D16064E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D51D16064E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D51D16064E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:22:10 +0000 (UTC)
X-CSE-ConnectionGUID: 5tAUAJ3vRK+wg7A0TCY2YQ==
X-CSE-MsgGUID: 81EZEuPcT5WfZsLDbc9qBA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17401474"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208,217";a="17401474"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:22:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208,217";a="21269273"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:22:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:22:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:22:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:22:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+IPi9YsbbzJ0pJmsVWOFA0Et8PtD4EGZLvoA8kE2avkEXsPNvL7gajydqxpDRd1xksjeU/OvHHacP6j7wesLONpXmzGqeBLdbAtzhzgmz5Q3+dmsssVvZgZooQve+TsNODC6ZgLsVnjRMzqh2+1ehBZweBNxpVRKy0gfg8nh08aFJDKM1YrsAiv8Dpi1AtP10qdA0UkRvgPbJwt4xLAJTdCX+fC+Abz739lPdZEw3E7txMRbtSs1sYNjtppe0GgFhPikuM7KRGiWBkwTpE39pagvgghGn7VOVqs0I4bQnHWz9wFbkXzUFtQvXDuphP18CQmuBns6Ss2f5dQ0IHD4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J6nM1ZflClP/+i7FMFwMQHwncQcEs4HyQj9asAtmmwU=;
 b=CyA0M6iV6+B8DE3PQU1EiicpyS46Y+WlPCOGH2A5KoyJQCVA9DkSCeAQPPbGPtvzpeF7cjQ3bcem4H5LcvJgPTDRDsWqsvHQcZrHLzzbRD1GKxb12KBAVP7oGNPbgFL5HVve5FvKQ8dNSi2mH6LIO4czCqOjuFe6X+OxIk6uNMe2FopP1CAM4ouDzFDEY3R4Jfo+8OcUv86OfoLGYaxWf5LJyBspQELU28xLpLf0QG6RXjVolzIyrVUVqi1GNX6uoPSf/ekRgGCx+8fqBl8FEv9PKcUazbmrbqdfBDQTEH4qY5ICQSvu+GIHTPSunyGcjNsyENGDOxyZssv1lIH8nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by MW4PR11MB8268.namprd11.prod.outlook.com (2603:10b6:303:1ef::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 11:22:07 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:22:07 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: geethasowjanya <geethasowjanya.kornu@gmail.com>
Thread-Topic: [PATCH v2 iwl-next 03/12] ice: Implement Tx interrupt enablement
 functions
Thread-Index: AQHagPMkN+/3fuKelEWvWPza4aMfjLFM+kmAgAAH8cg=
Date: Thu, 28 Mar 2024 11:22:07 +0000
Message-ID: <MW4PR11MB58008E14214A95E530B2AD68863B2@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20240328093405.336378-14-karol.kolacinski@intel.com>
 <20240328093405.336378-17-karol.kolacinski@intel.com>
 <CAJFAVwokuo-x51LzEZQKCd-MQAQFeV-Gctqq97LPYnM9SKgGKQ@mail.gmail.com>
In-Reply-To: <CAJFAVwokuo-x51LzEZQKCd-MQAQFeV-Gctqq97LPYnM9SKgGKQ@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|MW4PR11MB8268:EE_
x-ms-office365-filtering-correlation-id: 2f85b107-2c71-4ce6-c714-08dc4f194d8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EvEBKH80vdP9o+rqptYBKl2XY63xNq1s9Ghi3lrN88ruYvj4jEBYRVFnoBqyhvj/pXN7yCJ0FrYdMN8DtlPHMoCQBF6UJP9ja5sncywhA02Kjh6EO5UIdYOV4Wg6+CcBor44IaJBv6gP61qSQy9KbhwEIKm1thEHuzBWfEp5maN8h7OIDJW6SCMNiO37OQ+fzD3hHmH12wYGhqV+4cimfsOB7gpP6Zk78bVZP/1LjHi99Dj2hLbkSH06feYAp8P9aiSZPqRerdl24BsLCS32ckiRpgUXilLxOEjE+tRGx8xJo/dSn+lJEed4X9ZNiiF/lN3NJy7c8Jv+hgDzLXTGj1ihkJhBPU9chEpDYwS+22c1pAybeWG77sYh714McDu2kPrCxhCysLys5I138G8fd3QJ2xd5it5cduJFRdlfxTF39qs9Iyzss9NgFvNz0aGcQSrPb7awgWU3VMcBHP1yMJDCX0D49VZDxe4oKDz0xaaM5bGhn5Ex1o1FOKM9ZAco1XCVm/Vk9N2hQQ/YdJEGBxh7sjw1yp4WAEQmNt8DXbX3Uj28MVaWW4cuAycf87By461AIj7aCqniW2pSwsD7zuPfZyWz+i0j2tVSoCNuMmSZAveLf3F/vFmORvRWVPdXmB5U06uWF3rf7EHlt3e9B1LoZPfFfhtLAXvWbkuaQzxtbEGH/MM1hoQ9vokxm/CZyq1tJtU7vT4ykTte9e3FZxOkGj2rmfWZ5fjGHkIII28=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?wYYsoXwttX3omGau914YQd4AkWng0N/lk9BQQbbQ2OJLzg1X47Yql8iMzf?=
 =?iso-8859-2?Q?ktRvZoSg/cUEr9LBsisXjFWgBJYu6evD5uSiU2av7UefXjhplobmIWAEwY?=
 =?iso-8859-2?Q?gOvVMvsUf+73AKC6tKlfVKeMS4W/hjBsgzaIGacmgBIHy/0vYEjh775peW?=
 =?iso-8859-2?Q?4brdJ46aHRJctgB/EECKwhCk7vsXRyuwDNnbQOy/dr6DTuiI1m/3uSAwOR?=
 =?iso-8859-2?Q?ID4ZjwPhlUMf8a4SA8pf51F/f4L6NWOrC3C5OJ54sp8W1pBg/ndJnHDQFk?=
 =?iso-8859-2?Q?1n8sMqxIp0eB4yDIvF0pzWYevprIfpSfRubvHxF2WmGRVFFpCpMZlky0Je?=
 =?iso-8859-2?Q?Ua3pCeMGgplN2lyPcykIKrvY79UtDVtLbWHtsuAYel3xITl3kpQQHLX/f2?=
 =?iso-8859-2?Q?NsR4sUfUh6L8MS4iFZzlRxZWoor6KWOa4BXBt88qKqiZM+J5yhMWSSPcFa?=
 =?iso-8859-2?Q?BDQP5T3twVc9cV/n/TYltuGIQfVflXcfZ3KsWg2mj5IaJHYRa684vpBiyw?=
 =?iso-8859-2?Q?WmsMMnsqopY71vdR9NE0aZbOr/WQF3tLXuDfcS8iER2gJwCiH4TclC+eR2?=
 =?iso-8859-2?Q?tv8dutzZ02ep0YeuW3rZaWJipNx1aYWiJ5zRXIvVXSSAGtia//ztMTvQNj?=
 =?iso-8859-2?Q?u+uvfSlVbYnErfmFuIb0DN7sAt3y5dP4ox4Axji6utnHVSNnTqgPguqCUh?=
 =?iso-8859-2?Q?Trp/NwmsUzHx72IO5lYNf+hqxUDbY27dEMFzYRY96lcJGDWLIWEwqwd3uK?=
 =?iso-8859-2?Q?1eazVcTwkihZOUJF9Rg/LUa988vg74Eiwspj9xEFqM9EU1bEJ5VMEO+Z04?=
 =?iso-8859-2?Q?+o+OcPgon2T9/qc/gHXNaZZxhIFmsuhqfeWPFXsmWj9SvHqbM3TQ+vMlNa?=
 =?iso-8859-2?Q?z62Ojf053ekyDu2+xszig+5uZ8mW8gWQn8VHTKCcSzZ0k8up3xwRf+ChTr?=
 =?iso-8859-2?Q?y12Irn85kNxpmaR10a9+oqlYCjlumSf3moeI559y+DY1NmvGsFSIilgAH1?=
 =?iso-8859-2?Q?3TEUsCDLSZPFqmC+l5CkxTj3RKd8kHEWVcRKTjfk5bsYHK0LVqzYgSvQLc?=
 =?iso-8859-2?Q?fRZvPTdi+Zk4Cw0mKno/zhxauVrvstHMCOUqnw0h2ULiWbks6UN+bGDuvG?=
 =?iso-8859-2?Q?MjKRvmC/K5DhXFaGizJQ7AMOGYZr0ktaaQNs/5+DcqMIT49iIJJgDpGIeX?=
 =?iso-8859-2?Q?Nlna+maoAZzC71JRVK3tJx9CqYneBuvfSe4CCvyS39u7/qCEFIck+fS0E/?=
 =?iso-8859-2?Q?HP9KK07qOJTDY+Qibnb8QxHy11+KFkyexU55SApmMoGQ1Y6aivsEOPSvv8?=
 =?iso-8859-2?Q?qLPU4N9xeL0Q63r/KeyZhcfK13pZQKi2IAUQJysCaCY+Qd4MiL+Yj22bgJ?=
 =?iso-8859-2?Q?CflC90Cc6k1FhBX0c5TPmQfYbdejrSkg1w3XqpDITKZZ35oVFu88ixvaCJ?=
 =?iso-8859-2?Q?SiaUf8gKp8qMYettBBfTM3n8B4Ro5X5IzfrIFs3XXuz0dADFC8sRMoI5vZ?=
 =?iso-8859-2?Q?BZndxaBQVsw076CS8B05rQnOu0NIEdI9Ejnx9q5bEtACNfJWmCbOf7dst1?=
 =?iso-8859-2?Q?2GqYj5C5ABAmTFFmWA6Y4WoKREY4qi1TeAQN609sUzQLhg1RZl52fVneEn?=
 =?iso-8859-2?Q?CZ+cEsx/zsyP2g4mH/L1R8CwUowEwKc0VRmkq3zGJd44bJaGFvRw37iw?=
 =?iso-8859-2?Q?=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_MW4PR11MB58008E14214A95E530B2AD68863B2MW4PR11MB5800namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f85b107-2c71-4ce6-c714-08dc4f194d8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:22:07.3032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wL6F2Z5ACgzkaBL1HPLNhLMPsgJCXdXEc7S+TOyxGZzRV+BGaHVY3L1bCpd8MH12dbj38ixJT2VrBWT0k8GlaR6BHJJ6ZhJRcWxuta7Xk0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8268
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711624931; x=1743160931;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=2Jg/7cyZAHcSnEki+JK2rWCYrskAtQHZgoFWQCnpi9g=;
 b=jjzM0h/QcikRUAr+8frtaOdBnDxMiqOdt5OWOSWCO7cS04vQ90sCmM8f
 DCWiflBhQalR5JMUjvL/0Rk1T72zvw+woqgkUCX5dtanlwnyQky0n8AEC
 irgqv/kmDYEWtsqweIsfCTiJCeMHaantXu/Ue+x0mRg17VIXjuMsA2Nd7
 o4nnRlgCnOlW0kVeJgzlNEu7FthW7N8QSB54RpMAKUBc4dJ5aYNxugISC
 fVJab8nVDBtgSmqx/qFFCgnScST4nSYVA3N4Gj3ANXHbnkr6mxGsW2THt
 qch/PsZ6OG0NJlLhJ2YyQ7KIGWy6BgRzcZ1L1s2L8CCx6MPTTASk7X9Gv
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jjzM0h/Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 03/12] ice: Implement Tx
 interrupt enablement functions
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_MW4PR11MB58008E14214A95E530B2AD68863B2MW4PR11MB5800namp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi,

> > +/**
> > + * ice_phy_cfg_intr_e82x - Configure TX timestamp interrupt
> > + * @hw: pointer to the HW struct
> > + * @quad: the timestamp quad
> > + * @ena: enable or disable interrupt
> > + * @threshold: interrupt threshold
> > + *
> > + * Configure TX timestamp interrupt for the specified quad
> > + */
> > +
> > +int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 thr=
eshold)
> > +{
> > +       int err;
> > +       u32 val;
>
> Reverse Christmas trees.

In this case, both lines are same length (15 columns).

Thanks,
Karol


--_000_MW4PR11MB58008E14214A95E530B2AD68863B2MW4PR11MB5800namp_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"element=
ToProof">
</div>
Hi,
<div><br>
</div>
<div>&gt; &gt; +/**</div>
<div>&gt; &gt; + * ice_phy_cfg_intr_e82x - Configure TX timestamp interrupt=
</div>
<div>&gt; &gt; + * @hw: pointer to the HW struct</div>
<div>&gt; &gt; + * @quad: the timestamp quad</div>
<div>&gt; &gt; + * @ena: enable or disable interrupt</div>
<div>&gt; &gt; + * @threshold: interrupt threshold</div>
<div>&gt; &gt; + *</div>
<div>&gt; &gt; + * Configure TX timestamp interrupt for the specified quad<=
/div>
<div>&gt; &gt; + */</div>
<div>&gt; &gt; +</div>
<div>&gt; &gt; +int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool =
ena, u8 threshold)</div>
<div>&gt; &gt; +{</div>
<div>&gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int err;</div>
<div>&gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 val;</div>
<div>&gt; </div>
<div>&gt; Reverse Christmas trees.</div>
<div><br>
</div>
<div>In this case, both lines are same length (15 columns).</div>
<div><br>
</div>
<div>Thanks,</div>
Karol
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText"><br>
</div>
</span></font></div>
</body>
</html>

--_000_MW4PR11MB58008E14214A95E530B2AD68863B2MW4PR11MB5800namp_--
