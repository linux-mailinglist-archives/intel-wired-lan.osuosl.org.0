Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD2D8A6F51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 17:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62B3B405B4;
	Tue, 16 Apr 2024 15:06:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SsRzYYLjTL-t; Tue, 16 Apr 2024 15:06:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64512405BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713280007;
	bh=QRIZaOxx8ztPai5Q84FT4JzWLPix0cYcyknVreXhLF0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pEz68PoGH/xFuL6S/ZoIOAWGj4Ab/1SlM2Txt+zKzOkOVuU6ASNrdwm3+Q1TZm2CF
	 Nv0Ik/NZRZyuAOv55Go27+CTD+PCPO24wzTO5YwhNToxWMPCVtgZtSA81cEX8THwSY
	 Oz16QFzDvalvuhqPpKrjdSlVYW421MGVEP3eILCY04qwN+PjVCM/Vgv93XrkYOHkTh
	 goognoSIpfbJRr5Dmvl4lqAQAlitm3Bi0nXt3HKG9AxJCqUxW0YRD1raPFdGW8/F3c
	 G0uUWZjSIAggUbQs5H4/mBoYEZXauwzGjcZODdbl3bdmAnZ/w35DUCmvqnfeviMhLd
	 lcKCS+1YkoMHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64512405BE;
	Tue, 16 Apr 2024 15:06:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 160081BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 15:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0157F819E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 15:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HkriKl9zcaEP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 15:06:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F278981423
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F278981423
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F278981423
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 15:06:39 +0000 (UTC)
X-CSE-ConnectionGUID: OhTdfTs/RLSAq1YrfPQFew==
X-CSE-MsgGUID: NxIt47guSy6xAMrN3DSLtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12512426"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="12512426"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 08:06:38 -0700
X-CSE-ConnectionGUID: qclXDwaNQDKtP+AtWw8PVQ==
X-CSE-MsgGUID: h/28QpLAQ3qhUuqkTXz0Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22344917"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 08:06:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 08:06:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 08:06:36 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 08:06:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKbdgaRvS83Zrc6am27qARX9rCQnRyDpKCExlcc8DTjXvXN8ywdnI7ih3NX4/hkOxLXlxFGfz0Wyidryec8tBKcUtM1EOZ03itS33hxfFeb77H0y1LmvnIYDZCrf4nAQrINs8AwrXyWqg9mnbXteJef1PLl84kts/4JWu+Dl693r/oDvKilOuvp+0s173DK6PjUypdoOIRf6sQ5GIoTmW8i1IGRCYhbERQAswYRSUkMAp0fkG1mBH6DRPyCd+bJLo2ZifqFD4fKuQXxxUJJDptAVv3kRf+zXj5ufkiHM9hoa+nxFUd3dQuThHTPwiMRYllgzyLi6bmVLzTOncaW1YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRIZaOxx8ztPai5Q84FT4JzWLPix0cYcyknVreXhLF0=;
 b=ahSgdqq9ABbu+79FCD7mHm6CGFIPIXbdSytmp2FdVbacY2CObV56z9v4EYoBHTW5dcTQS3gT1oNCT+CBxuIAUECdwTkrScalC6+9tpkjxX6WGgHAxY9cv6cSbMef3PrS/BRi0rjMlQ/cLspFGVL3XiTb21X8dHirVJA9nE6PzDNAccikxzLIw4cqBJcb9dE+uTo1hLJUcQvxPlKiz6DoTDQojSs5qujiDuku+QGcVkAU8bKVcV2LVPopY2fxr4vuuBl9INUI0H9Bfvp5/lRVJYEurmWZYuVo3RSwmb7hKqisBYYwhILFKo0Ot/QE64fRf1IxmdwzsLBeTsyYQm7scg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SJ0PR11MB4974.namprd11.prod.outlook.com (2603:10b6:a03:2d6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Tue, 16 Apr
 2024 15:06:34 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8%3]) with mapi id 15.20.7472.027; Tue, 16 Apr 2024
 15:06:34 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5] ice: Add automatic VF
 reset on Tx MDD events
Thread-Index: AQHahpkhndhrf2Sis0KwNztK0x5gB7FeZSaAgAyswxA=
Date: Tue, 16 Apr 2024 15:06:34 +0000
Message-ID: <SJ0PR11MB58650E908FAE86CBDDBA5DFC8F082@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240404140451.504359-1-marcin.szycik@linux.intel.com>
 <20240408133217.GI26556@kernel.org>
