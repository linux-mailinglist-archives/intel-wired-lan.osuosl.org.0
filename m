Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +D1fAZEQp2nZdAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 482681F4124
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 036C140B4A;
	Tue,  3 Mar 2026 16:47:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9s9h1XppgdYs; Tue,  3 Mar 2026 16:47:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC97040B57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772556419;
	bh=4J3ZFbeg0QjHrL8CK67Akab+bgY7Sg0/n7+HDIDj/4s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J6P8ZEZ7ULYeTA8TdmtY3ljfeu3YzNDpzTU4bMsHH46SchNQkqE/ZVmPRx6BJlYm5
	 ZUTuTz5ntmlbNp5hc5eWya9sOTXmWcMQa36eWJW9Tb2F3FgM6yihiQFGs0ystgVhNz
	 bpxYItDSaEg1Kp/9gEPCuLpsrV9RZP4z/YMWL4/wLcgKAo+Y9xWJC1cuV78VGvZ2I4
	 /KogfMzOyE2KMJ7Fh1H14981UVxMVtG39jPRd7iZAqXvRmZqTx3C/JJcPJDsYFf/v0
	 dufpmShcmgYjGiHilUMRdFNXjxu+j+g9O+YDKoekD58ftd7OSnmFolcmUXwOdGj28Q
	 nd1Pib0VfX7/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC97040B57;
	Tue,  3 Mar 2026 16:46:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FA2E25B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 559264007F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zArOJbHVEJij for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 16:46:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E2C44004D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E2C44004D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E2C44004D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:56 +0000 (UTC)
