Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B47CCB693
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 11:36:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7FEC61160;
	Thu, 18 Dec 2025 10:36:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hf9xYhS9eOBn; Thu, 18 Dec 2025 10:36:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2651761163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766054165;
	bh=8vhgcg7JrcUgsUqeG4qKQINvEtbmZ8m3CeqKj+AVh0Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qD7zs6JGQfFPUqwi8RqVkBML0E5vBTrloBB5pC4m7zCtQTkthQOw3j1Bf+SHZIhD7
	 7reDWre6g7sowsPT7lujRSW/0g3U4K2X8qCXmVANM3ars8c5jF0FZzqd62rSvRYhkd
	 rYblswE9ToZZBLheWc3ndDBD7E8acDeQAD2WiXbutu/evDKy1Zvh1niJXoyeLGHYYt
	 hxMs7YbQtoNrrKDXAnaIl4S/5Ca/j0Yed4NOfE34uJI5g0dQMGrUOW9y4g90CDYW/K
	 hT+GkEPBFJtEnLqCpAZBjhw8BEHdEKtDE2KJWGxrRZofauS5zMZZuB81yCZ2Ht4Mav
	 Uxp7FpugPiA5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2651761163;
	Thu, 18 Dec 2025 10:36:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F11441A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D777661152
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:36:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ieJ-hGOOrpiU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 10:36:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 76728608C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76728608C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76728608C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:36:01 +0000 (UTC)
X-CSE-ConnectionGUID: i1QrkeEQQbu9D07xQ/YHUw==
X-CSE-MsgGUID: 8IXAGwbESS+Ti8UbuyThyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="67000861"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="67000861"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:36:00 -0800
X-CSE-ConnectionGUID: KXyj6q3VSKqxm/sQR/JmHg==
X-CSE-MsgGUID: v/+o2FaySMCu5Pjl3d55+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="235979133"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:35:59 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:35:59 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 02:35:59 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.10)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:35:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CsWys9s36uKK4TI5KHed7g3w6V0ktBq+uRHHviIqQhnLUtvt7QFZjqLBTHLvFZOcqQKSRa+Jms8knZ+aJjUkmHmI84+QCAFUnOuKwTCaoociezX64Ae9ZHWx5d8oWfLRaxmsLbXqBqmtpbckHCAlqTkPIBiCEdeDfYKtMaXsGh4/Gt6XBd/XIFhxpIdPhUJ8J9WjJ5dGYlKy6MbkLRaP+6IrFk4IAQZf2qpDuvQQtGMpsjxqJHIa8Fgm4Ia7bsFenLEYzP+WI/UmLhzsv+AK2JaDxa2t68A23F6nQhMSsqHzVdZHYjjZF9sEDCJMV6qoxKDA5LavsOqkxHOLOCn/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8vhgcg7JrcUgsUqeG4qKQINvEtbmZ8m3CeqKj+AVh0Y=;
 b=gp8JeLbednq574mq3kDEU9Qie6ehkIVD6k4yR6EHxDwUsFo5TQ4Ysl/os8vI0NH/ZFFgk/IiWczbn6mJufoFgiWmF4udLqsdKuAnNwa8LecCcBzrBX310MMCENWj7uFfH5usoH+1cGlJzCdLDsNhfPl2WWDy+PBMMtS0ojofrO/F62IWj+rULyVFkxWQ4vGO2cJIE+N2zZFspFggg47EWf+8nMFYne28cenhj3+GUut0oiO4bh+j318btu0FJfsOgA+1XdwoC9oiu4WWylZzl5b6WBHgY/A+e0TLDNvaGJaRvKp86wocQ/8XduxFZZ+QKNFkPv8rBatV1FDN7VsBng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7506.namprd11.prod.outlook.com (2603:10b6:8:151::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 10:35:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 10:35:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "mheib@redhat.com" <mheib@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "aduyck@mirantis.com" <aduyck@mirantis.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
Thread-Index: AQHcb4eCzprgvpEV9kiqCkoLH+hOQ7UnNM5A
Date: Thu, 18 Dec 2025 10:35:56 +0000
Message-ID: <IA3PR11MB8986B7B866B98C12D6115E57E5A8A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251217185951.82341-1-mheib@redhat.com>
In-Reply-To: <20251217185951.82341-1-mheib@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7506:EE_
x-ms-office365-filtering-correlation-id: bc1ff465-97e0-40ab-540c-08de3e213a5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RxeULbazE7D+U34PdDayfpUVQ5Bx54vZP8q5JU+VZmLjlbZ0/qwZVltgLjWo?=
 =?us-ascii?Q?LF9pUs1V+MZLciCpQGov6k1h7m2L/wQqLqrrFmAVNSbWklI6e6fTt69g5cFs?=
 =?us-ascii?Q?sW4E0J6cYXC/xL6wFO6+Hp8ynKCZYMDOEFrInCgb3BlRpQx2nN7B7t9DnkvA?=
 =?us-ascii?Q?6u2WWkkmJBejz3E8k0cs8/6sOmxg5OHvvL/NiT3ibW79w9Cvgr4o9Ty7xFVS?=
 =?us-ascii?Q?1VJnc7r+QBU01GOBCldvuoTCgRkbMGdGIl8Dd2qlrzFIZZSiSXQHpQQsc1Lw?=
 =?us-ascii?Q?3Ojnr8zyekrrQGehbPhBh/fJerGj4MtgZb1Kb94hNCMJKE+e5GRsq5awlQ8M?=
 =?us-ascii?Q?o7dztZ9a8X3H+RwP7s8Kc2Of4rFU7zm6v5Iw3e8NrzgpK9AsjWCP9rqj3QfO?=
 =?us-ascii?Q?2pIw5rezFY/BnYEEk9ezypkJ4wYG8dPnKYgLUQ0w9K6+xBQUQoFhIVhY24Jb?=
 =?us-ascii?Q?iMl45W3PKFUaR5aYocY3ZGNanAZgL6cALHZoyBxfw0A1Re0Bwi7oO1tGberG?=
 =?us-ascii?Q?WcZ262EkIuerdAs9x4IPjvqBaO+uSszJKfTXfDML+dfd+gqrES9reHH52sMp?=
 =?us-ascii?Q?xBRQTRR9hrjHokxZSkoVCoO+uQcUIl0z8wjBcG1OgvWUisKsx0xlMadTCyed?=
 =?us-ascii?Q?cZY/4tJjgji19ZHAlqaVS7yhcVvJ8aTJQFjGUEtEz4RpHaraRsVkDLhXZLxS?=
 =?us-ascii?Q?WnHNX3xyTakfkazHy4MymuWYTjgTqdICg2DDu+7E2kYSSf+pcwpG5aHd3ZE8?=
 =?us-ascii?Q?/wXutM5MZoAU8oCeFE+alpTCPjOtduwQpXJSdEOAL605vHtbZJ+sEAvIIFxY?=
 =?us-ascii?Q?nYnFHmfKNIsrVgj3gCsR61fkFoCpDGy8S/WDYXc3g7wVSfX4w30AAaFcWnlf?=
 =?us-ascii?Q?ySiWQixZtUJGoZsM+wLirUR2rHNQlvYgbtb3pCgRieVYxdJJ+kou2Bm6/FkX?=
 =?us-ascii?Q?U6kHQ6XTgS1/ym1o3XVkTR0VM5yokvqiumQDEM8cR8exuFeVHCanGZoERYt7?=
 =?us-ascii?Q?VZqynW4cJ/hDFRutqrfkCkES0YTUukSEo0J99viGSobpys/ZMQIFl/6Pvwyo?=
 =?us-ascii?Q?pa1KzjjFDTdHAPgB9u2cSUlXgRKyO0XPFdBbInSRHPw/zQWs42Tw6CSXNnin?=
 =?us-ascii?Q?P7PfPzi5xFiElJsVjJewejbDJ0NQIVjN4C/8kVXYMVG44snywMxs0JbXqpm5?=
 =?us-ascii?Q?T8G5iABF2YcRKqht7VmwRx9y58XqP/pat3WOzNHq0dFfLidfKUBOmOIRWOcK?=
 =?us-ascii?Q?H3+n4hSog+n5seZolZqjrevKWhfu5MO+80q8SuwFP0V0VGw1M1oiwczEckWK?=
 =?us-ascii?Q?g++HSBIqoc2XgJg68KJ6UKXEYgdl/jyWUrg6meG3cA/x9AnQPlbeYIU2nvBt?=
 =?us-ascii?Q?pKo7ZcqYJ3ENGj17FZr6yhvZkNHYTyDr2t5A6u+/V4ethIIJN5OkMtR7cHW7?=
 =?us-ascii?Q?Cny1VU6SWZdsrlsayE4ge2gbhLgRUxQ3q3R5uDDKeu6B5KG/A4dEq23/j9l1?=
 =?us-ascii?Q?eV0LON8JOKQ7aizw/q879uexcc1mfM9EXo4X?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?84MPFDbHLg1xfsyWuI5Rdj4//MqHvIuWC/tYDICPhCWSxKaluSlQAvsVVPZl?=
 =?us-ascii?Q?ra4pLnnomauzB4NkgwccZ7uKGl+X4Jt0hc1JiPEEnRAUExIea19zEnoF4hc9?=
 =?us-ascii?Q?+tPCTdFTiypYXnoZyawxQplaHMCJom9taRwFOHpUzemOX2sYa6hOPnzbpCfU?=
 =?us-ascii?Q?fGa5azzT11bl6fjiAb9vCyxYcpM2zXny1k+nUzs1+ScMovrjFI0vCte+BGh9?=
 =?us-ascii?Q?bJeKFk96vnf8ALcoPjXzgUgR4f88UbhnFtPWmie80Z6SkUyGXpFtKXveX7Yx?=
 =?us-ascii?Q?l0FpVb+IRarUP3+cztvTUrLB3siTnOzZCA0BkPrdff0mmN778amx4SIb/3A6?=
 =?us-ascii?Q?6FkSyH86eHTn3wn8SicyeI70bCqXg+M6teiVMPZcy8oLtHbEgPSKd87u1IAO?=
 =?us-ascii?Q?wQNySTm8n1w+xye4HFuHkn/wPLbSyXwRK9KqDuVReTw5YCon4gPvgTT/b5Bm?=
 =?us-ascii?Q?6MRklGj+mn95ZquxdSeVSUEeZ9x/2sENN+NEw1ZGmTbD9RtkHKrWUYaWSudt?=
 =?us-ascii?Q?NV9ES/3jWSSBAbPBAqh/VQ7ySdojvP/qV5orZP2HmhJQou48/+5zbu90vI/o?=
 =?us-ascii?Q?ttBmLiXCDFJPQ+gyGgZSE2hFUP90AGqlqd9Km8i3l4yDzS9Hr89ZBRCCGfj0?=
 =?us-ascii?Q?rYwtaWdVa7i/DDGNL3OflZjahASYJ92Yr7778a8UXDnNQSchskmGOESFvgss?=
 =?us-ascii?Q?HU/dL/BoBQYgSw8KLoRZCFUzzvoL7sObRkGcNCKWFzXDSGFUWOWlV9C2OYnV?=
 =?us-ascii?Q?PZM5bogK5va6Eoy9vaPKYgnwZVw+5ssNKILhRpIDpDxuIVUpM126NuRpMAIY?=
 =?us-ascii?Q?god57MIIcMtvTVV53vaMH9vTeenYSOhSdS8KEm8ekB55zldSNy4wtMHzvnKY?=
 =?us-ascii?Q?L1WS5szUL0xki4uatzJoB/vxi9ON1Qt7Id9nDcvQNLmx34uMCkVghIotaNkd?=
 =?us-ascii?Q?99k0Ad5IZmt5KJZ1JAI47vlSSDi/mqzHxnE3UKYuhWbHNBs0DOZcY1Aj3plk?=
 =?us-ascii?Q?DnOx7mxx5u2XeqH7RuSyK3jueDxl/RvpiF1u5mosZtBPs1WGbbjk7L0NJPvE?=
 =?us-ascii?Q?7Ptk8CykKkej/wVB+m0HCR/JMjHPnLwLbQnYrITdvV5kjqURiJQ7qhbk6ARx?=
 =?us-ascii?Q?WFVvPO1q7atb0e3RrN+s2NBc+TbIVqanVkXp32AkIBh7Sdw8V29GtPkvuyKw?=
 =?us-ascii?Q?eVQ2LY/zlnnAXmBIQ7PkTG1CCWETsUG3LeH6E0RbcKL6eu5uJ/5GkCdt3zuJ?=
 =?us-ascii?Q?KQ9JzNstlEyUiCCb7gQC1CVlNny0xM1dKER+JHyxC2pmzkSXEkMSIhGWzX3b?=
 =?us-ascii?Q?/iKZKO+6ZAbERjikkX15UTtlBRDx6KLNMnENO/+iG0M8fpg2gdsfG+Gm/xwK?=
 =?us-ascii?Q?mWObmjiVjjRmoZoLS4c8xeW6zsOBFYeq9UDqGBzqXsS2islevh7VvyrBcRbO?=
 =?us-ascii?Q?0UJacwm8s6LvxtrnBAEZy7ZXeVkapqVZYpKDSwjnhtOgCWYph+lUlXhGWlGh?=
 =?us-ascii?Q?WYrlM7uRz78AJQQ6QU/Q888LluwFb7JDBR6E/FRxw57jUfEQSKcEYeKp5zI4?=
 =?us-ascii?Q?C4YRL1iGNRMsgJeg2Ns0ix4sacC2f/QrJ1XweHmj5oZv63FVCsBvPNrjv71G?=
 =?us-ascii?Q?4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1ff465-97e0-40ab-540c-08de3e213a5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 10:35:56.7034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9IpIfgRY6wMRLUFR1BYo9SRtfaoa0PqeF1Iq9BRjw3xKOrtON3hXkw0v6hrTXHLYDMCiDmyLhvk2Y2lDrB2wzIo+046Sks40pnLLX2wiguM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7506
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766054161; x=1797590161;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5NC5Yi9kH1k9UPcVou2wN04mc/KDmPNl4fbKwD0+vzo=;
 b=eZp/vo0trlVyNSd5VkfZsuXp7Okg06CVHQQ55dfyGXz/vroijKM9w4on
 CiL33G5DGwQzHLgZZpf4l2YoQ0CvzRajvtCgjMqkruAYdH6UBMP5Chjyv
 GtHFyMBJXe9OHcBQrNT+JKsxDe4tGkc9KeBjSIgHG2ESSIOROVAsxe5MV
 BYGASHo7qm4F6iVUSTQi++RHYD0bRwTbdq5hn6jILRzPyquxpc00X5RjS
 57H/nGQgbnnV46ZfgERANO1OsVJPuwspAoBhyTCj+BEBi734w/6T1kGlH
 dgnHZnTZHwKMf+QsqURF8y+ZuzASTArV5knfI3DVlEcCmvYE8uLozt97K
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eZp/vo0t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
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
> Of mheib@redhat.com
> Sent: Wednesday, December 17, 2025 8:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; davem@davemloft.net;
> aduyck@mirantis.com; kuba@kernel.org; netdev@vger.kernel.org; Keller,
> Jacob E <jacob.e.keller@intel.com>; Mohammad Heib <mheib@redhat.com>
> Subject: [Intel-wired-lan] [PATCH net 1/2] i40e: drop
> udp_tunnel_get_rx_info() call from i40e_open()
>=20
> From: Mohammad Heib <mheib@redhat.com>
>=20
> The i40e driver calls udp_tunnel_get_rx_info() during i40e_open().
> This is redundant because UDP tunnel RX offload state is preserved
> across device down/up cycles. The udp_tunnel core handles
> synchronization automatically when required.
>=20
> Furthermore, recent changes in the udp_tunnel infrastructure require
> querying RX info while holding the udp_tunnel lock. Calling it
> directly from the ndo_open path violates this requirement, triggering
> the following lockdep warning:
>=20
>   Call Trace:
>    <TASK>
>    ? __udp_tunnel_nic_assert_locked+0x39/0x40 [udp_tunnel]
>    i40e_open+0x135/0x14f [i40e]
>    __dev_open+0x121/0x2e0
>    __dev_change_flags+0x227/0x270
>    dev_change_flags+0x3d/0xb0
>    devinet_ioctl+0x56f/0x860
>    sock_do_ioctl+0x7b/0x130
>    __x64_sys_ioctl+0x91/0xd0
>    do_syscall_64+0x90/0x170
>    ...
>    </TASK>
>=20
> Remove the redundant and unsafe call to i40e_open() to resolve the
> locking violation.
I think it should be "call to udp_tunnel_get_rx_info() from i40e_open()", r=
ight?
Otherwise looks good.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


>=20
> Fixes: 06a5f7f167c5 ("i40e: Move all UDP port notifiers to single
> function")
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 50be0a60ae13..72358a34438b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -9029,7 +9029,6 @@ int i40e_open(struct net_device *netdev)
>  						       TCP_FLAG_FIN |
>  						       TCP_FLAG_CWR) >> 16);
>  	wr32(&pf->hw, I40E_GLLAN_TSOMSK_L, be32_to_cpu(TCP_FLAG_CWR) >>
> 16);
> -	udp_tunnel_get_rx_info(netdev);
>=20
>  	return 0;
>  }
> --
> 2.52.0

