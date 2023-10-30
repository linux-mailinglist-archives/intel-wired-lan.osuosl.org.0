Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 646917DB4DD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 09:11:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA96C85526;
	Mon, 30 Oct 2023 08:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA96C85526
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698653481;
	bh=8nQABQLmC9rafv6YkAKySBPaB9nlzQ5rFhj8qOOMNmE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JQkJ2LNwy3VzOJRnkMS5iJsSw2/gUuPylqOz8LPFDnVhUOk9RtJI2XHYMQVq7Fpny
	 xONl+3TjfzWzR4n5NFZ7trPlh1WoHiWvP/2QQI16BcOAlH7i26zMyyT6jq/p40T6Vq
	 wVXNgT0w2/t/dZTcjE0fyZ3NkiFh9GUB5YpFi7RITh64YHJLxirFlzsKPepW6spMu9
	 62RHOC4/h3Nooz3Nlwuq+9d4iAKLaFj5hH/JR9TzDwYbmrDEuZGx8/4Kkg+XgM9AUq
	 6aL86GmhdTJsuBC3uFsu8LyP0cKFkPvSwFI09C4YrN1mcYr8MtmSyLU0qCwGE8N6kZ
	 eREPRrx2MGj5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZ0NPKEYhMmL; Mon, 30 Oct 2023 08:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4C6F854A7;
	Mon, 30 Oct 2023 08:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4C6F854A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CCBF1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 08:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3302770A9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 08:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3302770A9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWLhbu46jEcm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 08:11:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6226670402
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 08:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6226670402
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="452289068"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="452289068"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 01:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="825984915"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="825984915"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 01:11:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 01:11:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 01:11:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 01:11:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxQvMVg50VCmoncGUXPXMGkdAMtwIuzSL5GSVVvDRAXdE7mSwqku/ZtYEDdTqRwrPzGvSqBz/WgCjwpAMkBPvzsxwpnzsfR9dbNEp9cAktjMu1i0rkiK9PhzzsSgjHgxunWg6AvC/01IIfMC1TxfQx+iGbAnLTCIBLHZCfXzf0TIMjPNdpT/IlFjmO6a0Lmlsl03OLF6Sxd6RaZpWSgnNp968gAzJQnAQVtaOrW0c1qHUuu4Fhu7SkDDFYnirBamgHHBgeqnhc9PyHXQxVHQlPYGKnL/F8dj13hx7ENzGJhBK/sFIQJsDo69Ifx2zOJTvzIbEqmR875/9KusqlU5cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VDmmzTl9ryodxnJ9ZagFEQwccboyBsUVeXsMze/1JLY=;
 b=DeTi9vlY4d3wohl33q6mE+a6plaJxcY3TNfiQb8EYvJ5QlUzn93Epkaazvd+XIYX0axuQ6HuehSvhkvuFohwvzEt85YEpL5av/khBKao+yZSI9RMJMRJACivxBqionspSKBkZKuplDrpiQ6rasrLCPsgsiDGLDU1/Z88cH6pYp1qxPjQjJX19ZHDHx9kPzwMKDyQp1ejaICAIwMpqlOlRoMeGMATx1kXcDi58HCJrG7mZ0q8/dfOahdRjWatq7IISk3dt6Bdk8sn9ZP90cOsV8cCW3RLzxjvkp+k6ChWSsz3a0a06Q0s26EBbu1gtgaeepWT0y8L7WejxKyAVTB0lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MW4PR11MB6933.namprd11.prod.outlook.com (2603:10b6:303:22a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.22; Mon, 30 Oct
 2023 08:11:04 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc%4]) with mapi id 15.20.6933.028; Mon, 30 Oct 2023
 08:11:04 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG disable
 on non-compliant aggreagate
