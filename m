Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A837939E8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 12:31:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E048414EF;
	Wed,  6 Sep 2023 10:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E048414EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693996263;
	bh=28gWCGOkv8f8IR73DNv8zLhAYfKzCFTyiZ9wwxenJFg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K2u0nKk6fpKYKZPcf6eQ4O/LQMF9YrYejBYL+ZnDCIO4SuXoY3Vqikbu/NjPUirFh
	 KjBFnVPAYRKD5eN4LPl8K/SuZr4qL194gIxC/QLoU3+5Gw7bUkcBDIM0trD0ixu4d2
	 GA53rh3QWgW9Ci264rtlFmgvtvwr83L3H2yk96SRLiRchTUkk9uIDL8168N+m5PXtg
	 0x7RxMG3pbQ4pfYSP4yKqxbM+7OmJbNq2iCqrkWe5X4JHUJ2ISlgbQbB4LxqRYN2fM
	 mKlt2VFwhGsIyp/N4WQWmO2ZlkqbipmmcwLOw/gDGSF+15AIkYznZxoyCnKZkTkZZ+
	 6mFpIgK84x5Wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwqEYRYps8of; Wed,  6 Sep 2023 10:31:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1BBE414F7;
	Wed,  6 Sep 2023 10:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1BBE414F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57D6A1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C1F960E36
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C1F960E36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BFpWFzfRhk3q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 10:30:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4159960B70
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:30:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4159960B70
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="362054836"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="362054836"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 03:30:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="776551368"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="776551368"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 03:30:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 03:30:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 6 Sep 2023 03:30:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 03:30:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GjYisVQeTIcmLWPnhJKYPQ7wocD3ZfbBKj/tZGrnIopdFDt5fnrIHAVXzbtNxlwU6pR+2fy0LiE+6GV9cwMKdw33XaAujqCKu/Zgx/8pTj7gjSwEwxqNyB3sle2jxGeOFk8NTpoB2sS0zp8UOmE70EXGQ3SUIbfe276ys0hwpc6WS1oC/7U1VeHznEkL66gG7swBJhqFhNGaitszZV5Ba4f6ga0GaHa8L90rVNhyHnJfUzgd+jpsH4W4DAvVtLeIAHsN7oU5SY6Omb/yVmuFD0ZtYxgX3L7EnuYahgPgPpog//ll4w+t41JZ2N8Lz1MXkxDfbDGPcq5fMerr0py0xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwd72Ba8l33BYFLRYu3Qa/hdIQjoBMCM5anHLEW/d9k=;
 b=T5OWqiUKkZ4FvBkj3b4DVuNjoweVUHZmfUnSwlkdaWGh9dE8cb83ov15GeCRHpBfXTxgHQiaczcesLG4Pdlzj5WfA46kyfVfcRrsW+TFhzf9XwqwJ/NA+kakrEZGUnKCbUqfNt9xVBBtX+3J5y+6jm7rsNrU8K0Ivqvq70ZmrwjbFsFNRvxwBxx330qnPeIg7WM9UIBKc0lpImRpduWLxqgfh3qQOYk17UwszXM6Z0HwZHnQlx6HI20Igf5NbD9IHgQHZ9pWYpP2nMdHJ17O+gClue3YiI50DTNTABhzy1IxI8XCk3wnvThw6f2s9cmrq5IoaCuKBGbxFUSTQwSzzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DS7PR11MB6246.namprd11.prod.outlook.com (2603:10b6:8:99::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Wed, 6 Sep 2023 10:30:51 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8%5]) with mapi id 15.20.6745.034; Wed, 6 Sep 2023
 10:30:51 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next 0/4] dpll: add phase offset and phase adjust
Thread-Index: AQHZ4FDIJjHp9uhszUKzsg9Bi06Y07ANeh6AgAAedPA=
Date: Wed, 6 Sep 2023 10:30:50 +0000
Message-ID: <DM6PR11MB465729212685E3D5B938F0449BEFA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
 <ZPg6Sz6pgLnmQcpe@nanopsycho>
