Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFCB782564
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 10:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B6C440A14;
	Mon, 21 Aug 2023 08:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B6C440A14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692606580;
	bh=Ivg2HQYU64BQVROifSUBW9EHIVt0Fo8N2r8XlI5a3Rs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LLwxJslbNv5zJjJj3ERKEs2S7w6F4nFVYlQMOU0oty3Ib8Qc10y3SWTXuLbAiOYua
	 x9pgrSO0SGdxxGYt5DR5w5AfAV4t67Bw0dmifia6Ui0tHzEg7QAug55YY9nyN60szj
	 xIAErebGuW6dOkRl3yzC9cV9dXfn2znna2GA/87lrIpfAK6BXnTw8wHFc77wEi2L2/
	 Lz2RMFaLj56fMW2Xik2VmRss2t2n2WVZfS787ZNGTHuxS8UuGyWA8x07Z23p/G4VPT
	 U4ULcdYj9v/Mu9kbxtV0zvDHvmXnxQL6nSVjkag3/wZW9L3WAJfaR6t2vPsAxYxNVP
	 d6xHjifDpauEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7y9yGimHLjLp; Mon, 21 Aug 2023 08:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06A74409E3;
	Mon, 21 Aug 2023 08:29:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06A74409E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37C7F1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09863410A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09863410A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkreCGZpfDPl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 08:29:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0681A410A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:29:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0681A410A1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="358510563"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="358510563"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 01:29:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="765271191"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="765271191"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 21 Aug 2023 01:29:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 01:29:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 01:29:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 01:29:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 01:29:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D06B/4xzM9s/NPPKAS6izwM0Bff/th5oMqxr67IlYjVlOOxJpHD/tFdHnTZTj+uQ6nwLQXFl2t58itpAudHZsH2VoTkmuUXSJXUmRqPHmyCvBDpYvtNhALDw9ByZr2LMDkiB7lzTm84YlMzOnBx89YHbWd52l46we2GC5h55fLgIPSyZGlOWMIkmD7puIJfEZq3f+RIho4dlO+pUgfIq6RgB5yN6wk1Z+/OASYstJtyq1SEWG1u37g82HGB6GkTKq0vWQUY7PIWthn2D3GPCkUtiFs0kTnw+0FLw0gYJBLpiT1CQqzhlvTHkg7Joz1KbryEIeJuF+zeFSY5Bm/9cOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sHUzYGX/tUY7SWc6Vsg8Tn6qTQ3QQVlmwd1d5dBd51U=;
 b=Y+3SdkOZ0hDmADC+iQrL3E9hvQJHmJHpzDMZwY+SajhN+Mb2AabsvorHtPYjNtn9vSHgNNMdUmZGZfvD65ZU/cxbVfXDvw1mtIyrHU/T5LpfXP6o91DoGCiWJPqf4SkN0kC2pgnMrBw4w5/nbwkdAPHRT7sP/RKtESwr2Jn4ZKOxMXTWeV5Zy4quPaF5lsWRaTzVk/Lb02oOLx6/wse6azy6GGtLD8IGh4RvSQDZiR1JfVJ4plrWdWUkoqfKipHXB63l3dMZyKKf3c4nI3YnT3VPS2K7AZBIZZtB5WYKJWtvk6Zrkjrv4Ft5J218oBt8QZbR/EoZr0/qWUhPvSnUTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DM4PR11MB6215.namprd11.prod.outlook.com (2603:10b6:8:a9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 08:29:04 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 08:29:04 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: poros <poros@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 1/2] Revert "ice: Fix ice VF
 reset during iavf initialization"
Thread-Index: AQHZzCrti19AGHIT/E+Mw+Qb9YoAxa/0eqQQ
Date: Mon, 21 Aug 2023 08:29:04 +0000
Message-ID: <BL0PR11MB3521460DFE459C3CB32B4E688F1EA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230811080702.1254319-1-poros@redhat.com>
 <20230811080702.1254319-2-poros@redhat.com>
