Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E92970F685
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 14:34:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD8F3611BD;
	Wed, 24 May 2023 12:34:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD8F3611BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684931652;
	bh=9EC6PNpIQi1FCE5kINI6l/cwmLE6tPFu/z/etkH5WXA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jmxsZhqINzN7qTwkDZlTtChNn52ptvVkWlN4EVTSkSQIhtDrbJ0yagdDUq0+sRUvy
	 cM2y9tnIpO5YPPhCztWzSu4ca8ex2jzS6WuQKWsrT+i+75C8Qcmtuv6HspAJaw3pZ4
	 LUtXYVkCVavbC+K4NbChtzmCR5qYca7uCBTtg6KO+EOA610LNEW7B2iKmQ/UZrIXX+
	 bqLIgj9Uk654QXC676Utu4HyctrYc++Ga79wkiO5aS/gTJuqfI1o1ws3U0k1zDTQIK
	 0MZmFdlh12PPpoMA4Fz7SDeKsF2Vp+fEYQ99MH4AFarZRaiDUfI2EQ2En0PHKQGeGA
	 FTabpc6/PtFGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEaMmNztlBMt; Wed, 24 May 2023 12:34:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A87C6119C;
	Wed, 24 May 2023 12:34:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A87C6119C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF7571BF354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B450841605
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B450841605
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFAm5KKCNqsL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 12:34:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C48B400C7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C48B400C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:34:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="353571738"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="353571738"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="737285964"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="737285964"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 24 May 2023 05:31:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 05:31:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 05:31:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 05:31:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZNlRF31OLOmlkYHCs+0fJp6nSbKUzPOVjY2GwHAoU7VknfGb48nJ1v0xEKOeQ8ruIMr0M7FTgmkwlWrqYFeEYB8WS3ZeiSZtBaS5DVedQWBUnmKAWDhvBh/ELYNAq0B7hM1+xtLMOCtYpOHxrhZxppDY8nvlOPNKZb9bBgQVPhMak838ZeQxgSqkZPJchOnoHH/ZGhUAYAo5puZXz5BFgkYa31Mqa7L9b5woSDAOF/SZcnQGWPUqyEI1l3jQ8y6B+HLjSmkGKGIA+qOUXoHQsmkVqh1HRYBwxlgjtDrdFDch1B/Ov9MQQ5dhJVrHbgBZdpUGcy/fmC6oDFmfue7kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U52dkw5VMzAeSg2daHm6G21hw5/BupFWqw6F6r1R6LU=;
 b=B76jXXQoUweyyCPk7ps+Zv4m6M8xmFjoMDrwLUZbj+xfDJs7KwqvL7XEG+JSqSFafgyG0LzjBGCY3TjTFsvaVPPewmmd9Y5fRDNqcAx5xtREIhu9M8thxdFaelQyHNnFtc0dFwfLKrOjNJThqgzXpsOcfr8WO1y3LvKhvzARITrD3doam6s1y0foKhXRUyqdEdVDR8OyDk8pUFllWwam6lCZcH56pGxXh1klaR1ACkA95ok1Qsj9U40RE2EznMmtjgAFrjPK+6YanSXa0qPe6D5J3K3/kZ2neepf8tUzfXdjecYyLaWBOn6Z5ws2usu3YkM4fH/IP8UmMqU8OxbExw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DS7PR11MB6079.namprd11.prod.outlook.com (2603:10b6:8:85::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.27; Wed, 24 May
 2023 12:31:57 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aeae:8c12:c98a:7f21]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aeae:8c12:c98a:7f21%3]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 12:31:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Grant Grundler
 <grundler@chromium.org>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Neftin,
 Sasha" <sasha.neftin@intel.com>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Thread-Topic: [PATCH] igb: Fix igb_down hung on surprise removal
Thread-Index: AQHZjaDt8QlYFL7ll06AyUjwV/9G6q9pW+eQ
Date: Wed, 24 May 2023 12:31:57 +0000
Message-ID: <SJ0PR11MB5866456B9007E3DC55FD8728E5419@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
 <CALs4sv2+Uu=Bry=B3FYzWdNrHjGWDvPCDhTFcNERVpWTjpmEyA@mail.gmail.com>
 <CANEJEGuzoBa_yYHRCa0KygUe=AOhUkSg4u6gWx+QNCuGtKod2Q@mail.gmail.com>
 <52cfebaf-79f6-c318-c14b-3716555d0e8f@intel.com>
