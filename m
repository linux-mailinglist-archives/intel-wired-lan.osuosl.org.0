Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8122C67E0A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 10:48:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01DD7417AE;
	Fri, 27 Jan 2023 09:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01DD7417AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674812898;
	bh=gUE22Wnd+5uv6kMn4cV/SGyzxlZCeDnI0cIw8BUaSaY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P/nx94gukVDSjf0xGKj+D/tVFwwsGI96pp0foA6XOuXWCQPQnDrjy/Xyl0OMbn65/
	 TRe8fgZ1P7jx5ISmqquzk9jk5LdgdassbwyE4Cf8R0wiFS/uANxRYCQYmiwCVaDuI4
	 jdHu2zGET8mfXw432lbHMQtVtZ6sM6W2s8zMFRuh+30X2LHa2cqUhhOnGms/Rx/W56
	 XTFk7unqnyg3WvTxqYinEI6yunFpQYiit0pPwtIN0yRfkIsoRbJsvlW+u0wA9wJrn2
	 9q3+5EQxDviFgvcSEykdR6Q7A/jXfM8KmPUzoEQaEXKIrfl+5Gs1FXlHJ3AN8Eltd5
	 gI/mNtzpSVRJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qo2WvrewAACy; Fri, 27 Jan 2023 09:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2C4D4179E;
	Fri, 27 Jan 2023 09:48:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2C4D4179E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6C711BF346
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9804882848
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9804882848
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mgoS399HwzwJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 09:48:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBCDB82400
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBCDB82400
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:48:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="413278006"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="413278006"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 01:48:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="726643005"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="726643005"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jan 2023 01:48:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:48:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 01:48:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 01:48:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fumJqFk03H/eKUwH7+Yuj4h06XqvcRqRccN8jbKzZh9OJxGcz2n+TDPGaNeo72XTfcVWQDv5ufkhENDdFaYiICtTLsYDkfXhI3jUhdJ7HrKUhE+4VcIwtTWlF6h7gWyYQtUgVgmGV8OeLmWm6RUlF8EeP4QhlmF5Rooq84sCXQaBE+dA3+Xk/YrHqJwIT6acbKz07t8zuL25Xc6XZ/7MMG6V9/PrDpbfyBN6v86bGrfTSlFZKVjtNaVHOa7SAaEigiA+dZ/Z2AOAy8F30q5yrQUD3OyoxDEa2JzHcylUG715g+ono8qWmvVQfju2bB4/ri/UVyjRjc4p2FZ5UqlEGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mFcl9d01Cdld0eYDf0FyF8atXEeb2JwpM22+4jrV0ZQ=;
 b=L2cy4WAfaYx0cKLGmMNTzOe+4pi0k+BuAQfJc9YP8XZJdDyJgi4ad0YqzjXaMLR7TjBYgveGNVv613AzM4mCKBGh/lKJ4hXaKL9jaG8hMEQ871tzHCGc4cOg6AwKZSWDjspTHqmbXM3c+XoBztSDssBuVCZlCMVJf3Y5iwyXkxOkJVoh34huDmX2OA0Zq42RXL5WJOwqvPpD0/P+7K/jABdC0Rx6cP7fNmLoCwtAdxIej6wP3aUw0JFyfIdcfs0ojR6/UMW3U0HgCvVui/l8l/at5h5EGiPkajtp+qv7oLLgu00ZuQbAkXUxtwqG3cA1M5bCdtUlspiYzymyWW67fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by SA2PR11MB5210.namprd11.prod.outlook.com (2603:10b6:806:fa::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.23; Fri, 27 Jan
 2023 09:48:03 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Fri, 27 Jan 2023
 09:48:02 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 11/13] ice: introduce
 clear_reset_state operation