In-Reply-To: <20230811080702.1254319-2-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DM4PR11MB6215:EE_
x-ms-office365-filtering-correlation-id: 8a3cb17b-3101-4301-5904-08dba220ade6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X0eyPBOQhWeoaFcdIL0/GxI7iYN63HA4nSfz1V+N8SJijVCt1QiGzbZ2stXUPmHlGPx6PZ6ilAnqoOeOi1LQ1YFTq4u9SoVk0TaHKcOytekl3V8VFEe4468dQ2IzEknf6pyvH6HAZVyyC/PLvHp/+AYrti8PrnK/h62kTsHW3SviUOTkM1il41jOzLo/HDqeCDIvVt+nzwP1UQ4PmylafcnO4cJ0VBhUN7erB4in03cvmQAOBZGje5KwRrgLk+4oVHV9m09cehiJ3pnc33Pal+IrLIlLBliwZX632/JMo1IgFK2fBR8ngQ+wfh60PvOqqavcTVr9nHi40eEwxZQA4rRUKOYjSnspFHOB25EWliTGApI4OnR1ZRG9b1QHl7+75iUiUoSEXI6x5DVVNw4q+UNgEjHiel1onEFVUkDwd/b9f3mDz4+dimUF6sT8qoAq5VCKA/TPmhP/RhG/j71P4gVXNwYXlJbKGg6O8xLhQjjSCNmy5Zxf+ZQaz27Gdx1hVXRXQAJRf/X88an0xBuj1AxCW2NW1jAuwzFTHi4RXXyxV0yoGN96EvotojSG1RCu5OFG+UKrZ4R+I0eDEL9czMhTldHpbt2za6h4GcPF0hhLN94B+Ymb6JXqo11cDhvk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199024)(186009)(1800799009)(66574015)(2906002)(83380400001)(53546011)(7696005)(38100700002)(38070700005)(6506007)(5660300002)(52536014)(33656002)(26005)(86362001)(8676002)(8936002)(4326008)(316002)(9686003)(66946007)(64756008)(54906003)(66446008)(66556008)(76116006)(66476007)(110136005)(82960400001)(478600001)(122000001)(55016003)(71200400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?GoWGoAqZieb2IvGQ7pWSbhLUWbmN3nx2Ap3apI17FSaX3wjhlXluzU28fp?=
 =?iso-8859-2?Q?yrB4MNJIR1+X14YJPULOUU7O8R6fXutCBtQ3axT3ng67oZRd+BU0n3yq2p?=
 =?iso-8859-2?Q?SSqDhzJEphnR5WcUmUgabtLxkiD8pitSG/XqdFQzde60H6EF3Puw7Et2Vl?=
 =?iso-8859-2?Q?aqBfOEf2kx0/sMkTJeJ/ubei94EwOnZs8DOcLdgUc6anFJws9YE4YOtBZA?=
 =?iso-8859-2?Q?pVRB62LvLsprOIkjMPPSWvRgdZqBSEhHUL2gLpbwuzw3B6pSuqNyqqvz8m?=
 =?iso-8859-2?Q?zoM1bslf7de8wKqw5l8my3ZivaO4s4PO4LDisDBeJ7JTlW9yLsQZh7YhUf?=
 =?iso-8859-2?Q?0wzdQYX+UZqQuTQCHfV9AOUMOett/SQUqXSj7CExZogRfSQpr1XGDoFznr?=
 =?iso-8859-2?Q?FYh7OELkF7wrp/fS3Q+fT9ORJ3OzkT3a9lElW76F5+hb3EnRxieLAX6q8A?=
 =?iso-8859-2?Q?7QKHXu6jQBkJWSnw1pMsudHBkXTdKg2yFanFA5RqaEEG3rFSju5vl9MEyq?=
 =?iso-8859-2?Q?4NKULjh9hm75/Kf2knz8HUv363XAxwAVeyCroDRddDjNeFSy1Dcic5yxow?=
 =?iso-8859-2?Q?k4zrowIeNpKrKos8hCBNoFg/ZKIZxa2EPrXSEMYsMm1db1bok5dsCzYZmb?=
 =?iso-8859-2?Q?k4KYDtuEXS7gZIwa1nunks0rQnGd7QafBEHU8XpHgDEmK4ZFVwISl14/AH?=
 =?iso-8859-2?Q?Icq71gs74NJe3XSXFp8o0BeNYvbH8Z2yJQSeiaubxt+hk2yJn5haKxYepz?=
 =?iso-8859-2?Q?/ffgUwAzzFRJqEvN1sjz+YfTHC9DF8Cnqtv7nBzt78W3dzTqaQOyNssZn8?=
 =?iso-8859-2?Q?jSeg3MVbijU3NCGEPUdudlK6XobGAT6r5GemGctOMItvIBkwKx2umS10EO?=
 =?iso-8859-2?Q?HQmMYaKxRGqH4wSVPt4jh5rrH4TqGfNj7h/EaKdnX9rW937LwBL8KY/DgE?=
 =?iso-8859-2?Q?6Q/p6HSw0C8sB5JOJMvKYQC88O5jORLEP4lp1Qh3e0mj1OuWsZez45be9w?=
 =?iso-8859-2?Q?2r/I0rnR91dKvcA8NrSG7qiQHmg7CfxnSj9IoypOipoXIRrEcYCb+OmZD6?=
 =?iso-8859-2?Q?rWqCgUbJGdD43gyAlg5DxQYnsnkU/IvQ+3orVrKg0Y6nipL4RVKeWSlYmq?=
 =?iso-8859-2?Q?8KsX6Ovwiiiv/6fYo02iqz/ecxwLWSVKgua5O3dX+b4wvlm0L7UH3oVtHi?=
 =?iso-8859-2?Q?eNB7wTQMKVMRl2613EViATXByu8NxMvY4pFTbQ3mP/KIWCX2GBGe3GIgES?=
 =?iso-8859-2?Q?OUM5Zb5kciAsW0M0iTjMPZaZcMNVPijvus5tUGh2D7/41dztuJK1O0dP1q?=
 =?iso-8859-2?Q?y5dfWNcHN4NxiGj0d1zPNBmO552ndhPUS5Pmjd9R6lgHteWFp/WqJaX5D9?=
 =?iso-8859-2?Q?WTPeDJlEl2mYHjfM8oOQOvz3eFwEp77Xx99TcB99gIDyl70frTK7NIBb94?=
 =?iso-8859-2?Q?ZUPIsRDVtGZYr42e/uV3nkF+B7J/AMNWEG652Ul1EgJwTHT+qWE1I2iVNX?=
 =?iso-8859-2?Q?gi0Z24U8j82kDZ2heKtDdhVhD01cobUCfpB1HaTt1gKDxNwZPRiMCFTp/3?=
 =?iso-8859-2?Q?GPUNenkGxT6pLtScNXEY13Yjtxow2wvi1pKb43rI7+UjqK6WZmcGta/EEL?=
 =?iso-8859-2?Q?KnNvQMk9W8gFh5z6cgF5KziY/aLT70OxUviNPr1ECPnpQws3Mo2PlG3w?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a3cb17b-3101-4301-5904-08dba220ade6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 08:29:04.2801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mR7XR2Vp0tRHr6TAQCyVP6kjcA31rbKKO7NWSK7/DygHQlPNdtD68HXEb1oXCqqlt9udUI858iw6yWtJaZ77VIIiQLKXn/wb6gB1NNCJ6BQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6215
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692606562; x=1724142562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MrsYh4U/O5iJvRuiN133ouug9FpfsK6czbTvKW1ppUQ=;
 b=PyWOOAeOnAK8Alts4A9w5Na355h5knIHhfuLd0H1+fC2bjdjhWz7a2qZ
 HtmU60yuEKVKhF5h43VmF+R+9Vm7Rs2XIy6RZvM1qR2pDqb7EYsZ5XBYE
 u7WILWRzsmWOHC+d0ZVm7Xe34N3z+aYfY0e5nbes6sJDYx4Yy/UcZ0dQf
 dODGhu7mpSfUQK+efc4Ahj0WvdAstiE37dwll8sCHLXUa17MU/8ZQGYyG
 bbiO+IOmOH3fE9RnzBopsz4F+PX6E9C8Vs9mGXC/bEz47Ws9zsGmctTdu
 qHae571ugk7+iAogWxqX7jGmY3/s51hYfEFTKB0h99v/0Il4qH4U0C8FD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PyWOOAeO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/2] Revert "ice: Fix ice VF
 reset during iavf initialization"
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>,
 "przemyslawx.patynowski@intel.com" <przemyslawx.patynowski@intel.com>,
 "Maziarz, Kamil" <kamil.maziarz@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "dawidx.wesierski@intel.com" <dawidx.wesierski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Petr Oros
