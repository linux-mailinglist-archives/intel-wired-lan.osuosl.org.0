Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EED88A80DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 12:26:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A25BA414B4;
	Wed, 17 Apr 2024 10:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f-q8LKoBhtj7; Wed, 17 Apr 2024 10:26:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F3B340B99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713349574;
	bh=92JF6a/5GHYvgiciACiOv21U+3hA+vaKy9XsjKvpqos=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kTY5tSJH2+wsvAjyJQZJZkdrfeaSR813tJGrut6acfwYxY75f60Q3OOGb8SaIGDJo
	 +z1bA5ijRgmfJBLzMUjCcFcmFjO11Sx0KUXN/e8X8j9MWfWztxkifqLZumvu/H6MVS
	 I80u/5k/XdUW+R7e8Nf3NviuBp/Yq+oq6nvwe0ITGgc6c7fZzSmQ71OFSPsyfLiWlO
	 vI1e6PlfGu8gegzddWxVoHQf+QlBhJvxgLBUOMDAZL6GlztJLXWug/kbam/QdTbezH
	 b4kTw+0W2WH+zIsacxEc0qU2Up9nKbFp8M8XxhoSxQftXMbMxDWnIhPQBShRDHQGza
	 IszkqIS59JEzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F3B340B99;
	Wed, 17 Apr 2024 10:26:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8511BF476
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 10:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5796C60726
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 10:26:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id geSCwUJyGAtI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 10:26:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4A4E46064B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A4E46064B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A4E46064B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 10:26:11 +0000 (UTC)
X-CSE-ConnectionGUID: 8a2b9ujYRtuNdM5Dtvex2w==
X-CSE-MsgGUID: pDqNklwuQUS9sptTxQmDJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8994033"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; 
   d="scan'208";a="8994033"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 03:26:10 -0700
X-CSE-ConnectionGUID: zhiPsIr5QmS/Npi1YZ3lyA==
X-CSE-MsgGUID: G9e9jYTCSKSkYOLBdE1BYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="22991492"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 03:26:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 03:26:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 03:26:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 03:26:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TdsvXZgcwraj1V12opGGFsWyWiZ8Ffv/aekYc4+WbyRkAsTcOpm2gSTg4qRUH/jV7e0eIrzJlwbJVJBKNZR22Vmvjec2U144RTvpM7TfnobFpm2aHbF0ao9rzj8ivIXevycaWkaEEiPftXyGjAxqUsA+UbROdxdKvI00qe8Bk8Xk2LpujggQ+P6ko0qi/AOqunUpV/33TMgJNZpl/B6zhtifnHYqv2ZhjcHNrZBOybGiiXg9z5Dw5zzDW+sg2mrv1yvI1OmStGzlLLU4VlhIONO/FQh73TaqLURgx0MSdErrdr6oNHCFbOImgFWVjAY3526tIEMI7Ofd9SyqBYWG/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=92JF6a/5GHYvgiciACiOv21U+3hA+vaKy9XsjKvpqos=;
 b=YPBaLjCqi3Q/gaozbrCNMJralSVTLtwa4JyVtHjgo+hryiOHK+ScOSrcgaZBHey2dYILyGQpZSu7nXSBwiRbHjUewFDVLQwPUGkDRRNSvRXcedgmQJG9dcGTE+ofHxenm3W7BlgVtH3gzHh34FrxeeqDDyaaDPIxgW7a3qs9A9RSZBkElG2nrOAjviccdjXkaDE8O1gyRzuhn/DKwLEoejKSwCnImaPD+q4s9/wGo5Wn+zdLoRTFP3yv6YU6q0qjfTv9N29PrUeB/V2m1OOrjCeZkj2+ij6bLdDZJr1F6LhEGgqxN2zmA+/BMMyEyHhA+SzIgJRq52QpcpYwy/daxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY8PR11MB7924.namprd11.prod.outlook.com (2603:10b6:930:7a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Wed, 17 Apr
 2024 10:26:03 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688%6]) with mapi id 15.20.7472.027; Wed, 17 Apr 2024
 10:26:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Ganzynkowicz, Robert"
 <robert.ganzynkowicz@intel.com>
