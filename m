Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1508698EEB2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 14:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F9D9820C7;
	Thu,  3 Oct 2024 12:03:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_WBUfeJgSEF; Thu,  3 Oct 2024 12:03:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4C6F82020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727957026;
	bh=A+1sV0Rbwvy3k6OeB7U4YYswzAFLtAzbNlc7i98BkSc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sYPXdZqxf0bm4decxI81kh7kUqPdNSvsjWbgw24b2fmbdppLe+0r9i/qNNA72wrJj
	 TqpHvazFdTsseMeS/Mffffxeox8TU2x5dko0iPDQSmWb0RVCOvsbCUY+Kc68bice6+
	 yH5OfmOdJiumg/4Xtja1CpNftgTkrC3KAsT1u1BucjwIPs8sA7V5p/8gR9XwMR9Za0
	 oa7Mo7PCJtGGLcVxkYp+NBvH4tpkjqxCsVigkw3m3iWQRAjmFm9WqnuZJiqK04b5sI
	 yew6iXrkz85TwaJsYU//7xRWcIKpsyoT4x/qoQi6g+miWxZBiIh+isN4HmtNnXv+NE
	 QfXidXKFCpiPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4C6F82020;
	Thu,  3 Oct 2024 12:03:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA0E1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 12:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 874D640131
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 12:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BuY-C7lA8EcD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 12:03:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B8D640100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B8D640100
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B8D640100
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 12:03:43 +0000 (UTC)
X-CSE-ConnectionGUID: O1an4aYlSLWQw47orBOD9g==
X-CSE-MsgGUID: qoD7Tj70S2CSvovBpS2Nhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27299531"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27299531"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 05:03:43 -0700
X-CSE-ConnectionGUID: +0J9O1BlTYuzS3nGXc4OoA==
X-CSE-MsgGUID: q1vBzMpZQiSFiyHraiBr3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="73914681"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 05:03:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 05:03:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 05:03:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 05:03:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hHaUYYDRsKsoM9kDOlOn9PdYKZA6B7AMl1I9BRW8vQlKPTEWPY2NJ9S9NAJSyrtq3hIRL9KvKO5dzjvECsBdL8gijCDkC9K8cEcxS6nVMm++Co8Xts4rGHxyhEiOTrihYKVUfHrrxR8v31XZZt8Rd6n2Yj96rlU67x7WZJzY1qJxO7Vmffrr5p8iDfzY27UDsVQ3J7ue8fEM3FKlcQg2pWET60FUEOrhkWivnnna01aB/0yFJa/re6U29LmYMMlvgICyrXAO5dXDlQ+WpW4LJByf6uMc257HFUmE9Y98rfFIHZ8DulhmBu3uBaUA6aQWoIikqAaUSjfsPWTIQ8xPTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+1sV0Rbwvy3k6OeB7U4YYswzAFLtAzbNlc7i98BkSc=;
 b=ofo9vilnfHdVqvre4IoYnLoQjV3t9DGUcselrmUWzYNhoB/Ghu06WpTwzARMZNFlPFlJPAgOxo1eGyd22Q64F8d/w+ykgyoqn4ahX3P+by+/QiwXO6ci+lgRAk375rMs5mIfa2uNEv0qg6pvX7jb1LJMEpfFqRmdnge5GlQVM99yAtyTuEg/nxOOIhCNqhd4DJqulEdL29RkWaNoyptmV6Ow4dljCdupjy+fNtPURvon0gX7yRqQ8XtPy225koDp29XjOIhG9Fms0++OBe2iiNvztCozckg2oFDm/A0lF781YAICDzMvei+46WaPITZASA5B9Ijmjd/mXTClmZwdhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MW5PR11MB5908.namprd11.prod.outlook.com (2603:10b6:303:194::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 12:03:38 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 12:03:38 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix macvlan leak by
 synchronizing access to mac_filter_hash
Thread-Index: AQHbDZi+VcwW3r0xoUaiPLp7r4Gt/LJmgqgAgA56pPA=
Date: Thu, 3 Oct 2024 12:03:38 +0000
Message-ID: <SJ0PR11MB58652BB4D2C5245CABAC236B8F712@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240923091219.3040651-1-aleksandr.loktionov@intel.com>
 <20240924065648.GA4029621@kernel.org>
In-Reply-To: <20240924065648.GA4029621@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MW5PR11MB5908:EE_
x-ms-office365-filtering-correlation-id: 89e4ece5-cb47-44db-89d7-08dce3a36a5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+ZZA2rnYpYONqgr7SfNkQBtt13f0VHu20qRTJS63kYnwOTY4CuxUj6aiitRV?=
 =?us-ascii?Q?YkxXbp7mucTrRfNkcea3iLX5iirdz9r0UFBrd/n0ldUDZyJMMq91GhHgaSvD?=
 =?us-ascii?Q?EEmbASW9gBlo6hJR4d18g+Z20EiQjCXu8J+P2Ld4atUlMizXYHDbvZrZBMlZ?=
 =?us-ascii?Q?rs24KFzJd/6QdXPJ2lS/xhaZpLNi7o8X8zJSO0mIt8uprIVKgEqMrsc2FEXS?=
 =?us-ascii?Q?jSAj3CUWlUOnZghdNvgUXgCCsJg9ygm4lWKv5IYUuFmxdPSKRMX9cfXKla8Y?=
 =?us-ascii?Q?YgVtBcwVwWnQNXakS8sZ1Hk0jGjouYLl82LHDUkWw8jftCwXPFh81gifeP7W?=
 =?us-ascii?Q?w2+eWahNw5auKEQKKCzEMAvxERF8uQUN83VLMClljqJpSOx5Q+viPI11aVj4?=
 =?us-ascii?Q?aMqvuHbO1KxxYSqI4OYkq23SulLiL4smobP0HnpxDrwJp/9rT8L0HHF5fIFM?=
 =?us-ascii?Q?hxmcH6SVtFXhXHJkIVwHrSc6mOP4enG0HXkaIRqk6rIbQT6/18fH/IVmDq6v?=
 =?us-ascii?Q?QiLlg2GoshT+nfGI7Auq0uS5eTSaf2MzXa0FLD5Ph38B//Pzn7RFY7ZRhMJV?=
 =?us-ascii?Q?hIVgHN9oCTDGriEEsV7kJUHDWOeHfrr1ziC+rN3zvCrWYcNkAKOcItSAM3rF?=
 =?us-ascii?Q?XKhFV0USrr03oDHOBM0MC3aiJXSfeaGpP5nclnui1mTno4gT7ZHREG8Kr6y+?=
 =?us-ascii?Q?C2CY98C7CEoYLgi5Rc42cfuPlCfC5novnc6AUN8FZXjRx51LYOtGAv6Zrx/g?=
 =?us-ascii?Q?jVjERthCYusMD4CNArNF9rE+wQabaZr7OufJFU0sXCYoG050lMazspn8Cw3I?=
 =?us-ascii?Q?Hdc69/r4aLyTujesEqQZGCwUNPMLlec+n5TiotsrJ4INc/4VIoxWo3Xvu8FA?=
 =?us-ascii?Q?AKp/kzCY4wZ6Ikwh2GNtwwE8vPhgBwQcS2qownQqltVLXJn7fzYQTuuSAE9f?=
 =?us-ascii?Q?MkQws0V5W7xr7mU/1o+V9jrPL+S5fbyRxxYWf51BTo6ergy6Yp9GmmKSkc0c?=
 =?us-ascii?Q?oyG7azjUTqO/NbhJjUFm4KugBdH3yWHC3j2vELbRmRLtFQzloMWXydB+7bYY?=
 =?us-ascii?Q?BVPRxFL1qL2FPairJ/bULPOAEwMNd2IheCU95ng/K9h5dxAeronYwUWv811N?=
 =?us-ascii?Q?W8fkQZ7+HIcxus/W/1+fY4NWNEIcXb5+bszAL3c1J2STxhP2VfdMWVVOG+kv?=
 =?us-ascii?Q?JZYLxxjTuQzl/3U5KAd3zT6KHPSjf9gbtWi+dFM6Mr5TwCmjtdo0X8oXM9Jz?=
 =?us-ascii?Q?kuPWKk4J3nYZCPPg5poo6o7EFwn5Vh4+ON63B8FUbDAyg34fhoF6Wn3vDqIh?=
 =?us-ascii?Q?xHgolScTr3Yxn4nnUVmm0fDyNA2Du1LQRvgZZ6rJiM4Q+Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WEs14KQ8ptyA7b6Cc/vQ+EPkvfG/or1j2HoyUYgfwF7Bm+BEWTY1s0Tly5uV?=
 =?us-ascii?Q?lIwNHUCdQCDKME9/lpE3UefH5qjcK4YD/uk9FZgXrTCN62r014NHgRAIQnId?=
 =?us-ascii?Q?zdNWexsxy2KO28QsM8dDihbu1SjY5mO7FpBXL/zBRfNLeMVpfjPQmnlUOJiM?=
 =?us-ascii?Q?R/re9syFWjCI4ANgTxnu+brUMMFx8thCiGoqzloT3t0MKko7u8KsRXrYx9bU?=
 =?us-ascii?Q?lK8CWBk4AEkBM3ffhQCgOMAr+5414Y4P7+VABDEnu8hiFIDqUxtPcuBhO/75?=
 =?us-ascii?Q?HFpnIWltYLuj10j0sqB5NMIqWEaNt8RHW+G0kpAXPGi2SGTLiQ8hrEMhfBi0?=
 =?us-ascii?Q?aKHhLLRjpHwNenWrzqsqQsfV1UZNacY4eoZTpnikf/m0Sf0doWa+l225McnR?=
 =?us-ascii?Q?D8YHo6GfxnSJQzf48TiGPvHYXPyl1X5fEH2mryMH78LKDdr7oliMVTC3pH79?=
 =?us-ascii?Q?wGjfMLUhUBprLr89BRFBp/o8C/xpH6s5pxw4EoJ5dIV2HeohP9SWuFP0MCtE?=
 =?us-ascii?Q?fPFELbIuiP5g3gtr9noxA6mswJtojq5XvixkrZSKND6LpN7Dg584zOverRRG?=
 =?us-ascii?Q?lSutyNn9uWfwGyQU0BGWglU3LsnLaBz8k4AQmXKEVq18jdhy2yJnyXmJF+Y/?=
 =?us-ascii?Q?Jev8zF5CwUUij/chwCKgsDa2gh6J4MySTHTSs8QcnyKp9ZZNzb/y+VrvuS0H?=
 =?us-ascii?Q?Rvr2pCKRCWtOT6Qb+nVZ3nEbUe9R+Si33iEyOIz6+5SEC/cqVO2d66YECY8l?=
 =?us-ascii?Q?RkPOLiHrzJ/Rf/EJenZ9UOnKh9HiYcSdZswR6NaI+Y2Aq/LL26FaNnYPfxKE?=
 =?us-ascii?Q?vl1LFE6NzoK7kfvainxsTJOQWbCTQWgUNpQX3dfC5FO9N+YbfdDmAGzR6CG5?=
 =?us-ascii?Q?KziGiqnaXklol5fz4cjKShM7uTYad8PLkQJ2iIaeyBCYo+N4PwI1ZxJnxvJI?=
 =?us-ascii?Q?Tt6UrtLHjOtoz3BKfgzDYNSrobnB1WwRbfKmpaHZf+snFDaDZtomEI69SMaU?=
 =?us-ascii?Q?waMgw2R2aTyfVuGzzflpNFs7E7n8efW/YU06oA4I49J9c3KMrXlIxQB/pvUr?=
 =?us-ascii?Q?Pyh8FvM9nnNB81QcLyefkf6dG5EblnQycAcN093G6JBr6gZ45VYmveEo3Wlj?=
 =?us-ascii?Q?H29RUgDiWcuabYW3z7plBdVQrBU1sTUHtJ2211iI1rZcVCpqIbZ7XboT3gUS?=
 =?us-ascii?Q?YwJfeuYeuQDyNnz0a6gv7No0Nj/8ubi1jDzGbB9UPe/Ow0m6XmhvXtaLRdAO?=
 =?us-ascii?Q?yYsQP8DdWxWLcEumPkh9xPudEYPEERXnJobeDiKboCLyJk32TpLnTNcWzPTZ?=
 =?us-ascii?Q?MfXTt1UT0Ke8mLWs8G18veGwU84Dno+ULbofCndlahBz1f8VWr5EPJU/3Dvx?=
 =?us-ascii?Q?MlzBT9GG7vBGNtMEAxL7MAzAq1L0xYQ0ds7We9vN1SrzBhRBEoBjx6Wr41s7?=
 =?us-ascii?Q?ZjlNfxgx2OAHz1RYp1vDDWt00EdtN4bC4IlaIpRY8RVSD9SU85znlH8IoKA+?=
 =?us-ascii?Q?nrLdgrKamR/ygCVYth0/HjoDziopbappBOYnt0d8x2qclCfsAwWlsre/Pseb?=
 =?us-ascii?Q?Ae3W4ZTYZ4OIxzxa5Ut4NJuiraPfnUePLdYn3A6Yv0we+/lWStRfwZcxk0Iq?=
 =?us-ascii?Q?6g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e4ece5-cb47-44db-89d7-08dce3a36a5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 12:03:38.3410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: emK8DysU8HscRYnrh/Lt6sTL2x1mPHw/p7GVbnNSj47zmSCMgeZ7IgDBaFUqG+Cv5VnFarABdY3v6cIkVbxDJYFPTb+rcJ2hphZr8/tTG60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5908
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727957025; x=1759493025;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YBCeIFKe2lIRSFaC/uQOsclW3zoDO4DhvDxGASnA6dA=;
 b=KxK5TaISW7HT8GA1HxEL2+pN/Q4RqyptwMYjnO1i5tbQXax7YOoUCVNt
 Zc/SSfua2aM5lU3ETV9rlnwW+Pldqq809dgZZdkOEv8p7qAwZjUXUTRdi
 jKI6EVuJ/rrGtiTPHMbK5be5M5ltCGIV3PUl6AxhWtZrKP9ScvI+kMbjI
 GEIhocXTacmCaP85MPPDlDzUv5tKfi5vpXd3VvO+XJR9dtAdc635BRv5+
 432PxTwqkVN5HAm85/kvx0G406/GT2coOBRJNLpext+5Cjk+A1+vztRyd
 4RgTu1hrr1zLsvRsB/AjhiCGYYZNVk8hjrpUOtyjajaO1cXDXKQtdk30Z
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KxK5TaIS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix macvlan leak by
 synchronizing access to mac_filter_hash
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, September 24, 2024 8:57 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix macvlan leak =
by
> synchronizing access to mac_filter_hash
>=20
> On Mon, Sep 23, 2024 at 11:12:19AM +0200, Aleksandr Loktionov wrote:
> > This patch addresses a macvlan leak issue in the i40e driver caused by
> > concurrent access to vsi->mac_filter_hash. The leak occurs when
> > multiple threads attempt to modify the mac_filter_hash simultaneously,
> > leading to inconsistent state and potential memory leaks.
> >
> > To fix this, we now wrap the calls to i40e_del_mac_filter() and
> > zeroing
> > vf->default_lan_addr.addr with
> > vf->spin_lock/unlock_bh(&vsi->mac_filter_hash_lock),
> > ensuring atomic operations and preventing concurrent access.
> >
> > Additionally, we add lockdep_assert_held(&vsi->mac_filter_hash_lock)
> > in
> > i40e_add_mac_filter() to help catch similar issues in the future.
> >
> > Reproduction steps:
> > 1. Spawn VFs and configure port vlan on them.
> > 2. Trigger concurrent macvlan operations (e.g., adding and deleting
> > 	portvlan and/or mac filters).
> > 3. Observe the potential memory leak and inconsistent state in the
> > 	mac_filter_hash.
> >
> > This synchronization ensures the integrity of the mac_filter_hash and
> > prevents the described leak.
> >
> > Fixes: fed0d9f13266 ("i40e: Fix VF's MAC Address change on VM")
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Thanks Aleksandr,
>=20
> I see that:
>=20
> 1) All calls to i40e_add_mac_filter() and all other calls
>    to i40e_del_mac_filter() are already protected by
>    vsi->mac_filter_hash_lock.
>=20
> 2) i40e_del_mac_filter() already asserts that
>    vsi->mac_filter_hash_lock is held.
>=20
> So this looks good to me.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> ...

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


