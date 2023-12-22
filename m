Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10B081CF86
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Dec 2023 22:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 288AD40487;
	Fri, 22 Dec 2023 21:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 288AD40487
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703281599;
	bh=3FlQJiarR9fuYZtZOvhkrR24AZpNC1D77Xl77r02bck=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j0R3LZ8ETO8FrysmxSwTmbR6B4+UvD9uRMCNS3Qet4OtfCjNS4w0gjRmeee3l1UUU
	 8FwyCw8UheVaAVlEiQD7UsfWOXuXsPC5s9nsLdmMMXcwtLEpyAaWYNLlZF99ZD767k
	 GQp7cUG59uVRIv2pfD4zDzW4xK5ihRqK4514vwL2FktQcpDF77HRB2TpjJn4RXMXID
	 ve9nXwfTepIMIXSpZj2HRbLLYoQToPNvMQ3ZIyFz+LxUA3l2v43KPt+z70HXQEg5tp
	 KkTDEqcW1S0RILM43LY/et8nnmsELHHduaGgcpZGjOXch+tGnJWkviBCgQQPY4APGo
	 thsn2Otytl2ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nVqID1iItM-4; Fri, 22 Dec 2023 21:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D91540347;
	Fri, 22 Dec 2023 21:46:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D91540347
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 459741BF373
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 21:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BA0B83ED6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 21:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BA0B83ED6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ks3J_P46AoH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Dec 2023 21:46:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 142D683ECC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 21:46:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 142D683ECC
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="395053194"
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="395053194"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 13:46:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="895569908"
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="895569908"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Dec 2023 13:46:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Dec 2023 13:46:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Dec 2023 13:46:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Dec 2023 13:46:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9wWminl2Kt9M9lka5QOKSNBfeUAAuNW05OMMmf+dMKBVvOt3aqbayixAmNI34Se5KIEGzxo82JzkwJoq0966m0wvOz4YEuPSNNeI/jvGarRqDvLA09Qqjqs0jD+DCmSW2VHcZA4cU1dKpREalUrql78et6Fh6jN/aTp/PIPojrsdxEUlNPIPLMWt3O9KA1LBhDzHEE++FRoRwXjqDaYvK4BTDNJbV6pRr2V1BJqkk5f5V1KpJFYozJC0qR5WaNa+BG1DPBYAY3nyIOzSvmwUVx2pgJKLShv17/Rm61X7eJa551uz0rEK+Nz5qSb01z+9VzawUCmnd/d55csLjipaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvQjSAq3EUhsbOcOKffC1kWtlbW4AXKDbN1s3GNeT+w=;
 b=XmKX1pKV7aYkq8b1TmBugoXAWOx3QI08neCvAdsMDSxUDtU0K11tBzjv0pPlsnCC/MOmwFL4RLthvvW5DCDUwg5byjWvqinV/zQ1jdEwiGMbc7s8ZxRV4tL0lBej4wvOPTB82YksZwO7eAIDhi2wzwhLToog95ShMGh3Tm2pQM1YHk9EsHMhmdaiRrbqr9/Liv301g1sBiK7aNdtlv7W/ohOYdxmwwRMqKWt+k1WLIWBR1RgKdZPvePsVDMqRUCMfPJrG9PKhKS7ti75WCJyaMYJFhYoCKvrDga01fQfvxSIqxovY5Z9hrh7A6ni6AHSk8LNV3jb3c8FuqMHxwY7tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7195.namprd11.prod.outlook.com (2603:10b6:930:93::19)
 by PH0PR11MB5141.namprd11.prod.outlook.com (2603:10b6:510:3c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 21:46:25 +0000
Received: from CY8PR11MB7195.namprd11.prod.outlook.com
 ([fe80::6e9a:e84e:338b:751b]) by CY8PR11MB7195.namprd11.prod.outlook.com
 ([fe80::6e9a:e84e:338b:751b%7]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 21:46:23 +0000
From: "Register, Scott" <scott.register@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] idpf: enable WB_ON_ITR
Thread-Index: AQHaL45R7C6QNXLc60ayJ0q1UUoHN7C13Lcg
Date: Fri, 22 Dec 2023 21:46:22 +0000
Message-ID: <CY8PR11MB719563EF8C5AD303339AFC3B9794A@CY8PR11MB7195.namprd11.prod.outlook.com>
References: <20231215193721.425087-1-michal.kubiak@intel.com>
In-Reply-To: <20231215193721.425087-1-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7195:EE_|PH0PR11MB5141:EE_
x-ms-office365-filtering-correlation-id: 9634950c-053c-4e59-7bca-08dc03377096
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zE9owIX4zg9glk4QhZDeQSccspYfkuPhgunpUq2tMYcZH42vuMKSXGvdZwXAuiu8suq26qmFcWQ2I7QLVowE69EFNsB+UGRz+/eb3mi2WxA3OkpzBu45sVAP/10oMYjNB9HSv7+d32gLTt9pvmKTGFojoWwCMF4InZ9fXymG2qM1vLvArWpDkxDkYJ4u3qBTm7EecMRm7FwklzExTUa/UdAsq875Cbv0UYa5kDTdIlMkoBzkGw9EugiuZNlkQ89YyJI01/JAdN8qbbtWDn2NFxNsRXfzFCOJnfBxeuVbJiqyZFn+Y8fYNhor+McUPuyyuj0No9zeOqQtJ/ZI9dSoYU2tRzmcpfm9sYlghDjHfBRjq2+TkdRPUeE+PDaY20t5Lo3+BJ/iLjlzBuKnw3QicRfQfms0YOQcch9BoHBImbEJs+TJ4goM5QD8q54l25KIG/yWRJCba6+NxHll3bIhUsL8pCuDYljTJBBnzXk5PFBda5O/iRrK93TaFtLEtmmHi6UA4tCrl5aTi/PTqncjQv8V4MkBQg8fLNUmj+8s4zyazCfUlidiuzZOwweFa7am7fgCLVUwfmyrvWGLfj6ugo3dPocNP1IySjArXqRXQ65pTqSknKAPPT4Mp02HLlGd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7195.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(346002)(376002)(396003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(38070700009)(55016003)(316002)(110136005)(82960400001)(33656002)(86362001)(122000001)(76116006)(66946007)(38100700002)(26005)(107886003)(83380400001)(53546011)(4326008)(478600001)(71200400001)(66556008)(66446008)(66476007)(8936002)(54906003)(9686003)(6506007)(2906002)(64756008)(5660300002)(7696005)(41300700001)(8676002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1j0SCfzxbxGNj0/dtIiavsndcLM8B2llfXju3o5V9/BRvddM7OBkt2TFVIcK?=
 =?us-ascii?Q?FwgitceoTW9rPULjbDobwSJuTjCQ5JbJgcWktSWBNRC0rP7cWuVuJbruOoRZ?=
 =?us-ascii?Q?sYG7sq3O8LPEBeEX8k27wfoUfFem1uiZeBF+XU8eQ40/EMXPqw9z2ycGwjjO?=
 =?us-ascii?Q?IAUg8VU10Am1THs/9CE8rnr0ge5npgK1oOVQgA3rur8377PQpb3DZ+qd41Ns?=
 =?us-ascii?Q?V3JIZ5ymVgNtV5orn2AHSA15KR+38ftTXMgR9nJpGij42eupxLz49CP+xfH4?=
 =?us-ascii?Q?w0XNOLTTMafMJFFi8I05n5DlTvRvSaJHpzL9n8veeo3jY2/nhcdUFS1pQ4ig?=
 =?us-ascii?Q?zjMXTMNqOm7f9sfy6JrLRbgr6pK5VJdXgq2g4z3GW/bQ0ZVCSUonxN6G5mtW?=
 =?us-ascii?Q?NQX/BuvBSZthU9MFvDhora0uHeSMGf74peru2ueydC1KkijvYzWQp0OewZXg?=
 =?us-ascii?Q?1Z+tX3OODavqXjxgUFeDwCIUt0xBdNyxGAnBjM23aZFJdtaTX3BYf6PH3oQe?=
 =?us-ascii?Q?9ENB2jxb3KJ75BJ37+ET7qZtQI8BYxjye0zY5YGz2jH/NOCEw1/iD5tIZjAq?=
 =?us-ascii?Q?X8T6oZ+iNCkwPsF/ITudRXmw5VQWOXCHAbJ73Y1eD+GkoQgXrF0lLel8Wprw?=
 =?us-ascii?Q?qep/NcM/x1DVlrdXZT1Vq1iraArXujQvmnMi++hVkHONG6M1L2yc7I0D1ONK?=
 =?us-ascii?Q?5K1J7jCQ8B+NCXHUjxBLPRSuFWJEWKGfBjYyvtMCK5YGgawMq5/yKDgEZp7M?=
 =?us-ascii?Q?FLxhKvVBAK3B+sn1e8aoeyzMjMv43JrCqupofzq5jDoWKrAOAdl99CT/fnss?=
 =?us-ascii?Q?Vr1IawRgsGkHqrp7wjkjFAUJTOgTwf8Y83fm7xjNtMqQnfw3+q1u5gkEZDu7?=
 =?us-ascii?Q?qN43QPpU6rUorviIHufG89+CanBYGMy7k+HLHpYclqV9Ezr4DXQzNqMhC4hC?=
 =?us-ascii?Q?P0CEDLHx25vRbJriH9ADZJs5HNV4PLu31Bf9aZFpyyVzg+XNTl3zS3xwl2sB?=
 =?us-ascii?Q?iRTQrz7iAlfQVC5ZB6dqK47FPxsAZxv4WPdaMGrCJF4dwSlWenTTjpUTbdeO?=
 =?us-ascii?Q?8JPD9vZlHfkR7Jy7Mq3kQl4CHVnVbSKWCNxhegbHKhjopUyCIXTMhmk3I0ia?=
 =?us-ascii?Q?eD5P95EdQEDl2QnzBTy6plTBUmMhhfIwN5DadanVBhG5DcHnnDNTZTjKFcMU?=
 =?us-ascii?Q?p24FyEAGzyisUV2TZq88RUACago6zSJZQs3fn80ZsIRKpfhRwetBwvPhJDgV?=
 =?us-ascii?Q?T2P9lh2rvzkY12II5dfvM+vBxGk32Q+kwFn4P5Q0bR0Vjz2BaNIuh4RSovm/?=
 =?us-ascii?Q?wHEBG0J8wsoSlun6SZVE2Q12FgqRUlyhbYDkouTOKWj3KEYGR2PtHdcvouuN?=
 =?us-ascii?Q?P8PAra5kxwRG815EpvPlHG2EzBL4GUMyZZeij4PK0XHHmEHpkIVQ1CaSacHJ?=
 =?us-ascii?Q?1QTPa5kvXjjujkTasyGb8Psju9AAeWdb+RYbUQCyAxMMESD9A1S0ZpHunzef?=
 =?us-ascii?Q?cYVuwt4H9sbDIhY0j7TgF2XzOLHJKb2F0VsyuaZycyuhgwHknITMvrN9uRkR?=
 =?us-ascii?Q?tggqi/xKp5frLQ93x2div9ZqCODIQlw/obQvQ9d3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7195.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9634950c-053c-4e59-7bca-08dc03377096
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 21:46:22.6140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3zDBfGhaLcD9tnU2J5bll5AHAzKOA5pyT5QiJhg7ewvfvdke2p/1ljEfj4r7agrFi8LmUSkU3trsa+9A6Uy51Fk92Fd49Z+0L5Xcvigyc54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703281591; x=1734817591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rRbLkN2jAnh/J4cQOZSbJKtdr6co89jh0CCdxYRBeRc=;
 b=nnKoS/wTkZPzRxUockArDUpniaIKrTWdlBRf+y6kPxKQwWrF9pdJ7uYm
 shMhbCNrYcteOzZWM+UZpiLmAg87ThE/1Cb0FEJ7WOYRBuVsxZizsV0Fn
 msELacfd+q/SwFivOi1zpgzQzFJcBewT5lnwm9u9ueJ4ASHDuipcM0NAW
 lIFOH2KIaWISoLUKqfu8KoBpliRVxpzpM9qURqFMCX3tJQT0wpbXE6xDZ
 5J95hrnThdWKk66mg42NTJWgvJ8rIwGVvPDzw5osgjnXb8wQllRyFHcip
 M701c+neYH27b83Otv3IMxI0KtOGJj1vGOk2Yt0WUUtSMVovFcKKdthZw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nnKoS/wT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: enable WB_ON_ITR
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Brady, Alan" <alan.brady@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Kubiak
> Sent: Friday, December 15, 2023 11:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Zaremba, Larysa <larysa.zaremba@intel.com>;
> netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Brady, Alan <alan.brady@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: enable WB_ON_ITR
> 
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> Tell hardware to write back completed descriptors even when interrupts
> are disabled. Otherwise, descriptors might not be written back until
> the hardware can flush a full cacheline of descriptors. This can cause
> unnecessary delays when traffic is light (or even trigger Tx queue
> timeout).
> 
> The example scenario to reproduce the Tx timeout if the fix is not
> applied:
>   - configure at least 2 Tx queues to be assigned to the same q_vector,
>   - generate a huge Tx traffic on the first Tx queue
>   - try to send a few packets using the second Tx queue.
> In such a case Tx timeout will appear on the second Tx queue because no
> completion descriptors are written back for that queue while interrupts
> are disabled due to NAPI polling.
> 
> The patch is necessary to start work on the AF_XDP implementation for
> the idpf driver, because there may be a case where a regular LAN Tx
> queue and an XDP queue share the same NAPI.
> 
> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> 
> ---
> 
> v1 -> v2:
> 	- reordered members of 'idpf_q_vector' to optimize the structure
> 	  layout in terms of cachelines,
> 	- added kdocs for new structure members,
> 	- added description of the example problem fixed by the patch,
> 	- fixed a typo in the commit message ("writeback" -> "write
> 	  back").
> ---
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  2 ++
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  6 ++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  7 ++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 26 +++++++++++++++++++
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  2 ++
>  5 files changed, 41 insertions(+), 2 deletions(-)

During testing, when sending multiprotocol (udp/tcp/sctp) ipv4/6 traffic using  
16+ netperf threads we are seeing tx timeouts with this patch after about
20m to 1h. The queues that hang appear to be random. 

Scott
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
