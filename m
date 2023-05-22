Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 513ED70C1F6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 17:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 091D483B84;
	Mon, 22 May 2023 15:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 091D483B84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684768055;
	bh=4HNP0R3XDfZZasy1z1VD3lxpucjjjKDIopLJ9a/RNMk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CJLdbSj0F9pWUlyfJ7pDdQAh8bbrgdOpq+pV0JYFrEeS284aik2SA5kfWIUfXq2es
	 mrKep6XSXqDPebRHtuid+aNJ7tegMSFxgKqHdHGBD2O4xb+CMY8IPBYdKY8k76fYGr
	 ybvW1mMnfU/0uRqEdVrRoEalZB0UaSHqHUTQZnc4E6tWCTz1He4qLikpJcPvx5SOhu
	 /IcjEk+mrSeMke5T9NqYyQuSHe0fpdQ7lASWgmzamVMBgfYlAgyL05hgjig5PUb2Wf
	 F4TZpkrORGTFWYiM8tE0FytXlWOdMghIfi0ra1ejibLFxE+ciMvbHjaQTqlHtxJXmn
	 p6MbwVoTYROoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwhEqJYVu_Oc; Mon, 22 May 2023 15:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 388B483B62;
	Mon, 22 May 2023 15:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 388B483B62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43AB71BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1AF7F83B62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AF7F83B62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kLkk5Y5l1Ry0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 15:07:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFF5583B5B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFF5583B5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:07:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="381174684"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="381174684"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:06:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="847861718"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="847861718"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2023 08:06:50 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:06:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 08:06:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 08:06:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ac4K7te3HnAjFVn1uYM8NgNTQdJ5Y4bQzasIP4CyU5C0gfXb2NSFvxyLxA2Rfx41OnAoN99w+fhIxiBK0xs94lwy8X0rjUpZDlCZMGwzUTEPFf4hEVnOL9OnvJlrn0d/p/rguVQ3YGXspREW3Q0UI6qUjY08pautYIveSpFvG+vlNQKFUC8D1wrqzGl+8XqhTIyVx5uypkd+qSFzXJNKsnP9AWNxCMuUqoOvIrv9cIg8CNrvrddXpBZ+qxT6c5bnOe1jXNtbq7FxwhnbWbTLEXo49/5EFJwEd234JSkiczGKVGR2PM8o07lrZZSO2NQhp4IAMAkYbj7s9LKJWcwqdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Czc3NdJ2bvQ0eue8Nq+1V7ggctt0TbOtSaX2hociqg=;
 b=Fz94UULEe6SskrTqnS0eFxrx7zZlcgyYqjOTGM+Rz2vnVHPZv/xaxs62ABmstAkoZ1pnYD2jI2pr3fIiLBZtOFWrBjQoj9jgPA7hKY4/3ZhKXsXp4/c/PiLuNfs0cAGzmMwBugjf3jeqwt70ABUzxOxi7IU6bnQMWgTdUmK2C7yD77P59jcLo+RFbwHheK7LRypwMliZp3U5Q4fwaBk3jHVAFeeK9qNMWUWaiNs54pGIFtnkzK4FNuRIbGyszkKvRq4IBKhjzNp8J96iFGQ8BP7sYJeEwFjYwd9Ipy24dcSBmtxNrunxyDxnPybiqp42FyzsEfdm/TijZIHnTapQzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5471.namprd11.prod.outlook.com (2603:10b6:5:39d::10)
 by CH3PR11MB7940.namprd11.prod.outlook.com (2603:10b6:610:130::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 15:06:43 +0000
Received: from DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913]) by DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:06:42 +0000
Date: Mon, 22 May 2023 17:03:54 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZGuEWl/LwtXxYgkE@lincoln>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-2-larysa.zaremba@intel.com>
 <0c40b366-cdb5-f868-00c3-d8f485452cce@intel.com>