Thread-Topic: [PATCH iwl-net] i40e: Do not use WQ_MEM_RECLAIM flag for
 workqueue
Thread-Index: AQHajBBMyka3IS7bQ0Cwq+D86U1vWLFsSt+A
Date: Wed, 17 Apr 2024 10:26:03 +0000
Message-ID: <SJ0PR11MB5866ECE86B8DF2C07F1FC713E50F2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240411124953.120478-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20240411124953.120478-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: robert.ganzynkowicz@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY8PR11MB7924:EE_
x-ms-office365-filtering-correlation-id: 71b6e893-9e39-43c5-7197-08dc5ec8c8a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 74zzYzrBS6AuFWHrigFR/ZiGcawdxi16TsH2EiX3Od1VUoau6tKplCHfz2j3QshTbPdPYn85JATuOlL+YusWRe7pUSISg/+h80+B24OH8XHSXwusExkTa+mI3KsaFSV9WlNI6d6lkVu2VnP0Rv/drKMQwdkpU7ZeCpm+59LcTeKwb/1dzKDgR/Y5FSJ1UJ6CH/a7mXeDLLLzpbKS18QdMcWouRbId3OnZmBDMGAOVzsfM77kD8rYH6YYVUWgZV+Jyinxd7SYZrwmj6v1dSq8IggKkZ4Q1QjjjXsFGGxyIY/xTrGTVqtzDCgOHYeWS/QaFyETUSy8qy+RZgHBrLpEisqbBk/RS4WCsU5Zn5ttwS12Z5TCcym1kSloahroAVnIGWPRr6MOgZwIsORnnqkcf/avnRjPXb0fQVBgrkwdJnene5bOx/12cHvQT9qRrNvb3rdNFW7XNT7TZnTbLzUs01yfKJpGp+dmvsS889bveN77LG3SXdZEv8v/EgonPx260mnkvnwKOH6WyXP7Ibu0iW5shw4f9z7xIWxGDBAQOW2Tz3fXYoaFy6o+wNvrUbhThlOL6WHFNup+cW3jOEMFihGpLaDQBDbpvTDGxzpfqh1ypbFCvp//5y8wHCPb0sSTFqPCh6uA+h/Q2/rND3/xV9U+/9mMBiKYHeS+sWDX3YOE+c4pv3olCE1yUQgkKtQuZyBLiZlAI9Utqih5coSdqgoIyLeS/l1nDCV1NwMrGEs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sCj+kZs563nYOKP/O59vUjO3sJ35gPJgs8R4SLn7zp+87t9cz2mYMwy426ZC?=
 =?us-ascii?Q?3aU4TW20wSlqBfN8VOmadP7UOkBWqRCC3Ef8sNtvi0SFIBbN4tMHXAxSXNEj?=
 =?us-ascii?Q?Zvc7Txw6425JvtE9l6JSk4DXg/Hm+IittDTq/L/gK3fBJCU+5EEIJwds1nZC?=
 =?us-ascii?Q?wJIQp5gbq/CSdXQ7iv3IqTKcdk52ZK26XqrPhRsG1mPEMgdWo6rMWmxjjm45?=
 =?us-ascii?Q?q9hjUHt8fAusKS0FMBh+Q78u9mrQw+VC3e5yzPrxGQ9vyLx5kQiTgIylFVWF?=
 =?us-ascii?Q?ttfPRjMxW3U5Ntws+z4NG7Lj1M3jHYWsUa7dZbMu77H3YmVUhi1Yzsdn0Ylh?=
 =?us-ascii?Q?2uSiejwch9nGLOl3vKPuMG9Grn9L422OORdLc7n9SXldfy/yD0QU5ZGN7UPC?=
 =?us-ascii?Q?RPOrpovJkA6atCVdYyCuKgnEkN1PpARlyfGOUzalQUrQiOU7ZJS6aUXbBPCC?=
 =?us-ascii?Q?dnkBQ+mNBQGvoe3JryVVDhF+Wqab2Inz/SiuxIDmBUr7BeaFOQmYnmrufHTx?=
 =?us-ascii?Q?5wcW9GVu8DmyR5sQZiWjbKCXJmXbgsKIbnBt5zpZp/Mtb4mMWXbNdRAk8LNu?=
 =?us-ascii?Q?qzHyPhRxcYX6HgjkfBDUvfSj1eWJ51vbLW4RSp0L+oiKhZpy/IiOASu5gaEi?=
 =?us-ascii?Q?uJvOlI8u05AiKqtuSwKifD5aBlFQ2lgTtqf7DIyBpd84/soaz5Knx8GdNJHF?=
 =?us-ascii?Q?mJYmr18quAryw/YPhViuqVUGvitH/MH/5K76A/K2IoiIZScy6PWlB5eSl3Tc?=
 =?us-ascii?Q?0fQak5kFvXKphn57Ze0OZswXExaMNvASL7SVvB0EHB/r/glNUEMnR6vj085p?=
 =?us-ascii?Q?ynYQyOEs/jaI2RTFHdsbDFLN71JSBiD2DZ7c9Ix8eroGfd+jMd+yBbU5vCYO?=
 =?us-ascii?Q?dEIfXJz4ii5zcXc80f/0gtO5UzzdTLeShieVl5GHO5cFIGUKZrlbUMxgl7Tu?=
 =?us-ascii?Q?+O0nOJq4vcsiPYx2RtX8eUrdk1wfY0hlhm93KOWUAi1dLnvAkKriX7NR6j9a?=
 =?us-ascii?Q?S61LX7b2Kh++tKQudHkrn1d2PeciABa5m8q/XySzi7Wl5y+J0VRuLcuXyxPw?=
 =?us-ascii?Q?DEyggiHaIm7827oPWoDTR51zRUCeu8DH/zHycTvg0E9ki7Q08NmjAubbnapt?=
 =?us-ascii?Q?u/5whjmU6X8tjQB8jquwSVR7dhnDEKdLSUdsKCrYYI5D+lM98xNgFmIZdpqs?=
 =?us-ascii?Q?1QSqGyYzEAyhPiUJW3SCCuuDfRFRYb7nRpNuYTdcIXm7Ic16lrdPiQQ0Goth?=
 =?us-ascii?Q?XH4cnkF6Tx/Qrx7mX5LnOi1duPDtN2bNm75VQ8vE/JNgJenoAzBIfpkw4IaB?=
 =?us-ascii?Q?f1LmM0HVTEe9T5Bb45jL+/IA8nRNxxpK+R9dKdYa+w3bmGsNSsXW7P1fr8/W?=
 =?us-ascii?Q?PR4oHCf91mj3EWwX6ha2m9Q0SuV/OKBNv9DmQXCM6YpUqz9NFymWnjVls9xF?=
 =?us-ascii?Q?IMYZTVljMMlr5PmjxBh8R1pAktAUPmuYzZz0Tqdk1JyPXxFBaYjQY+k5IAJ/?=
 =?us-ascii?Q?Wf797c7gmNmVMiwoimGnZjpvSw9ddA4OFvSjZDI64n5lirIAJff0nOJ+Q6To?=
 =?us-ascii?Q?9BkAdJjBXwrHOElRXPGNjc9Uxmo9sVebb3aOGxd7dY3iVGv4SX2jElr8fvAk?=
 =?us-ascii?Q?cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71b6e893-9e39-43c5-7197-08dc5ec8c8a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2024 10:26:03.2075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9XGvjOW4hiIpU4OXaRUxfVbyNiHhFLnM6Djq2towMqKI2mM4nUc+dyaJ6kGXO5i6e3ZxG5m7Px85k9DElDk1fXlF9phKyD774dA1McKB/d4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7924
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713349571; x=1744885571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ogQBUyN3/iAYuyTra2beWFVL1RUmgsbE0ABbe243a+k=;
 b=cN4gYiJ11MDyQk8wXCQcDwdLfvOoQhhwgkSoCoWlv602SsoKeL2G6VOM
 3OdQWIqkrtDMQD9407vNwbabjtQMY96vGxQrJdhFugK/xjxRQvukhBPYX
 qaGQhrOyPTgDFG6QMQ0N8f5LaeYSs1HRgTZXMtRHZo3L6mvWM/lbN1f1A
 Rl5ZQc/A7VSA7uqrtJT4wZRS2oqlFnA3TAmnCsXqo68IHFSsCeWHVSzQZ
 U6fLbgaJUjobKYysuvSYbsMXZEbldDwENRzrwWOxcKFfF0ghghm7qDVqq
 cJFR9oTlyzJwbeXOF65A3Vi1DAFxiXCSCVlAYoGcdfjRemK8zKjZQuhWS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cN4gYiJ1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Cc: "Devale, Sindhu" <sindhu.devale@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Thursday, April 11, 2024 2:50 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Devale, Sindhu <sindhu.devale@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>