Thread-Index: AQHZK6PzeLIUuR65t0aBVSGWZZPFYK6yEX+Q
Date: Fri, 27 Jan 2023 09:48:02 +0000
Message-ID: <CY8PR11MB7364510F26622A921A17DAF8E6CC9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-12-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-12-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|SA2PR11MB5210:EE_
x-ms-office365-filtering-correlation-id: 80b9a20b-2b3f-40c4-14bb-08db004b9524
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4AxbDPP0sqKv7PE1vdrVvsVYdne2b8pRCKCyul9mrCjoXokg6tcHl29PVOd0URe2c2Vlv9HNBoqBD+J3KEQjdw3qI5u4mGcjDWIVxEVaJuV9YElYgKFoOvnprfhIpChST8MVqbIc0qdZgr0cO/2ZJNvCyUih1SuIbhyBxuxt1tiSfF+mwVS4C9vtiEV3YjOpVe3itn3jG1rVKUE5MOQgVrZnkhEDXshXr7YzvgL/tb+EjKDix4f+MT4kXtv0zoEqo9c6Pr1154cwnnit5a53KOJVjWbHKRQZqN3qcEkGKnhjSTdz9nXCqGBqqLqplpBKIhYySrnLVoDy3N7VTGgEZ+sEDs353PkMlZIPeKAvmwuZBtRAnFKW5ARRMUoCUsP5XLCO/iw/1/dJuAz5jR4MSuSpTRQBjELuRUicOEgiJeDAyyQJvMUqwdwz3TFpkSsFVRCir6vAbzTMT7loCR/2hxfGKj/9OPHhti8LEu+rVEMv9Ap1BrQ8oxMoO1KFk5JyBG96F5vEivxXDdUquejLGlpAggfxZ23NLpsZYNlJ/Ye1p2uvUQXYDUR4DWGs11wxdqC3It8fCshzUok/YYi/jPojmsTEEV6C5xkI4VJR+MyfVKZY6hyaJF6r044YgnskTZ2539yY5Y0ymBdK2lCxfpMEhJj1Fctvl4uQlFFZTxa9Ovy79uJJf6hHsT/k0sxOl+TeR10efJ0aDkThZ5EbRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199018)(7696005)(478600001)(6506007)(53546011)(26005)(9686003)(186003)(5660300002)(8676002)(76116006)(66946007)(2906002)(71200400001)(316002)(83380400001)(8936002)(38070700005)(41300700001)(52536014)(86362001)(33656002)(82960400001)(55016003)(122000001)(38100700002)(6916009)(66476007)(66556008)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7UPS0d++tZIkhEPs+nBS3HN723N6Wul0riXuibXnQPJiQqoDvTqB1qgRP9qf?=
 =?us-ascii?Q?vuJieXZkORMC/MrdwQIYlpZ+lj3f9l7RZ5D2C/kch121dpkRSFswrK6iLJLF?=
 =?us-ascii?Q?hjP4Lcj5zmQyURPFl/xso+2qvL9JdBOkNmqmM3HxLEcBJrZMxrNhVi2B4wJN?=
 =?us-ascii?Q?5bdol+S4mqssgDh0gSZvRIWuWiah41QwpVfmcHZt3B/zGoXdbd+VkElwU9G+?=
 =?us-ascii?Q?qq28zONbuO8xPn2Wlk+uS0W2qOa9nCUbf5EzJzsm5rO9NnH+153kbyNwqG4+?=
 =?us-ascii?Q?FGa9MoQgnnRA1mVFvAk0ePWF6lvYsrokoGa6MO1iizBqyCHdX4wH/DDpq6GO?=
 =?us-ascii?Q?78C4P47NBolwQREwoviaygfqIrG1Xsqp+3FU3sS1eg8p98S8QXD2MNMosB//?=
 =?us-ascii?Q?Hgb3sJ0642J5B/pChiqUqjGqVyzd0nk1ltr7+mzBP5MiF+yfUUeY2rDGapmh?=
 =?us-ascii?Q?eb2YvQogESRJTh9st4cGuETlYkqHIAbbcFK2pSJumG0HbW8ywn2kMZAFWh4Z?=
 =?us-ascii?Q?b8Qm4zp5LaYxptCwdq8XYhq2FOZspUwhbqxBIPxgXKppwAZ4VSwKRygTvptl?=
 =?us-ascii?Q?HFtUblRNTk21C60dIkZ4teBvuLa9eRpTKsOOcrEJk89aEE7ZeawK4SeOLyYk?=
 =?us-ascii?Q?ZPLEn1L0Hnm4RxdLtsFjfWYSAVDmOjscQsTtW8sIltM4oZvCzjWZLpbMuUGv?=
 =?us-ascii?Q?VOMV1u3IZdvVYfp+msxsMKrhWY9NMoc1F0Gz/hNrQib1QphDQCQwenOPxnWv?=
 =?us-ascii?Q?SzL0XJ3Hf56Sg5ONPU8zqEQBWN/6AklzyMGZyg4zV41T/dlEW1R/X8OwvQNG?=
 =?us-ascii?Q?y6QXvnSKWK7JkfPLOrSl3/oWaXwRqPWiL9zYXRhTjAjPGD0jnw+UWaacu34v?=
 =?us-ascii?Q?EPGc7d5e6zAY+fGx/g35kX0Sl51Uzrri0Q7Yf1ZWCCr87tn/mttzI4KlEVDN?=
 =?us-ascii?Q?OgZ/HulB4z2DUAiEbMZnsZGs+kSWmxtH75GPPEgsVr+cM16u9oGsUaNxWSRA?=
 =?us-ascii?Q?NohI3o5KZLxshpDYZRJ+j5vGFEIVfSGhOIQwLgNwOMxPP6v2eUg/tG4twu6c?=
 =?us-ascii?Q?fQ7BHYl8VCwRtKijexGThW4gb6MfEMa7N0X0N1ThedC7+tMx6VPp5E6BT1Qp?=
 =?us-ascii?Q?CgzKjDECTjGvuJV/LVoFmaiHXjyU83aHLyR89ebc9Fso2D6EZhjeTeURfF9a?=
 =?us-ascii?Q?AKgjnKXM2fbwOObVa80XqzxytPYd1oQFuFe3iLMfgzTsFptGP9FgasJXbOEi?=
 =?us-ascii?Q?fQODVxiDKbl47wygMfA3JnL8yacSgdaiJAiSdJa+bU/ihEnvcrXXyZ/cUlPF?=
 =?us-ascii?Q?JKAXDl4zJ7iZ+hX3ArnAQ039tQj20vggtU0h8qB9UyzlY+A4Pfz+ut1DQs6G?=
 =?us-ascii?Q?3fCsHWXlCnQtsRmSFmRpq5ZpRnEQVIZ6tcCKMvwavrNaSsrX42NuLZ8pDvHl?=
 =?us-ascii?Q?WxGyVPahaZQa+XS7HkPvTnAISw4C4N3raEuHnpl2qqaCsNMjqBMB9J3pFaZl?=
 =?us-ascii?Q?q6sCBeSI6FdkFMgsFuYnHe5SMaRAjt9Sl0EVSTHr6Ez5AXq/5iKNME7ShNoN?=
 =?us-ascii?Q?+5wjIUr3drxL88jBPG7ET69Sw2Xcm5TQfnzYTOZc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80b9a20b-2b3f-40c4-14bb-08db004b9524
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 09:48:02.7305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1La7txEidKqSJoPF3VwbMsPMXBE/qZz8eVJLCl9Yv8PzOXiJrAHwc27sSGwmqNiarUhJFb3Qh+i5PzXi9Jr/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5210
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674812890; x=1706348890;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2Qga01Y5TydZcjpaJyzvci4O1nIFY5elOU8oAEYmHeU=;
 b=HztGnk5vHaSryG7K9dIkqJECa1IfbxvsIuyGXXpIRObOPZ4DBUMx8w4J
 SBvawvtoYGnahhF4KGvaUZX/fb+5DaWcV3dz8ZFoEpakPj9kE9L+HTx6s
 za9btmzYSImakEROs8OWyl6vnkGvJc6EMPoyL61lgShjdvhkvtm73Ai4V
 WHGCxLYcN+TVB+UX0ZbF5fdffrkxeb8WvAuYx/2AF6R2W+l3oECYKwLxA
 QVIa7wW2HfXVkbRobMsTw4lrQO0UKkzyvrEcJM9s2g/rLONRdjgVtNcij
 UrTuNvAgP27IMuO7VmeF/SqMCnxVVHe1NbiT/WwcxleomYYc85fukleCV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HztGnk5v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 11/13] ice: introduce
 clear_reset_state operation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: czwartek, 19 stycznia 2023 02:17
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 11/13] ice: introduce
> clear_reset_state operation
> 
> When hardware is reset, the VF relies on the VFGEN_RSTAT register to detect
> when the VF is finished resetting. This is a tri-state register where 0 indicates
> a reset is in progress, 1 indicates the hardware is done resetting, and 2
> indicates that the software is done resetting.
> 
> Currently the PF driver relies on the device hardware resetting VFGEN_RSTAT
> when a global reset occurs. This works ok, but it does mean that the VF might
> not immediately notice a reset when the driver first detects that the global
> reset is occurring.
> 
> This is also problematic for Scalable IOV, because there is no read/write
> equivalent VFGEN_RSTAT register for the Scalable VSI type. Instead, the
> Scalable IOV VFs will need to emulate this register.
> 
> To support this, introduce a new VF operation, clear_reset_state, which is
> called when the PF driver first detects a global reset. The Single Root IOV
> implementation can just write to VFGEN_RSTAT to ensure its cleared
> immediately, without waiting for the actual hardware reset to begin. The
> Scalable IOV implementation will use this as part of its tracking of the reset
> status to allow properly reporting the emulated VFGEN_RSTAT to the VF
> driver.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * Add no-op version of  ice_set_vf_state_dis for when CONFIG_PCI_IOV is
>   disabled.
> * Make ice_set_state_qs_dis static since there are no callers outsice
>   ice_vf_lib.c
> 
>  drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 16 ++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 12 +++++++++++-
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  5 +++--
>  4 files changed, 31 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 3b98721fd9d8..5d890b6aa9d2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -537,7 +537,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum
> ice_reset_req reset_type)
>  	/* Disable VFs until reset is completed */
>  	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf)
> -		ice_set_vf_state_qs_dis(vf);
> +		ice_set_vf_state_dis(vf);
>  	mutex_unlock(&pf->vfs.table_lock);
> 
>  	if (ice_is_eswitch_mode_switchdev(pf)) { diff --git
> a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 46088c05d485..4d8930b83b35 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