Thread-Index: AQHZ+5+CfokJv8s46k2hlT7/LCC1NrBiGezg
Date: Mon, 30 Oct 2023 08:11:04 +0000
Message-ID: <PH0PR11MB5013B1AC9BEEC3D2FAB6454096A1A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231010173215.1502053-1-david.m.ertman@intel.com>
In-Reply-To: <20231010173215.1502053-1-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MW4PR11MB6933:EE_
x-ms-office365-filtering-correlation-id: e255d6c4-ec81-4be0-8b17-08dbd91fc304
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZEG8cN1B1RK5J7NDrTzH8RgFzdpjHMFloNwcmoh3duA6aaXOypJoNbkaXEe4FuihvedSjvlcTqE2jOgEwnVwuULKn5YQyeNUW9o3K1Vritd+ZFrQpZdZfb7yrcMnvsXWgjSgRCMtMVV2kMSizoAynWjqCWFABjVNzB4fcVH1h1E1DTLYNtWRCdWiUMBn8Qmj4OZduGW34RBy6SV3sNX6pAzy9zpzPml4VSrHlX0Qx2WHUOldMzyM49HsFdmyRzo1vhu3DcjmvWRLctbG34vuvMezRPJnvGCIW6XRspVBL8exPMPiwaT2rW5k1sz7//jwwQFLPeVV97xGUvyPeJwlmBTUanQlApU2YhCsm6vJ3wBieigcXuPXL9pNr/ZmJXhn2UuKD5C3dQWLgke/TJhKy7rY7bi/IvWmHLVFX4yNPdBatK5eOcyoRD+9akdTIH4ep9A/Rtpbrg0vHVauFHLv/RabCl3g0bPBWxBmYyvzgsAOpaY24tlsjcXkWW2E7F6qNWnKFSdc19Pc9Ab2Vb0x7McSWAKgp9ascPk5g5MMCHEYIb+EjAwyvu7M5IKrSx25ZA9u5jB6/ELFzlTSmhTBmDaYOA9IL+qGmRrSvXylxyDXVimn72mJFYlQ1cuJolcp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(346002)(376002)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(33656002)(2906002)(86362001)(4744005)(38100700002)(83380400001)(55016003)(316002)(5660300002)(82960400001)(9686003)(122000001)(41300700001)(71200400001)(110136005)(66446008)(66476007)(64756008)(66556008)(66946007)(76116006)(53546011)(7696005)(6506007)(38070700009)(52536014)(26005)(4326008)(8676002)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cIF5AVWv3oWNh6kZW9tVLiw1HVk443SeVLyMBmoK2/5pYgLwuRAAHZOgEd31?=
 =?us-ascii?Q?or2/xcEsxriNaHFZL5OC9tJPzqJHlasN7Pkjrc/GGG4+W5gUubk2V4Ww5wlo?=
 =?us-ascii?Q?F8thFHP2pDyQm3bfw7bn+E7yRBPBwFuCFyTK+0gMW7221XQB7+6tAtfRzzFK?=
 =?us-ascii?Q?v90e9sHYxgwEC4eGHWXtJjMW7qwUpMcOUe1+zV+EBkx22hCP0f0muHhfvzTT?=
 =?us-ascii?Q?C9h7l3jaUxVur5/iANZWZWoHsYOH+SHI7ac2lxQzpvRx1LCvpC2BzutQQLCo?=
 =?us-ascii?Q?AvE+lmkdlqJpAErGZVyitcMufxxaCijaQrhgiMW4VrmkYJ+T8LWw2ejTxeQQ?=
 =?us-ascii?Q?AG3izBrGAYDoXdfTewR2DL5VBCe4/UplRJBrTBJ5dtvpH4qNnCAi9rJOWH7h?=
 =?us-ascii?Q?rbP3edVL0hRqlRIgJm6zQiNug59b+qYP9ueVtsMab9fFuA+2GvV2xxcW9WX0?=
 =?us-ascii?Q?fhbK3M8a7VOA4wZ5VQonHH8l6jV3CsF+NWJ+Lms2uWBFsuqs7udH6QuGCHiK?=
 =?us-ascii?Q?FPgwte/wdnUEj+A1HgWmvSMXqth2WB6NpPRAHEGYV+dqEKDoGUCnUm21aajj?=
 =?us-ascii?Q?6D6vKXzjWWTFYpL0uhZJ72ysdmUXvXw8wTXbETJEvSxoNb3p2Oz5ZXlCMaZW?=
 =?us-ascii?Q?NOEJsFAsmRluvFQZZy2h3/PXKHUH4bMNWoBW5xOBISf4rDlE4hXU0A/piRtS?=
 =?us-ascii?Q?eb+v/bf/t3Owj8yziOKzVOvqjXra2D35N2z/OkxNsnDxrXDKwUA7qWhzyUWi?=
 =?us-ascii?Q?N1ZccWVAO6kRh4jPiYjhHeptZk10sz52kQ/W7FX5gXxcvrmClLJYZ5sh3ZHR?=
 =?us-ascii?Q?H1vZB2EXtZ2/9dYpcWfpc5BYpKLfWk0bmkwTJv3M+O7HaLonO8HCWYT8Undb?=
 =?us-ascii?Q?nK2LN8yQH/9ba5457l7C1pbgAvtRoJWbZGkIFHqK7W5XjGpJEi9sawXjU0ht?=
 =?us-ascii?Q?O/wIwcIr3uzcJZSdmRg8iZQUzDRGzSsR4yPPTyqfRa8hSbiagfnWXZjMwUHg?=
 =?us-ascii?Q?FuaThGcmGO8iLjkZvEpb7vjHWkycQXovKJLD2vxdaGPdfmvlyUz8SzApEcap?=
 =?us-ascii?Q?vhcQqjrFltD36vMZp9EGxcPbfL7tuLS9u93obIuKVNrPumqQou5/itQwSZTl?=
 =?us-ascii?Q?6UAJPz0QL1hVqONF5S3e/XkR8qIDud1RvCW6DuVdPwtSiYjJ/bqZMSRc9ww9?=
 =?us-ascii?Q?ao76j8ga0e8mqhEhvS2hvt3XlBqdj09FvuyPGSVp83+NzfU6B3EboEUTwMsN?=
 =?us-ascii?Q?74k6DCI1bXiBS24R9sR9DKBDOOtnIAt0EYp5+iXwPEku1O66OCXmXqIcy5/J?=
 =?us-ascii?Q?j4SjBKJDedS93+s5KtAmx1VqjzSb898ocjlfyS4Mfldrzy9X76m+ccGqrV9n?=
 =?us-ascii?Q?WM+2DGRX8u+Zp46hN3Gev8ATQBiHYR4+oIqjEfj/gDbdNN8jXg7PS2litkfQ?=
 =?us-ascii?Q?JiBbKPdtWuxSYsvaF+IrTJFPR0mtM7zxsEAO8Wvqm9YLqpQ0QQrqChyYr3va?=
 =?us-ascii?Q?mrzbBnd8F/+2+gjmEiysethfs774JbWZ9fReBZEIGZnPTo9pq626r9ggUCPu?=
 =?us-ascii?Q?pi4xxKgWdTD7J+sNzqODajULy4oVPTlZoEcncgyuXJG/3eHfzvCWd7JDglsn?=
 =?us-ascii?Q?mw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e255d6c4-ec81-4be0-8b17-08dbd91fc304
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 08:11:04.1634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nykuQzAbQSN7Din/XaiYd9i2un9HPUUB6816My60R6IW8Y3D8dNlKKtSONUoYHo0rF86C+aG0Rijy6f4WsFCDorqvhIOA6efQwZ4sFGaG3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6933
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698653473; x=1730189473;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JrV9p031XU2lw+OQUeQ5j0v+gUOuPTHmbTNJ1hS4QzU=;
 b=ebHJtJgJPtVFdqUhefWeMW4u2ghA8z+pmjQZVW7iousIL99FDyrX2ft2
 DqjDtDBxRz6H1tNdPpJ+RIMU0bcVeH3hKWAJIImOeGbNKegsMDLkPb2uU
 26HyRZF8Kq+BRs+lOYnWoea0koO9vT+3p/5mf08eu6+u3grpnBq+2mJna
 rR3dBsXOfcBs2MRcCpoZfN9OrMeEYu9meUcJJQ2MfBI9Lk5XWEOzyduj2
 rE4/jV7csqJKIuxPSzKSfiV9zdMUFwUj0vXKrouwLV8pbyc9Ty6QVaBVZ
 b1oa+0OOyEuIkl48AXWbOVAfpDz/2dwmqTWGul9vVQL5SjAdlOw/gTM+6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ebHJtJgJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG
 disable on non-compliant aggreagate
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Tuesday, October 10, 2023 11:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG disable on
> non-compliant aggreagate
> 
> If an attribute of an aggregate interface disqualifies it from supporting SRIOV,
> the driver will unwind the SRIOV support.  Currently the driver is clearing the
> feature bit for all interfaces in the aggregate, but this is not allowing the
> other interfaces to unwind successfully on driver unload.
> 
> Only clear the feature bit for the interface that is currently unwinding.
> 
> Fixes: bf65da2eb279 ("ice: enforce interface eligibility and add messaging for
> SRIOV LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
