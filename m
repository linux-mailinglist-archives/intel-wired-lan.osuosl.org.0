Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B59B602E0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 16:12:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A13AD40BA0;
	Tue, 18 Oct 2022 14:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A13AD40BA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666102375;
	bh=UwM1aeP+nSxVyZnFctLfT9ciJCj2mT482ZAi5XdUxoE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPSyI0a0JwuwEyHap2p+cBsxjN5zF4X8iAmWbcr+kwiFsgqrlMZp5eatC7qpifIrj
	 rFwezbEiKM70x5H6mAda4eLlwzC3A9J8+jjXJFczXTyVQm44+GL8wY4p8kkZwWLLAL
	 64SVK3T77F8LH7+8YNu1ot8qv3htbvI+ISD6mwoSZF4vWFlIIo64pLtCo/OckJcNMA
	 1uFS951OaKicv3yeXkbsxKD/fTgHTt1+RDP+N6dWpiSMhYHnzyFuHFAUcvOdIKZebG
	 +Xp6m970ZwQIqpQRESJhTydD6i59s7H8v3JzR320+AJ0d4HdZSRgZneavx9IVQwVER
	 YtjyBRzuOLMlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wtto0Fziqp9A; Tue, 18 Oct 2022 14:12:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 743FD40B8D;
	Tue, 18 Oct 2022 14:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 743FD40B8D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD7901BF488
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 14:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8347240B8D
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 14:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8347240B8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GEcX23DxopVs for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 14:12:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAC56402D7
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAC56402D7
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 14:12:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="370311930"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="370311930"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 07:12:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="579804111"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="579804111"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 18 Oct 2022 07:12:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 07:12:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 18 Oct 2022 07:12:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 18 Oct 2022 07:12:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9nYQxQ/GSOlYRtzh2XZo6/yfpfgqU6q/EfxayYLAFxo3wJ39vvrtuDqS3gNP2qUKBSqJUWE4fnoRcBGPjttGEAY2syj9Ksjl6Vj+KnviwPTU2JVnkeTkA1vr4TXNzdz4MnHsjgJac12iMk489t8bi4I3s3WyAxx55OnBt+fkFruhasgpQQJIq3V50l9DvLkpF5qrze+DqYqEyI6W3YHpATf0f0NuCCXFI72SbhX10iGPk1eaoC5+/sdbPGjyvI76Cn1fNpQ99wbyiLMXINHHDwcMDflp5S3Dvkzt61BkMdb6GISkrKsXnE3Psy929S0vg2VNO3YFk5ouctZqU2weA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Itkg8VkpSphdiSLhfDLEO6+O2Abkhe3QXxyA+qJMLeU=;
 b=MEJdeqWVEsXL+7cCZXM+t/uX+Oa55BJPWt0LKfyIORf77vIQGsKkCwdmQAPf9vZlKIDmYDhUuo/wy0ZSkr17kad1s6E1qgIBah3f9Lff5OO0/ewvLUw4Eb0WiGmJFU948QZwMNv7T/3zL1i8F94GZqBzraQmlC5LmKbGdgA3ffy1qEqTPBw44y8E4bd0ktWtpC97btzvU1DTyjwavnPB7AXM4wJ3LqPw/DoAt4q8/GXE59LsUP195CCjvzWtLjqPOJs4femK6EQ8LKTEjTZEY210a+W9wKdFmRuOzoYTnCJUBp+Tykz2yvrMw9iZgpe9eZ5cDBymFXLMRGxgHPpnuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DS7PR11MB6175.namprd11.prod.outlook.com (2603:10b6:8:99::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Tue, 18 Oct
 2022 14:12:37 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60%4]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 14:12:37 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH v2 0/5] Add support for DMA timestamp for non-PTP packets
