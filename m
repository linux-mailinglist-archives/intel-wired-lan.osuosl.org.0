Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A760A69592D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 07:27:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6E0C41682;
	Tue, 14 Feb 2023 06:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6E0C41682
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676356051;
	bh=l7KiGOc3bTxQFbzqNo3ibaPF3HP9dzgLUwaojW864hg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ipgn6nslyum+Umjhm/13ZRvmmi5TfBvQeKCTlpXVrISZcdJNWPpzyx0oecHXHila
	 Fszcw2c2wvyPVFwexUThasUZXExIif2rG+aTGpuv8vK8L/2AGZ4BagNs2Qm6W8XMHL
	 G8VuVgCIhndKlg6B/1U4XdLUFQEa6k8aYWlpm/b+gGOVM/S/r59V3k3pqbKbpYaVbS
	 G+wsTq6IKuWqjUB8c4STtu+TPOTnFWl20MYyt9Gs/xDAqWVYyaopZHRv6bxVoF415V
	 fKXptKgKrs/iqgrRIHcjCka7oXK9nKyTkgmwqWzc1Ov+6PSgMnjszsbF+bQHOEpC7w
	 h87qkN8XTpWxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gv2kEwPNxkDI; Tue, 14 Feb 2023 06:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3048141612;
	Tue, 14 Feb 2023 06:27:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3048141612
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 929091BF307
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7449541612
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:27:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7449541612
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3_o81dbjzu7N for <intel-wired-lan@osuosl.org>;
 Tue, 14 Feb 2023 06:27:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22F3541610
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22F3541610
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:27:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="314733758"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="314733758"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 22:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="662446921"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="662446921"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 13 Feb 2023 22:27:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 22:27:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 13 Feb 2023 22:27:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 13 Feb 2023 22:27:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxcLijJ/tIprVH6Acr471cEMRQC1M0Jvb/GRsY8e6SCObKesKPsoBwFfwD/SA1fGT0/bPR/5HvN206BPrcrhXS0WOv/tHR/Ub3KQByN046bdZHHm3qQAdLAdqOMCzFrjakFfVFk2KLB3bfSu73lJ8zrwd4xzCjGJAjsMrdUkEdKi8CtqSVlr0YQg30XCzRELeyFCiRPydU0QXr4rAF9K19sUU85iI3vqnSRjs+kDWXTfRVMUfIudGfmOrSQZS++ZrNYdDF5H5cz4O5VdrB0jXNuyL7UMUIIUlouAj7LF8Bq2682EHuJOz8aqDMDCKOB7msMEActYBXVLHDvzImr1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jG5iZzdCwe6x6gvXCNZ/qewFjbM9YP1YfjHPPl4EBJw=;
 b=QOgS7rn72zc6bTq7ojokfG7XLSwxl4MF5V9D2zveifIso3+wIC7iAeGpLFVTTkMcRo0BUd02EMznseYPEb5FB7F+bVRxrrYFckwazfP9VQ7ugjJQ8PGG9gIN0BUg1K87C0hBn9iK96XIgtYpxMwdhR8Liiizt7yE7mSWhTTdKUZRMgQKxwtc3yb4qJU44wn1VmbLzENEDNajhBwXk91o81XOLxBRmF/U9RZ2N+4a9nOH8BqcCDY8N//oXTpOxlnQWRaMBpvFaEuMuzjni6JKuF3M8DO2CQwPmnW3gF9zEG9uJ+TsVoUVIEiBRAvHIj8j6GEh9C/4l4NwDQVWBhZo+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA2PR11MB4972.namprd11.prod.outlook.com (2603:10b6:806:fb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Tue, 14 Feb
 2023 06:27:17 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d%6]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 06:27:17 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v3] igc: offload queue max SDU from tc-taprio
Thread-Index: AQHZO1WCj9YSz4Xfc0mDcrmgTyt5Sq7GGIaAgAfkbuA=
Date: Tue, 14 Feb 2023 06:27:17 +0000
Message-ID: <SJ1PR11MB61801B3439A4F19C32ADE11BB8A29@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208003327.29538-1-muhammad.husaini.zulkifli@intel.com>
 <20230208213019.460d7163@kernel.org>
