Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F070702F3D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 16:08:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C37083774;
	Mon, 15 May 2023 14:08:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C37083774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684159705;
	bh=LRzOEXmDp9yZKTo0hroX4BtvXgZkohyGy0OTgEEB2jE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TSJ3pHSThLYSOK5NC2D8KwcRF9/ebExMZW2ajrODIUWN77OuCCh2MReYUsx5YG/wx
	 zr+9F+x2HzaBrkqlVXyXwQmqQkxWSDppYi891Fi+tbjjgf/P1ydICQNd+F6avv9mjs
	 2BwUR5FhUCBKQJzvZjsXNMTLB2XHgnx9kKK/Rur4Ez7Ipbc5HMIsBqlhG3sXtJgsyw
	 Gx8klKUGwzZRWsVAKiSgRIGXIH5xI3wO8j+TyOLOQr55gVi75rD+KyKOtaMY+A3RXe
	 AbECBQMEK2I3Kwii1Emk8bjL820cP851x7wojpF8CtsBQOmQd9ZyZ5w2vVn6lr1QQC
	 k419VDAMR6M4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOwXzZyDusTX; Mon, 15 May 2023 14:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 523368231C;
	Mon, 15 May 2023 14:08:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 523368231C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 482881BF575
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 14:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F5934048A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 14:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F5934048A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjHqbBCWP_6K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 14:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21D8A4026A
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21D8A4026A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 14:08:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="330828268"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="330828268"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 07:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="845272859"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="845272859"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2023 07:08:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 07:08:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 07:08:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 07:08:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3bTwZFnGQCpuuYXRw0Wdtsq7xox9I8JQCStTBl5XO2bEcKc3bwPBeTlChPXmJ7gATE2PxyIWOSgajNzPGNod4hxfzjvS+81HBZY1+3BEAA6lFMsfQ2ca/AGFdMr47pw6JpNMNPN5vVcFhj7KapSaR3FpP3W39udQ01xpUTSC/+2W0dfH6LhFk034lCEjs7it++0rhlpfwUbRjo2EO/8wv/D4xydqUMxU2+UcYy7SrK5ke/DFABD6Lphd5dXSP8c+EMbtXg8CSmYiJvDYEOH2kLWf426kQVY4DjcXPrSEA8X5Ckkv1aYRSFdbNEvHXMT80xS4WfCSDCBG65YgCvByw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QvuS/89+PoiCdWvP1nE7wHNPVcNZ05MiiO6Sa+hNPZU=;
 b=j6faZbutL+t6GyXaVZoFPoDJs9cJnuTeONR2WW6kX5jtg1w3E7txANubXKg8J/l7B6WQs/Qp76TDtD/J9r2eHCzuEsXskNNqN5UqIOHo/DkcCE6/HLLGyOFnx+l1lwHaz35Bm364+rCZfHv1xlXIekDQ9eXroXJCc2tYolW0zXDNgCFJpSMS4u9RQi2hjZH1hK9GM9ed8rZ2ryFIxE8+bTWZoPk9DTcoHTVDZeA6G2TBUtopPRogLHZjtdkuoR3NyUXMPtz8SG33cgOqKYiITXsSwMotTjNSTkvy0MlFrdbQNTCiAW5V9wZGipziOMMbW8sf6RXuOtYhFBNPNQH0Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5471.namprd11.prod.outlook.com (2603:10b6:5:39d::10)
 by BL1PR11MB5980.namprd11.prod.outlook.com (2603:10b6:208:387::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 14:08:11 +0000
Received: from DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913]) by DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 14:08:11 +0000
Date: Mon, 15 May 2023 16:05:25 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Stanislav Fomichev <sdf@google.com>
Message-ID: <ZGI8JZzWZ+4POkGx@lincoln>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-14-larysa.zaremba@intel.com>
 <ZF6GfoZVgKX78bpq@google.com>
