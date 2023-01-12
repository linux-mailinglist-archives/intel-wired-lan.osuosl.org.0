Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE24667332
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 14:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1E5A81AD1;
	Thu, 12 Jan 2023 13:31:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1E5A81AD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673530297;
	bh=T3i0JNH9VsDrBdE6BPSc+R3XzOpUSfuyZoxc9dBTkl4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6rr2lvr2lYf4MjSFUwe1JzO4yWyQhsw5ssbYmOqAWk3xVLWEJaEdY0tFRDg+8iP6z
	 7e4TnQ6wgfCP9+434YdWpiqMzsCfZhTBBTkUMUt2Y0GOc3UY44+dlpqyzoR9oh4lQ3
	 /ypa6ivvJ6aIW+/KwafOSxTh2bfV3iWxiXRCpBEOWStkDf1F54CN6MmW7LG7B2KDxp
	 gfy873zV9YO3dEaZ3rc0+eyb/OtVw5MT5JcD5oWsYUqZMUmrKPkTHISOhpWsUUUXMS
	 Ffn1MvEllU3TNXi7rlxSZ85/TbpGTBQVhT3OKS432bsAabPrDbCUi5XztktQ54Qv0R
	 VBhOVcvqvYdTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6uo4irXawYH; Thu, 12 Jan 2023 13:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE20F8141D;
	Thu, 12 Jan 2023 13:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE20F8141D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 559071BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 13:31:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3240D606E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 13:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3240D606E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ienv2Psye5Pj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 13:31:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 196FD60681
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 196FD60681
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 13:31:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10587"; a="324938931"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="324938931"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 05:31:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10587"; a="607787884"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="607787884"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 12 Jan 2023 05:31:10 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 05:31:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 05:31:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 05:31:09 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 05:31:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNyXJc14/P/cHZTD6xdQw7tjacBi2LULQB980++0eGY7YdqxpbjNuOcMzrRsEq+Tm/2Jl7Al3UAuBkvw/LOdMMEEE9Fr07gSS86hQNL3CI+o4LATUjVA99yLstoY9MbVLmK9TJfIH+P+JFwjPCNCDRlpZvZNghxBDYpBEScDxn2ELF6yXaNLfECzjYGk/xVqGM4wLPDP1W0d4rJNhnBAvCM7vMI01KjRHPK4/xQLuPODtmNLbAAzFj4cC3l9gkXuzs98veinR6A0WzfwXZN50WkgGbuicmGCNAj3UFr/37affnj0VI98yvrLhEp9Qy7E7bDmm8NzXfZzqHge7zu3hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cqHByfvHJM31OQ5h8sjvuQGXjA6ZsCEXzeogfP85EXQ=;
 b=W9qpj3F0Fz6wG7xEZKUkN94vM00L5mwvLA/GE4IbyA/beT5u/jt9QfZ1FWKw/aNHgjoQiv/ycdlAY8Rnl8po2EDxqHP7/ANuBYgIO2CBrf/r92al46B9PgHpNCZm03F/S0BL6uCpvDyE0q7XKCnF6qdTNyVpO8ZDzAguwq+TectopmRGLfBOXfS97ALF8R1EgGpxXyJ66fULF3eoxp7WwwPA1sxUq4bYBvUb1QzLkqUaLaeJFxpIz3uPr/KC+ReCtD6qJAxCAOdDZnMp3nr/L5jP73b14apVqtZ5V+2ZRnTaAdyR9tzosguG8iGSOYJHNA8AqNdbdSG0PF7UtzYTdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20)
 by DM6PR11MB4612.namprd11.prod.outlook.com (2603:10b6:5:2a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 13:31:07 +0000
Received: from DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::cdc9:cafb:fb21:8ce]) by DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::cdc9:cafb:fb21:8ce%6]) with mapi id 15.20.6002.013; Thu, 12 Jan 2023
 13:31:07 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net v2] ice: Fix deadlock on the rtnl_mutex
Thread-Index: AQHZIP6Giw6BFWb/QEuESGZt/Qoxe66QKbiAgAqnP0A=
Date: Thu, 12 Jan 2023 13:31:06 +0000
Message-ID: <DM4PR11MB5293E8540016AA8AB2E139F587FD9@DM4PR11MB5293.namprd11.prod.outlook.com>
References: <20230105120518.29776-1-mateusz.palczewski@intel.com>
 <20230105104517.79cd83ed@kernel.org>