Thread-Index: AQHY4o49ev0KReGUxEyWlnOqPWSac64UCRKAgAAniEA=
Date: Tue, 18 Oct 2022 14:12:37 +0000
Message-ID: <SJ1PR11MB618053D058C8171AAC4D3FADB8289@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <Y06RzWQnTw2RJGPr@hoboy.vegasvil.org>
In-Reply-To: <Y06RzWQnTw2RJGPr@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DS7PR11MB6175:EE_
x-ms-office365-filtering-correlation-id: 7611b063-9ab8-4701-6fed-08dab112cf72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PtkUVQbZlLccWvQQDmzHFUB9VHXoJGygNNcp3x46YHpGhNsKcAg3SEm41EzZNP3sxIteKt7Ht8vYliJ3vhBO8aiq+iknJyVvPBdaKiqzNQazrSPxnerzJ1wCERDRGnzUd2THpg0QPMEXlVEUHDn6PhdkgB+DWwGwQ0MeXCxA/sVPhX70gWSjb9VZKfftZC2rPYuKJ9Dnt/e6E6i6ULdI7UbELktK7eZZFzOrNspCleLOZFpwwri5xBTAFlBOs7gQfJGkhIVfN8nDTKTMs3KCosHGNL72oFQH7EMQzra5Ql1VbYC0McO7IlcyUkQLaWIM9mMCVMqw9rTaYPyrTTB5ThKtetQY7ORReTXO1FKch8had27jFEeqlgDF51xX6d0BEaabzZ7YXu/XtDiSFBFqE3aEcXwIKvhK2dpWBx1TmUolkj0KBi49KYobd21pUK87nsFpnIaKng7e1YKcwGkvtTkWTHXVqsUmqpl8wl0gpg8/HywbOgiEYk3RQt7D4ZUiilkQiAdCAdf07RfxKDLSsID1E7O3RqlBdVvu6GO4bIxp/wpLn51uRvSyBLk6vGvPopZEnfTK5KXQF/9oP5dI5SefIMydyu/bsswEPdxebd/+g6IAzP6oaMeGZFmbnKHdYA0i7N8l/24uqeOgLN/Y6cz58JB0iCkqkLrF9Oii9yhzDLM1EYZgLSFrjMykK9UlfqgWaGsXCQofiC8Eq/oM1bBqCFMp8t9mUGSZ10513M2wkxZGQb7QO0tqFmiJryyBTfpRRpK+hn3Ta0GOFZ15Ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(396003)(376002)(346002)(451199015)(186003)(107886003)(6506007)(7696005)(26005)(9686003)(53546011)(83380400001)(7416002)(2906002)(5660300002)(55016003)(54906003)(6916009)(478600001)(316002)(41300700001)(66946007)(8936002)(52536014)(4326008)(8676002)(64756008)(66446008)(66476007)(76116006)(66556008)(71200400001)(66899015)(86362001)(33656002)(122000001)(38100700002)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/IadkgOEyEOtrRIHXKq1CMuU8dhIlPyGdetGeu2yJXV6bxK/gec9K20aA1UT?=
 =?us-ascii?Q?tqlThN0EUp/8u+wcf2C3JWwuT/fNfnKx/hy2XqleWFgamll7PbU102t7hXHb?=
 =?us-ascii?Q?9GMMsCEKNxSuuN+bdAigHaSfS/H3m60gyEKtqE2U/FVxzsIwFOoQVn32v6lB?=
 =?us-ascii?Q?8QkYMbwzWeuYjSSp7RztDhPpsNbkFwOr8v2U0nXCM9Uqm8h3AWvHUmPtrn56?=
 =?us-ascii?Q?X87Lk4Z+qJAHvGHjAkH9/L2yXi/cDMcnaYLXKymCKlHa4pMHdKwHT4Ju/lUn?=
 =?us-ascii?Q?bK1nWVXyGxom9nPGIEcn1rFfKUfGp/Yvg+yJebe6+ABxmm2YQjA7MAagD0zX?=
 =?us-ascii?Q?CT0ZnXKiSyidyVYIFoLtxMf84GNijJc6l2tCrqfdC9H3b0WUYeGWIc5V2Gmq?=
 =?us-ascii?Q?4uAkvyBuj6p2MAhSLlEJZh2f0QRrkybSNHxTzrSP0WdOXq/llV9/+3ngphgP?=
 =?us-ascii?Q?6psOkjBRqnVoe9b8t3rI1r3My4RT9Yv/ZZYWGVaf7hAvmwlzQv9lpuDGumIK?=
 =?us-ascii?Q?OZx+945hzrpKJ0EfZfHXeObSeMvhD3Loh+qmim0c01cTiFLR/hZVvMIqyeWh?=
 =?us-ascii?Q?mWc2EoWL9e8HjRnI/Zyel3liJUVamJAMk7lBj44QjyvZO0UBcDZmr2cNOk4k?=
 =?us-ascii?Q?i1T85aWbuX9Ul1ys8XtJp86Ekfar8z0lyKbfNfAwD5z3sXPZLWw8mZwaiJu7?=
 =?us-ascii?Q?lVEgwi5u5PGqVTo1SIKIP9ACsyykeI95mqaeAa5wfETn7akiPjoGljfJ0qG9?=
 =?us-ascii?Q?r1GpgvkhiS7GxmOlwB7it1z72KY+hhOoi2tbCGYabMcekMCIlyrSTICOHcmo?=
 =?us-ascii?Q?1vVnGSCp4sHxBsaJxdwNKto26Ucm9YxFN6+uf0rUTvOUajlJkAMqWuNbWmn2?=
 =?us-ascii?Q?El+qBBFBX/kGHyqqEWGBqkjEpESrnl7XOx1Zn6zD1p2oS7CYrk3Bfyoy3fFL?=
 =?us-ascii?Q?z/LXWN2QCtvvYVeSrtD33rNLMv6UC6guxXVoVwq10NpIIoVWfDjYpcMMnEUg?=
 =?us-ascii?Q?vN6MTporAxzQVgDcQGzmiQueJI7mSzPnqDXhrQQ9OuyGk9m80TCGdPsnVGJt?=
 =?us-ascii?Q?ZNGIQwTxXmvIch8J+3+eJkqQFDd9NH71VN8GCsLfDrA3yLwy2Zv+vK9L4C32?=
 =?us-ascii?Q?8SqX2eAUskcwoLnlTkO/GxabLSc+3RRMUFo/2RmBP54rAGB8p1TLePKttkgi?=
 =?us-ascii?Q?FtxdMc193ICD60cQ4jivTQ1M5mAAUWq5H67/n1x9t4i9GawkmFG2JmaTWjlf?=
 =?us-ascii?Q?R6SK1N8ck3l0zqU+dd449xmCBOa/JByyq5Mn+bqLwkh0nWlP7F/37zjVkUk1?=
 =?us-ascii?Q?bfBemTI1pgTtQFOZ3lQuKSd1Sz3daV2i3mESuwSFTWB3ImkQQXDKFrbVIBmg?=
 =?us-ascii?Q?xP5AK5/TB5L2ZYag91DwuIkGLjhFUXoe1UduqFX0chBBrL9N9ZDNvwkIek6X?=
 =?us-ascii?Q?AuUFDpeSO+bDHaMiwfeip52K/hLDbYF4IFMgWLHM0tYcBPRz7OCgZVV/sXWZ?=
 =?us-ascii?Q?TcTKA8LPzLGunVkjCFSzJI4jiFOm+qhOvpc/k/8pUKQral3cESChP7kJGVHV?=
 =?us-ascii?Q?4YPEHUC6UD5dTUKVQ6EtrDGvESVqzd3inICQ5eQSJ98H5MyRpdUnONpY8nn0?=
 =?us-ascii?Q?WnenBd6Tfe+l8aAlzKCmWyo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7611b063-9ab8-4701-6fed-08dab112cf72
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2022 14:12:37.3633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4brCSFlIugeLxM9p7ET7+uxpadA6DN0J1pTLdq+D+g/m3S7Z7B6ATC666sV7PI64566qOQMR8OE7Ovw9Bi91hfnQtuLeBTE70W7gzfnMaWQRMU1Wi8j5HXCaub206DHw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6175
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666102364; x=1697638364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Itkg8VkpSphdiSLhfDLEO6+O2Abkhe3QXxyA+qJMLeU=;
 b=fNhcshy1Czmfzm7nz3yQN+nkZ/JZT8DQWeBS/P/s36V59i5tgAkoM3si
 UXMauFD/ydFvdMsWvSvaOy9OjcqUQoUJBqJPBAsOEX47spkHduQsQXtBp
 EAhLCeL9MT+xqyaodzG6mRVfbWLAc0DfQYEU7JE+3tBoJyKAZX8fxLgth
 JKqfN5Ozj70ssu6D9gV18y7/IzT60+7q/fKXk8H6lPvE5hkzA/ILnn0Ok
 SBTy+lw4FLtfpYGAEe/tqWRhLzEx5tDVBevJRchoYnx10WkF1UDdSpOA9
 LvF0WIolOsFiWgXHJhx8xUfAZ9HepOnsG9P8L7/k+X1sNRR6IA73Pa0ez
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fNhcshy1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "gal@nvidia.com" <gal@nvidia.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "andy@greyhouse.net" <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Richard,