In-Reply-To: <ZPg6Sz6pgLnmQcpe@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DS7PR11MB6246:EE_
x-ms-office365-filtering-correlation-id: b7429f51-0a7a-4de6-ab31-08dbaec457a3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s2TftUWbuyOJD9ggCJsKxELbfW/d9LT4XIzVO3vYghJ9OGKpA3bwE8XIzfHOHw25tB7aBqyQgjht0wmHI2qrVfABn7IKD10RYimAJg8kAr4kJwxfCEPo4bML9cFRO0phBy22KO6SaUN4O9C1M/3mSJl96Z8Oz6E+o3ysBQlfDoOjTPurcRXtiG+MNHsTdRhTCmJHA7GFfbGA1BXg1Y5K6d2G6rj+BP6knNYWsu6udABRjAtk+Af91qwW2+ImPepVwpH2FLC9r/8s0beP8XpIUyu1sy/XcljEWjGLbjOo39PjyaRKq4ElsofIuthQkcKfvujBQ6BTt/2uDMsf5UskVpHnO6fNfK46UWVjgkJDmwuugBTo+DZD3kVztGUYY7VMnY0ujlDuVxqpbAmZtGRM3+0acUte0SA4kwiigyF8Dx3W7IfkfhU/6gOg8CHR4gLtsbjWRvSZsFI9hDXRWvCGKDKkA4IZvsEJ41IRZQdfDtbJF6NRZsUNK/lCUOrmEXnn/lgc5j1t2/PKc1EBue2mPAWMVg3obQHwav2VzxmId3gvXCsRXTCzddcLlx1SOFTIslZmjfyeByphnLVeJRZL791cuKYO6O1B8d3Tn04/e38=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(39860400002)(376002)(366004)(451199024)(186009)(1800799009)(122000001)(9686003)(7696005)(6506007)(71200400001)(52536014)(33656002)(82960400001)(55016003)(38100700002)(38070700005)(86362001)(2906002)(83380400001)(478600001)(66946007)(316002)(76116006)(8676002)(8936002)(4326008)(5660300002)(7416002)(6916009)(41300700001)(54906003)(66476007)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q4RyE8gYmd4vfjQ8S15iA5J840OG2GkveNJ9Q8TOZvljD6Q6T12Bngsbgrp4?=
 =?us-ascii?Q?/j80Hm5Hzc5JwAcqYSNoKRvVuw2rk9xkNB85kitX8GE3cf6DWKX3YwJahEnB?=
 =?us-ascii?Q?RgZj8WC8j8J7pKrr8AMZxd75MIZU5s5cBgmrq23Sy3/Tb1+E0TFwEd9VQLYj?=
 =?us-ascii?Q?gn0L1JdzcDObBlxaj2btLY0iVbE7QRqqqqfd3CoLzPfHB844zNIQpGskTf8f?=
 =?us-ascii?Q?inIVk1S7i+C8nhZ6MQrJE5EWj86fshpYgprglYZ/8pUBZU3Wa3kbIQ3IS5Il?=
 =?us-ascii?Q?MEeMWW3nAD+BeX8QBZkx8HrOqOGJrsQiWQb8c6GG8D/QY6yltd8bExkbEpom?=
 =?us-ascii?Q?dT1s5bUpnDATKvVEEhLpDNIOTU+7FB8xRb60nItZLpG+R+/VDmciJ6/Lb2H4?=
 =?us-ascii?Q?j+QQX4zo5m/TYh/HhMLtJEiRa/d0cT3r/kn2Y+vEqhu9aC8CTI7Mn16+6HDE?=
 =?us-ascii?Q?6JR/NmWSua4Pmpw3bLOjLh++EdhxDCl6UoBaZsSEZ2O/hiFxHHij2x9xaze5?=
 =?us-ascii?Q?CLJ9idzpbKi0lKDqYGJecLqeVpd5cZTH0kMzGMnuf9U78qeMLeVxSP/QvV04?=
 =?us-ascii?Q?k5rRN1FTw8qOPCztImyEiOs5S6K5+P7EnhXLbTfOKUOvJ6R45Ozm3zDkP0o9?=
 =?us-ascii?Q?PhPdkWDaf2hMzBEoYKq3ennSTwVmlQ0HlX7NlWW2FWuf4X+Q3X+2qHaasKX7?=
 =?us-ascii?Q?Kjdy5V3ddwqlkTs4qfuzfEWpZ3b4iSVgt1WJ6T0geWXAIgxie9zcgXsgZjoV?=
 =?us-ascii?Q?JfdYVJdEymBbrqNUfG8LajAR3RlOQtCoOULgOd8T1PG9zVXwVVsKCMIesCS8?=
 =?us-ascii?Q?8lqPvUlDK/xbSNuab26yi5TlqvFoF/2+CeGW/NdBAs64Tyb3FX2vQDEBfC2j?=
 =?us-ascii?Q?usm2GadXD4fKPJSbLwVZ0waep5hHDTusNZXMni1i07ol1B2upCRCTxo84mq6?=
 =?us-ascii?Q?VLfX8pVOJYU9OJtExuSpqHiIYlTwax0uS7V1sSja2ifH0nF88muLjM2rK+8p?=
 =?us-ascii?Q?Qi+1QpxbOUwfbRKDXUQ3N0e7gtDl+PXp30F5bMuPsR1Pdo43OwKMTy+ofXbX?=
 =?us-ascii?Q?0P+3GFwgqhZU/IB+dBSPKkuYhhG7txmyhKjPvyf7Z3zZgjU+YcpTQTUlQ3Yo?=
 =?us-ascii?Q?7No23ZTeZDeakTBdqUjcuzROvhmu0IpM5C8x4UOWms3+JJpCPEH/gybRiFOv?=
 =?us-ascii?Q?8i12+Nvc80cm0KL4WG6rmrbzqXBale+wpH23KzvZnsdvpX01RF+CqPcoZnuz?=
 =?us-ascii?Q?12b1fGaqc5Wp8Be3dsJNX0mjjikFyrWZ8gxwJdZ6tdbeszhGeIVcK2l+mYVo?=
 =?us-ascii?Q?XHRdsGD//R5jEdGWd+QRG42zDqhVxbcXuR9KUfU8ZEb1mDqzVPXPCgxwg1Ai?=
 =?us-ascii?Q?YM8sa3JnuGzN4IQfCpv166PC5nZ3ZuzIWLgTCqSjuZkCeqZmt3sFrvehfjlQ?=
 =?us-ascii?Q?qCimgLVYBfhQhN42gmoT+5mqS0k+NClpoaLze6DHkib2Ty5n2/p2ifuGjy2y?=
 =?us-ascii?Q?MHWwu0HAUKRzShmboZp4TbmE2igKpgRIrKPVAEHlVVTDEd0g3OYMyPMrmN35?=
 =?us-ascii?Q?tW3dEvWxLbLxiIsziM58Slh7X2t06EJu/UilZUx3oqje8P9UI6GpkTOCgmAa?=
 =?us-ascii?Q?hBe1eS2aI8yFAnCVCaCExMo+aRQyOlFqYAOXP7OvBD6lHZmXi53A6hyYxSHd?=
 =?us-ascii?Q?/4PrHw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7429f51-0a7a-4de6-ab31-08dbaec457a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2023 10:30:51.0091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rl6GIJb+openXdeskCXesHV6ViF1Cc0UmZhnBR3/1Rj0pVDTEhHugFG70EyKayO/nHJTZtPT5C/rLPoASDIiRR3ixs8S1MqSZ0QxX78/Hdw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6246
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693996256; x=1725532256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1weGCQm4KV4MM1wlc+P/1WbRbkgOdoOOfMh04zpDjl0=;
 b=ggs4pKVcMKpScF5k49oDHbCilXWZ2mtnJNYG6HlbyEOVpalpa8X3tMmf
 fpPnbl9yMQXT6MIQl0V3lv66EBVn7DFzwWUw7g4ANkLy+VjZgVhIjDN5a
 ySNBxPNPOpCf5qQvSr2uX4Soy5A0/HmATmqa6d7aF5FbYn6ZZ0Xk6dlJ4
 8yZwTABMPpRuAqzjNlNAyzTFy9T//j4lMtGgExtl8avYSdC2dcqlafqZO
 T080VQSNQFtbv0VDZ0A6aSj8VW3kUx1aYqM1iZa/Nsb5RKMv8r44a4FbM
 SisCprvEv3LEty0aWawXSGFJwY/0otc6JMVlOOz3QLMdPaW1j5Ti4cIAm
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ggs4pKVc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/4] dpll: add phase offset
 and phase adjust
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Wednesday, September 6, 2023 10:38 AM
>
>Wed, Sep 06, 2023 at 01:26:06AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>This RFC is to start discussion over extending dpll interface with
>>possibility to:
>>- read a phase offset between signals on pin and dpll,
>>- adjust a phase of pin's signal.
>
>1) RFC patches should be marked as such

