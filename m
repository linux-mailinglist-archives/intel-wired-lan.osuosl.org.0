Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0B87B326D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Sep 2023 14:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E96C542DE7;
	Fri, 29 Sep 2023 12:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E96C542DE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695990248;
	bh=26R88vYLjdT2AS4V2CjeR/kP0ClXlI4g9Zit6Up4kls=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rfYNa83Vk1OvwI6Kdt9oIrIw+u2tlJyiPV0Ef7D9+LmAiv0FukDJbZxVaBCNFulnf
	 XR4Ucq1treCgzkfrG8C34zViFf0Ff58V7zY5CjyI9pihtbX3nI1C7L77qgJsHpuxAv
	 GPAld3WBMnDlvRnIbjKKnpRyiKPFNJBnQ3rYuTgLnA1sEJlhf8NQ9w05ce5YgFrS9Z
	 8ZMgrQWHkeTA1GnI6TYHnRbBVMbtD2f4YsJt4bGPvKuIm2OCY6VWtT+nQrhwOjbShq
	 0R+cvgRPRqBENWb3FoFV8YPTghfW7v4iA/8mUYvPAoJ5u/RZzczoRGmCA1yCAW0E/o
	 MUvS+NjVjB1pA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OFF5KVjGJMRr; Fri, 29 Sep 2023 12:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 016D342DBE;
	Fri, 29 Sep 2023 12:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 016D342DBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D71D31BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Sep 2023 12:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B594E42259
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Sep 2023 12:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B594E42259
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8jfzD6M-RzMr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Sep 2023 12:23:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84D4142DDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Sep 2023 12:23:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84D4142DDA
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="379556903"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="379556903"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="873673653"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="873673653"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Sep 2023 05:23:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 05:23:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 05:23:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 29 Sep 2023 05:23:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 29 Sep 2023 05:23:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxZpCsP3B6QriIc2UXTKIQJ7l0vP9rh6cGGierldpTtD0see69+6MR04OLaLlAygHunKotFw/i52o0M7VZWsrc/caENs4wofYGexM6PcSRbd/DYPz4pxusqbt+U5gKfnT9ng0DQ3FAUefqKcS/qlBL78KeESJeM8vK7VUo/h+zjQee1nmr5pscd7Kv/SldISedZM9zxCNJ1crmH8yda4yApRctITEh5/M8XKRN5R2y3TU28CXd+cQNb5GI5vdnalq1+7zaFuwtAwwAHe4WF4T+DTjOlvGuaRLmxJQxHaf/Z+bE2CezoPpHl9eRLoNiur+IX3gUyoq6AyJ26dZEl7mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hfBtR6HdUurBnHEASyUdU7hsEOTTw4BgmJBZReivek=;
 b=I6vp0FpD3C4V+7SS6340819EDadOLT/toowGG0DZzCvfFxORTNGLIFEF+d8I2UlITZDBWnE+tUxddzMolhiCM9FYgmH4FxRygpFrCUiNL1x5QylXnFaQw0XaXUYT/m+zDiVj4+B0P3y2F9rdO4JiK4iS71YiMINPBHgZG9lNIPR6YxAaHNx1RZ9VgDFM+YrQn4O9sTthZ6g7WaZ4y+f9XEgWxzkY91unesMovbctu2G93NoxMg69SSIjMuS9HZqjy4eO4W3z41eNrpyrvJflo9TMxO3ScpeQ80YKVsRb1fpROEUp4BBWEK7QTaAttpWDxzrPCl3uIzv9fGBiX9A1ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by IA1PR11MB7365.namprd11.prod.outlook.com (2603:10b6:208:423::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Fri, 29 Sep
 2023 12:23:46 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::8272:9148:30e8:383a]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::8272:9148:30e8:383a%3]) with mapi id 15.20.6838.016; Fri, 29 Sep 2023
 12:23:46 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH net-next v2 0/9] i40e: House-keeping and clean-up
Thread-Index: AQHZ8R0ZC0LCmaMWoEqrjK4zXEebI7AvL9kggAKMteA=
Date: Fri, 29 Sep 2023 12:23:46 +0000
Message-ID: <SJ0PR11MB586697D7A5196CC06F95BF01E5C0A@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
 <BL3PR11MB6435BA551F4D1F52BAD37CC1C6C2A@BL3PR11MB6435.namprd11.prod.outlook.com>
