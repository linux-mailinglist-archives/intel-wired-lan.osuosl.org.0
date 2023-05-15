Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5222170326A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 18:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 833A941D90;
	Mon, 15 May 2023 16:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 833A941D90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684167179;
	bh=NyJY7UZjCVtAEi7FILAiLCM2OEnaND0HdNlRNl4wTjM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pB/Zvpww3qVVMlsjXRTivghNmqK55B8bpAkk4PCmgBjsxjEcCyz89bCkvrNsLtEu0
	 9FG4hpuXcFqR2QlV9ZcHf+6pSepWtRphLen6I81tam9F8WoThcoSDb3qh327LGFh1x
	 Uci0r0lmf0OPNu/3WMPN6hXwjgMtYGIt1+M/OS5RUYOYmbi2AOGNM4WG6WPchVLLCr
	 +u8rG74i5xfS41zWM+qJqVMPjViZtx8SlEP/3a8WVN2NwOLAkJcP3CUCUihjBmyuTr
	 +C2UtOvwKc/zVNUg5EE0eianCtozREDldnYq7T5t5VN0Y+79DIqfKF/E3YbyJXMpZB
	 Gti7nFdjZvOyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LCJR3-hoIHRS; Mon, 15 May 2023 16:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0313A403FD;
	Mon, 15 May 2023 16:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0313A403FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 575441BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BD42403FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BD42403FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xwvbcJjL3k4E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 16:12:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C8AA40328
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C8AA40328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:12:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="348735362"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="348735362"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 09:12:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="695065946"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="695065946"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 15 May 2023 09:12:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 09:12:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 09:12:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 09:12:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 09:12:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bt4cSU5Yw8QG6XMWK74e9z/IbweZVrR0bBHUDh6QT6Sq0TtqW+9ZsFDz3b/eIpLKcrD372gg2tY8RniYIxb1lNS8MRy+jF5Z8salYqe2cyaCecg+Xyoh2l54EujcawMF5vRzhft0nM1q07tXigBWKKvjWWCn6HwSRO2nPgyK3rJiIEE/9hzQXchVoZV3bNIPto7NxqgRI2d81AxgPBDSmE/VCYAILZI/JIoKjhRSU+k/9jSoAkIFUJ9rW97oU7swCqgV6FrDqWBzyM7jUUGT7UG8RA91WIT9fBgfQ7XE4+hQSdijdaysnn4V3JuNFmt7Njgiz16bMtJt2ZRUAwLZSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBURApRm8Y1LbztQ8MiHDGzeMdFVKAA1bY/hA0kPNuA=;
 b=hysGSiAAwYnVQM+5S3mFH8tC9xNI/RnUla7XnzN6BTGy8eneuwyt77OlxrlkIkHbLDr5AjaXJVJfaLt9KdL8eNTYsZNTE7dFlSEXs8gVw3w16Ox+9dnLxHYQ4+fasEFL8VkqGlupasLJxoHZHAk6/A5f+hQ6PXMyRAQi5N5UJxXiEX2UHLclHiCjxIElz/4ybU2kri2OUkEMkp7tieOWlrBelag932M+g7UY79taAHCeLquyQVVOfCOjToQvPytydonhta3Cx7XBjYUUU9u2jtCxaX8Nzx7vERph81qmgnIkdUg9s9mMVwdzONeM2DiOVGsW8Jm0dhPeLXxL+9pQeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5471.namprd11.prod.outlook.com (2603:10b6:5:39d::10)
 by BN9PR11MB5483.namprd11.prod.outlook.com (2603:10b6:408:104::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 16:12:40 +0000
Received: from DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913]) by DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 16:12:40 +0000
Date: Mon, 15 May 2023 18:09:55 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Message-ID: <ZGJZU89AK/3mFZXW@lincoln>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-10-larysa.zaremba@intel.com>
 <b0694577-e2b3-f6de-cf85-aed99fdf2496@redhat.com>