X-CSE-ConnectionGUID: dPrq8ZeHRNKmI4/Ms3XHig==
X-CSE-MsgGUID: m/9p7A3XSvWx7dMiIgRqog==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="72627192"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="72627192"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:46:56 -0800
X-CSE-ConnectionGUID: A3O1YefSSu+LY5AL9dSLcA==
X-CSE-MsgGUID: Jyei4uubSCWPru7Jpi/OSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="255938449"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:46:56 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:46:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 08:46:55 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:46:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uRrZO9vMQcQ6Ep1hYv6CVOQ8OJRJ09pi/d/rj9GfGLjISxGhJNsEbyhDHS9dsRuo9F3CI6SYOQEdjDs5KTMCrE/h2D3xuPa4PRVPLAuRcSQkSCh0f2nkkbHJwyBDdAcF8PfSp0SM7IZZviqoVvNQIWio7l9ZEINb9iexvLphL+GXhpFq9Jnbpq049Cism3Lk4z7Yo0AIAlcEsu+BtV3q7EPQs4oRxxA4VYwlCW1MMlkePckIqvSnw4uAky8+V8D2+Awls4aXplF0UVZZPKYvM1hMNNXJfylj8ZXRmieTuJhXKz+J7AIPpewGUkZRsxZE7ZHmUwm0ZFu6njnI/edQbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4J3ZFbeg0QjHrL8CK67Akab+bgY7Sg0/n7+HDIDj/4s=;
 b=QR6PZXvOpV3AWdCALHbMdW68f/La+ydra8FiVf3r2x/KyPLiilnT4MD2ml1i9UHzWyeYE+wp47hh45uwhOGwOZWJA+xoSZd6qVAJe1VtjkSmno2MtZfdj1PMHoAnwTHRjTBDqy5fgZSvdwxVVHvbJhe21FYXtxJYNeU+HWDtGZ8qLhxfypqZOAcbd15CN0RPHaiO/vN02KyVf41mm6yz4fUobaCokTfbXj9vjdNXdZzu++WYJ0xakX4ZUi7/CqeH3QCTagZmTRJ6zXq312yhHwPCCni0vIdddz2ndMZyn4v47jiSOCbhN1kbUWWCkLhFZUNbjQIh/D+6efbUVq15ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ2PR11MB8513.namprd11.prod.outlook.com (2603:10b6:a03:56e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 16:46:52 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 16:46:52 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ixgbe: E610: update
 ACI command structs with EEE fields
Thread-Index: AQHcihV8+4C3g0geeUCcGSojQv7sn7WdIzuw
Date: Tue, 3 Mar 2026 16:46:51 +0000
Message-ID: <IA1PR11MB624172D8B31275977F5934438B7FA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
 <20260120134434.1931602-5-jedrzej.jagielski@intel.com>
In-Reply-To: <20260120134434.1931602-5-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ2PR11MB8513:EE_
x-ms-office365-filtering-correlation-id: 07d87f14-f130-4403-43ea-08de79447885
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: Vdnw9yglXi6sR+PSW9QlYNSnHIARfuusBonxzRn5bBPIButcYzC9pFJ45Jj/zJYBFnf18Hq8eSrHUsFcShjV+wJ6IRkSish86AbBj7Di5EYKjWiArQu6TV46E+T7tFk23i/Yb1hfGRbOmoA7jITEBJ2Q7JZuCLWCnKtbW0mmP5fazdHeep1TH+3BlTHVmssOmhsfiYf06mopyfUnIVukCJ8zANyn+1ecW1PzwiB0e+S5fzVFh6Id0TymSNSZkudloFJExBEUPgpf6RBcvX2IlmyyLqMfiWBTrJElsALf8iwtVfQM51CozhXkcQswD88Aww/YcqmmGBAgV2/1x8EbW53yMP5TY/ONWJKao12UzMX+mg495ZXY7dRReTKGYjlYt5rwnsu6IbyoaEoAobGx/FfPb7Yv7j8Hjza7KRLdpgcQvo0WMP5Y7/7L3PmiIuAiyWXelF2IGfUcGVfFJTiA+khF/uCP4jFr0TSJPz5LIeSMnBwVAWYwcFBlG2Rn8gqrdihu5kRWgQUeSck5v8pUKL+SoWUYJG8YM1/C6CFI7EqXkgcXfiDJVQUEhiWf3f+3BRkKU/bkQFjnJZbkxw2t3gPtgHmFCbtaYx929myq2cjNPTEpjG3pCe8zbN4QuDRzgIv8Umg/lvWWg35roN6dw/UiCeXdEq1e1uzQu7aaxDPMg/nv7JdJh781rMmClDpqW8PUXe3zF5IqIiQbIj/8z2RbIOguQnavR/3+nTGZpNSW5nXaSWJJE2tXqeaF+GyQto8UqETsSi6ALOAmwzKkoPNYttxHqlxTot+4lXg3ziA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gRB68+q+A5sVnt1nBHqdnehkBjlUQ1hBrRfRxyCEUthxQGF3oTMhi9kXrp8f?=
 =?us-ascii?Q?z9yDJwH23YH46oyMdcjxa7QDGUMPX4EHI2EGyEqJH3KvD/sAYgWvmAYbWmyz?=
 =?us-ascii?Q?0UMnCgZDPuoQK6Hxzu3DrQLSCtJHAsIDYwslRhImMfHtsbIwjMBNj0Ho6SLP?=
 =?us-ascii?Q?tq26dv7DI+DUlurfTgssLQgsZ54kKEnThFPADCgRzPwsMXquznJ7Ii6fI3FS?=
 =?us-ascii?Q?ll3CxIgFHTNwME8Sm2KiZTfb3Qa3W8URxE4gWKMRLKUHTpIC8gJrkqZkK+a0?=
 =?us-ascii?Q?vra0xN3J7/3vGP9AcekotI9EtdLz2dWWx/3vmvEpbl/m5pg9NVqRmgw6Hnxo?=
 =?us-ascii?Q?iEo+n4d6JxiMNwEc04nG+RltZbflnQKr0XidXHZMmpNcaQAc766+8pqwpIcI?=
 =?us-ascii?Q?V8h+bbSygiAJFMgEUyISzGrm0BepgVaeVpqsB1rJnSTzMzvocZkUnYcFbSN3?=
 =?us-ascii?Q?7770+r9Q/r/QuHpiN4mcWjk1QMwOkvSrhEudaWy1reoDniI8ZSR/Ag4teov3?=
 =?us-ascii?Q?+5vldG457IcsICCuP5Jwj8czLhxnK9bETewQAU5w+BFECgo2Xsc70KePYe+d?=
 =?us-ascii?Q?tyrVd183YS5hq27zfR3AoS7acqnqaoWdmhJ4t+YgmJYkAMRT3VjPJxCccuIN?=
 =?us-ascii?Q?M+Zlt27sCveArLKq5ArKgTqVdU6JlrqzruVJWEiulAUB5EC6gPh9Ud/ITssK?=
 =?us-ascii?Q?5rn9HD4QzVDBuquW99L0ZDrIcEJdRweNkBwjGyRbqeA9VjKhPkMvVTAVejh9?=
 =?us-ascii?Q?sFDeZsjlqMWGXWdArFqpzCjP0o257VBUWosxo6oYl2YkaaMk3Dy1UkoPvCyH?=
 =?us-ascii?Q?mAqQnEWaOUxQrvLQRTkh5w8GWXV9lVoFN+YmMelPPBrbCCBCp2/Fh1U8lBKu?=
 =?us-ascii?Q?3qw0WE+aXaDCXDvLnIu9shWHKQanNb54de+KUkyDCp8LCpkcf0O3YkpY5/J8?=
 =?us-ascii?Q?vqkyoTNg9qXlyPIgsLTf14wl/3Ho5NdILhH5CnRSZWgbEPw53OovKOBUqewf?=
 =?us-ascii?Q?WYV6OEVvMiGMWLedwuiDPlSqkvEa86kz5T1IgqYUJdC/NlsEieFTxApC9vSI?=
 =?us-ascii?Q?CucQh8esAKbnI4JARF57+zuxNRfBnullSD+RMnrUXMIeS1Bx5IiGPhD/Ke/A?=
 =?us-ascii?Q?WHigrngkajGeqcwXggd75aFwRgISMoe5on2rW20irsTL+3W7N/dfG6ZOlzjX?=
 =?us-ascii?Q?POEFksscK3DrjTmuVlbU8wz+NWSBMnHhh6lJnU/n/uMOZUcDJmxlBrErKYFL?=
 =?us-ascii?Q?8jENI3ECmHjUzHQh3dCkl5+UKob8GWieJfFUoWrFDcMm8BX6dtP/zGPOnvlo?=
 =?us-ascii?Q?mnKW088ZK54/rINCvV9J5boAX3XTszciSSPgUkZ4QjtCJJWZn86RqSHWyn4L?=
 =?us-ascii?Q?OiUIdhc1fwp+V1gxcZVNjGfC97gig2JL4wwF2clRTTqy0nhPKQ+WwhuNdq+F?=
 =?us-ascii?Q?KwuF6qFECdpuWKilirHI+1qqtVVEk1XtJoWTRsnRJxxdO7tEwhRDshuHe2P9?=
 =?us-ascii?Q?m2b6uRSNUeLRZ5gn5V87+1ze03lEmHnDgucqwYzAFLE30lbezASemYPyPw1I?=
 =?us-ascii?Q?pt4i9zwPwkeSidkfOfj0G5ZlOifvIP/qbF7FugPkG0Ly8Mtsq/HaPWRIwf0q?=
 =?us-ascii?Q?Fk6A/TfMiddAh4kBqeKWXxIMe5tWMqF72gPcoHDuvDEZKagJ45r6h7BAkJCU?=
 =?us-ascii?Q?wV6UHlJ/aKPmgprO9BECzO1DLVamyAo4GDWcC+7X8AIYN0Z+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07d87f14-f130-4403-43ea-08de79447885
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 16:46:51.9718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +mO4WVKuiHtX+mvKsh32RYcxsR0SWdODu3KbqMwE/0hgHmTKnT1I+hbJW6TYPelGPU70KFSNbGIqMKzyi5YVLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8513
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772556416; x=1804092416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HnnWLbuujZdwzkh+/vBOTfyXDTOusM2W8SrzYtiHwIQ=;
 b=Wbg4TGjyyV4Qb2j8s9N/3xRUsYoIDWyCj45xKXIf2ts3Uwb/CB5Pefb0
 g02/4Tk2nJTbjVWnlCy0YyEb/RWRPHXkzSLwQBKrR9T2FCXayyo57hHF/
 SAaYVT3jGLTGXqPcqhVQgdOyaeh1AoHb2u97tgy9Or/iuyBnVLulU/47Y
 mH0ou8nvz4Zdi2DWlSArEg0KhNKK8Z8FouIlHxNl0AyGsZVze7DathtDy
 6PoO5ZI5ZfAcvYHsNUF/2pLpEAB7cMIDH+Ru9WDAVD2p9kg34h9fEEHfq
 7eEe2sR8rXXSiErvcmrnB/9lnKpMDQ/0Vkdq1XY/oY/WEt0FjTk0Dx7x6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wbg4TGjy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ixgbe: E610: update
 ACI command structs with EEE fields
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
X-Rspamd-Queue-Id: 482681F4124
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 20 January 2026 19:15
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr <=
aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ixgbe: E610: update AC=
I command structs with EEE fields
>
> There were recent changes in some of the ACI commands, which have been ex=
tended with EEE related fields.
> Set PHY Config, Get PHY Caps and Get Link Info have been affected.
>
> Align SW structs to the recent FW changes.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c    |  2 ++
> .../net/ethernet/intel/ixgbe/ixgbe_type_e610.h   | 16 +++++++++-------
> 2 files changed, 11 insertions(+), 7 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