Content-Disposition: inline
In-Reply-To: <0c40b366-cdb5-f868-00c3-d8f485452cce@intel.com>
X-ClientProxiedBy: FR2P281CA0058.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::9) To DM4PR11MB5471.namprd11.prod.outlook.com
 (2603:10b6:5:39d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5471:EE_|CH3PR11MB7940:EE_
X-MS-Office365-Filtering-Correlation-Id: d39c46e9-087a-4a79-dbd4-08db5ad626dc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JsZqY35rkqjrbkihkzpv/6BbZNKAI8tEPj6OQpva6pZBmNnjaZQqj2vBwD2c/brJ0eG6N4I7Y9ghmMqLKGLQJ19Dt8xg1OGVKDupM7fsgPOsPPHMw/xHO0s5+U16XZhwM37Ab+yt5VrZdH38+Zi/JFepe49Edhr8T0xVKjgPeMxNjck9FKF9zNCWgeMoslCUd0oftJTYq/8uJuvEO07LAdSL09L01OKfifuPAWFjQQJZpHfDaym4ydMwMjDzbNCyCkOn/3Fi9zRa1uxOjfUtg8zvPh7G4V4cIGdLmMr27b99Wu6l7wyRbOB4XOCJLETETce7SsN4y4AjhlUzF2tiWDnaBlmsfPEclOky4Rf2q/0Q2QpkaS63OR5zdY6LX7zgu+Vrd7MtTCBs2zhbpH22LXZ3FE+Wt6dUGKyrZ1yJuUI3VByOPLriFyersEgXI7M+hNBd47MOJM4swXPZuY4HWsO/0H4GrkEvmeq6F8iF66kr5bN1pF8V/RbExLqZdMzPmJl+okdU+0cMyKs6Jfn6vc6VZBz9Ej3S7mgD4BrEEe4fdt3vfTf91vPZrd7A/5ao
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5471.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(376002)(136003)(346002)(396003)(366004)(451199021)(7416002)(8936002)(5660300002)(8676002)(6862004)(83380400001)(2906002)(186003)(82960400001)(33716001)(38100700002)(86362001)(44832011)(26005)(6512007)(6506007)(9686003)(316002)(6636002)(66476007)(4326008)(6666004)(66556008)(478600001)(54906003)(66946007)(6486002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9CAlVEww46ehjTGL8Fzd8N2AipKdGDlimwU1snOFnnQNy4ODjADBIsRtBxyj?=
 =?us-ascii?Q?IOrEBjWpdNeR8tQJIXJiofbJCgpNMAaBRInZ//fzMNVqG5I/IqWqBBsRp9uc?=
 =?us-ascii?Q?wZlHKPua7kGwY5nymCFdJTWcoObyD1SZU7Zl8Xj3v4wkBgBbw//yVqDEcuCr?=
 =?us-ascii?Q?9dlSBSYLYqdrJ9MWZlqM1V7ymie+ldzIy1RbLOuSgeq1KoRBRXq+0qCg5HK2?=
 =?us-ascii?Q?ukAXoWrhB13dSGB3mEq6UEtRJy4uoO0tKupuAvXRVpXpLmF5gr1DtppLhB5T?=
 =?us-ascii?Q?L5NNL6AjF/cYsJQ9JnKi7xFhJDZvDUax+LBqXGbfg5ND99u6Gms0SEc9uGpN?=
 =?us-ascii?Q?M55HN6Sm7HJUvjoiaxfk/7xTMbxaXOyT7aS4JvK4KwKj7BHF2NdWoIjGWnEl?=
 =?us-ascii?Q?Qhz3cBhQWWujRwTRrF2WED/NM1+bTlLrEgIQhMMKvBjKAN04qmbr01Zn8YGs?=
 =?us-ascii?Q?5YOsncEZoICsAPk4lBo5tqIj3aA+aitnxqkR0KpvPBqNvyKOeJN6+f6aR+03?=
 =?us-ascii?Q?Q+jt5PyV+jwjMd/YTL4AfHme1CFlrXnKyJtFw9+Ap93/0rxlvBykEG7tCfSz?=
 =?us-ascii?Q?ygX2hqFb9ylWrvncOVRW0v896wzaga0mJmHBEOoq8IO3HR2SNzh9t7AKYs1F?=
 =?us-ascii?Q?rStB6XNZweWg36e6XaJ5BJrepO/uBOJ61uvVfPCeaONWPcADVO7EXj9ZY7U0?=
 =?us-ascii?Q?8wNhiKi57275WqnLUzdWjHj+a9me5e7DH81238sjrO2QMMo6aTnxOX0BKsAt?=
 =?us-ascii?Q?DVg5T21Wv+jqye+n/SoMHNPmntDSuKBvKHtKwbtxjFsBnEdqBYmaYlMrrKaU?=
 =?us-ascii?Q?ucXwa8j2+N4Tiw8arvC15UDpnRsi+MjAPD8IqHummDLlNITNjQwrMdPWnfn9?=
 =?us-ascii?Q?abf0BUSSsrraaX+Tp3my1yzPeo8sos2sSNF/viWhSkshHkXwvnGgXhrhkeuS?=
 =?us-ascii?Q?w0GbcWSxR+sCZsCMG98BgVFFgEgOAO5+C2vwyxd1J8CoWUb6lIc5XlxBXlmT?=
 =?us-ascii?Q?nPTGauIjPCJWcp1vRKgk2mbjBCPngUt5+wczNUaaxQGA5whntk9BAt7Cf8JN?=
 =?us-ascii?Q?man33ClLqcEK85QpTG0h4brxwQiCwdiLmDv6cVNs85vl8MPpM7OmbCcbl4cP?=
 =?us-ascii?Q?NQft5PYpsoDZLhhl/9imSRSSjfodbuJe8sPDwrq1eN7+dvM0/5pTWwdlWxQL?=
 =?us-ascii?Q?ZiPhO3E4WHxFIZQ57eYKYIAvIVa6p0ymtIU6W5CbtK6Nm/W7DZrHig9xFdNP?=
 =?us-ascii?Q?2yJ81PBCeZYQoRz/igeVBRQE6GJm6RB2bbOIqaX3RuyF1vc9+JNzC90nunGc?=
 =?us-ascii?Q?KhYgd7X4XdQ9r/O/Pv5wxh941fhp9SJhqSaqzEqBUGRvCoarC1Bm6FYw2lR6?=
 =?us-ascii?Q?AEMawKYCMuj7Ws/HcQ/UJvcc0x24m7EKtSAe0e78MUJ6ELjzi+iMW35HGh7B?=
 =?us-ascii?Q?4dPkpbcWuhWgNNaBwy+OtG5h2p7irs1bxaG+fuE2YyT7AUhEPojLKZZttoPV?=
 =?us-ascii?Q?bxV3DpInGtLN0gdWyj7QxN08ALgJtG48BK5cerBaFtb+qsT2kUgzXt3cByxT?=
 =?us-ascii?Q?pi5D1TTk3RvHZ7LE35c+s7WQlUTtHvbFAR88q5onHdiSUICfy7gYUdW8MLTv?=
 =?us-ascii?Q?Jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d39c46e9-087a-4a79-dbd4-08db5ad626dc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5471.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 15:06:42.6775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BY22URvO5me72gEGjPOFA+xm8Xlw2C4M/p0QT9jQLO61FAuZqzxD/P0fejkA/LKSYnMxGbzZ+2EqdtUI2PjF8PAuRoEUAfd0m8vvxcvY5iQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7940
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684768047; x=1716304047;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AQagHZkR9cWHnTgy3pCDM+j+8B9edDodRnmZBjfFrgk=;
 b=VNrQp0ErDpfjJEnqkZvbQEh12pYOn16kJMaK3Bj06IuvaVfmoeHqC7tO
 qGndaU4I3nxvffBRtwsAcgFl8OKqu5M9+n5zDChf1v7hsp91Id3qYgEWP
 BFAHG5ZjQSbBTdoBtejQ+E2brqxeqOauQnkTCvrW3U2e7bJwCQyecjtlv
 pNHi8OaEkFj/v7AbiJDNW9o3vPTwfnPx8Mhf3YdgnXxbSxXCj8eX+Lef1
 7Sdk0dyaeOqb3D4zElfqjrILdCI4CdEowFHNs1iMOnCUJTdOOr0153vqU
 QU8ZyOlMlQsN+ZIgqlbA1VZsmFj5xuaTm2aNY2WJ+2YUnFDKgAi2wcOTU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VNrQp0Er
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 01/15] ice: make RX
 hash reading code more reusable
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>, Alexei
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 19, 2023 at 06:46:31PM +0200, Alexander Lobakin wrote:
> From: Larysa Zaremba <larysa.zaremba@intel.com>
> Date: Fri, 12 May 2023 17:25:53 +0200
> 
> > Previously, we only needed RX hash in skb path,
> > hence all related code was written with skb in mind.
> > But with the addition of XDP hints via kfuncs to the ice driver,
> > the same logic will be needed in .xmo_() callbacks.
> > 
> > Separate generic process of reading RX hash from a descriptor
> > into a separate function.
> > 
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 38 +++++++++++++------
> >  1 file changed, 27 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> > index c8322fb6f2b3..fc67bbf600af 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> > @@ -63,28 +63,44 @@ static enum pkt_hash_types ice_ptype_to_htype(u16 ptype)
> >  }
> >  
> >  /**
> > - * ice_rx_hash - set the hash value in the skb
> > + * ice_copy_rx_hash_from_desc - copy hash value from descriptor to address
> > + * @rx_desc: specific descriptor
> > + * @dst: address to copy hash value to
> > + *
> > + * Returns true, if valid hash has been copied into the destination address.
> > + */
> > +static bool
> > +ice_copy_rx_hash_from_desc(union ice_32b_rx_flex_desc *rx_desc, u32 *dst)
> 
> @rx_desc can be const.

