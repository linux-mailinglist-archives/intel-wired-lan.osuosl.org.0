Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9012F601B18
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 23:14:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2166D60D91;
	Mon, 17 Oct 2022 21:14:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2166D60D91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666041271;
	bh=ey2N/jhMRUgAe4qUJOWvYB/OGXGpHizhwQk8enrEp9g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NTv2Ojf9f1HURDwJvPdETLN8uNqh3gRNPoLaJ/xhGF6F3r/3FEmp9mfKW6UbbQ/RA
	 a9Wu4AT6GXFigFWen4++oxP1HEvyW3KciCl4nblzkqZZysVMMBUKXuA13kV5mXiGzT
	 4JhQsToNk6ogYE4ZfauTAIm6JeuubM3v5Cg+T1yTyPFb0jKZhrHViVo3++RxnHUl9e
	 0rZoOxCuoya1EA3phCkOWftSikN6KNDvnhTJeo+mxg8kB0Vl4OAe+6+kXvuNhe5Vxi
	 Q0PIr1pzo/1nJomP486CSNKeJg1HGDbpd63VHh82CvNk4eWYbv3kcrBZyC8d02JqcL
	 L70bZI/q7nfSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGLE3qcXRq0j; Mon, 17 Oct 2022 21:14:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E713A60596;
	Mon, 17 Oct 2022 21:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E713A60596
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 036F11BF291
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 21:14:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D192A60596
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 21:14:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D192A60596
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vfl_S6-mdAWw for <intel-wired-lan@osuosl.org>;
 Mon, 17 Oct 2022 21:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 778A26058D
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 778A26058D
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 21:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="289217480"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="289217480"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 14:14:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="733317746"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="733317746"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2022 14:14:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 14:14:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 14:14:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 14:14:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 14:14:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzhXdNzzGnG5IUJdNgbF3UbN9wwBiMUnTt+KJ3S7gR6UZUaiSCCI82wOsj1Qk+Co6HS+ad1tP/tswxxPbZC2Gi/FgV8/ufaIZZSLQVlunKIkCylDg6lYC/heWyI7hKd7AgKLB3cHr7EI1cgFjCfUUXp/Xgd2GeMvFRLy5JdHRBZWa3WeEu11qLfwdQTm8rK/3V7ZsLkHy3UNN+JWJcuVGc/sCZCZifQq/2JD8zTaO0eZ6ipg8b9LUrEAUqbJBb7ZPd7+SuyFYdhnMjsRcOv9458RzBRwW2qSuMgWS+KLd7W69DnRH+XrH6HhD89YHp1xRjYzHcCEDC/PT9vQWLg6sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DbeqIANQdu6KnOln5lLaizWtgnWfA4YSsVUhVo3z9eA=;
 b=J5u+8sT/qh8T7IisoFegXVsLJro1Fj/tDDg98ILtGqoKbK2ipQgFrRjqj2184LHMV38WdEOC3fYxtczQJX7iuNz2R798r7cGVagN41enDmkGVeNZaG/QAj4rX7dpmOl/1a4DiGT+KBqGBc/ZW7wPoNBqcyI4YkAhjXNLz3iXo7hO45ui6cMjcZBbmFUQCcBuylDkI9Kptopycda4NtJoxSxxG8KBwC634Bnin6N812u5q9EF022ohIa5ChaUPQERW160Hxnccy03/lhverDv+jN6KE9iVOs3LikLLo9HZZB6K3ucSYhm4SPiTv0leTVQIXg95RD506XQrJeNptwG3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by PH8PR11MB7142.namprd11.prod.outlook.com (2603:10b6:510:22e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Mon, 17 Oct
 2022 21:14:19 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8%8]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 21:14:19 +0000
Message-ID: <893a7b8b-3564-8515-1e05-fb6da203ed56@intel.com>
Date: Mon, 17 Oct 2022 14:14:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221012155535.666933-1-benjamin.mikailenko@intel.com>
 <CADEbmW0wNym5TJiXeJ+zABb3a5eRvSdPZqWYnDwB6KnXUYK8nQ@mail.gmail.com>
 <68ac50c8-77cc-3db1-626a-80ebbad2dd4a@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <68ac50c8-77cc-3db1-626a-80ebbad2dd4a@intel.com>
