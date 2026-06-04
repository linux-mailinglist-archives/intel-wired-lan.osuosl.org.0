Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tVDUMd/7IGqi+AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 06:15:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B491A63CCC7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 06:15:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=UlPKAf4c;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34CA242CEC;
	Thu,  4 Jun 2026 04:15:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yzvq-orPoBbH; Thu,  4 Jun 2026 04:15:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A323842CF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780546524;
	bh=kQS7w4W5hRC7eBorJRwO8o0GJ6aJnRXuKexAqBWfj5M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UlPKAf4c9jXis9cKZR6Q6OEmU8qVp3YIOvdv4AEvPfqkr5hyuzdvxz388H/daJDM2
	 iYCq5dHWg+TFE86ysGKK4lWNNmKTptpMSPGHREbJ+lKnx7CMxIo/P/KuPyUELw57mX
	 Hivw0nMpVq7sZI+z0FPrFQPW+8XfgqG2kQKtu1V/Pnf3DPGw8umvZwoxZmc9b3LvuV
	 LkGksFGh//V2EobEA18kMEvd6FX1l7qPfY7p6rTPZGFg5zZFdN96svjHiOivYvlJcr
	 Y0wVo1691W6MBUbJmybhFPsU9eWAdRbFpazvi6isZZrZKh0doV2+qBw8S/DvwgKg0N
	 bNNprhoNuj0/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A323842CF1;
	Thu,  4 Jun 2026 04:15:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DBCF5192
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 04:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1EEA61B5B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 04:15:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jDtLzYhEFmR7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2026 04:15:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0C3A961B0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C3A961B0B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C3A961B0B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 04:15:21 +0000 (UTC)
X-CSE-ConnectionGUID: ohKLP05zQkq7Q03/5qxV0w==
X-CSE-MsgGUID: klhJ1Ms6Taqgj7mGnmsWeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="91940657"
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="91940657"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 21:15:21 -0700
X-CSE-ConnectionGUID: knHemkziR6KAonUoStgu4A==
X-CSE-MsgGUID: dfFf9MaLTVSCd3UunJE1IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="238097473"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 21:15:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 21:15:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 21:15:20 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 21:15:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J0LUn3/e3r6Vk7KiC/gie68Ea6gpkuFQFVIy7A/eaPxsqAJ8gEaZ5nim+Gdxz0L7nOaQUTuqJmx8tlbgSxRsin8B+NmpfoKf9HrSbcyNIr3ZRBmWILnjpJsmXJ3kWmxT1MwYeNyci5oEWITvTJnlbyHoaYZMNPOm5hV1mK4V2rWh+cAwXMeje/B4sPxTkF9+K12uUWkPTgK/2fbiHkslQPAs9MHupXsqJ0lYXn3CuhVH9a3Fxd374/2oCJ7NWglSEC0ujoIkTAszChREULjt4Ym/Kco/dwuRLklvuzfMVZWa7W1G9emCnXAT4EH2p3VOd/N+dWHljsYwF1txtaKLaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQS7w4W5hRC7eBorJRwO8o0GJ6aJnRXuKexAqBWfj5M=;
 b=TG3cTZPhvRzJFErRBIMlZrdj/VSrAq+FKGveWD240uFZ7FMGspT0l3Yw7PiQNH+qNTqdRL7fJHKuNgcNWyEUJF2UylFn4b0hpglv1nybDqMEmuzuK1KQc856BQ9NeB3w9ijhQc31C+1Op8v7Ptw30UFOhDzymJxbOaolJOOB/QaNfaaDWQCrGTgL4Y83z6wRXmKk7jtEZdeiehgt4T5IRCuKX1T6QqKzbzbB03V5mav/+x6HziUmg42e5fdKygzVuXaAnipKxT4qa4urv8NoY1tTJpu8937bStcyoox4J5eS7Cn8g2ODQ27LYkQ5RHhmiB25sOKqctzI92IX5xGZYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 04:15:13 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 04:15:13 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: check cross-timestamp
 timeout bits