In-Reply-To: <20230105104517.79cd83ed@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5293:EE_|DM6PR11MB4612:EE_
x-ms-office365-filtering-correlation-id: cac5722a-ff2f-40f6-828c-08daf4a14283
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jSp86DSr6p3qX0vMNaruwEFZ35vN/psZg4uSXHV9Asd1+y0lzLnSF3j+ZHr9u51wQ47hnEDgR6JMe+9joJKxP5r6HbZJzQAi+v+kH8GxvMu8zl9kus7z5UfeOGpiCFz8Mv43a+xHHS/lAT5xwOSUFt0JRJ5eru2Dvhl3f+QPlAALXT2x72AaUgoX4sesQXnUhuPh9QpOq+CV8UAMtn3/x/x3DZnvJlgc/qSJACVCBLLF2ZVPd7BYvl/CZWtTxtmxJyk3WolOA5YGVxVHaZBDNF6amld8L9PPpjtCE23IMbqQt+dEHQKHnu1kfyVhgVwOBeeiYlm+nRhtiJBG5OHqcIaInrHRP9sFLm4Ix5ljk6p5eZsgjNVC/tf2mfDibYcCvP14vqIZJT63kftoUnRSNZYAMa2dlDMEsev98sRgF5NhtgKB4LgiMCZpG2eC0VDy6cKkblN/OxCwZ4F2+CB3YQmYACcJuyEE7gtdL5shjIyHPoklHytEc0XHmE3a3dVH14WWEhFgCwZDI0baLcS/3UBlY2qVbIXunHi5sNkV2VvjUhWtLlNUpFw+jwrPKxGHHYxQ8gMEfp47qnkcHvZr2qejdlmYiLuHl9o6k1KZCx90H78TK+S9TXY2RAkcu0IVUD5/QT7wol33HMywZjaiUOgQDHrdvmEzNAao8tmUG0q9oYM4dP4f7Gf7QgzzdSKgbaaOAtJt88FAoU6WrAQ1tA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5293.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(366004)(376002)(39860400002)(451199015)(6506007)(2906002)(4326008)(5660300002)(52536014)(8936002)(122000001)(4744005)(6916009)(64756008)(8676002)(66446008)(9686003)(38100700002)(82960400001)(41300700001)(33656002)(38070700005)(478600001)(66556008)(66946007)(26005)(76116006)(186003)(7696005)(55016003)(66476007)(86362001)(71200400001)(316002)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B5HyTejcOEn5vSbXZPIEjBsUC/kEzBPK4YHLXglkyU9GIo5c8LFw/pqf8CzF?=
 =?us-ascii?Q?UzqcXH5/0vEgQWguNo1wZ+00s+S9HGtWiLRvG/KeYOUWpvtSZvARmTNyogUj?=
 =?us-ascii?Q?/watLsIOemBLXsKK06oe33z9qqQHMPUGRVimW88nLwz8PKwKtBWkj8o/DZg7?=
 =?us-ascii?Q?rBkFlLmzeTmCXiN5z7u3Pc7TX2m4axjRWjhsr7LZ75e+90vEHghtEbdrLx7h?=
 =?us-ascii?Q?eOn1ALmO2m2BUFS2r6esLpqJtuTclcQEbFxnkpPzNlS3Zqo5LgzHRDJ7uuxQ?=
 =?us-ascii?Q?9i9f/KYgpS1nyV4KNn8FbYwllURBvuajq47OAf8NqejRFZIYsi/xB9E3nS6s?=
 =?us-ascii?Q?kdg5lUV+BDNhRhwRu7Fexozwo/c7F/ozhVVYmGGDuXGPzP5l4YN4kYjNatXO?=
 =?us-ascii?Q?qyvz6Emfw/vBgespk4WA37Gk70I7i/nJ8rLPG97vW3gseCm+0IYM+5C3a+Fk?=
 =?us-ascii?Q?J5BDb4VHVVHtjVpDXSbykBAl5Oi5sbfOLvKBQ1YuY6ue01OyYMAxO1W9l1Eu?=
 =?us-ascii?Q?h8vOwwCH7Q786ab/Wi8gp0seZegETipmXFbUXkp8kz6RJT8prZGh7lMNoC49?=
 =?us-ascii?Q?/enL9wCEj86Ioi2m0lYrFeWSHKz1zSpKTietQYGceNPafx86+50ELsmlXPBa?=
 =?us-ascii?Q?FuQk+mRMOBIV1hES4x0WKkgddEIrzzC2U+Oo5KBSWBlfwgtKCHc/G/Y7tKpf?=
 =?us-ascii?Q?ffHNsUs8jVbt7lsCiJ0WP38At7E3Qz6otfgfiJ0apAkGw/7VPU96/Vt9scBD?=
 =?us-ascii?Q?droHKPIjfeOGgBKhUo93tJ8Dl6RIpxB8Ww/x2pwsS72WGIAb7go16ZrXLYZw?=
 =?us-ascii?Q?RzDVljAwVRh0Jz4Em5eiijIvff5Rskraf61hpKGP1ehZV7burrTQDC94S8iB?=
 =?us-ascii?Q?vsKFDguMcKBYcqK8YGmkLRrect/noydk1UFaSWKB0xGu1QZaR3LbCl8+mCy6?=
 =?us-ascii?Q?u+KigZxXNbpf52wDhq7nRxijl7GRsqhfMebGjzZfE0hFOPoMvfAdvGG3/ua6?=
 =?us-ascii?Q?2ZYp9/hb3Y2lTfaGd6Oi9lNOGFL0Gcwp7ByBbSl4AmvlG6FW+QcWneKhE0Ir?=
 =?us-ascii?Q?jYU40VJ0snkasB31jVhgm1opmyIgZCT3LnTQhuh2lOERl6BrWvGXjd1iEdf0?=
 =?us-ascii?Q?2gJSP0GXcn9qHUlOPfnwv27vxBwCy/0jqkSzX27zPhBy37vGesjm7dZoul2d?=
 =?us-ascii?Q?KzRLQn37IdVp71HaSFpd29k3w70FePs/SwBJVkod3m7hOTXUGRQsRoUqnVDj?=
 =?us-ascii?Q?qjHMVODOWOsw4/CG0U/OKsrm/WcgSBcWj5haQpQMHAbkMXUZZSput6sIxHaQ?=
 =?us-ascii?Q?tUH4ChNs7yPA5bLoY/pnyL9Rbhq78tQ9EI3K90nad+HS/gFA77LGwKbxLGCJ?=
 =?us-ascii?Q?zIFdBbgH7xlIZ/UJEqILzUjMMOKIKFXmzdsi32UB+Gsr4Gfzl8v9PFa8WRbH?=
 =?us-ascii?Q?9EplZHbne0yK5FHUHAgAEIYIGpIyXhnRgXoIHjZiegWqAvCizmEAquAO8unz?=
 =?us-ascii?Q?ZFbsdRZcDys0wLcFYKPvgXY1oVuH7hYph5VgvQr1D2z/S6cWII2AUZKnHDs+?=
 =?us-ascii?Q?ZuRJQQPSHSOBDY78gb9IMVIe1V1DapfZ8L5aFlThMyCbMop6xPKJlxJrg6wU?=
 =?us-ascii?Q?hA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5293.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cac5722a-ff2f-40f6-828c-08daf4a14283
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 13:31:06.8860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eHyzHceibUz1U2ZZyFO/duA+h+0WFgCGMft5yOKpp9m8AjA/0hDcY4hQrSFSwZMeu84oep178mGhGHbSW8QEfedEDeHLIlzPcUbY/ftpZ0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673530290; x=1705066290;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FZpOzjYAJVFcM9tv58QpPjK0v2b3vyOrFNxJWr/kYjc=;
 b=Zj90FoSUMfaARSybzPsoSgTiQu/C2K+U8x5cwWm3KXAr4Ab9zuC8C8BS
 Oo5bF446IAJOeUMdWWRKIxQPI/XhrrlXj2Fnj3qi4UP1pKRkmlijB5OqE
 Lac0+ZbNSR/tuYgkSRjUiXMn0r3b8ecPuNCl83IvW9Rg3wtTxoM+2Eo3q
 H87sHkybSJ8Wx9kOzOjgaWQZHIvkmVqs6IqGEDfEXXE3AofLpUDlV8FWQ
 S1qUNXElnBWIh7MnD7J8XWz+LJeKXCoJOq3QePEMstxuOo7kGpgFvV0Te
 AbuMJ+2+9qYjqpno61t0XY/4N7WGG6xK0VE3pU1/T+dyYwXAhF9pMDiIJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zj90FoSU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix deadlock on the
 rtnl_mutex
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "leon@kernel.org" <leon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,
Sorry for late response
>
>
>>  		ret = ice_vsi_alloc_q_vectors(vsi);
>> -		if (ret)
>> -			goto err_rings;
>> +		if (ret){
>> +			ice_vsi_clear_rings(vsi);
>> +			goto err_reset;
>> +		}
>>  
>>  		ret = ice_vsi_setup_vector_base(vsi);
>>  		if (ret)
>
>Why do cases which jump to err_vectors no need any changes?
During my testing I saw no issues with cases when goto err_vectors were used. Did You manage to have other results? 
>

Regards,
Mateusz 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