Content-Disposition: inline
In-Reply-To: <ZF6GfoZVgKX78bpq@google.com>
X-ClientProxiedBy: FR0P281CA0037.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::19) To DM4PR11MB5471.namprd11.prod.outlook.com
 (2603:10b6:5:39d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5471:EE_|BL1PR11MB5980:EE_
X-MS-Office365-Filtering-Correlation-Id: e640867f-dac8-4f3f-d65c-08db554dd122
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BFXzxTcELk2XfRck4UMXTxxGsJH6CdvWiUxnYIjbFr/G5YjAT1pd9N/l2QOS7VR1b8T8+3dCp6Puk5oYSgnldkUK36PuwtM01Q+wCiSYPB2/GDjgYr12VKW2xk6IKGzeu5GWbYA55XsPHnARnVbdmM7CHNiEfG/YmCUPhmKg82v9shGIoO/RPSl9TEOgrUSJC8YgqGapWERW3DUpfdOrBOVjEp3K8Pu9z0dM+c7ETlwO4bIbPSa9W4Bq6cQHemgYqsgFVE/IgA6dW6kdsAma6C7Y0awiYR6AQAqDd9meG0NYgN2af9HxY7E/G19DPvg3FLnNsCjwwUR3n3Th1ullGv2Wk4vJ7e/pkwtpZzEkuGEwYJ3csl3EJCWv3s6qUe9Bu2jqUGuK4JD23WmFXKRih7FIDF4Zf1KdGa15TjhXji5WVBfLKhj8hJEXEYP3ny+VJ2z70yXjjSLtHZ1Jme/5Tp/R1adKPRcAkBrY6vh+BxMgOYK5kOAf1Z/B07PUF3VvzwQuyMrwQ0mTzMhV2w9iJ5Si+TztG3TRugZP+9Q7GtU4kht0P0mBvgYqHk2Wsmzgom6re4ZsYkTxowIBS59dwDjgw32hvGBUCoVUe8wjvjA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5471.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(366004)(346002)(396003)(376002)(39860400002)(451199021)(33716001)(83380400001)(66476007)(66556008)(9686003)(66946007)(6486002)(26005)(6506007)(6512007)(478600001)(54906003)(6666004)(44832011)(186003)(7416002)(2906002)(5660300002)(86362001)(8936002)(8676002)(4326008)(6916009)(316002)(41300700001)(82960400001)(38100700002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e8iNuG3HjyxsrhmfFu8Kdt1ZIYV53XrZocl6HsWlTg293dzQn+tJmLJ/X0z5?=
 =?us-ascii?Q?WbSndPkwm+IC/WtMGOPSaED6m804X417//0xS75aB9Ucuu4fWqh7oZQJ3mP9?=
 =?us-ascii?Q?VUW0YjXbEaemJ/KqPcjByARpLsBkNP+u/XG9nlpzBc1w39Wf+WRonV/xsjtu?=
 =?us-ascii?Q?TRBFy0vO9ZFqW3skiB7AF8FAbLticOFBfKao3X2KFqaqMFYEMtXv1Oj++nxa?=
 =?us-ascii?Q?uC1Trs+m+N8uv7VW1iKZZKVmLbJETjVIVsB2bomaOgkVmVF1WPjENxDUeS8m?=
 =?us-ascii?Q?fV9td95vuQWk845fRqJ3ub5ZB0f/IiE1Hfl5Mbd/pFF0RnSLodvj2Atz1DmN?=
 =?us-ascii?Q?BTox5f4iwESjKfdjTlwScpRAXbWUfA9eA0lqZ0ExVGqrmPpnbGIcCrEyKJiN?=
 =?us-ascii?Q?2i7/HlHJnuUPjB8sWemIXY2Jxr/27dmC4q42MCMABKj0LfCmkl4SyDfpSiZU?=
 =?us-ascii?Q?YYWnFI6yClMYyGANHsmp+N3U3lbCeHNZIWkkQZ+JF5wrkubFqTDF9qDnUli2?=
 =?us-ascii?Q?k3o2h7WkCczfqHtcNj/CfVGpkAodMnbLgGKpjvx38MGfP0OEXARuGHtwbptR?=
 =?us-ascii?Q?HZhQAITIgApKXUG+DNFeXoJy30yQgC3ZhspNl4vBqJudfPf6edI/4lBlpRtG?=
 =?us-ascii?Q?RYkfvUTtwDYklHRTeqzulnGon8QR1QQiHqmlYSBw5qS6pXJSh5+OMNvgM7G4?=
 =?us-ascii?Q?1n4FsTtbbkyZHj+46JK4K5r5vD2bTyYVvsWJoTRye95W+ort5AVk4YrDje7u?=
 =?us-ascii?Q?mQkQGxsoRl44IuXncXoIb+SAEi2DBuDg0TrYjOBOdrRfhNBXdzLeF6WW08p6?=
 =?us-ascii?Q?wMHCuk4VT8wIpuA9W/QhcNs5v2onNkbqisDZQNoe+TvrGDKI2va7Z5FsLZ4Q?=
 =?us-ascii?Q?RpAFnN094czGU+yeow26AY8dEgsvxP7aMoeyy+Yq4wbKxO6QttyoAIKLx8E1?=
 =?us-ascii?Q?68t90zaF2SrdMoP43MUK7rqlxG9OQZowfp7zG231m9lR+9ZRixRv6cZ/X/8U?=
 =?us-ascii?Q?c/TyaILfmC/rWHnFIKB6mmE+PLY4V1S1dNTI6JyhTMHl6SnmWWJMhkeVbpNA?=
 =?us-ascii?Q?lOixsgdqDpbh9PI65mchqHV+7/Raml6GxswqLjVnmGYls1DV4g8HrPZcnIcF?=
 =?us-ascii?Q?sZ9Du7mxz4uPlm9DSk0b6i1v0ZrUOrZL6lXHrZBsfmcDodtqbcjjx+MqsLNc?=
 =?us-ascii?Q?YFzGv1QkvbuY3MxsR+4wH3yEgu8zTiwzQkihhAIyvM0kCxPot9ZTGuBQPJ9J?=
 =?us-ascii?Q?xhlP7FoWIYtDKmJjRQYgnUkgNoBg4Tp4eyA2oj9bs9ox+wI6HXmtN5v8lQXb?=
 =?us-ascii?Q?lwyHK02yAG0LaTL5wc06Xfex9qqasgqUD0HkZv474aiKEjYVKMozyN2eQmGx?=
 =?us-ascii?Q?awCaVZFcteKGHW4AKT+P/YM3R1NnfZCsIso0emY0B+LoBPVC6EZ7dk1foYU+?=
 =?us-ascii?Q?x8YTfAcAd8yTI35LHQAIZQ8cifZgz2ZHdpJMGwnSgeWfRM2eDuvyarAZh/WA?=
 =?us-ascii?Q?Y35jj3pjdcefMbVV8Nrz8YoZjL9eNcrhK0zOIjqd4RJSo2Vwmy/XeZxrDGvT?=
 =?us-ascii?Q?jPiNgmpEyQcHSEe05cjHWkDk72DQYmpKTgIKkXzwTwX2aTP0y3E39+EbToOZ?=
 =?us-ascii?Q?Eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e640867f-dac8-4f3f-d65c-08db554dd122
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5471.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 14:08:11.6173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b/5ovqCAviXxgpmav0FM+bhPA9oa7faKwf3LiA9RjEPsBkJQx6OUQHcTVX6Q6wgRJV68fci6RsoNsiYlItPt7nQSlwqm7bfoENzSANazdHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5980
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684159698; x=1715695698;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4F2pe+Bi3JoNn8gnP2gF2BSYpLCG2EmCW2nizaBXhLQ=;
 b=Kb49aaoVNiOh0Qdb1cnVi6JzYDdrt+TJm73gwz1YzOg3vV6BInTelxs5
 aOEyePS6WcCg/wpgCmqGl3RkgYB06JvPaPzsCFe7lsYCrb+fgZ+vMtssx
 EpvnPYeoZsBjnwZH0UpAsaJCES/QdKUC2RUVf9Q7uZrh1vDXNIYwGYa7j
 VLJavs+VH3UztQJzvAyQc4zKA6Lg2RZJljhfvJDb4x97+SRh7ku92UdRG
 B4twS5Nz4z/kmh48y5CFHL/MWIOHHj1wCFKa9hTAfTvUe7G2RKoXb+x/P
 TVB91C7+SY5XpzAB2m6z1U+XoiL5f9kRUDuA0YLxKDPbCRlDGSD2TCaKx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kb49aaoV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 13/15] selftests/bpf:
 Allow VLAN packets in xdp_hw_metadata
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
 Nguyen <anthony.l.nguyen@intel.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel
 Borkmann <daniel@iogearbox.net>, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 12, 2023 at 11:33:34AM -0700, Stanislav Fomichev wrote:
> On 05/12, Larysa Zaremba wrote:
> > Make VLAN c-tag and s-tag XDP hint testing more convenient
> > by not skipping VLAN-ed packets.
> > 
> > Allow both 802.1ad and 802.1Q headers.
> 
> Can we also extend non-hw test? That should require adding metadata
> handlers to veth to extract relevant parts from skb + update ip link
> commands to add vlan id. Should be relatively easy to do?
> 

Seems like something I can and should do. Will be in v2.

> > 
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  tools/testing/selftests/bpf/progs/xdp_hw_metadata.c | 9 ++++++++-
> >  tools/testing/selftests/bpf/xdp_metadata.h          | 8 ++++++++
> >  2 files changed, 16 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> > index b2dfd7066c6e..f95f82a8b449 100644
> > --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> > +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> > @@ -26,15 +26,22 @@ int rx(struct xdp_md *ctx)
> >  {
> >  	void *data, *data_meta, *data_end;
> >  	struct ipv6hdr *ip6h = NULL;
> > -	struct ethhdr *eth = NULL;
> >  	struct udphdr *udp = NULL;
> >  	struct iphdr *iph = NULL;
> >  	struct xdp_meta *meta;
> > +	struct ethhdr *eth;
> >  	int err;
> >  
> >  	data = (void *)(long)ctx->data;
> >  	data_end = (void *)(long)ctx->data_end;
> >  	eth = data;
> > +
> > +	if (eth + 1 < data_end && eth->h_proto == bpf_htons(ETH_P_8021AD))
> > +		eth = (void *)eth + sizeof(struct vlan_hdr);
> > +
> > +	if (eth + 1 < data_end && eth->h_proto == bpf_htons(ETH_P_8021Q))
> > +		eth = (void *)eth + sizeof(struct vlan_hdr);
> > +
> >  	if (eth + 1 < data_end) {
> >  		if (eth->h_proto == bpf_htons(ETH_P_IP)) {
> >  			iph = (void *)(eth + 1);
> > diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
> > index 938a729bd307..6664893c2c77 100644
> > --- a/tools/testing/selftests/bpf/xdp_metadata.h
> > +++ b/tools/testing/selftests/bpf/xdp_metadata.h
> > @@ -9,6 +9,14 @@
> >  #define ETH_P_IPV6 0x86DD
> >  #endif
> >  
> > +#ifndef ETH_P_8021Q
> > +#define ETH_P_8021Q 0x8100
> > +#endif
> > +
> > +#ifndef ETH_P_8021AD
> > +#define ETH_P_8021AD 0x88A8
> > +#endif
> > +
> >  struct xdp_meta {
> >  	__u64 rx_timestamp;
> >  	__u64 xdp_timestamp;
> > -- 
> > 2.35.3
> > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
