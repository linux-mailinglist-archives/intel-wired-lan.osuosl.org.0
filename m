Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0957DEC4F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 06:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B008543342;
	Thu,  2 Nov 2023 05:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B008543342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698903223;
	bh=b+yya1ngX2QrEScfmr0kEEb+ZIvHskx0dpVZdmBLFbo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L1jwjTT+goUJE6vV6izxL4yRi0SH0QyqOcbJprxdMrKc73yaEXA2+xpRwRlCgcuBv
	 4kJNPHkzbLiNAqPiMfQ+WSubFKBGqJFz9YsYCvXR+A3QCnYBYQ5oUF2Ccx2D2K4ioC
	 2pMeBX+Jt4kXGb4HSLF4wldH3xGQev6VJEmjWtTaJERnP1x5ay6BhmuxC+519GC5d5
	 4pRVKE7DP+MJCUlKEvEgWrEDqI0MgmUL7h9+EGwBrWtj9L312RH1nm/ioeuizxjNGU
	 CVi2ALScE5QtFUuprxQkmvkE08x0BTpufwu1zAUy4Tgagbs6BHoMPV7551i/qQIrsV
	 hH6Sysrkd106w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIa6HCWudXNW; Thu,  2 Nov 2023 05:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2710B4333C;
	Thu,  2 Nov 2023 05:33:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2710B4333C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 01E271BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAAEC43338
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:33:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAAEC43338
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ThNaCZfd-Swd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 05:33:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6EDC4329D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6EDC4329D
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="388459380"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; d="scan'208";a="388459380"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 22:33:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; 
   d="scan'208";a="2421008"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2023 22:33:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 22:33:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 22:33:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 22:33:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 1 Nov 2023 22:33:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=amdKA3IY44z3mHYBZ47ytHAwslSPnAKs02Om/KlmLRrFedxekKh8FTnGcYKiDK8TBlrMvw+dTGc+6fJj8msM9N3tUHKN6Fu+y43r0O0fv+yvjYl5gQBBYsT6MDF2xjLjkXNo3jQEq5ZgeLDn+lQzwCRwZEg1f3eEOE6p++hwHlsaH8uc2++jmhRN1+qyAm9CAH5Qgq93E6+HzFiDB9zOAzpL0gvEJ+Z0xt7KP28SdAbr92XxeTM7X8iEpRqFqzD7QDGY0GgvooKsJ4KGF7PMy6sPd9bvHFVCYwxr/3PhjpmGCPbExX9iYzJ2AzLLqpUcE5LTPj3uJLMhV+n357P1NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NzmstbtCAdhL3ZX5JJf5Gisv0Sa7W8x/N3aDcRwf6g8=;
 b=gHlX7vVIWDXot8rl1fJ4bzRUf2s/viquBGcKeBvFyE+iqvAIQHgdQx66/mCFwZhtTifDl5MaBY/Db41yiGGzT/zkqZZ/4HTgiOySYKgf3iI9is5IxCqdoMJQcxur3BEd5tMt2phQgPoYIssZ3EbnbTTrWpSgUHYCbGmmni8m3CA+rfYvuzp7NpzMf5yJw8vHFC/RAqbYkuJpDvkbs3oYJ7wC4nOsVCWIz4WK/AVh5YAIY6w6qSAdoOvLfRlVX31uUY3UPVsILvEGA9dbOmrlz4qku8wiAisOPYQ9Mtgph5Mi2SOFpzzJ9JILutWrN+xsufGJ49e4hzFP+8Ynf5mVqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ2PR11MB8515.namprd11.prod.outlook.com (2603:10b6:a03:568::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Thu, 2 Nov
 2023 05:33:25 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.021; Thu, 2 Nov 2023
 05:33:25 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Fix devlink port
 unregistering
Thread-Index: AQHaBnjrR+XAm/L5CUKunACDYy6s7rBmjoqg
Date: Thu, 2 Nov 2023 05:33:25 +0000
Message-ID: <BL0PR11MB31226F590810C63CB53B151FBDA6A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231024125109.844045-1-ivecera@redhat.com>
 <20231024125109.844045-2-ivecera@redhat.com>
In-Reply-To: <20231024125109.844045-2-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ2PR11MB8515:EE_
x-ms-office365-filtering-correlation-id: 2df011f1-ee22-4aa5-c1a0-08dbdb653c91
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ujQz0Etcn32bTx0B6LnUgFKEP/gRyPKc9Pcy6yewkMBp5AjWacztDYGJ6eFY+6d7M196No/FOOi8vJvq1g0QCABPw3hiuDOZcLNHfxrmw3wUrX1FrSPbp+DhpnXKr46LuqIC2Nw+MDNDq7CbXfc0pmWx49nx04JNej54mLEgec1tcIq3/dEWMCziZ7DNDDdGYBmQCqrPaGzAzTG6EOQQfiA2w4okkLL1wU6M+Iwrx4fQ3D1Gp/YniCXL+15Vyi6qD1JV8C5geccnLRFn474D2s4E9WtXaJz1xot5mCRnZo/xuph6bg+zHAzVSmH+5iEomjgiOvsNBLA2KyCHJlVfpHH0x7ASaoRiWfPpBTfhQWB6gfeJONLUMAjEYBcXnsRcoR04rJqEdVIFHrTWJS+xa6aZcaE9mjBzXVkM9HCohOxUBiN0VPWq3N29B0Y4PvfnOGeyDPj24uCEHj/zm80pCpIq/zLvHjdAT3vdGrUZr0TXcrbuBGg7paQllwAsf9dFxBrfVwQE4pMlIp1uC4rVw1LIb9qU5Qig/CkEf7qk7VmzAPY8Gl4wp3oNuYlSmQnGGbOJPLmDPSmuIj4R/wtdqNhOW9dYNS4NFpTdxj2h3nwZjk0HDmFzv8VpcUj7Uz6wblpFhA37n1BTRQv3KAKJR0VJzFZ4hY8sjng1szSenp0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(136003)(396003)(366004)(230173577357003)(230273577357003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(71200400001)(478600001)(55016003)(2906002)(26005)(38070700009)(86362001)(38100700002)(122000001)(82960400001)(83380400001)(33656002)(9686003)(7696005)(6506007)(53546011)(5660300002)(52536014)(66446008)(64756008)(66476007)(54906003)(110136005)(66556008)(41300700001)(66946007)(76116006)(316002)(4326008)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WtzTJFZO0hBegvqvikw0MfFBFG1vi/n4Y8za1uKYqzOoZk/W6rLztzevY5XL?=
 =?us-ascii?Q?h0ZGIFlJGz9l8W+ooe9sUhxtLaZRpJ/X5njH6PW1iN8X2OwmHstcYtOgR9ft?=
 =?us-ascii?Q?1eJPgZ8oGJ5HtnC+lv9waNFiamlzB1Zj3GoaNIMbAH7GBPveeIHb355jLbYb?=
 =?us-ascii?Q?jbJh1yllRO+wfV+lGnEOdu7VrZtBT/Sx5TNx7/JzWcNMyJl2XpXbC8XPlSQV?=
 =?us-ascii?Q?2AvqKjBEJbcjtk+35oA4X70fSgTa5L9zdySFq/QGBVdyKUnKJUlNaUZeOTKJ?=
 =?us-ascii?Q?2VJUuVyY0pOYMc2efmmqhjsEeEbsCR7ds/94v7f6QSL3vlCDjpHCEiaOaoF3?=
 =?us-ascii?Q?VLqoXh7dIr1Z9mT4MHseXEh87JzvyGTUXcaYx6Sm0lmUkQ+he7iIRAsV3d3Y?=
 =?us-ascii?Q?BFytE98u0ZUEPhdTX7HREfoi/SQ3JLG6dko6ArHcNHOalvA0y34EWVhbhBQ4?=
 =?us-ascii?Q?OM68vDViongrkvayRZMq7nqXFXB1g1gM303bpXuLi/sCQH0c396c3Yd+syoo?=
 =?us-ascii?Q?MOSJ+wforR9TWaWZlLHfB4Fc10c6IhRMCas+BLSDdh+d56f87q9pqRuiqYES?=
 =?us-ascii?Q?T+ujehqOZSbF0mpdynNiOAZrHgbLf51LQ+YpXya+Sms2pCmNsMOAuqZiGUzt?=
 =?us-ascii?Q?UPXCOTwe8V6uRsIS1V8RJOABERZFtnyhIrtz9bX9bJB9i++ydTwXzXt0bAeh?=
 =?us-ascii?Q?pqG868sVXDxWn9u9m/IQoohI+dF482VjfH2F2tEr2wxgCV6aEBxrq7xaR8q0?=
 =?us-ascii?Q?hKh6tkj8jJqgMU540aiT+8Mk7UVMi2GFwkOLyj0ei1SZWM8uvHjghDfpowzq?=
 =?us-ascii?Q?2S18NHpKMAAuoDjIqBZYZ+T1fMVG1o8avyPb65ep+SqaK5tZqp7FCZsMynNY?=
 =?us-ascii?Q?mIN4W67bt0I4H0tcd7p0aUPl0yyS4de/PECAXLkTYxDnqOqjPFxADgTlyoLq?=
 =?us-ascii?Q?fFP5ygS4h9JfAVHGgapRpQ9BVCCjnjkNNTvv/T9qz2wRujau2HcZYgoWi9ta?=
 =?us-ascii?Q?PND5bEuLNOU6Plhd493ctRT0FQ/vRLyA/UWN1zh3RqOK2DFuA4lrY7xRe334?=
 =?us-ascii?Q?byCT7vGinfsdTvba7Nv2mzGgmaam7sijISV+OdKBM31Hq51VWsUbKGTJMUaS?=
 =?us-ascii?Q?hQ1otg7c2LkEfN5IZLlJG36+OvZonoPX8pH9e2uQvPKwuTuEJxPjmlIXi4ls?=
 =?us-ascii?Q?QEnbTLBQ+MycU/uoZlpocl0JMQRwGfggQ0Cshnv+NwXhEPZI++mDysD8boTK?=
 =?us-ascii?Q?lt8EFMyrIPD2HAJPgbiCnBo/kJnanT/N1uoNL87VqwU359Wmtpca5ko+wDCy?=
 =?us-ascii?Q?IMfBHpL6bSmWQ5qpAH0/6JkU6FVKuc5XpF42qIkFqpyuOabQczRu0o9A4ZzZ?=
 =?us-ascii?Q?MyDIC7Cw3f1UiC+4oIXb9EKrrvYkiSepI/kfu6HcoZIMmdM3u/QxCHKuyA2p?=
 =?us-ascii?Q?Ira8VmR8YI1r1f0Efp6FM4BNPyPE9lQ7Mvy/HMQ3YN/eT1SKc8LwmRU5WyWt?=
 =?us-ascii?Q?zLeNfQffwwImZYmddKzSS4bM4aaRK69hglADIkYa9c0hiByfXLkEpDb6hXzP?=
 =?us-ascii?Q?fIqSfgJZSGsQ/qU7lNlhJhqq6OgmDdPgrFQTZuW5+uyp0QlL44q935WAUDm4?=
 =?us-ascii?Q?TA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2df011f1-ee22-4aa5-c1a0-08dbdb653c91
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 05:33:25.6897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 25rCP4B1fm/AbcdMN2UmlkRdc1uG95L+R7ZJMQN+vNCMlTC17FH9w1mXmbNS0OkXYx4h7K1le+kI5btl8iaRC190zpYYX3ZaRLxsxed10Yc+joyoH6Zfv/gFQ2txMUd8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8515
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698903209; x=1730439209;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=127iO+y0Fz6c5sYLV6yncBa6+S4PD2nBJZXPk4jsBMw=;
 b=ZK7aqCP/wr8h+y5+4ZtxRWy5QgP+yZ0ED1hHARTbgp55odDJ7S+ZCjCg
 x1ayz9iNrWYL7ZXPTA5joaLwlFA+EbL2/Srx5x+zwZAFJLXLx4CYGmJ0h
 e0JncfGlGACD/RZDC59+Vk5a06MgwFckklrS/VVdfCBExC9YSZtBuIqtx
 9TzkUZKcQbgFICdaYk3TQ/qdB8Ve/EMJRlboKUAwV2Di654ZaXqAuLMeC
 AbswJWrtIWXD+q3eOBqwgyyc96omqnKEaGF606HK9jtnNHci1QBaHv1v3
 DQqbHngEY9X48Sp2kbwOs9AKhxT+QtLO75CYr+cyUklnSVSCWD9ReQukC
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZK7aqCP/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Fix devlink port
 unregistering
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Tuesday, October 24, 2023 6:21 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Fix devlink port unregistering
>
> Ensure that devlink port is unregistered after unregistering
> of net device.
>
> Reproducer:
> [root@host ~]# rmmod i40e
> [ 4742.939386] i40e 0000:02:00.1: i40e_ptp_stop: removed PHC on enp2s0f1np1
> [ 4743.059269] ------------[ cut here ]------------
> [ 4743.063900] WARNING: CPU: 21 PID: 10766 at net/devlink/port.c:1078 devl_port_unregister+0x69/0x80
> ...
>
> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