> Subject: [PATCH iwl-net] i40e: Do not use WQ_MEM_RECLAIM flag for
> workqueue
>=20
> From: Sindhu Devale <sindhu.devale@intel.com>
>=20
> Issue reported by customer during SRIOV testing, call trace:
> When both i40e and the i40iw driver are loaded, a warning in
> check_flush_dependency is being triggered. This seems to be because
> of the i40e driver workqueue is allocated with the WQ_MEM_RECLAIM
> flag, and the i40iw one is not.
>=20
> Similar error was encountered on ice too and it was fixed by
> removing the flag. Do the same for i40e too.
>=20
> [Feb 9 09:08] ------------[ cut here ]------------ [  +0.000004]
> workqueue: WQ_MEM_RECLAIM i40e:i40e_service_task [i40e] is flushing
> !WQ_MEM_RECLAIM infiniband:0x0 [  +0.000060] WARNING: CPU: 0 PID:
> 937 at kernel/workqueue.c:2966
> check_flush_dependency+0x10b/0x120
> [  +0.000007] Modules linked in: snd_seq_dummy snd_hrtimer snd_seq
> snd_timer snd_seq_device snd soundcore nls_utf8 cifs cifs_arc4
> nls_ucs2_utils rdma_cm iw_cm ib_cm cifs_md4 dns_resolver netfs qrtr
> rfkill sunrpc vfat fat intel_rapl_msr intel_rapl_common irdma
> intel_uncore_frequency intel_uncore_frequency_common ice ipmi_ssif
> isst_if_common skx_edac nfit libnvdimm x86_pkg_temp_thermal
> intel_powerclamp gnss coretemp ib_uverbs rapl intel_cstate ib_core
> iTCO_wdt iTCO_vendor_support acpi_ipmi mei_me ipmi_si intel_uncore
> ioatdma i2c_i801 joydev pcspkr mei ipmi_devintf lpc_ich
> intel_pch_thermal i2c_smbus ipmi_msghandler acpi_power_meter
> acpi_pad xfs libcrc32c ast sd_mod drm_shmem_helper t10_pi
> drm_kms_helper sg ixgbe drm i40e ahci crct10dif_pclmul libahci
> crc32_pclmul igb crc32c_intel libata ghash_clmulni_intel
> i2c_algo_bit mdio dca wmi dm_mirror dm_region_hash dm_log dm_mod
> fuse [  +0.000050] CPU: 0 PID: 937 Comm: kworker/0:3 Kdump: loaded
> Not tainted 6.8.0-rc2-Feb-net_dev-Qiueue-00279-gbd43c5687e05 #1 [
> +0.000003] Hardware name: Intel Corporation S2600BPB/S2600BPB, BIOS
> SE5C620.86B.02.01.0013.121520200651 12/15/2020 [  +0.000001]
> Workqueue: i40e i40e_service_task [i40e] [  +0.000024] RIP:
> 0010:check_flush_dependency+0x10b/0x120
> [  +0.000003] Code: ff 49 8b 54 24 18 48 8d 8b b0 00 00 00 49 89 e8
> 48
> 81 c6 b0 00 00 00 48 c7 c7 b0 97 fa 9f c6 05 8a cc 1f 02 01 e8 35
> b3 fd ff <0f> 0b e9 10 ff ff ff 80 3d 78 cc 1f 02 00 75 94 e9 46 ff
> ff ff 90 [  +0.000002] RSP: 0018:ffffbd294976bcf8 EFLAGS: 00010282
> [  +0.000002] RAX: 0000000000000000 RBX: ffff94d4c483c000 RCX:
> 0000000000000027
> [  +0.000001] RDX: ffff94d47f620bc8 RSI: 0000000000000001 RDI:
> ffff94d47f620bc0
> [  +0.000001] RBP: 0000000000000000 R08: 0000000000000000 R09:
> 00000000ffff7fff
> [  +0.000001] R10: ffffbd294976bb98 R11: ffffffffa0be65e8 R12:
> ffff94c5451ea180
> [  +0.000001] R13: ffff94c5ab5e8000 R14: ffff94c5c20b6e05 R15:
> ffff94c5f1330ab0
> [  +0.000001] FS:  0000000000000000(0000) GS:ffff94d47f600000(0000)
> knlGS:0000000000000000
> [  +0.000002] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [
> +0.000001] CR2: 00007f9e6f1fca70 CR3: 0000000038e20004 CR4:
> 00000000007706f0
> [  +0.000000] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000
> [  +0.000001] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400
> [  +0.000001] PKRU: 55555554
> [  +0.000001] Call Trace:
> [  +0.000001]  <TASK>
> [  +0.000002]  ? __warn+0x80/0x130
> [  +0.000003]  ? check_flush_dependency+0x10b/0x120
> [  +0.000002]  ? report_bug+0x195/0x1a0
> [  +0.000005]  ? handle_bug+0x3c/0x70
> [  +0.000003]  ? exc_invalid_op+0x14/0x70 [  +0.000002]  ?
> asm_exc_invalid_op+0x16/0x20 [  +0.000006]  ?
> check_flush_dependency+0x10b/0x120
> [  +0.000002]  ? check_flush_dependency+0x10b/0x120
> [  +0.000002]  __flush_workqueue+0x126/0x3f0 [  +0.000015]
> ib_cache_cleanup_one+0x1c/0xe0 [ib_core] [  +0.000056]
> __ib_unregister_device+0x6a/0xb0 [ib_core] [  +0.000023]
> ib_unregister_device_and_put+0x34/0x50 [ib_core] [  +0.000020]
> i40iw_close+0x4b/0x90 [irdma] [  +0.000022]
> i40e_notify_client_of_netdev_close+0x54/0xc0 [i40e] [  +0.000035]
> i40e_service_task+0x126/0x190 [i40e] [  +0.000024]
> process_one_work+0x174/0x340 [  +0.000003]
> worker_thread+0x27e/0x390 [  +0.000001]  ?
> __pfx_worker_thread+0x10/0x10 [  +0.000002]  kthread+0xdf/0x110 [
> +0.000002]  ? __pfx_kthread+0x10/0x10 [  +0.000002]
> ret_from_fork+0x2d/0x50 [  +0.000003]  ? __pfx_kthread+0x10/0x10 [
> +0.000001]  ret_from_fork_asm+0x1b/0x30 [  +0.000004]  </TASK> [
> +0.000001] ---[ end trace 0000000000000000 ]---
>=20
> Fixes: 4d5957cbdecd ("i40e: remove WQ_UNBOUND and the task limit of
> our workqueue")
> Signed-off-by: Sindhu Devale <sindhu.devale@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

+ @Ganzynkowicz, Robert

> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6010a49..dbc4ab90 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16727,7 +16727,7 @@ static int __init i40e_init_module(void)
>  	 * since we need to be able to guarantee forward progress
> even under
>  	 * memory pressure.
>  	 */
> -	i40e_wq =3D alloc_workqueue("%s", WQ_MEM_RECLAIM, 0,
> i40e_driver_name);
> +	i40e_wq =3D alloc_workqueue("%s", 0, 0, i40e_driver_name);
>  	if (!i40e_wq) {
>  		pr_err("%s: Failed to create workqueue\n",
> i40e_driver_name);
>  		return -ENOMEM;
> --
> 2.25.1

