Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 133C96B50B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 20:08:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBB1141BE1;
	Fri, 10 Mar 2023 19:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBB1141BE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678475332;
	bh=ogwz2IHPQpFhGAyehGvfgVh5m8A90gaej8l0WhH89sI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i+mnrvvDcYH/H74H2142HGI2hLhFbDT4alEXkaUhBKKFD9HSQ2UmOS4bFQ2aGOXtv
	 qA1+LfHPPzcX6O+Cvh5FYu6HEV8OE8Mt61VMXdKj8RZtZJsj32QHGXF3qeMnfh7W1g
	 muw9RguJVgWhvdKj+C9t3wTsGW/8aARUATL3NaQrbzf0GiqSviGtz0WSJrSz5BDptZ
	 NQistN1/jJos5bE7zBe/WXFvttAHfxUQ34Wx64JVWpxHPoViHcqRfNh1oFvV5IHOSt
	 U4eCb429EnRnJ+g2OxwYbv4q9Gy7zmPRWmUr7PyIvdQHB98oBZAJHf9rgmICAmGJzK
	 he7H0CV7e4N6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WEQlWxdxPDrn; Fri, 10 Mar 2023 19:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5882F41B72;
	Fri, 10 Mar 2023 19:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5882F41B72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34CDA1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 17:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19B52404AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 17:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19B52404AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c1HyZI0vgEff for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 17:24:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C31C7400AF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C31C7400AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 17:24:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="423049463"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="423049463"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 09:24:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="801681539"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="801681539"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2023 09:24:21 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 09:24:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 09:24:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 09:24:20 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 09:24:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+0JFVDpGnXuJVQx4KTdfDmff/d6WwMDQKifxocdtl5Yocnw2+e8D8oFp6C+Nu3cXuueCRkqDcDJuDsQT6+Ob2E8TzRliyZ26nGaKNGT5GDCuF8uJ3eF1Vm267m/ysTqlbxxIJ3TRe335IknuaMNzYKY9D3yTuOXOpMAV8Hn5Cu3CXxptsEbdKtIiHQAXnQn0OEbH0mfq5pcaiWi8hCeGDUHp2xHkLsnzotPAppGc5stM57h6kxOWWKTf9nzHbj82uN8Ko/cH1V9aNUdD8wWQnlY0Q+fiFcS72GKTjq3CXr8nTpjB62o2z448gxX/I8Y/1OPHPE4gA+x0F/TO8iHvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6DthpZ2f5u3pxnImTml/k11Jghfq7r+eopbtB/ckCjA=;
 b=nE1W1Tyi2JLteloS3qNUUUsPW0VTSExqetFt57jUifohf2mDYHQSBewFKqZQK/HDFRpsiQh873bAyxX1YbRClQ7ghEXZuFll01o+4UUx45U+PvJXtLmSmbZpDedB8WFLnZZAZ7u/oMfbtA3r/9SVxpzLq3YmXXw/CAr3qqYMPvIAfETp2sbTUxX6lFaGwL5gQYMqKzDGtiFX0QyncYyB4P6ljtZtegj1WJHVorrd3eR956FUBYKeCfOKJFo+4i2RdC0cWM19n0cioUwQoKqnQoT0nHQxeVjJHi18P5n9rwsFi9XFDrOnekeYLNln3vlKl9ZU06j+UekTVGreHetOXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2937.namprd11.prod.outlook.com (2603:10b6:5:62::13) by
 PH7PR11MB8122.namprd11.prod.outlook.com (2603:10b6:510:235::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.20; Fri, 10 Mar
 2023 17:24:18 +0000
Received: from DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::cece:5e80:b74f:9448]) by DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::cece:5e80:b74f:9448%7]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 17:24:18 +0000
Date: Fri, 10 Mar 2023 18:24:05 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <ZAtnqlHZ02EJn5xt@localhost.localdomain>
References: <20230310122653.1116051-1-sassmann@kpanic.de>
Content-Disposition: inline
In-Reply-To: <20230310122653.1116051-1-sassmann@kpanic.de>
X-ClientProxiedBy: FR0P281CA0082.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::21) To DM6PR11MB2937.namprd11.prod.outlook.com
 (2603:10b6:5:62::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2937:EE_|PH7PR11MB8122:EE_
X-MS-Office365-Filtering-Correlation-Id: 83e45396-693f-487a-2a7e-08db218c4734
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eGA81FhXtP3ov1YWXibl9kJCFJwM0iDu6lQFlneRlv4ObCXd9kFIUKk1S9Q0bm337hU9Lz0yF71edP6is/+qsdkSDJXNKFtFbXwPMadSBw6DB0TYgA4y8HrcABip3P0hH85aGt/5cMnDRdw3f4AvZKhcksjbwYXrlw0Qgk0pz9bvz517I1Lg1pC115jvEJMJP19oq7w+nk+KDu1gbWfD0HTOpvJj8rITmjHVKEEpIGAUBfJtQvYizc1LoaF4HBfUId0Tye/4prLQQJ+OJUMNyi6uVjWfHVeDg8YTTmsiEsSO6cN6igPfoAVF0EF3iyOTPzrugmmMJHLIVdEAlseasKvEl6JyXowdfZYxH4cRYScfjvtaEpl7seqLi7+48MrwRFvDXPsjmIJBMFZkVio6qBV+1OPTqKjnfTeArm3t7RyfQojX22sfa6B3dcqligBH9wi9RLynV8UaKpCnQ4roLE0zhFRlMYCu2mgRNJ98PoKdZdKOQUsuJJ177Q1zDXvAaRu0Aj1tjJOoGc9M17CaspXVijAsR2wcoTkaqJs8hOUOznyxAtSHFK0z8LWEMcWTyH7oTZqBvOQ6IR15sbduoAEbjmMw9/gB4Syu5YwuDSSfzuq882Brf2IrAHAJUL3TGVkdH7j3PQksiXLJS91vmw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199018)(316002)(6512007)(38100700002)(86362001)(82960400001)(9686003)(107886003)(6506007)(26005)(83380400001)(186003)(6666004)(5660300002)(6486002)(478600001)(8936002)(2906002)(41300700001)(44832011)(66556008)(66946007)(6916009)(4326008)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ME/ziYZGfdBIoi2LBbJRA+5uTo2QZsLJ8FnDzk1qQqZSCjqAYFgH0paLRK+p?=
 =?us-ascii?Q?rVjHePCCBPU2SlOkfxcvZZKwOsVu8Z3zDT0dm0XqeMCdHGI0phkZ0UzjNayJ?=
 =?us-ascii?Q?f5dTOHpe9U4byRLMfYmO0CmhmNXxlDe99NuDGuXtwm0AUk2x7vRvLPriGfO1?=
 =?us-ascii?Q?Oyfeq9F5BQh2dEIsOx2trAs69wxnoJSNovtqjzZV7wE21wJ5Vznoyf7SGAhz?=
 =?us-ascii?Q?l4UVGI+i1uOKknRmSxefJPuxvrIL3XxncoNDjsHZOnoQxltLMugpI5zXPjth?=
 =?us-ascii?Q?9qJXu0XL0Mxv/7AlKx9jpuWiFfqnWaalXkIHtNRYfYZCnuOFkqiG7DmnNOJR?=
 =?us-ascii?Q?ixEZeHcK52B4laOuS9P83frdeHoUwXkrd8AIez8o3qnvGudzaIDIAEjunKZZ?=
 =?us-ascii?Q?OTfD9G5SRFoOPU+/yyP+ysK229ViglkCGbuP9GHL3hL+PpdFEXW0ysfWiAqs?=
 =?us-ascii?Q?e+kJbRcB1O+wt3Hefzm4f389+vqhe8ubnbiR1gtSmc6Te5gmi6Buv5roOuBT?=
 =?us-ascii?Q?gqwUuFn+w2V87OwP1/FHgEB5Dzhyon0zpyjo5ih+vYQYYCKjgXl5JqS42Hwz?=
 =?us-ascii?Q?FYIt9IvVPIiKyuu82NCcdJuFxBbXOzQUHITOote+ueNb+kKWhDmhYG85cdKv?=
 =?us-ascii?Q?OJhOj8NTJyOedfZfO8EwCxlJqPIP/maS0ppEAZozQ1eQo93qzyxaC2DBPeWs?=
 =?us-ascii?Q?KE/Ylsuvxv3DgMbO9mWv/1SH0LKA2zg+WwhiZWjW5bgbsuhGh5nmeTclfCsC?=
 =?us-ascii?Q?PlXUR7Qsi3PKbLiTeWM8I7J7u0ogsl3zNp7mZtdfpsFRt/nx6SJVWxozdOcU?=
 =?us-ascii?Q?x6IcJvlZlNVczAiuTA1u0jeYDAPcbUf2kMZ5lHJFwoiU79bra8ZUusKZVpvO?=
 =?us-ascii?Q?OTKOufV4US9/Jp2kJnu5cTlYn4RfsVo7sYZCBk/3HQuVJbXBUJ/Xhq7xLBmH?=
 =?us-ascii?Q?s7v5WqIHGzjKVFslAmAoxHqtbo7zAbyVORxKW5mqSrIJDFiaGV+uu/7LCWCw?=
 =?us-ascii?Q?cPn1Dh1pVfheGI48CGiMJ7NOUjas38Nmaz2yMRs3azT1gRp2XIrumnXbOZoO?=
 =?us-ascii?Q?Li94cA4Z1PaYPs7l0Z4Z2vgTEMCM4531WaDPJt1ouoof72/vogqwLn4Xohk3?=
 =?us-ascii?Q?ZQgZbvtXC2KAxd6lc6kelQXv+UgjMJZ8h9LdszRmavIE6vB8F7oWlez7+gzL?=
 =?us-ascii?Q?JaIRkEzHtoKGL6EufOjkn6MYuTCjsFKUG4iu3HOby95B+iHJQq+8HRdt6Cmx?=
 =?us-ascii?Q?QdODwaVD117MGAAt8A+K3wmz+7AktIaAKKL9PuqCHmpi34hyruPPf1LxQgsa?=
 =?us-ascii?Q?qMUB9jXGaSCPcyt0rCmvsN5rpZj4NQcK4GJ0+UIfBzIn+iJoztzxDghHt+vc?=
 =?us-ascii?Q?iqJLibcLhuV/raE7mtcgQb2bB90pB7POGKLY9LjCn5VQ7y7284Ex3uqHe6kn?=
 =?us-ascii?Q?GQjazQuk+BP7bLmWJf1I9N+ZxDENIMyUmOxywTeLGPUoxOQhnGCmQ2aEdD/P?=
 =?us-ascii?Q?nfmR1uz8tMtaRGuW7HYSbWdE8VlHnfH4bRo+55zao4r2ATr5tya2cZGKC57F?=
 =?us-ascii?Q?TyRBWt8WJCiJY15eahGs6/9EuGDjMELBFGQpMw7ndCNFCCLDxWVTdoYRwwTO?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83e45396-693f-487a-2a7e-08db218c4734
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 17:24:17.8827 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IjR6uKPwzrw7ETBwpICyHcwFbyV3AVyHzRqiTH3UiRerKcd7HPE6ueYxfwQq8z3xwIG4yUpxA8hMFMJJQVe3VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8122
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 10 Mar 2023 19:08:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678469062; x=1710005062;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9Plc6A5yKJHe1TL1VFZ6hqDlsR1aIT5eVtgm7N6fPsQ=;
 b=LOOdyUbDsSJARCIJQLT+AIVRFCxv5lNk4UWM+NosSZ/8hI2YInB5E3TO
 a1+V24rghfKywTjRuT7agaBL1h/jrqP+JIiV/0jBCoYlT1olfvBexbfva
 xjBkGz563Daalb5QbjGY614BJZ7zmKwJlaSwFKE3KrRmdK1cF8xlttaqE
 kQd8vS6O+GPBctyW5JaS/u1mMc8gNUNTuTfDiPf8r7vqMzeSJqwvHrLmb
 5ioZA7h/CouWgWs9so4l2Lq2O7xWuDcbhBVA2aSXj4BMflR/L77cRRmnw
 w1DjdeNlz93JahCF2UUDdf8TwBiasCchtm8Ns+aXBUip9FOnJPFHQmJWD
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LOOdyUbD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix hang on reboot with ice
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, patryk.piotrowski@intel.com,
 slawomirx.laba@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 10, 2023 at 01:26:53PM +0100, Stefan Assmann wrote:
> When a system with E810 with existing VFs gets rebooted the following
> hang may be observed.
> 
>  Pid 1 is hung in iavf_remove(), part of a network driver:
>  PID: 1        TASK: ffff965400e5a340  CPU: 24   COMMAND: "systemd-shutdow"
>   #0 [ffffaad04005fa50] __schedule at ffffffff8b3239cb
>   #1 [ffffaad04005fae8] schedule at ffffffff8b323e2d
>   #2 [ffffaad04005fb00] schedule_hrtimeout_range_clock at ffffffff8b32cebc
>   #3 [ffffaad04005fb80] usleep_range_state at ffffffff8b32c930
>   #4 [ffffaad04005fbb0] iavf_remove at ffffffffc12b9b4c [iavf]
>   #5 [ffffaad04005fbf0] pci_device_remove at ffffffff8add7513
>   #6 [ffffaad04005fc10] device_release_driver_internal at ffffffff8af08baa
>   #7 [ffffaad04005fc40] pci_stop_bus_device at ffffffff8adcc5fc
>   #8 [ffffaad04005fc60] pci_stop_and_remove_bus_device at ffffffff8adcc81e
>   #9 [ffffaad04005fc70] pci_iov_remove_virtfn at ffffffff8adf9429
>  #10 [ffffaad04005fca8] sriov_disable at ffffffff8adf98e4
>  #11 [ffffaad04005fcc8] ice_free_vfs at ffffffffc04bb2c8 [ice]
>  #12 [ffffaad04005fd10] ice_remove at ffffffffc04778fe [ice]
>  #13 [ffffaad04005fd38] ice_shutdown at ffffffffc0477946 [ice]
>  #14 [ffffaad04005fd50] pci_device_shutdown at ffffffff8add58f1
>  #15 [ffffaad04005fd70] device_shutdown at ffffffff8af05386
>  #16 [ffffaad04005fd98] kernel_restart at ffffffff8a92a870
>  #17 [ffffaad04005fda8] __do_sys_reboot at ffffffff8a92abd6
>  #18 [ffffaad04005fee0] do_syscall_64 at ffffffff8b317159
>  #19 [ffffaad04005ff08] __context_tracking_enter at ffffffff8b31b6fc
>  #20 [ffffaad04005ff18] syscall_exit_to_user_mode at ffffffff8b31b50d
>  #21 [ffffaad04005ff28] do_syscall_64 at ffffffff8b317169
>  #22 [ffffaad04005ff50] entry_SYSCALL_64_after_hwframe at ffffffff8b40009b
>      RIP: 00007f1baa5c13d7  RSP: 00007fffbcc55a98  RFLAGS: 00000202
>      RAX: ffffffffffffffda  RBX: 0000000000000000  RCX: 00007f1baa5c13d7
>      RDX: 0000000001234567  RSI: 0000000028121969  RDI: 00000000fee1dead
>      RBP: 00007fffbcc55ca0   R8: 0000000000000000   R9: 00007fffbcc54e90
>      R10: 00007fffbcc55050  R11: 0000000000000202  R12: 0000000000000005
>      R13: 0000000000000000  R14: 00007fffbcc55af0  R15: 0000000000000000
>      ORIG_RAX: 00000000000000a9  CS: 0033  SS: 002b
> 
> During reboot all drivers PM shutdown callbacks are invoked.
> In iavf_shutdown() the adapter state is changed to __IAVF_REMOVE.
> In ice_shutdown() the call chain above is executed, which at some point
> calls iavf_remove(). However iavf_remove() expects the VF to be in one
> of the states __IAVF_RUNNING, __IAVF_DOWN or __IAVF_INIT_FAILED. If
> that's not the case it sleeps forever.
> So if iavf_shutdown() gets invoked before ice_shutdown() the system will
> hang indefinitely because the adapter is already in state __IAVF_REMOVE.
> 
> Fix this by adding __IAVF_REMOVE to the list of allowed states in
> iavf_remove().
> 
> Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
> Reported-by: Marius Cornea <mcornea@redhat.com>
> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 3273aeb8fa67..83ef3a343ef0 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -5062,7 +5062,8 @@ static void iavf_remove(struct pci_dev *pdev)
>  		mutex_lock(&adapter->crit_lock);
>  		if (adapter->state == __IAVF_RUNNING ||
>  		    adapter->state == __IAVF_DOWN ||
> -		    adapter->state == __IAVF_INIT_FAILED) {
> +		    adapter->state == __IAVF_INIT_FAILED ||
> +		    adapter->state == __IAVF_REMOVE) {
>  			mutex_unlock(&adapter->crit_lock);
>  			break;
>  		}

Adding the __IAVF_REMOVE state to the loop break condition seems OK to
me.
I would only consider adding a timeout to this loop to prevent endless hangs
for other potential corner cases.

Thanks,
Michal

> -- 
> 2.39.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