In-Reply-To: <20240408133217.GI26556@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SJ0PR11MB4974:EE_
x-ms-office365-filtering-correlation-id: 7e4c3bc6-0e8c-4eb6-36f1-08dc5e26ce8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dz4wJGbN8hPszWw4xYaJauVCDb7PfgtnL9KIMVVlBMQVXvTAseuapqc/PH30cgXZawGdg5QTkbwT/a/BmsDeHZP0ZG9ysp6txzYdg+9q5ZQOHdtRRf1o/BFmf5x6PvOaXfCJMNq8mysXo1Gw8f4cfLVzQpmLscjl4zB9c4f/acI7ZvdbcZWIk/K++hxhIdSgC7xEpYHNlDzGUXWFMdph0iR0ULYUhy2Y6G5q6Yqh/mIZGubUbHQK4Z67AN4fP5pIY/0AYq3qrG7j2jp47Suig3LW/YRjhMKn1S4a/czyCkW4F4tXxn4nmYtBZC4rBshun03hoewPWDkP003wt0Inx179UbwFbf5zG3uJRd9C/59JYb7XnC3TucJ2lhdqGUgY/VOD5bY9pGspR+uYzOfS0ZW5S9E5euXPWcbNruKTyLDQBsSLtL5Ug8bSElD8jfHVQlbFhb4ZCcSR+K65FwzIOre51hyQiRaRdyuuTcyVBKijqzZnaan3m4/Jhrb1oKF0eqRTV0oz54cVhtp17UxHbf1498O2UBte7swbI7UwmEqCSLtbgP9+X5Ou/4gHhjizuSuQ5wIeyAodr7uf/+6HJT58B8IxpGDSSEz0sGLR+RHh9Reh627NrLX1AtnUl73P44WZQI/S5CfXIu06oU3troprN8NVcaa+aQ/etHQXUPlEYy9affY1VNIxZSWBog7naIc39smJq40yxV5TdUE2cXHqzzCdNqdqZ43m52K6ETg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WsRA8rUigIfgQ9QH3Xvlf5WVBIiwi058SiWLgJ62ZOJgX3lXXa4OWnHedo5s?=
 =?us-ascii?Q?+d3THBrJsB5WCL8xF2vrRKXnC87dpgzEG3bTfJLSgf88Zyt5ldsw6Z0itTti?=
 =?us-ascii?Q?sFcr/Fz5yYHOaJD6yIOpUISSQ6sjBH455cIOnrSFPCfKqYUlrxpb0A/2HMrw?=
 =?us-ascii?Q?B8SXBDtIHOvTANcJi1SWNmS9Y/nyZ5GhjVwja3OZQ8BiWblGKi6XUsL8BTIQ?=
 =?us-ascii?Q?fGmnwDtLsJ6Pfq/YSl6qaAbjcGdT9ztSZ3woDMH2eFtTOFunsrrn6iO5BeyF?=
 =?us-ascii?Q?7PdcGU/eruIFUBN0NB+fz42YE+13Z3/Ac5Uh8Lj34cH1BO/xaTUGoKYpqmZx?=
 =?us-ascii?Q?9ZS2lkEBr0FHsPwMJb5/BOicS4CxV24nErb/kln9bAlFAkG8/5lMAmld1cMz?=
 =?us-ascii?Q?Uhnooo2jfXwhFec11WGV5YCl8azbNDzgeTfwim0WYiR97GJqxFXcBBqrQ3Pg?=
 =?us-ascii?Q?1eKszQY/4hcTt/xpEo32luFAI9s6kaD+u4avfknxEbqhZL7eDAXqu6ZV6K4W?=
 =?us-ascii?Q?7e5e6xhc1xblryhZZKMXT5tRW6u6VcAJZuFhspvB8b0gImkHzG3CarhOUS3e?=
 =?us-ascii?Q?CEO1UD98aHgVhpt30gpGz/qC6hqcr+BPXAY5OPQQVx4J8pX7Kl73Z6tYWDH0?=
 =?us-ascii?Q?h4MgZGiPr8N5XLThBnYMvTjfURM81MSnAXs7z9nweZ9ruJW2Z9HWUO7lpnXW?=
 =?us-ascii?Q?fyKZJ8f4eDh3gzmHcpo0LFsvXwhJpNSl7C4TGf3NPdMQoM3Q3CVy4gBgw2iT?=
 =?us-ascii?Q?4eHa5jg+Nn7fWJR1h0S6BDEL1/CfYWO7+LNStoV7UJcPIhJ0+gW3wZ7yJApB?=
 =?us-ascii?Q?QKxhilLqKCj1picfxQD9meKFCLVU8sq2gxAOUIx9oWs6Up+a+EjhHU08mjHi?=
 =?us-ascii?Q?BrnxKWSZCqXWrrN0nA5eKBYp4l4MFUaxC33Pa3fJ2TKs1x95ffqPfM0oe+AS?=
 =?us-ascii?Q?sgqCJeO37GpJZcJRjPk/A53DpzaJo52+DLl2zKVibdH9diDYBYvjTbwCBMZr?=
 =?us-ascii?Q?XRUYEVzXUjxz4wkMpTtvg55Lb09o1OXa5wSmmB+uI/SbU7/3k/DtA0o3kFio?=
 =?us-ascii?Q?dATu80STJZUdozUdsO6qB88fD96An3tBCBeBXmfy4jorSqj5TaR9stIccaYT?=
 =?us-ascii?Q?QZc3chBZkBK9H1IeDVgC0B6Ln/V/1gmKj4gHV9mXz6cPy/EYBDuP236hUxxd?=
 =?us-ascii?Q?QRZJop+9aapkcU6ZJU52jxGHteBNKEjPh53lPUEksBpdxXii+Ey+1l0ZG6MZ?=
 =?us-ascii?Q?cnYtz2VQDSMgzqcYPF//Uz4t+UV847Dtrsjy1d2y2dusWrEIfnkPbH8N/HT6?=
 =?us-ascii?Q?lXTfLIjjQrV9HzUeWXkhwcjgNIXMQwjcOueZKBiVZhT1jJaj+KLe503LPzXn?=
 =?us-ascii?Q?mAZe0Bl7jaPjTBCxkXtQ0lUGinKL/Sj/37yO7p630Xgs3+8UbjBWcAdH1koB?=
 =?us-ascii?Q?UllK5eluDDoqDqzS3q6wS38qoKNMqhmi3wdKRiux2u6H0rPsQHiKJ2JEU1rj?=
 =?us-ascii?Q?nXLGvk3HkQGK2X2vDDuaaKJxK9gjORV6/Uv8n++vHaZYhat9a7WKBIl0ooGp?=
 =?us-ascii?Q?AJ1hPzgyYuk0Crm445r/rVdt2HK0mZUolSnyRLwK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e4c3bc6-0e8c-4eb6-36f1-08dc5e26ce8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2024 15:06:34.6746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wyIykM5X3BBBDlXrDFaBa824YvmCGIuX/8J5oUimO4KEwkD1qV37P1cu7lS8uBDAYFGlymhrcgqMQufvwMKaz5TZ3ksPm2DVKoUHPh2hl4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713280000; x=1744816000;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QRIZaOxx8ztPai5Q84FT4JzWLPix0cYcyknVreXhLF0=;
 b=lTiWbFV/aOLlo6A9N0MgR71OUPPsmmo6kaE7U7cpd10b/Y2D07lFA/NJ
 /msmatkWWFU0wbJ9J2uhLMxeOmjZj30W9C7RtXWJ6DtAHxC+Km+x/t2O1
 KAyGbmIgxcZqRKKBxqGl6HgnKOnCB5M/5+m+xwxy8fWZdWeorRRJPZZRd
 bU06d9DIzRByib9XXD02skWeKmWYA5bB1A4JRh8vPS0FXnmtP3UP4rH9i
 wlNBL9usEWxQG/EVK4caQreSD4joap5L6Wx52MNjZPEyKbA80ACIk1OC7
 IxHqkgNRQC6RKg71ARe1/xh27P6qcEM6r2EBydY/qDfQqO5KghEeKZLKs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lTiWbFV/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ice: Add automatic VF
 reset on Tx MDD events
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
Cc: "Chmielewski, Pawel" <pawel.chmielewski@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Wang,
 Liang-min" <liang-min.wang@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Monday, April 8, 2024 3:32 PM
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Drewek, Wojciec=
h
> <wojciech.drewek@intel.com>; netdev@vger.kernel.org; Chmielewski, Pawel
> <pawel.chmielewski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Wang, Liang-min <liang-min.wang@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ice: Add automatic VF =
reset on
> Tx MDD events
>=20
> On Thu, Apr 04, 2024 at 04:04:51PM +0200, Marcin Szycik wrote:
> > In cases when VF sends malformed packets that are classified as
> > malicious, it can cause Tx queue to freeze as a result of Malicious
> > Driver Detection event. Such malformed packets can appear as a result
> > of a faulty userspace app running on VF. This frozen queue can be
> > stuck for several minutes being unusable.
> >
> > User might prefer to immediately bring the VF back to operational
> > state after such event, which can be done by automatically resetting
> > the VF which caused MDD. This is already implemented for Rx events
> > (mdd-auto-reset-vf flag private flag needs to be set).
> >
> > Extend the VF auto reset to also cover Tx MDD events. When any MDD
> > event occurs on VF (Tx or Rx) and the mdd-auto-reset-vf private flag
> > is set, perform a graceful VF reset to quickly bring it back to operati=
onal state.
> >
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
> > Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
> > Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