X-ClientProxiedBy: SJ0PR03CA0369.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::14) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|PH8PR11MB7142:EE_
X-MS-Office365-Filtering-Correlation-Id: bc7e25dd-4d3b-4bba-141f-08dab0848e50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mA8zKoPdviFrNa3I27y4xVMUBi40pQcdzhVuDIeL6/OhLzVkVf0okhjvI1EEjS4pzCavmxmYleGTogDMsPJbt8GyErQoFfh2Q8fnJW+nAWgVHmOxJIihzHTWqrizoQ3lQyG9bYLdjg6FILxK2tUm0Vu5A1QyJNGRlYnUVNFYaNoHHE+YtXbrpombinDrE87XPZeHKCR+DspuAcMvDktn41oFGOcjBVxvhW+FLM2z8eIvsVz2W7fT/JD8dTbSNe9FJZwypCjPNgw4Ga/cYwAHmwufuYSqCIUbImAcbvs3ijUhbjHrpd+6EYPRHak8xkrnIGvXVsnPMhE/LpEtX2V3H7kjlCIgM9OJywixgRXKv+MexUByZUNLQyWwVHhURqD0/3xUpDMQ5BhNffkm/7yRrpygBT2Y+qqp8CBQ1QMiXBsOoald3Hr9HkqGMEFL7wSU7UpsotAsYnA+yvbDxEDLA/E2YJyv5uJto8ClHGv8hwOcOSfsXYHe/ZINM8cvJPk3NpdFyZB1SR4lzWDhthKCq3zhNOWLsIQwvYHOd2EhhC3BZo8qKEHrMqq5fNVTJlxw/ddUsAeJ66Iyz7/YCqC25t4tFC/AGA2IXKa8lzrjefGwO4gX0TVlUD+7sAGuyXCociHLp3zf2Wd1Eb5BiVeYJacDOdDXfT7Xf0HmHz4shQBzRIE68u/OXFj0nsaimXjE2U/t2WZ91qEBaiqZ38fbdFDvnn0o0BMEPDqAyWtzri5yiuR18eWemC/Ytd9UXYNYxALSxbTnC/PQehT13ez0i2VRGrCTopi2iMk2tRmI8Tc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199015)(83380400001)(31686004)(8936002)(66946007)(66476007)(66556008)(6506007)(26005)(6512007)(5660300002)(316002)(2616005)(8676002)(82960400001)(6916009)(38100700002)(478600001)(6486002)(36756003)(186003)(31696002)(86362001)(41300700001)(53546011)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUNYVVBDZkQ1MXFWc0srVGd5bCtwSWYzSkxMMFozRGlIM2s5aExrMzhzUDgz?=
 =?utf-8?B?bnlWYWcyZXZrT0NUK0Y0MjZKR1J4ZnhJTk5FcWorVTlDNTcwaHFpd1JkL2ho?=
 =?utf-8?B?Zm9SYUd6M25FbU9QZ2drR2dNQ2oyTzFUU2JiL1NLQnVlSWhVY3hlT2RWVDJr?=
 =?utf-8?B?WEVNak13TzVRTWtlbjRLYTd5OWFnUHpPVHAwM0h4TzMwRGU0ZVI1cWRMT0Zo?=
 =?utf-8?B?NGtReXlZOFVRL01lY29mdkxobFozdWd1OUU4ditIUTg0TGFXaTZCM01yTjlW?=
 =?utf-8?B?SlBKTVZWRjk1WkdKbUFXRWRaQ01jVVM3N20xbzdqRFRXRGxNS3VuU2dMVnZV?=
 =?utf-8?B?ckpvaTIrL0RzcURwRENmUHcrcmcrUWhYcXlpSW9ERzJCYnlJYnI4U0tWc2Mv?=
 =?utf-8?B?OUpqQmgyQ2xQZ2h3Q1ZnRkYybTVsOEN5VHBiYXpmVWRrKytTbEVoSnBRUlhm?=
 =?utf-8?B?b1ZaSitXUy9aRWZaa0hSVWRsRURkc1Z2ZXZ0NFFybDhJb091d3RBL3RGR3Mz?=
 =?utf-8?B?UnVrRVN1RmZwNUJXSWJMKytmZU9BSUFwVktpdFVWM3NsZm5KeDN3QnphaXE4?=
 =?utf-8?B?VjZTeXp1RVJGaTQwL0xOUjRrUjB3NTZSeEQweEg5eG5uR1pwMlk3SU9XYldU?=
 =?utf-8?B?eWlrWkpjMU1qMHo2dGdVc1lsbjd3MjU2aDZrSGxhU3JLMGNJaWpuUW5zRDRv?=
 =?utf-8?B?b1RTelJFYWdJSGJDTzcrZzU0dldONDIybVhFckxtWUtBTm11blJGelVlT01v?=
 =?utf-8?B?SkhJd09IeUZYa0phMUo5MWdxZkhXMDRBeFd4RVVpWVplUytsYlNxWUxzMElC?=
 =?utf-8?B?ZUN0M2xpeW54a29CMW5VMW1kWnVQbTdmUlRpdnQrcHNsajBSSlBoY3RDU0Uz?=
 =?utf-8?B?aW0xYmUzNEJibkc2U21STzNObnNsaVdHZUk2K1VlTXNmMUg0Y0d1OVpJQnp6?=
 =?utf-8?B?THN5MElVekdmUldMbFp1TU1uQldKbWxMYXoxVUJtdmFQVVRPMHNISWtqL0Nm?=
 =?utf-8?B?ZXlDK3V4MkdtUWRuUStvZjcxT0Z1MnB4Y1ZuRlRUSDh3bEJVSUFBMU11dzB1?=
 =?utf-8?B?T0g0eE8zZEszOEV3d1JRa1FLUG1zMndZQnB6UUt6QmFWOUp3NWd4NlFteUFH?=
 =?utf-8?B?dTBFRHlTdDdldmppVnNYL3FlekFRcXE2K2FJekhPK0g0R2M2aVlxUWJpSkFE?=
 =?utf-8?B?QnlPL1B5MFdEWFFMZmRheGFzVnV5TWFUa05PT3BtU24xaUFrNDA5MlBSWjBV?=
 =?utf-8?B?Tkc0Z2pxaG1aMDAxVGIyNHM0N0NjTkYxSGhJYUpocHlYOXlXMWNIM0hqOVNJ?=
 =?utf-8?B?OUR3TlBBRzBRMmJ3ODRyNUVueWlwZU5lWGxUSlhFZ3Fzc09TZGVNYkgxTTRr?=
 =?utf-8?B?QmM0NWY4Rlhic010QXVOcFRibEhRWkNRWGNlK21ZaFJtN2JxWDJkaStVcld1?=
 =?utf-8?B?TFhhTmJ5eUlnMi9MT2xUejJUd1RQR3Z0SWJXb3llKzJqKzVJMDVkbW5ZdHVP?=
 =?utf-8?B?b0lyc2x0OTJ1VThPK0duZVloRkpvM1JhQ213MEJjYldTTHlGb2I2UDZlUnUw?=
 =?utf-8?B?SUNFbFc3dGNuYWtCWnpRMGNtOU5kOVVKanp1N0xDeG5obEhuQ1ZQbnlyNG1z?=
 =?utf-8?B?RmloTGNGbEl1bzh0NVRwTDBlTGJFODJYbzdmTmdCd2VrTGxNQXRIRFdhYTZN?=
 =?utf-8?B?c0JuVGVLSkI3Nnk4RE9rY1NiVDMvbVJHWi95TzdkaDJDNHFRNFIzQjUzdExl?=
 =?utf-8?B?OXpYU0V4TkxtTjZiTXJpMkpOQ1hJbUFYOTZGa09LSEVIdCtKdUcvM01mOVhy?=
 =?utf-8?B?NEQ5VlV2NmFKcG1YWFBVUlBaUkVDWjNiWDRjTElhVDBYTzMyRDR2ckhJa001?=
 =?utf-8?B?aUd5NWR5cGgwd1Y0Qm5xYnJRbDRNdW5zUTFQaVV3V202K2EzWEZDOW0zclNJ?=
 =?utf-8?B?YjJWRlNTemlMNU9zS3Q5ZTg4NHg1UG5WeXhDUnlEc3RmOHk1OFlxaWNLM25s?=
 =?utf-8?B?OExsd3hMYk83R1VmM2FRbWVFa2RzT0lZVCs2ZDlyeWx0Wi9XOE1JYm5lbmhD?=
 =?utf-8?B?S0VKaG5OVnJsQkJ6OGtoTFRwaWw3emNNcWx4U3AvRkltRktYR1hpV0FGMXpB?=
 =?utf-8?B?RWVnZVBqbm9qUFVDM3hROVk3VzFHY3RxY0gxU3U0dktqb3E1M0JUbk9zZVdV?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc7e25dd-4d3b-4bba-141f-08dab0848e50
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 21:14:19.7536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HPE8Bltn8Ylc7+YWAbeZ9gJAooElLPpW8GHYg+QX6VssMaXQuce080PYbLvaysMBuiz+42uglfkRBdN82iLBnlolpM8Tiy66Jzn24Y6rqjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7142
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666041263; x=1697577263;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qxq9D2x4W72I5sH3fMKIHHS3/nmlYk9U9wYuk97hn0c=;
 b=YG90XQjfO/+uf9LDxYr3+hdYTw9ijz1HPrfZLl1ET9g2FlcOFp2QCfwq
 IcT2E8bldKhoG6AJGGcgwXRuP2ywM7A9a1hcKv+GEwjPtSCINBVhKl9p+
 5niWNq41pwdgOqWyAwwGevMsQ96ER81wuu/G2y0x8ynm/aP486NxfGaIu
 oXXuW+GMbXzWj3F98GzOHrz9PR7sYpkmPqpxy6DZ9snFnDWB9WJTTNp4c
 udCIHKPfTZHryiaL0uuuIKpORiBhCoqmNKx3v2UcEKL8t7OPY0jHK/WAC
 h/5Cz9SdszAR7b0qfo4TkpF1FK7yQmp/4jViX5pA7DZZIdGbjnwhh1wqk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YG90XQjf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net, v1] ice: Fix l2-fwd-offload toggle crash
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC8xMy8yMDIyIDk6NTEgQU0sIEJlbmphbWluIE1pa2FpbGVua28gd3JvdGU6Cj4gCj4g
Cj4gT24gMTAvMTMvMjAyMiA4OjI1IEFNLCBNaWNoYWwgU2NobWlkdCB3cm90ZToKPj4gT24gV2Vk
LCBPY3QgMTIsIDIwMjIgYXQgNjowMyBQTSBCZW5qYW1pbiBNaWthaWxlbmtvIDxiZW5qYW1pbi5t
aWthaWxlbmtvQGludGVsLmNvbSA8bWFpbHRvOmJlbmphbWluLm1pa2FpbGVua29AaW50ZWwuY29t
Pj4gd3JvdGU6Cj4+Cj4+ICAgICBSdW5uaW5nIG5ldHBlcmYgdHJhZmZpYyBhbmQgdG9nZ2xpbmcg
bDItZndkLW9mZmxvYWQgaW4gcXVpY2sgc3VjY2Vzc2lvbgo+PiAgICAgY2F1c2VkIHRoZSBkcml2
ZXIgdG8gY3Jhc2guCj4+Cj4+ICAgICBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVu
Y2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMjAKPj4gICAgIFvCoCA4NjEuNTE3ODAzXSAjUEY6
IHN1cGVydmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2VybmVsIG1vZGUKPj4gICAgIFvCoCA4NjEuNTE3
ODA1XSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAtIG5vdC1wcmVzZW50IHBhZ2UKPj4gICAgIFvC
oCA4NjEuNTE3ODA4XSBQR0QgMCBQNEQgMAo+PiAgICAgW8KgIDg2MS41MTc4MTFdIE9vcHM6IDAw
MDAgWyMxXSBQUkVFTVBUIFNNUCBQVEkKPj4gICAgIFvCoCA4NjEuNTE3ODE1XSBDUFU6IDYwIFBJ
RDogMTY0NzEgQ29tbTogbmV0cGVyZiBLZHVtcDogbG9hZGVkIFRhaW50ZWQ6IEcgUwo+PiAgICAg
W8KgIDg2MS41MTc4MThdIEhhcmR3YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIFMyNjAwV1RU
L1MyNjAwV1RULCBCSU9TIFNFCj4+ICAgICBbwqAgODYxLjUxNzgyMF0gUklQOiAwMDEwOmljZV9z
dGFydF94bWl0KzB4YjAvMHgxNDIwIFtpY2VdCj4+Cj4+ICAgICBUaGlzIGNyYXNoIHdvdWxkIGhh
cHBlbiBiZWNhdXNlIGR1cmluZyBsMi1md2Qtb2ZmbG9hZCBjb25maWd1cmF0aW9uLAo+PiAgICAg
aWNlX2luaXRfbWFjdmxhbiBvciBpY2VfZGVpbml0X21hY3ZsYW4gd291bGQgdGVtcG9yYXJpbHkg
d29yayBvbiBUeCByaW5ncy4KPj4KPj4KPj4gV2hhdCBhcmUgaWNlX2luaXRfbWFjdmxhbiBhbmQg
aWNlX2RlaW5pdF9tYWN2bGFuPyBBcmUgdGhleSBmdW5jdGlvbiBuYW1lcz8gSSBkbyBub3Qgc2Vl
IHN1Y2ggZnVuY3Rpb25zIGluIHRoZSBjb2RlLgo+PiDCoAo+IAo+IFllcywgYnV0IGwyLWZ3ZC1v
ZmZsb2FkIGZvciBJQ0UgaXMgZml4ZWQgdG8gIm9mZiIgaW4gdGhlIGtlcm5lbC4gU28gbm8gbmVl
ZCBmb3IgdGhvc2UgZnVuY3Rpb25zLiAKPiBUaGlzIHBhdGNoIHNob3VsZCBiZSByZWplY3RlZC4K
PiAKPj4KPj4gICAgIEF0IHRoZSBzYW1lIHRpbWUsIGljZV9zdGFydF94bWl0IHdvdWxkIGF0dGVt
cHQgdG8gc2VsZWN0IHRoZSBjb3JyZWN0IHNlbmQKPj4gICAgIGJ1ZmZlciBmcm9tIFR4IHJpbmdz
IGJ1dCByZWFjaCBhIE5VTEwgcG9pbnRlci4KPj4KPj4gICAgIEZpeCB0aGlzIGJ5IGNoZWNraW5n
IGlmIHJpbmcgZXhpc3RzIGJlZm9yZSBwcm9jZWVkaW5nIHhtaXQuIElmIHJpbmcgZG9lcwo+PiAg
ICAgbm90IGV4aXN0LCByZXR1cm4gTkVUREVWX1RYX0JVU1kuCj4+Cj4+Cj4+IElzbid0IGl0IHN0
aWxsIHJhY3kgdGhvdWdoPwo+PiBTaG91bGRuJ3QgcmF0aGVyIHdoYXRldmVyIGlzIGZpZGRsaW5n
IHdpdGggdGhlIHJpbmdzIG1ha2Ugc3VyZSB0aGUgVHggcXVldWVzIGFyZSBzdG9wcGVkIGZpcnN0
IHdpdGggbmV0aWZfdHhfc3RvcF9xdWV1ZSBvciBzaW1pbGFyPwo+PiBNaWNoYWwKPj4gwqAKPiAK
PiBZb3UncmUgcmlnaHQgaGVyZSBhcyB3ZWxsLiBJJ2xsIGhhdmUgYSBsb29rIGludG8gc3RvcHBp
bmcgcXVldWVzLgo+IAo+IFRoYW5rcyBNaWNoYWwsIHJlYWxseSBhcHByZWNpYXRlIHRoZSByZXZp
ZXchCj4gQmVuCj4gCgpPaywgSSdsbCBkcm9wIHRoaXMgZnJvbSBxdWV1ZS4gV2hhdCBhYm91dCB0
aGlzIHJlcG9ydGVkIGJ1Zz8gSXMgaXQKc29tZXRoaW5nIHRoYXQgY2FuJ3QgaGFwcGVuIG9uIHRo
ZSBpbi1rZXJuZWwgZHJpdmVyPwoKVGhhbmtzLApKYWtlCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