In-Reply-To: <20230208213019.460d7163@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA2PR11MB4972:EE_
x-ms-office365-filtering-correlation-id: 13eebdfb-8209-44b1-3d0c-08db0e548515
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5AcKLqmRKC2Lpbg25MdOXhzbRNMW2jd3hScFiWLGeBS+dEW1lM1MzJPRhozy3uuaqNCR8BVSKA7qkxDmsXg9+vy2VuazJKjz0kOkRIyEQ3s25nEL7CtFsdnai5ADK7trWb0xxNyn32Q4cfpnNP0NJIaHIvTyG4+E1uwBr8GlaylWMSgcOFNt/2pfIlctFhvIPSgaXMXF6/B54ALlp7RDmYQ5tAHKe02jOvdfwyMtQOTf5/FBMvPmeXRrY45m5D2fYAJv6nqrRdYTziDO2zJJl6CItTS1Hrln1h3TZMmvoBeGPZxW+WDmDEYgvwqLesejqjPjz7fPi5B1ZwrV1E71t3dunsR7n1+Kahti3lJ1dQQj8Ra1W92H5VJVyMgZgozvCVJ71tbciRrFw5RwxEm7u7jpiofYvIOLjw+r5ssWbFU3M3gTIJKpyp7Rxm3uKTx12BBeRJ2R5aZGKS6WG49EWP3QGG6djWUTCaCHwHW+Xm5WB1qiKHkuWBK4syfSV0KsEyaPK9auSDUjcopJCInOWbtOeoJ/4PjWlEAFEcnl0KJDlthTjc38HR2EJqMhLTOoA3Tb7O2C9ggv50ycO/ZlvcNOZJrMfnjswdQGIWdNMc1kpbqdU4S8yXQGFjr2ZLBb2U2y++T+eMIS5j+FHqgPwd4RRXXBgPKTSnsIrobZ43FoDJ6fUf7Cs48Wpp7YLPMlTjI1EnFvxvp84z3veuXrrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199018)(38100700002)(82960400001)(83380400001)(122000001)(33656002)(2906002)(38070700005)(5660300002)(52536014)(86362001)(8936002)(41300700001)(4326008)(186003)(55016003)(26005)(8676002)(6916009)(6506007)(9686003)(64756008)(54906003)(76116006)(316002)(66476007)(53546011)(66446008)(478600001)(7696005)(71200400001)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k5Uv+EQclG/jHiewpvTJ/avfNMlNAnn/P83FaKypHmai7zgTCwBklMmjXwCQ?=
 =?us-ascii?Q?p3nO6qkwplZgeMm6fD5Y63XqrDEAFido7G/ZrxwuFFl8+UKKVv95IqRF+MZU?=
 =?us-ascii?Q?GDDec9LlqlIjW0iqaN8xMIXNkxaREx7m1c84vGOL1o4ko6srUF33EvOe0aX7?=
 =?us-ascii?Q?vMJB996tBrEds+PqrqDa0l46ZMAqsFgGPQ8INR26fJS0h4aEVSjSa0d6v1K1?=
 =?us-ascii?Q?gmacyX7q/w43wW4Ej0iqaZO5b6J7Mszuwy+Y/TYaUfVarg2EzpxOrgIv1EtI?=
 =?us-ascii?Q?RPDBxFfK1pJNi58CMXp2SZWlTrznsLB62VZRaxX4Kc65/nLzkOt347usHz3y?=
 =?us-ascii?Q?q2p6m6qDQxqtguoY9EvekSVRE5zUNUK7Y1HQnFobao4uCcsEj6yFuRBwxfb3?=
 =?us-ascii?Q?bErLPJKJX/sE3U0IgvImFrSZYe42p2u6lxBa+itvZ57vyw6r9D+oaMEuDBi3?=
 =?us-ascii?Q?YKPxTh6XDKBabo6zp1Mm5aJtCb5gsAWdZNVx6WLHsD+UTNsKxT9XKfujZ4+7?=
 =?us-ascii?Q?p2+OuRIxFS13DKeuRvFyCI1i1S+3lxHlImU4BKNO8TGKZw59nIbakp4UE9a/?=
 =?us-ascii?Q?ClKg3iIpPQJmm58Iixt4Hv00KDKvR3A80ziD7zwWIuG/JiG2RHLCk2bSWJX7?=
 =?us-ascii?Q?f7IuJzC0ODhLD0z4LVScp95/eseS3Ebul3X1hkUZPwphPCpMzOuRW4tJJKr3?=
 =?us-ascii?Q?bmIgkSy3L1jgghQmTgQvQmOQccDFkU3uXWyyaMZCvtNgnam3P69lmCL2G8vd?=
 =?us-ascii?Q?jKorCzlpYxpxXp0gWLX0qkkg9FNKp+t7YhARm5s0qB4tSXx1EG+2NTHKS1dU?=
 =?us-ascii?Q?fXDpcmtyL0fnPWQrdC0/OqFbE1C9P5K0e01MJQOUh21ZIrpRuj1ulkaZsXZe?=
 =?us-ascii?Q?xgwbUaz3dXolyFFORh9mxLj80bo4hhF9Dr/xmUWbzXooea3LzDS7gPOua/Mw?=
 =?us-ascii?Q?OwlEvYmp+cP70j8VPQCm54m6c4kKdb3bgdtpB6In3eFrEZLaaYoudg9m61y9?=
 =?us-ascii?Q?xyVFveelDbeIn10W0NlgbsJeuKkgagknvjEzXb2OqyLRgZzmkbJAEen3lkCa?=
 =?us-ascii?Q?K7nmycEQMyeFVGykDFn9ktMmlsocP1RyYNttyKPSYmpHCYTryd6CDRZTdVNN?=
 =?us-ascii?Q?MKH437Be+m08VIWw0CHOT7MotdZi0WI825lWazGWmKzBCZM3xQrl/zfvQGX+?=
 =?us-ascii?Q?1uNevzt6ni5ADcc11DOsyvK60fOUXdY9CK9juOsq0UOtzCgyQuI67qf7JlwB?=
 =?us-ascii?Q?WcVmyFi3UJuhX8yH7tBQaZy5PgIpHoFI8socicGgijIBEYX4pFXhbNospQME?=
 =?us-ascii?Q?xAgC6TvzUcIOEcoUN64QY3F0mJn+AUQw6ZsN6y+6jCs7sbima3UbkNJ8l03g?=
 =?us-ascii?Q?jbGVveXSQTuln5EBN2hG4E7wLVPf+ZAPwmyYhWi4Id7VVX0HrXdjxhsDNJqf?=
 =?us-ascii?Q?b3fqZ6i508B3J62aVwHq2lZ8d9PEa8dlKbYRNgHV1+yi7ROshOxbjoq+0ums?=
 =?us-ascii?Q?MEslaC2TBSsw7Z1PoFoakLAuwu+WLtDMRdcPkImGRs4DD8B7iOzkL5cL3E/d?=
 =?us-ascii?Q?P2c3XjddZYUCuvSl/+lLGVBYJxI2v6pCuWGRZK/QDswJwslaQMt9qjRjpjND?=
 =?us-ascii?Q?2LI8TcetJ9uInN1tXmN4WMc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13eebdfb-8209-44b1-3d0c-08db0e548515
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2023 06:27:17.5391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mwsc164uTSJeLS3hckX1FQ7sPMsSyXDa9sc7NrHLVs2eOrF1+mJcRF1B8mAVtlzrtG/8/sZYi1ChKtzRoiaU4DwictJuk0AexMOXWm4wSAoZFLiOdALrucvJ2/KwgqQK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676356044; x=1707892044;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iAkUh0F5UbCqVW90StS0NtITOGUW1Zj6/s75RZX5tls=;
 b=WsbgXONXhp4A4ZWc7tYqnsZsv50xc0xt8UQd8D57iocPU/0DAocvNAkz
 6COtjgxah8rvJdYpiveC7Dj77bzJjPP78wely+xWwEtSuB698zMoVntfH
 v5Rssagvzt6jKW11+7lguYS1yF1kxManxh+mmTzjLSLpAydMoyN/1S49/
 6hn70pPAxNZnSECMXRlEAu+X9yqnJ3B4Dd34SsfZexk7KjlwYlfRZEarV
 y5mO+AzMchSKXQny8JNQXfbMkw8AYR6OfuLME4IkblM5kNDN1RLz6lt/y
 0nNichPWRHqC331yp6gW+uv6tx1mv8vIfRkgkYUQl2477qRaF2gRziA6G
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WsbgXONX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] igc: offload queue max
 SDU from tc-taprio
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Thursday, 9 February, 2023 1:30 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; Gomes, Vinicius
> <vinicius.gomes@intel.com>; naamax.meir@linux.intel.com; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; leon@kernel.org;
> davem@davemloft.net; pabeni@redhat.com; edumazet@google.com;
> tee.min.tan@linux.intel.com; netdev@vger.kernel.org; Neftin, Sasha
> <sasha.neftin@intel.com>
> Subject: Re: [PATCH net-next v3] igc: offload queue max SDU from tc-taprio
> 
> On Wed,  8 Feb 2023 08:33:27 +0800 Muhammad Husaini Zulkifli wrote:
> > From: Tan Tee Min <tee.min.tan@linux.intel.com>
> >
> > Add support for configuring the max SDU for each Tx queue.
> > If not specified, keep the default.
> 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 0cc327294dfb5..38ad437957ada 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -1508,6 +1508,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
> >  	__le32 launch_time = 0;
> >  	u32 tx_flags = 0;
> >  	unsigned short f;
> > +	u32 max_sdu = 0;
> 
> This variable can be moved to the scope of the if() ?

