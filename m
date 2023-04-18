Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 134926E6904
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 18:10:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F395E60B8D;
	Tue, 18 Apr 2023 16:10:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F395E60B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681834246;
	bh=wsSwt75PEQolD2i/YAusXTBA426oyy94889ZKkXWtAk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VXaZIsrPqJA1GH+NS8QVCPlwZYv0TTPFmZXaXPCnJtiFufcuM009EUaC6KD1tXnY1
	 IAq5zCywayJYdTEjckzk9STu+kw86zHdYzkMm5gKo23t0UNNOerVchZZJDlDkkf4Wa
	 iWtURqpNiMLIZBJSxw733DSIlqFcpaqguWRHxL6LiAvrATPteXsC4m2dnYeORZ5C+t
	 zLMN0nbCXoKPbDHlECOl0wmvkVQsOFGLH7usHEhzYHHxQwFSaY8EXVEhT8f5cjpi/r
	 I29IxHcfstnHjJLtDaWVkIbvjzblhChw4CdrzEfzwp0zQW7M3klV+823m27nGg15G3
	 oCQUWSJDkY2Og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qubMYjjihLDK; Tue, 18 Apr 2023 16:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4D5B60ABB;
	Tue, 18 Apr 2023 16:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4D5B60ABB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EFAC1BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 16:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C9EB409AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 16:10:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C9EB409AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NxBIrlndwpvD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 16:10:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA61D409AA
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA61D409AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 16:10:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="431500232"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="431500232"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 09:08:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="802586911"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="802586911"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 18 Apr 2023 09:08:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 09:08:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 09:08:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 09:08:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IsUjFqEgct7C1Vq30zsD4ELAcysE9wtudq3d+/i2EXraKhZYMND4VoJV3o9xPZrgTSc83GbbyZIaOWOBLIK5ofOhMIn2gn50BJCU2+6emCgD1p8BPFjnmSafJjnPp5ZThX6h9cgCK7KauG+4AFXmg7b1G5C8khmr7U70PCwPVZXT3C4+yuiiDPVzWHdYl7yDn9vp3TsVZK6C0EIqWrDmRrEDN7hcjimthegj1afsafoyCR+CHeH7oXFEyogPN/CY07gJOs/uHYtTKxFjyWWLhjJVn21SooE50Fx2KCFSLoa+5h+YIBPdOeHk41lJJEmwDdKcZlL56lST6kUvuqSCeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86ZeUwTPFvUfpFbfyYQDwUE+OZPr3QMsJNFhJDdgcCU=;
 b=aL9AM/wEGb509d9+FhjKPHFOUUn/t2fnti/8kt0O3voJyYxzeCv+2hRws7OPuPsbGzn1qU7EMHOUdDpbAqkTjGdgXDiVUFkH/z0XEgTBxlyBw7uCpmaE/PdYsUwf/ImHR0+dxOF7XdLx+NakuixdtLbaC6ogsDVMbqqtbaCbePgbTYjlDdN4PlRxkUChF7x3Lph3G2ppyJbX1OwEePFAPjc8qX3/BCyS2oN9VUfw7ODSOHGjNFgF07BQJF6SYpcg7r4XrYrt2a69x4RRRqHX1Jo1KCDrRGcrxSMH8H0yuQknXor1ZlyJ0DD0OL01EoiOS81qh1yiWKeQ1VsT7hCMBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2937.namprd11.prod.outlook.com (2603:10b6:5:62::13) by
 PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Tue, 18 Apr 2023 16:08:15 +0000
Received: from DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::f56d:630e:393f:1d28]) by DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::f56d:630e:393f:1d28%3]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 16:08:15 +0000
Date: Tue, 18 Apr 2023 18:08:06 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <ZD7AZpQJF7YWTUgt@localhost.localdomain>
References: <20230408140030.5769-1-dinghui@sangfor.com.cn>
 <20230408140030.5769-2-dinghui@sangfor.com.cn>
 <ZD6/H9DotpfOxr1+@localhost.localdomain>
