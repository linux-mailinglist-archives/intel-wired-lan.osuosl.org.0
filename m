Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED87074756D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 17:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EDEA4070F;
	Tue,  4 Jul 2023 15:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EDEA4070F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688485056;
	bh=17cWY7Xb/6blQ9nICpMyQUlWpYU0fheLlW15BZBwJUo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fLyjXIuh7v7o7S391nLc13ID851mHwWL/OzXZvTw+JcKnQBBpI5caUaPMj9UZUfn7
	 PjFrxBsr196Qhxvzm/qwi9QnrN47Q8cSq7joW+/F9c//H9R4+iXm/iMS0iTPC/xZu+
	 37Fr4JQ416bzyGz5Rypo3/1Ug0r6TW/yNJZ2QK/e/Dk7ngycKqCh9YUAOngF1AajZd
	 FREmxd+R08NW+PgoS/IVTB4h1G8HnD2MeGn3BptGQsObgNWCQ2mvAGZFgNJocDG9fA
	 D1M4uYjqdQbHJwKWSfZHdAvlduO0r7TvUQX2UFt3FYb5W6vnssK4CE2pRBGdOJblne
	 B4nFKlRvbQsEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c4ELfMj4VEf3; Tue,  4 Jul 2023 15:37:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ADD840164;
	Tue,  4 Jul 2023 15:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4ADD840164
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C48321BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 15:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97A10813FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 15:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97A10813FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5JbJx6bi5zgU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 15:37:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 928868198D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 928868198D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 15:37:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="449514884"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="449514884"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:37:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="892899469"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="892899469"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2023 08:37:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 08:37:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 08:37:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 08:37:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 08:37:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YIApP3t+qP0JP2qdi4jQxMX8cod4JrielzOnJGal1tbVWdN98leH1A0v6czOs0x/zYpN2pZtnFXySpWpQK9qvnHwS1XBh/VhoqTpzeCbTgiwzs2YfQ16JL5VBWJ6zk6XuwZ9MBYiOiVNmLiLBFxZOc8/Hz572tZqurb9sMaDVxCnSJf9DDSwHPL1f8+zgFXzn4HcCT8v4UMl9CTzvKkYq3hHUdzRhH1x1kE2p2quhLz6q3zaWcTpYiJ9dM2gbzVR9f0kjteleZkMTNFKpyVpeTTexwz625npYbXbmZ4/tL+Ba7DASNcRC1HMxB77MN79J64X2wcxaF53Egazs3paDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XM0GmHvl3QzwldXbs9d8zY3MURoK/Y4AatRGbHktb9g=;
 b=Klan1zTg95wUr4jtX9mCILdYKQE9RnjosmzxmbA+f8Ds9W0I2mRbBRS8+swbhTWoMH4/AL3S3YWI+3mCnz4hQhe3DBngOqw91Zm7s7zAVTiHx3fKgmYRaqKqNQF//6Tmj7WIFmYZVDMTVrfbc8x8vjPGjiBZjqUjowViPeYIYqB6tAYfueetpZJpObbLs5xLGNIFN4A883qeUREuWgVHA+VcJ4gWw0MJcYVR68aVdVJM0IQJ5boWXVXvJj9RduQntsrJrpkDWY9NJ1NxhK9+z0mT6s1hQZfhraF+BFCG9so8zDalaNuGsLsKg+aVNMTQoXvuIscLxLbQrVzvg8B4yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH0PR11MB5473.namprd11.prod.outlook.com (2603:10b6:610:d4::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6544.24; Tue, 4 Jul 2023 15:37:17 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::2391:92fd:c193:e476]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::2391:92fd:c193:e476%4]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 15:37:17 +0000