Sure. Let me move to the if() scope in v5. 

> 
> >  	ktime_t txtime;
> >  	u8 hdr_len = 0;
> >  	int tso = 0;
> > @@ -1527,6 +1528,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
> >  		return NETDEV_TX_BUSY;
> >  	}
> >
> > +	if (tx_ring->max_sdu > 0) {
> > +		max_sdu = tx_ring->max_sdu +
> > +			  (skb_vlan_tagged(skb) ? VLAN_HLEN : 0);
> > +
> > +		if (skb->len > max_sdu)
> 
> You should increment some counter here. Otherwise it's a silent discard.

I am thinking to use tx_dropped counters for this. Is it ok?

> 
> > +			goto skb_drop;
> > +	}
> > +
> >  	if (!tx_ring->launchtime_enable)
> >  		goto done;
> >
> > @@ -1606,6 +1615,11 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
> >  	dev_kfree_skb_any(first->skb);
> 
> first->skb is skb, as far as I can tell, you can reshuffle this code to
> avoid adding the new return flow.

What we try to do is to check the current max_sdu size at the
beginning stage of the func() and drop it quickly.

> 
> >  	first->skb = NULL;
> >
> > +	return NETDEV_TX_OK;
> > +
> > +skb_drop:
> > +	dev_kfree_skb_any(skb);
> > +
> >  	return NETDEV_TX_OK;
> >  }
> 
> > @@ -6122,6 +6137,16 @@ static int igc_save_qbv_schedule(struct
> igc_adapter *adapter,
> >  		}
> >  	}
> >
> > +	for (i = 0; i < adapter->num_tx_queues; i++) {
> > +		struct igc_ring *ring = adapter->tx_ring[i];
> > +		struct net_device *dev = adapter->netdev;
> > +
> > +		if (qopt->max_sdu[i])
> > +			ring->max_sdu = qopt->max_sdu[i] + dev-
> >hard_header_len;
> 
> why hard_header_len? Isn't it always ETH_HLEN?

We followed the taprio_parse_tc_entries() implementation for this.
But the hard_header_len should be same value as ETH_HLEN.

> 
> > +		else
> > +			ring->max_sdu = 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
