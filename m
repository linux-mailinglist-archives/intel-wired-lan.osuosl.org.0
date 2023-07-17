Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7232755ACC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 07:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF74860BBB;
	Mon, 17 Jul 2023 05:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF74860BBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689570787;
	bh=WcrFCa7vAqG+wpOnVp2jQntBcG/VUbz9Z2mOiz3cI0k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=doTzLqo45D0VQl6YJSnfrA/+pXy5v3K+OfrNAU47qxrR/TrmAt15qLL74BR6SFVrE
	 5waCF183JnrzYReylffx5SmrMLm87shOweiogYEf+orDUmejC0orSbb1o50lh0d1cq
	 M4EAhRnrL+EPRJRGf9lL8tN/i30TfqcmMPfkj+tN56VfUFoe46LrdMQxIYwFSgmYS2
	 3CCiD9Db/WokrFCR7AEv8QBD3gaogipaDS313TZc60xH5uvtBE6LLa7vBzMXa/Gjtx
	 WFiIr3XO+1m5uwVoI+Kd+LcCVAFjM7Zh5fSrlO7wezcgN24U4CoWUaGEvd1rWSzbOE
	 HeGI/dD+H05jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCzdcMgQqTzt; Mon, 17 Jul 2023 05:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C09660E74;
	Mon, 17 Jul 2023 05:13:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C09660E74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00BB41BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 05:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBE4260E74
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 05:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBE4260E74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5AO37IyO4cBI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 05:12:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF36960BBB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF36960BBB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 05:12:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="355780495"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="355780495"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2023 22:12:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="866601835"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 16 Jul 2023 22:12:58 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 16 Jul 2023 22:12:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 16 Jul 2023 22:12:57 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 16 Jul 2023 22:12:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5ylZ281c+flEKpq8Uijdd3VxccX5Ti6NJM1NjjXE4dAFLyINI4ydV8otpoWqMB/c7Tlk3saTrIR8QSqrLl4lhlyBgqEJgIsr8c0ZtIrW3gqV0z1fsz4dZzccxghku/IzLrZVwi5UzOXBuSVlRBxt66jRq/vPtAnZ8l49YM8CQHCDsT/VME8ZlWVsvj7LJov9zRW19OaPRqe6eFcjmkK9+oLabWofr6AkB0lx0jEBueJQEWt37T3xqRGHHn2LHZQ07FAUwX1GXTVwShQKX2sYRsCRUtT912puj4DC+1sUN3ElkDNqT9gWjSPe2x6/n+NLn/6+sVk7drkQ/C7HHAEwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZI5sJtnNasnzXzBRnuUl3+EzmWOPn/P6HLzfBx48K8o=;
 b=ZhnWc7ieUutGoNldod5ihEJDhZK0JHo00WOS9GGmE5jwynVbioO1l3znNpQZwjJdx21YySwQoivrxocIwl4kaV0HfFsbzHeQeJfJoEOtkTnh6AwfQeoTDEzQmz7T96cPAYLMXFVFEtDVw4/oGjVuk8cFMrXdbk3Ew+HkLFHT6XJFFT1dyN9B5GOvsAfk02ME75KXPGxUnekMWfQP2BliCOHRzT7YlpZV3IksWlnNDF8gWknnam5mCnVEk/mHmtAOc03WL/tGY3tI8eFACKGQNgiYItqFHzYipkvWRgVS82JePRfecpCVxzQbfPgMyCuzsXRSOgpngPU+UCYwjc68SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 05:12:53 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e8ae:f6a1:6e04:122e]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e8ae:f6a1:6e04:122e%6]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 05:12:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] ice: Fix memory management
 in ice_ethtool_fdir.c