Date: Tue, 4 Jul 2023 17:37:09 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Message-ID: <ZKQ8pXhU/7CRseIi@boxer>
References: <20230704095915.9750-1-sriram.yagnaraman@est.tech>
Content-Disposition: inline
In-Reply-To: <20230704095915.9750-1-sriram.yagnaraman@est.tech>
X-ClientProxiedBy: FR0P281CA0241.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH0PR11MB5473:EE_
X-MS-Office365-Filtering-Correlation-Id: b415695d-31f7-455a-475b-08db7ca48c2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I8VYkKXSQmVoiEaoq24GXU9oFmQpOW3IBodfd1KuKaz6c9Od/YPq1rEA7udp5QibXlCSFdZfuDqt3yv6PfX10tXu7Hb11BsuMAXHGkIDpejvIFBxSh5dRCPkzvqfpGOhcMKlNqrhXEjpbz7PBlp6hOsVvXuEeka5d6lJ/f1drJe3lWy7vzGnWCsYwdanlkeft5G1iFiFlZsBMmCuw3oOD+nNq4VvNg+KYveN6YAt9KnLipAcUFJgj+gepjBWyuF5toSGxa/ORjchqD60OmVE/SBh+t1Y6rgHvqb3OkahRzeWq84R9lvXunWvidZr7VQNRbutik18hunZMCfjwvUrOKzKauDQcUMysO3XnuNQU7v3YSoc7fcg7leeFq1UJ6SUnVOdeH3gJQ7fQJnK80wxSzbAJBt4lVTeYyhjaMAZ+/7CGj7rg5U+pdmQZTTANrpm9uu5m2CnISZhTxB1AwsjJlXTsJWbBEwJpeyS3HFgbisDYD60eF/Xuj2gxuR1PJzKHkvzWI/xfim2ouGq10s6MY8KTGrKUGKe6KsJImKyK7eMAPaUct3MYWZtLNJ1ZYQr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(346002)(39860400002)(396003)(136003)(376002)(451199021)(316002)(8936002)(83380400001)(8676002)(54906003)(38100700002)(41300700001)(66556008)(4326008)(6916009)(66946007)(66476007)(82960400001)(9686003)(26005)(186003)(6512007)(44832011)(7416002)(86362001)(6486002)(5660300002)(478600001)(6506007)(2906002)(6666004)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zcXoo04NLFjKbo5Gy3Q0IdeBVsfIAL1ghaGeH0thi7L4nZEvd+L/wkoIK8K8?=
 =?us-ascii?Q?axTVq4eGs9jJ2Fs137k1n43uqfbyducMc8Pb4C/0I74ahFm7+CY4dtwF1LQ7?=
 =?us-ascii?Q?ShwtS2hqyGTg+sQF9hsJN1s1kXEhH+RMmF+ov0RFlmQRAP0aHd82nzr150Ju?=
 =?us-ascii?Q?XjXtnec/bwFNe2VqmVzjmVszPv+tA6Ey/L13+4nmImFkZEb09Lpp9y9GzY3Q?=
 =?us-ascii?Q?psYfTXdKMfzv5NP+1dFvNlkCsUTUW9RbWo82Avjo3FgQTLGJVN1V5oARwOoT?=
 =?us-ascii?Q?s/7SsRHhXqfz4ZehwzSQm9DnuLb//RDlsA8hBqUWjKbhLlpMqpKqHUdkkx7a?=
 =?us-ascii?Q?FsUbP8EVqyvMR2WRoL+YMtmHavuqscqENf9iFJ3O2JiTj/6dhCUoiXZ9M5C7?=
 =?us-ascii?Q?EaEatA4O2LDg6GVMRrVPmz8D2l2demThx9QHVklDfksp5UxyhiWJc/XcHIhs?=
 =?us-ascii?Q?P02gEtQUSJPTptJ1suUAolkAP++AR3KGqmvVL6PAtEmdk153TXGcZ/kwk7P5?=
 =?us-ascii?Q?RnMW0UPr12NOMsp79+bf7nj44w0Rdhjffu6xGwdBxlrRabjaG9tQw0v78/FL?=
 =?us-ascii?Q?kcHK7PSPe6ntMrWk0tw+RwV0Sh/VWi0eXXorabN2fo2wxr9TWKNAmp87ZkLz?=
 =?us-ascii?Q?7LjxlMlg8BLiUTlxhESuLFrJLOdSf3WESKzVlQgonivkmtCi5h4wnzbKhnmJ?=
 =?us-ascii?Q?USXLDynqPE2pvC37PCMyzlIcsA8WT1bjIbX7aDM7rPpXhR3Y9P/+IkJ9chaH?=
 =?us-ascii?Q?5crnUKIC0wT5lUzaQCwcXqyWvBXFsGAX9sGrb1qNSArR6eoeo+cPWqlLjRQ/?=
 =?us-ascii?Q?i8F+EH7EXTtoxE942sc3B3T+O0hsXSvvnF5LQZ6OJLznh+VWaHybWSr0gVvh?=
 =?us-ascii?Q?2fwcef6Id61afIWe/xVNqmcw1FKZQHjW6wgk8dEkxBj0P8MGxIJ6jFuQMv82?=
 =?us-ascii?Q?D8btnp70MLrLTM+CzM7rlH8RyLHVYO+NIfubn7qcLgTzyL1vV6leBmUdvjGp?=
 =?us-ascii?Q?sNN51WQVrq06pVVSO41ZnnycDlU3qST0IaR+/i8HgPLoUm+VJvR5EjKKHZz6?=
 =?us-ascii?Q?eANaUk9zLnlm63djRAijnG2lBtHtn8t+HTJ7dGLnOcwDJlsm89j/5b4+Z7AF?=
 =?us-ascii?Q?id0M6RM93/dV1ucWt0PQFjqMXhuOdtvyYCh+K+EuMRkU/PYZQF++qb2SDkfY?=
 =?us-ascii?Q?o8erGx/bsoNLgP9TPSlYaMSIAgbZ/bhtveniDnm8i44ZPPhMUr2bZQjQeNE1?=
 =?us-ascii?Q?u/COg/G5uTYVNBMvnDzLgvrQ5YtkhyfuKeohKrzcnQaG4NMGOf49XdENLlXY?=
 =?us-ascii?Q?garKWf3wnXtdCCLi/S0rORbRCT7IY11P+jQCa3xrGFvud+ZDOUf1KPjbaiZb?=
 =?us-ascii?Q?CqRUR8IMNyImAl+VleLRxfYVpRNCArC8u+SwTFMXS2stJDWYiZXuqcGQQlu9?=
 =?us-ascii?Q?CeafAyCYUF9S0z169ofNLEcc9UbDUEuIAHl39LE6YNrbt/0sioUgW85dIFs/?=
 =?us-ascii?Q?UpljWPPOyGRjVIt5XO5osz3x+0gaKW5h2zlPzZk7G7TmXMKWSk3rBYmW02ku?=
 =?us-ascii?Q?a+pb9ZTcsm2tm/EJLtSwhkd+pmaEH/ZUmfpbAqJW9sqiTJJMOfJqtumKP7e5?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b415695d-31f7-455a-475b-08db7ca48c2a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 15:37:17.3416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ISNDSKV8f67JvDfuCFo/uhS32nXSsQxsQeNqRPES6V8KJdZjEIFzKcpI8eAjuciOS66Zq/rcPfKl30qU95nubVAl/+ULeQttsnwSgkQEEgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5473
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688485048; x=1720021048;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7Ikb+ikkvJmbJWbsjpj8xiacw8JjbgwAgEs425/wFn0=;
 b=Ehi+fi9eEkW/hHgkeBperZc5/XIpoFv1dNW2REKth/wkrTwlKmZ2bZBG
 s04U5Oe+ZFkSPOoZj3AMd1Nbr5x8zaTkHkhgU7z+2eSph4SBbxJBTwYb0
 XOaqTlT/LvYTDjkbFmyd3O9KPVqnRGgog/Gz2FFawKZJRzE+tLK7rynE8
 9qP/jIPR8oReaRCy/1mShX+E4483deQ4JzGKxDNbf9RoCVrjaUX0gA5vU
 eAHuJ/KNnxwpTMtZfW46fpKRoo/0W1iUag7XaPlvRhq5s3ra2oqWV15hn
 ETNGnRsCfEcN1Ft5ZWpSvqyRonysgFRa81pH0cECV3EcM7U3BJT9YAfGk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ehi+fi9e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 0/4] igb: Add support for AF_XDP
 zero-copy
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
Cc: Jesper Dangaard
 Brouer <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 04, 2023 at 11:59:11AM +0200, Sriram Yagnaraman wrote:

Hi Sriram,

> Disclaimer: My first patches to Intel drivers, implemented AF_XDP
> zero-copy feature which seemed to be missing for igb. Not sure if it was
> a conscious choice to not spend time implementing this for older
> devices, nevertheless I send them to the list for review.
> 
> The first couple of patches adds helper funcctions to prepare for AF_XDP
> zero-copy support which comes in the last couple of patches, one each
> for Rx and TX paths.

please include perf numbers in cover letter, CC AF_XDP maintainers and use
batch XSK APIs: xsk_buff_alloc_batch(), xsk_tx_peek_release_desc_batch().

Thanks!

> 
> Sriram Yagnaraman (4):
>   igb: prepare for AF_XDP zero-copy support
>   igb: Introduce txrx ring enable/disable functions
>   igb: add AF_XDP zero-copy Rx support
>   igb: add AF_XDP zero-copy Tx support
> 
>  drivers/net/ethernet/intel/igb/Makefile   |   2 +-
>  drivers/net/ethernet/intel/igb/igb.h      |  52 ++-
>  drivers/net/ethernet/intel/igb/igb_main.c | 178 +++++++--
>  drivers/net/ethernet/intel/igb/igb_xsk.c  | 434 ++++++++++++++++++++++
>  4 files changed, 633 insertions(+), 33 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/igb/igb_xsk.c
> 
> -- 
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