Thanks for your review. Replied inline.

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Tuesday, 18 October, 2022 7:45 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; netdev@vger.kernel.org; kuba@kernel.org;
> davem@davemloft.net; edumazet@google.com; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>; gal@nvidia.com; saeed@kernel.org;
> leon@kernel.org; michael.chan@broadcom.com; andy@greyhouse.net;
> Gomes, Vinicius <vinicius.gomes@intel.com>
> Subject: Re: [PATCH v2 0/5] Add support for DMA timestamp for non-PTP
> packets
> 
> On Tue, Oct 18, 2022 at 09:07:28AM +0800, Muhammad Husaini Zulkifli
> wrote:
> 
> > With these additional socket options, users can continue to utilise HW
> > timestamps for PTP while specifying non-PTP packets to use DMA
> > timestamps if the NIC can support them.
> 
> What is the use case for reporting DMA transmit time?
> 
> How is this better than using SOF_TIMESTAMPING_TX_SOFTWARE ?

The ideal situation is to use SOF TIMESTAMPING TX SOFTWARE. 
Application side will undoubtedly want to utilize PHY timestamps as much as possible. 

But if every application requested the HW Tx timestamp, especially during periods of high load like TSN, 
in some cases when the controller only supports 1 HW timestamp, it would be a disaster.
We will observe some missing timestamp reported later.

Using the DMA transmit time for the tx timestamp, if supported, is one of the solutions that we propose here.

> 
> 
> Thanks,
> Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