In-Reply-To: <52cfebaf-79f6-c318-c14b-3716555d0e8f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DS7PR11MB6079:EE_
x-ms-office365-filtering-correlation-id: 585d33c3-11d9-4f2c-e743-08db5c52dd9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: reiGHOE/2A7u0kFlYNZ8qT3CrunazgRVQiOPLvCclv5RRR8N/Ct4kx2TnAUFg20mQd6zDtsLfC0RKxtTxXlAgRGGLqSzWnWzeW3jq1DSkOBkwcuZ9MVbPp03Y2qBKXeMzXh8GNaU1bl6oDxnZB237293rH+3sucELS8X3zq2h52aBziLxvvMBL3XPePgImhukc78Qk88jayXg5uI+tA8Urvn/7LqJVLgMdlukt3JPyq4zxNYTmCBnCf5y5E09WWzN7Rq5d17g6G20T8l2kszsrBm+3cSXOFuviD8EtV6LrK1Xv/qTg9iJ7nltxDCA492dmU6fHZgWR8F4zDwOQg1yYDQ0TXrUtbdclA9bfH/WEB/GGTHXSkKGpyG+SPv8o7PimN2GoMZihqELV6HdMz+3yjuNE7NAJV7NpjIv6Cej7aT4U9jCmVN1eIJz9Iy3paEH9Rp9BociiSTYmQUKuk8QDWZcLlv11dU2UcJk0m6Mbo2mZyjI6APYiWqmxSHnzpFep6KMtUfav9Po3B2xs3NmgoEDVgnGQw/zHw24K+uszUO+h0j3eEWCk56O2OeXguN8cDxQf7mxKfGbTWRsPDb+JDkRrmKB6V41Jrs4NsjpeXX3jg1Wxd2W/XIRoPwG0zU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(39860400002)(346002)(396003)(366004)(451199021)(54906003)(38070700005)(7696005)(41300700001)(110136005)(316002)(55016003)(66946007)(66446008)(4326008)(66476007)(66556008)(6636002)(76116006)(64756008)(71200400001)(8936002)(8676002)(5660300002)(52536014)(478600001)(86362001)(38100700002)(82960400001)(6506007)(9686003)(122000001)(33656002)(53546011)(26005)(7416002)(186003)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2NwQ0NGMGZuOEVTODRubFhRRk85K3p2TTN1eER1eHZvQ2J2YkNIUDFQZFpT?=
 =?utf-8?B?L1kwZmpqZ3R0dGVkbUV5VmF5RE9NTU5IVkdPNnBqeXVEZXZwWTFDYnJzTWFl?=
 =?utf-8?B?S0NOclJBbVlNUWFoVmJML0xUd2c2ZXBDbnZOeTlRY1Q3QVJuZmlwa21CSmx5?=
 =?utf-8?B?cnZlejdZZkdKbzZySEt4YWdkcDhnKzBOMWwwSmFhTVF0UW1zVXQ2cDBwbURY?=
 =?utf-8?B?T2dPVXZZWGNVbHp0ZnU4c2o3b3loRWk5OE5JY2puQzdXRzBNUG9kZ1FCUllL?=
 =?utf-8?B?d1FMUUxxc0o2NEtVcmpwNHVEZkFtRmdPWmZnZllkVlB1V2xxbnpNNkJKTVQ5?=
 =?utf-8?B?ZFZIQ0hKclBQL0cveUdwVXppRy9keUZ4TkJvMHhqbUVjWjJMSVBUWTdxLzFm?=
 =?utf-8?B?aE01elRYQUdvWDY1QzNobm44akpRYVhTSk84bXhJeEFjREZOalhIclRNRXFJ?=
 =?utf-8?B?T1FXN1ZrY203TURqS1hhVVBtNzRVMVcrcEpaYjdWbm5pU2tvem4rMVY1VEx6?=
 =?utf-8?B?Vmp2TDErMUs0RGJuYXFORVlBL3BlTjlhWGp0ZE00NGJ6aUxIQk5aRjQ4Kzk2?=
 =?utf-8?B?clpPTXZnemF6MlZieEU2WDhPUW8wWHVnNWZVdlhLNXpKQ3Y3U1lTNm9TWlFk?=
 =?utf-8?B?OGJ4WkkwcENCQlVzRlBUMUNKbGpiSzhxa2NBNi8rUUlaUDFtSUsyeUZ4SWJN?=
 =?utf-8?B?Ty9xZVhWTyttNTF6NHA0aFFxRm9hMkt1cGtZeXBMWk5zN29LRTcwcjV5TnNq?=
 =?utf-8?B?RHQ0VU1zL09ZcnQwU2dqUG1iR2JMMTBxdTB1bmZnTVdONzRMYlc3eUNRRC9o?=
 =?utf-8?B?QXgzR3VwVEZCM1Q1NXlsZDhmMTJwaVpvY1JFTHV1TW5DclhaT1pMNTJrb3c1?=
 =?utf-8?B?cEpNYVNJY2hVekxORXRQTUFjOC8zN1NmclA4dUg3REdOVjcvOFpMaVRtNk10?=
 =?utf-8?B?ZlprZTVkc2dIZ0o3Q3BlSXB6WkxQa0dIZDRVRVVWSDZhU0p3ZVMzNzdHbDVm?=
 =?utf-8?B?ckRQUmJBQ3RnNi9GYkZISmVVVFpPdHlOYmVrbnZGcGZJMTkxSCtvNit6T2ll?=
 =?utf-8?B?ckdnNDFGaTlUK1VKSVBqc0tJSXNyWVVSbTgzd3N6YkhWRTlWdVdCai9PVGFS?=
 =?utf-8?B?ZE0ydzdsT2EzR05ZaS96Y052bjh0QWMraTNFQVBNL0VKOXBRenRZdzl4VDNS?=
 =?utf-8?B?L256cU5NNmp3N2E4V09tNDBoYVQ2R1FmRzdYY00xTllBSmxwME9ERk42Q3Za?=
 =?utf-8?B?dGFHQVV5T1dXSEIra0NuVFBIN3ZkUzRMT1JCNDRLbFVqVlVLUWg5SFE1bEln?=
 =?utf-8?B?QUNhS3U1a2tHOC8wVzI1c1hsbXV4OWthRVZ2a3hmRlNpQTRLM2k1a0hZb0J3?=
 =?utf-8?B?RTd6M0RqcC8ybkJaa3V6ekdldHFEZExDWkxZQ1hWZ0JtSWs0NEhjQUsybi9M?=
 =?utf-8?B?a09YaFhQN1QrZ0NlTGtpb25zTlB1SnpzV0pJN1NtVzFGcDlJUDl5YXYzRlN6?=
 =?utf-8?B?MlVDb0ZpT21sd3pwcUNpSGpxaUxtOEV0NkJwYTJiK2JFU3hKR291QjhPQXgv?=
 =?utf-8?B?V0kxSEh2KzhJWDdiZU5EMmJaSldJbVhzTHE4TXZ0dHEvT1VNTTF0YjNBM3F3?=
 =?utf-8?B?R1Q4QjN4MkNDZGRkVWNQczUwTmpmQm5kaHpPT1loZThhaVN2c3UyRk1GMlZp?=
 =?utf-8?B?QTRZd3FlY2VUTGJEcUNJMjZpZmR1ZzBvMnU1bXVLeWlvblU4aGhzQWFKWmtZ?=
 =?utf-8?B?UTNSNEtndnhManVFRGlKOWFZSGZMVm9rMVFYMVJKcHdWL042bXR0QlRhUUxx?=
 =?utf-8?B?cnE1SFpKa3d0Si9XZzlidjNic08zRStjZjF4L20rTDFYL0V0YVZZcnhITnhk?=
 =?utf-8?B?dldSemdEWll3emFuSGVWeXdXZmhtL1FWbXdrOFAwVUtsR3k1alRFRUhGU0xC?=
 =?utf-8?B?WE41Vm4zK1Nrbk5kZTc0OFJGbnp1Y09NWUlOVGR4TmpCcW8rMDNZNUxmbHlQ?=
 =?utf-8?B?UUdKY1hiSlJFNCtNc2c3YXZoUVNpMjRSdnJDYXpBM1c3N3BhOUg0OHcrRGlL?=
 =?utf-8?B?anY1OEF1Q3YweFJoUHdtZ1JxL3BNb0hhQTV5MVdsQjVzdjlsV0crYnRTcnJ3?=
 =?utf-8?B?amdhTzltcERRMGtFS3pXOEZiUUZMcC9YWHlWVXdZWm5sYUM1Wnp3RkNyMm5L?=
 =?utf-8?B?Ync9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 585d33c3-11d9-4f2c-e743-08db5c52dd9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2023 12:31:57.7886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fg9kywFmpcUIwFxYwyi7n/lgdbpRCRz6zsE6HAwyRQ8MrPKfF49y/2VW0dpM3u2fED90xnTad2fBqaOXTotp4cqW9xF+/kZVO+R0S92dDC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6079
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684931645; x=1716467645;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U52dkw5VMzAeSg2daHm6G21hw5/BupFWqw6F6r1R6LU=;
 b=IFygBuUt2nafWlPJvubiSizvHMSNP62CRqq5XMp2hh0LTg/uPcpXyMSt
 QmGVK+gFXU18KgrbwCfBbWgDLgbmXqQrCoym7szWzsc+PL7+yzqCAadrk
 uy94FeCyPIC2zLUrOITc8fiVfUJy3ex0S7BeWBNmPiZFfTxFlUN3AJM33
 OsUpx5u3uVnSwzzu7foJDYzQ083Mg1PRr3vMLSYAu4o58pwPptkUnfLif
 ttvbhIwuIGGJ+09RNOgkB40Zt9bP3HH41hJRKB/+xeIqOP+Q7JSFbF7Jx
 OxYi819+OuEocYHqKETacQjVDEj211V1bkirzC0gOCJeWfOBy+Caw5vu5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IFygBuUt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix igb_down hung on surprise
 removal
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ying Hsu <yinghsu@chromium.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