> Sent: pi=B1tek, 11 sierpnia 2023 10:07
> To: netdev@vger.kernel.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>;
> przemyslawx.patynowski@intel.com; Maziarz, Kamil
> <kamil.maziarz@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Zulinski, NorbertX
> <norbertx.zulinski@intel.com>; dawidx.wesierski@intel.com;
> edumazet@google.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; kuba@kernel.org; pabeni@redhat.com;
> davem@davemloft.net; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net v3 1/2] Revert "ice: Fix ice VF res=
et
> during iavf initialization"
> =

> This reverts commit 7255355a0636b4eff08d5e8139c77d98f151c4fc.
> =

> After this commit we are not able to attach VF to VM:
> virsh attach-interface v0 hostdev --managed 0000:41:01.0 --mac
> 52:52:52:52:52:52
> error: Failed to attach interface
> error: Cannot set interface MAC to 52:52:52:52:52:52 for ifname
> enp65s0f0np0 vf 0: Resource temporarily unavailable
> =

> ice_check_vf_ready_for_cfg() already contain waiting for reset.
> New condition in ice_check_vf_ready_for_reset() causing only problems.
> =

> Fixes: 7255355a0636 ("ice: Fix ice VF reset during iavf initialization")
> Signed-off-by: Petr Oros <poros@redhat.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> v3: added tags from previous reviews
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  8 ++++----
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 19 -------------------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 -
>  4 files changed, 4 insertions(+), 25 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 1f66914c7a202a..31314e7540f8cf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1131,7 +1131,7 @@ int ice_set_vf_spoofchk(struct net_device


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