Content-Disposition: inline
In-Reply-To: <ZD6/H9DotpfOxr1+@localhost.localdomain>
X-ClientProxiedBy: DB8PR03CA0006.eurprd03.prod.outlook.com
 (2603:10a6:10:be::19) To DM6PR11MB2937.namprd11.prod.outlook.com
 (2603:10b6:5:62::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2937:EE_|PH0PR11MB4840:EE_
X-MS-Office365-Filtering-Correlation-Id: 01d9f006-ef8b-4152-acd7-08db40271de8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GdMnGtaXfMQYSkOYMWYCEZeycIIMWLBOleMZ+4h30qtYWbvUdAWeHdqSfIHyCMwZRkt1qK+EIy3TkkT6xCi3ZGelxto1ZmhNGl8a7xnJk6ZOdAupYgisd7jnGYdcAxAhddoiHo9cxuQGvEUvoJP5JMrfx1mmHoFa3KSC48F18dGr8TAlh0+jW2FHdbv9JcisMPMcGDZXmeKLmtzKDY3pwOiPKWxMtOpw1LweNCfSIwEVWiWvMyJ0lVfgvbZwIznapu5QwHu0Q/kl2L+pC8SvPoziOUYu6XKQs5yrutKWAd4cxjHT02WIgTCOWquQHDxqMJ9EdDaUtUhFKwQA7vLdXO/p21Gl8xY82BRykG3vVXCzY/k5QQQJMp9qqPv3VIVIxjME8s8Pn9sg9r9JJFNkTY6sf7xZwLobulW//FAOqUZ959sc9x86H28+0p5R8eHBP+fN5wWa0nIfTtL3+rJcY3EVDeOKou6XnpzimTaiedRMS4+wDKoSmHpK2jXfoUxUXqSvpJJ9lFUYUj+hpEx4QMiUPervvc8G9dwrkfMxt5qOddMyjHDMPzVySMb+tRQ+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(346002)(136003)(39860400002)(451199021)(2906002)(4744005)(82960400001)(478600001)(6666004)(6486002)(38100700002)(83380400001)(26005)(6506007)(6512007)(9686003)(86362001)(186003)(7416002)(41300700001)(44832011)(316002)(8676002)(8936002)(5660300002)(54906003)(6916009)(4326008)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5iOEiN2KXl3cGP9/xtXzzfOeG0vuKWMAqp9JMXy3VIqGgl6u6YSJi0NlJdob?=
 =?us-ascii?Q?82uNRoeYeVACLIrT6+FENXP9Ro0fRYqPeQGEOQ7713Sdv9aAkQB4njIZBHW+?=
 =?us-ascii?Q?g2uL+tJR3tyvAdC8/ANeiUsYjtu8hgUzYodt5Bjabwi5m34gAu0IejvXDWGg?=
 =?us-ascii?Q?1QBRnU5RVF6IZNG9xehkcGv5ceM8pTu4gbWE5ct2hXxvHnMfWZDetZr/1M6H?=
 =?us-ascii?Q?WKjnt2qiSUl+8cH0V/tpWJzuUTC5QMp48GvEr7Yl11LLI1TkWeyHvcGEViMG?=
 =?us-ascii?Q?5GCfLfoivxyzl3HF7HPUt9LPea1I5GxZeqz8UyRzpGMhWt6Xo0/Mu3MGnf/6?=
 =?us-ascii?Q?aYuBIijLr0Us7MB5xiB9X63wWYG/Al28sDoVmzWNBSUJvxv3jo8tm/C+HCc9?=
 =?us-ascii?Q?TiFqxRT24IGTVB2bgOZbUyWlcRk3u8gHraactrGN6hI1fWCZcYLLED1ddtMy?=
 =?us-ascii?Q?uoPuB6UvC/0Xr5FVFhMRktfMtwH1RNiB88AD/zrJzPN0eAbYbGsgXf5ompyy?=
 =?us-ascii?Q?ds7yV7VYz7QQj9dktZ7YAJXKKpSIaSfDQqfKhsoWei+At9ylV7FEgyr+9O8e?=
 =?us-ascii?Q?ES//E5rNom/4ajWEqHukDH+ceD32OhEINJ02oJLRXi6bqYExtcHq28TBxPZn?=
 =?us-ascii?Q?hHSRJ8LX4V9062FBNqT2kZWS0q1AOQS5JbTG9gs1wnDCQAVnk8gz7rHKz5x9?=
 =?us-ascii?Q?TuwK9G/TJ0hGJidbxuIsirFQH2U2lGB/lapErs3Uwz5f3z0z8hpCK0Wcrz2a?=
 =?us-ascii?Q?b7Gh4nC+sfpOmTAk5hwcCpkafi47JjHkN7KFrDMktvdKPLne2hG8p2G/qySo?=
 =?us-ascii?Q?BR8MkZ/0MwW3Xsr/OQqVH7lVfNi/w6wmU57yQYxg+iPJ0yA0dX/iTIlbQhFp?=
 =?us-ascii?Q?caSmL6TdfRMv+eSL4TCT6cM1A6htGBTMV6kZkicW1ZeHfeRKhCT/ecHX/k1T?=
 =?us-ascii?Q?O2XDkB7wkKMWjKHk42iF6Y8H71oh1vMlTINn4jMYTzgzJh/BFiU4rV9Ee0pJ?=
 =?us-ascii?Q?pMnhtfsQzLVlxT8H9A4rJ09k8oaSMiO0Li3mhlnEEuFNRZg2vF6RbQyofkx9?=
 =?us-ascii?Q?89qOfSJGt2OQT3r3CtC6jYmu+Lbxuk+rpXvwDKua2VH+EdoqQVtrtEjg5HcU?=
 =?us-ascii?Q?6JBzYJtOuLfTelTBpKGyK53Ho3vrWVYy4yoJvESPa0NZDlvYL3LHHEPHMy59?=
 =?us-ascii?Q?EcFV9TAA1w2gluBG3P2kkOzkNcIIV1hj9pNsp41pwgzYf8/oMY+6TrhdQN1w?=
 =?us-ascii?Q?wTliDUp2py2D58qlPnWsTpT1UXV+eW+REZDbTY9YaDWhJ8O+vYRzcuWFwirJ?=
 =?us-ascii?Q?+AzaXQtdttQ9hdsIyQai3ospccZqCjncLeWJeU3478/x8OW+GrK/XjjdauMK?=
 =?us-ascii?Q?MtsNDOr3xgUU64CN0W+kH2bIVJ5DoDn9xonmSPU93fW7d8ownK8ySWW14nv0?=
 =?us-ascii?Q?WpvYQieNi2bd1dLEkmFvn8XoivKXKggcXGkez2+FALTi7ohrLUSOOPGQJO3E?=
 =?us-ascii?Q?Aw5cxE/4mWwV6MIC/gf51+CuTENYJvyAsE5z1YjKkVvrLBcdB63vrCpLs4yT?=
 =?us-ascii?Q?zgZTvyiEK7ULNpY9i3zVlQuX3OcVE/QL1Ix/yl7hR0Pgjc8jBDwp4UQlfs4u?=
 =?us-ascii?Q?bQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d9f006-ef8b-4152-acd7-08db40271de8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 16:08:15.4442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0uarohtBNx1PLo2hOkFY+WHK4K7g9RJva1BVVKEr2ivUSL0eU/JM/wOPJgZbOBpEWZiY+oXiJrIuFHO7oFofTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681834239; x=1713370239;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=86ZeUwTPFvUfpFbfyYQDwUE+OZPr3QMsJNFhJDdgcCU=;
 b=g9+QA44BKhq9BrolJSiCPYAdz5YbMG+UCr9ZMHUK5RRsDhdveLH3cVQy
 M8pelv8J60083pOL0QrNrojJYcZDb49Sy2smW4jlmEgCXGN02Qkcc4Ixm
 OBT5uHRpuRLnaipVvUKQXZMd0GIv3JfR7b6wGbTjfcJLwmRaZ6HAkGfE7
 kA/T6jsHUqRx85V0TUSQqHeam6I3W4P0ShJ/jPyJKD3Sna11GZvvZxr1y
 IvxgzuxuiDkSMpAg2Pjv8FkIYFTLryEexEzqFrnO1v47RRPPpDBiEk/3+
 P8agoJaUWIqpE76I+ROaClqQeMTyCppB+dDg4hYqHeMnZuWeNV2YhS0gW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g9+QA44B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] iavf: Fix use-after-free in
 free_netdev
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
Cc: Donglin Peng <pengdonglin@sangfor.com.cn>, keescook@chromium.org,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 Huang Cun <huangcun@sangfor.com.cn>, linux-kernel@vger.kernel.org,
 grzegorzx.szczurek@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 18, 2023 at 06:02:39PM +0200, Michal Kubiak wrote:
> Also, I would recommend to add a description of reproduction steps (most
> preferably a script or a command sequence) which triggers such an error
> reported by KASAN.

Oh, sorry. I have overlooked the scripts from the cover letter.
But still - maybe it will be a good idea to have them in the commit
message (to track them more easily using "git log")?

Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