R29vZCBkYXkgVG9ueQ0KDQpXZSByZXZpZXdlZCB0aGUgcGF0Y2ggYW5kIGhhdmUgbm90aGluZyBh
Z2FpbnN0Lg0KDQpXaXRoIHRoZSBiZXN0IHJlZ2FyZHMNCkFsZXgNCk5EIElUUCBMaW51eCA0MEcg
YmFzZSBkcml2ZXIgVEwgDQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj4gU2Vu
dDogVHVlc2RheSwgTWF5IDIzLCAyMDIzIDg6MDQgUE0NCj4gVG86IEdyYW50IEdydW5kbGVyIDxn
cnVuZGxlckBjaHJvbWl1bS5vcmc+OyBQYXZhbiBDaGViYmkNCj4gPHBhdmFuLmNoZWJiaUBicm9h
ZGNvbS5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5kcg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBp
bnRlbC5jb20+OyBOZWZ0aW4sIFNhc2hhIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPjsNCj4gUnVp
bnNraXksIERpbWEgPGRpbWEucnVpbnNraXlAaW50ZWwuY29tPg0KPiBDYzogWWluZyBIc3UgPHlp
bmdoc3VAY2hyb21pdW0ub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgRGF2aWQgUy4NCj4g
TWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29n
bGUuY29tPjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEJyYW5kZWJ1cmcs
IEplc3NlDQo+IDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT47IGludGVsLQ0KPiB3aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBpZ2I6IEZp
eCBpZ2JfZG93biBodW5nIG9uIHN1cnByaXNlIHJlbW92YWwNCj4gDQo+IE9uIDUvMjIvMjAyMyAx
OjE2IFBNLCBHcmFudCBHcnVuZGxlciB3cm90ZToNCj4gPiBPbiBUaHUsIE1heSAxOCwgMjAyMyBh
dCAzOjM24oCvQU0gUGF2YW4gQ2hlYmJpDQo+IDxwYXZhbi5jaGViYmlAYnJvYWRjb20uY29tPiB3
cm90ZToNCj4gPj4NCj4gPj4gT24gVGh1LCBNYXkgMTgsIDIwMjMgYXQgMTI6NTjigK9QTSBZaW5n
IEhzdSA8eWluZ2hzdUBjaHJvbWl1bS5vcmc+DQo+IHdyb3RlOg0KPiA+Pj4NCj4gPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiA+Pj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiA+Pj4gaW5kZXgg
NTg4NzJhNGMyNTQwLi5hOGIyMTczNjhjYTEgMTAwNjQ0DQo+ID4+PiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiA+Pj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4gPj4+IEBAIC05NTgxLDYgKzk1ODEsMTEg
QEAgc3RhdGljIHBjaV9lcnNfcmVzdWx0X3QNCj4gaWdiX2lvX2Vycm9yX2RldGVjdGVkKHN0cnVj
dCBwY2lfZGV2ICpwZGV2LA0KPiA+Pj4gICAgICAgICAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRl
diA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2KTsNCj4gPj4+ICAgICAgICAgIHN0cnVjdCBpZ2JfYWRh
cHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7DQo+ID4+Pg0KPiA+Pj4gKyAgICAg
ICBpZiAoc3RhdGUgPT0gcGNpX2NoYW5uZWxfaW9fbm9ybWFsKSB7DQo+ID4+PiArICAgICAgICAg
ICAgICAgZGV2X3dhcm4oJnBkZXYtPmRldiwgIk5vbi1jb3JyZWN0YWJsZSBub24tZmF0YWwgZXJy
b3INCj4gcmVwb3J0ZWQuXG4iKTsNCj4gPj4+ICsgICAgICAgICAgICAgICByZXR1cm4gUENJX0VS
U19SRVNVTFRfQ0FOX1JFQ09WRVI7DQo+ID4+PiArICAgICAgIH0NCj4gPj4+ICsNCj4gPj4NCj4g
Pj4gVGhpcyBjb2RlIG1heSBiZSBnb29kIHRvIGhhdmUuIEJ1dCBub3Qgc3VyZSBpZiB0aGlzIHNo
b3VsZCBiZSB0aGUgZml4DQo+ID4+IGZvciBpZ2JfZG93bigpIHN5bmNocm9uaXphdGlvbi4NCj4g
Pg0KPiA+IEkgaGF2ZSB0aGUgc2FtZSBvcGluaW9uLiBUaGlzIGFwcGVhcnMgdG8gc29sdmUgdGhl
IHByb2JsZW0gLSBidXQgSQ0KPiA+IGRvbid0IGtub3cgaWYgdGhlcmUgaXMgYSBiZXR0ZXIgd2F5
IHRvIHNvbHZlIHRoaXMgcHJvYmxlbS4NCj4gPg0KPiA+PiBJbnRlbCBndXlzIG1heSBjb21tZW50
Lg0KPiA+DQo+ID4gUGluZz8gQ2FuIHdlIHBsZWFzZSBnZXQgZmVlZGJhY2sgZnJvbSBJR0IvSUdD
IG1haW50YWluZXJzIHRoaXMgd2Vlaz8NCj4gPg0KPiA+IChJIGhvcGUgaWdjIG1haW50YWluZXJz
IGNhbiBjb25maXJtIHRoaXMgaXNuJ3QgYW4gaXNzdWUgZm9yIGlnYy4pDQo+IA0KPiBBZGRpbmcg
c29tZSBvZiB0aGUgaWdiIGFuZCBpZ2MgZGV2ZWxvcGVycy4NCj4gDQo+ID4gY2hlZXJzLA0KPiA+
IGdyYW50DQo+ID4NCj4gPj4NCj4gPj4+ICAgICAgICAgIG5ldGlmX2RldmljZV9kZXRhY2gobmV0
ZGV2KTsNCj4gPj4+DQo+ID4+PiAgICAgICAgICBpZiAoc3RhdGUgPT0gcGNpX2NoYW5uZWxfaW9f
cGVybV9mYWlsdXJlKQ0KPiA+Pj4gLS0NCj4gPj4+IDIuNDAuMS42MDYuZ2E0YjFiMTI4ZDYtZ29v
Zw0KPiA+Pj4NCj4gPj4+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