In-Reply-To: <BL3PR11MB6435BA551F4D1F52BAD37CC1C6C2A@BL3PR11MB6435.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|IA1PR11MB7365:EE_
x-ms-office365-filtering-correlation-id: 97388c64-df9a-4650-f4e1-08dbc0e6ed9d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IYxyVpJD2LthHavYiyEheadOk0/HuRpCRjhZP7EJks9o1cnHNZz0nTT24lltdZTksw6wxs4xjiRrQwIH7Ph9Hm6XMZmT/67c6xPXbkampLfCX/B8CPUwneImQzRYTVBcDP2vHgwZhZzPxqafps/i9YXdS2sPlCcIf9CBJ1VzRyhKAaJ9M85TaK88VuTOcLWUKLE2btYt5M8og23zc6N0e8FydYwsiv4T0OyFwPTZz6lC5n90J/qEYA4SK/bb6Gy2k6f17zQTuEjc6D+S2lPqVQxuw11sZ6BANLYOHazmKSTt/dSNsA6bhN2uL9VC7R08z6NhAXMowhZqNc9NvqA5kOiBnOLdNytmOV7i5kXXqX2GMljIyfJHnJQT1gG5Qntik9h9U9U6FSta7y1aUNs4tHcmhHc0/NwgiBZ0L4e+4bgE79BilpO9molDtsY10aFNFRbwjvmdhl+aU/1NJx3h07KAXjcRrt8Q4psHr28BfOsNrT2uXT00mus31y8Yjuup6di6QWcEKN9gm8vxu46qVFIi1kyw33+abVrpKuJAEW+u7I8fmas0OmlbcRd+gojOfIr8bgXDrHur+6ky7v3qeisYhpmf0oeDp6NhUHbocwk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(39860400002)(396003)(366004)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(316002)(6636002)(26005)(6506007)(53546011)(33656002)(7696005)(9686003)(38070700005)(38100700002)(55016003)(64756008)(83380400001)(41300700001)(54906003)(82960400001)(86362001)(122000001)(66446008)(8936002)(5660300002)(52536014)(6862004)(8676002)(76116006)(66946007)(4326008)(2906002)(66476007)(478600001)(966005)(71200400001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P3tJxk7t9sDHIqDTblyUMTftE/6AZE+jhtsvkfdxq8CejSy/1SZFWhhqtz7d?=
 =?us-ascii?Q?fzvRzz88v6wo+uHkMbI7VdhMZLBppjv3wRrZU/ujuikIoc+6LgJBRjf6Vt20?=
 =?us-ascii?Q?WOoq0iGQLFXJo7OoKKh5t+917/Ua9HmpsRjKv7HxUSu+eeJfxknGVcJrRZ2M?=
 =?us-ascii?Q?cTYg4Mk2o87imckMP3XWTVb3tqusHdNwRGLYUhnesE1cWySLAGkSDEdI2S0K?=
 =?us-ascii?Q?dI8GhTvGcgfOLxLcEWWnvgEGfS1hxnsb0XCI3Ug8qJUgaUwuSrmPABfPh4N/?=
 =?us-ascii?Q?XcQn35FkjzM6Ps1rdS1CAZvZbX8B4l8YwIv0eOkXM3dXPP218CgDJ3c58CAi?=
 =?us-ascii?Q?SXrcoMjf3rcxTlFvM3XA5nztykplbJbwDyonfiWS7rX2baSe6+G0n8Qk6ric?=
 =?us-ascii?Q?Rl+RAi+2F/OPqCVVLhEHIyRwD4t4rzHem3w2XLruWL4gvjWZkqf7Jan+mQT1?=
 =?us-ascii?Q?9LH9ZIJ1DKGBdxixlU12FBylqVGpktAeNt6BNJpXAVx0y0X7xy9vKhu7Cc4o?=
 =?us-ascii?Q?KQ/wfmKGjBV+lpARkMynk7/BY0YxN+RMb+Ex46IJYeDXYB4T/WY9QpCd355E?=
 =?us-ascii?Q?QyfVil5GlmKJOcP/iNuKMvynieQ3sr/zKqdtgxLPYhZW+iEds5FsISCT9gDB?=
 =?us-ascii?Q?RE3SuavOC6xvba2mlC3r/0hOyy4uA/CkkpeiOUlHRh8R+8NB5ZgMHIWQO7KO?=
 =?us-ascii?Q?CmnK60FlAaMP+Gbul9btpLJofhB2wnoLYqqaqIR0wjP7LyfxEqanMmKWAMMU?=
 =?us-ascii?Q?QtSqM1vBpch+oEoI8OgsPt5H7VyYsIImtcToTTjKXwa/h0WyumJ36ovUHzuH?=
 =?us-ascii?Q?cZhkSMz+rY2+xgdmT1CGx171n73i4vD/Cxzoxz1dFeTLdNslWPQHYawOFiV9?=
 =?us-ascii?Q?OaN35OGqxqa9HR64XCMy5Fwbm04hLbL9aWW2pA/X4T6EJJPXgRxQHe8HzqQs?=
 =?us-ascii?Q?dA++ViQ3saNIqLhiH78f2FTBK+9b1AADeUD0xZyiW2YEQjyFoy+ICThwQoLw?=
 =?us-ascii?Q?PoIbOZqcUAMdEEHxGEPFacwZpl3kzVLTnY+qcQZs8y73XCUO/0bxaQfQPJjV?=
 =?us-ascii?Q?UxcT+8O1UX4nr7AsGV3eEP7FPeW+j7HTpS2eCBa0uZn9WIyxpG+kZM/+hKqo?=
 =?us-ascii?Q?yrdeZrmUCjYMhYIsUPRCR9vYl1PwnLJuxUuqy2jWkzIjMtR0GmsRYnALQapz?=
 =?us-ascii?Q?tARWWN5V7CA354Q18AOUIMd2NKPW5nUI0vwfj+njl/lJPFOX6QUIM8T/H8yk?=
 =?us-ascii?Q?4KDc10EmynZ2XZy7cQ2hiMmHEPyQNCQF9K8gzT6uFA5UXG7oMl9RDXfjAvN+?=
 =?us-ascii?Q?7eB1xxqSy1xh3XbVuDNM/qK8kxf/5dT4qsyQ80DeObeoQuu8FFDZgJl1gNFO?=
 =?us-ascii?Q?5L5eaDKqC/qjIH2ZEQ30rJrLU/1fM8m2hfY9yKE7bxftD/0nLQjxHoge8vVv?=
 =?us-ascii?Q?Xt9Qt7fYhQAdJ39p85hNOCcBABSnGe67infwB/gda/hQSHbw++AmP9hKeijF?=
 =?us-ascii?Q?k8xyrIt5zs3+n38u2Oi+m8jj4EvI5dova+4yKh91wSM/zKuBrSNnEdhQz8Xv?=
 =?us-ascii?Q?RaXbxyvewsXRPvPx7FmULJZXi9QC+4XqXpR5VcHLLgACxITNavFBcwQtUJ+/?=
 =?us-ascii?Q?Qg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97388c64-df9a-4650-f4e1-08dbc0e6ed9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2023 12:23:46.4311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: akRyl9quLJmBtC5QjoBR0LYvimFLGKu4KkN29hyQhNvgXrQIh7CBd92oOexgLeVxMRVvTYj2BNPTnz7Fcnw6Pl6QziuVHYAIX7Z/AOuMCXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7365
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990238; x=1727526238;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+P7mvnUxO+bo1LZKvHtn/egn4hy3YQpgQdWVWZD6Cg4=;
 b=MJ44d5q+ODIlZpRiQq47CBwdJogA8SA6yLbFUJYi+A3s8DQh9mpYNKrr
 InUWH84BS+Fe4uY+Ch9nmFA6ZNmBcdsZ6CkzwVcWmXCDan1FFxQn/HJzc
 LhwTTKYDkPeB7qbTEKfOrar4V4LOigs9V3O3XSNz/d/uo2LTWIrz4z6r+
 +3M1/0zqA54rfPiYDslg40wbF9HRKcVhqbciFLoz2yig5NKhcxgqMprFu
 peEQEP0Y7WWqG3cJwHImqEJRGCzesZxpebusRxVB+BsglGwSMe8E9psBq
 GB4bH2pdO0gYMZoRbYRHYxGXH2Ad/Sp7VJRhcM12lUngc9tJmUpjK/OUw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MJ44d5q+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/9] i40e: House-keeping
 and clean-up
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
Cc: "Kung, Thomas C" <thomas.c.kung@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Pepiak,
 Leszek" <leszek.pepiak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Wednesday, September 27, 2023 11:27 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Kung, Thomas C <thomas.c.kung@intel.com>; Pepiak, Leszek