Yes

> 
> I'm also unsure about the naming. Why not name this one ice_rx_hash()
> and the one which sets it in skb ice_rx_hash_skb()?

I just think that

  ice_copy_rx_hash_from_desc(desc, &hash, ...);
  ice_copy_rx_hash_from_desc(desc, hash_ptr, ...);

communicates the intention (for a person that does not see a prototype) much 
better than

  ice_rx_hash(desc, &hash, ...);
  ice_rx_hash(desc, hash_ptr, ...);

But now when I think about that, 'from_desc' part can probably be dropped 
without little to no impact, if we also replace 'copy' with sth more 
descriptive, like:

  ice_read_rx_hash(desc, &hash, ...);
  ice_read_rx_hash(desc, hash_ptr, ...);

Same for timestamp functions.

Probably, the main reason I started naming functions this way was 
ice_get_vlan_tag_from_rx_desc().
'_from_rx_desc' part is pretty redundant there too.

I won't change '_to_skb' part though, I think function should show the direction 
of change it applies.

> 
> > +{
> > +	struct ice_32b_rx_flex_desc_nic *nic_mdid;
> 
> Also const. I thought you'll pick most of my optimizations from the
> related commit :D

Well, at some point I kinda forgot about the patch, because it wasn't very 
usefult at the start of development, to be honest. Should have looked at it the 
the later stages though >_<

Will make nic_mdid const.

> 
> > +
> > +	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
> > +		return false;
> > +
> > +	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> > +	*dst = le32_to_cpu(nic_mdid->rss_hash);
> > +	return true;
> 
> You can just return the hash. `hash == 0` means there's no hash, so it
> basically means `false`, while non-zero is `true`.

Agree about both hash and timestamp.

Taking this comment and the earlier on into account, I'll name functions like
that:

ice_get_rx_hash()
ice_get_vlan_tag()
ice_ptp_get_rx_hwts_ns()

> 
> > +}
> > +
> > +/**
> > + * ice_rx_hash_to_skb - set the hash value in the skb
> >   * @rx_ring: descriptor ring
> >   * @rx_desc: specific descriptor
> >   * @skb: pointer to current skb
> >   * @rx_ptype: the ptype value from the descriptor
> >   */
> >  static void
> > -ice_rx_hash(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
> > -	    struct sk_buff *skb, u16 rx_ptype)
> > +ice_rx_hash_to_skb(struct ice_rx_ring *rx_ring,
> > +		   union ice_32b_rx_flex_desc *rx_desc,
> > +		   struct sk_buff *skb, u16 rx_ptype)
> >  {
> > -	struct ice_32b_rx_flex_desc_nic *nic_mdid;
> >  	u32 hash;
> >  
> >  	if (!(rx_ring->netdev->features & NETIF_F_RXHASH))
> >  		return;
> >  
> > -	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
> > -		return;
> > -
> > -	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> > -	hash = le32_to_cpu(nic_mdid->rss_hash);
> > -	skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
> > +	if (ice_copy_rx_hash_from_desc(rx_desc, &hash))
> 
> likely()? I wouldn't care about zero-hashed frames, their perf is not
> critical anyway.

Sure.

> 
> > +		skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
> >  }
> >  
> >  /**
> > @@ -186,7 +202,7 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
> >  		       union ice_32b_rx_flex_desc *rx_desc,
> >  		       struct sk_buff *skb, u16 ptype)
> >  {
> > -	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
> > +	ice_rx_hash_to_skb(rx_ring, rx_desc, skb, ptype);
> >  
> >  	/* modifies the skb - consumes the enet header */
> >  	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