That is true, sorry about that, will fix it if there would be v2.

>2) I suggest to postpone this after the first dpll patchset is merged

Well this is exactly only to start discussion, I will resubmit the patches
after the merge of dpll, although we can decide some details already.

Thank you!
Arkadiusz

>
>>
>>The RFC is based on latest version of dpll interface submitted for
>>net-next [1].
>>
>>[1]
>>https://lore.kernel.org/netdev/20230824213132.827338-1-vadim.fedorenko@
>>linux.dev/
>>
>>Arkadiusz Kubalewski (4):
>>  dpll: docs: add support for pin signal phase offset/adjust
>>  dpll: spec: add support for pin-dpll signal phase offset/adjust
>>  dpll: netlink/core: add support for pin-dpll signal phase
>>    offset/adjust
>>  ice: dpll: implement phase related callbacks
>>
>> Documentation/driver-api/dpll.rst         |  53 ++++-
>> Documentation/netlink/specs/dpll.yaml     |  33 +++-
>> drivers/dpll/dpll_netlink.c               |  99 +++++++++-
>> drivers/dpll/dpll_nl.c                    |   8 +-
>> drivers/dpll/dpll_nl.h                    |   2 +-
>> drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
>> drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
>> include/linux/dpll.h                      |  18 ++
>> include/uapi/linux/dpll.h                 |   8 +-
>> 9 files changed, 443 insertions(+), 12 deletions(-)
>>
>>--
>>2.38.1
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