> <leszek.pepiak@intel.com>
> Subject: FW: [PATCH net-next v2 0/9] i40e: House-keeping and clean-up
> 
> 
> Hi Alex,
> 
> Upstream patches from RedHat.
> https://lore.kernel.org/intel-wired-lan/f6c4a6d8-0c3f-dbb1-17ca-
> 3a594b456103@intel.com/T/#m36e9b05728a05056ed678112ecf2e3e6250e17a
> d
> 
> If there are issues/changes you'd like made, please reply to the patches.
> Otherwise, I'll apply them tomorrow.
> 
> Thanks,
> Tony
> 
> > -----Original Message-----
> > From: Ivan Vecera <ivecera@redhat.com>
> > Sent: Wednesday, September 27, 2023 1:31 AM
> > To: netdev@vger.kernel.org
> > Cc: poros <poros@redhat.com>; mschmidt <mschmidt@redhat.com>;
> > Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org;
> > edumazet@google.com; pabeni@redhat.com;
> > intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Subject: [PATCH net-next v2 0/9] i40e: House-keeping and clean-up
> >
> > The series makes some house-keeping tasks on i40e driver:
> >
> > Patch 1: Removes unnecessary back pointer from i40e_hw Patch 2: Moves
> > I40E_MASK macro to i40e_register.h where is used Patch 3: Refactors
> > I40E_MDIO_CLAUSE* to use the common macro Patch 4: Add header
> > dependencies to <linux/avf/virtchnl.h> Patch 5: Simplifies memory
> > alloction functions Patch 6: Moves mem alloc structures to
> > i40e_alloc.h Patch 7: Splits i40e_osdep.h to i40e_debug.h and
> > i40e_io.h Patch 8: Removes circular header deps, fixes and cleans
> > headers Patch 9: Moves DDP specific macros and structs to i40e_ddp.c
> >
> > Changes:
> > v2 - Fixed kdoc comment for i40e_hw_to_pf()
> >    - Reordered patches 5 and 7-9 to make them simplier
> >
> >  drivers/net/ethernet/intel/i40e/i40e.h        | 76 +++++--------------
> >  drivers/net/ethernet/intel/i40e/i40e_adminq.c |  8 +-
> > drivers/net/ethernet/intel/i40e/i40e_adminq.h |  3 +-
> > .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  2 +
> > drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 24 +++---
> > drivers/net/ethernet/intel/i40e/i40e_client.c |  1 -
> > drivers/net/ethernet/intel/i40e/i40e_common.c | 11 ++-
> >  drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  4 +-
> >  drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  2 +-
> >  drivers/net/ethernet/intel/i40e/i40e_ddp.c    | 24 +++++-
> >  drivers/net/ethernet/intel/i40e/i40e_debug.h  | 47 ++++++++++++
> >  .../net/ethernet/intel/i40e/i40e_debugfs.c    |  3 +-
> >  drivers/net/ethernet/intel/i40e/i40e_diag.h   |  5 +-
> >  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 +-
> >  drivers/net/ethernet/intel/i40e/i40e_hmc.c    | 16 ++--
> >  drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  4 +
> >  drivers/net/ethernet/intel/i40e/i40e_io.h     | 16 ++++
> >  .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  9 +--
> >  .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |  2 +
> >  drivers/net/ethernet/intel/i40e/i40e_main.c   | 57 ++++++++------
> >  drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  2 +
> >  drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 59 --------------
> > .../net/ethernet/intel/i40e/i40e_prototype.h  |  9 ++-
> >  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |  3 +-
> >  .../net/ethernet/intel/i40e/i40e_register.h   |  5 ++
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  7 +-
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 +
> >  .../ethernet/intel/i40e/i40e_txrx_common.h    |  2 +
> >  drivers/net/ethernet/intel/i40e/i40e_type.h   | 59 +++-----------
> >  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  2 +
> >  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  4 +-
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c    |  4 -
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  4 +
> >  include/linux/avf/virtchnl.h                  |  4 +
> >  34 files changed, 231 insertions(+), 251 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/i40e/i40e_debug.h
> >  create mode 100644 drivers/net/ethernet/intel/i40e/i40e_io.h
> >  delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_osdep.h
> >
> > --
> > 2.41.0
> >

Reviewed-by: aleksandr.loktionov@intel.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