Thread-Index: AQHcvbqJz4vNCbmtMUqL4KLPqAFYeLYuM8+Q
Date: Thu, 4 Jun 2026 04:15:12 +0000
Message-ID: <IA1PR11MB624128C89EB7693B7C484A578B102@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260327072236.129802-3-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072236.129802-3-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW3PR11MB4666:EE_
x-ms-office365-filtering-correlation-id: ac10682b-d30b-400e-f9f9-08dec1efdfdd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: sZu0h2vOv8oj7m6tAKfOOwxTK8sr5BExwZIxQdBi8i0G25DSRb3GAjp9hgN2vl9s0f55AmZD9aL6mF42aodK9D8h91/gJz0AydzESoplbe6y8eChB5JwZm4DhwoqeJ7PqBLgsAbj1TYfMx3CSI+OXndJYtllSlht59MKCPbrVirWWKu6LvU6RO73KgV4lTHeQBoNiQKLcNv8LVyV5IWOr9mNfLr8+S1USuFn81cZJCMjeBBBymjZZNTwQ1i3Pki+Wq2Mywf/jhwZwS5FDJrW0DKqya3C8RDF6jJPofevL54tMLFBzGOIMPZVvK3NlEmqUvDDdcaR9/EQRzW1PD8IoUfumTZSw/8TzhBjTYetkikC3NGoZy4ye9r4J+QqxEvStSslf/n5BnP/cEZruGlfbx88h+YznqGrwfRglDQ8doGzoSQLOxeFaw0UuweyfZAkcWqGapMyVW1xvYKw6qjm6E56LglUIStHDM2ReJaRjfEfxU4FEOrk/s8Mnk6BS1e9wo0MqQnI4O9nAziF+AwgmEReDQ9GFFlWn7ETy4fq6q+VTg5db5/0iwJY8+nH1OC6B1MpkZaW/MZrEBpFoJScjmDeDgONEHKA9nMOGLsbpmjIo24nLLzku5zNnuXEjLNRC6PUIPFDKndlOlYhxvK5+s1K0K0u3hq/vsxGSmuGc33KtQ+EElwGnsZ6XMunm3bcw79Vca350EGmy5CRIIZGSuMDbZgm3dm+I5KG/z5yHxZi6/yZKN6POagAfLsiWD3q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3RG9vWldYz5Cg6wDIUJqurgx6JRFTn/OXyNN34zvtY1hwLIs8olgAuqGtNqC?=
 =?us-ascii?Q?hpwTUTLt/z51603NYmDj8c5j0jHULohtViNo3XUl5ruCHLnqYFde2zqhHj0p?=
 =?us-ascii?Q?3ahGz5FEA0gH2yS4mig234Kz4Zb1LETyeB9y36v0uZ5GkY9ZlT1P59zmrKKm?=
 =?us-ascii?Q?pMbaQRyolxhZEqJeCNHFD9HipdP7jkdVNrr3Y4baRxr/n7AE/Nw5xFMnGHeX?=
 =?us-ascii?Q?WpOd77Qusm3C7HHAQGcIvnJGBjzft+EdtUL0tVQdgPfN2F+jXJYxkYzCX+Tz?=
 =?us-ascii?Q?ALIvpb9lJOmpKDv/mLteIwwloMp1hahRafljGUlYwje8GO/tsLs7AgbERhOS?=
 =?us-ascii?Q?S0ijf1vybD1DfSjxSdtvGrS7btpBrEw6VsyAf+UE2q1ZoG/RQT8aRwt3TRx+?=
 =?us-ascii?Q?JYFDMjOicpbTOYd7DsWOOVtkKA315RLeMoKCXfxsSErZGBMDkuvMI/EVoAr9?=
 =?us-ascii?Q?W7oj/uoV2yADiWuyxd48syfLKjE51x4D5vXhoPR55MVZJXcSRhbIl91pKOrh?=
 =?us-ascii?Q?Ou1UcIrkE4tAAI6lHQsYkWc9NGapvWkuEureQf8Nq61RS411b66mzLaerUWY?=
 =?us-ascii?Q?cfUQI1PoIn+tgDba3UJQD2lEO288oI4Yu3OwyeIRjQ51f/cnPbMynDXRj4w+?=
 =?us-ascii?Q?aWdZcKeurqImHhLSL01y8b6/axyDa5TP5Okg0cPAjVrdZtvQZDamLa4x9Kz9?=
 =?us-ascii?Q?1YCkjNDsybvW4/p6MMAoY9dY0p03hAWh+ct0d97tp3/t38iMMoh3ZLhgSAtK?=
 =?us-ascii?Q?UGqinglETFIFOsQ24+kJevKj/u5nNR2fiZ14BMb9BWI+Wli5ydYdSButw1gY?=
 =?us-ascii?Q?EcSq2P9pPHwed6coc6W3GWToUx4WZbQpLt+TRKSBENcc2Cf2lU0brUPWiKhm?=
 =?us-ascii?Q?lvSVfO8GRe9RwRJOvZ8Twd6JJ/pAHzebRcMJEpSXtnvLIyVKSk1E8nIhiR0a?=
 =?us-ascii?Q?U6sfgVbL3n8MJAkAys/Jv2YUh47dR30w79mz+qUD3FsPsBDsZDhn0Ri0WUnV?=
 =?us-ascii?Q?Qyf4aaJzv4uMypLZclRYZVmGzgiiRevZTXoDQCjZvFTrCEPaxoZVzGMx54B/?=
 =?us-ascii?Q?4dkrnviXYHb1AqVa0zzJHwtFAVwq7PflWG+AUoof/M6pb1eAYB25KI32DtPt?=
 =?us-ascii?Q?rpJ4eRQIYSLdyBMn3opgtRSBYIHk5y1b6Z50slnKIJ+toVgCT61126FCAanU?=
 =?us-ascii?Q?IlgPy4PHNQqN2oiGsQ+ltZxQG3wdaZEvDLNfG1+DwEymvRFs+a1dG7KQWAzv?=
 =?us-ascii?Q?yZicwB2sIda7KFXXiyKj5qL4n4meqmyIsXP071YfmMiLo6/VzUd78UJt/7os?=
 =?us-ascii?Q?8ahY+geX4fyy0cu8BB3Dzl83m/XfaABOnJhxBjXcUQznuSqB+BBYoKcvfmdX?=
 =?us-ascii?Q?WB2lHu1SIx2AYdkiA52g+MWU3tvwAEfHMprLUODSzERFHr4FktgnoTDpLToO?=
 =?us-ascii?Q?4is2G3C1x+qYuhF1L1tJY/3JZhYDk8uvl563BzHXDEIzwKsZxQqFhr8MHyMn?=
 =?us-ascii?Q?GkuAFOPmAoxdOTNQvdlqXzVLEN2XSHbp+nI5DBC/IMUkPeTrU/rNHI+mN2bM?=
 =?us-ascii?Q?coFic0SNz23haxi8mck2Ormqslz8RGjsWzWFjDbgHIYwh9Y4Llby+asCaB7C?=
 =?us-ascii?Q?25Ujsyb+qUeJ28oPy0ri5QKBl5MpFryfoB6gU3UF5NC/Yyl+xAOnwHoggVaJ?=
 =?us-ascii?Q?tGsHo9Vn7bcZe1yLIcevzXKg4cXe+SsfUuKhI7RUJuPTxP7o?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: G5GcRWHLgvarwzJhjRYpl0HCGEyZrANeEY3UwYu/VLseDukDPwzb072McZ/+2kP2K2AP9YCfUn/He7LyXKmNCShKWjzpfCLD3zWnJoJ3D8WkKFiD7TP96sZzXNhhefrdEDaOrkgzOrN/i95wT0K6pMS40aw4vBPppnPN6kqQTwI7kQAMvkYIecssI07UkevhahTe8Ep6xav3X7W9PHIuiRW47Z3R0KQ0xXuPRXXtPIgwjWvvKWF/WVwk3HiLjwn2vuAL6bg7oX23O9L5gQXgpyGBcpvNA9V2o6v0fHkIW9Y/HD4GEF0jRRtCCK8U/i8oG5H8l1OdJriZRnjgyW3gig==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac10682b-d30b-400e-f9f9-08dec1efdfdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 04:15:13.0321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Wqn8D23IjpD7bEwqD3UQkvspvQrLgH+ALMUHB4Z/09KjAnsk/wC09+tvfu9PbyrQBukGQkCiFVxXmzp//Bn5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780546522; x=1812082522;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Kd6/K/N1uQa8hAPy96AVKxQLw3tawq72MNWaIg0Nsz8=;
 b=f5QvlZMoeX09kY0tyr3oVFUTyJ1zpxcjxZFBMZFJ2n3wvqQ/X7ti8bHn
 9D/N7taZSOFCqTurY+71DNE357qrzcBdDNagTdMzh4am9Ora+Egnw9sHX
 XbzUm5dNTHqxnnrJPvbHeSBD5Gz6V0UhdXH/7ytB/7g3mNp5Roi6YJ+Ac
 txeL8r6p1clOT7f6ElGaDcPBoGVYdCaeRniNCgowEhG+JZFvmzUnXaIsB
 s3gJLuWutEg/crcPcx+2KtdYySeUPdtYWdU4jDOfcN9b7W4smh5GebMch
 pAVzlOFBqmIEmovx6IHWGYDtSbdTth0dsTilhIKa6HUAR0ZrrNlmSd3Dh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f5QvlZMo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: check cross-timestamp
 timeout bits
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B491A63CCC7

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:53
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: check cross-timestamp ti=
meout bits
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Polling for cross-timestamp active bit depends on HW scheduling and actua=
l timeout may happen before the driver finishes polling.
>
> Check cross-timestamp timeout bits to ensure that the driver finishes the=
 operation earlier when HW indicates timeout.
>
> Fixes: 92456e795ac6 ("ice: Add unified ice_capture_crosststamp")
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  3 +++
> drivers/net/ethernet/intel/ice/ice_ptp.c        | 12 ++++++++++--
> 2 files changed, 13 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