Thread-Index: AQHZtMIXaJP4GvkeBkujL4LqTUzYcq+9bviw
Date: Mon, 17 Jul 2023 05:12:53 +0000
Message-ID: <BL0PR11MB31227085056719609ED303E0BD3BA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230712130210.33864-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20230712130210.33864-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MW4PR11MB7080:EE_
x-ms-office365-filtering-correlation-id: 50d17a42-b7fb-4e6c-676c-08db86847975
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fh2wWdCCP99Wri2+0Qg2nAKKoYbQPdu9axvc6EJiaUH84fXuYjecIonGxLPJDAsH7e2dGbA/P4gsKxWP9IYqrYxGemRZ76zEaBjKqMI8VtnGa0kWi48n4S1Mlff0EbW4CpQ15rruAUliB6n8Cg6S1BiPrkJm7xWnl+X27D13q3yNKI51jrPRlq1KYNeLX3vIMxS8B1SYlZ8gW1ke5s9f23cLnNU9wLOnuX+nnt6acl++HMmD3D7UBtGAj18+/S1eL+CV8QCS7oGWYRUgiRFuRKDlQws4I64Gz2v3bM0K2qHgrvOnRt+N0sxCpcddDyqZei+r9MDEsvB9npvbbfSjt4UGhCkeEw5HZn5k/o04J2QCJTEpej2fqDwG2WR6e0taGGqiiihLhR82yDcgk2FiDWcG///jqLDvgg+b9runKJpGvT0/m53Ets5mlemsCPdKjL7mnH9cjyHjyxuPhgiGY5B5mfzaxikAa4YnfgEKE0DAAe6KrhYHN1oQDP2c60uNlnYWA23tzESNPNFIoOGumir4Hx6kkTcCmZMRPXniAoj+4+OtNVA0Sss5KS4FRPmx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199021)(478600001)(71200400001)(7696005)(110136005)(54906003)(186003)(55236004)(53546011)(6506007)(26005)(9686003)(966005)(107886003)(2906002)(76116006)(41300700001)(316002)(66556008)(66476007)(66446008)(64756008)(4326008)(5660300002)(52536014)(8936002)(8676002)(66946007)(38100700002)(122000001)(82960400001)(86362001)(33656002)(38070700005)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XfJ8XXdk7crDGSpXB5YWtbxA9uEOBpY/aYVBxTDpKzzAdbNEdvg2T+WXoQJb?=
 =?us-ascii?Q?Z6Wz4o01SLyShO4iFgUTUKGJMCQUvYgrfXc7QVRj6ypSla7alFZXkv0NrDEz?=
 =?us-ascii?Q?oRVzxOAyzuPirJPUacUcxOu8BxzuO9gt02JFtPGcPQlAOyHMS4VK6NNNACWi?=
 =?us-ascii?Q?8+E1f3h441haxyz1k5AQIJzgH+ZBTpRhzwPAwXl26/oIjyDPyKILEQV5h5nV?=
 =?us-ascii?Q?+OQi596kJYhs1XIUZTGzEPORcYc9DWYFZ+wx5EK+1Jte7e4BjECYDvU6pLfI?=
 =?us-ascii?Q?pLQ0V/ul18BOzKQz9VcHzkBx9YRJrRFwki6V+Rfww3a4OxQuDs4kTHxd5t4x?=
 =?us-ascii?Q?QZAm9tX9hrYMa7mTWI6HPn2bX+64EySpQdSRIOreaGuJ8WMwnYWSOIYAjVjN?=
 =?us-ascii?Q?HrFza15A8z5uUa1L1Zv7//78vUD0rATv82//Ge6/5hInVeeey510nY19P1Mc?=
 =?us-ascii?Q?qxJUq+cqzHAyZvTfgqNhhVffRFjiLoz4UtBxjPBLReM3Goe2AMkLTIPpIzex?=
 =?us-ascii?Q?Er+K3lNHGH8nbS/Hxpyzax8YrO7aDX6dtCmqN0f4ivRFIbHrWtQ0BG84vhyx?=
 =?us-ascii?Q?ROqFk3Wg16Lt7WJMbm3bTDDIarAawAXRqps5vK6d+S1r0lefS7y9Us8Eblt1?=
 =?us-ascii?Q?u2LWfh7k+QZSJlXYZvy/aZNZDJTa/rmKadwZMU4Gp8i+7znPDfs56YvkuL/o?=
 =?us-ascii?Q?cL4Aj+TiV9gpWfsm5gK8u+UYh8JBZI5FAPcbQL6fe5Z6heW9SqZXQYQtFhJk?=
 =?us-ascii?Q?4k6CWeicUgrmWJowsPsYnNSpsth5HhAs9kjKbbAIrN2UjA2ZWo23FGbvrzv2?=
 =?us-ascii?Q?RS6vnd0m+hxvCt+rdIm1D7u4RksbWfUWxzKGi7C5U9KsyvWIYfYzhfl3s23t?=
 =?us-ascii?Q?beJQkTZjre2+9o5O9Z3eJmErSAtNyLNo1R+B1CTWcUDZBCbF9sEM661wtfey?=
 =?us-ascii?Q?QN+rnyrV1tAyBr+BMlt1HPM+R7aQ7DwOBUt46yXpEnR738xGeioW3rCi5e5m?=
 =?us-ascii?Q?f5Eg+sUD30Sh02646vbBdfeQWqeXfQpmVIpEMJyqOu3Pzd2g2vzk2NEEP5/f?=
 =?us-ascii?Q?jEO25Vcmd/BtP3Wf621uszPBoGL7Anpz8Hca3i8Pv/8DCNociVQXszf8c7S1?=
 =?us-ascii?Q?03lp8iqg8gS4MS9oTSRQ+Y1JeURS9uQXpOsYxkJIS7rOYfEdQRn+5LCZpjUK?=
 =?us-ascii?Q?m0S594dC9zYWm6YgImv6QcoAl0ENlqGKobFlo1CuIBFn9hNrq/xWgV3jxBfo?=
 =?us-ascii?Q?XtB94TeBGuya4htlc0Cnq94jnYwh0NI89f9TK1YmppWplUopi08ePFmtauFu?=
 =?us-ascii?Q?z1R7NaK6ffZ/SD5QigmxjH7PRMSvUkQ/n01Yoywq+dwdoIa2iwh5BPJVyxvM?=
 =?us-ascii?Q?FXZaSehvml91amffYiW3Hrsj7UokdeKgtc1W5FXCJl9sqDWqkfI6gDmv/hpW?=
 =?us-ascii?Q?UZqcXJwaV8mos3h7mfSc1wzZPAy7+iOHUfnwLGdz9vIgPDaMfn7OgksVay3r?=
 =?us-ascii?Q?tzZMI7hcrOVh4XimuZMMG5f4ItvFEYFzSu4ZZLHYJFwaVUyndiDeqphiX9/U?=
 =?us-ascii?Q?z01TyeiynqQAbTQ2Gpgi2XnujB9ZsF5shv2OSR/Hy2BLHnNOslOEEfCbHSED?=
 =?us-ascii?Q?/w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50d17a42-b7fb-4e6c-676c-08db86847975
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2023 05:12:53.4465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D1Ku01hH7XagWvAyUznPRTpgS7k+bIfw24FYzcdk1Ksba90snDxsLSVZDQUhf1DVZV05zKhp/KPkSbQNaLMq6yyXS6wkBCXh7p/MVTNRn7rjrmTbVTreEpXjWheFxpf7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689570779; x=1721106779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=goDulk+0kLPtKCbwPKm7nsnNE26O5uvkEYjtdAZDIIQ=;
 b=Yos5rtX7H08agR84+sY3nb3J+PuFYYjudLAvf9auu5T+/O2K26VppHb4
 VK4V+55SpCNagOxhH4ZVLlE5/nn6W+EhSBEbbPb0DI/1+xZEpRL4TqLhc
 RA8j4B+3Z0MROi4lyF3gktc6XdhBwhXvdsLq9Guvi9P6irlh31pczhaac
 q+0Tb7FiEvli/CqI23jC31t/QmDDiEgqQUhmSXq/JModOV5UAqUBNHWEk
 ujzWJj5nF2ykBJRSd7knS6Jz0VkoV9NdHIRjSXUDrMth8Nn7QIV3CZyBK
 iBbhaKargFgArV/qzU8cJh7Iz2nL7ope0wjnpSaxNRgUqhI9o2PFU99mm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yos5rtX7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] ice: Fix memory management
 in ice_ethtool_fdir.c
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jedrzej Jagielski
> Sent: Wednesday, July 12, 2023 6:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v5] ice: Fix memory management in ice_ethtool_fdir.c
>
> Fix ethtool FDIR logic to not use memory after its release.
> In the ice_ethtool_fdir.c file there are 2 spots where code can refer to pointers which may be missing.
>
> In the ice_cfg_fdir_xtrct_seq() function seg may be freed but even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).
>
> In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input may first fail to be added via ice_fdir_update_list_entry() but then may be deleted by ice_fdir_update_list_entry.
>
> Terminate in both cases when the returned value of the previous operation is other than 0, free memory and don't use it anymore.
>
> Reported-by: Michal Schmidt <mschmidt@redhat.com>
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: extend CC list, fix freeing memory before return
> v3: correct typos in the commit msg
> v4: restore devm() approach
> v5: minor changes
> ---
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 26 ++++++++++---------
>  1 file changed, 14 insertions(+), 12 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