Content-Disposition: inline
In-Reply-To: <b0694577-e2b3-f6de-cf85-aed99fdf2496@redhat.com>
X-ClientProxiedBy: FR3P281CA0029.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::22) To DM4PR11MB5471.namprd11.prod.outlook.com
 (2603:10b6:5:39d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5471:EE_|BN9PR11MB5483:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b83d99b-3787-4d75-de9b-08db555f34f2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eveJqkJL9pVJZ9rmeb4NlVoGA3RUcS8BTNVW96CWxJWLHooAfRZG4DuzysuLjGx3/+EgfgPxRgmHVwtQApGHc07tp0FE+DH14e8roC+USf55GvVHspc97HD4aVyaKsl1L8DPTb/4liRXVfHexACO0IjRNRZez4RmC0lEg9lIeWy1tarQuu+XqKJqW5AOGaiFoI5MCu4zbF23DsQvD5OlNjzZubUclhmulM2W7PFYFClScfaBHtN5He5muft3Qekt3MUvdMPXWs+YLZb5Ku9DDkNUEY40yBLCc5AlO70mCTcC9BptH6SoVb7hZZmKdauppngnoE7QUdqqHM1aW5cTU73ZDdG888YoqaBueDlGnPrygfyCeWN9LAOsmFk1pPhHNzJbqc/3lAULJvinPNRA/e/X761+bD04PiJqfOdxKFROQvel5HZGbi34IZ/K0sxHms0uN4+v6pEMwLU8uyTPT7emGqna2NeYBOvkra1QlZKKUJ1HlXiU6yXNWgMOhAID9No85GzejVEzTM9WV+fKBdmplevw8j2bcDjn8/+B7Jw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5471.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(346002)(376002)(396003)(366004)(39860400002)(451199021)(33716001)(83380400001)(66476007)(66556008)(9686003)(66946007)(6486002)(26005)(6506007)(6512007)(966005)(478600001)(54906003)(6666004)(7416002)(186003)(44832011)(86362001)(8676002)(8936002)(5660300002)(2906002)(41300700001)(4326008)(6916009)(316002)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KuLV7sJDb9JjlPNV6uwpF4AOwe5xd0UfvQCyr9pMHmd6jeO5cJpQ+2jqAExX?=
 =?us-ascii?Q?kwaETvl/KVezxRKROhjMYlVFu1lCM4fWkv/DcvYROcpEEP7iWwaA/Q6i1iGc?=
 =?us-ascii?Q?m++rdyYbZVHbBLGGC7U2bzlAsPGpAa00D6JIV1sO9p9kMw5ZBqi3xV1UA1Hi?=
 =?us-ascii?Q?7RMi4bywxPg2tStX/D58Y4+LcmYodF6+JlE7M+R4mV2RTg2st19mOQcKMAhX?=
 =?us-ascii?Q?Y14DmcT2oODvy9dYdv+fX+tcRUbC6vbpOKuDWNXS90xERtP0UVFB72YlMCNG?=
 =?us-ascii?Q?xZXixZ5fDeX7azATcdSJnlo12fUsAAS2MTzFrx3gRlywV/EY+B6mGw9Dl03w?=
 =?us-ascii?Q?cHQA2XaOcVXHNLWuHwvV6g+T8vNXwwOBz7IiYfCF/+L53RpWIBJdFClKhrMX?=
 =?us-ascii?Q?eZZj81Ungkop32wg78XadPO6s4BmeDyg4W+TsuEPnga5MCRbS17EB7L+jpfW?=
 =?us-ascii?Q?xvfywuHI+bNDcqrAlQMmZbLAHTpYoa2V9/6XG3viDhJaqbTYUQSnXml1qrb6?=
 =?us-ascii?Q?fsUJGV3x509YD0oSRytxErwoq5hjnKiMJnMKGiioFazNPEtOp2n6Zk8QmY96?=
 =?us-ascii?Q?n0aZBVMBeS0WVWwV6DVfkFLb2wmiE1n4+g/yRwQSgEuLwOy4FH04FEIPxUYw?=
 =?us-ascii?Q?HeTUsC1ST+zUjdB9vUxNFzasGAhVxUz/+bkhBYjrNzInu3KaCY9w8VP5C2Kb?=
 =?us-ascii?Q?iCN4QHQVlmZP09D7wss5rcB9ptIrU7AZFZ9bwEvO1GnekDKlHWx8JFsu4Ixf?=
 =?us-ascii?Q?9V1NbVOc54GlxnoQq/VskNNA1QzEhCJF0E5JGjwSJEPsqXq4bDR4UPY+HtGR?=
 =?us-ascii?Q?k70NYxxJLTEi6KFqWfXDOepUVGEny5DRhS1wok6Cdpv+0drnKZs9vVfz3KG/?=
 =?us-ascii?Q?cv0ZoSMfnOky+uCUxJ3iYXEglt54bcIEwojGPBkeJhHMWsvI3+L6QzS19xoA?=
 =?us-ascii?Q?FlxbjJ78gdEGOI5YdH54O9QJC+GWXvLWXDyug1DfEtPE5BTbrlQEP5LjFgds?=
 =?us-ascii?Q?LTDC5MpIMf7TAFZ4BiB8MEWmR22xNKrty/ZQnuGS1kv65VZs7saMohTHaSOt?=
 =?us-ascii?Q?UgYvQHuICwwJLJVTPPAI/sl2FWmRxlpA7I9ZxoPpnvQvQzvfWd+gNfk2ZtZf?=
 =?us-ascii?Q?9FboSomek/FbzOnQZUnN8HZB6NTy44cWcEjn2J6iwRG+H3pv+POI5qyuDSLD?=
 =?us-ascii?Q?OimkLhF4ZC/pd2QRiKdZO2FLDnysPX+rlnTaE3DJgdCDqsnotpptWxi+Oq4+?=
 =?us-ascii?Q?YL+S1mUANPDkCSRBxEarlCpU37yl0avDdtnyzmr3LXyqUf1Wtkc3kIrtAnTN?=
 =?us-ascii?Q?SHIlRGWRVI6vV3Kp4ierMaxjifl5ghPj+noSGRa3CO4NFzT+kRo/u5Ptn4Qm?=
 =?us-ascii?Q?dBtSwt4tw1yBPHlhOvcWi2nwvXLwBT4BlDKrU/aKTzN9Mcr4maRpbsBtD7cT?=
 =?us-ascii?Q?PLf7c8Ywvba4tB60uBlBQ1E00Gt30POuhKpf9qTQfjTKjLg4ykY9tnxvgroo?=
 =?us-ascii?Q?jTc8nemnIN5aOuo8VEm3DmenwouL5gK44gUdPFxAnNaxZUp9VgXXIsYRp4/s?=
 =?us-ascii?Q?NOji/N4jQLzb0XFzqPO/tsLmzmk6GpSqA+rA6mn52Gjt1MR88wbhKJFCtnq6?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b83d99b-3787-4d75-de9b-08db555f34f2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5471.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 16:12:40.3987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PrN5DaY1K21lBtRz83TIKy4CYroTXz79ULLnOVQOurESjw3NvxdGoUBUYwKpD826jmQgVhYk+qFIo1WU+RReBWcin4zCWQoRqNwlPgVKopc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5483
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684167172; x=1715703172;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=k9s+hYu3KM2XQXYPKO97k/TvDCxsaZ5FWVAxopDmpdA=;
 b=E9sDp2c0miCCdFP+riLzn/Mikl1uHUOCNfq2kD+fvGVBHSfV3lOBl0H6
 UIydzVkIq2rB3WdkrsxrObzwlZNjS0QLMfFgA8p7Rz7rd03kwZMN9LBqv
 MTS/+TyO3+iwt9nlwxL0/l59i4sfTjeh/RA7I3PbjK/3hNCiTfBxq8Kr2
 SXUntEQh/t4YVsls+EaS7GJh8vkSVT2cAFjrppjpouHFZOwuBSaViowyc
 MWlULJkWUwkqvbMUkBA8TDS/EY7a/SFHVO0uYvem3yVQTO0fjKqARlO4w
 IpF/gZtFzsRs1xX9TpNspLuOq+5AXYp1t5HnG15KXGolHaTIWTtj1CyZ4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E9sDp2c0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 09/15] xdp: Add VLAN
 tag hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 Maryam Tahhan <mtahhan@redhat.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 15, 2023 at 05:36:12PM +0200, Jesper Dangaard Brouer wrote:
> 
> 
> On 12/05/2023 17.26, Larysa Zaremba wrote:
> > Implement functionality that enables drivers to expose VLAN tag
> > to XDP code.
> > 
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> [...]
> 
> > diff --git a/net/core/xdp.c b/net/core/xdp.c
> > index 41e5ca8643ec..eff21501609f 100644
> > --- a/net/core/xdp.c
> > +++ b/net/core/xdp.c
> > @@ -738,6 +738,30 @@ __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash,
> >   	return -EOPNOTSUPP;
> >   }
> 
> Remember below becomes part of main documentation on HW metadata hints:
>  - https://kernel.org/doc/html/latest/networking/xdp-rx-metadata.html
> 
> Hint compiling locally I use:
>  make SPHINXDIRS="networking" htmldocs
> 
> > +/**
> > + * bpf_xdp_metadata_rx_ctag - Read XDP packet inner vlan tag.
> 
> Is bpf_xdp_metadata_rx_ctag a good function name for the inner vlan tag?
> Like wise below "stag".
> 
> I cannot remember if the C-tag or S-tag is the inner or outer vlan tag.
> 
> When reading BPF code that use these function names, then I would have
> to ask Google for help, or find-and-read this doc.
> 
> Can we come-up with a more intuitive name, that e.g. helps when reading
> the BPF-prog code?

Well, my reasoning for such naming is that if someone can configure s-tag 
stripping in ethtool with 'rx-vlan-stag-hw-parse', they shouldn't have any 
problem with understanding those function names.

One possible improvement that comes to mind is maybe (similarly ethtool) calling 
c-tag just 'tag' and letting s-tag stay 'stag'. Because c-tag is this default 
802.1q tag, which is supported by various hardware, while s-tag is significantly 
less widespread.

But there are many options, really.

What are your suggestions?

> 
> > + * @ctx: XDP context pointer.
> > + * @vlan_tag: Return value pointer.
> > + *
> 
> IMHO right here, there should be a description.
> 
> E.g. for what a VLAN "tag" means.  I assume a "tag" isn't the VLAN id,
> but the raw VLAN tag that also contains the prio numbers etc.
> 
> It this VLAN tag expected to be in network-byte-order ?
> IMHO this doc should define what is expected (and driver devel must
> follow this).

Will specify that.

> 
> > + * Returns 0 on success or ``-errno`` on error.
> > + */
> > +__bpf_kfunc int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
> > +{
> > +	return -EOPNOTSUPP;
> > +}
> > +
> > +/**
> > + * bpf_xdp_metadata_rx_stag - Read XDP packet outer vlan tag.
> > + * @ctx: XDP context pointer.
> > + * @vlan_tag: Return value pointer.
> > + *
> > + * Returns 0 on success or ``-errno`` on error.
> 
> IMHO we should provide more guidance to expected return codes, and what
> they mean.  IMHO driver developers must only return codes that are
> described here, and if they invent a new, add it as part of their patch.

That's a good suggestion, I will expand the comment to describe error codes used 
so far.

> 
> See, formatting in bpf_xdp_metadata_rx_hash and check how this gets
> compiled into HTML.
> 
> 
> > + */
> > +__bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
> > +{
> > +	return -EOPNOTSUPP;
> > +}
> > +
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
